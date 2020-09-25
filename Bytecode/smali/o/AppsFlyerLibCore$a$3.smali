.class final Lo/AppsFlyerLibCore$a$3;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AppsFlyerLibCore$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/AppsFlyerLibCore$a;


# direct methods
.method constructor <init>(Lo/AppsFlyerLibCore$a;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lo/AppsFlyerLibCore$a$3;->onPostMessage:Lo/AppsFlyerLibCore$a;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 71
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 72
    iget-object p1, p0, Lo/AppsFlyerLibCore$a$3;->onPostMessage:Lo/AppsFlyerLibCore$a;

    invoke-static {p1, p2}, Lo/AppsFlyerLibCore$a;->extraCallback(Lo/AppsFlyerLibCore$a;I)V

    return-void
.end method
