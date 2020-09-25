.class Lo/onQueueTitleChanged$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onQueueTitleChanged$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onQueueTitleChanged;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onQueueTitleChanged$extraCallback$extraCallback;
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback$Stub:I

.field private static final ICustomTabsService:I

.field private static final warmup:I


# instance fields
.field ICustomTabsCallback:Z

.field private ICustomTabsCallback$Stub$Proxy:Z

.field private ICustomTabsService$Stub:Landroid/view/VelocityTracker;

.field private IPostMessageService:F

.field private IPostMessageService$Stub:F

.field private asBinder:I

.field private asInterface:I

.field extraCallback:Landroid/view/MotionEvent;

.field private extraCommand:F

.field private final getInterfaceDescriptor:Landroid/os/Handler;

.field private mayLaunchUrl:Z

.field private newSession:Z

.field final onMessageChannelReady:Landroid/view/GestureDetector$OnGestureListener;

.field onNavigationEvent:Landroid/view/GestureDetector$OnDoubleTapListener;

.field onPostMessage:Z

.field private onRelationshipValidationResult:I

.field private onTransact:I

.field private postMessage:F

.field private requestPostMessageChannel:Z

.field private updateVisuals:Landroid/view/MotionEvent;

.field private validateRelationship:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lo/onQueueTitleChanged$extraCallback;->ICustomTabsCallback$Stub:I

    .line 63
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Lo/onQueueTitleChanged$extraCallback;->warmup:I

    .line 64
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Lo/onQueueTitleChanged$extraCallback;->ICustomTabsService:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 1

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_0

    .line 154
    new-instance v0, Lo/onQueueTitleChanged$extraCallback$extraCallback;

    invoke-direct {v0, p0, p3}, Lo/onQueueTitleChanged$extraCallback$extraCallback;-><init>(Lo/onQueueTitleChanged$extraCallback;Landroid/os/Handler;)V

    iput-object v0, p0, Lo/onQueueTitleChanged$extraCallback;->getInterfaceDescriptor:Landroid/os/Handler;

    goto :goto_0

    .line 156
    :cond_0
    new-instance p3, Lo/onQueueTitleChanged$extraCallback$extraCallback;

    invoke-direct {p3, p0}, Lo/onQueueTitleChanged$extraCallback$extraCallback;-><init>(Lo/onQueueTitleChanged$extraCallback;)V

    iput-object p3, p0, Lo/onQueueTitleChanged$extraCallback;->getInterfaceDescriptor:Landroid/os/Handler;

    .line 158
    :goto_0
    iput-object p2, p0, Lo/onQueueTitleChanged$extraCallback;->onMessageChannelReady:Landroid/view/GestureDetector$OnGestureListener;

    .line 159
    instance-of p3, p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz p3, :cond_1

    .line 160
    check-cast p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-virtual {p0, p2}, Lo/onQueueTitleChanged$extraCallback;->onMessageChannelReady(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 162
    :cond_1
    invoke-direct {p0, p1}, Lo/onQueueTitleChanged$extraCallback;->ICustomTabsCallback(Landroid/content/Context;)V

    return-void
.end method

.method private ICustomTabsCallback(Landroid/content/Context;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 169
    iget-object v0, p0, Lo/onQueueTitleChanged$extraCallback;->onMessageChannelReady:Landroid/view/GestureDetector$OnGestureListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 172
    iput-boolean v0, p0, Lo/onQueueTitleChanged$extraCallback;->validateRelationship:Z

    .line 174
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 175
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .line 176
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v1

    .line 177
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lo/onQueueTitleChanged$extraCallback;->asInterface:I

    .line 178
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    iput p1, p0, Lo/onQueueTitleChanged$extraCallback;->onTransact:I

    mul-int v0, v0, v0

    .line 180
    iput v0, p0, Lo/onQueueTitleChanged$extraCallback;->asBinder:I

    mul-int v1, v1, v1

    .line 181
    iput v1, p0, Lo/onQueueTitleChanged$extraCallback;->onRelationshipValidationResult:I

    return-void

    .line 170
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "OnGestureListener must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 167
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private extraCallback()V
    .locals 2

    .line 414
    iget-object v0, p0, Lo/onQueueTitleChanged$extraCallback;->getInterfaceDescriptor:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 415
    iget-object v0, p0, Lo/onQueueTitleChanged$extraCallback;->getInterfaceDescriptor:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 416
    iget-object v0, p0, Lo/onQueueTitleChanged$extraCallback;->getInterfaceDescriptor:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 417
    iget-object v0, p0, Lo/onQueueTitleChanged$extraCallback;->ICustomTabsService$Stub:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 418
    iput-object v0, p0, Lo/onQueueTitleChanged$extraCallback;->ICustomTabsService$Stub:Landroid/view/VelocityTracker;

    const/4 v0, 0x0

    .line 419
    iput-boolean v0, p0, Lo/onQueueTitleChanged$extraCallback;->requestPostMessageChannel:Z

    .line 420
    iput-boolean v0, p0, Lo/onQueueTitleChanged$extraCallback;->onPostMessage:Z

    .line 421
    iput-boolean v0, p0, Lo/onQueueTitleChanged$extraCallback;->newSession:Z

    .line 422
    iput-boolean v0, p0, Lo/onQueueTitleChanged$extraCallback;->mayLaunchUrl:Z

    .line 423
    iput-boolean v0, p0, Lo/onQueueTitleChanged$extraCallback;->ICustomTabsCallback:Z

    .line 424
    iget-boolean v1, p0, Lo/onQueueTitleChanged$extraCallback;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v1, :cond_0

    .line 425
    iput-boolean v0, p0, Lo/onQueueTitleChanged$extraCallback;->ICustomTabsCallback$Stub$Proxy:Z

    :cond_0
    return-void
.end method

.method private onNavigationEvent()V
    .locals 2

    .line 430
    iget-object v0, p0, Lo/onQueueTitleChanged$extraCallback;->getInterfaceDescriptor:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 431
    iget-object v0, p0, Lo/onQueueTitleChanged$extraCallback;->getInterfaceDescriptor:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 432
    iget-object v0, p0, Lo/onQueueTitleChanged$extraCallback;->getInterfaceDescriptor:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 433
    iput-boolean v0, p0, Lo/onQueueTitleChanged$extraCallback;->requestPostMessageChannel:Z

    .line 434
    iput-boolean v0, p0, Lo/onQueueTitleChanged$extraCallback;->newSession:Z

    .line 435
    iput-boolean v0, p0, Lo/onQueueTitleChanged$extraCallback;->mayLaunchUrl:Z

    .line 436
    iput-boolean v0, p0, Lo/onQueueTitleChanged$extraCallback;->ICustomTabsCallback:Z

    .line 437
    iget-boolean v1, p0, Lo/onQueueTitleChanged$extraCallback;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v1, :cond_0

    .line 438
    iput-boolean v0, p0, Lo/onQueueTitleChanged$extraCallback;->ICustomTabsCallback$Stub$Proxy:Z

    :cond_0
    return-void
.end method

.method private onPostMessage(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 444
    iget-boolean v0, p0, Lo/onQueueTitleChanged$extraCallback;->mayLaunchUrl:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 448
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget p2, Lo/onQueueTitleChanged$extraCallback;->ICustomTabsService:I

    int-to-long v4, p2

    cmp-long p2, v2, v4

    if-lez p2, :cond_1

    return v1

    .line 452
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    sub-int/2addr p2, v0

    .line 453
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    float-to-int p3, p3

    sub-int/2addr p1, p3

    mul-int p2, p2, p2

    mul-int p1, p1, p1

    add-int/2addr p2, p1

    .line 454
    iget p1, p0, Lo/onQueueTitleChanged$extraCallback;->onRelationshipValidationResult:I

    if-ge p2, p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method


# virtual methods
.method public onMessageChannelReady(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lo/onQueueTitleChanged$extraCallback;->onNavigationEvent:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-void
.end method

.method public onMessageChannelReady(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 228
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 230
    iget-object v1, p0, Lo/onQueueTitleChanged$extraCallback;->ICustomTabsService$Stub:Landroid/view/VelocityTracker;

    if-nez v1, :cond_0

    .line 231
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lo/onQueueTitleChanged$extraCallback;->ICustomTabsService$Stub:Landroid/view/VelocityTracker;

    .line 233
    :cond_0
    iget-object v1, p0, Lo/onQueueTitleChanged$extraCallback;->ICustomTabsService$Stub:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    .line 237
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    goto :goto_1

    :cond_2
    const/4 v5, -0x1

    .line 241
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2
    if-ge v8, v6, :cond_4

    if-eq v5, v8, :cond_3

    .line 244
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    add-float/2addr v9, v11

    .line 245
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    add-float/2addr v10, v11

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    if-eqz v4, :cond_5

    add-int/lit8 v4, v6, -0x1

    goto :goto_3

    :cond_5
    move v4, v6

    :goto_3
    int-to-float v4, v4

    div-float/2addr v9, v4

    div-float/2addr v10, v4

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eqz v0, :cond_19

    const/16 v8, 0x3e8

    if-eq v0, v2, :cond_f

    if-eq v0, v4, :cond_a

    if-eq v0, v5, :cond_9

    const/4 v2, 0x5

    if-eq v0, v2, :cond_8

    if-eq v0, v1, :cond_6

    goto/16 :goto_b

    .line 262
    :cond_6
    iput v9, p0, Lo/onQueueTitleChanged$extraCallback;->postMessage:F

    iput v9, p0, Lo/onQueueTitleChanged$extraCallback;->IPostMessageService$Stub:F

    .line 263
    iput v10, p0, Lo/onQueueTitleChanged$extraCallback;->extraCommand:F

    iput v10, p0, Lo/onQueueTitleChanged$extraCallback;->IPostMessageService:F

    .line 267
    iget-object v0, p0, Lo/onQueueTitleChanged$extraCallback;->ICustomTabsService$Stub:Landroid/view/VelocityTracker;

    iget v1, p0, Lo/onQueueTitleChanged$extraCallback;->onTransact:I

    int-to-float v1, v1

    invoke-virtual {v0, v8, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 268
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 269
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 270
    iget-object v2, p0, Lo/onQueueTitleChanged$extraCallback;->ICustomTabsService$Stub:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v2

    .line 271
    iget-object v4, p0, Lo/onQueueTitleChanged$extraCallback;->ICustomTabsService$Stub:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v6, :cond_1f

    if-eq v4, v0, :cond_7

    .line 275
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 276
    iget-object v8, p0, Lo/onQueueTitleChanged$extraCallback;->ICustomTabsService$Stub:Landroid/view/VelocityTracker;

    invoke-virtual {v8, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v8

    mul-float v8, v8, v2

    .line 277
    iget-object v9, p0, Lo/onQueueTitleChanged$extraCallback;->ICustomTabsService$Stub:Landroid/view/VelocityTracker;

    invoke-virtual {v9, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    mul-float v5, v5, v1

    add-float/2addr v8, v5

    cmpg-float v5, v8, v7

    if-gez v5, :cond_7

    .line 281
    iget-object p1, p0, Lo/onQueueTitleChanged$extraCallback;->ICustomTabsService$Stub:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_b

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 255
    :cond_8
    iput v9, p0, Lo/onQueueTitleChanged$extraCallback;->postMessage:F

    iput v9, p0, Lo/onQueueTitleChanged$extraCallback;->IPostMessageService$Stub:F

    .line 256
    iput v10, p0, Lo/onQueueTitleChanged$extraCallback;->extraCommand:F

    iput v10, p0, Lo/onQueueTitleChanged$extraCallback;->IPostMessageService:F

    .line 258
    invoke-direct {p0}, Lo/onQueueTitleChanged$extraCallback;->onNavigationEvent()V

    goto/16 :goto_b

    .line 406
    :cond_9
    invoke-direct {p0}, Lo/onQueueTitleChanged$extraCallback;->extraCallback()V

    goto/16 :goto_b

    .line 329
    :cond_a
    iget-boolean v0, p0, Lo/onQueueTitleChanged$extraCallback;->ICustomTabsCallback$Stub$Proxy:Z

    if-nez v0, :cond_1f

    .line 332
    iget v0, p0, Lo/onQueueTitleChanged$extraCallback;->postMessage:F

    sub-float/2addr v0, v9

    .line 333
    iget v1, p0, Lo/onQueueTitleChanged$extraCallback;->extraCommand:F

    sub-float/2addr v1, v10

    .line 334
    iget-boolean v6, p0, Lo/onQueueTitleChanged$extraCallback;->requestPostMessageChannel:Z

    if-eqz v6, :cond_b

    .line 336
    iget-object v0, p0, Lo/onQueueTitleChanged$extraCallback;->onNavigationEvent:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr v3, p1

    goto/16 :goto_b

    .line 337
    :cond_b
    iget-boolean v6, p0, Lo/onQueueTitleChanged$extraCallback;->newSession:Z

    if-eqz v6, :cond_d

    .line 338
    iget v6, p0, Lo/onQueueTitleChanged$extraCallback;->IPostMessageService$Stub:F

    sub-float v6, v9, v6

    float-to-int v6, v6

    .line 339
    iget v7, p0, Lo/onQueueTitleChanged$extraCallback;->IPostMessageService:F

    sub-float v7, v10, v7

    float-to-int v7, v7

    mul-int v6, v6, v6

    mul-int v7, v7, v7

    add-int/2addr v6, v7

    .line 341
    iget v7, p0, Lo/onQueueTitleChanged$extraCallback;->asBinder:I

    if-le v6, v7, :cond_c

    .line 342
    iget-object v7, p0, Lo/onQueueTitleChanged$extraCallback;->onMessageChannelReady:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v8, p0, Lo/onQueueTitleChanged$extraCallback;->extraCallback:Landroid/view/MotionEvent;

    invoke-interface {v7, v8, p1, v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    .line 343
    iput v9, p0, Lo/onQueueTitleChanged$extraCallback;->postMessage:F

    .line 344
    iput v10, p0, Lo/onQueueTitleChanged$extraCallback;->extraCommand:F

    .line 345
    iput-boolean v3, p0, Lo/onQueueTitleChanged$extraCallback;->newSession:Z

    .line 346
    iget-object v0, p0, Lo/onQueueTitleChanged$extraCallback;->getInterfaceDescriptor:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 347
    iget-object v0, p0, Lo/onQueueTitleChanged$extraCallback;->getInterfaceDescriptor:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 348
    iget-object v0, p0, Lo/onQueueTitleChanged$extraCallback;->getInterfaceDescriptor:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_5

    :cond_c
    const/4 p1, 0x0

    .line 350
    :goto_5
    iget v0, p0, Lo/onQueueTitleChanged$extraCallback;->asBinder:I

    if-le v6, v0, :cond_18

    .line 351
    iput-boolean v3, p0, Lo/onQueueTitleChanged$extraCallback;->mayLaunchUrl:Z

    goto/16 :goto_9

    .line 353
    :cond_d
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v4

    if-gez v2, :cond_e

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_1f

    .line 354
    :cond_e
    iget-object v2, p0, Lo/onQueueTitleChanged$extraCallback;->onMessageChannelReady:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v3, p0, Lo/onQueueTitleChanged$extraCallback;->extraCallback:Landroid/view/MotionEvent;

    invoke-interface {v2, v3, p1, v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v3

    .line 355
    iput v9, p0, Lo/onQueueTitleChanged$extraCallback;->postMessage:F

    .line 356
    iput v10, p0, Lo/onQueueTitleChanged$extraCallback;->extraCommand:F

    goto/16 :goto_b

    .line 361
    :cond_f
    iput-boolean v3, p0, Lo/onQueueTitleChanged$extraCallback;->onPostMessage:Z

    .line 362
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 363
    iget-boolean v1, p0, Lo/onQueueTitleChanged$extraCallback;->requestPostMessageChannel:Z

    if-eqz v1, :cond_10

    .line 365
    iget-object v1, p0, Lo/onQueueTitleChanged$extraCallback;->onNavigationEvent:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v1, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr p1, v3

    goto :goto_8

    .line 366
    :cond_10
    iget-boolean v1, p0, Lo/onQueueTitleChanged$extraCallback;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v1, :cond_11

    .line 367
    iget-object p1, p0, Lo/onQueueTitleChanged$extraCallback;->getInterfaceDescriptor:Landroid/os/Handler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 368
    iput-boolean v3, p0, Lo/onQueueTitleChanged$extraCallback;->ICustomTabsCallback$Stub$Proxy:Z

    goto :goto_6

    .line 369
    :cond_11
    iget-boolean v1, p0, Lo/onQueueTitleChanged$extraCallback;->newSession:Z

    if-eqz v1, :cond_13

    .line 370
    iget-object v1, p0, Lo/onQueueTitleChanged$extraCallback;->onMessageChannelReady:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v1, p1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 371
    iget-boolean v5, p0, Lo/onQueueTitleChanged$extraCallback;->ICustomTabsCallback:Z

    if-eqz v5, :cond_12

    iget-object v5, p0, Lo/onQueueTitleChanged$extraCallback;->onNavigationEvent:Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v5, :cond_12

    .line 372
    invoke-interface {v5, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    :cond_12
    move p1, v1

    goto :goto_8

    .line 376
    :cond_13
    iget-object v1, p0, Lo/onQueueTitleChanged$extraCallback;->ICustomTabsService$Stub:Landroid/view/VelocityTracker;

    .line 377
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 378
    iget v6, p0, Lo/onQueueTitleChanged$extraCallback;->onTransact:I

    int-to-float v6, v6

    invoke-virtual {v1, v8, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 379
    invoke-virtual {v1, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v6

    .line 380
    invoke-virtual {v1, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v1

    .line 382
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v7, p0, Lo/onQueueTitleChanged$extraCallback;->asInterface:I

    int-to-float v7, v7

    cmpl-float v5, v5, v7

    if-gtz v5, :cond_15

    .line 383
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v7, p0, Lo/onQueueTitleChanged$extraCallback;->asInterface:I

    int-to-float v7, v7

    cmpl-float v5, v5, v7

    if-lez v5, :cond_14

    goto :goto_7

    :cond_14
    :goto_6
    const/4 p1, 0x0

    goto :goto_8

    .line 384
    :cond_15
    :goto_7
    iget-object v5, p0, Lo/onQueueTitleChanged$extraCallback;->onMessageChannelReady:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v7, p0, Lo/onQueueTitleChanged$extraCallback;->extraCallback:Landroid/view/MotionEvent;

    invoke-interface {v5, v7, p1, v1, v6}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    .line 388
    :goto_8
    iget-object v1, p0, Lo/onQueueTitleChanged$extraCallback;->updateVisuals:Landroid/view/MotionEvent;

    if-eqz v1, :cond_16

    .line 389
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 392
    :cond_16
    iput-object v0, p0, Lo/onQueueTitleChanged$extraCallback;->updateVisuals:Landroid/view/MotionEvent;

    .line 393
    iget-object v0, p0, Lo/onQueueTitleChanged$extraCallback;->ICustomTabsService$Stub:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_17

    .line 396
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 397
    iput-object v0, p0, Lo/onQueueTitleChanged$extraCallback;->ICustomTabsService$Stub:Landroid/view/VelocityTracker;

    .line 399
    :cond_17
    iput-boolean v3, p0, Lo/onQueueTitleChanged$extraCallback;->requestPostMessageChannel:Z

    .line 400
    iput-boolean v3, p0, Lo/onQueueTitleChanged$extraCallback;->ICustomTabsCallback:Z

    .line 401
    iget-object v0, p0, Lo/onQueueTitleChanged$extraCallback;->getInterfaceDescriptor:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 402
    iget-object v0, p0, Lo/onQueueTitleChanged$extraCallback;->getInterfaceDescriptor:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_18
    :goto_9
    move v3, p1

    goto/16 :goto_b

    .line 288
    :cond_19
    iget-object v0, p0, Lo/onQueueTitleChanged$extraCallback;->onNavigationEvent:Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v0, :cond_1c

    .line 289
    iget-object v0, p0, Lo/onQueueTitleChanged$extraCallback;->getInterfaceDescriptor:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 290
    iget-object v1, p0, Lo/onQueueTitleChanged$extraCallback;->getInterfaceDescriptor:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 291
    :cond_1a
    iget-object v1, p0, Lo/onQueueTitleChanged$extraCallback;->extraCallback:Landroid/view/MotionEvent;

    if-eqz v1, :cond_1b

    iget-object v6, p0, Lo/onQueueTitleChanged$extraCallback;->updateVisuals:Landroid/view/MotionEvent;

    if-eqz v6, :cond_1b

    if-eqz v0, :cond_1b

    .line 292
    invoke-direct {p0, v1, v6, p1}, Lo/onQueueTitleChanged$extraCallback;->onPostMessage(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 295
    iput-boolean v2, p0, Lo/onQueueTitleChanged$extraCallback;->requestPostMessageChannel:Z

    .line 297
    iget-object v0, p0, Lo/onQueueTitleChanged$extraCallback;->onNavigationEvent:Landroid/view/GestureDetector$OnDoubleTapListener;

    iget-object v1, p0, Lo/onQueueTitleChanged$extraCallback;->extraCallback:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    or-int/2addr v0, v3

    .line 299
    iget-object v1, p0, Lo/onQueueTitleChanged$extraCallback;->onNavigationEvent:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v1, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_a

    .line 302
    :cond_1b
    iget-object v0, p0, Lo/onQueueTitleChanged$extraCallback;->getInterfaceDescriptor:Landroid/os/Handler;

    sget v1, Lo/onQueueTitleChanged$extraCallback;->ICustomTabsService:I

    int-to-long v6, v1

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1c
    const/4 v0, 0x0

    .line 306
    :goto_a
    iput v9, p0, Lo/onQueueTitleChanged$extraCallback;->postMessage:F

    iput v9, p0, Lo/onQueueTitleChanged$extraCallback;->IPostMessageService$Stub:F

    .line 307
    iput v10, p0, Lo/onQueueTitleChanged$extraCallback;->extraCommand:F

    iput v10, p0, Lo/onQueueTitleChanged$extraCallback;->IPostMessageService:F

    .line 308
    iget-object v1, p0, Lo/onQueueTitleChanged$extraCallback;->extraCallback:Landroid/view/MotionEvent;

    if-eqz v1, :cond_1d

    .line 309
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 311
    :cond_1d
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lo/onQueueTitleChanged$extraCallback;->extraCallback:Landroid/view/MotionEvent;

    .line 312
    iput-boolean v2, p0, Lo/onQueueTitleChanged$extraCallback;->newSession:Z

    .line 313
    iput-boolean v2, p0, Lo/onQueueTitleChanged$extraCallback;->mayLaunchUrl:Z

    .line 314
    iput-boolean v2, p0, Lo/onQueueTitleChanged$extraCallback;->onPostMessage:Z

    .line 315
    iput-boolean v3, p0, Lo/onQueueTitleChanged$extraCallback;->ICustomTabsCallback$Stub$Proxy:Z

    .line 316
    iput-boolean v3, p0, Lo/onQueueTitleChanged$extraCallback;->ICustomTabsCallback:Z

    .line 318
    iget-boolean v1, p0, Lo/onQueueTitleChanged$extraCallback;->validateRelationship:Z

    if-eqz v1, :cond_1e

    .line 319
    iget-object v1, p0, Lo/onQueueTitleChanged$extraCallback;->getInterfaceDescriptor:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 320
    iget-object v1, p0, Lo/onQueueTitleChanged$extraCallback;->getInterfaceDescriptor:Landroid/os/Handler;

    iget-object v3, p0, Lo/onQueueTitleChanged$extraCallback;->extraCallback:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    sget v3, Lo/onQueueTitleChanged$extraCallback;->warmup:I

    int-to-long v7, v3

    add-long/2addr v5, v7

    sget v3, Lo/onQueueTitleChanged$extraCallback;->ICustomTabsCallback$Stub:I

    int-to-long v7, v3

    add-long/2addr v5, v7

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 323
    :cond_1e
    iget-object v1, p0, Lo/onQueueTitleChanged$extraCallback;->getInterfaceDescriptor:Landroid/os/Handler;

    iget-object v3, p0, Lo/onQueueTitleChanged$extraCallback;->extraCallback:Landroid/view/MotionEvent;

    .line 324
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    sget v5, Lo/onQueueTitleChanged$extraCallback;->warmup:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 323
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 325
    iget-object v1, p0, Lo/onQueueTitleChanged$extraCallback;->onMessageChannelReady:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v1, p1}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p1

    or-int v3, v0, p1

    :cond_1f
    :goto_b
    return v3
.end method

.method onPostMessage()V
    .locals 2

    .line 458
    iget-object v0, p0, Lo/onQueueTitleChanged$extraCallback;->getInterfaceDescriptor:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 459
    iput-boolean v0, p0, Lo/onQueueTitleChanged$extraCallback;->ICustomTabsCallback:Z

    const/4 v0, 0x1

    .line 460
    iput-boolean v0, p0, Lo/onQueueTitleChanged$extraCallback;->ICustomTabsCallback$Stub$Proxy:Z

    .line 461
    iget-object v0, p0, Lo/onQueueTitleChanged$extraCallback;->onMessageChannelReady:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v1, p0, Lo/onQueueTitleChanged$extraCallback;->extraCallback:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method
