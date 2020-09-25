.class abstract Landroidx/appcompat/widget/AbsActionBarView;
.super Landroid/view/ViewGroup;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;
    }
.end annotation


# static fields
.field private static final FADE_DURATION:I = 0xc8


# instance fields
.field protected mActionMenuPresenter:Lo/handleMessage;

.field protected mContentHeight:I

.field private mEatingHover:Z

.field private mEatingTouch:Z

.field protected mMenuView:Landroidx/appcompat/widget/ActionMenuView;

.field protected final mPopupContext:Landroid/content/Context;

.field protected final mVisAnimListener:Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;

.field protected mVisibilityAnim:Lo/getLaunchPendingIntent;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance p2, Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-direct {p2, p0}, Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;-><init>(Landroidx/appcompat/widget/AbsActionBarView;)V

    iput-object p2, p0, Landroidx/appcompat/widget/AbsActionBarView;->mVisAnimListener:Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;

    .line 64
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    sget v0, Lo/extraCallback$ICustomTabsCallback;->actionBarPopupTheme:I

    const/4 v1, 0x1

    invoke-virtual {p3, v0, p2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p3

    if-eqz p3, :cond_0

    iget p3, p2, Landroid/util/TypedValue;->resourceId:I

    if-eqz p3, :cond_0

    .line 67
    new-instance p3, Landroid/view/ContextThemeWrapper;

    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {p3, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Landroidx/appcompat/widget/AbsActionBarView;->mPopupContext:Landroid/content/Context;

    return-void

    .line 69
    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/AbsActionBarView;->mPopupContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$001(Landroidx/appcompat/widget/AbsActionBarView;I)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$101(Landroidx/appcompat/widget/AbsActionBarView;I)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method protected static next(IIZ)I
    .locals 0

    if-eqz p2, :cond_0

    sub-int/2addr p0, p1

    return p0

    :cond_0
    add-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public animateToVisibility(I)V
    .locals 2

    const-wide/16 v0, 0xc8

    .line 181
    invoke-virtual {p0, p1, v0, v1}, Landroidx/appcompat/widget/AbsActionBarView;->setupAnimatorToVisibility(IJ)Lo/getLaunchPendingIntent;

    move-result-object p1

    .line 182
    invoke-virtual {p1}, Lo/getLaunchPendingIntent;->onPostMessage()V

    return-void
.end method

.method public canShowOverflowMenu()Z
    .locals 1

    .line 237
    invoke-virtual {p0}, Landroidx/appcompat/widget/AbsActionBarView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dismissPopupMenus()V
    .locals 2

    .line 241
    iget-object v0, p0, Landroidx/appcompat/widget/AbsActionBarView;->mActionMenuPresenter:Lo/handleMessage;

    if-eqz v0, :cond_0

    .line 5373
    invoke-virtual {v0}, Lo/handleMessage;->onNavigationEvent()Z

    .line 5384
    iget-object v1, v0, Lo/handleMessage;->ICustomTabsCallback$Stub$Proxy:Lo/handleMessage$extraCallback;

    if-eqz v1, :cond_0

    .line 5385
    iget-object v0, v0, Lo/handleMessage;->ICustomTabsCallback$Stub$Proxy:Lo/handleMessage$extraCallback;

    invoke-virtual {v0}, Lo/getRoot;->onPostMessage()V

    :cond_0
    return-void
.end method

.method public getAnimatedVisibility()I
    .locals 1

    .line 153
    iget-object v0, p0, Landroidx/appcompat/widget/AbsActionBarView;->mVisibilityAnim:Lo/getLaunchPendingIntent;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Landroidx/appcompat/widget/AbsActionBarView;->mVisAnimListener:Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;

    iget v0, v0, Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    return v0

    .line 156
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getContentHeight()I
    .locals 1

    .line 146
    iget v0, p0, Landroidx/appcompat/widget/AbsActionBarView;->mContentHeight:I

    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .line 212
    iget-object v0, p0, Landroidx/appcompat/widget/AbsActionBarView;->mActionMenuPresenter:Lo/handleMessage;

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0}, Lo/handleMessage;->onNavigationEvent()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 4

    .line 226
    iget-object v0, p0, Landroidx/appcompat/widget/AbsActionBarView;->mActionMenuPresenter:Lo/handleMessage;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2399
    iget-object v2, v0, Lo/handleMessage;->getInterfaceDescriptor:Lo/handleMessage$ICustomTabsCallback;

    const/4 v3, 0x1

    if-nez v2, :cond_3

    .line 3395
    iget-object v2, v0, Lo/handleMessage;->ICustomTabsService:Lo/handleMessage$onMessageChannelReady;

    if-eqz v2, :cond_1

    iget-object v0, v0, Lo/handleMessage;->ICustomTabsService:Lo/handleMessage$onMessageChannelReady;

    .line 4320
    iget-object v2, v0, Lo/getRoot;->extraCallback:Lo/getServiceComponent;

    if-eqz v2, :cond_0

    iget-object v0, v0, Lo/getRoot;->extraCallback:Lo/getServiceComponent;

    invoke-virtual {v0}, Lo/getServiceComponent;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    return v1

    :cond_3
    :goto_2
    return v3

    :cond_4
    return v1
.end method

.method public isOverflowMenuShowing()Z
    .locals 4

    .line 219
    iget-object v0, p0, Landroidx/appcompat/widget/AbsActionBarView;->mActionMenuPresenter:Lo/handleMessage;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1395
    iget-object v2, v0, Lo/handleMessage;->ICustomTabsService:Lo/handleMessage$onMessageChannelReady;

    if-eqz v2, :cond_1

    iget-object v0, v0, Lo/handleMessage;->ICustomTabsService:Lo/handleMessage$onMessageChannelReady;

    .line 2320
    iget-object v2, v0, Lo/getRoot;->extraCallback:Lo/getServiceComponent;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object v0, v0, Lo/getRoot;->extraCallback:Lo/getServiceComponent;

    invoke-virtual {v0}, Lo/getServiceComponent;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v3

    :cond_1
    return v1
.end method

.method public isOverflowReserved()Z
    .locals 1

    .line 233
    iget-object v0, p0, Landroidx/appcompat/widget/AbsActionBarView;->mActionMenuPresenter:Lo/handleMessage;

    if-eqz v0, :cond_0

    .line 4406
    iget-boolean v0, v0, Lo/handleMessage;->asBinder:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected measureChildView(Landroid/view/View;III)I
    .locals 1

    const/high16 v0, -0x80000000

    .line 248
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v0, p3}, Landroid/view/View;->measure(II)V

    .line 251
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p2, p1

    sub-int/2addr p2, p4

    const/4 p1, 0x0

    .line 254
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 75
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lo/extraCallback$asInterface;->ActionBar:[I

    sget v1, Lo/extraCallback$ICustomTabsCallback;->actionBarStyle:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 81
    sget v0, Lo/extraCallback$asInterface;->ActionBar_height:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AbsActionBarView;->setContentHeight(I)V

    .line 82
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    iget-object p1, p0, Landroidx/appcompat/widget/AbsActionBarView;->mActionMenuPresenter:Lo/handleMessage;

    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p1}, Lo/handleMessage;->onMessageChannelReady()V

    :cond_0
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    .line 122
    iput-boolean v1, p0, Landroidx/appcompat/widget/AbsActionBarView;->mEatingHover:Z

    .line 125
    :cond_0
    iget-boolean v3, p0, Landroidx/appcompat/widget/AbsActionBarView;->mEatingHover:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 126
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-ne v0, v2, :cond_1

    if-nez p1, :cond_1

    .line 128
    iput-boolean v4, p0, Landroidx/appcompat/widget/AbsActionBarView;->mEatingHover:Z

    :cond_1
    const/16 p1, 0xa

    if-eq v0, p1, :cond_2

    const/4 p1, 0x3

    if-ne v0, p1, :cond_3

    .line 134
    :cond_2
    iput-boolean v1, p0, Landroidx/appcompat/widget/AbsActionBarView;->mEatingHover:Z

    :cond_3
    return v4
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 98
    iput-boolean v1, p0, Landroidx/appcompat/widget/AbsActionBarView;->mEatingTouch:Z

    .line 101
    :cond_0
    iget-boolean v2, p0, Landroidx/appcompat/widget/AbsActionBarView;->mEatingTouch:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 102
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 104
    iput-boolean v3, p0, Landroidx/appcompat/widget/AbsActionBarView;->mEatingTouch:Z

    :cond_1
    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-ne v0, p1, :cond_3

    .line 109
    :cond_2
    iput-boolean v1, p0, Landroidx/appcompat/widget/AbsActionBarView;->mEatingTouch:Z

    :cond_3
    return v3
