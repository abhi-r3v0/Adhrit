.class public Lo/Cta;
.super Lo/HeaderData;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Cta$onPostMessage;,
        Lo/Cta$ICustomTabsCallback;,
        Lo/Cta$extraCallback;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:J

.field private final ICustomTabsCallback$Stub:J

.field private ICustomTabsCallback$Stub$Proxy:F

.field private final ICustomTabsService:[I

.field private final asBinder:J

.field private final asInterface:J

.field private final extraCallback:Lo/Cta$ICustomTabsCallback;

.field private extraCommand:I

.field private getInterfaceDescriptor:Lo/HeaderJsonAdapter;

.field private final newSession:[Lo/p$a;

.field private final onRelationshipValidationResult:F

.field private final onTransact:Lo/CheckoutBuilder$PolingRemoteConfig;

.field private postMessage:J

.field private updateVisuals:I

.field private final warmup:[I


# direct methods
.method private constructor <init>(Lo/getJuspayUpi;[ILo/Cta$ICustomTabsCallback;JJJFJLo/CheckoutBuilder$PolingRemoteConfig;)V
    .locals 0

    .line 413
    invoke-direct {p0, p1, p2}, Lo/HeaderData;-><init>(Lo/getJuspayUpi;[I)V

    .line 414
    iput-object p3, p0, Lo/Cta;->extraCallback:Lo/Cta$ICustomTabsCallback;

    const-wide/16 p1, 0x3e8

    mul-long p4, p4, p1

    .line 415
    iput-wide p4, p0, Lo/Cta;->ICustomTabsCallback:J

    mul-long p6, p6, p1

    .line 416
    iput-wide p6, p0, Lo/Cta;->asBinder:J

    mul-long p8, p8, p1

    .line 417
    iput-wide p8, p0, Lo/Cta;->asInterface:J

    .line 418
    iput p10, p0, Lo/Cta;->onRelationshipValidationResult:F

    .line 420
    iput-wide p11, p0, Lo/Cta;->ICustomTabsCallback$Stub:J

    .line 421
    iput-object p13, p0, Lo/Cta;->onTransact:Lo/CheckoutBuilder$PolingRemoteConfig;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 422
    iput p1, p0, Lo/Cta;->ICustomTabsCallback$Stub$Proxy:F

    const/4 p1, 0x0

    .line 423
    iput p1, p0, Lo/Cta;->updateVisuals:I

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    .line 424
    iput-wide p2, p0, Lo/Cta;->postMessage:J

    .line 425
    sget-object p2, Lo/HeaderJsonAdapter;->onNavigationEvent:Lo/HeaderJsonAdapter;

    iput-object p2, p0, Lo/Cta;->getInterfaceDescriptor:Lo/HeaderJsonAdapter;

    .line 426
    iget p2, p0, Lo/HeaderData;->onMessageChannelReady:I

    new-array p2, p2, [Lo/p$a;

    iput-object p2, p0, Lo/Cta;->newSession:[Lo/p$a;

    .line 427
    iget p2, p0, Lo/HeaderData;->onMessageChannelReady:I

    new-array p2, p2, [I

    iput-object p2, p0, Lo/Cta;->warmup:[I

    .line 428
    iget p2, p0, Lo/HeaderData;->onMessageChannelReady:I

    new-array p2, p2, [I

    iput-object p2, p0, Lo/Cta;->ICustomTabsService:[I

    .line 429
    :goto_0
    iget p2, p0, Lo/HeaderData;->onMessageChannelReady:I

    if-ge p1, p2, :cond_0

    .line 431
    invoke-virtual {p0, p1}, Lo/HeaderData;->onNavigationEvent(I)Lo/p$a;

    move-result-object p2

    .line 432
    iget-object p3, p0, Lo/Cta;->newSession:[Lo/p$a;

    aput-object p2, p3, p1

    .line 433
    iget-object p2, p0, Lo/Cta;->warmup:[I

    aget-object p3, p3, p1

    iget p3, p3, Lo/p$a;->extraCallback:I

    aput p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lo/getJuspayUpi;[ILo/Cta$ICustomTabsCallback;JJJFJLo/CheckoutBuilder$PolingRemoteConfig;Lo/Cta$2;)V
    .locals 0

    .line 37
    invoke-direct/range {p0 .. p13}, Lo/Cta;-><init>(Lo/getJuspayUpi;[ILo/Cta$ICustomTabsCallback;JJJFJLo/CheckoutBuilder$PolingRemoteConfig;)V

    return-void
.end method

.method private static ICustomTabsCallback([[D)[[D
    .locals 14

    .line 773
    array-length v0, p0

    new-array v0, v0, [[D

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 774
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 775
    aget-object v3, p0, v2

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    new-array v3, v3, [D

    aput-object v3, v0, v2

    .line 776
    aget-object v3, v0, v2

    array-length v3, v3

    if-eqz v3, :cond_1

    .line 779
    aget-object v3, p0, v2

    aget-object v4, p0, v2

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget-wide v4, v3, v4

    aget-object v3, p0, v2

    aget-wide v6, v3, v1

    sub-double/2addr v4, v6

    const/4 v3, 0x0

    .line 780
    :goto_1
    aget-object v6, p0, v2

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v3, v6, :cond_1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 781
    aget-object v8, p0, v2

    aget-wide v9, v8, v3

    aget-object v8, p0, v2

    add-int/lit8 v11, v3, 0x1

    aget-wide v12, v8, v11

    add-double/2addr v9, v12

    mul-double v9, v9, v6

    .line 782
    aget-object v6, v0, v2

    const-wide/16 v7, 0x0

    cmpl-double v12, v4, v7

    if-nez v12, :cond_0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    goto :goto_2

    :cond_0
    aget-object v7, p0, v2

    aget-wide v12, v7, v1

    sub-double/2addr v9, v12

    div-double v7, v9, v4

    :goto_2
    aput-wide v7, v6, v3

    move v3, v11

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static extraCallback([[J)[[D
    .locals 10

    .line 756
    array-length v0, p0

    new-array v0, v0, [[D

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 757
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 758
    aget-object v3, p0, v2

    array-length v3, v3

    new-array v3, v3, [D

    aput-object v3, v0, v2

    const/4 v3, 0x0

    .line 759
    :goto_1
    aget-object v4, p0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 760
    aget-object v4, v0, v2

    aget-object v5, p0, v2

    aget-wide v6, v5, v3

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    const-wide/16 v5, 0x0

    goto :goto_2

    :cond_0
    aget-object v5, p0, v2

    aget-wide v6, v5, v3

    long-to-double v5, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    :goto_2
    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static onMessageChannelReady([[[JI[[J[I)V
    .locals 8

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 810
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_0

    .line 811
    aget-object v4, p0, v3

    aget-object v4, v4, p1

    aget-object v5, p2, v3

    aget v6, p3, v3

    aget-wide v6, v5, v6

    const/4 v5, 0x1

    aput-wide v6, v4, v5

    .line 812
    aget-object v4, p0, v3

    aget-object v4, v4, p1

    aget-wide v5, v4, v5

    add-long/2addr v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 814
    :cond_0
    array-length p2, p0

    const/4 p3, 0x0

    :goto_1
    if-ge p3, p2, :cond_1

    aget-object v3, p0, p3

    .line 815
    aget-object v3, v3, p1

    aput-wide v1, v3, v0

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method static synthetic onMessageChannelReady([[J)[[[J
    .locals 0

    .line 37
    invoke-static {p0}, Lo/Cta;->onPostMessage([[J)[[[J

    move-result-object p0

    return-object p0
.end method

.method private onPostMessage(J[I)I
    .locals 9

    .line 634
    iget-object v0, p0, Lo/Cta;->extraCallback:Lo/Cta$ICustomTabsCallback;

    invoke-interface {v0}, Lo/Cta$ICustomTabsCallback;->ICustomTabsCallback()J

    move-result-wide v7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 636
    :goto_0
    iget v2, p0, Lo/HeaderData;->onMessageChannelReady:I

    if-ge v0, v2, :cond_3

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, p1, v2

    if-eqz v4, :cond_0

    .line 637
    invoke-virtual {p0, v0, p1, p2}, Lo/Cta;->onMessageChannelReady(IJ)Z

    move-result v2

    if-nez v2, :cond_2

    .line 638
    :cond_0
    invoke-virtual {p0, v0}, Lo/HeaderData;->onNavigationEvent(I)Lo/p$a;

    move-result-object v2

    .line 639
    aget v3, p3, v0

    iget v4, p0, Lo/Cta;->ICustomTabsCallback$Stub$Proxy:F

    move-object v1, p0

    move-wide v5, v7

    invoke-virtual/range {v1 .. v6}, Lo/Cta;->onMessageChannelReady(Lo/p$a;IFJ)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    move v1, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private static onPostMessage([[D)I
    .locals 4

    .line 792
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p0, v1

    .line 793
    array-length v3, v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method private onPostMessage(J)J
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 650
    iget-wide v0, p0, Lo/Cta;->ICustomTabsCallback:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    long-to-float p1, p1

    .line 652
    iget p2, p0, Lo/Cta;->onRelationshipValidationResult:F

    mul-float p1, p1, p2

    float-to-long p1, p1

    return-wide p1

    :cond_1
    iget-wide p1, p0, Lo/Cta;->ICustomTabsCallback:J

    return-wide p1
.end method

.method private static onPostMessage([[J)[[[J
    .locals 17

    move-object/from16 v0, p0

    .line 721
    invoke-static/range {p0 .. p0}, Lo/Cta;->extraCallback([[J)[[D

    move-result-object v1

    .line 722
    invoke-static {v1}, Lo/Cta;->ICustomTabsCallback([[D)[[D

    move-result-object v2

    .line 727
    invoke-static {v2}, Lo/Cta;->onPostMessage([[D)I

    move-result v3

    const/4 v4, 0x3

    add-int/2addr v3, v4

    .line 728
    array-length v5, v1

    new-array v4, v4, [I

    const/4 v6, 0x2

    aput v6, v4, v6

    const/4 v7, 0x1

    aput v3, v4, v7

    const/4 v8, 0x0

    aput v5, v4, v8

    const-class v5, J

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[[J

    .line 729
    array-length v5, v1

    new-array v5, v5, [I

    .line 730
    invoke-static {v4, v7, v0, v5}, Lo/Cta;->onMessageChannelReady([[[JI[[J[I)V

    const/4 v9, 0x2

    :goto_0
    add-int/lit8 v10, v3, -0x1

    if-ge v9, v10, :cond_2

    const-wide v10, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 734
    :goto_1
    array-length v14, v1

    if-ge v12, v14, :cond_1

    .line 735
    aget v14, v5, v12

    add-int/2addr v14, v7

    aget-object v15, v1, v12

    array-length v15, v15

    if-eq v14, v15, :cond_0

    .line 738
    aget-object v14, v2, v12

    aget v15, v5, v12

    aget-wide v15, v14, v15

    cmpg-double v14, v15, v10

    if-gez v14, :cond_0

    move v13, v12

    move-wide v10, v15

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 744
    :cond_1
    aget v10, v5, v13

    add-int/2addr v10, v7

    aput v10, v5, v13

    .line 745
    invoke-static {v4, v9, v0, v5}, Lo/Cta;->onMessageChannelReady([[[JI[[J[I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 747
    :cond_2
    array-length v0, v4

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_3

    aget-object v2, v4, v1

    .line 748
    aget-object v5, v2, v10

    add-int/lit8 v9, v3, -0x2

    aget-object v11, v2, v9

    aget-wide v12, v11, v8

    const-wide/16 v14, 0x2

    mul-long v12, v12, v14

    aput-wide v12, v5, v8

    .line 749
    aget-object v5, v2, v10

    aget-object v2, v2, v9

    aget-wide v11, v2, v7

    mul-long v11, v11, v14

    aput-wide v11, v5, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-object v4
.end method


# virtual methods
.method public ICustomTabsCallback(J)V
    .locals 1

    .line 456
    iget-object v0, p0, Lo/Cta;->extraCallback:Lo/Cta$ICustomTabsCallback;

    check-cast v0, Lo/Cta$onPostMessage;

    .line 457
    invoke-virtual {v0, p1, p2}, Lo/Cta$onPostMessage;->onMessageChannelReady(J)V

    return-void
.end method

.method public extraCallback()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public extraCallback(JJJLjava/util/List;[Lo/component2;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/List<",
            "+",
            "Lo/getMerchantId;",
            ">;[",
            "Lo/component2;",
            ")V"
        }
    .end annotation

    .line 488
    iget-object p1, p0, Lo/Cta;->onTransact:Lo/CheckoutBuilder$PolingRemoteConfig;

    invoke-interface {p1}, Lo/CheckoutBuilder$PolingRemoteConfig;->onNavigationEvent()J

    move-result-wide p1

    .line 491
    iget-object v0, p0, Lo/Cta;->getInterfaceDescriptor:Lo/HeaderJsonAdapter;

    iget-object v1, p0, Lo/Cta;->newSession:[Lo/p$a;

    iget-object v2, p0, Lo/Cta;->ICustomTabsService:[I

    invoke-interface {v0, v1, p7, p8, v2}, Lo/HeaderJsonAdapter;->extraCallback([Lo/p$a;Ljava/util/List;[Lo/component2;[I)[I

    .line 494
    iget p7, p0, Lo/Cta;->updateVisuals:I

    if-nez p7, :cond_0

    const/4 p3, 0x1

    .line 495
    iput p3, p0, Lo/Cta;->updateVisuals:I

    .line 496
    iget-object p3, p0, Lo/Cta;->ICustomTabsService:[I

    invoke-direct {p0, p1, p2, p3}, Lo/Cta;->onPostMessage(J[I)I

    move-result p1

    iput p1, p0, Lo/Cta;->extraCommand:I

    return-void

    .line 501
    :cond_0
    iget p7, p0, Lo/Cta;->extraCommand:I

    .line 502
    iget-object p8, p0, Lo/Cta;->ICustomTabsService:[I

    invoke-direct {p0, p1, p2, p8}, Lo/Cta;->onPostMessage(J[I)I

    move-result p8

    iput p8, p0, Lo/Cta;->extraCommand:I

    if-ne p8, p7, :cond_1

    return-void

    .line 507
    :cond_1
    invoke-virtual {p0, p7, p1, p2}, Lo/Cta;->onMessageChannelReady(IJ)Z

    move-result p1

    if-nez p1, :cond_3

    .line 509
    invoke-virtual {p0, p7}, Lo/HeaderData;->onNavigationEvent(I)Lo/p$a;

    move-result-object p1

    .line 510
    iget p2, p0, Lo/Cta;->extraCommand:I

    invoke-virtual {p0, p2}, Lo/HeaderData;->onNavigationEvent(I)Lo/p$a;

    move-result-object p2

    .line 511
    iget p8, p2, Lo/p$a;->extraCallback:I

    iget v0, p1, Lo/p$a;->extraCallback:I

    if-le p8, v0, :cond_2

    .line 512
    invoke-direct {p0, p5, p6}, Lo/Cta;->onPostMessage(J)J

    move-result-wide p5

    cmp-long p8, p3, p5

    if-gez p8, :cond_2

    .line 515
    iput p7, p0, Lo/Cta;->extraCommand:I

    goto :goto_0

    .line 516
    :cond_2
    iget p2, p2, Lo/p$a;->extraCallback:I

    iget p1, p1, Lo/p$a;->extraCallback:I

    if-ge p2, p1, :cond_3

    iget-wide p1, p0, Lo/Cta;->asBinder:J

    cmp-long p5, p3, p1

    if-ltz p5, :cond_3

    .line 520
    iput p7, p0, Lo/Cta;->extraCommand:I

    .line 524
    :cond_3
    :goto_0
    iget p1, p0, Lo/Cta;->extraCommand:I

    if-eq p1, p7, :cond_4

    const/4 p1, 0x3

    .line 525
    iput p1, p0, Lo/Cta;->updateVisuals:I

    :cond_4
    return-void
.end method

.method public onMessageChannelReady()I
    .locals 1

    .line 536
    iget v0, p0, Lo/Cta;->updateVisuals:I

    return v0
.end method

.method public onMessageChannelReady(F)V
    .locals 0

    .line 478
    iput p1, p0, Lo/Cta;->ICustomTabsCallback$Stub$Proxy:F

    return-void
.end method

.method protected onMessageChannelReady(Lo/p$a;IFJ)Z
    .locals 0

    int-to-float p1, p2

    mul-float p1, p1, p3

    .line 600
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-long p1, p1

    cmp-long p3, p1, p4

    if-gtz p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onNavigationEvent()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 473
    iput-wide v0, p0, Lo/Cta;->postMessage:J

    return-void
.end method

.method public onNavigationEvent([[J)V
    .locals 1

    .line 467
    iget-object v0, p0, Lo/Cta;->extraCallback:Lo/Cta$ICustomTabsCallback;

    check-cast v0, Lo/Cta$onPostMessage;

    .line 468
    invoke-virtual {v0, p1}, Lo/Cta$onPostMessage;->onPostMessage([[J)V

    return-void
.end method

.method public onPostMessage()I
    .locals 1

    .line 531
    iget v0, p0, Lo/Cta;->extraCommand:I

    return v0
.end method

.method public onPostMessage(Lo/HeaderJsonAdapter;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lo/Cta;->getInterfaceDescriptor:Lo/HeaderJsonAdapter;

    return-void
.end method
