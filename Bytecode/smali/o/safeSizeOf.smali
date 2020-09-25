.class public Lo/safeSizeOf;
.super Landroid/webkit/WebView;
.source ""

# interfaces
.implements Lo/onShuffleModeChanged;


# instance fields
.field private ICustomTabsCallback:I

.field private final extraCallback:[I

.field private onMessageChannelReady:Lo/onCaptioningEnabledChanged;

.field private final onNavigationEvent:[I

.field private onPostMessage:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lo/safeSizeOf;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010085

    .line 40
    invoke-direct {p0, p1, p2, v0}, Lo/safeSizeOf;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x2

    new-array p2, p1, [I

    .line 30
    iput-object p2, p0, Lo/safeSizeOf;->extraCallback:[I

    new-array p1, p1, [I

    .line 31
    iput-object p1, p0, Lo/safeSizeOf;->onNavigationEvent:[I

    .line 45
    new-instance p1, Lo/onCaptioningEnabledChanged;

    invoke-direct {p1, p0}, Lo/onCaptioningEnabledChanged;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lo/safeSizeOf;->onMessageChannelReady:Lo/onCaptioningEnabledChanged;

    const/4 p1, 0x1

    .line 46
    invoke-virtual {p0, p1}, Lo/safeSizeOf;->setNestedScrollingEnabled(Z)V

    return-void
.end method


# virtual methods
.method public dispatchNestedFling(FFZ)Z
    .locals 1

    .line 134
    iget-object v0, p0, Lo/safeSizeOf;->onMessageChannelReady:Lo/onCaptioningEnabledChanged;

    invoke-virtual {v0, p1, p2, p3}, Lo/onCaptioningEnabledChanged;->ICustomTabsCallback(FFZ)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 3

    .line 139
    iget-object v0, p0, Lo/safeSizeOf;->onMessageChannelReady:Lo/onCaptioningEnabledChanged;

    .line 3086
    iget-boolean v1, v0, Lo/onCaptioningEnabledChanged;->ICustomTabsCallback:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2369
    invoke-virtual {v0, v2}, Lo/onCaptioningEnabledChanged;->onNavigationEvent(I)Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2371
    iget-object v0, v0, Lo/onCaptioningEnabledChanged;->onMessageChannelReady:Landroid/view/View;

    invoke-static {v1, v0, p1, p2}, Lo/sendMediaButton;->onMessageChannelReady(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result p1

    return p1

    :cond_0
    return v2
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 6

    .line 129
    iget-object v0, p0, Lo/safeSizeOf;->onMessageChannelReady:Lo/onCaptioningEnabledChanged;

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2288
    invoke-virtual/range {v0 .. v5}, Lo/onCaptioningEnabledChanged;->ICustomTabsCallback(II[I[II)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 8

    .line 124
    iget-object v0, p0, Lo/safeSizeOf;->onMessageChannelReady:Lo/onCaptioningEnabledChanged;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 2204
    invoke-virtual/range {v0 .. v7}, Lo/onCaptioningEnabledChanged;->onMessageChannelReady(IIII[II[I)Z

    move-result p1

    return p1
.end method

.method public hasNestedScrollingParent()Z
    .locals 2

    .line 118
    iget-object v0, p0, Lo/safeSizeOf;->onMessageChannelReady:Lo/onCaptioningEnabledChanged;

    const/4 v1, 0x0

    .line 2114
    invoke-virtual {v0, v1}, Lo/onCaptioningEnabledChanged;->onNavigationEvent(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 103
    iget-object v0, p0, Lo/safeSizeOf;->onMessageChannelReady:Lo/onCaptioningEnabledChanged;

    .line 1086
    iget-boolean v0, v0, Lo/onCaptioningEnabledChanged;->ICustomTabsCallback:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 53
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 54
    invoke-static {p1}, Lo/onRepeatModeChanged;->ICustomTabsCallback(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 56
    iput v1, p0, Lo/safeSizeOf;->ICustomTabsCallback:I

    .line 58
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 59
    iget v3, p0, Lo/safeSizeOf;->ICustomTabsCallback:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 v3, 0x2

    if-eqz v0, :cond_4

    const/4 v5, 0x1

    if-eq v0, v5, :cond_3

    if-eq v0, v3, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    goto :goto_0

    .line 62
    :cond_1
    iget v0, p0, Lo/safeSizeOf;->onPostMessage:I

    sub-int/2addr v0, v2

    .line 64
    iget-object v3, p0, Lo/safeSizeOf;->onNavigationEvent:[I

    iget-object v6, p0, Lo/safeSizeOf;->extraCallback:[I

    invoke-virtual {p0, v1, v0, v3, v6}, Lo/safeSizeOf;->dispatchNestedPreScroll(II[I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    iget-object v1, p0, Lo/safeSizeOf;->onNavigationEvent:[I

    aget v1, v1, v5

    sub-int/2addr v0, v1

    .line 66
    iget-object v1, p0, Lo/safeSizeOf;->extraCallback:[I

    aget v3, v1, v5

    sub-int/2addr v2, v3

    iput v2, p0, Lo/safeSizeOf;->onPostMessage:I

    .line 67
    aget v1, v1, v5

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v4, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 68
    iget v1, p0, Lo/safeSizeOf;->ICustomTabsCallback:I

    iget-object v2, p0, Lo/safeSizeOf;->extraCallback:[I

    aget v2, v2, v5

    add-int/2addr v1, v2

    iput v1, p0, Lo/safeSizeOf;->ICustomTabsCallback:I

    :cond_2
    move v10, v0

    .line 70
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    const/4 v7, 0x0

    .line 73
    iget-object v11, p0, Lo/safeSizeOf;->extraCallback:[I

    aget v8, v11, v5

    const/4 v9, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lo/safeSizeOf;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 74
    iget-object v0, p0, Lo/safeSizeOf;->extraCallback:[I

    aget v0, v0, v5

    int-to-float v0, v0

    invoke-virtual {p1, v4, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 75
    iget p1, p0, Lo/safeSizeOf;->ICustomTabsCallback:I

    iget-object v0, p0, Lo/safeSizeOf;->extraCallback:[I

    aget v2, v0, v5

    add-int/2addr p1, v2

    iput p1, p0, Lo/safeSizeOf;->ICustomTabsCallback:I

    .line 76
    iget p1, p0, Lo/safeSizeOf;->onPostMessage:I

    aget v0, v0, v5

    sub-int/2addr p1, v0

    iput p1, p0, Lo/safeSizeOf;->onPostMessage:I

    goto :goto_0

    .line 87
    :cond_3
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 89
    invoke-virtual {p0}, Lo/safeSizeOf;->stopNestedScroll()V

    goto :goto_0

    .line 80
    :cond_4
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 81
    iput v2, p0, Lo/safeSizeOf;->onPostMessage:I

    .line 83
    invoke-virtual {p0, v3}, Lo/safeSizeOf;->startNestedScroll(I)Z

    :cond_5
    :goto_0
    return v1
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 2

    .line 98
    iget-object v0, p0, Lo/safeSizeOf;->onMessageChannelReady:Lo/onCaptioningEnabledChanged;

    .line 1070
    iget-boolean v1, v0, Lo/onCaptioningEnabledChanged;->ICustomTabsCallback:Z

    if-eqz v1, :cond_0

    .line 1071
    iget-object v1, v0, Lo/onCaptioningEnabledChanged;->onMessageChannelReady:Landroid/view/View;

    invoke-static {v1}, Lo/unregisterCallbackListener;->INotificationSideChannel(Landroid/view/View;)V

    .line 1073
    :cond_0
    iput-boolean p1, v0, Lo/onCaptioningEnabledChanged;->ICustomTabsCallback:Z

    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 2

    .line 108
    iget-object v0, p0, Lo/safeSizeOf;->onMessageChannelReady:Lo/onCaptioningEnabledChanged;

    const/4 v1, 0x0

    .line 1129
    invoke-virtual {v0, p1, v1}, Lo/onCaptioningEnabledChanged;->extraCallback(II)Z

    move-result p1

    return p1
.end method

.method public stopNestedScroll()V
    .locals 4

    .line 113
    iget-object v0, p0, Lo/safeSizeOf;->onMessageChannelReady:Lo/onCaptioningEnabledChanged;

    const/4 v1, 0x0

    .line 1186
    invoke-virtual {v0, v1}, Lo/onCaptioningEnabledChanged;->onNavigationEvent(I)Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1188
    iget-object v3, v0, Lo/onCaptioningEnabledChanged;->onMessageChannelReady:Landroid/view/View;

    invoke-static {v2, v3, v1}, Lo/sendMediaButton;->ICustomTabsCallback(Landroid/view/ViewParent;Landroid/view/View;I)V

    const/4 v2, 0x0

    .line 1189
    invoke-virtual {v0, v1, v2}, Lo/onCaptioningEnabledChanged;->onPostMessage(ILandroid/view/ViewParent;)V

    :cond_0
    return-void
.end method
