.class final Lo/writeSessionAppClsId$onMessageChannelReady;
.super Lo/writeSessionAppClsId;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeSessionAppClsId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/writeSessionAppClsId$onMessageChannelReady$onNavigationEvent;
    }
.end annotation


# instance fields
.field private ICustomTabsCallback$Stub:I

.field private ICustomTabsCallback$Stub$Proxy:I

.field private ICustomTabsService:I

.field private asBinder:I

.field private asInterface:I

.field private final extraCallback:Ljava/io/InputStream;

.field private onRelationshipValidationResult:I

.field private final onTransact:[B


# direct methods
.method private constructor <init>(Ljava/io/InputStream;I)V
    .locals 2

    const/4 v0, 0x0

    .line 2048
    invoke-direct {p0, v0}, Lo/writeSessionAppClsId;-><init>(B)V

    const v1, 0x7fffffff

    .line 2046
    iput v1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:I

    const-string v1, "input"

    .line 2049
    invoke-static {p1, v1}, Lo/getEventLogSize;->extraCallback(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2050
    iput-object p1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->extraCallback:Ljava/io/InputStream;

    .line 2051
    new-array p1, p2, [B

    iput-object p1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onTransact:[B

    .line 2052
    iput v0, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onRelationshipValidationResult:I

    .line 2053
    iput v0, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    .line 2054
    iput v0, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->ICustomTabsService:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;IB)V
    .locals 0

    const/16 p2, 0x1000

    .line 2027
    invoke-direct {p0, p1, p2}, Lo/writeSessionAppClsId$onMessageChannelReady;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method private ICustomTabsCallback$Stub(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2948
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-lez p1, :cond_2

    const/16 v1, 0x1000

    .line 2952
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    .line 2955
    iget-object v4, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->extraCallback:Ljava/io/InputStream;

    sub-int v5, v1, v3

    invoke-virtual {v4, v2, v3, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 2959
    iget v5, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->ICustomTabsService:I

    add-int/2addr v5, v4

    iput v5, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->ICustomTabsService:I

    add-int/2addr v3, v4

    goto :goto_1

    .line 2957
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_1
    sub-int/2addr p1, v1

    .line 2963
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private ICustomTabsCallback$Stub$Proxy(I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_5

    .line 3031
    iget v0, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->ICustomTabsService:I

    iget v1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    add-int v2, v0, v1

    add-int/2addr v2, p1

    iget v3, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:I

    if-gt v2, v3, :cond_4

    add-int/2addr v0, v1

    .line 3041
    iput v0, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->ICustomTabsService:I

    .line 3042
    iget v0, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onRelationshipValidationResult:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 3043
    iput v1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onRelationshipValidationResult:I

    .line 3044
    iput v1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    :goto_0
    if-ge v0, p1, :cond_1

    sub-int v1, p1, v0

    .line 3049
    :try_start_0
    iget-object v2, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->extraCallback:Ljava/io/InputStream;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-ltz v7, :cond_0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    if-eqz v7, :cond_1

    long-to-int v2, v1

    add-int/2addr v0, v2

    goto :goto_0

    .line 3051
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->extraCallback:Ljava/io/InputStream;

    .line 3052
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "#skip returned invalid result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nThe InputStream implementation is buggy."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 3066
    iget v1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->ICustomTabsService:I

    add-int/2addr v1, v0

    iput v1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->ICustomTabsService:I

    .line 3067
    invoke-direct {p0}, Lo/writeSessionAppClsId$onMessageChannelReady;->INotificationSideChannel()V

    .line 3068
    throw p1

    .line 3066
    :cond_1
    iget v1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->ICustomTabsService:I

    add-int/2addr v1, v0

    iput v1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->ICustomTabsService:I

    .line 3067
    invoke-direct {p0}, Lo/writeSessionAppClsId$onMessageChannelReady;->INotificationSideChannel()V

    if-ge v0, p1, :cond_3

    .line 3072
    iget v0, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onRelationshipValidationResult:I

    iget v1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    sub-int v1, v0, v1

    .line 3073
    iput v0, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    const/4 v0, 0x1

    .line 3077
    invoke-direct {p0, v0}, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface(I)V

    :goto_1
    sub-int v2, p1, v1

    .line 3078
    iget v3, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onRelationshipValidationResult:I

    if-le v2, v3, :cond_2

    add-int/2addr v1, v3

    .line 3080
    iput v3, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    .line 3081
    invoke-direct {p0, v0}, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface(I)V

    goto :goto_1

    .line 3084
    :cond_2
    iput v2, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    :cond_3
    return-void

    :cond_4
    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    .line 3033
    invoke-direct {p0, v3}, Lo/writeSessionAppClsId$onMessageChannelReady;->getInterfaceDescriptor(I)V

    .line 3035
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 3028
    :cond_5
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onNavigationEvent()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method private ICustomTabsService$Stub()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2630
    iget v0, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    .line 2632
    iget v1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onRelationshipValidationResult:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 2633
    invoke-direct {p0, v2}, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface(I)V

    .line 2634
    iget v0, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    .line 2637
    :cond_0
    iget-object v1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onTransact:[B

    add-int/lit8 v3, v0, 0x8

    .line 2638
    iput v3, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    .line 2639
    aget-byte v3, v1, v0

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x10

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x18

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x4

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x20

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x28

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x30

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private INotificationSideChannel()V
    .locals 3

    .line 2679
    iget v0, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onRelationshipValidationResult:I

    iget v1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asBinder:I

    add-int/2addr v0, v1

    iput v0, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onRelationshipValidationResult:I

    .line 2680
    iget v1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->ICustomTabsService:I

    add-int/2addr v1, v0

    .line 2681
    iget v2, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:I

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    .line 2683
    iput v1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asBinder:I

    sub-int/2addr v0, v1

    .line 2684
    iput v0, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onRelationshipValidationResult:I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2686
    iput v0, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asBinder:I

    return-void
.end method

.method private IPostMessageService()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2461
    iget v0, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    .line 2463
    iget v1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onRelationshipValidationResult:I

    if-eq v1, v0, :cond_6

    .line 2467
    iget-object v2, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onTransact:[B

    add-int/lit8 v3, v0, 0x1

    .line 2469
    aget-byte v0, v2, v0

    if-ltz v0, :cond_0

    .line 2470
    iput v3, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    return v0

    :cond_0
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-lt v1, v4, :cond_6

    add-int/lit8 v1, v3, 0x1

    .line 2474
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_1

    xor-int/lit8 v0, v0, -0x80

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v1, 0x1

    .line 2476
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_3

    xor-int/lit16 v0, v0, 0x3f80

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v3, 0x1

    .line 2478
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_4

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v1, 0x1

    .line 2481
    aget-byte v1, v2, v1

    shl-int/lit8 v4, v1, 0x1c

    xor-int/2addr v0, v4

    const v4, 0xfe03f80

    xor-int/2addr v0, v4

    if-gez v1, :cond_2

    add-int/lit8 v1, v3, 0x1

    .line 2484
    aget-byte v3, v2, v3

    if-gez v3, :cond_5

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_2

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_5

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_2

    add-int/lit8 v1, v3, 0x1

    aget-byte v2, v2, v3

    if-ltz v2, :cond_6

    .line 2493
    :cond_5
    :goto_0
    iput v1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    return v0

    .line 2496
    :cond_6
    invoke-virtual {p0}, Lo/writeSessionAppClsId$onMessageChannelReady;->requestPostMessageChannel()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method private IPostMessageService$Stub()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2613
    iget v0, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    .line 2615
    iget v1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onRelationshipValidationResult:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 2616
    invoke-direct {p0, v2}, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface(I)V

    .line 2617
    iget v0, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    .line 2620
    :cond_0
    iget-object v1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onTransact:[B

    add-int/lit8 v2, v0, 0x4

    .line 2621
    iput v2, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    .line 2622
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0
.end method

.method private asBinder(I)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 2884
    sget-object p1, Lo/getEventLogSize;->ICustomTabsCallback:[B

    return-object p1

    :cond_0
    if-ltz p1, :cond_7

    .line 2891
    iget v0, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->ICustomTabsService:I

    iget v1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    .line 2892
    iget v1, p0, Lo/writeSessionAppClsId;->onNavigationEvent:I

    sub-int v1, v0, v1

    if-gtz v1, :cond_6

    .line 2897
    iget v1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:I

    if-gt v0, v1, :cond_5

    .line 2903
    iget v0, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onRelationshipValidationResult:I

    iget v1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    sub-int/2addr v0, v1

    sub-int v1, p1, v0

    const/16 v2, 0x1000

    if-lt v1, v2, :cond_2

    .line 2907
    iget-object v2, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->extraCallback:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    if-gt v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1

    .line 2910
    :cond_2
    :goto_0
    new-array v1, p1, [B

    .line 2913
    iget-object v2, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onTransact:[B

    iget v3, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2914
    iget v2, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->ICustomTabsService:I

    iget v3, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onRelationshipValidationResult:I

    add-int/2addr v2, v3

    iput v2, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->ICustomTabsService:I

    .line 2915
    iput v4, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    .line 2916
    iput v4, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onRelationshipValidationResult:I

    :goto_1
    if-ge v0, p1, :cond_4

    .line 2921
    iget-object v2, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->extraCallback:Ljava/io/InputStream;

    sub-int v3, p1, v0

    invoke-virtual {v2, v1, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 2925
    iget v3, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->ICustomTabsService:I

    add-int/2addr v3, v2

    iput v3, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->ICustomTabsService:I

    add-int/2addr v0, v2

    goto :goto_1

    .line 2923
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_4
    return-object v1

    .line 2899
    :cond_5
    iget p1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->ICustomTabsService:I

    sub-int/2addr v1, p1

    iget p1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    sub-int/2addr v1, p1

    invoke-direct {p0, v1}, Lo/writeSessionAppClsId$onMessageChannelReady;->getInterfaceDescriptor(I)V

    .line 2900
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 2893
    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onTransact()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 2887
    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onNavigationEvent()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method private asInterface(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2731
    invoke-direct {p0, p1}, Lo/writeSessionAppClsId$onMessageChannelReady;->onTransact(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2734
    iget v0, p0, Lo/writeSessionAppClsId;->onNavigationEvent:I

    iget v1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->ICustomTabsService:I

    sub-int/2addr v0, v1

    iget v1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    .line 2735
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onTransact()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 2737
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_1
    return-void
.end method

.method private cancelAll()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2811
    iget v0, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    iget v1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onRelationshipValidationResult:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 2812
    invoke-direct {p0, v0}, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface(I)V

    .line 2814
    :cond_0
    iget-object v0, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onTransact:[B

    iget v1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    aget-byte v0, v0, v1

    return v0
.end method

.method private getInterfaceDescriptor(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3014
    iget v0, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onRelationshipValidationResult:I

    iget v1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    add-int/2addr v1, p1

    .line 3016
    iput v1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    return-void

    .line 3018
    :cond_0
    invoke-direct {p0, p1}, Lo/writeSessionAppClsId$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy(I)V

    return-void
.end method

.method private onRelationshipValidationResult(I)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2839
    invoke-direct {p0, p1}, Lo/writeSessionAppClsId$onMessageChannelReady;->asBinder(I)[B

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2844
    :cond_0
    iget v0, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    .line 2845
    iget v1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onRelationshipValidationResult:I

    sub-int v2, v1, v0

    .line 2848
    iget v3, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->ICustomTabsService:I

    add-int/2addr v3, v1

    iput v3, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->ICustomTabsService:I

    const/4 v1, 0x0

    .line 2849
    iput v1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    .line 2850
    iput v1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onRelationshipValidationResult:I

    sub-int v3, p1, v2

    .line 2857
    invoke-direct {p0, v3}, Lo/writeSessionAppClsId$onMessageChannelReady;->ICustomTabsCallback$Stub(I)Ljava/util/List;

    move-result-object v3

    .line 2860
    new-array p1, p1, [B

    .line 2863
    iget-object v4, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onTransact:[B

    invoke-static {v4, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2867
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 2868
    array-length v4, v3

    invoke-static {v3, v1, p1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2869
    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private onTransact(I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2751
    :cond_0
    iget v0, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    add-int/2addr v0, p1

    iget v1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onRelationshipValidationResult:I

    if-le v0, v1, :cond_7

    .line 2759
    iget v0, p0, Lo/writeSessionAppClsId;->onNavigationEvent:I

    iget v1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->ICustomTabsService:I

    sub-int/2addr v0, v1

    iget v2, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    sub-int/2addr v0, v2

    const/4 v3, 0x0

    if-le p1, v0, :cond_1

    return v3

    :cond_1
    add-int/2addr v1, v2

    add-int/2addr v1, p1

    .line 2764
    iget v0, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:I

    if-le v1, v0, :cond_2

    return v3

    :cond_2
    if-lez v2, :cond_4

    .line 2775
    iget v0, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onRelationshipValidationResult:I

    if-le v0, v2, :cond_3

    .line 2776
    iget-object v1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onTransact:[B

    sub-int/2addr v0, v2

    invoke-static {v1, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2778
    :cond_3
    iget v0, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->ICustomTabsService:I

    add-int/2addr v0, v2

    iput v0, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->ICustomTabsService:I

    .line 2779
    iget v0, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onRelationshipValidationResult:I

    sub-int/2addr v0, v2

    iput v0, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onRelationshipValidationResult:I

    .line 2780
    iput v3, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    .line 2784
    :cond_4
    iget-object v0, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->extraCallback:Ljava/io/InputStream;

    iget-object v1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onTransact:[B

    iget v2, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onRelationshipValidationResult:I

    array-length v4, v1

    sub-int/2addr v4, v2

    iget v5, p0, Lo/writeSessionAppClsId;->onNavigationEvent:I

    iget v6, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->ICustomTabsService:I

    sub-int/2addr v5, v6

    iget v6, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onRelationshipValidationResult:I

    sub-int/2addr v5, v6

    .line 2788
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2785
    invoke-virtual {v0, v1, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, -0x1

    if-lt v0, v1, :cond_6

    .line 2793
    iget-object v1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onTransact:[B

    array-length v1, v1

    if-gt v0, v1, :cond_6

    if-lez v0, :cond_5

    .line 2801
    iget v1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onRelationshipValidationResult:I

    add-int/2addr v1, v0

    iput v1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onRelationshipValidationResult:I

    .line 2802
    invoke-direct {p0}, Lo/writeSessionAppClsId$onMessageChannelReady;->INotificationSideChannel()V

    .line 2803
    iget v0, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onRelationshipValidationResult:I

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_5
    return v3

    .line 2794
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->extraCallback:Ljava/io/InputStream;

    .line 2795
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "#read(byte[]) returned invalid result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\nThe InputStream implementation is buggy."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2752
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "refillBuffer() called when "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes were already available in buffer"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateRelationship()J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2540
    iget v0, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    .line 2542
    iget v1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onRelationshipValidationResult:I

    if-eq v1, v0, :cond_9

    .line 2546
    iget-object v2, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onTransact:[B

    add-int/lit8 v3, v0, 0x1

    .line 2549
    aget-byte v0, v2, v0

    if-ltz v0, :cond_0

    .line 2550
    iput v3, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-lt v1, v4, :cond_9

    add-int/lit8 v1, v3, 0x1

    .line 2554
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_1

    xor-int/lit8 v0, v0, -0x80

    :goto_0
    int-to-long v2, v0

    goto/16 :goto_4

    :cond_1
    add-int/lit8 v3, v1, 0x1

    .line 2556
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_2

    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    move-wide v9, v0

    move v1, v3

    move-wide v2, v9

    goto/16 :goto_4

    :cond_2
    add-int/lit8 v1, v3, 0x1

    .line 2558
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_3

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_0

    :cond_3
    int-to-long v3, v0

    add-int/lit8 v0, v1, 0x1

    .line 2560
    aget-byte v1, v2, v1

    int-to-long v5, v1

    const/16 v1, 0x1c

    shl-long/2addr v5, v1

    xor-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-ltz v1, :cond_4

    const-wide/32 v1, 0xfe03f80

    :goto_1
    xor-long v2, v3, v1

    move v1, v0

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v0, 0x1

    .line 2562
    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x23

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_5

    const-wide v5, -0x7f01fc080L

    :goto_2
    xor-long v2, v3, v5

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v1, 0x1

    .line 2564
    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x2a

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-ltz v1, :cond_6

    const-wide v1, 0x3f80fe03f80L

    goto :goto_1

    :cond_6
    add-int/lit8 v1, v0, 0x1

    .line 2566
    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x31

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_7

    const-wide v5, -0x1fc07f01fc080L

    goto :goto_2

    :cond_7
    add-int/lit8 v0, v1, 0x1

    .line 2576
    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x38

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    const-wide v7, 0xfe03f80fe03f80L

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-gez v1, :cond_8

    add-int/lit8 v1, v0, 0x1

    .line 2587
    aget-byte v0, v2, v0

    int-to-long v7, v0

    cmp-long v0, v7, v5

    if-ltz v0, :cond_9

    goto :goto_3

    :cond_8
    move v1, v0

    :goto_3
    move-wide v2, v3

    .line 2592
    :goto_4
    iput v1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    return-wide v2

    .line 2595
    :cond_9
    invoke-virtual {p0}, Lo/writeSessionAppClsId$onMessageChannelReady;->requestPostMessageChannel()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final ICustomTabsCallback()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2218
    invoke-direct {p0}, Lo/writeSessionAppClsId$onMessageChannelReady;->IPostMessageService$Stub()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final ICustomTabsCallback(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 2666
    iget v0, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->ICustomTabsService:I

    iget v1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    add-int/2addr v0, v1

    add-int/2addr p1, v0

    .line 2667
    iget v0, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:I

    if-gt p1, v0, :cond_0

    .line 2671
    iput p1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:I

    .line 2673
    invoke-direct {p0}, Lo/writeSessionAppClsId$onMessageChannelReady;->INotificationSideChannel()V

    return v0

    .line 2669
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 2664
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onNavigationEvent()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final ICustomTabsCallback$Stub()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2243
    invoke-direct {p0}, Lo/writeSessionAppClsId$onMessageChannelReady;->IPostMessageService$Stub()I

    move-result v0

    return v0
.end method

.method public final ICustomTabsCallback$Stub$Proxy()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2431
    invoke-direct {p0}, Lo/writeSessionAppClsId$onMessageChannelReady;->IPostMessageService()I

    move-result v0

    return v0
.end method

.method public final ICustomTabsService()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2436
    invoke-direct {p0}, Lo/writeSessionAppClsId$onMessageChannelReady;->IPostMessageService$Stub()I

    move-result v0

    return v0
.end method

.method public final ICustomTabsService$Stub$Proxy()I
    .locals 2

    .line 2713
    iget v0, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->ICustomTabsService:I

    iget v1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final asBinder()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2233
    invoke-direct {p0}, Lo/writeSessionAppClsId$onMessageChannelReady;->IPostMessageService()I

    move-result v0

    return v0
.end method

.method public final asInterface()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2248
    invoke-direct {p0}, Lo/writeSessionAppClsId$onMessageChannelReady;->validateRelationship()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final extraCallback()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2228
    invoke-direct {p0}, Lo/writeSessionAppClsId$onMessageChannelReady;->validateRelationship()J

    move-result-wide v0

    return-wide v0
.end method

.method public final extraCallback(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2087
    invoke-static {p1}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v2, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    const/4 v3, 0x3

    const/4 v4, 0x4

    if-eq v0, v3, :cond_2

    if-eq v0, v4, :cond_1

    const/4 p1, 0x5

    if-ne v0, p1, :cond_0

    .line 2105
    invoke-direct {p0, v4}, Lo/writeSessionAppClsId$onMessageChannelReady;->getInterfaceDescriptor(I)V

    return v2

    .line 2108
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_1
    return v1

    .line 5166
    :cond_2
    invoke-virtual {p0}, Lo/writeSessionAppClsId;->onMessageChannelReady()I

    move-result v0

    if-eqz v0, :cond_3

    .line 5167
    invoke-virtual {p0, v0}, Lo/writeSessionAppClsId;->extraCallback(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2100
    :cond_3
    invoke-static {p1}, Lo/DefaultCreateReportSpiCall;->onPostMessage(I)I

    move-result p1

    invoke-static {p1, v4}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p1

    .line 6075
    iget v0, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->ICustomTabsCallback$Stub:I

    if-ne v0, p1, :cond_4

    return v2

    .line 6076
    :cond_4
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onPostMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 2095
    :cond_5
    invoke-direct {p0}, Lo/writeSessionAppClsId$onMessageChannelReady;->IPostMessageService()I

    move-result p1

    invoke-direct {p0, p1}, Lo/writeSessionAppClsId$onMessageChannelReady;->getInterfaceDescriptor(I)V

    return v2

    :cond_6
    const/16 p1, 0x8

    .line 2092
    invoke-direct {p0, p1}, Lo/writeSessionAppClsId$onMessageChannelReady;->getInterfaceDescriptor(I)V

    return v2

    .line 4500
    :cond_7
    iget p1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onRelationshipValidationResult:I

    iget v0, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    sub-int/2addr p1, v0

    const/16 v0, 0xa

    if-lt p1, v0, :cond_9

    :goto_0
    if-ge v1, v0, :cond_8

    .line 4509
    iget-object p1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onTransact:[B

    iget v3, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    aget-byte p1, p1, v3

    if-gez p1, :cond_a

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4513
    :cond_8
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->ICustomTabsCallback()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_9
    :goto_1
    if-ge v1, v0, :cond_b

    .line 4518
    invoke-direct {p0}, Lo/writeSessionAppClsId$onMessageChannelReady;->cancelAll()B

    move-result p1

    if-gez p1, :cond_a

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_a
    return v2

    .line 4522
    :cond_b
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->ICustomTabsCallback()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final extraCommand()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2446
    invoke-direct {p0}, Lo/writeSessionAppClsId$onMessageChannelReady;->IPostMessageService()I

    move-result v0

    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public final getInterfaceDescriptor()Lo/SessionProtobufHelper;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2375
    invoke-direct {p0}, Lo/writeSessionAppClsId$onMessageChannelReady;->IPostMessageService()I

    move-result v0

    .line 2376
    iget v1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onRelationshipValidationResult:I

    iget v2, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    if-lez v0, :cond_0

    .line 2379
    iget-object v1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onTransact:[B

    invoke-static {v1, v2, v0}, Lo/SessionProtobufHelper;->onMessageChannelReady([BII)Lo/SessionProtobufHelper;

    move-result-object v1

    .line 2380
    iget v2, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    add-int/2addr v2, v0

    iput v2, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    .line 2384
    sget-object v0, Lo/SessionProtobufHelper;->onNavigationEvent:Lo/SessionProtobufHelper;

    return-object v0

    .line 6974
    :cond_1
    invoke-direct {p0, v0}, Lo/writeSessionAppClsId$onMessageChannelReady;->asBinder(I)[B

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6978
    invoke-static {v1}, Lo/SessionProtobufHelper;->onNavigationEvent([B)Lo/SessionProtobufHelper;

    move-result-object v0

    return-object v0

    .line 6981
    :cond_2
    iget v1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    .line 6982
    iget v2, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onRelationshipValidationResult:I

    sub-int v3, v2, v1

    .line 6985
    iget v4, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->ICustomTabsService:I

    add-int/2addr v4, v2

    iput v4, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->ICustomTabsService:I

    const/4 v2, 0x0

    .line 6986
    iput v2, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    .line 6987
    iput v2, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onRelationshipValidationResult:I

    sub-int v4, v0, v3

    .line 6994
    invoke-direct {p0, v4}, Lo/writeSessionAppClsId$onMessageChannelReady;->ICustomTabsCallback$Stub(I)Ljava/util/List;

    move-result-object v4

    .line 6997
    new-array v0, v0, [B

    .line 7000
    iget-object v5, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onTransact:[B

    invoke-static {v5, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7004
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 7005
    array-length v5, v4

    invoke-static {v4, v2, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7006
    array-length v4, v4

    add-int/2addr v3, v4

    goto :goto_0

    .line 7009
    :cond_3
    invoke-static {v0}, Lo/SessionProtobufHelper;->onPostMessage([B)Lo/SessionProtobufHelper;

    move-result-object v0

    return-object v0
.end method

.method public final mayLaunchUrl()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2451
    invoke-direct {p0}, Lo/writeSessionAppClsId$onMessageChannelReady;->validateRelationship()J

    move-result-wide v0

    const/4 v2, 0x1

    ushr-long v2, v0, v2

    const-wide/16 v4, 0x1

    and-long/2addr v0, v4

    neg-long v0, v0

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public final newSession()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2276
    invoke-direct {p0}, Lo/writeSessionAppClsId$onMessageChannelReady;->IPostMessageService()I

    move-result v0

    .line 2278
    iget v1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    .line 2280
    iget v2, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onRelationshipValidationResult:I

    sub-int/2addr v2, v1

    const/4 v3, 0x0

    if-gt v0, v2, :cond_0

    if-lez v0, :cond_0

    .line 2283
    iget-object v2, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onTransact:[B

    add-int v3, v1, v0

    .line 2284
    iput v3, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    .line 2288
    :cond_1
    iget v1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onRelationshipValidationResult:I

    if-gt v0, v1, :cond_2

    .line 2289
    invoke-direct {p0, v0}, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface(I)V

    .line 2290
    iget-object v2, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onTransact:[B

    .line 2292
    iput v0, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    goto :goto_0

    .line 2295
    :cond_2
    invoke-direct {p0, v0}, Lo/writeSessionAppClsId$onMessageChannelReady;->onRelationshipValidationResult(I)[B

    move-result-object v2

    :goto_0
    const/4 v1, 0x0

    .line 2298
    :goto_1
    invoke-static {v2, v1, v0}, Lo/CompositeCreateReportSpiCall$1;->ICustomTabsCallback([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onMessageChannelReady()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3708
    iget v0, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    iget v1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onRelationshipValidationResult:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v2}, Lo/writeSessionAppClsId$onMessageChannelReady;->onTransact(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 2060
    iput v3, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->ICustomTabsCallback$Stub:I

    return v3

    .line 2064
    :cond_1
    invoke-direct {p0}, Lo/writeSessionAppClsId$onMessageChannelReady;->IPostMessageService()I

    move-result v0

    iput v0, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->ICustomTabsCallback$Stub:I

    .line 2065
    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->onPostMessage(I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 2070
    iget v0, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->ICustomTabsCallback$Stub:I

    return v0

    .line 2068
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->extraCallback()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final onNavigationEvent()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2213
    invoke-direct {p0}, Lo/writeSessionAppClsId$onMessageChannelReady;->ICustomTabsService$Stub()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final onNavigationEvent(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2075
    iget v0, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->ICustomTabsCallback$Stub:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2076
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onPostMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final onPostMessage()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2223
    invoke-direct {p0}, Lo/writeSessionAppClsId$onMessageChannelReady;->validateRelationship()J

    move-result-wide v0

    return-wide v0
.end method

.method public final onPostMessage(I)V
    .locals 0

    .line 2692
    iput p1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:I

    .line 2693
    invoke-direct {p0}, Lo/writeSessionAppClsId$onMessageChannelReady;->INotificationSideChannel()V

    return-void
.end method

.method public final onRelationshipValidationResult()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2238
    invoke-direct {p0}, Lo/writeSessionAppClsId$onMessageChannelReady;->ICustomTabsService$Stub()J

    move-result-wide v0

    return-wide v0
.end method

.method public final onTransact()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2253
    invoke-direct {p0}, Lo/writeSessionAppClsId$onMessageChannelReady;->IPostMessageService()I

    move-result v0

    if-lez v0, :cond_0

    .line 2254
    iget v1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onRelationshipValidationResult:I

    iget v2, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 2257
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onTransact:[B

    iget v3, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    sget-object v4, Lo/getEventLogSize;->extraCallback:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 2258
    iget v2, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    add-int/2addr v2, v0

    iput v2, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    .line 2264
    :cond_1
    iget v1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onRelationshipValidationResult:I

    if-gt v0, v1, :cond_2

    .line 2265
    invoke-direct {p0, v0}, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface(I)V

    .line 2266
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onTransact:[B

    iget v3, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    sget-object v4, Lo/getEventLogSize;->extraCallback:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 2267
    iget v2, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    add-int/2addr v2, v0

    iput v2, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    return-object v1

    .line 2271
    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {p0, v0}, Lo/writeSessionAppClsId$onMessageChannelReady;->onRelationshipValidationResult(I)[B

    move-result-object v0

    sget-object v2, Lo/getEventLogSize;->extraCallback:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public final postMessage()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2708
    iget v0, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->asInterface:I

    iget v1, p0, Lo/writeSessionAppClsId$onMessageChannelReady;->onRelationshipValidationResult:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lo/writeSessionAppClsId$onMessageChannelReady;->onTransact(I)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final requestPostMessageChannel()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    .line 2602
    invoke-direct {p0}, Lo/writeSessionAppClsId$onMessageChannelReady;->cancelAll()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    .line 2608
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->ICustomTabsCallback()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final updateVisuals()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2441
    invoke-direct {p0}, Lo/writeSessionAppClsId$onMessageChannelReady;->ICustomTabsService$Stub()J

    move-result-wide v0

    return-wide v0
.end method

.method public final warmup()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2426
    invoke-direct {p0}, Lo/writeSessionAppClsId$onMessageChannelReady;->IPostMessageService()I

    move-result v0

    return v0
.end method
