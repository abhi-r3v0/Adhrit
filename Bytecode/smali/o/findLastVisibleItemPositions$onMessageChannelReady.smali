.class final Lo/findLastVisibleItemPositions$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


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
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Landroid/view/WindowInsets;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/WindowInsets;",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field private synthetic extraCallback:Lo/toDebugString$ICustomTabsCallback;

.field private synthetic onPostMessage:Lo/findLastVisibleItemPositions$onNavigationEvent;


# direct methods
.method constructor <init>(Lo/toDebugString$ICustomTabsCallback;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lo/findLastVisibleItemPositions$onNavigationEvent;)V
    .locals 0

    iput-object p1, p0, Lo/findLastVisibleItemPositions$onMessageChannelReady;->extraCallback:Lo/toDebugString$ICustomTabsCallback;

    iput-object p2, p0, Lo/findLastVisibleItemPositions$onMessageChannelReady;->ICustomTabsCallback:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object p3, p0, Lo/findLastVisibleItemPositions$onMessageChannelReady;->onPostMessage:Lo/findLastVisibleItemPositions$onNavigationEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 3

    .line 23
    check-cast p1, Landroid/view/WindowInsets;

    .line 1098
    iget-object v0, p0, Lo/findLastVisibleItemPositions$onMessageChannelReady;->extraCallback:Lo/toDebugString$ICustomTabsCallback;

    iput-object p1, v0, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1099
    iget-object v0, p0, Lo/findLastVisibleItemPositions$onMessageChannelReady;->ICustomTabsCallback:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const-string v1, "coordinatorParent"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    .line 1175
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    .line 1176
    move-object v2, v1

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_0

    .line 1100
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1101
    iget-object p1, p0, Lo/findLastVisibleItemPositions$onMessageChannelReady;->onPostMessage:Lo/findLastVisibleItemPositions$onNavigationEvent;

    invoke-virtual {p1}, Lo/findLastVisibleItemPositions$onNavigationEvent;->ICustomTabsCallback()V

    .line 1177
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 1175
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
