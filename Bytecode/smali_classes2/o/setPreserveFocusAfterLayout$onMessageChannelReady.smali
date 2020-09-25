.class public final Lo/setPreserveFocusAfterLayout$onMessageChannelReady;
.super Lo/rate$ICustomTabsCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setPreserveFocusAfterLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0003H\u0016J0\u0010\u000c\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003H\u0016J \u0010\u0010\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0003H\u0016\u00a8\u0006\u0018"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/win/machine/PullDownMachineConstraintLayout$dragHelperCallback$1",
        "Landroidx/customview/widget/ViewDragHelper$Callback;",
        "clampViewPositionVertical",
        "",
        "child",
        "Landroid/view/View;",
        "top",
        "dy",
        "getViewVerticalDragRange",
        "onViewDragStateChanged",
        "",
        "state",
        "onViewPositionChanged",
        "changedView",
        "left",
        "dx",
        "onViewReleased",
        "releasedChild",
        "xvel",
        "",
        "yvel",
        "tryCaptureView",
        "",
        "pointerId",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Landroid/content/Context;

.field private synthetic onPostMessage:Lo/setPreserveFocusAfterLayout;


# direct methods
.method constructor <init>(Lo/setPreserveFocusAfterLayout;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lo/setPreserveFocusAfterLayout$onMessageChannelReady;->onPostMessage:Lo/setPreserveFocusAfterLayout;

    iput-object p2, p0, Lo/setPreserveFocusAfterLayout$onMessageChannelReady;->extraCallback:Landroid/content/Context;

    invoke-direct {p0}, Lo/rate$ICustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Landroid/view/View;I)I
    .locals 1

    const-string v0, "child"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object p1, p0, Lo/setPreserveFocusAfterLayout$onMessageChannelReady;->onPostMessage:Lo/setPreserveFocusAfterLayout;

    invoke-static {p1}, Lo/setPreserveFocusAfterLayout;->extraCallback(Lo/setPreserveFocusAfterLayout;)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object p2, p0, Lo/setPreserveFocusAfterLayout$onMessageChannelReady;->onPostMessage:Lo/setPreserveFocusAfterLayout;

    invoke-static {p2}, Lo/setPreserveFocusAfterLayout;->onPostMessage(Lo/setPreserveFocusAfterLayout;)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public final onMessageChannelReady(Landroid/view/View;I)Z
    .locals 0

    const-string p2, "child"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object p2, p0, Lo/setPreserveFocusAfterLayout$onMessageChannelReady;->onPostMessage:Lo/setPreserveFocusAfterLayout;

    invoke-static {p2}, Lo/setPreserveFocusAfterLayout;->asInterface(Lo/setPreserveFocusAfterLayout;)Landroid/view/View;

    move-result-object p2

    invoke-static {p1, p2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final onNavigationEvent(Landroid/view/View;)I
    .locals 1

    const-string v0, "child"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object p1, p0, Lo/setPreserveFocusAfterLayout$onMessageChannelReady;->onPostMessage:Lo/setPreserveFocusAfterLayout;

    invoke-static {p1}, Lo/setPreserveFocusAfterLayout;->onRelationshipValidationResult(Lo/setPreserveFocusAfterLayout;)I

    move-result p1

    return p1
.end method

.method public final onNavigationEvent(I)V
    .locals 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 79
    iget-object v0, p0, Lo/setPreserveFocusAfterLayout$onMessageChannelReady;->onPostMessage:Lo/setPreserveFocusAfterLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/setPreserveFocusAfterLayout;->setDragState(I)V

    .line 80
    iget-object v0, p0, Lo/setPreserveFocusAfterLayout$onMessageChannelReady;->onPostMessage:Lo/setPreserveFocusAfterLayout;

    invoke-static {v0}, Lo/setPreserveFocusAfterLayout;->ICustomTabsService(Lo/setPreserveFocusAfterLayout;)Lo/onDisconnectSetValue;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-nez p1, :cond_2

    .line 82
    iget-object v2, p0, Lo/setPreserveFocusAfterLayout$onMessageChannelReady;->onPostMessage:Lo/setPreserveFocusAfterLayout;

    invoke-static {v2}, Lo/setPreserveFocusAfterLayout;->asInterface(Lo/setPreserveFocusAfterLayout;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lo/setPreserveFocusAfterLayout$onMessageChannelReady;->onPostMessage:Lo/setPreserveFocusAfterLayout;

    invoke-static {v3}, Lo/setPreserveFocusAfterLayout;->extraCallback(Lo/setPreserveFocusAfterLayout;)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 83
    iget-object v1, p0, Lo/setPreserveFocusAfterLayout$onMessageChannelReady;->onPostMessage:Lo/setPreserveFocusAfterLayout;

    invoke-virtual {v1, v0}, Lo/setPreserveFocusAfterLayout;->setDragState(I)V

    .line 84
    iget-object v1, p0, Lo/setPreserveFocusAfterLayout$onMessageChannelReady;->onPostMessage:Lo/setPreserveFocusAfterLayout;

    invoke-static {v1}, Lo/setPreserveFocusAfterLayout;->ICustomTabsService(Lo/setPreserveFocusAfterLayout;)Lo/onDisconnectSetValue;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lo/setPreserveFocusAfterLayout$onMessageChannelReady;->onPostMessage:Lo/setPreserveFocusAfterLayout;

    invoke-static {v0}, Lo/setPreserveFocusAfterLayout;->asInterface(Lo/setPreserveFocusAfterLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v2, p0, Lo/setPreserveFocusAfterLayout$onMessageChannelReady;->onPostMessage:Lo/setPreserveFocusAfterLayout;

    invoke-static {v2}, Lo/setPreserveFocusAfterLayout;->onPostMessage(Lo/setPreserveFocusAfterLayout;)I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 86
    iget-object v0, p0, Lo/setPreserveFocusAfterLayout$onMessageChannelReady;->onPostMessage:Lo/setPreserveFocusAfterLayout;

    invoke-virtual {v0, v1}, Lo/setPreserveFocusAfterLayout;->setDragState(I)V

    .line 87
    iget-object v0, p0, Lo/setPreserveFocusAfterLayout$onMessageChannelReady;->onPostMessage:Lo/setPreserveFocusAfterLayout;

    invoke-static {v0}, Lo/setPreserveFocusAfterLayout;->ICustomTabsService(Lo/setPreserveFocusAfterLayout;)Lo/onDisconnectSetValue;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_3

    .line 90
    iget-object v0, p0, Lo/setPreserveFocusAfterLayout$onMessageChannelReady;->onPostMessage:Lo/setPreserveFocusAfterLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lo/setPreserveFocusAfterLayout;->setDragState(I)V

    .line 91
    iget-object v0, p0, Lo/setPreserveFocusAfterLayout$onMessageChannelReady;->onPostMessage:Lo/setPreserveFocusAfterLayout;

    invoke-static {v0}, Lo/setPreserveFocusAfterLayout;->ICustomTabsService(Lo/setPreserveFocusAfterLayout;)Lo/onDisconnectSetValue;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Lo/rate$ICustomTabsCallback;->onNavigationEvent(I)V

    return-void
.end method

.method public final onNavigationEvent(Landroid/view/View;FF)V
    .locals 4

    const-string p2, "releasedChild"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lo/setPreserveFocusAfterLayout$onMessageChannelReady;->onPostMessage:Lo/setPreserveFocusAfterLayout;

    invoke-static {p1}, Lo/setPreserveFocusAfterLayout;->ICustomTabsCallback$Stub(Lo/setPreserveFocusAfterLayout;)I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    float-to-double p1, p3

    const-wide v0, 0x409f400000000000L    # 2000.0

    const/4 p3, 0x1

    const/4 v2, 0x0

    cmpl-double v3, p1, v0

    if-lez v3, :cond_1

    goto :goto_1

    :cond_1
    const-wide v0, -0x3f60c00000000000L    # -2000.0

    cmpg-double v3, p1, v0

    if-gez v3, :cond_2

    :goto_0
    const/4 p3, 0x0

    goto :goto_1

    .line 61
    :cond_2
    iget-object p1, p0, Lo/setPreserveFocusAfterLayout$onMessageChannelReady;->onPostMessage:Lo/setPreserveFocusAfterLayout;

    invoke-static {p1}, Lo/setPreserveFocusAfterLayout;->onTransact(Lo/setPreserveFocusAfterLayout;)I

    move-result p1

    iget-object p2, p0, Lo/setPreserveFocusAfterLayout$onMessageChannelReady;->onPostMessage:Lo/setPreserveFocusAfterLayout;

    invoke-static {p2}, Lo/setPreserveFocusAfterLayout;->ICustomTabsCallback$Stub(Lo/setPreserveFocusAfterLayout;)I

    move-result p2

    if-le p1, p2, :cond_3

    goto :goto_1

    .line 63
    :cond_3
    iget-object p1, p0, Lo/setPreserveFocusAfterLayout$onMessageChannelReady;->onPostMessage:Lo/setPreserveFocusAfterLayout;

    invoke-static {p1}, Lo/setPreserveFocusAfterLayout;->onTransact(Lo/setPreserveFocusAfterLayout;)I

    move-result p1

    iget-object p2, p0, Lo/setPreserveFocusAfterLayout$onMessageChannelReady;->onPostMessage:Lo/setPreserveFocusAfterLayout;

    invoke-static {p2}, Lo/setPreserveFocusAfterLayout;->ICustomTabsCallback$Stub(Lo/setPreserveFocusAfterLayout;)I

    move-result p2

    goto :goto_0

    .line 67
    :goto_1
    iget-object p1, p0, Lo/setPreserveFocusAfterLayout$onMessageChannelReady;->onPostMessage:Lo/setPreserveFocusAfterLayout;

    if-eqz p3, :cond_4

    invoke-static {p1}, Lo/setPreserveFocusAfterLayout;->onPostMessage(Lo/setPreserveFocusAfterLayout;)I

    move-result p1

    goto :goto_2

    :cond_4
    invoke-static {p1}, Lo/setPreserveFocusAfterLayout;->extraCallback(Lo/setPreserveFocusAfterLayout;)I

    move-result p1

    :goto_2
    if-eqz p3, :cond_5

    .line 69
    iget-object p2, p0, Lo/setPreserveFocusAfterLayout$onMessageChannelReady;->extraCallback:Landroid/content/Context;

    const-wide/16 v0, 0xa

    invoke-static {p2, v0, v1}, Lo/addAllInternal;->onNavigationEvent(Landroid/content/Context;J)V

    .line 72
    :cond_5
    iget-object p2, p0, Lo/setPreserveFocusAfterLayout$onMessageChannelReady;->onPostMessage:Lo/setPreserveFocusAfterLayout;

    invoke-static {p2}, Lo/setPreserveFocusAfterLayout;->getInterfaceDescriptor(Lo/setPreserveFocusAfterLayout;)Lo/rate;

    move-result-object p2

    invoke-virtual {p2, v2, p1}, Lo/rate;->onPostMessage(II)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 73
    iget-object p1, p0, Lo/setPreserveFocusAfterLayout$onMessageChannelReady;->onPostMessage:Lo/setPreserveFocusAfterLayout;

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;)V

    :cond_6
    return-void
.end method

.method public final onNavigationEvent(Landroid/view/View;IIII)V
    .locals 0

    const-string p2, "changedView"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object p1, p0, Lo/setPreserveFocusAfterLayout$onMessageChannelReady;->onPostMessage:Lo/setPreserveFocusAfterLayout;

    invoke-static {p1}, Lo/setPreserveFocusAfterLayout;->extraCallback(Lo/setPreserveFocusAfterLayout;)I

    move-result p1

    sub-int p1, p3, p1

    int-to-float p1, p1

    iget-object p2, p0, Lo/setPreserveFocusAfterLayout$onMessageChannelReady;->onPostMessage:Lo/setPreserveFocusAfterLayout;

    invoke-static {p2}, Lo/setPreserveFocusAfterLayout;->onPostMessage(Lo/setPreserveFocusAfterLayout;)I

    move-result p2

    iget-object p4, p0, Lo/setPreserveFocusAfterLayout$onMessageChannelReady;->onPostMessage:Lo/setPreserveFocusAfterLayout;

    invoke-static {p4}, Lo/setPreserveFocusAfterLayout;->extraCallback(Lo/setPreserveFocusAfterLayout;)I

    move-result p4

    sub-int/2addr p2, p4

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 48
    iget-object p2, p0, Lo/setPreserveFocusAfterLayout$onMessageChannelReady;->onPostMessage:Lo/setPreserveFocusAfterLayout;

    invoke-static {p2}, Lo/setPreserveFocusAfterLayout;->asBinder(Lo/setPreserveFocusAfterLayout;)Lo/onDisconnectSetValue;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p2, p1}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_0
    iget-object p1, p0, Lo/setPreserveFocusAfterLayout$onMessageChannelReady;->onPostMessage:Lo/setPreserveFocusAfterLayout;

    invoke-static {p1, p3}, Lo/setPreserveFocusAfterLayout;->onNavigationEvent(Lo/setPreserveFocusAfterLayout;I)V

    return-void
.end method
