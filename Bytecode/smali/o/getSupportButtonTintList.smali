.class public final Lo/getSupportButtonTintList;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getSupportButtonTintMode;


# instance fields
.field private onMessageChannelReady:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lo/getSupportButtonTintList;->onMessageChannelReady:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()Lo/setSupportCompoundDrawablesTintMode;
    .locals 2

    .line 15
    new-instance v0, Lo/AppCompatCheckedTextView;

    iget-object v1, p0, Lo/getSupportButtonTintList;->onMessageChannelReady:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-direct {v0, v1}, Lo/AppCompatCheckedTextView;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-object v0
.end method

.method public final onPostMessage()Lo/setSupportCompoundDrawablesTintMode;
    .locals 2

    .line 20
    new-instance v0, Lo/setSupportButtonTintMode;

    iget-object v1, p0, Lo/getSupportButtonTintList;->onMessageChannelReady:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-direct {v0, v1}, Lo/setSupportButtonTintMode;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-object v0
.end method