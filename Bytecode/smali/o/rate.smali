.class public final Lo/rate;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/rate$ICustomTabsCallback;
    }
.end annotation


# static fields
.field private static final IPostMessageService:Landroid/view/animation/Interpolator;


# instance fields
.field public ICustomTabsCallback:[F

.field public ICustomTabsCallback$Stub:[F

.field private ICustomTabsCallback$Stub$Proxy:[I

.field public ICustomTabsService:Landroid/widget/OverScroller;

.field private final ICustomTabsService$Stub$Proxy:Landroid/view/ViewGroup;

.field private final IPostMessageService$Stub:Ljava/lang/Runnable;

.field public asBinder:I

.field public asInterface:I

.field public extraCallback:[F

.field private extraCommand:Z

.field private getInterfaceDescriptor:I

.field private mayLaunchUrl:F

.field public newSession:Landroid/view/View;

.field public onMessageChannelReady:I

.field public onNavigationEvent:I

.field public onPostMessage:[F

.field public onRelationshipValidationResult:F

.field public onTransact:I

.field private postMessage:Landroid/view/VelocityTracker;

.field private requestPostMessageChannel:[I

.field private updateVisuals:[I

.field public final warmup:Lo/rate$ICustomTabsCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 332
    new-instance v0, Lo/rate$3;

    invoke-direct {v0}, Lo/rate$3;-><init>()V

    sput-object v0, Lo/rate;->IPostMessageService:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lo/rate$ICustomTabsCallback;)V
    .locals 1

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 119
    iput v0, p0, Lo/rate;->getInterfaceDescriptor:I

    .line 340
    new-instance v0, Lo/rate$2;

    invoke-direct {v0, p0}, Lo/rate$2;-><init>(Lo/rate;)V

    iput-object v0, p0, Lo/rate;->IPostMessageService$Stub:Ljava/lang/Runnable;

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 391
    iput-object p2, p0, Lo/rate;->ICustomTabsService$Stub$Proxy:Landroid/view/ViewGroup;

    .line 392
    iput-object p3, p0, Lo/rate;->warmup:Lo/rate$ICustomTabsCallback;

    .line 394
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    .line 395
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float p3, p3, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p3, v0

    float-to-int p3, p3

    .line 396
    iput p3, p0, Lo/rate;->asBinder:I

    .line 398
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    iput p3, p0, Lo/rate;->onMessageChannelReady:I

    .line 399
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lo/rate;->mayLaunchUrl:F

    .line 400
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lo/rate;->onRelationshipValidationResult:F

    .line 401
    new-instance p2, Landroid/widget/OverScroller;

    sget-object p3, Lo/rate;->IPostMessageService:Landroid/view/animation/Interpolator;

    invoke-direct {p2, p1, p3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p2, p0, Lo/rate;->ICustomTabsService:Landroid/widget/OverScroller;

    return-void

    .line 388
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Callback may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 385
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parent view may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private ICustomTabsCallback(FFI)V
    .locals 10

    .line 5818
    iget-object v0, p0, Lo/rate;->onPostMessage:[F

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v0, v0

    if-gt v0, p3, :cond_2

    :cond_0
    add-int/lit8 v0, p3, 0x1

    .line 5819
    new-array v2, v0, [F

    .line 5820
    new-array v3, v0, [F

    .line 5821
    new-array v4, v0, [F

    .line 5822
    new-array v5, v0, [F

    .line 5823
    new-array v6, v0, [I

    .line 5824
    new-array v7, v0, [I

    .line 5825
    new-array v0, v0, [I

    .line 5827
    iget-object v8, p0, Lo/rate;->onPostMessage:[F

    if-eqz v8, :cond_1

    .line 5828
    array-length v9, v8

    invoke-static {v8, v1, v2, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5829
    iget-object v8, p0, Lo/rate;->extraCallback:[F

    array-length v9, v8

    invoke-static {v8, v1, v3, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5830
    iget-object v8, p0, Lo/rate;->ICustomTabsCallback:[F

    array-length v9, v8

    invoke-static {v8, v1, v4, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5831
    iget-object v8, p0, Lo/rate;->ICustomTabsCallback$Stub:[F

    array-length v9, v8

    invoke-static {v8, v1, v5, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5832
    iget-object v8, p0, Lo/rate;->ICustomTabsCallback$Stub$Proxy:[I

    array-length v9, v8

    invoke-static {v8, v1, v6, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5833
    iget-object v8, p0, Lo/rate;->updateVisuals:[I

    array-length v9, v8

    invoke-static {v8, v1, v7, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5834
    iget-object v8, p0, Lo/rate;->requestPostMessageChannel:[I

    array-length v9, v8

    invoke-static {v8, v1, v0, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5837
    :cond_1
    iput-object v2, p0, Lo/rate;->onPostMessage:[F

    .line 5838
    iput-object v3, p0, Lo/rate;->extraCallback:[F

    .line 5839
    iput-object v4, p0, Lo/rate;->ICustomTabsCallback:[F

    .line 5840
    iput-object v5, p0, Lo/rate;->ICustomTabsCallback$Stub:[F

    .line 5841
    iput-object v6, p0, Lo/rate;->ICustomTabsCallback$Stub$Proxy:[I

    .line 5842
    iput-object v7, p0, Lo/rate;->updateVisuals:[I

    .line 5843
    iput-object v0, p0, Lo/rate;->requestPostMessageChannel:[I

    .line 849
    :cond_2
    iget-object v0, p0, Lo/rate;->onPostMessage:[F

    iget-object v2, p0, Lo/rate;->ICustomTabsCallback:[F

    aput p1, v2, p3

    aput p1, v0, p3

    .line 850
    iget-object v0, p0, Lo/rate;->extraCallback:[F

    iget-object v2, p0, Lo/rate;->ICustomTabsCallback$Stub:[F

    aput p2, v2, p3

    aput p2, v0, p3

    .line 851
    iget-object v0, p0, Lo/rate;->ICustomTabsCallback$Stub$Proxy:[I

    float-to-int p1, p1

    float-to-int p2, p2

    .line 6501
    iget-object v2, p0, Lo/rate;->ICustomTabsService$Stub$Proxy:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Lo/rate;->asBinder:I

    add-int/2addr v2, v3

    const/4 v3, 0x1

    if-ge p1, v2, :cond_3

    const/4 v1, 0x1

    .line 6502
    :cond_3
    iget-object v2, p0, Lo/rate;->ICustomTabsService$Stub$Proxy:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v4, p0, Lo/rate;->asBinder:I

    add-int/2addr v2, v4

    if-ge p2, v2, :cond_4

    or-int/lit8 v1, v1, 0x4

    .line 6503
    :cond_4
    iget-object v2, p0, Lo/rate;->ICustomTabsService$Stub$Proxy:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget v4, p0, Lo/rate;->asBinder:I

    sub-int/2addr v2, v4

    if-le p1, v2, :cond_5

    or-int/lit8 v1, v1, 0x2

    .line 6504
    :cond_5
    iget-object p1, p0, Lo/rate;->ICustomTabsService$Stub$Proxy:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iget v2, p0, Lo/rate;->asBinder:I

    sub-int/2addr p1, v2

    if-le p2, p1, :cond_6

    or-int/lit8 v1, v1, 0x8

    .line 851
    :cond_6
    aput v1, v0, p3

    .line 852
    iget p1, p0, Lo/rate;->onTransact:I

    shl-int p2, v3, p3

    or-int/2addr p1, p2

    iput p1, p0, Lo/rate;->onTransact:I

    return-void
.end method

.method private ICustomTabsCallback(Landroid/view/MotionEvent;)V
    .locals 6

    .line 856
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 858
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 860
    invoke-direct {p0, v2}, Lo/rate;->onNavigationEvent(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 863
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 864
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 865
    iget-object v5, p0, Lo/rate;->ICustomTabsCallback:[F

    aput v3, v5, v2

    .line 866
    iget-object v3, p0, Lo/rate;->ICustomTabsCallback$Stub:[F

    aput v4, v3, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private extraCallback(III)I
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 642
    :cond_0
    iget-object v0, p0, Lo/rate;->ICustomTabsService$Stub$Proxy:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 643
    div-int/lit8 v1, v0, 0x2

    .line 644
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float v1, v1

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    const v3, 0x3ef1463b

    mul-float v2, v2, v3

    float-to-double v2, v2

    .line 4696
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v2, v2, v1

    add-float/2addr v1, v2

    .line 649
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lez p2, :cond_1

    const/high16 p1, 0x447a0000    # 1000.0f

    int-to-float p2, p2

    div-float/2addr v1, p2

    .line 651
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float p2, p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_0

    .line 653
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    int-to-float p2, p3

    div-float/2addr p1, p2

    add-float/2addr p1, v0

    const/high16 p2, 0x43800000    # 256.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    :goto_0
    const/16 p2, 0x258

    .line 656
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private extraCallback(FF)V
    .locals 3

    const/4 v0, 0x1

    .line 779
    iput-boolean v0, p0, Lo/rate;->extraCommand:Z

    .line 780
    iget-object v1, p0, Lo/rate;->warmup:Lo/rate$ICustomTabsCallback;

    iget-object v2, p0, Lo/rate;->newSession:Landroid/view/View;

    invoke-virtual {v1, v2, p1, p2}, Lo/rate$ICustomTabsCallback;->onNavigationEvent(Landroid/view/View;FF)V

    const/4 p1, 0x0

    .line 781
    iput-boolean p1, p0, Lo/rate;->extraCommand:Z

    .line 783
    iget p2, p0, Lo/rate;->onNavigationEvent:I

    if-ne p2, v0, :cond_0

    .line 785
    invoke-virtual {p0, p1}, Lo/rate;->ICustomTabsCallback(I)V

    :cond_0
    return-void
.end method

.method public static onMessageChannelReady(Landroid/view/ViewGroup;Lo/rate$ICustomTabsCallback;)Lo/rate;
    .locals 2

    .line 355
    new-instance v0, Lo/rate;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lo/rate;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lo/rate$ICustomTabsCallback;)V

    return-object v0
.end method

.method private onMessageChannelReady(I)V
    .locals 4

    .line 804
    iget-object v0, p0, Lo/rate;->onPostMessage:[F

    if-eqz v0, :cond_2

    .line 4884
    iget v0, p0, Lo/rate;->onTransact:I

    const/4 v1, 0x1

    shl-int v2, v1, p1

    and-int/2addr v0, v2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    .line 807
    :cond_1
    iget-object v0, p0, Lo/rate;->onPostMessage:[F

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 808
    iget-object v0, p0, Lo/rate;->extraCallback:[F

    aput v1, v0, p1

    .line 809
    iget-object v0, p0, Lo/rate;->ICustomTabsCallback:[F

    aput v1, v0, p1

    .line 810
    iget-object v0, p0, Lo/rate;->ICustomTabsCallback$Stub:[F

    aput v1, v0, p1

    .line 811
    iget-object v0, p0, Lo/rate;->ICustomTabsCallback$Stub$Proxy:[I

    aput v3, v0, p1

    .line 812
    iget-object v0, p0, Lo/rate;->updateVisuals:[I

    aput v3, v0, p1

    .line 813
    iget-object v0, p0, Lo/rate;->requestPostMessageChannel:[I

    aput v3, v0, p1

    .line 814
    iget p1, p0, Lo/rate;->onTransact:I

    not-int v0, v2

    and-int/2addr p1, v0

    iput p1, p0, Lo/rate;->onTransact:I

    :cond_2
    :goto_1
    return-void
.end method

.method private onMessageChannelReady(Landroid/view/View;FF)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1306
    :cond_0
    iget-object v1, p0, Lo/rate;->warmup:Lo/rate$ICustomTabsCallback;

    invoke-virtual {v1, p1}, Lo/rate$ICustomTabsCallback;->onPostMessage(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1307
    :goto_0
    iget-object v3, p0, Lo/rate;->warmup:Lo/rate$ICustomTabsCallback;

    invoke-virtual {v3, p1}, Lo/rate$ICustomTabsCallback;->onNavigationEvent(Landroid/view/View;)I

    move-result p1

    if-lez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    mul-float p2, p2, p2

    mul-float p3, p3, p3

    add-float/2addr p2, p3

    .line 1310
    iget p1, p0, Lo/rate;->onMessageChannelReady:I

    mul-int p1, p1, p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_3

    return v2

    :cond_3
    return v0

    :cond_4
    if-eqz v1, :cond_6

    .line 1312
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lo/rate;->onMessageChannelReady:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_5

    return v2

    :cond_5
    return v0

    :cond_6
    if-eqz p1, :cond_7

    .line 1314
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lo/rate;->onMessageChannelReady:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method private onNavigationEvent(Landroid/view/View;IIII)I
    .locals 6

    .line 617
    iget v0, p0, Lo/rate;->onRelationshipValidationResult:F

    float-to-int v0, v0

    iget v1, p0, Lo/rate;->mayLaunchUrl:F

    float-to-int v1, v1

    .line 3670
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x0

    if-ge v2, v0, :cond_0

    const/4 p4, 0x0

    goto :goto_0

    :cond_0
    if-le v2, v1, :cond_2

    if-lez p4, :cond_1

    move p4, v1

    goto :goto_0

    :cond_1
    neg-int p4, v1

    .line 618
    :cond_2
    :goto_0
    iget v0, p0, Lo/rate;->onRelationshipValidationResult:F

    float-to-int v0, v0

    iget v1, p0, Lo/rate;->mayLaunchUrl:F

    float-to-int v1, v1

    .line 4670
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v0, :cond_3

    const/4 p5, 0x0

    goto :goto_1

    :cond_3
    if-le v2, v1, :cond_5

    if-lez p5, :cond_4

    move p5, v1

    goto :goto_1

    :cond_4
    neg-int p5, v1

    .line 619
    :cond_5
    :goto_1
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 620
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 621
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 622
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int v4, v2, v3

    add-int v5, v0, v1

    if-eqz p4, :cond_6

    int-to-float v0, v2

    int-to-float v2, v4

    goto :goto_2

    :cond_6
    int-to-float v0, v0

    int-to-float v2, v5

    :goto_2
    div-float/2addr v0, v2

    if-eqz p5, :cond_7

    int-to-float v1, v3

    int-to-float v2, v4

    goto :goto_3

    :cond_7
    int-to-float v1, v1

    int-to-float v2, v5

    :goto_3
    div-float/2addr v1, v2

    .line 631
    iget-object v2, p0, Lo/rate;->warmup:Lo/rate$ICustomTabsCallback;

    invoke-virtual {v2, p1}, Lo/rate$ICustomTabsCallback;->onPostMessage(Landroid/view/View;)I

    move-result v2

    invoke-direct {p0, p2, p4, v2}, Lo/rate;->extraCallback(III)I

    move-result p2

    .line 632
    iget-object p4, p0, Lo/rate;->warmup:Lo/rate$ICustomTabsCallback;

    invoke-virtual {p4, p1}, Lo/rate$ICustomTabsCallback;->onNavigationEvent(Landroid/view/View;)I

    move-result p1

    invoke-direct {p0, p3, p5, p1}, Lo/rate;->extraCallback(III)I

    move-result p1

    int-to-float p2, p2

    mul-float p2, p2, v0

    int-to-float p1, p1

    mul-float p1, p1, v1

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method

.method public static onNavigationEvent(Landroid/view/ViewGroup;FLo/rate$ICustomTabsCallback;)Lo/rate;
    .locals 2

    .line 2355
    new-instance v0, Lo/rate;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p2}, Lo/rate;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lo/rate$ICustomTabsCallback;)V

    .line 370
    iget p0, v0, Lo/rate;->onMessageChannelReady:I

    int-to-float p0, p0

    const/high16 p2, 0x3f800000    # 1.0f

    div-float/2addr p2, p1

    mul-float p0, p0, p2

    float-to-int p0, p0

    iput p0, v0, Lo/rate;->onMessageChannelReady:I

    return-object v0
.end method

.method private onNavigationEvent(I)Z
    .locals 3

    .line 10884
    iget v0, p0, Lo/rate;->onTransact:I

    const/4 v1, 0x1

    shl-int v2, v1, p1

    and-int/2addr v0, v2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 1511
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring pointerId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ViewDragHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    return v1
.end method

.method private onNavigationEvent(IIII)Z
    .locals 10

    .line 597
    iget-object v0, p0, Lo/rate;->newSession:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 598
    iget-object v0, p0, Lo/rate;->newSession:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr p1, v2

    sub-int/2addr p2, v3

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 604
    iget-object p1, p0, Lo/rate;->ICustomTabsService:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    const/4 p1, 0x0

    .line 605
    invoke-virtual {p0, p1}, Lo/rate;->ICustomTabsCallback(I)V

    return p1

    .line 609
    :cond_0
    iget-object v5, p0, Lo/rate;->newSession:Landroid/view/View;

    move-object v4, p0

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-direct/range {v4 .. v9}, Lo/rate;->onNavigationEvent(Landroid/view/View;IIII)I

    move-result v6

    .line 610
    iget-object v1, p0, Lo/rate;->ICustomTabsService:Landroid/widget/OverScroller;

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    const/4 p1, 0x2

    .line 612
    invoke-virtual {p0, p1}, Lo/rate;->ICustomTabsCallback(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onNavigationEvent(Landroid/view/View;I)Z
    .locals 2

    .line 908
    iget-object v0, p0, Lo/rate;->newSession:Landroid/view/View;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iget v0, p0, Lo/rate;->getInterfaceDescriptor:I

    if-ne v0, p2, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    .line 912
    iget-object v0, p0, Lo/rate;->warmup:Lo/rate$ICustomTabsCallback;

    invoke-virtual {v0, p1, p2}, Lo/rate$ICustomTabsCallback;->onMessageChannelReady(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 913
    iput p2, p0, Lo/rate;->getInterfaceDescriptor:I

    .line 914
    invoke-virtual {p0, p1, p2}, Lo/rate;->extraCallback(Landroid/view/View;I)V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private onPostMessage()V
    .locals 6

    .line 1413
    iget-object v0, p0, Lo/rate;->postMessage:Landroid/view/VelocityTracker;

    iget v1, p0, Lo/rate;->mayLaunchUrl:F

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1414
    iget-object v0, p0, Lo/rate;->postMessage:Landroid/view/VelocityTracker;

    iget v1, p0, Lo/rate;->getInterfaceDescriptor:I

    .line 1415
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    iget v1, p0, Lo/rate;->onRelationshipValidationResult:F

    iget v2, p0, Lo/rate;->mayLaunchUrl:F

    .line 8687
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v1, v3, v1

    if-gez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    cmpl-float v1, v3, v2

    if-lez v1, :cond_2

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    neg-float v0, v2

    .line 1417
    :cond_2
    :goto_0
    iget-object v1, p0, Lo/rate;->postMessage:Landroid/view/VelocityTracker;

    iget v2, p0, Lo/rate;->getInterfaceDescriptor:I

    .line 1418
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    iget v2, p0, Lo/rate;->onRelationshipValidationResult:F

    iget v3, p0, Lo/rate;->mayLaunchUrl:F

    .line 9687
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v2, v5, v2

    if-gez v2, :cond_3

    goto :goto_1

    :cond_3
    cmpl-float v2, v5, v3

    if-lez v2, :cond_5

    cmpl-float v1, v1, v4

    if-lez v1, :cond_4

    move v4, v3

    goto :goto_1

    :cond_4
    neg-float v4, v3

    goto :goto_1

    :cond_5
    move v4, v1

    .line 1420
    :goto_1
    invoke-direct {p0, v0, v4}, Lo/rate;->extraCallback(FF)V

    return-void
.end method

.method private onPostMessage(FFI)V
    .locals 2

    const/4 v0, 0x1

    .line 1256
    invoke-direct {p0, p1, p2, p3, v0}, Lo/rate;->onPostMessage(FFII)Z

    move-result v0

    const/4 v1, 0x4

    .line 1259
    invoke-direct {p0, p2, p1, p3, v1}, Lo/rate;->onPostMessage(FFII)Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x4

    :cond_0
    const/4 v1, 0x2

    .line 1262
    invoke-direct {p0, p1, p2, p3, v1}, Lo/rate;->onPostMessage(FFII)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    const/16 v1, 0x8

    .line 1265
    invoke-direct {p0, p2, p1, p3, v1}, Lo/rate;->onPostMessage(FFII)Z

    move-result p1

    if-eqz p1, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    if-eqz v0, :cond_3

    .line 1270
    iget-object p1, p0, Lo/rate;->updateVisuals:[I

    aget p2, p1, p3

    or-int/2addr p2, v0

    aput p2, p1, p3

    .line 1271
    iget-object p1, p0, Lo/rate;->warmup:Lo/rate$ICustomTabsCallback;

    invoke-virtual {p1, v0, p3}, Lo/rate$ICustomTabsCallback;->onNavigationEvent(II)V

    :cond_3
    return-void
.end method

.method private onPostMessage(FFII)Z
    .locals 3

    .line 1276
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 1277
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 1279
    iget-object v0, p0, Lo/rate;->ICustomTabsCallback$Stub$Proxy:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    const/4 v1, 0x0

    if-ne v0, p4, :cond_1

    iget v0, p0, Lo/rate;->asInterface:I

    and-int/2addr v0, p4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/rate;->requestPostMessageChannel:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    if-eq v0, p4, :cond_1

    iget-object v0, p0, Lo/rate;->updateVisuals:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    if-eq v0, p4, :cond_1

    iget v0, p0, Lo/rate;->onMessageChannelReady:I

    int-to-float v2, v0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    int-to-float v0, v0

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_0

    goto :goto_0

    .line 1289
    :cond_0
    iget-object p2, p0, Lo/rate;->updateVisuals:[I

    aget p2, p2, p3

    and-int/2addr p2, p4

    if-nez p2, :cond_1

    iget p2, p0, Lo/rate;->onMessageChannelReady:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public final ICustomTabsCallback(I)V
    .locals 2

    .line 888
    iget-object v0, p0, Lo/rate;->ICustomTabsService$Stub$Proxy:Landroid/view/ViewGroup;

    iget-object v1, p0, Lo/rate;->IPostMessageService$Stub:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 889
    iget v0, p0, Lo/rate;->onNavigationEvent:I

    if-eq v0, p1, :cond_0

    .line 890
    iput p1, p0, Lo/rate;->onNavigationEvent:I

    .line 891
    iget-object v0, p0, Lo/rate;->warmup:Lo/rate$ICustomTabsCallback;

    invoke-virtual {v0, p1}, Lo/rate$ICustomTabsCallback;->onNavigationEvent(I)V

    .line 892
    iget p1, p0, Lo/rate;->onNavigationEvent:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 893
    iput-object p1, p0, Lo/rate;->newSession:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public final ICustomTabsCallback()Z
    .locals 11

    .line 735
    iget v0, p0, Lo/rate;->onNavigationEvent:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 736
    iget-object v0, p0, Lo/rate;->ICustomTabsService:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    .line 737
    iget-object v3, p0, Lo/rate;->ICustomTabsService:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v3

    .line 738
    iget-object v4, p0, Lo/rate;->ICustomTabsService:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v10

    .line 739
    iget-object v4, p0, Lo/rate;->newSession:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v8, v3, v4

    .line 740
    iget-object v4, p0, Lo/rate;->newSession:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v9, v10, v4

    if-eqz v8, :cond_0

    .line 743
    iget-object v4, p0, Lo/rate;->newSession:Landroid/view/View;

    invoke-static {v4, v8}, Lo/unregisterCallbackListener;->asBinder(Landroid/view/View;I)V

    :cond_0
    if-eqz v9, :cond_1

    .line 746
    iget-object v4, p0, Lo/rate;->newSession:Landroid/view/View;

    invoke-static {v4, v9}, Lo/unregisterCallbackListener;->ICustomTabsCallback(Landroid/view/View;I)V

    :cond_1
    if-nez v8, :cond_2

    if-eqz v9, :cond_3

    .line 750
    :cond_2
    iget-object v4, p0, Lo/rate;->warmup:Lo/rate$ICustomTabsCallback;

    iget-object v5, p0, Lo/rate;->newSession:Landroid/view/View;

    move v6, v3

    move v7, v10

    invoke-virtual/range {v4 .. v9}, Lo/rate$ICustomTabsCallback;->onNavigationEvent(Landroid/view/View;IIII)V

    :cond_3
    if-eqz v0, :cond_4

    .line 753
    iget-object v4, p0, Lo/rate;->ICustomTabsService:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v4

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lo/rate;->ICustomTabsService:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v3

    if-ne v10, v3, :cond_4

    .line 756
    iget-object v0, p0, Lo/rate;->ICustomTabsService:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    const/4 v0, 0x0

    :cond_4
    if-nez v0, :cond_5

    .line 762
    iget-object v0, p0, Lo/rate;->ICustomTabsService$Stub$Proxy:Landroid/view/ViewGroup;

    iget-object v3, p0, Lo/rate;->IPostMessageService$Stub:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 769
    :cond_5
    iget v0, p0, Lo/rate;->onNavigationEvent:I

    if-ne v0, v2, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    return v1
.end method

.method public final extraCallback(II)Landroid/view/View;
    .locals 3

    .line 1487
    iget-object v0, p0, Lo/rate;->ICustomTabsService$Stub$Proxy:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1489
    iget-object v1, p0, Lo/rate;->ICustomTabsService$Stub$Proxy:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1490
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt p1, v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 1491
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt p2, v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge p2, v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final extraCallback()V
    .locals 2

    const/4 v0, -0x1

    .line 511
    iput v0, p0, Lo/rate;->getInterfaceDescriptor:I

    .line 2790
    iget-object v0, p0, Lo/rate;->onPostMessage:[F

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2793
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 2794
    iget-object v0, p0, Lo/rate;->extraCallback:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 2795
    iget-object v0, p0, Lo/rate;->ICustomTabsCallback:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 2796
    iget-object v0, p0, Lo/rate;->ICustomTabsCallback$Stub:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 2797
    iget-object v0, p0, Lo/rate;->ICustomTabsCallback$Stub$Proxy:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 2798
    iget-object v0, p0, Lo/rate;->updateVisuals:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 2799
    iget-object v0, p0, Lo/rate;->requestPostMessageChannel:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 2800
    iput v1, p0, Lo/rate;->onTransact:I

    .line 514
    :cond_0
    iget-object v0, p0, Lo/rate;->postMessage:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 515
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 516
    iput-object v0, p0, Lo/rate;->postMessage:Landroid/view/VelocityTracker;

    :cond_1
    return-void
.end method

.method public final extraCallback(Landroid/view/MotionEvent;)V
    .locals 14

    .line 1097
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1098
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-nez v0, :cond_0

    .line 1103
    invoke-virtual {p0}, Lo/rate;->extraCallback()V

    .line 1106
    :cond_0
    iget-object v2, p0, Lo/rate;->postMessage:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    .line 1107
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lo/rate;->postMessage:Landroid/view/VelocityTracker;

    .line 1109
    :cond_1
    iget-object v2, p0, Lo/rate;->postMessage:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    const/4 v3, 0x1

    if-eq v0, v3, :cond_14

    const/4 v4, 0x2

    if-eq v0, v4, :cond_c

    const/4 v4, 0x3

    if-eq v0, v4, :cond_a

    const/4 v4, 0x5

    if-eq v0, v4, :cond_6

    const/4 v4, 0x6

    if-eq v0, v4, :cond_2

    goto/16 :goto_3

    .line 1206
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 1207
    iget v1, p0, Lo/rate;->onNavigationEvent:I

    if-ne v1, v3, :cond_5

    iget v1, p0, Lo/rate;->getInterfaceDescriptor:I

    if-ne v0, v1, :cond_5

    .line 1210
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v1, :cond_4

    .line 1212
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 1213
    iget v5, p0, Lo/rate;->getInterfaceDescriptor:I

    if-eq v4, v5, :cond_3

    .line 1218
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 1219
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v5, v5

    float-to-int v6, v6

    .line 1220
    invoke-virtual {p0, v5, v6}, Lo/rate;->extraCallback(II)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lo/rate;->newSession:Landroid/view/View;

    if-ne v5, v6, :cond_3

    .line 1221
    invoke-direct {p0, v6, v4}, Lo/rate;->onNavigationEvent(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1222
    iget p1, p0, Lo/rate;->getInterfaceDescriptor:I

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, -0x1

    :goto_1
    if-ne p1, v3, :cond_5

    .line 1229
    invoke-direct {p0}, Lo/rate;->onPostMessage()V

    .line 1232
    :cond_5
    invoke-direct {p0, v0}, Lo/rate;->onMessageChannelReady(I)V

    return-void

    .line 1133
    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 1134
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 1135
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 1137
    invoke-direct {p0, v4, p1, v0}, Lo/rate;->ICustomTabsCallback(FFI)V

    .line 1140
    iget v1, p0, Lo/rate;->onNavigationEvent:I

    if-nez v1, :cond_8

    float-to-int v1, v4

    float-to-int p1, p1

    .line 1143
    invoke-virtual {p0, v1, p1}, Lo/rate;->extraCallback(II)Landroid/view/View;

    move-result-object p1

    .line 1144
    invoke-direct {p0, p1, v0}, Lo/rate;->onNavigationEvent(Landroid/view/View;I)Z

    .line 1146
    iget-object p1, p0, Lo/rate;->ICustomTabsCallback$Stub$Proxy:[I

    aget p1, p1, v0

    .line 1147
    iget v0, p0, Lo/rate;->asInterface:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_7

    .line 1148
    iget-object p1, p0, Lo/rate;->warmup:Lo/rate$ICustomTabsCallback;

    invoke-virtual {p1}, Lo/rate$ICustomTabsCallback;->ICustomTabsCallback()V

    :cond_7
    return-void

    :cond_8
    float-to-int v1, v4

    float-to-int p1, p1

    .line 7455
    iget-object v4, p0, Lo/rate;->newSession:Landroid/view/View;

    if-eqz v4, :cond_9

    .line 7471
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    if-lt v1, v5, :cond_9

    .line 7472
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    if-ge v1, v5, :cond_9

    .line 7473
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v1

    if-lt p1, v1, :cond_9

    .line 7474
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v1

    if-ge p1, v1, :cond_9

    const/4 v2, 0x1

    :cond_9
    if-eqz v2, :cond_17

    .line 1155
    iget-object p1, p0, Lo/rate;->newSession:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lo/rate;->onNavigationEvent(Landroid/view/View;I)Z

    return-void

    .line 1245
    :cond_a
    iget p1, p0, Lo/rate;->onNavigationEvent:I

    if-ne p1, v3, :cond_b

    const/4 p1, 0x0

    .line 1246
    invoke-direct {p0, p1, p1}, Lo/rate;->extraCallback(FF)V

    .line 1248
    :cond_b
    invoke-virtual {p0}, Lo/rate;->extraCallback()V

    goto/16 :goto_3

    .line 1161
    :cond_c
    iget v0, p0, Lo/rate;->onNavigationEvent:I

    if-ne v0, v3, :cond_11

    .line 1163
    iget v0, p0, Lo/rate;->getInterfaceDescriptor:I

    invoke-direct {p0, v0}, Lo/rate;->onNavigationEvent(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1165
    iget v0, p0, Lo/rate;->getInterfaceDescriptor:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1166
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 1167
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 1168
    iget-object v2, p0, Lo/rate;->ICustomTabsCallback:[F

    iget v3, p0, Lo/rate;->getInterfaceDescriptor:I

    aget v2, v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 1169
    iget-object v2, p0, Lo/rate;->ICustomTabsCallback$Stub:[F

    aget v2, v2, v3

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 1171
    iget-object v2, p0, Lo/rate;->newSession:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v3, p0, Lo/rate;->newSession:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v3, v0

    .line 8426
    iget-object v4, p0, Lo/rate;->newSession:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 8427
    iget-object v5, p0, Lo/rate;->newSession:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    if-eqz v1, :cond_d

    .line 8429
    iget-object v6, p0, Lo/rate;->warmup:Lo/rate$ICustomTabsCallback;

    iget-object v7, p0, Lo/rate;->newSession:Landroid/view/View;

    invoke-virtual {v6, v7, v2}, Lo/rate$ICustomTabsCallback;->onPostMessage(Landroid/view/View;I)I

    move-result v2

    .line 8430
    iget-object v6, p0, Lo/rate;->newSession:Landroid/view/View;

    sub-int v7, v2, v4

    invoke-static {v6, v7}, Lo/unregisterCallbackListener;->asBinder(Landroid/view/View;I)V

    :cond_d
    move v10, v2

    if-eqz v0, :cond_e

    .line 8433
    iget-object v2, p0, Lo/rate;->warmup:Lo/rate$ICustomTabsCallback;

    iget-object v6, p0, Lo/rate;->newSession:Landroid/view/View;

    invoke-virtual {v2, v6, v3}, Lo/rate$ICustomTabsCallback;->extraCallback(Landroid/view/View;I)I

    move-result v3

    .line 8434
    iget-object v2, p0, Lo/rate;->newSession:Landroid/view/View;

    sub-int v6, v3, v5

    invoke-static {v2, v6}, Lo/unregisterCallbackListener;->ICustomTabsCallback(Landroid/view/View;I)V

    :cond_e
    move v11, v3

    if-nez v1, :cond_f

    if-eqz v0, :cond_10

    :cond_f
    sub-int v12, v10, v4

    sub-int v13, v11, v5

    .line 8440
    iget-object v8, p0, Lo/rate;->warmup:Lo/rate$ICustomTabsCallback;

    iget-object v9, p0, Lo/rate;->newSession:Landroid/view/View;

    invoke-virtual/range {v8 .. v13}, Lo/rate$ICustomTabsCallback;->onNavigationEvent(Landroid/view/View;IIII)V

    .line 1173
    :cond_10
    invoke-direct {p0, p1}, Lo/rate;->ICustomTabsCallback(Landroid/view/MotionEvent;)V

    return-void

    .line 1176
    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    :goto_2
    if-ge v2, v0, :cond_13

    .line 1178
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1181
    invoke-direct {p0, v1}, Lo/rate;->onNavigationEvent(I)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1183
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 1184
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 1185
    iget-object v6, p0, Lo/rate;->onPostMessage:[F

    aget v6, v6, v1

    sub-float v6, v4, v6

    .line 1186
    iget-object v7, p0, Lo/rate;->extraCallback:[F

    aget v7, v7, v1

    sub-float v7, v5, v7

    .line 1188
    invoke-direct {p0, v6, v7, v1}, Lo/rate;->onPostMessage(FFI)V

    .line 1189
    iget v8, p0, Lo/rate;->onNavigationEvent:I

    if-eq v8, v3, :cond_13

    float-to-int v4, v4

    float-to-int v5, v5

    .line 1194
    invoke-virtual {p0, v4, v5}, Lo/rate;->extraCallback(II)Landroid/view/View;

    move-result-object v4

    .line 1195
    invoke-direct {p0, v4, v6, v7}, Lo/rate;->onMessageChannelReady(Landroid/view/View;FF)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1196
    invoke-direct {p0, v4, v1}, Lo/rate;->onNavigationEvent(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_13

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1200
    :cond_13
    invoke-direct {p0, p1}, Lo/rate;->ICustomTabsCallback(Landroid/view/MotionEvent;)V

    return-void

    .line 1237
    :cond_14
    iget p1, p0, Lo/rate;->onNavigationEvent:I

    if-ne p1, v3, :cond_15

    .line 1238
    invoke-direct {p0}, Lo/rate;->onPostMessage()V

    .line 1240
    :cond_15
    invoke-virtual {p0}, Lo/rate;->extraCallback()V

    return-void

    .line 1113
    :cond_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1115
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    float-to-int v2, v0

    float-to-int v3, v1

    .line 1116
    invoke-virtual {p0, v2, v3}, Lo/rate;->extraCallback(II)Landroid/view/View;

    move-result-object v2

    .line 1118
    invoke-direct {p0, v0, v1, p1}, Lo/rate;->ICustomTabsCallback(FFI)V

    .line 1123
    invoke-direct {p0, v2, p1}, Lo/rate;->onNavigationEvent(Landroid/view/View;I)Z

    .line 1125
    iget-object v0, p0, Lo/rate;->ICustomTabsCallback$Stub$Proxy:[I

    aget p1, v0, p1

    .line 1126
    iget v0, p0, Lo/rate;->asInterface:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_17

    .line 1127
    iget-object p1, p0, Lo/rate;->warmup:Lo/rate$ICustomTabsCallback;

    invoke-virtual {p1}, Lo/rate$ICustomTabsCallback;->ICustomTabsCallback()V

    :cond_17
    :goto_3
    return-void
.end method

.method public final extraCallback(Landroid/view/View;I)V
    .locals 2

    .line 471
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lo/rate;->ICustomTabsService$Stub$Proxy:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_0

    .line 476
    iput-object p1, p0, Lo/rate;->newSession:Landroid/view/View;

    .line 477
    iput p2, p0, Lo/rate;->getInterfaceDescriptor:I

    .line 478
    iget-object v0, p0, Lo/rate;->warmup:Lo/rate$ICustomTabsCallback;

    invoke-virtual {v0, p1, p2}, Lo/rate$ICustomTabsCallback;->ICustomTabsCallback(Landroid/view/View;I)V

    const/4 p1, 0x1

    .line 479
    invoke-virtual {p0, p1}, Lo/rate;->ICustomTabsCallback(I)V

    return-void

    .line 472
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lo/rate;->ICustomTabsService$Stub$Proxy:Landroid/view/ViewGroup;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onPostMessage(II)Z
    .locals 3

    .line 577
    iget-boolean v0, p0, Lo/rate;->extraCommand:Z

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lo/rate;->postMessage:Landroid/view/VelocityTracker;

    iget v1, p0, Lo/rate;->getInterfaceDescriptor:I

    .line 583
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lo/rate;->postMessage:Landroid/view/VelocityTracker;

    iget v2, p0, Lo/rate;->getInterfaceDescriptor:I

    .line 584
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    float-to-int v1, v1

    .line 582
    invoke-direct {p0, p1, p2, v0, v1}, Lo/rate;->onNavigationEvent(IIII)Z

    move-result p1

    return p1

    .line 578
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onPostMessage(Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 963
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 964
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    if-nez v2, :cond_0

    .line 969
    invoke-virtual/range {p0 .. p0}, Lo/rate;->extraCallback()V

    .line 972
    :cond_0
    iget-object v4, v0, Lo/rate;->postMessage:Landroid/view/VelocityTracker;

    if-nez v4, :cond_1

    .line 973
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, v0, Lo/rate;->postMessage:Landroid/view/VelocityTracker;

    .line 975
    :cond_1
    iget-object v4, v0, Lo/rate;->postMessage:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v4, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_c

    if-eq v2, v6, :cond_b

    if-eq v2, v4, :cond_5

    const/4 v7, 0x3

    if-eq v2, v7, :cond_b

    const/4 v7, 0x5

    if-eq v2, v7, :cond_3

    const/4 v4, 0x6

    if-eq v2, v4, :cond_2

    goto/16 :goto_2

    .line 1075
    :cond_2
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1076
    invoke-direct {v0, v1}, Lo/rate;->onMessageChannelReady(I)V

    goto/16 :goto_2

    .line 999
    :cond_3
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 1000
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 1001
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 1003
    invoke-direct {v0, v7, v1, v2}, Lo/rate;->ICustomTabsCallback(FFI)V

    .line 1006
    iget v3, v0, Lo/rate;->onNavigationEvent:I

    if-nez v3, :cond_4

    .line 1007
    iget-object v1, v0, Lo/rate;->ICustomTabsCallback$Stub$Proxy:[I

    aget v1, v1, v2

    .line 1008
    iget v2, v0, Lo/rate;->asInterface:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_e

    .line 1009
    iget-object v1, v0, Lo/rate;->warmup:Lo/rate$ICustomTabsCallback;

    invoke-virtual {v1}, Lo/rate$ICustomTabsCallback;->ICustomTabsCallback()V

    goto/16 :goto_2

    :cond_4
    if-ne v3, v4, :cond_e

    float-to-int v3, v7

    float-to-int v1, v1

    .line 1013
    invoke-virtual {v0, v3, v1}, Lo/rate;->extraCallback(II)Landroid/view/View;

    move-result-object v1

    .line 1014
    iget-object v3, v0, Lo/rate;->newSession:Landroid/view/View;

    if-ne v1, v3, :cond_e

    .line 1015
    invoke-direct {v0, v1, v2}, Lo/rate;->onNavigationEvent(Landroid/view/View;I)Z

    goto/16 :goto_2

    .line 1022
    :cond_5
    iget-object v2, v0, Lo/rate;->onPostMessage:[F

    if-eqz v2, :cond_e

    iget-object v2, v0, Lo/rate;->extraCallback:[F

    if-eqz v2, :cond_e

    .line 1025
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_a

    .line 1027
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 1030
    invoke-direct {v0, v4}, Lo/rate;->onNavigationEvent(I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1032
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 1033
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 1034
    iget-object v9, v0, Lo/rate;->onPostMessage:[F

    aget v9, v9, v4

    sub-float v9, v7, v9

    .line 1035
    iget-object v10, v0, Lo/rate;->extraCallback:[F

    aget v10, v10, v4

    sub-float v10, v8, v10

    float-to-int v7, v7

    float-to-int v8, v8

    .line 1037
    invoke-virtual {v0, v7, v8}, Lo/rate;->extraCallback(II)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 1038
    invoke-direct {v0, v7, v9, v10}, Lo/rate;->onMessageChannelReady(Landroid/view/View;FF)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    goto :goto_1

    :cond_6
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_8

    .line 1045
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v11

    float-to-int v12, v9

    add-int/2addr v12, v11

    .line 1047
    iget-object v13, v0, Lo/rate;->warmup:Lo/rate$ICustomTabsCallback;

    invoke-virtual {v13, v7, v12}, Lo/rate$ICustomTabsCallback;->onPostMessage(Landroid/view/View;I)I

    move-result v12

    .line 1049
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v13

    float-to-int v14, v10

    add-int/2addr v14, v13

    .line 1051
    iget-object v15, v0, Lo/rate;->warmup:Lo/rate$ICustomTabsCallback;

    invoke-virtual {v15, v7, v14}, Lo/rate$ICustomTabsCallback;->extraCallback(Landroid/view/View;I)I

    move-result v14

    .line 1053
    iget-object v15, v0, Lo/rate;->warmup:Lo/rate$ICustomTabsCallback;

    invoke-virtual {v15, v7}, Lo/rate$ICustomTabsCallback;->onPostMessage(Landroid/view/View;)I

    move-result v15

    .line 1054
    iget-object v5, v0, Lo/rate;->warmup:Lo/rate$ICustomTabsCallback;

    invoke-virtual {v5, v7}, Lo/rate$ICustomTabsCallback;->onNavigationEvent(Landroid/view/View;)I

    move-result v5

    if-eqz v15, :cond_7

    if-lez v15, :cond_8

    if-ne v12, v11, :cond_8

    :cond_7
    if-eqz v5, :cond_a

    if-lez v5, :cond_8

    if-eq v14, v13, :cond_a

    .line 1060
    :cond_8
    invoke-direct {v0, v9, v10, v4}, Lo/rate;->onPostMessage(FFI)V

    .line 1061
    iget v5, v0, Lo/rate;->onNavigationEvent:I

    if-eq v5, v6, :cond_a

    if-eqz v8, :cond_9

    .line 1066
    invoke-direct {v0, v7, v4}, Lo/rate;->onNavigationEvent(Landroid/view/View;I)Z

    move-result v4

    if-nez v4, :cond_a

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1070
    :cond_a
    invoke-direct/range {p0 .. p1}, Lo/rate;->ICustomTabsCallback(Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 1082
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lo/rate;->extraCallback()V

    goto :goto_2

    .line 979
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 980
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/4 v5, 0x0

    .line 981
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 982
    invoke-direct {v0, v2, v3, v1}, Lo/rate;->ICustomTabsCallback(FFI)V

    float-to-int v2, v2

    float-to-int v3, v3

    .line 984
    invoke-virtual {v0, v2, v3}, Lo/rate;->extraCallback(II)Landroid/view/View;

    move-result-object v2

    .line 987
    iget-object v3, v0, Lo/rate;->newSession:Landroid/view/View;

    if-ne v2, v3, :cond_d

    iget v3, v0, Lo/rate;->onNavigationEvent:I

    if-ne v3, v4, :cond_d

    .line 988
    invoke-direct {v0, v2, v1}, Lo/rate;->onNavigationEvent(Landroid/view/View;I)Z

    .line 991
    :cond_d
    iget-object v2, v0, Lo/rate;->ICustomTabsCallback$Stub$Proxy:[I

    aget v1, v2, v1

    .line 992
    iget v2, v0, Lo/rate;->asInterface:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_e

    .line 993
    iget-object v1, v0, Lo/rate;->warmup:Lo/rate$ICustomTabsCallback;

    invoke-virtual {v1}, Lo/rate$ICustomTabsCallback;->ICustomTabsCallback()V

    .line 1087
    :cond_e
    :goto_2
    iget v1, v0, Lo/rate;->onNavigationEvent:I

    if-ne v1, v6, :cond_f

    return v6

    :cond_f
    const/4 v1, 0x0

    return v1
.end method

.method public final onPostMessage(Landroid/view/View;II)Z
    .locals 0

    .line 552
    iput-object p1, p0, Lo/rate;->newSession:Landroid/view/View;

    const/4 p1, -0x1

    .line 553
    iput p1, p0, Lo/rate;->getInterfaceDescriptor:I

    const/4 p1, 0x0

    .line 555
    invoke-direct {p0, p2, p3, p1, p1}, Lo/rate;->onNavigationEvent(IIII)Z

    move-result p1

    if-nez p1, :cond_0

    .line 556
    iget p2, p0, Lo/rate;->onNavigationEvent:I

    if-nez p2, :cond_0

    iget-object p2, p0, Lo/rate;->newSession:Landroid/view/View;

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 559
    iput-object p2, p0, Lo/rate;->newSession:Landroid/view/View;

    :cond_0
    return p1
.end method
