.class public final Lo/onSetRepeatMode;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source ""

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onSetRepeatMode$extraCallback;,
        Lo/onSetRepeatMode$onPostMessage;
    }
.end annotation


# static fields
.field private static final requestPostMessageChannel:[I

.field private static final updateVisuals:[I


# instance fields
.field final ICustomTabsCallback:I

.field ICustomTabsCallback$Stub:I

.field final ICustomTabsCallback$Stub$Proxy:Landroid/animation/ValueAnimator;

.field ICustomTabsService:I

.field private final ICustomTabsService$Stub:Landroid/graphics/drawable/StateListDrawable;

.field private final ICustomTabsService$Stub$Proxy:Landroid/graphics/drawable/Drawable;

.field private final INotificationSideChannel:Ljava/lang/Runnable;

.field private final INotificationSideChannel$Default:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private final IPostMessageService:I

.field private final IPostMessageService$Stub:I

.field private IPostMessageService$Stub$Proxy:I

.field asBinder:Landroidx/recyclerview/widget/RecyclerView;

.field asInterface:I

.field private cancel:F

.field private final cancelAll:[I

.field final extraCallback:Landroid/graphics/drawable/StateListDrawable;

.field private final extraCommand:I

.field getInterfaceDescriptor:Z

.field private final mayLaunchUrl:I

.field newSession:Z

.field private final notify:[I

.field onMessageChannelReady:I

.field final onNavigationEvent:Landroid/graphics/drawable/Drawable;

.field onPostMessage:I

.field onRelationshipValidationResult:I

.field onTransact:I

.field private final postMessage:I

.field private validateRelationship:F

.field warmup:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a7

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 74
    sput-object v0, Lo/onSetRepeatMode;->updateVisuals:[I

    new-array v0, v2, [I

    .line 75
    sput-object v0, Lo/onSetRepeatMode;->requestPostMessageChannel:[I

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V
    .locals 3

    .line 141
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x0

    .line 104
    iput v0, p0, Lo/onSetRepeatMode;->onRelationshipValidationResult:I

    .line 105
    iput v0, p0, Lo/onSetRepeatMode;->asInterface:I

    .line 112
    iput-boolean v0, p0, Lo/onSetRepeatMode;->newSession:Z

    .line 113
    iput-boolean v0, p0, Lo/onSetRepeatMode;->getInterfaceDescriptor:Z

    .line 114
    iput v0, p0, Lo/onSetRepeatMode;->warmup:I

    .line 115
    iput v0, p0, Lo/onSetRepeatMode;->IPostMessageService$Stub$Proxy:I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 117
    iput-object v2, p0, Lo/onSetRepeatMode;->notify:[I

    new-array v2, v1, [I

    .line 118
    iput-object v2, p0, Lo/onSetRepeatMode;->cancelAll:[I

    new-array v1, v1, [F

    .line 119
    fill-array-data v1, :array_0

    .line 120
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lo/onSetRepeatMode;->ICustomTabsCallback$Stub$Proxy:Landroid/animation/ValueAnimator;

    .line 121
    iput v0, p0, Lo/onSetRepeatMode;->ICustomTabsService:I

    .line 123
    new-instance v0, Lo/onSetRepeatMode$4;

    invoke-direct {v0, p0}, Lo/onSetRepeatMode$4;-><init>(Lo/onSetRepeatMode;)V

    iput-object v0, p0, Lo/onSetRepeatMode;->INotificationSideChannel:Ljava/lang/Runnable;

    .line 129
    new-instance v0, Lo/onSetRepeatMode$1;

    invoke-direct {v0, p0}, Lo/onSetRepeatMode$1;-><init>(Lo/onSetRepeatMode;)V

    iput-object v0, p0, Lo/onSetRepeatMode;->INotificationSideChannel$Default:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 142
    iput-object p2, p0, Lo/onSetRepeatMode;->extraCallback:Landroid/graphics/drawable/StateListDrawable;

    .line 143
    iput-object p3, p0, Lo/onSetRepeatMode;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    .line 144
    iput-object p4, p0, Lo/onSetRepeatMode;->ICustomTabsService$Stub:Landroid/graphics/drawable/StateListDrawable;

    .line 145
    iput-object p5, p0, Lo/onSetRepeatMode;->ICustomTabsService$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    .line 146
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    invoke-static {p6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lo/onSetRepeatMode;->postMessage:I

    .line 147
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    invoke-static {p6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lo/onSetRepeatMode;->mayLaunchUrl:I

    .line 149
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    invoke-static {p6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lo/onSetRepeatMode;->IPostMessageService$Stub:I

    .line 151
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    invoke-static {p6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lo/onSetRepeatMode;->IPostMessageService:I

    .line 152
    iput p7, p0, Lo/onSetRepeatMode;->ICustomTabsCallback:I

    .line 153
    iput p8, p0, Lo/onSetRepeatMode;->extraCommand:I

    .line 154
    iget-object p2, p0, Lo/onSetRepeatMode;->extraCallback:Landroid/graphics/drawable/StateListDrawable;

    const/16 p3, 0xff

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 155
    iget-object p2, p0, Lo/onSetRepeatMode;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 157
    iget-object p2, p0, Lo/onSetRepeatMode;->ICustomTabsCallback$Stub$Proxy:Landroid/animation/ValueAnimator;

    new-instance p3, Lo/onSetRepeatMode$onPostMessage;

    invoke-direct {p3, p0}, Lo/onSetRepeatMode$onPostMessage;-><init>(Lo/onSetRepeatMode;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 158
    iget-object p2, p0, Lo/onSetRepeatMode;->ICustomTabsCallback$Stub$Proxy:Landroid/animation/ValueAnimator;

    new-instance p3, Lo/onSetRepeatMode$extraCallback;

    invoke-direct {p3, p0}, Lo/onSetRepeatMode$extraCallback;-><init>(Lo/onSetRepeatMode;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1164
    iget-object p2, p0, Lo/onSetRepeatMode;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    if-eq p2, p1, :cond_1

    if-eqz p2, :cond_0

    .line 1183
    invoke-virtual {p2, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 1184
    iget-object p2, p0, Lo/onSetRepeatMode;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 1185
    iget-object p2, p0, Lo/onSetRepeatMode;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lo/onSetRepeatMode;->INotificationSideChannel$Default:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 1258
    iget-object p2, p0, Lo/onSetRepeatMode;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lo/onSetRepeatMode;->INotificationSideChannel:Ljava/lang/Runnable;

    invoke-virtual {p2, p3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1170
    :cond_0
    iput-object p1, p0, Lo/onSetRepeatMode;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_1

    .line 2177
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 2178
    iget-object p1, p0, Lo/onSetRepeatMode;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 2179
    iget-object p1, p0, Lo/onSetRepeatMode;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lo/onSetRepeatMode;->INotificationSideChannel$Default:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private ICustomTabsCallback(FF)Z
    .locals 2

    .line 504
    iget v0, p0, Lo/onSetRepeatMode;->asInterface:I

    iget v1, p0, Lo/onSetRepeatMode;->IPostMessageService$Stub:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_0

    iget p2, p0, Lo/onSetRepeatMode;->ICustomTabsCallback$Stub:I

    iget v0, p0, Lo/onSetRepeatMode;->onTransact:I

    div-int/lit8 v1, v0, 0x2

    sub-int v1, p2, v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static extraCallback(FF[IIII)I
    .locals 2

    const/4 v0, 0x1

    .line 479
    aget v0, p2, v0

    const/4 v1, 0x0

    aget p2, p2, v1

    sub-int/2addr v0, p2

    if-nez v0, :cond_0

    return v1

    :cond_0
    sub-float/2addr p1, p0

    int-to-float p0, v0

    div-float/2addr p1, p0

    sub-int/2addr p3, p5

    int-to-float p0, p3

    mul-float p1, p1, p0

    float-to-int p0, p1

    add-int/2addr p4, p0

    if-ge p4, p3, :cond_1

    if-ltz p4, :cond_1

    return p0

    :cond_1
    return v1
.end method

.method private extraCallback()V
    .locals 5

    .line 228
    iget v0, p0, Lo/onSetRepeatMode;->ICustomTabsService:I

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    iget-object v0, p0, Lo/onSetRepeatMode;->ICustomTabsCallback$Stub$Proxy:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x1

    .line 233
    iput v0, p0, Lo/onSetRepeatMode;->ICustomTabsService:I

    .line 234
    iget-object v1, p0, Lo/onSetRepeatMode;->ICustomTabsCallback$Stub$Proxy:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    aput v4, v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 235
    iget-object v0, p0, Lo/onSetRepeatMode;->ICustomTabsCallback$Stub$Proxy:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 236
    iget-object v0, p0, Lo/onSetRepeatMode;->ICustomTabsCallback$Stub$Proxy:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 237
    iget-object v0, p0, Lo/onSetRepeatMode;->ICustomTabsCallback$Stub$Proxy:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void
.end method

.method private onPostMessage(FF)Z
    .locals 4

    .line 8216
    iget-object v0, p0, Lo/onSetRepeatMode;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 496
    iget v0, p0, Lo/onSetRepeatMode;->postMessage:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_2

    goto :goto_1

    :cond_1
    iget v0, p0, Lo/onSetRepeatMode;->onRelationshipValidationResult:I

    iget v3, p0, Lo/onSetRepeatMode;->postMessage:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_2

    :goto_1
    iget p1, p0, Lo/onSetRepeatMode;->onPostMessage:I

    iget v0, p0, Lo/onSetRepeatMode;->onMessageChannelReady:I

    div-int/lit8 v3, v0, 0x2

    sub-int v3, p1, v3

    int-to-float v3, v3

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_2

    return v2

    :cond_2
    return v1
.end method


# virtual methods
.method public final onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 5

    .line 268
    iget p2, p0, Lo/onSetRepeatMode;->onRelationshipValidationResult:I

    iget-object p3, p0, Lo/onSetRepeatMode;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    const/4 v0, 0x0

    if-ne p2, p3, :cond_5

    iget p2, p0, Lo/onSetRepeatMode;->asInterface:I

    iget-object p3, p0, Lo/onSetRepeatMode;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    .line 269
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    if-eq p2, p3, :cond_0

    goto/16 :goto_2

    .line 280
    :cond_0
    iget p2, p0, Lo/onSetRepeatMode;->ICustomTabsService:I

    if-eqz p2, :cond_4

    .line 281
    iget-boolean p2, p0, Lo/onSetRepeatMode;->newSession:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_3

    .line 5291
    iget p2, p0, Lo/onSetRepeatMode;->onRelationshipValidationResult:I

    .line 5293
    iget v1, p0, Lo/onSetRepeatMode;->postMessage:I

    sub-int/2addr p2, v1

    .line 5294
    iget v2, p0, Lo/onSetRepeatMode;->onPostMessage:I

    iget v3, p0, Lo/onSetRepeatMode;->onMessageChannelReady:I

    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    .line 5295
    iget-object v4, p0, Lo/onSetRepeatMode;->extraCallback:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v4, v0, v0, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5296
    iget-object v1, p0, Lo/onSetRepeatMode;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lo/onSetRepeatMode;->mayLaunchUrl:I

    iget v4, p0, Lo/onSetRepeatMode;->asInterface:I

    .line 5297
    invoke-virtual {v1, v0, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6216
    iget-object v1, p0, Lo/onSetRepeatMode;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1}, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub(Landroid/view/View;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    .line 5300
    iget-object p2, p0, Lo/onSetRepeatMode;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 5301
    iget p2, p0, Lo/onSetRepeatMode;->postMessage:I

    int-to-float p2, p2

    int-to-float v1, v2

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 p2, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 5302
    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 5303
    iget-object p2, p0, Lo/onSetRepeatMode;->extraCallback:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 5304
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 5305
    iget p2, p0, Lo/onSetRepeatMode;->postMessage:I

    neg-int p2, p2

    int-to-float p2, p2

    neg-int v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    :cond_2
    int-to-float v1, p2

    .line 5307
    invoke-virtual {p1, v1, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5308
    iget-object v1, p0, Lo/onSetRepeatMode;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v1, v2

    .line 5309
    invoke-virtual {p1, p3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5310
    iget-object v1, p0, Lo/onSetRepeatMode;->extraCallback:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int p2, p2

    int-to-float p2, p2

    neg-int v1, v2

    int-to-float v1, v1

    .line 5311
    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 284
    :cond_3
    :goto_1
    iget-boolean p2, p0, Lo/onSetRepeatMode;->getInterfaceDescriptor:Z

    if-eqz p2, :cond_4

    .line 6316
    iget p2, p0, Lo/onSetRepeatMode;->asInterface:I

    .line 6318
    iget v1, p0, Lo/onSetRepeatMode;->IPostMessageService$Stub:I

    sub-int/2addr p2, v1

    .line 6319
    iget v2, p0, Lo/onSetRepeatMode;->ICustomTabsCallback$Stub:I

    iget v3, p0, Lo/onSetRepeatMode;->onTransact:I

    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    .line 6320
    iget-object v4, p0, Lo/onSetRepeatMode;->ICustomTabsService$Stub:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v4, v0, v0, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6321
    iget-object v1, p0, Lo/onSetRepeatMode;->ICustomTabsService$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lo/onSetRepeatMode;->onRelationshipValidationResult:I

    iget v4, p0, Lo/onSetRepeatMode;->IPostMessageService:I

    .line 6322
    invoke-virtual {v1, v0, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    int-to-float v0, p2

    .line 6324
    invoke-virtual {p1, p3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6325
    iget-object v0, p0, Lo/onSetRepeatMode;->ICustomTabsService$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v0, v2

    .line 6326
    invoke-virtual {p1, v0, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6327
    iget-object p3, p0, Lo/onSetRepeatMode;->ICustomTabsService$Stub:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int p3, v2

    int-to-float p3, p3

    neg-int p2, p2

    int-to-float p2, p2

    .line 6328
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_4
    return-void

    .line 270
    :cond_5
    :goto_2
    iget-object p1, p0, Lo/onSetRepeatMode;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lo/onSetRepeatMode;->onRelationshipValidationResult:I

    .line 271
    iget-object p1, p0, Lo/onSetRepeatMode;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lo/onSetRepeatMode;->asInterface:I

    .line 276
    invoke-virtual {p0, v0}, Lo/onSetRepeatMode;->onMessageChannelReady(I)V

    return-void
.end method

.method public final onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 381
    iget p1, p0, Lo/onSetRepeatMode;->warmup:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    .line 382
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, p1, v3}, Lo/onSetRepeatMode;->onPostMessage(FF)Z

    move-result p1

    .line 383
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v3, v4}, Lo/onSetRepeatMode;->ICustomTabsCallback(FF)Z

    move-result v3

    .line 384
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_4

    if-nez p1, :cond_0

    if-eqz v3, :cond_4

    :cond_0
    if-eqz v3, :cond_1

    .line 387
    iput v2, p0, Lo/onSetRepeatMode;->IPostMessageService$Stub$Proxy:I

    .line 388
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lo/onSetRepeatMode;->cancel:F

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 390
    iput v1, p0, Lo/onSetRepeatMode;->IPostMessageService$Stub$Proxy:I

    .line 391
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lo/onSetRepeatMode;->validateRelationship:F

    .line 394
    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Lo/onSetRepeatMode;->onMessageChannelReady(I)V

    goto :goto_1

    :cond_3
    if-ne p1, v1, :cond_4

    :goto_1
    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method final onMessageChannelReady(I)V
    .locals 4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 195
    iget v1, p0, Lo/onSetRepeatMode;->warmup:I

    if-eq v1, v0, :cond_0

    .line 196
    iget-object v1, p0, Lo/onSetRepeatMode;->extraCallback:Landroid/graphics/drawable/StateListDrawable;

    sget-object v2, Lo/onSetRepeatMode;->updateVisuals:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2258
    iget-object v1, p0, Lo/onSetRepeatMode;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lo/onSetRepeatMode;->INotificationSideChannel:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    if-nez p1, :cond_1

    .line 3191
    iget-object v1, p0, Lo/onSetRepeatMode;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 203
    :cond_1
    invoke-direct {p0}, Lo/onSetRepeatMode;->extraCallback()V

    .line 206
    :goto_0
    iget v1, p0, Lo/onSetRepeatMode;->warmup:I

    if-ne v1, v0, :cond_2

    if-eq p1, v0, :cond_2

    .line 207
    iget-object v0, p0, Lo/onSetRepeatMode;->extraCallback:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Lo/onSetRepeatMode;->requestPostMessageChannel:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 4258
    iget-object v0, p0, Lo/onSetRepeatMode;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lo/onSetRepeatMode;->INotificationSideChannel:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3263
    iget-object v0, p0, Lo/onSetRepeatMode;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lo/onSetRepeatMode;->INotificationSideChannel:Ljava/lang/Runnable;

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 5258
    iget-object v0, p0, Lo/onSetRepeatMode;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lo/onSetRepeatMode;->INotificationSideChannel:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4263
    iget-object v0, p0, Lo/onSetRepeatMode;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lo/onSetRepeatMode;->INotificationSideChannel:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 212
    :cond_3
    :goto_1
    iput p1, p0, Lo/onSetRepeatMode;->warmup:I

    return-void
.end method

.method public final onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public final onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 10

    .line 409
    iget p1, p0, Lo/onSetRepeatMode;->warmup:I

    if-nez p1, :cond_0

    return-void

    .line 413
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p1, :cond_5

    .line 414
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, p1, v2}, Lo/onSetRepeatMode;->onPostMessage(FF)Z

    move-result p1

    .line 415
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lo/onSetRepeatMode;->ICustomTabsCallback(FF)Z

    move-result v2

    if-nez p1, :cond_1

    if-eqz v2, :cond_4

    :cond_1
    if-eqz v2, :cond_2

    .line 418
    iput v1, p0, Lo/onSetRepeatMode;->IPostMessageService$Stub$Proxy:I

    .line 419
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lo/onSetRepeatMode;->cancel:F

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 421
    iput v0, p0, Lo/onSetRepeatMode;->IPostMessageService$Stub$Proxy:I

    .line 422
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lo/onSetRepeatMode;->validateRelationship:F

    .line 424
    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Lo/onSetRepeatMode;->onMessageChannelReady(I)V

    :cond_4
    return-void

    .line 426
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_6

    iget p1, p0, Lo/onSetRepeatMode;->warmup:I

    if-ne p1, v0, :cond_6

    const/4 p1, 0x0

    .line 427
    iput p1, p0, Lo/onSetRepeatMode;->validateRelationship:F

    .line 428
    iput p1, p0, Lo/onSetRepeatMode;->cancel:F

    .line 429
    invoke-virtual {p0, v1}, Lo/onSetRepeatMode;->onMessageChannelReady(I)V

    .line 430
    iput v2, p0, Lo/onSetRepeatMode;->IPostMessageService$Stub$Proxy:I

    return-void

    .line 431
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_a

    iget p1, p0, Lo/onSetRepeatMode;->warmup:I

    if-ne p1, v0, :cond_a

    .line 432
    invoke-direct {p0}, Lo/onSetRepeatMode;->extraCallback()V

    .line 433
    iget p1, p0, Lo/onSetRepeatMode;->IPostMessageService$Stub$Proxy:I

    const/high16 v3, 0x40000000    # 2.0f

    if-ne p1, v1, :cond_8

    .line 434
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 6542
    iget-object v6, p0, Lo/onSetRepeatMode;->cancelAll:[I

    iget v4, p0, Lo/onSetRepeatMode;->extraCommand:I

    aput v4, v6, v2

    .line 6543
    iget v5, p0, Lo/onSetRepeatMode;->onRelationshipValidationResult:I

    sub-int/2addr v5, v4

    aput v5, v6, v1

    .line 6462
    aget v4, v6, v2

    int-to-float v4, v4

    aget v5, v6, v1

    int-to-float v5, v5

    invoke-static {v5, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 6463
    iget v4, p0, Lo/onSetRepeatMode;->ICustomTabsCallback$Stub:I

    int-to-float v4, v4

    sub-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v3

    if-ltz v4, :cond_8

    .line 6467
    iget v4, p0, Lo/onSetRepeatMode;->cancel:F

    iget-object v5, p0, Lo/onSetRepeatMode;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    .line 6468
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v7

    iget-object v5, p0, Lo/onSetRepeatMode;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    .line 6469
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v8

    iget v9, p0, Lo/onSetRepeatMode;->onRelationshipValidationResult:I

    move v5, p1

    .line 6467
    invoke-static/range {v4 .. v9}, Lo/onSetRepeatMode;->extraCallback(FF[IIII)I

    move-result v4

    if-eqz v4, :cond_7

    .line 6471
    iget-object v5, p0, Lo/onSetRepeatMode;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v4, v2}, Landroid/view/View;->scrollBy(II)V

    .line 6474
    :cond_7
    iput p1, p0, Lo/onSetRepeatMode;->cancel:F

    .line 436
    :cond_8
    iget p1, p0, Lo/onSetRepeatMode;->IPostMessageService$Stub$Proxy:I

    if-ne p1, v0, :cond_a

    .line 437
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 7533
    iget-object v6, p0, Lo/onSetRepeatMode;->notify:[I

    iget p2, p0, Lo/onSetRepeatMode;->extraCommand:I

    aput p2, v6, v2

    .line 7534
    iget v0, p0, Lo/onSetRepeatMode;->asInterface:I

    sub-int/2addr v0, p2

    aput v0, v6, v1

    .line 7447
    aget p2, v6, v2

    int-to-float p2, p2

    aget v0, v6, v1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 7448
    iget p2, p0, Lo/onSetRepeatMode;->onPostMessage:I

    int-to-float p2, p2

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpg-float p2, p2, v3

    if-ltz p2, :cond_a

    .line 7451
    iget v4, p0, Lo/onSetRepeatMode;->validateRelationship:F

    iget-object p2, p0, Lo/onSetRepeatMode;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    .line 7452
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v7

    iget-object p2, p0, Lo/onSetRepeatMode;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    .line 7453
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v8

    iget v9, p0, Lo/onSetRepeatMode;->asInterface:I

    move v5, p1

    .line 7451
    invoke-static/range {v4 .. v9}, Lo/onSetRepeatMode;->extraCallback(FF[IIII)I

    move-result p2

    if-eqz p2, :cond_9

    .line 7455
    iget-object v0, p0, Lo/onSetRepeatMode;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2, p2}, Landroid/view/View;->scrollBy(II)V

    .line 7457
    :cond_9
    iput p1, p0, Lo/onSetRepeatMode;->validateRelationship:F

    :cond_a
    return-void
.end method
