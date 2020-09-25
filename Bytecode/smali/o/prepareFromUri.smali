.class public Lo/prepareFromUri;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lo/IMediaControllerCallback$Stub;
.implements Lo/onShuffleModeChanged;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/prepareFromUri$onNavigationEvent;,
        Lo/prepareFromUri$onPostMessage;,
        Lo/prepareFromUri$extraCallback;
    }
.end annotation


# static fields
.field private static final ICustomTabsService$Stub:[I

.field private static final IPostMessageService$Stub:Lo/prepareFromUri$onNavigationEvent;


# instance fields
.field private ICustomTabsCallback:Landroid/widget/EdgeEffect;

.field private ICustomTabsCallback$Stub:Z

.field private ICustomTabsCallback$Stub$Proxy:Z

.field private ICustomTabsService:Z

.field private ICustomTabsService$Stub$Proxy:Lo/prepareFromUri$onPostMessage;

.field private IPostMessageService:I

.field private asBinder:I

.field private asInterface:Z

.field private cancel:Lo/prepareFromUri$extraCallback;

.field private cancelAll:F

.field private extraCallback:Landroid/widget/EdgeEffect;

.field private extraCommand:I

.field private getInterfaceDescriptor:I

.field private final mayLaunchUrl:[I

.field private newSession:Landroid/view/VelocityTracker;

.field private final notify:Lo/onCaptioningEnabledChanged;

.field private onMessageChannelReady:Landroid/widget/OverScroller;

.field private final onNavigationEvent:Landroid/graphics/Rect;

.field private onPostMessage:J

.field private onRelationshipValidationResult:Landroid/view/View;

.field private onTransact:Z

.field private postMessage:I

.field private final requestPostMessageChannel:[I

.field private updateVisuals:I

.field private final validateRelationship:Lo/sendCommand;

.field private warmup:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 176
    new-instance v0, Lo/prepareFromUri$onNavigationEvent;

    invoke-direct {v0}, Lo/prepareFromUri$onNavigationEvent;-><init>()V

    sput-object v0, Lo/prepareFromUri;->IPostMessageService$Stub:Lo/prepareFromUri$onNavigationEvent;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101017a

    aput v2, v0, v1

    .line 178
    sput-object v0, Lo/prepareFromUri;->ICustomTabsService$Stub:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 190
    invoke-direct {p0, p1, v0}, Lo/prepareFromUri;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 194
    invoke-direct {p0, p1, p2, v0}, Lo/prepareFromUri;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 199
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lo/prepareFromUri;->onNavigationEvent:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 116
    iput-boolean v0, p0, Lo/prepareFromUri;->onTransact:Z

    const/4 v1, 0x0

    .line 117
    iput-boolean v1, p0, Lo/prepareFromUri;->asInterface:Z

    const/4 v2, 0x0

    .line 124
    iput-object v2, p0, Lo/prepareFromUri;->onRelationshipValidationResult:Landroid/view/View;

    .line 131
    iput-boolean v1, p0, Lo/prepareFromUri;->ICustomTabsCallback$Stub:Z

    .line 147
    iput-boolean v0, p0, Lo/prepareFromUri;->ICustomTabsService:Z

    const/4 v2, -0x1

    .line 157
    iput v2, p0, Lo/prepareFromUri;->extraCommand:I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 162
    iput-object v3, p0, Lo/prepareFromUri;->mayLaunchUrl:[I

    new-array v2, v2, [I

    .line 163
    iput-object v2, p0, Lo/prepareFromUri;->requestPostMessageChannel:[I

    .line 2460
    new-instance v2, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lo/prepareFromUri;->onMessageChannelReady:Landroid/widget/OverScroller;

    .line 2461
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    const/high16 v2, 0x40000

    .line 2462
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 2463
    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 2464
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 2465
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lo/prepareFromUri;->getInterfaceDescriptor:I

    .line 2466
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lo/prepareFromUri;->warmup:I

    .line 2467
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lo/prepareFromUri;->postMessage:I

    .line 202
    sget-object v2, Lo/prepareFromUri;->ICustomTabsService$Stub:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 205
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lo/prepareFromUri;->setFillViewport(Z)V

    .line 207
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 209
    new-instance p1, Lo/sendCommand;

    invoke-direct {p1}, Lo/sendCommand;-><init>()V

    iput-object p1, p0, Lo/prepareFromUri;->validateRelationship:Lo/sendCommand;

    .line 210
    new-instance p1, Lo/onCaptioningEnabledChanged;

    invoke-direct {p1, p0}, Lo/onCaptioningEnabledChanged;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lo/prepareFromUri;->notify:Lo/onCaptioningEnabledChanged;

    .line 213
    invoke-virtual {p0, v0}, Lo/prepareFromUri;->setNestedScrollingEnabled(Z)V

    .line 215
    sget-object p1, Lo/prepareFromUri;->IPostMessageService$Stub:Lo/prepareFromUri$onNavigationEvent;

    invoke-static {p0, p1}, Lo/unregisterCallbackListener;->onMessageChannelReady(Landroid/view/View;Lo/onSessionDestroyed;)V

    return-void
.end method

.method private ICustomTabsCallback(Landroid/view/MotionEvent;)V
    .locals 3

    .line 994
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 995
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 996
    iget v2, p0, Lo/prepareFromUri;->extraCommand:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1001
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lo/prepareFromUri;->asBinder:I

    .line 1002
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lo/prepareFromUri;->extraCommand:I

    .line 1003
    iget-object p1, p0, Lo/prepareFromUri;->newSession:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    .line 1004
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method private ICustomTabsCallback()Z
    .locals 4

    .line 523
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 524
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 525
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 526
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, v3

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    .line 527
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method private ICustomTabsCallback(I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x82

    if-ne p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1224
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    if-eqz v2, :cond_1

    .line 1227
    iget-object v1, p0, Lo/prepareFromUri;->onNavigationEvent:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 1228
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    sub-int/2addr v1, v0

    .line 1230
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1231
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1232
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 1233
    iget-object v1, p0, Lo/prepareFromUri;->onNavigationEvent:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v3

    if-le v1, v0, :cond_2

    .line 1234
    iget-object v1, p0, Lo/prepareFromUri;->onNavigationEvent:Landroid/graphics/Rect;

    sub-int/2addr v0, v3

    iput v0, v1, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 1238
    :cond_1
    iget-object v0, p0, Lo/prepareFromUri;->onNavigationEvent:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 1239
    iget-object v0, p0, Lo/prepareFromUri;->onNavigationEvent:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-gez v0, :cond_2

    .line 1240
    iget-object v0, p0, Lo/prepareFromUri;->onNavigationEvent:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1243
    :cond_2
    :goto_1
    iget-object v0, p0, Lo/prepareFromUri;->onNavigationEvent:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1245
    iget-object v0, p0, Lo/prepareFromUri;->onNavigationEvent:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lo/prepareFromUri;->onNavigationEvent:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v0, v1}, Lo/prepareFromUri;->onPostMessage(III)Z

    move-result p1

    return p1
.end method

.method private ICustomTabsCallback(Landroid/view/View;II)Z
    .locals 1

    .line 1387
    iget-object v0, p0, Lo/prepareFromUri;->onNavigationEvent:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1388
    iget-object v0, p0, Lo/prepareFromUri;->onNavigationEvent:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1390
    iget-object p1, p0, Lo/prepareFromUri;->onNavigationEvent:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lo/prepareFromUri;->onNavigationEvent:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p2

    .line 1391
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p2

    add-int/2addr p2, p3

    if-gt p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onMessageChannelReady(Landroid/graphics/Rect;)I
    .locals 10

    .line 1725
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1727
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1728
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    add-int v3, v2, v0

    .line 1732
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v4

    .line 1737
    iget v5, p1, Landroid/graphics/Rect;->top:I

    if-lez v5, :cond_1

    add-int/2addr v2, v4

    .line 1744
    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1745
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 1746
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v9

    iget v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    if-ge v7, v8, :cond_2

    sub-int v4, v3, v4

    goto :goto_0

    :cond_2
    move v4, v3

    .line 1752
    :goto_0
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-le v7, v4, :cond_4

    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-le v7, v2, :cond_4

    .line 1757
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v0, :cond_3

    .line 1759
    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v2

    goto :goto_1

    .line 1762
    :cond_3
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v4

    :goto_1
    add-int/2addr p1, v1

    .line 1766
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    sub-int/2addr v0, v3

    .line 1768
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_3

    .line 1770
    :cond_4
    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-ge v3, v2, :cond_6

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v3, v4, :cond_6

    .line 1775
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-le v3, v0, :cond_5

    .line 1777
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, p1

    sub-int/2addr v1, v4

    goto :goto_2

    .line 1780
    :cond_5
    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, p1

    sub-int/2addr v1, v2

    .line 1784
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p1

    neg-int p1, p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_6
    :goto_3
    return v1
.end method

.method private onMessageChannelReady()V
    .locals 2

    .line 1984
    invoke-virtual {p0}, Lo/prepareFromUri;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1985
    iget-object v0, p0, Lo/prepareFromUri;->ICustomTabsCallback:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_1

    .line 1986
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1987
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lo/prepareFromUri;->ICustomTabsCallback:Landroid/widget/EdgeEffect;

    .line 1988
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lo/prepareFromUri;->extraCallback:Landroid/widget/EdgeEffect;

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1991
    iput-object v0, p0, Lo/prepareFromUri;->ICustomTabsCallback:Landroid/widget/EdgeEffect;

    .line 1992
    iput-object v0, p0, Lo/prepareFromUri;->extraCallback:Landroid/widget/EdgeEffect;

    :cond_1
    return-void
.end method

.method private onMessageChannelReady(I)V
    .locals 3

    .line 236
    iget-object v0, p0, Lo/prepareFromUri;->notify:Lo/onCaptioningEnabledChanged;

    .line 4186
    invoke-virtual {v0, p1}, Lo/onCaptioningEnabledChanged;->onNavigationEvent(I)Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4188
    iget-object v2, v0, Lo/onCaptioningEnabledChanged;->onMessageChannelReady:Landroid/view/View;

    invoke-static {v1, v2, p1}, Lo/sendMediaButton;->ICustomTabsCallback(Landroid/view/ViewParent;Landroid/view/View;I)V

    const/4 v1, 0x0

    .line 4189
    invoke-virtual {v0, p1, v1}, Lo/onCaptioningEnabledChanged;->onPostMessage(ILandroid/view/ViewParent;)V

    :cond_0
    return-void
.end method

.method private static onMessageChannelReady(Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1925
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 1926
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Lo/prepareFromUri;->onMessageChannelReady(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private onNavigationEvent(ZII)Landroid/view/View;
    .locals 12

    const/4 v0, 0x2

    .line 1146
    invoke-virtual {p0, v0}, Landroid/view/View;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1158
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v1, :cond_8

    .line 1160
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 1161
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    .line 1162
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v8

    const/4 v9, 0x1

    if-ge p2, v8, :cond_7

    if-ge v7, p3, :cond_7

    if-ge p2, v7, :cond_0

    if-ge v8, p3, :cond_0

    const/4 v10, 0x1

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    :goto_1
    if-nez v3, :cond_1

    move-object v3, v6

    move v5, v10

    goto :goto_4

    :cond_1
    if-eqz p1, :cond_2

    .line 1178
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v11

    if-lt v7, v11, :cond_3

    :cond_2
    if-nez p1, :cond_4

    .line 1179
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v7

    if-le v8, v7, :cond_4

    :cond_3
    const/4 v7, 0x1

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_2
    if-eqz v5, :cond_5

    if-eqz v10, :cond_7

    if-eqz v7, :cond_7

    goto :goto_3

    :cond_5
    if-eqz v10, :cond_6

    move-object v3, v6

    const/4 v5, 0x1

    goto :goto_4

    :cond_6
    if-eqz v7, :cond_7

    :goto_3
    move-object v3, v6

    :cond_7
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_8
    return-object v3
.end method

.method private onNavigationEvent(II[I)V
    .locals 10

    .line 315
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    const/4 v1, 0x0

    .line 316
    invoke-virtual {p0, v1, p1}, Landroid/view/View;->scrollBy(II)V

    .line 317
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    sub-int v4, v1, v0

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    .line 320
    aget v1, p3, v0

    add-int/2addr v1, v4

    aput v1, p3, v0

    :cond_0
    sub-int v6, p1, v4

    .line 324
    iget-object v2, p0, Lo/prepareFromUri;->notify:Lo/onCaptioningEnabledChanged;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v8, p2

    move-object v9, p3

    .line 7231
    invoke-virtual/range {v2 .. v9}, Lo/onCaptioningEnabledChanged;->onMessageChannelReady(IIII[II[I)Z

    return-void
.end method

.method private onNavigationEvent(II[II[I)V
    .locals 8

    .line 223
    iget-object v0, p0, Lo/prepareFromUri;->notify:Lo/onCaptioningEnabledChanged;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move v2, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    .line 3231
    invoke-virtual/range {v0 .. v7}, Lo/onCaptioningEnabledChanged;->onMessageChannelReady(IIII[II[I)Z

    return-void
.end method

.method private onNavigationEvent(I)Z
    .locals 8

    .line 1325
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 1328
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    .line 20456
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    float-to-int v2, v3

    const/16 v3, 0xfa

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 1332
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-direct {p0, v1, v2, v5}, Lo/prepareFromUri;->ICustomTabsCallback(Landroid/view/View;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1333
    iget-object v2, p0, Lo/prepareFromUri;->onNavigationEvent:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1334
    iget-object v2, p0, Lo/prepareFromUri;->onNavigationEvent:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1335
    iget-object v2, p0, Lo/prepareFromUri;->onNavigationEvent:Landroid/graphics/Rect;

    invoke-direct {p0, v2}, Lo/prepareFromUri;->onMessageChannelReady(Landroid/graphics/Rect;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 21401
    iget-boolean v5, p0, Lo/prepareFromUri;->ICustomTabsService:Z

    if-eqz v5, :cond_1

    .line 21416
    invoke-virtual {p0, v4, v2, v3, v4}, Lo/prepareFromUri;->onMessageChannelReady(IIIZ)V

    goto :goto_0

    .line 21404
    :cond_1
    invoke-virtual {p0, v4, v2}, Landroid/view/View;->scrollBy(II)V

    .line 1337
    :cond_2
    :goto_0
    invoke-virtual {v1, p1}, Landroid/view/View;->requestFocus(I)Z

    goto :goto_3

    :cond_3
    const/16 v1, 0x21

    const/16 v5, 0x82

    if-ne p1, v1, :cond_4

    .line 1342
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    if-ge v1, v2, :cond_4

    .line 1343
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    goto :goto_1

    :cond_4
    if-ne p1, v5, :cond_5

    .line 1345
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_5

    .line 1346
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1347
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 1348
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v6

    .line 1349
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int/2addr v1, v6

    .line 1350
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_5
    :goto_1
    if-nez v2, :cond_6

    return v4

    :cond_6
    if-ne p1, v5, :cond_7

    goto :goto_2

    :cond_7
    neg-int v2, v2

    :goto_2
    if-eqz v2, :cond_9

    .line 22401
    iget-boolean p1, p0, Lo/prepareFromUri;->ICustomTabsService:Z

    if-eqz p1, :cond_8

    .line 22416
    invoke-virtual {p0, v4, v2, v3, v4}, Lo/prepareFromUri;->onMessageChannelReady(IIIZ)V

    goto :goto_3

    .line 22404
    :cond_8
    invoke-virtual {p0, v4, v2}, Landroid/view/View;->scrollBy(II)V

    :cond_9
    :goto_3
    const/4 p1, 0x1

    if-eqz v0, :cond_a

    .line 1359
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 23379
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v4, v1}, Lo/prepareFromUri;->ICustomTabsCallback(Landroid/view/View;II)Z

    move-result v0

    xor-int/2addr v0, p1

    if-eqz v0, :cond_a

    .line 1366
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x20000

    .line 1367
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 1368
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 1369
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    :cond_a
    return p1
.end method

.method private onPostMessage()V
    .locals 2

    const/4 v0, 0x0

    .line 1949
    iput-boolean v0, p0, Lo/prepareFromUri;->ICustomTabsCallback$Stub:Z

    .line 29701
    iget-object v1, p0, Lo/prepareFromUri;->newSession:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_0

    .line 29702
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v1, 0x0

    .line 29703
    iput-object v1, p0, Lo/prepareFromUri;->newSession:Landroid/view/VelocityTracker;

    .line 1952
    :cond_0
    invoke-direct {p0, v0}, Lo/prepareFromUri;->onMessageChannelReady(I)V

    .line 1954
    iget-object v0, p0, Lo/prepareFromUri;->ICustomTabsCallback:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_1

    .line 1955
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1956
    iget-object v0, p0, Lo/prepareFromUri;->extraCallback:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_1
    return-void
.end method

.method private onPostMessage(I)V
    .locals 12

    .line 1937
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1939
    iget-object v1, p0, Lo/prepareFromUri;->onMessageChannelReady:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v5, p1

    invoke-virtual/range {v1 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 29231
    iget-object p1, p0, Lo/prepareFromUri;->notify:Lo/onCaptioningEnabledChanged;

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lo/onCaptioningEnabledChanged;->extraCallback(II)Z

    .line 28668
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p1

    iput p1, p0, Lo/prepareFromUri;->IPostMessageService:I

    .line 28669
    invoke-static {p0}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private onPostMessage(Landroid/view/View;)V
    .locals 1

    .line 1683
    iget-object v0, p0, Lo/prepareFromUri;->onNavigationEvent:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1686
    iget-object v0, p0, Lo/prepareFromUri;->onNavigationEvent:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1688
    iget-object p1, p0, Lo/prepareFromUri;->onNavigationEvent:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lo/prepareFromUri;->onMessageChannelReady(Landroid/graphics/Rect;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1691
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->scrollBy(II)V

    :cond_0
    return-void
.end method

.method private onPostMessage(II)Z
    .locals 1

    .line 231
    iget-object p1, p0, Lo/prepareFromUri;->notify:Lo/onCaptioningEnabledChanged;

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lo/onCaptioningEnabledChanged;->extraCallback(II)Z

    move-result p1

    return p1
.end method

.method private onPostMessage(III)Z
    .locals 6

    .line 1295
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1296
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x21

    if-ne p1, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 1300
    :goto_0
    invoke-direct {p0, v4, p2, p3}, Lo/prepareFromUri;->onNavigationEvent(ZII)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_1

    move-object v5, p0

    :cond_1
    if-lt p2, v1, :cond_2

    if-gt p3, v0, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    if-eqz v4, :cond_3

    sub-int/2addr p2, v1

    goto :goto_1

    :cond_3
    sub-int p2, p3, v0

    :goto_1
    if-eqz p2, :cond_5

    .line 20401
    iget-boolean p3, p0, Lo/prepareFromUri;->ICustomTabsService:Z

    if-eqz p3, :cond_4

    const/16 p3, 0xfa

    .line 20416
    invoke-virtual {p0, v3, p2, p3, v3}, Lo/prepareFromUri;->onMessageChannelReady(IIIZ)V

    goto :goto_2

    .line 20404
    :cond_4
    invoke-virtual {p0, v3, p2}, Landroid/view/View;->scrollBy(II)V

    .line 1312
    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p2

    if-eq v5, p2, :cond_6

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    :cond_6
    return v2
.end method

.method private onPostMessage(IIII)Z
    .locals 9

    .line 1064
    invoke-virtual {p0}, Lo/prepareFromUri;->getOverScrollMode()I

    .line 1066
    invoke-virtual {p0}, Lo/prepareFromUri;->computeHorizontalScrollRange()I

    invoke-virtual {p0}, Lo/prepareFromUri;->computeHorizontalScrollExtent()I

    .line 1068
    invoke-virtual {p0}, Lo/prepareFromUri;->computeVerticalScrollRange()I

    invoke-virtual {p0}, Lo/prepareFromUri;->computeVerticalScrollExtent()I

    add-int/2addr p3, p1

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-lez p2, :cond_0

    :goto_0
    const/4 p2, 0x0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    if-gez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_1
    if-le p3, p4, :cond_2

    const/4 p3, 0x1

    goto :goto_2

    :cond_2
    if-gez p3, :cond_3

    const/4 p3, 0x1

    const/4 p4, 0x0

    goto :goto_2

    :cond_3
    move p4, p3

    const/4 p3, 0x0

    :goto_2
    if-eqz p3, :cond_5

    .line 19241
    iget-object v1, p0, Lo/prepareFromUri;->notify:Lo/onCaptioningEnabledChanged;

    .line 20114
    invoke-virtual {v1, p1}, Lo/onCaptioningEnabledChanged;->onNavigationEvent(I)Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    if-nez v1, :cond_5

    .line 1109
    iget-object v1, p0, Lo/prepareFromUri;->onMessageChannelReady:Landroid/widget/OverScroller;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lo/prepareFromUri;->onNavigationEvent()I

    move-result v7

    move v2, p2

    move v3, p4

    invoke-virtual/range {v1 .. v7}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 1112
    :cond_5
    invoke-virtual {p0, p2, p4, v8, p3}, Lo/prepareFromUri;->onOverScrolled(IIZZ)V

    if-nez v8, :cond_7

    if-eqz p3, :cond_6

    goto :goto_4

    :cond_6
    return v0

    :cond_7
    :goto_4
    return p1
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 633
    iget-object v0, p0, Lo/prepareFromUri;->onNavigationEvent:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 635
    invoke-direct {p0}, Lo/prepareFromUri;->ICustomTabsCallback()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x82

    if-nez v0, :cond_2

    .line 636
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    .line 637
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x0

    .line 639
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, v2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eq p1, p0, :cond_1

    .line 643
    invoke-virtual {p1, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1

    .line 649
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_9

    .line 650
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x13

    const/16 v4, 0x21

    if-eq v0, v3, :cond_7

    const/16 v3, 0x14

    if-eq v0, v3, :cond_5

    const/16 v3, 0x3e

    if-eq v0, v3, :cond_3

    goto :goto_0

    .line 666
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 v2, 0x21

    :cond_4
    invoke-direct {p0, v2}, Lo/prepareFromUri;->ICustomTabsCallback(I)Z

    goto :goto_0

    .line 659
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    if-nez p1, :cond_6

    .line 660
    invoke-direct {p0, v2}, Lo/prepareFromUri;->onNavigationEvent(I)Z

    move-result v1

    goto :goto_0

    .line 662
    :cond_6
    invoke-virtual {p0, v2}, Lo/prepareFromUri;->extraCallback(I)Z

    move-result v1

    goto :goto_0

    .line 652
    :cond_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    if-nez p1, :cond_8

    .line 653
    invoke-direct {p0, v4}, Lo/prepareFromUri;->onNavigationEvent(I)Z

    move-result v1

    goto :goto_0

    .line 655
    :cond_8
    invoke-virtual {p0, v4}, Lo/prepareFromUri;->extraCallback(I)Z

    move-result v1

    :cond_9
    :goto_0
    return v1
.end method

.method public addView(Landroid/view/View;)V
    .locals 1

    .line 472
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 476
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void

    .line 473
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ScrollView can host only one direct child"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1

    .line 481
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 485
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    return-void

    .line 482
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ScrollView can host only one direct child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 499
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 503
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 500
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ScrollView can host only one direct child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 490
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 494
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 491
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ScrollView can host only one direct child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public computeHorizontalScrollExtent()I
    .locals 1

    .line 1569
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 1

    .line 1562
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollOffset()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange()I
    .locals 1

    .line 1555
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 15

    .line 1605
    iget-object v0, p0, Lo/prepareFromUri;->onMessageChannelReady:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1609
    :cond_0
    iget-object v0, p0, Lo/prepareFromUri;->onMessageChannelReady:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 1610
    iget-object v0, p0, Lo/prepareFromUri;->onMessageChannelReady:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    .line 1611
    iget v1, p0, Lo/prepareFromUri;->IPostMessageService:I

    sub-int v1, v0, v1

    .line 1612
    iput v0, p0, Lo/prepareFromUri;->IPostMessageService:I

    .line 1615
    iget-object v5, p0, Lo/prepareFromUri;->requestPostMessageChannel:[I

    const/4 v0, 0x0

    const/4 v8, 0x1

    aput v0, v5, v8

    .line 25254
    iget-object v2, p0, Lo/prepareFromUri;->notify:Lo/onCaptioningEnabledChanged;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Lo/onCaptioningEnabledChanged;->ICustomTabsCallback(II[I[II)Z

    .line 1618
    iget-object v2, p0, Lo/prepareFromUri;->requestPostMessageChannel:[I

    aget v2, v2, v8

    sub-int/2addr v1, v2

    .line 1620
    invoke-virtual {p0}, Lo/prepareFromUri;->onNavigationEvent()I

    move-result v2

    if-eqz v1, :cond_1

    .line 1624
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    .line 1625
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v4

    invoke-direct {p0, v1, v4, v3, v2}, Lo/prepareFromUri;->onPostMessage(IIII)Z

    .line 1626
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    sub-int v10, v4, v3

    sub-int/2addr v1, v10

    .line 1630
    iget-object v14, p0, Lo/prepareFromUri;->requestPostMessageChannel:[I

    aput v0, v14, v8

    .line 1631
    iget-object v12, p0, Lo/prepareFromUri;->mayLaunchUrl:[I

    const/4 v13, 0x1

    move-object v9, p0

    move v11, v1

    invoke-direct/range {v9 .. v14}, Lo/prepareFromUri;->onNavigationEvent(II[II[I)V

    .line 1633
    iget-object v3, p0, Lo/prepareFromUri;->requestPostMessageChannel:[I

    aget v3, v3, v8

    sub-int/2addr v1, v3

    :cond_1
    if-eqz v1, :cond_6

    .line 1637
    invoke-virtual {p0}, Lo/prepareFromUri;->getOverScrollMode()I

    move-result v3

    if-eqz v3, :cond_2

    if-ne v3, v8, :cond_3

    if-lez v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_5

    .line 1641
    invoke-direct {p0}, Lo/prepareFromUri;->onMessageChannelReady()V

    if-gez v1, :cond_4

    .line 1643
    iget-object v0, p0, Lo/prepareFromUri;->ICustomTabsCallback:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1644
    iget-object v0, p0, Lo/prepareFromUri;->ICustomTabsCallback:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Lo/prepareFromUri;->onMessageChannelReady:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_0

    .line 1647
    :cond_4
    iget-object v0, p0, Lo/prepareFromUri;->extraCallback:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1648
    iget-object v0, p0, Lo/prepareFromUri;->extraCallback:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Lo/prepareFromUri;->onMessageChannelReady:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 25673
    :cond_5
    :goto_0
    iget-object v0, p0, Lo/prepareFromUri;->onMessageChannelReady:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 25674
    invoke-direct {p0, v8}, Lo/prepareFromUri;->onMessageChannelReady(I)V

    .line 1655
    :cond_6
    iget-object v0, p0, Lo/prepareFromUri;->onMessageChannelReady:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1656
    invoke-static {p0}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;)V

    return-void

    .line 1658
    :cond_7
    invoke-direct {p0, v8}, Lo/prepareFromUri;->onMessageChannelReady(I)V

    return-void
.end method

.method public computeVerticalScrollExtent()I
    .locals 1

    .line 1548
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 2

    .line 1541
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 4

    .line 1517
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1518
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 1523
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1524
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 1525
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    .line 1526
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    sub-int v1, v2, v1

    .line 1527
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-gez v3, :cond_1

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_1
    if-le v3, v0, :cond_2

    sub-int/2addr v3, v0

    add-int/2addr v2, v3

    :cond_2
    :goto_0
    return v2
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 621
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lo/prepareFromUri;->ICustomTabsCallback(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1

    .line 298
    iget-object v0, p0, Lo/prepareFromUri;->notify:Lo/onCaptioningEnabledChanged;

    invoke-virtual {v0, p1, p2, p3}, Lo/onCaptioningEnabledChanged;->ICustomTabsCallback(FFZ)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 3

    .line 303
    iget-object v0, p0, Lo/prepareFromUri;->notify:Lo/onCaptioningEnabledChanged;

    .line 7086
    iget-boolean v1, v0, Lo/onCaptioningEnabledChanged;->ICustomTabsCallback:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 6369
    invoke-virtual {v0, v2}, Lo/onCaptioningEnabledChanged;->onNavigationEvent(I)Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6371
    iget-object v0, v0, Lo/onCaptioningEnabledChanged;->onMessageChannelReady:Landroid/view/View;

    invoke-static {v1, v0, p1, p2}, Lo/sendMediaButton;->onMessageChannelReady(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result p1

    return p1

    :cond_0
    return v2
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 6

    .line 6254
    iget-object v0, p0, Lo/prepareFromUri;->notify:Lo/onCaptioningEnabledChanged;

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/onCaptioningEnabledChanged;->ICustomTabsCallback(II[I[II)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 8

    .line 287
    iget-object v0, p0, Lo/prepareFromUri;->notify:Lo/onCaptioningEnabledChanged;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 6204
    invoke-virtual/range {v0 .. v7}, Lo/onCaptioningEnabledChanged;->onMessageChannelReady(IIII[II[I)Z

    move-result p1

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1998
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1999
    iget-object v0, p0, Lo/prepareFromUri;->ICustomTabsCallback:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_9

    .line 2000
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    .line 2001
    iget-object v1, p0, Lo/prepareFromUri;->ICustomTabsCallback:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-nez v1, :cond_4

    .line 2002
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 2003
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 2004
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 2006
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 2007
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v2, :cond_1

    invoke-virtual {p0}, Lo/prepareFromUri;->getClipToPadding()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .line 2008
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v4, v7

    .line 2009
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    add-int/2addr v7, v3

    .line 2011
    :goto_1
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v2, :cond_2

    invoke-virtual {p0}, Lo/prepareFromUri;->getClipToPadding()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2012
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    sub-int/2addr v5, v8

    .line 2013
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    add-int/2addr v6, v8

    :cond_2
    int-to-float v7, v7

    int-to-float v6, v6

    .line 2015
    invoke-virtual {p1, v7, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2016
    iget-object v6, p0, Lo/prepareFromUri;->ICustomTabsCallback:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, v4, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2017
    iget-object v4, p0, Lo/prepareFromUri;->ICustomTabsCallback:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2018
    invoke-static {p0}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;)V

    .line 2020
    :cond_3
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2022
    :cond_4
    iget-object v1, p0, Lo/prepareFromUri;->extraCallback:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_9

    .line 2023
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 2024
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 2025
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 2027
    invoke-virtual {p0}, Lo/prepareFromUri;->onNavigationEvent()I

    move-result v6

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v5

    .line 2028
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v2, :cond_5

    invoke-virtual {p0}, Lo/prepareFromUri;->getClipToPadding()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2029
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    sub-int/2addr v4, v6

    .line 2030
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    add-int/2addr v3, v6

    .line 2032
    :cond_6
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v2, :cond_7

    invoke-virtual {p0}, Lo/prepareFromUri;->getClipToPadding()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2033
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    add-int/2addr v2, v6

    sub-int/2addr v5, v2

    .line 2034
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    :cond_7
    sub-int/2addr v3, v4

    int-to-float v2, v3

    int-to-float v0, v0

    .line 2036
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, 0x43340000    # 180.0f

    int-to-float v2, v4

    const/4 v3, 0x0

    .line 2037
    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 2038
    iget-object v0, p0, Lo/prepareFromUri;->extraCallback:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, v4, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2039
    iget-object v0, p0, Lo/prepareFromUri;->extraCallback:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2040
    invoke-static {p0}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;)V

    .line 2042
    :cond_8
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_9
    return-void
.end method

.method public final extraCallback(I)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x82

    if-ne p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1262
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1264
    iget-object v4, p0, Lo/prepareFromUri;->onNavigationEvent:Landroid/graphics/Rect;

    iput v1, v4, Landroid/graphics/Rect;->top:I

    .line 1265
    iget-object v1, p0, Lo/prepareFromUri;->onNavigationEvent:Landroid/graphics/Rect;

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    if-eqz v2, :cond_1

    .line 1268
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    sub-int/2addr v1, v0

    .line 1270
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1271
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1272
    iget-object v2, p0, Lo/prepareFromUri;->onNavigationEvent:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 1273
    iget-object v0, p0, Lo/prepareFromUri;->onNavigationEvent:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1277
    :cond_1
    iget-object v0, p0, Lo/prepareFromUri;->onNavigationEvent:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lo/prepareFromUri;->onNavigationEvent:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v0, v1}, Lo/prepareFromUri;->onPostMessage(III)Z

    move-result p1

    return p1
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 5

    .line 435
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 439
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 440
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 441
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 442
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 443
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v3

    if-ge v0, v2, :cond_1

    int-to-float v0, v0

    int-to-float v1, v2

    div-float/2addr v0, v1

    return v0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getNestedScrollAxes()I
    .locals 2

    .line 408
    iget-object v0, p0, Lo/prepareFromUri;->validateRelationship:Lo/sendCommand;

    .line 10092
    iget v1, v0, Lo/sendCommand;->onMessageChannelReady:I

    iget v0, v0, Lo/sendCommand;->onNavigationEvent:I

    or-int/2addr v0, v1

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 2

    .line 420
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 424
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 425
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    if-ge v1, v0, :cond_1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 2

    .line 5241
    iget-object v0, p0, Lo/prepareFromUri;->notify:Lo/onCaptioningEnabledChanged;

    const/4 v1, 0x0

    .line 6114
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

    .line 266
    iget-object v0, p0, Lo/prepareFromUri;->notify:Lo/onCaptioningEnabledChanged;

    .line 5086
    iget-boolean v0, v0, Lo/onCaptioningEnabledChanged;->ICustomTabsCallback:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 2

    .line 1575
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 1580
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 1581
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget p3, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1580
    invoke-static {p2, v0, p3}, Lo/prepareFromUri;->getChildMeasureSpec(III)I

    move-result p2

    const/4 p3, 0x0

    .line 1583
    invoke-static {p3, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 1585
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 1

    .line 1591
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1594
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    add-int/2addr p5, v0

    iget v0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p5, v0

    iget v0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p5, v0

    add-int/2addr p5, p3

    iget p3, p4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1593
    invoke-static {p2, p5, p3}, Lo/prepareFromUri;->getChildMeasureSpec(III)I

    move-result p2

    .line 1596
    iget p3, p4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p4, p4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, p4

    const/4 p4, 0x0

    invoke-static {p3, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 1599
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1892
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x0

    .line 1894
    iput-boolean v0, p0, Lo/prepareFromUri;->asInterface:Z

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1011
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 1012
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    goto :goto_2

    .line 1014
    :cond_0
    iget-boolean v0, p0, Lo/prepareFromUri;->ICustomTabsCallback$Stub:Z

    if-nez v0, :cond_5

    const/16 v0, 0x9

    .line 1015
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float v2, p1, v0

    if-eqz v2, :cond_5

    .line 19039
    iget v2, p0, Lo/prepareFromUri;->cancelAll:F

    const/4 v3, 0x1

    cmpl-float v0, v2, v0

    if-nez v0, :cond_2

    .line 19040
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 19041
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 19042
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x101004d

    invoke-virtual {v4, v5, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 19048
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 19047
    invoke-virtual {v0, v2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lo/prepareFromUri;->cancelAll:F

    goto :goto_0

    .line 19044
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Expected theme to define listPreferredItemHeight."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19050
    :cond_2
    :goto_0
    iget v0, p0, Lo/prepareFromUri;->cancelAll:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 1018
    invoke-virtual {p0}, Lo/prepareFromUri;->onNavigationEvent()I

    move-result v0

    .line 1019
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int p1, v2, p1

    if-gez p1, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    if-le p1, v0, :cond_4

    goto :goto_1

    :cond_4
    move v0, p1

    :goto_1
    if-eq v0, v2, :cond_5

    .line 1027
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p1

    invoke-super {p0, p1, v0}, Landroid/widget/FrameLayout;->scrollTo(II)V

    return v3

    :cond_5
    :goto_2
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 728
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 729
    iget-boolean v3, p0, Lo/prepareFromUri;->ICustomTabsCallback$Stub:Z

    if-eqz v3, :cond_0

    return v2

    :cond_0
    and-int/lit16 v0, v0, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_8

    const/4 v5, -0x1

    if-eq v0, v2, :cond_5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    goto/16 :goto_2

    .line 815
    :cond_1
    invoke-direct {p0, p1}, Lo/prepareFromUri;->ICustomTabsCallback(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 744
    :cond_2
    iget v0, p0, Lo/prepareFromUri;->extraCommand:I

    if-eq v0, v5, :cond_c

    .line 750
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 752
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Invalid pointerId="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in onInterceptTouchEvent"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NestedScrollView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 757
    :cond_3
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    .line 758
    iget v3, p0, Lo/prepareFromUri;->asBinder:I

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 759
    iget v5, p0, Lo/prepareFromUri;->getInterfaceDescriptor:I

    if-le v3, v5, :cond_c

    .line 760
    invoke-virtual {p0}, Lo/prepareFromUri;->getNestedScrollAxes()I

    move-result v3

    and-int/2addr v1, v3

    if-nez v1, :cond_c

    .line 761
    iput-boolean v2, p0, Lo/prepareFromUri;->ICustomTabsCallback$Stub:Z

    .line 762
    iput v0, p0, Lo/prepareFromUri;->asBinder:I

    .line 11695
    iget-object v0, p0, Lo/prepareFromUri;->newSession:Landroid/view/VelocityTracker;

    if-nez v0, :cond_4

    .line 11696
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lo/prepareFromUri;->newSession:Landroid/view/VelocityTracker;

    .line 764
    :cond_4
    iget-object v0, p0, Lo/prepareFromUri;->newSession:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 765
    iput v4, p0, Lo/prepareFromUri;->updateVisuals:I

    .line 766
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 768
    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_2

    .line 806
    :cond_5
    iput-boolean v4, p0, Lo/prepareFromUri;->ICustomTabsCallback$Stub:Z

    .line 807
    iput v5, p0, Lo/prepareFromUri;->extraCommand:I

    .line 13701
    iget-object p1, p0, Lo/prepareFromUri;->newSession:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_6

    .line 13702
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 13703
    iput-object v3, p0, Lo/prepareFromUri;->newSession:Landroid/view/VelocityTracker;

    .line 809
    :cond_6
    iget-object v5, p0, Lo/prepareFromUri;->onMessageChannelReady:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0}, Lo/prepareFromUri;->onNavigationEvent()I

    move-result v11

    invoke-virtual/range {v5 .. v11}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 810
    invoke-static {p0}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;)V

    .line 812
    :cond_7
    invoke-direct {p0, v4}, Lo/prepareFromUri;->onMessageChannelReady(I)V

    goto/16 :goto_2

    .line 775
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 776
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    .line 12675
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-lez v6, :cond_9

    .line 12676
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v6

    .line 12677
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 12678
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v8, v6

    if-lt v0, v8, :cond_9

    .line 12679
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    sub-int/2addr v8, v6

    if-ge v0, v8, :cond_9

    .line 12680
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v6

    if-lt v5, v6, :cond_9

    .line 12681
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v6

    if-ge v5, v6, :cond_9

    const/4 v5, 0x1

    goto :goto_0

    :cond_9
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_a

    .line 777
    iput-boolean v4, p0, Lo/prepareFromUri;->ICustomTabsCallback$Stub:Z

    .line 12701
    iget-object p1, p0, Lo/prepareFromUri;->newSession:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_c

    .line 12702
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 12703
    iput-object v3, p0, Lo/prepareFromUri;->newSession:Landroid/view/VelocityTracker;

    goto :goto_2

    .line 786
    :cond_a
    iput v0, p0, Lo/prepareFromUri;->asBinder:I

    .line 787
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lo/prepareFromUri;->extraCommand:I

    .line 13687
    iget-object v0, p0, Lo/prepareFromUri;->newSession:Landroid/view/VelocityTracker;

    if-nez v0, :cond_b

    .line 13688
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lo/prepareFromUri;->newSession:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 13690
    :cond_b
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 790
    :goto_1
    iget-object v0, p0, Lo/prepareFromUri;->newSession:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 797
    iget-object p1, p0, Lo/prepareFromUri;->onMessageChannelReady:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 798
    iget-object p1, p0, Lo/prepareFromUri;->onMessageChannelReady:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lo/prepareFromUri;->ICustomTabsCallback$Stub:Z

    .line 799
    invoke-direct {p0, v1, v4}, Lo/prepareFromUri;->onPostMessage(II)Z

    .line 823
    :cond_c
    :goto_2
    iget-boolean p1, p0, Lo/prepareFromUri;->ICustomTabsCallback$Stub:Z

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 1854
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    const/4 p1, 0x0

    .line 1855
    iput-boolean p1, p0, Lo/prepareFromUri;->onTransact:Z

    .line 1857
    iget-object p2, p0, Lo/prepareFromUri;->onRelationshipValidationResult:Landroid/view/View;

    if-eqz p2, :cond_0

    invoke-static {p2, p0}, Lo/prepareFromUri;->onMessageChannelReady(Landroid/view/View;Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1858
    iget-object p2, p0, Lo/prepareFromUri;->onRelationshipValidationResult:Landroid/view/View;

    invoke-direct {p0, p2}, Lo/prepareFromUri;->onPostMessage(Landroid/view/View;)V

    :cond_0
    const/4 p2, 0x0

    .line 1860
    iput-object p2, p0, Lo/prepareFromUri;->onRelationshipValidationResult:Landroid/view/View;

    .line 1862
    iget-boolean p4, p0, Lo/prepareFromUri;->asInterface:Z

    if-nez p4, :cond_6

    .line 1864
    iget-object p4, p0, Lo/prepareFromUri;->ICustomTabsService$Stub$Proxy:Lo/prepareFromUri$onPostMessage;

    if-eqz p4, :cond_1

    .line 1865
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p4

    iget-object v0, p0, Lo/prepareFromUri;->ICustomTabsService$Stub$Proxy:Lo/prepareFromUri$onPostMessage;

    iget v0, v0, Lo/prepareFromUri$onPostMessage;->extraCallback:I

    invoke-virtual {p0, p4, v0}, Landroid/view/View;->scrollTo(II)V

    .line 1866
    iput-object p2, p0, Lo/prepareFromUri;->ICustomTabsService$Stub$Proxy:Lo/prepareFromUri$onPostMessage;

    .line 1872
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_2

    .line 1873
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 1874
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/widget/FrameLayout$LayoutParams;

    .line 1875
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    iget v0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p2, v0

    iget p4, p4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p2, p4

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    sub-int/2addr p5, p3

    .line 1877
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    .line 1878
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p3

    if-ge p5, p2, :cond_5

    if-gez p3, :cond_3

    goto :goto_1

    :cond_3
    add-int p1, p5, p3

    if-le p1, p2, :cond_4

    sub-int p1, p2, p5

    goto :goto_1

    :cond_4
    move p1, p3

    :cond_5
    :goto_1
    if-eq p1, p3, :cond_6

    .line 1881
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->scrollTo(II)V

    .line 1886
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    const/4 p1, 0x1

    .line 1887
    iput-boolean p1, p0, Lo/prepareFromUri;->asInterface:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 585
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 587
    iget-boolean v0, p0, Lo/prepareFromUri;->ICustomTabsCallback$Stub$Proxy:Z

    if-nez v0, :cond_0

    return-void

    .line 591
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 596
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_2

    const/4 p2, 0x0

    .line 597
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 598
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 600
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 601
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 602
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 603
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    .line 609
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v1, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v3

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 608
    invoke-static {p1, v1, v0}, Lo/prepareFromUri;->getChildMeasureSpec(III)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    .line 612
    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 613
    invoke-virtual {p2, p1, v0}, Landroid/view/View;->measure(II)V

    :cond_2
    return-void
.end method

.method public onMessageChannelReady(IIIZ)V
    .locals 8

    .line 1439
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 1443
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lo/prepareFromUri;->onPostMessage:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    const/4 p3, 0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    const/4 p1, 0x0

    .line 1445
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1446
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1447
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, v2

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    .line 1448
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1449
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    sub-int/2addr v0, v1

    .line 1450
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr p2, v4

    .line 1451
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int v6, p1, v4

    .line 1452
    iget-object v2, p0, Lo/prepareFromUri;->onMessageChannelReady:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    const/4 v5, 0x0

    const/16 v7, 0xfa

    invoke-virtual/range {v2 .. v7}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    if-eqz p4, :cond_1

    .line 24231
    iget-object p1, p0, Lo/prepareFromUri;->notify:Lo/onCaptioningEnabledChanged;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, p3}, Lo/onCaptioningEnabledChanged;->extraCallback(II)Z

    goto :goto_0

    .line 23666
    :cond_1
    invoke-direct {p0, p3}, Lo/prepareFromUri;->onMessageChannelReady(I)V

    .line 23668
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p1

    iput p1, p0, Lo/prepareFromUri;->IPostMessageService:I

    .line 23669
    invoke-static {p0}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;)V

    goto :goto_1

    .line 1455
    :cond_2
    iget-object p4, p0, Lo/prepareFromUri;->onMessageChannelReady:Landroid/widget/OverScroller;

    invoke-virtual {p4}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p4

    if-nez p4, :cond_3

    .line 24673
    iget-object p4, p0, Lo/prepareFromUri;->onMessageChannelReady:Landroid/widget/OverScroller;

    invoke-virtual {p4}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 24674
    invoke-direct {p0, p3}, Lo/prepareFromUri;->onMessageChannelReady(I)V

    .line 1458
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollBy(II)V

    .line 1460
    :goto_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lo/prepareFromUri;->onPostMessage:J

    return-void
.end method

.method final onNavigationEvent()I
    .locals 4

    .line 1119
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 1120
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1121
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1122
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, v3

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    .line 1123
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v0, v2

    .line 1124
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    return v1
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    if-nez p4, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 394
    invoke-virtual {p0, p1, p3, p2}, Lo/prepareFromUri;->dispatchNestedFling(FFZ)Z

    float-to-int p1, p3

    .line 395
    invoke-direct {p0, p1}, Lo/prepareFromUri;->onPostMessage(I)V

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    .line 403
    invoke-virtual {p0, p2, p3}, Lo/prepareFromUri;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 387
    invoke-virtual/range {v0 .. v5}, Lo/prepareFromUri;->onNestedPreScroll(Landroid/view/View;II[II)V

    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 6

    .line 9254
    iget-object v0, p0, Lo/prepareFromUri;->notify:Lo/onCaptioningEnabledChanged;

    const/4 v4, 0x0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lo/onCaptioningEnabledChanged;->ICustomTabsCallback(II[I[II)Z

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 382
    invoke-direct {p0, p5, p1, p2}, Lo/prepareFromUri;->onNavigationEvent(II[I)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .locals 0

    const/4 p1, 0x0

    .line 351
    invoke-direct {p0, p5, p6, p1}, Lo/prepareFromUri;->onNavigationEvent(II[I)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I)V
    .locals 0

    .line 311
    invoke-direct {p0, p5, p6, p7}, Lo/prepareFromUri;->onNavigationEvent(II[I)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    .line 371
    invoke-virtual {p0, p1, p2, p3, v0}, Lo/prepareFromUri;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    .line 338
    iget-object p1, p0, Lo/prepareFromUri;->validateRelationship:Lo/sendCommand;

    const/4 p2, 0x1

    if-ne p4, p2, :cond_0

    .line 8077
    iput p3, p1, Lo/sendCommand;->onNavigationEvent:I

    goto :goto_0

    .line 8079
    :cond_0
    iput p3, p1, Lo/sendCommand;->onMessageChannelReady:I

    .line 8231
    :goto_0
    iget-object p1, p0, Lo/prepareFromUri;->notify:Lo/onCaptioningEnabledChanged;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, p4}, Lo/onCaptioningEnabledChanged;->extraCallback(II)Z

    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 0

    .line 1056
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/16 p1, 0x82

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    const/16 p1, 0x21

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 1821
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    .line 1822
    :cond_2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v1

    :goto_1
    const/4 v2, 0x0

    if-nez v1, :cond_3

    return v2

    .line 26379
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lo/prepareFromUri;->ICustomTabsCallback(Landroid/view/View;II)Z

    move-result v3

    xor-int/2addr v0, v3

    if-eqz v0, :cond_4

    return v2

    .line 1833
    :cond_4
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 2079
    instance-of v0, p1, Lo/prepareFromUri$onPostMessage;

    if-nez v0, :cond_0

    .line 2080
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 2084
    :cond_0
    check-cast p1, Lo/prepareFromUri$onPostMessage;

    .line 2085
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2086
    iput-object p1, p0, Lo/prepareFromUri;->ICustomTabsService$Stub$Proxy:Lo/prepareFromUri$onPostMessage;

    .line 2087
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 2092
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2093
    new-instance v1, Lo/prepareFromUri$onPostMessage;

    invoke-direct {v1, v0}, Lo/prepareFromUri$onPostMessage;-><init>(Landroid/os/Parcelable;)V

    .line 2094
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    iput v0, v1, Lo/prepareFromUri$onPostMessage;->extraCallback:I

    return-object v1
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 576
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onScrollChanged(IIII)V

    .line 578
    iget-object p1, p0, Lo/prepareFromUri;->cancel:Lo/prepareFromUri$extraCallback;

    if-eqz p1, :cond_0

    .line 579
    invoke-interface {p1, p0}, Lo/prepareFromUri$extraCallback;->ICustomTabsCallback(Lo/prepareFromUri;)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1899
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1901
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1909
    invoke-direct {p0, p1, p2, p4}, Lo/prepareFromUri;->ICustomTabsCallback(Landroid/view/View;II)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 1910
    iget-object p3, p0, Lo/prepareFromUri;->onNavigationEvent:Landroid/graphics/Rect;

    invoke-virtual {p1, p3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1911
    iget-object p3, p0, Lo/prepareFromUri;->onNavigationEvent:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1912
    iget-object p1, p0, Lo/prepareFromUri;->onNavigationEvent:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lo/prepareFromUri;->onMessageChannelReady(Landroid/graphics/Rect;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 28401
    iget-boolean p3, p0, Lo/prepareFromUri;->ICustomTabsService:Z

    if-eqz p3, :cond_1

    const/16 p3, 0xfa

    .line 28416
    invoke-virtual {p0, p2, p1, p3, p2}, Lo/prepareFromUri;->onMessageChannelReady(IIIZ)V

    return-void

    .line 28404
    :cond_1
    invoke-virtual {p0, p2, p1}, Landroid/view/View;->scrollBy(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 365
    invoke-virtual {p0, p1, p2, p3, v0}, Lo/prepareFromUri;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 376
    invoke-virtual {p0, p1, v0}, Lo/prepareFromUri;->onStopNestedScroll(Landroid/view/View;I)V

    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 2

    .line 344
    iget-object p1, p0, Lo/prepareFromUri;->validateRelationship:Lo/sendCommand;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 9115
    iput v0, p1, Lo/sendCommand;->onNavigationEvent:I

    goto :goto_0

    .line 9117
    :cond_0
    iput v0, p1, Lo/sendCommand;->onMessageChannelReady:I

    .line 345
    :goto_0
    invoke-direct {p0, p2}, Lo/prepareFromUri;->onMessageChannelReady(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 14695
    iget-object v0, v6, Lo/prepareFromUri;->newSession:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 14696
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Lo/prepareFromUri;->newSession:Landroid/view/VelocityTracker;

    .line 830
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 833
    iput v1, v6, Lo/prepareFromUri;->updateVisuals:I

    .line 836
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    .line 837
    iget v2, v6, Lo/prepareFromUri;->updateVisuals:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v8, v3, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 v2, 0x2

    const/4 v9, 0x1

    if-eqz v0, :cond_16

    const/4 v4, -0x1

    if-eq v0, v9, :cond_13

    if-eq v0, v2, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    goto/16 :goto_6

    .line 980
    :cond_2
    invoke-direct/range {p0 .. p1}, Lo/prepareFromUri;->ICustomTabsCallback(Landroid/view/MotionEvent;)V

    .line 981
    iget v0, v6, Lo/prepareFromUri;->extraCommand:I

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v6, Lo/prepareFromUri;->asBinder:I

    goto/16 :goto_6

    .line 974
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 975
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v6, Lo/prepareFromUri;->asBinder:I

    .line 976
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Lo/prepareFromUri;->extraCommand:I

    goto/16 :goto_6

    .line 964
    :cond_4
    iget-boolean v0, v6, Lo/prepareFromUri;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 965
    iget-object v10, v6, Lo/prepareFromUri;->onMessageChannelReady:Landroid/widget/OverScroller;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 966
    invoke-virtual/range {p0 .. p0}, Lo/prepareFromUri;->onNavigationEvent()I

    move-result v16

    .line 965
    invoke-virtual/range {v10 .. v16}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 967
    invoke-static/range {p0 .. p0}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;)V

    .line 970
    :cond_5
    iput v4, v6, Lo/prepareFromUri;->extraCommand:I

    .line 971
    invoke-direct/range {p0 .. p0}, Lo/prepareFromUri;->onPostMessage()V

    goto/16 :goto_6

    .line 866
    :cond_6
    iget v0, v6, Lo/prepareFromUri;->extraCommand:I

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    if-ne v10, v4, :cond_7

    .line 868
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid pointerId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v6, Lo/prepareFromUri;->extraCommand:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " in onTouchEvent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NestedScrollView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 872
    :cond_7
    invoke-virtual {v7, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    .line 873
    iget v2, v6, Lo/prepareFromUri;->asBinder:I

    sub-int/2addr v2, v0

    .line 874
    iget-boolean v3, v6, Lo/prepareFromUri;->ICustomTabsCallback$Stub:Z

    if-nez v3, :cond_a

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, v6, Lo/prepareFromUri;->getInterfaceDescriptor:I

    if-le v3, v4, :cond_a

    .line 875
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 877
    invoke-interface {v3, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 879
    :cond_8
    iput-boolean v9, v6, Lo/prepareFromUri;->ICustomTabsCallback$Stub:Z

    if-lez v2, :cond_9

    .line 881
    iget v3, v6, Lo/prepareFromUri;->getInterfaceDescriptor:I

    sub-int/2addr v2, v3

    goto :goto_0

    .line 883
    :cond_9
    iget v3, v6, Lo/prepareFromUri;->getInterfaceDescriptor:I

    add-int/2addr v2, v3

    .line 886
    :cond_a
    :goto_0
    iget-boolean v3, v6, Lo/prepareFromUri;->ICustomTabsCallback$Stub:Z

    if-eqz v3, :cond_1a

    .line 888
    iget-object v14, v6, Lo/prepareFromUri;->requestPostMessageChannel:[I

    iget-object v15, v6, Lo/prepareFromUri;->mayLaunchUrl:[I

    .line 16254
    iget-object v11, v6, Lo/prepareFromUri;->notify:Lo/onCaptioningEnabledChanged;

    const/4 v12, 0x0

    const/16 v16, 0x0

    move v13, v2

    invoke-virtual/range {v11 .. v16}, Lo/onCaptioningEnabledChanged;->ICustomTabsCallback(II[I[II)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 890
    iget-object v3, v6, Lo/prepareFromUri;->requestPostMessageChannel:[I

    aget v3, v3, v9

    sub-int/2addr v2, v3

    .line 891
    iget v3, v6, Lo/prepareFromUri;->updateVisuals:I

    iget-object v4, v6, Lo/prepareFromUri;->mayLaunchUrl:[I

    aget v4, v4, v9

    add-int/2addr v3, v4

    iput v3, v6, Lo/prepareFromUri;->updateVisuals:I

    :cond_b
    move v11, v2

    .line 895
    iget-object v2, v6, Lo/prepareFromUri;->mayLaunchUrl:[I

    aget v2, v2, v9

    sub-int/2addr v0, v2

    iput v0, v6, Lo/prepareFromUri;->asBinder:I

    .line 897
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v12

    .line 898
    invoke-virtual/range {p0 .. p0}, Lo/prepareFromUri;->onNavigationEvent()I

    move-result v13

    .line 899
    invoke-virtual/range {p0 .. p0}, Lo/prepareFromUri;->getOverScrollMode()I

    move-result v0

    if-eqz v0, :cond_d

    if-ne v0, v9, :cond_c

    if-lez v13, :cond_c

    goto :goto_1

    :cond_c
    const/4 v14, 0x0

    goto :goto_2

    :cond_d
    :goto_1
    const/4 v14, 0x1

    .line 905
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    invoke-direct {v6, v11, v1, v0, v13}, Lo/prepareFromUri;->onPostMessage(IIII)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 17241
    iget-object v0, v6, Lo/prepareFromUri;->notify:Lo/onCaptioningEnabledChanged;

    .line 18114
    invoke-virtual {v0, v1}, Lo/onCaptioningEnabledChanged;->onNavigationEvent(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_3

    :cond_e
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_f

    .line 908
    iget-object v0, v6, Lo/prepareFromUri;->newSession:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 911
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    sub-int v2, v0, v12

    sub-int v3, v11, v2

    .line 914
    iget-object v5, v6, Lo/prepareFromUri;->requestPostMessageChannel:[I

    aput v1, v5, v9

    .line 916
    iget-object v4, v6, Lo/prepareFromUri;->mayLaunchUrl:[I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move v1, v2

    move v2, v3

    move-object v3, v4

    move v4, v15

    invoke-direct/range {v0 .. v5}, Lo/prepareFromUri;->onNavigationEvent(II[II[I)V

    .line 919
    iget v0, v6, Lo/prepareFromUri;->asBinder:I

    iget-object v1, v6, Lo/prepareFromUri;->mayLaunchUrl:[I

    aget v2, v1, v9

    sub-int/2addr v0, v2

    iput v0, v6, Lo/prepareFromUri;->asBinder:I

    .line 920
    iget v0, v6, Lo/prepareFromUri;->updateVisuals:I

    aget v1, v1, v9

    add-int/2addr v0, v1

    iput v0, v6, Lo/prepareFromUri;->updateVisuals:I

    if-eqz v14, :cond_1a

    .line 923
    iget-object v0, v6, Lo/prepareFromUri;->requestPostMessageChannel:[I

    aget v0, v0, v9

    sub-int/2addr v11, v0

    .line 924
    invoke-direct/range {p0 .. p0}, Lo/prepareFromUri;->onMessageChannelReady()V

    add-int/2addr v12, v11

    if-gez v12, :cond_10

    .line 927
    iget-object v0, v6, Lo/prepareFromUri;->ICustomTabsCallback:Landroid/widget/EdgeEffect;

    int-to-float v1, v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 928
    invoke-virtual {v7, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 927
    invoke-static {v0, v1, v2}, Lo/prepareFromMediaId;->onPostMessage(Landroid/widget/EdgeEffect;FF)V

    .line 929
    iget-object v0, v6, Lo/prepareFromUri;->extraCallback:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_11

    .line 930
    iget-object v0, v6, Lo/prepareFromUri;->extraCallback:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_4

    :cond_10
    if-le v12, v13, :cond_11

    .line 933
    iget-object v0, v6, Lo/prepareFromUri;->extraCallback:Landroid/widget/EdgeEffect;

    int-to-float v1, v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    .line 934
    invoke-virtual {v7, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 935
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 933
    invoke-static {v0, v1, v2}, Lo/prepareFromMediaId;->onPostMessage(Landroid/widget/EdgeEffect;FF)V

    .line 936
    iget-object v0, v6, Lo/prepareFromUri;->ICustomTabsCallback:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_11

    .line 937
    iget-object v0, v6, Lo/prepareFromUri;->ICustomTabsCallback:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 940
    :cond_11
    :goto_4
    iget-object v0, v6, Lo/prepareFromUri;->ICustomTabsCallback:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_1a

    .line 941
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, v6, Lo/prepareFromUri;->extraCallback:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 942
    :cond_12
    invoke-static/range {p0 .. p0}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;)V

    goto/16 :goto_6

    .line 948
    :cond_13
    iget-object v0, v6, Lo/prepareFromUri;->newSession:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    .line 949
    iget v2, v6, Lo/prepareFromUri;->postMessage:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 950
    iget v1, v6, Lo/prepareFromUri;->extraCommand:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    float-to-int v0, v0

    .line 951
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, v6, Lo/prepareFromUri;->warmup:I

    if-lt v1, v2, :cond_14

    neg-int v0, v0

    int-to-float v1, v0

    .line 952
    invoke-virtual {v6, v3, v1}, Lo/prepareFromUri;->dispatchNestedPreFling(FF)Z

    move-result v2

    if-nez v2, :cond_15

    .line 953
    invoke-virtual {v6, v3, v1, v9}, Lo/prepareFromUri;->dispatchNestedFling(FFZ)Z

    .line 954
    invoke-direct {v6, v0}, Lo/prepareFromUri;->onPostMessage(I)V

    goto :goto_5

    .line 956
    :cond_14
    iget-object v10, v6, Lo/prepareFromUri;->onMessageChannelReady:Landroid/widget/OverScroller;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 957
    invoke-virtual/range {p0 .. p0}, Lo/prepareFromUri;->onNavigationEvent()I

    move-result v16

    .line 956
    invoke-virtual/range {v10 .. v16}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 958
    invoke-static/range {p0 .. p0}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;)V

    .line 960
    :cond_15
    :goto_5
    iput v4, v6, Lo/prepareFromUri;->extraCommand:I

    .line 961
    invoke-direct/range {p0 .. p0}, Lo/prepareFromUri;->onPostMessage()V

    goto :goto_6

    .line 841
    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_17

    return v1

    .line 844
    :cond_17
    iget-object v0, v6, Lo/prepareFromUri;->onMessageChannelReady:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    xor-int/2addr v0, v9

    iput-boolean v0, v6, Lo/prepareFromUri;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_18

    .line 845
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 847
    invoke-interface {v0, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 855
    :cond_18
    iget-object v0, v6, Lo/prepareFromUri;->onMessageChannelReady:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_19

    .line 15673
    iget-object v0, v6, Lo/prepareFromUri;->onMessageChannelReady:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 15674
    invoke-direct {v6, v9}, Lo/prepareFromUri;->onMessageChannelReady(I)V

    .line 860
    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, v6, Lo/prepareFromUri;->asBinder:I

    .line 861
    invoke-virtual {v7, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Lo/prepareFromUri;->extraCommand:I

    .line 16231
    iget-object v0, v6, Lo/prepareFromUri;->notify:Lo/onCaptioningEnabledChanged;

    invoke-virtual {v0, v2, v1}, Lo/onCaptioningEnabledChanged;->extraCallback(II)Z

    .line 985
    :cond_1a
    :goto_6
    iget-object v0, v6, Lo/prepareFromUri;->newSession:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1b

    .line 986
    invoke-virtual {v0, v8}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 988
    :cond_1b
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    return v9
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 1791
    iget-boolean v0, p0, Lo/prepareFromUri;->onTransact:Z

    if-nez v0, :cond_0

    .line 1792
    invoke-direct {p0, p2}, Lo/prepareFromUri;->onPostMessage(Landroid/view/View;)V

    goto :goto_0

    .line 1795
    :cond_0
    iput-object p2, p0, Lo/prepareFromUri;->onRelationshipValidationResult:Landroid/view/View;

    .line 1797
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2

    .line 1840
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1841
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    sub-int/2addr v1, p1

    .line 1840
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 26704
    invoke-direct {p0, p2}, Lo/prepareFromUri;->onMessageChannelReady(Landroid/graphics/Rect;)I

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p3, :cond_1

    .line 26708
    invoke-virtual {p0, p2, p1}, Landroid/view/View;->scrollBy(II)V

    goto :goto_1

    :cond_1
    const/16 p3, 0xfa

    .line 27416
    invoke-virtual {p0, p2, p1, p3, p2}, Lo/prepareFromUri;->onMessageChannelReady(IIIZ)V

    :cond_2
    :goto_1
    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 10701
    iget-object v0, p0, Lo/prepareFromUri;->newSession:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 10702
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 10703
    iput-object v0, p0, Lo/prepareFromUri;->newSession:Landroid/view/VelocityTracker;

    .line 712
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    const/4 v0, 0x1

    .line 1848
    iput-boolean v0, p0, Lo/prepareFromUri;->onTransact:Z

    .line 1849
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public scrollTo(II)V
    .locals 7

    .line 1968
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_7

    const/4 v0, 0x0

    .line 1969
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1970
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1971
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1972
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 1973
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    .line 1974
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v6

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    if-ge v3, v4, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    add-int v2, v3, p1

    if-le v2, v4, :cond_2

    sub-int p1, v4, v3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :cond_2
    :goto_1
    if-ge v5, v1, :cond_4

    if-gez p2, :cond_3

    goto :goto_2

    :cond_3
    add-int v0, v5, p2

    if-le v0, v1, :cond_5

    sub-int p2, v1, v5

    goto :goto_3

    :cond_4
    :goto_2
    const/4 p2, 0x0

    .line 1977
    :cond_5
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    if-ne p1, v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-eq p2, v0, :cond_7

    .line 1978
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    :cond_7
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1

    .line 553
    iget-boolean v0, p0, Lo/prepareFromUri;->ICustomTabsCallback$Stub$Proxy:Z

    if-eq p1, v0, :cond_0

    .line 554
    iput-boolean p1, p0, Lo/prepareFromUri;->ICustomTabsCallback$Stub$Proxy:Z

    .line 555
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 2

    .line 261
    iget-object v0, p0, Lo/prepareFromUri;->notify:Lo/onCaptioningEnabledChanged;

    .line 5070
    iget-boolean v1, v0, Lo/onCaptioningEnabledChanged;->ICustomTabsCallback:Z

    if-eqz v1, :cond_0

    .line 5071
    iget-object v1, v0, Lo/onCaptioningEnabledChanged;->onMessageChannelReady:Landroid/view/View;

    invoke-static {v1}, Lo/unregisterCallbackListener;->INotificationSideChannel(Landroid/view/View;)V

    .line 5073
    :cond_0
    iput-boolean p1, v0, Lo/onCaptioningEnabledChanged;->ICustomTabsCallback:Z

    return-void
.end method

.method public setOnScrollChangeListener(Lo/prepareFromUri$extraCallback;)V
    .locals 0

    .line 516
    iput-object p1, p0, Lo/prepareFromUri;->cancel:Lo/prepareFromUri$extraCallback;

    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0

    .line 571
    iput-boolean p1, p0, Lo/prepareFromUri;->ICustomTabsService:Z

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public startNestedScroll(I)Z
    .locals 2

    .line 5231
    iget-object v0, p0, Lo/prepareFromUri;->notify:Lo/onCaptioningEnabledChanged;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lo/onCaptioningEnabledChanged;->extraCallback(II)Z

    move-result p1

    return p1
.end method

.method public stopNestedScroll()V
    .locals 1

    const/4 v0, 0x0

    .line 276
    invoke-direct {p0, v0}, Lo/prepareFromUri;->onMessageChannelReady(I)V

    return-void
.end method
