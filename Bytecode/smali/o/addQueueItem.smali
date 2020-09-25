.class public abstract Lo/addQueueItem;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/addQueueItem$onPostMessage;,
        Lo/addQueueItem$ICustomTabsCallback;
    }
.end annotation


# static fields
.field private static final requestPostMessageChannel:I


# instance fields
.field ICustomTabsCallback:Z

.field private ICustomTabsCallback$Stub:[F

.field private ICustomTabsCallback$Stub$Proxy:I

.field private ICustomTabsService:I

.field public asBinder:Z

.field private asInterface:[F

.field final extraCallback:Landroid/view/View;

.field private getInterfaceDescriptor:[F

.field private newSession:[F

.field public final onMessageChannelReady:Lo/addQueueItem$onPostMessage;

.field public onNavigationEvent:Z

.field public onPostMessage:Z

.field private final onRelationshipValidationResult:Landroid/view/animation/Interpolator;

.field private onTransact:Ljava/lang/Runnable;

.field private updateVisuals:Z

.field private warmup:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 195
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Lo/addQueueItem;->requestPostMessageChannel:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 5

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Lo/addQueueItem$onPostMessage;

    invoke-direct {v0}, Lo/addQueueItem$onPostMessage;-><init>()V

    iput-object v0, p0, Lo/addQueueItem;->onMessageChannelReady:Lo/addQueueItem$onPostMessage;

    .line 141
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lo/addQueueItem;->onRelationshipValidationResult:Landroid/view/animation/Interpolator;

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 150
    fill-array-data v1, :array_0

    iput-object v1, p0, Lo/addQueueItem;->ICustomTabsCallback$Stub:[F

    new-array v1, v0, [F

    .line 153
    fill-array-data v1, :array_1

    iput-object v1, p0, Lo/addQueueItem;->asInterface:[F

    new-array v1, v0, [F

    .line 162
    fill-array-data v1, :array_2

    iput-object v1, p0, Lo/addQueueItem;->newSession:[F

    new-array v1, v0, [F

    .line 165
    fill-array-data v1, :array_3

    iput-object v1, p0, Lo/addQueueItem;->getInterfaceDescriptor:[F

    new-array v0, v0, [F

    .line 168
    fill-array-data v0, :array_4

    iput-object v0, p0, Lo/addQueueItem;->warmup:[F

    .line 211
    iput-object p1, p0, Lo/addQueueItem;->extraCallback:Landroid/view/View;

    .line 213
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 214
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    const v1, 0x44c4e000    # 1575.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 215
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const v2, 0x439d8000    # 315.0f

    mul-float p1, p1, v2

    add-float/2addr p1, v1

    float-to-int p1, p1

    int-to-float v0, v0

    .line 1296
    iget-object v1, p0, Lo/addQueueItem;->warmup:[F

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v0, v2

    const/4 v3, 0x0

    aput v0, v1, v3

    const/4 v4, 0x1

    .line 1297
    aput v0, v1, v4

    int-to-float p1, p1

    .line 1315
    iget-object v0, p0, Lo/addQueueItem;->getInterfaceDescriptor:[F

    div-float/2addr p1, v2

    aput p1, v0, v3

    .line 1316
    aput p1, v0, v4

    .line 1359
    iput v4, p0, Lo/addQueueItem;->ICustomTabsCallback$Stub$Proxy:I

    .line 1402
    iget-object p1, p0, Lo/addQueueItem;->asInterface:[F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    aput v0, p1, v3

    .line 1403
    aput v0, p1, v4

    .line 2379
    iget-object p1, p0, Lo/addQueueItem;->ICustomTabsCallback$Stub:[F

    const v0, 0x3e4ccccd    # 0.2f

    aput v0, p1, v3

    .line 2380
    aput v0, p1, v4

    .line 3337
    iget-object p1, p0, Lo/addQueueItem;->newSession:[F

    const v0, 0x3a83126f    # 0.001f

    aput v0, p1, v3

    .line 3338
    aput v0, p1, v4

    .line 223
    sget p1, Lo/addQueueItem;->requestPostMessageChannel:I

    .line 3420
    iput p1, p0, Lo/addQueueItem;->ICustomTabsService:I

    .line 3436
    iget-object p1, p0, Lo/addQueueItem;->onMessageChannelReady:Lo/addQueueItem$onPostMessage;

    const/16 v0, 0x1f4

    .line 3765
    iput v0, p1, Lo/addQueueItem$onPostMessage;->onNavigationEvent:I

    .line 4452
    iget-object p1, p0, Lo/addQueueItem;->onMessageChannelReady:Lo/addQueueItem$onPostMessage;

    .line 4769
    iput v0, p1, Lo/addQueueItem$onPostMessage;->onPostMessage:I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data
.end method

.method static ICustomTabsCallback(FFF)F
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p2, p0, p1

    if-lez p2, :cond_0

    return p1

    :cond_0
    const/4 p1, 0x0

    cmpg-float p2, p0, p1

    if-gez p2, :cond_1

    return p1

    :cond_1
    return p0
.end method

.method private extraCallback(FF)F
    .locals 4

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_0

    return v0

    .line 638
    :cond_0
    iget v1, p0, Lo/addQueueItem;->ICustomTabsCallback$Stub$Proxy:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    cmpg-float v1, p1, v0

    if-gez v1, :cond_4

    neg-float p2, p2

    div-float/2addr p1, p2

    return p1

    :cond_2
    cmpg-float v1, p1, p2

    if-gez v1, :cond_4

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v0

    if-ltz v3, :cond_3

    div-float/2addr p1, p2

    sub-float/2addr v1, p1

    return v1

    .line 645
    :cond_3
    iget-boolean p1, p0, Lo/addQueueItem;->onPostMessage:Z

    if-eqz p1, :cond_4

    iget p1, p0, Lo/addQueueItem;->ICustomTabsCallback$Stub$Proxy:I

    if-ne p1, v2, :cond_4

    return v1

    :cond_4
    :goto_0
    return v0
.end method

.method private extraCallback(FFFF)F
    .locals 2

    mul-float p1, p1, p2

    const/4 v0, 0x0

    cmpl-float v1, p1, p3

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    cmpg-float p3, p1, v0

    if-gez p3, :cond_1

    const/4 p3, 0x0

    goto :goto_0

    :cond_1
    move p3, p1

    .line 618
    :goto_0
    invoke-direct {p0, p4, p3}, Lo/addQueueItem;->extraCallback(FF)F

    move-result p1

    sub-float/2addr p2, p4

    .line 619
    invoke-direct {p0, p2, p3}, Lo/addQueueItem;->extraCallback(FF)F

    move-result p2

    sub-float/2addr p2, p1

    cmpg-float p1, p2, v0

    if-gez p1, :cond_2

    .line 623
    iget-object p1, p0, Lo/addQueueItem;->onRelationshipValidationResult:Landroid/view/animation/Interpolator;

    neg-float p2, p2

    invoke-interface {p1, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    neg-float p1, p1

    goto :goto_1

    :cond_2
    cmpl-float p1, p2, v0

    if-lez p1, :cond_5

    .line 625
    iget-object p1, p0, Lo/addQueueItem;->onRelationshipValidationResult:Landroid/view/animation/Interpolator;

    invoke-interface {p1, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    :goto_1
    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p3, p1, p2

    if-lez p3, :cond_3

    return p2

    :cond_3
    const/high16 p2, -0x40800000    # -1.0f

    cmpg-float p3, p1, p2

    if-gez p3, :cond_4

    return p2

    :cond_4
    return p1

    :cond_5
    return v0
.end method

.method static extraCallback(II)I
    .locals 0

    if-le p0, p1, :cond_0

    return p1

    :cond_0
    if-gez p0, :cond_1

    const/4 p0, 0x0

    :cond_1
    return p0
.end method

.method private onPostMessage(IFFF)F
    .locals 3

    .line 549
    iget-object v0, p0, Lo/addQueueItem;->ICustomTabsCallback$Stub:[F

    aget v0, v0, p1

    .line 550
    iget-object v1, p0, Lo/addQueueItem;->asInterface:[F

    aget v1, v1, p1

    .line 551
    invoke-direct {p0, v0, p3, v1, p2}, Lo/addQueueItem;->extraCallback(FFFF)F

    move-result p2

    const/4 p3, 0x0

    cmpl-float v0, p2, p3

    if-nez v0, :cond_0

    return p3

    .line 557
    :cond_0
    iget-object p3, p0, Lo/addQueueItem;->newSession:[F

    aget p3, p3, p1

    .line 558
    iget-object v1, p0, Lo/addQueueItem;->getInterfaceDescriptor:[F

    aget v1, v1, p1

    .line 559
    iget-object v2, p0, Lo/addQueueItem;->warmup:[F

    aget p1, v2, p1

    mul-float p3, p3, p4

    if-lez v0, :cond_3

    mul-float p2, p2, p3

    cmpl-float p3, p2, p1

    if-lez p3, :cond_1

    return p1

    :cond_1
    cmpg-float p1, p2, v1

    if-gez p1, :cond_2

    return v1

    :cond_2
    return p2

    :cond_3
    neg-float p2, p2

    mul-float p2, p2, p3

    cmpl-float p3, p2, p1

    if-lez p3, :cond_4

    move v1, p1

    goto :goto_0

    :cond_4
    cmpg-float p1, p2, v1

    if-gez p1, :cond_5

    goto :goto_0

    :cond_5
    move v1, p2

    :goto_0
    neg-float p1, v1

    return p1
.end method


# virtual methods
.method final ICustomTabsCallback()Z
    .locals 3

    .line 502
    iget-object v0, p0, Lo/addQueueItem;->onMessageChannelReady:Lo/addQueueItem$onPostMessage;

    .line 5861
    iget v1, v0, Lo/addQueueItem$onPostMessage;->extraCallback:F

    iget v2, v0, Lo/addQueueItem$onPostMessage;->extraCallback:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 6857
    iget v2, v0, Lo/addQueueItem$onPostMessage;->ICustomTabsCallback:F

    iget v0, v0, Lo/addQueueItem$onPostMessage;->ICustomTabsCallback:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v2, v0

    float-to-int v0, v2

    if-eqz v1, :cond_1

    .line 506
    invoke-virtual {p0, v1}, Lo/addQueueItem;->extraCallback(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract extraCallback(I)Z
.end method

.method public abstract onPostMessage(I)V
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 466
    iget-boolean v0, p0, Lo/addQueueItem;->asBinder:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 470
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_1

    .line 5538
    :cond_1
    iget-boolean p1, p0, Lo/addQueueItem;->onNavigationEvent:Z

    if-eqz p1, :cond_2

    .line 5541
    iput-boolean v1, p0, Lo/addQueueItem;->onPostMessage:Z

    goto :goto_1

    .line 5543
    :cond_2
    iget-object p1, p0, Lo/addQueueItem;->onMessageChannelReady:Lo/addQueueItem$onPostMessage;

    invoke-virtual {p1}, Lo/addQueueItem$onPostMessage;->extraCallback()V

    goto :goto_1

    .line 473
    :cond_3
    iput-boolean v2, p0, Lo/addQueueItem;->ICustomTabsCallback:Z

    .line 474
    iput-boolean v1, p0, Lo/addQueueItem;->updateVisuals:Z

    .line 478
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lo/addQueueItem;->extraCallback:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    .line 477
    invoke-direct {p0, v1, v0, v3, v4}, Lo/addQueueItem;->onPostMessage(IFFF)F

    move-result v0

    .line 480
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object v3, p0, Lo/addQueueItem;->extraCallback:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 479
    invoke-direct {p0, v2, p2, p1, v3}, Lo/addQueueItem;->onPostMessage(IFFF)F

    move-result p1

    .line 481
    iget-object p2, p0, Lo/addQueueItem;->onMessageChannelReady:Lo/addQueueItem$onPostMessage;

    .line 4852
    iput v0, p2, Lo/addQueueItem$onPostMessage;->ICustomTabsCallback:F

    .line 4853
    iput p1, p2, Lo/addQueueItem$onPostMessage;->extraCallback:F

    .line 485
    iget-boolean p1, p0, Lo/addQueueItem;->onPostMessage:Z

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lo/addQueueItem;->ICustomTabsCallback()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 5514
    iget-object p1, p0, Lo/addQueueItem;->onTransact:Ljava/lang/Runnable;

    if-nez p1, :cond_5

    .line 5515
    new-instance p1, Lo/addQueueItem$ICustomTabsCallback;

    invoke-direct {p1, p0}, Lo/addQueueItem$ICustomTabsCallback;-><init>(Lo/addQueueItem;)V

    iput-object p1, p0, Lo/addQueueItem;->onTransact:Ljava/lang/Runnable;

    .line 5518
    :cond_5
    iput-boolean v2, p0, Lo/addQueueItem;->onPostMessage:Z

    .line 5519
    iput-boolean v2, p0, Lo/addQueueItem;->onNavigationEvent:Z

    .line 5521
    iget-boolean p1, p0, Lo/addQueueItem;->updateVisuals:Z

    if-nez p1, :cond_6

    iget p1, p0, Lo/addQueueItem;->ICustomTabsService:I

    if-lez p1, :cond_6

    .line 5522
    iget-object p2, p0, Lo/addQueueItem;->extraCallback:Landroid/view/View;

    iget-object v0, p0, Lo/addQueueItem;->onTransact:Ljava/lang/Runnable;

    int-to-long v3, p1

    invoke-static {p2, v0, v3, v4}, Lo/unregisterCallbackListener;->onPostMessage(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 5524
    :cond_6
    iget-object p1, p0, Lo/addQueueItem;->onTransact:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 5529
    :goto_0
    iput-boolean v2, p0, Lo/addQueueItem;->updateVisuals:Z

    :cond_7
    :goto_1
    return v1
.end method
