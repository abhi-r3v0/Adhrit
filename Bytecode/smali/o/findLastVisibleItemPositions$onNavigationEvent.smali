.class final Lo/findLastVisibleItemPositions$onNavigationEvent;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/findLastVisibleItemPositions;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/addWrites;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "updateHeights",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Landroid/view/View;

.field private synthetic asInterface:Lo/toDebugString$onPostMessage;

.field private synthetic extraCallback:Lo/findLastVisibleItemPositions;

.field private synthetic onMessageChannelReady:Lo/toDebugString$onPostMessage;

.field private synthetic onNavigationEvent:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field private synthetic onPostMessage:Lo/toDebugString$ICustomTabsCallback;


# direct methods
.method constructor <init>(Lo/findLastVisibleItemPositions;Lo/toDebugString$ICustomTabsCallback;Landroid/view/View;Lo/toDebugString$onPostMessage;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lo/toDebugString$onPostMessage;)V
    .locals 0

    iput-object p1, p0, Lo/findLastVisibleItemPositions$onNavigationEvent;->extraCallback:Lo/findLastVisibleItemPositions;

    iput-object p2, p0, Lo/findLastVisibleItemPositions$onNavigationEvent;->onPostMessage:Lo/toDebugString$ICustomTabsCallback;

    iput-object p3, p0, Lo/findLastVisibleItemPositions$onNavigationEvent;->ICustomTabsCallback:Landroid/view/View;

    iput-object p4, p0, Lo/findLastVisibleItemPositions$onNavigationEvent;->onMessageChannelReady:Lo/toDebugString$onPostMessage;

    iput-object p5, p0, Lo/findLastVisibleItemPositions$onNavigationEvent;->onNavigationEvent:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object p6, p0, Lo/findLastVisibleItemPositions$onNavigationEvent;->asInterface:Lo/toDebugString$onPostMessage;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 8

    .line 51
    iget-object v0, p0, Lo/findLastVisibleItemPositions$onNavigationEvent;->onPostMessage:Lo/toDebugString$ICustomTabsCallback;

    iget-object v0, v0, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowInsets;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 52
    :goto_0
    iget-object v2, p0, Lo/findLastVisibleItemPositions$onNavigationEvent;->onPostMessage:Lo/toDebugString$ICustomTabsCallback;

    iget-object v2, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v2, Landroid/view/WindowInsets;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    .line 53
    :cond_1
    iget-object v2, p0, Lo/findLastVisibleItemPositions$onNavigationEvent;->ICustomTabsCallback:Landroid/view/View;

    const-string/jumbo v3, "view"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 54
    iget-object v3, p0, Lo/findLastVisibleItemPositions$onNavigationEvent;->onMessageChannelReady:Lo/toDebugString$onPostMessage;

    iget v3, v3, Lo/toDebugString$onPostMessage;->onPostMessage:I

    sub-int v3, v2, v3

    sub-int/2addr v3, v0

    .line 55
    iget-object v4, p0, Lo/findLastVisibleItemPositions$onNavigationEvent;->onNavigationEvent:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const-string v5, "coordinatorParent"

    invoke-static {v4, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    const-string v6, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    if-eq v4, v3, :cond_3

    .line 56
    iget-object v4, p0, Lo/findLastVisibleItemPositions$onNavigationEvent;->onNavigationEvent:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-static {v4, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/view/View;

    .line 175
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    if-eqz v5, :cond_2

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    check-cast v5, Landroid/view/ViewGroup$LayoutParams;

    .line 176
    move-object v7, v5

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 57
    iput v3, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 177
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 175
    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_3
    :goto_1
    iget-object v4, p0, Lo/findLastVisibleItemPositions$onNavigationEvent;->extraCallback:Lo/findLastVisibleItemPositions;

    .line 1025
    iget-object v4, v4, Lo/findLastVisibleItemPositions;->onRelationshipValidationResult:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const-string v5, "bottomSheetBehavior"

    if-nez v4, :cond_4

    invoke-static {v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1753
    :cond_4
    iget-boolean v7, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onPostMessage:Z

    if-eqz v7, :cond_5

    const/4 v4, -0x1

    goto :goto_2

    :cond_5
    iget v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onNavigationEvent:I

    .line 60
    :goto_2
    iget-object v7, p0, Lo/findLastVisibleItemPositions$onNavigationEvent;->asInterface:Lo/toDebugString$onPostMessage;

    iget v7, v7, Lo/toDebugString$onPostMessage;->onPostMessage:I

    if-eq v4, v7, :cond_7

    .line 61
    iget-object v4, p0, Lo/findLastVisibleItemPositions$onNavigationEvent;->extraCallback:Lo/findLastVisibleItemPositions;

    .line 2025
    iget-object v4, v4, Lo/findLastVisibleItemPositions;->onRelationshipValidationResult:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez v4, :cond_6

    invoke-static {v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 61
    :cond_6
    iget-object v5, p0, Lo/findLastVisibleItemPositions$onNavigationEvent;->asInterface:Lo/toDebugString$onPostMessage;

    iget v5, v5, Lo/toDebugString$onPostMessage;->onPostMessage:I

    .line 2702
    invoke-virtual {v4, v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onMessageChannelReady(I)V

    .line 63
    :cond_7
    iget-object v4, p0, Lo/findLastVisibleItemPositions$onNavigationEvent;->asInterface:Lo/toDebugString$onPostMessage;

    iget v4, v4, Lo/toDebugString$onPostMessage;->onPostMessage:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v2, v3

    .line 65
    iget-object v3, p0, Lo/findLastVisibleItemPositions$onNavigationEvent;->onMessageChannelReady:Lo/toDebugString$onPostMessage;

    iget v3, v3, Lo/toDebugString$onPostMessage;->onPostMessage:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 67
    iget-object v2, p0, Lo/findLastVisibleItemPositions$onNavigationEvent;->extraCallback:Lo/findLastVisibleItemPositions;

    .line 3028
    iget-object v2, v2, Lo/findLastVisibleItemPositions;->onTransact:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_a

    .line 67
    check-cast v2, Landroid/view/View;

    .line 179
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v3, :cond_8

    const/4 v2, 0x0

    :cond_8
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_9

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_9
    if-eq v1, v0, :cond_c

    .line 68
    :cond_a
    iget-object v1, p0, Lo/findLastVisibleItemPositions$onNavigationEvent;->extraCallback:Lo/findLastVisibleItemPositions;

    .line 4028
    iget-object v1, v1, Lo/findLastVisibleItemPositions;->onTransact:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_c

    .line 68
    check-cast v1, Landroid/view/View;

    .line 180
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_b

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    .line 181
    move-object v3, v2

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 69
    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 182
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 180
    :cond_b
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void
.end method

.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lo/findLastVisibleItemPositions$onNavigationEvent;->ICustomTabsCallback()V

    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
