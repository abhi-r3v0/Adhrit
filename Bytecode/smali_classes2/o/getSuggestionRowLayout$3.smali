.class public final Lo/getSuggestionRowLayout$3;
.super Lo/rate$ICustomTabsCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getSuggestionRowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u0003H\u0016J0\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0003H\u0016J \u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0016J\u0018\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u0003H\u0016\u00a8\u0006\u0019"
    }
    d2 = {
        "com/cred/pay/ui/views/SwipeButton$1",
        "Landroidx/customview/widget/ViewDragHelper$Callback;",
        "clampViewPositionHorizontal",
        "",
        "child",
        "Landroid/view/View;",
        "left",
        "dx",
        "getViewHorizontalDragRange",
        "onViewCaptured",
        "",
        "capturedChild",
        "activePointerId",
        "onViewPositionChanged",
        "changedView",
        "top",
        "dy",
        "onViewReleased",
        "releasedChild",
        "xvel",
        "",
        "yvel",
        "tryCaptureView",
        "",
        "pointerId",
        "credpayui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/getSuggestionRowLayout;


# direct methods
.method constructor <init>(Lo/getSuggestionRowLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lo/getSuggestionRowLayout$3;->ICustomTabsCallback:Lo/getSuggestionRowLayout;

    invoke-direct {p0}, Lo/rate$ICustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/view/View;I)V
    .locals 2

    const-string v0, "capturedChild"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lo/getSuggestionRowLayout$3;->ICustomTabsCallback:Lo/getSuggestionRowLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 81
    invoke-super {p0, p1, p2}, Lo/rate$ICustomTabsCallback;->ICustomTabsCallback(Landroid/view/View;I)V

    return-void
.end method

.method public final onMessageChannelReady(Landroid/view/View;I)Z
    .locals 0

    const-string p2, "child"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object p2, p0, Lo/getSuggestionRowLayout$3;->ICustomTabsCallback:Lo/getSuggestionRowLayout;

    invoke-static {p2}, Lo/getSuggestionRowLayout;->ICustomTabsCallback(Lo/getSuggestionRowLayout;)Landroid/view/View;

    move-result-object p2

    invoke-static {p1, p2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final onNavigationEvent(Landroid/view/View;FF)V
    .locals 6

    const-string v0, "releasedChild"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-super {p0, p1, p2, p3}, Lo/rate$ICustomTabsCallback;->onNavigationEvent(Landroid/view/View;FF)V

    .line 67
    iget-object p1, p0, Lo/getSuggestionRowLayout$3;->ICustomTabsCallback:Lo/getSuggestionRowLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 68
    iget-object p1, p0, Lo/getSuggestionRowLayout$3;->ICustomTabsCallback:Lo/getSuggestionRowLayout;

    invoke-static {p1}, Lo/getSuggestionRowLayout;->ICustomTabsCallback(Lo/getSuggestionRowLayout;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 69
    iget-object p3, p0, Lo/getSuggestionRowLayout$3;->ICustomTabsCallback:Lo/getSuggestionRowLayout;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    iget-object v0, p0, Lo/getSuggestionRowLayout$3;->ICustomTabsCallback:Lo/getSuggestionRowLayout;

    invoke-static {v0}, Lo/getSuggestionRowLayout;->ICustomTabsCallback(Lo/getSuggestionRowLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p3, v0

    int-to-double v0, p1

    int-to-double v2, p3

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double v2, v2, v4

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    move p2, p3

    .line 76
    :cond_0
    iget-object p1, p0, Lo/getSuggestionRowLayout$3;->ICustomTabsCallback:Lo/getSuggestionRowLayout;

    invoke-static {p1, p2}, Lo/getSuggestionRowLayout;->ICustomTabsCallback(Lo/getSuggestionRowLayout;I)V

    return-void
.end method

.method public final onNavigationEvent(Landroid/view/View;IIII)V
    .locals 1

    const-string v0, "changedView"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-super/range {p0 .. p5}, Lo/rate$ICustomTabsCallback;->onNavigationEvent(Landroid/view/View;IIII)V

    .line 86
    iget-object p1, p0, Lo/getSuggestionRowLayout$3;->ICustomTabsCallback:Lo/getSuggestionRowLayout;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget-object p3, p0, Lo/getSuggestionRowLayout$3;->ICustomTabsCallback:Lo/getSuggestionRowLayout;

    invoke-static {p3}, Lo/getSuggestionRowLayout;->ICustomTabsCallback(Lo/getSuggestionRowLayout;)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    sub-int/2addr p1, p3

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lo/getSuggestionRowLayout$3;->ICustomTabsCallback:Lo/getSuggestionRowLayout;

    invoke-static {p1}, Lo/getSuggestionRowLayout;->extraCallback(Lo/getSuggestionRowLayout;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 87
    iget-object p1, p0, Lo/getSuggestionRowLayout$3;->ICustomTabsCallback:Lo/getSuggestionRowLayout;

    const/4 p3, 0x0

    invoke-static {p1, p3}, Lo/getSuggestionRowLayout;->extraCallback(Lo/getSuggestionRowLayout;Z)V

    .line 88
    iget-object p1, p0, Lo/getSuggestionRowLayout$3;->ICustomTabsCallback:Lo/getSuggestionRowLayout;

    invoke-static {p1}, Lo/getSuggestionRowLayout;->onPostMessage(Lo/getSuggestionRowLayout;)Lo/onDisconnectSetValue;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p3, p0, Lo/getSuggestionRowLayout$3;->ICustomTabsCallback:Lo/getSuggestionRowLayout;

    invoke-interface {p1, p3}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-nez p2, :cond_1

    .line 91
    iget-object p1, p0, Lo/getSuggestionRowLayout$3;->ICustomTabsCallback:Lo/getSuggestionRowLayout;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lo/getSuggestionRowLayout;->extraCallback(Lo/getSuggestionRowLayout;Z)V

    .line 93
    :cond_1
    iget-object p1, p0, Lo/getSuggestionRowLayout$3;->ICustomTabsCallback:Lo/getSuggestionRowLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final onPostMessage(Landroid/view/View;)I
    .locals 1

    const-string v0, "child"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object p1, p0, Lo/getSuggestionRowLayout$3;->ICustomTabsCallback:Lo/getSuggestionRowLayout;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget-object v0, p0, Lo/getSuggestionRowLayout$3;->ICustomTabsCallback:Lo/getSuggestionRowLayout;

    invoke-static {v0}, Lo/getSuggestionRowLayout;->ICustomTabsCallback(Lo/getSuggestionRowLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method public final onPostMessage(Landroid/view/View;I)I
    .locals 1

    const-string v0, "child"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 58
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object p2, p0, Lo/getSuggestionRowLayout$3;->ICustomTabsCallback:Lo/getSuggestionRowLayout;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    iget-object v0, p0, Lo/getSuggestionRowLayout$3;->ICustomTabsCallback:Lo/getSuggestionRowLayout;

    invoke-static {v0}, Lo/getSuggestionRowLayout;->ICustomTabsCallback(Lo/getSuggestionRowLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method
