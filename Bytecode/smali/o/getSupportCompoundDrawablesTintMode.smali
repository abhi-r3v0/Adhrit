.class abstract Lo/getSupportCompoundDrawablesTintMode;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setSupportCompoundDrawablesTintMode;


# instance fields
.field private onPostMessage:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lo/getSupportCompoundDrawablesTintMode;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 1

    .line 14
    iget-object v0, p0, Lo/getSupportCompoundDrawablesTintMode;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    return-object v0
.end method
