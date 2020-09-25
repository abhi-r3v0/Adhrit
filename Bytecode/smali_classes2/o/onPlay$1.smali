.class Lo/onPlay$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onPlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onPostMessage:Lo/onPlay;


# direct methods
.method constructor <init>(Lo/onPlay;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lo/onPlay$1;->onPostMessage:Lo/onPlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 155
    iget-object v0, p0, Lo/onPlay$1;->onPostMessage:Lo/onPlay;

    iget-object v0, v0, Lo/onPlay;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lo/onPlay$1;->onPostMessage:Lo/onPlay;

    iget-object v1, v1, Lo/onPlay;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    return-void
.end method