.end method

.method protected positionChild(Landroid/view/View;IIIZ)I
    .locals 2

    .line 262
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 263
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr p4, v1

    .line 264
    div-int/lit8 p4, p4, 0x2

    add-int/2addr p3, p4

    if-eqz p5, :cond_0

    sub-int p4, p2, v0

    add-int/2addr v1, p3

    .line 267
    invoke-virtual {p1, p4, p3, p2, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_0
    add-int p4, p2, v0

    add-int/2addr v1, p3

    .line 269
    invoke-virtual {p1, p2, p3, p4, v1}, Landroid/view/View;->layout(IIII)V

    :goto_0
    if-eqz p5, :cond_1

    neg-int p1, v0

    return p1

    :cond_1
    return v0
.end method

.method public postShowOverflowMenu()V
    .locals 1

    .line 203
    new-instance v0, Landroidx/appcompat/widget/AbsActionBarView$3;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/AbsActionBarView$3;-><init>(Landroidx/appcompat/widget/AbsActionBarView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setContentHeight(I)V
    .locals 0

    .line 141
    iput p1, p0, Landroidx/appcompat/widget/AbsActionBarView;->mContentHeight:I

    .line 142
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 187
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 188
    iget-object v0, p0, Landroidx/appcompat/widget/AbsActionBarView;->mVisibilityAnim:Lo/getLaunchPendingIntent;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Lo/getLaunchPendingIntent;->onNavigationEvent()V

    .line 191
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setupAnimatorToVisibility(IJ)Lo/getLaunchPendingIntent;
    .locals 2

    .line 160
    iget-object v0, p0, Landroidx/appcompat/widget/AbsActionBarView;->mVisibilityAnim:Lo/getLaunchPendingIntent;

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0}, Lo/getLaunchPendingIntent;->onNavigationEvent()V

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 165
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AbsActionBarView;->setAlpha(F)V

    .line 168
    :cond_1
    invoke-static {p0}, Lo/unregisterCallbackListener;->newSession(Landroid/view/View;)Lo/getLaunchPendingIntent;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lo/getLaunchPendingIntent;->onNavigationEvent(F)Lo/getLaunchPendingIntent;

    move-result-object v0

    .line 169
    invoke-virtual {v0, p2, p3}, Lo/getLaunchPendingIntent;->onMessageChannelReady(J)Lo/getLaunchPendingIntent;

    .line 170
    iget-object p2, p0, Landroidx/appcompat/widget/AbsActionBarView;->mVisAnimListener:Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {p2, v0, p1}, Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(Lo/getLaunchPendingIntent;I)Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/getLaunchPendingIntent;->onPostMessage(Lo/setVolumeTo;)Lo/getLaunchPendingIntent;

    return-object v0

    .line 173
    :cond_2
    invoke-static {p0}, Lo/unregisterCallbackListener;->newSession(Landroid/view/View;)Lo/getLaunchPendingIntent;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/getLaunchPendingIntent;->onNavigationEvent(F)Lo/getLaunchPendingIntent;

    move-result-object v0

    .line 174
    invoke-virtual {v0, p2, p3}, Lo/getLaunchPendingIntent;->onMessageChannelReady(J)Lo/getLaunchPendingIntent;

    .line 175
    iget-object p2, p0, Landroidx/appcompat/widget/AbsActionBarView;->mVisAnimListener:Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {p2, v0, p1}, Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(Lo/getLaunchPendingIntent;I)Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/getLaunchPendingIntent;->onPostMessage(Lo/setVolumeTo;)Lo/getLaunchPendingIntent;

    return-object v0
.end method

.method public showOverflowMenu()Z
    .locals 1

    .line 196
    iget-object v0, p0, Landroidx/appcompat/widget/AbsActionBarView;->mActionMenuPresenter:Lo/handleMessage;

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0}, Lo/handleMessage;->ICustomTabsCallback()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
