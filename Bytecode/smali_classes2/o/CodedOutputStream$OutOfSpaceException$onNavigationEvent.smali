.class final Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;
.super Lo/CodedOutputStream$OutOfSpaceException;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CodedOutputStream$OutOfSpaceException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private final ICustomTabsCallback:[B

.field private extraCallback:I

.field private onMessageChannelReady:I

.field private onNavigationEvent:I

.field private final onPostMessage:Z

.field private onRelationshipValidationResult:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .locals 1

    const/4 p2, 0x0

    .line 100
    invoke-direct {p0, p2}, Lo/CodedOutputStream$OutOfSpaceException;-><init>(B)V

    const/4 p2, 0x1

    .line 101
    iput-boolean p2, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onPostMessage:Z

    .line 102
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    iput-object p2, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsCallback:[B

    .line 103
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p2

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    .line 104
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p2

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    add-int/2addr p2, p1

    iput p2, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    return-void
.end method

.method private ICustomTabsCallback(Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 886
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 890
    instance-of v0, p1, Lo/stringToByteString;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-nez p2, :cond_3

    .line 891
    move-object v0, p1

    check-cast v0, Lo/stringToByteString;

    .line 893
    :cond_0
    invoke-virtual {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->getInterfaceDescriptor()Lo/SessionProtobufHelper;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/stringToByteString;->onNavigationEvent(Lo/SessionProtobufHelper;)V

    .line 50153
    iget p1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    iget p2, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    return-void

    .line 898
    :cond_2
    iget p1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    .line 899
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result p2

    .line 900
    iget v3, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    if-eq p2, v3, :cond_0

    .line 903
    iput p1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    return-void

    .line 909
    :cond_3
    invoke-direct {p0, p2}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50154
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    iget v3, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    if-ne v0, v3, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    return-void

    .line 914
    :cond_5
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    .line 915
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v3

    .line 916
    iget v4, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    if-eq v3, v4, :cond_3

    .line 919
    iput v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    return-void

    .line 887
    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method private ICustomTabsService$Stub()J
    .locals 9

    .line 1639
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    .line 1640
    iget-object v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsCallback:[B

    add-int/lit8 v2, v0, 0x8

    .line 1641
    iput v2, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    .line 1642
    aget-byte v2, v1, v0

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x2

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x3

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x4

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x5

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x28

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x6

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x30

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v4

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private ICustomTabsService$Stub$Proxy()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1496
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    .line 1498
    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    if-eq v1, v0, :cond_8

    .line 1503
    iget-object v2, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsCallback:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    if-ltz v0, :cond_0

    .line 1504
    iput v3, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    return v0

    :cond_0
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-ge v1, v4, :cond_1

    .line 1507
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->IPostMessageService$Stub()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_1
    add-int/lit8 v1, v3, 0x1

    .line 1508
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_2

    xor-int/lit8 v0, v0, -0x80

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v1, 0x1

    .line 1510
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_4

    xor-int/lit16 v0, v0, 0x3f80

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v3, 0x1

    .line 1512
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_5

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_0

    :cond_5
    add-int/lit8 v3, v1, 0x1

    .line 1515
    aget-byte v1, v2, v1

    shl-int/lit8 v4, v1, 0x1c

    xor-int/2addr v0, v4

    const v4, 0xfe03f80

    xor-int/2addr v0, v4

    if-gez v1, :cond_3

    add-int/lit8 v1, v3, 0x1

    .line 1518
    aget-byte v3, v2, v3

    if-gez v3, :cond_7

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_3

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_7

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_3

    add-int/lit8 v1, v3, 0x1

    aget-byte v2, v2, v3

    if-ltz v2, :cond_6

    goto :goto_0

    .line 1524
    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->ICustomTabsCallback()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1527
    :cond_7
    :goto_0
    iput v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    return v0

    .line 1499
    :cond_8
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private IPostMessageService()J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1543
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    .line 1545
    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    if-eq v1, v0, :cond_b

    .line 1549
    iget-object v2, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsCallback:[B

    add-int/lit8 v3, v0, 0x1

    .line 1552
    aget-byte v0, v2, v0

    if-ltz v0, :cond_0

    .line 1553
    iput v3, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-ge v1, v4, :cond_1

    .line 1556
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->IPostMessageService$Stub()J

    move-result-wide v0

    return-wide v0

    :cond_1
    add-int/lit8 v1, v3, 0x1

    .line 1557
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_2

    xor-int/lit8 v0, v0, -0x80

    :goto_0
    int-to-long v2, v0

    goto/16 :goto_4

    :cond_2
    add-int/lit8 v3, v1, 0x1

    .line 1559
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_3

    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    move-wide v9, v0

    move v1, v3

    move-wide v2, v9

    goto/16 :goto_4

    :cond_3
    add-int/lit8 v1, v3, 0x1

    .line 1561
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_4

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_0

    :cond_4
    int-to-long v3, v0

    add-int/lit8 v0, v1, 0x1

    .line 1563
    aget-byte v1, v2, v1

    int-to-long v5, v1

    const/16 v1, 0x1c

    shl-long/2addr v5, v1

    xor-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-ltz v1, :cond_5

    const-wide/32 v1, 0xfe03f80

    :goto_1
    xor-long v2, v3, v1

    move v1, v0

    goto :goto_4

    :cond_5
    add-int/lit8 v1, v0, 0x1

    .line 1565
    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x23

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_6

    const-wide v5, -0x7f01fc080L

    :goto_2
    xor-long v2, v3, v5

    goto :goto_4

    :cond_6
    add-int/lit8 v0, v1, 0x1

    .line 1567
    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x2a

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-ltz v1, :cond_7

    const-wide v1, 0x3f80fe03f80L

    goto :goto_1

    :cond_7
    add-int/lit8 v1, v0, 0x1

    .line 1569
    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x31

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_8

    const-wide v5, -0x1fc07f01fc080L

    goto :goto_2

    :cond_8
    add-int/lit8 v0, v1, 0x1

    .line 1579
    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x38

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    const-wide v7, 0xfe03f80fe03f80L

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-gez v1, :cond_a

    add-int/lit8 v1, v0, 0x1

    .line 1590
    aget-byte v0, v2, v0

    int-to-long v7, v0

    cmp-long v0, v7, v5

    if-ltz v0, :cond_9

    goto :goto_3

    .line 1591
    :cond_9
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->ICustomTabsCallback()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_a
    move v1, v0

    :goto_3
    move-wide v2, v3

    .line 1595
    :goto_4
    iput v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    return-wide v2

    .line 1546
    :cond_b
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private IPostMessageService$Stub()J
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

    if-ge v2, v3, :cond_2

    .line 50321
    iget v3, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    iget v4, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    if-eq v3, v4, :cond_1

    .line 50324
    iget-object v4, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsCallback:[B

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    aget-byte v3, v4, v3

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

    .line 50322
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1608
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->ICustomTabsCallback()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private onNavigationEvent(Lo/CreateReportRequest;Lo/writeSessionEventDevice;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/CreateReportRequest<",
            "TT;>;",
            "Lo/writeSessionEventDevice;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    if-ltz v0, :cond_1

    .line 18696
    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    iget v2, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    sub-int v3, v1, v2

    if-gt v0, v3, :cond_1

    add-int/2addr v2, v0

    .line 256
    iput v2, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    .line 260
    :try_start_0
    invoke-interface {p1}, Lo/CreateReportRequest;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    .line 261
    invoke-interface {p1, v0, p0, p2}, Lo/CreateReportRequest;->onPostMessage(Ljava/lang/Object;Lo/attemptUploadWithRetry;Lo/writeSessionEventDevice;)V

    .line 262
    invoke-interface {p1, v0}, Lo/CreateReportRequest;->ICustomTabsCallback(Ljava/lang/Object;)V

    .line 264
    iget p1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v2, :cond_0

    .line 270
    iput v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    return-object v0

    .line 265
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->ICustomTabsCallback$Stub()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 270
    iput v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    .line 271
    throw p1

    .line 18697
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method private onNavigationEvent(Z)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15702
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 220
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    if-ltz v0, :cond_3

    .line 16696
    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    iget v2, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_3

    if-eqz p1, :cond_2

    .line 226
    iget-object p1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsCallback:[B

    add-int v1, v2, v0

    invoke-static {p1, v2, v1}, Lo/CompositeCreateReportSpiCall$1;->onPostMessage([BII)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 227
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->asBinder()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 229
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/String;

    iget-object v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsCallback:[B

    iget v2, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    sget-object v3, Lo/getEventLogSize;->extraCallback:Ljava/nio/charset/Charset;

    invoke-direct {p1, v1, v2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 230
    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    add-int/2addr v1, v0

    iput v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    return-object p1

    .line 16697
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 15703
    :cond_4
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method private onPostMessage(Lo/CreateReportRequest;Lo/writeSessionEventDevice;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/CreateReportRequest<",
            "TT;>;",
            "Lo/writeSessionEventDevice;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onRelationshipValidationResult:I

    .line 291
    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v1}, Lo/DefaultCreateReportSpiCall;->onPostMessage(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result v1

    iput v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onRelationshipValidationResult:I

    .line 295
    :try_start_0
    invoke-interface {p1}, Lo/CreateReportRequest;->extraCallback()Ljava/lang/Object;

    move-result-object v1

    .line 296
    invoke-interface {p1, v1, p0, p2}, Lo/CreateReportRequest;->onPostMessage(Ljava/lang/Object;Lo/attemptUploadWithRetry;Lo/writeSessionEventDevice;)V

    .line 297
    invoke-interface {p1, v1}, Lo/CreateReportRequest;->ICustomTabsCallback(Ljava/lang/Object;)V

    .line 299
    iget p1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    iget p2, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onRelationshipValidationResult:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    .line 305
    iput v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onRelationshipValidationResult:I

    return-object v1

    .line 300
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->ICustomTabsCallback$Stub()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 305
    iput v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onRelationshipValidationResult:I

    .line 306
    throw p1
.end method

.method private onPostMessage(Lo/DefaultCreateReportSpiCall$onMessageChannelReady;Ljava/lang/Class;Lo/writeSessionEventDevice;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/DefaultCreateReportSpiCall$onMessageChannelReady;",
            "Ljava/lang/Class<",
            "*>;",
            "Lo/writeSessionEventDevice;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1453
    sget-object v0, Lo/CodedOutputStream$OutOfSpaceException$2;->onNavigationEvent:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 1489
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unsupported field type."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50317
    :pswitch_0
    iget p1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {p1}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result p1

    if-nez p1, :cond_0

    .line 50316
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->IPostMessageService()J

    move-result-wide p1

    .line 1487
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 50318
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 50311
    :pswitch_1
    iget p1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {p1}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result p1

    if-nez p1, :cond_1

    .line 50310
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result p1

    .line 1485
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 50312
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 50308
    :pswitch_2
    invoke-direct {p0, v0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 50304
    :pswitch_3
    iget p1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {p1}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result p1

    if-nez p1, :cond_2

    .line 50303
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->IPostMessageService()J

    move-result-wide p1

    invoke-static {p1, p2}, Lo/writeSessionAppClsId;->onPostMessage(J)J

    move-result-wide p1

    .line 1481
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 50305
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 50298
    :pswitch_4
    iget p1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {p1}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result p1

    if-nez p1, :cond_3

    .line 50297
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result p1

    invoke-static {p1}, Lo/writeSessionAppClsId;->onMessageChannelReady(I)I

    move-result p1

    .line 1479
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 50299
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1477
    :pswitch_5
    invoke-virtual {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCommand()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 1475
    :pswitch_6
    invoke-virtual {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->requestPostMessageChannel()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 50292
    :pswitch_7
    iget p1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {p1}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 50291
    invoke-static {}, Lo/ReportUploader$HandlingExceptionCheck;->ICustomTabsCallback()Lo/ReportUploader$HandlingExceptionCheck;

    move-result-object p1

    invoke-virtual {p1, p2}, Lo/ReportUploader$HandlingExceptionCheck;->onMessageChannelReady(Ljava/lang/Class;)Lo/CreateReportRequest;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent(Lo/CreateReportRequest;Lo/writeSessionEventDevice;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 50293
    :cond_4
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 50286
    :pswitch_8
    iget p1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {p1}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result p1

    if-nez p1, :cond_5

    .line 50285
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->IPostMessageService()J

    move-result-wide p1

    .line 1471
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 50287
    :cond_5
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 50280
    :pswitch_9
    iget p1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {p1}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result p1

    if-nez p1, :cond_6

    .line 50279
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result p1

    .line 1469
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 50281
    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1467
    :pswitch_a
    invoke-virtual {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onPostMessage()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 1465
    :pswitch_b
    invoke-virtual {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->asBinder()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 1463
    :pswitch_c
    invoke-virtual {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onTransact()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 50274
    :pswitch_d
    iget p1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {p1}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result p1

    if-nez p1, :cond_7

    .line 50273
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result p1

    .line 1461
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 50275
    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1459
    :pswitch_e
    invoke-virtual {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsCallback()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 1457
    :pswitch_f
    invoke-virtual {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->getInterfaceDescriptor()Lo/SessionProtobufHelper;

    move-result-object p1

    return-object p1

    .line 50268
    :pswitch_10
    iget p1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {p1}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result p1

    if-nez p1, :cond_9

    .line 50267
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    .line 1455
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 50269
    :cond_9
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private validateRelationship()I
    .locals 4

    .line 1629
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    .line 1630
    iget-object v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsCallback:[B

    add-int/lit8 v2, v0, 0x4

    .line 1631
    iput v2, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    .line 1632
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


# virtual methods
.method public final ICustomTabsCallback()D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7702
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/16 v0, 0x8

    .line 8696
    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    iget v2, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 8625
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub()J

    move-result-wide v0

    .line 163
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0

    .line 8697
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 7703
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final ICustomTabsCallback(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    instance-of v0, p1, Lo/writeSessionEventApp;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    .line 365
    move-object v0, p1

    check-cast v0, Lo/writeSessionEventApp;

    .line 366
    iget p1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {p1}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result p1

    if-eq p1, v3, :cond_4

    if-ne p1, v2, :cond_3

    .line 368
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result p1

    if-ltz p1, :cond_2

    .line 27696
    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    iget v2, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    sub-int/2addr v1, v2

    if-gt p1, v1, :cond_2

    and-int/lit8 v1, p1, 0x7

    if-nez v1, :cond_1

    add-int/2addr v2, p1

    .line 371
    :goto_0
    iget p1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    if-ge p1, v2, :cond_0

    .line 372
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lo/writeSessionEventApp;->onPostMessage(D)V

    goto :goto_0

    :cond_0
    return-void

    .line 26711
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->ICustomTabsCallback$Stub()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 27697
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 392
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 377
    :cond_4
    invoke-virtual {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsCallback()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lo/writeSessionEventApp;->onPostMessage(D)V

    .line 28108
    iget p1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    iget v2, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    if-ne p1, v2, :cond_5

    const/4 p1, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_6

    return-void

    .line 382
    :cond_6
    iget p1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    .line 383
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v2

    .line 384
    iget v4, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    if-eq v2, v4, :cond_4

    .line 387
    iput p1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    return-void

    .line 395
    :cond_7
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-eq v0, v3, :cond_c

    if-ne v0, v2, :cond_b

    .line 397
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    if-ltz v0, :cond_a

    .line 29696
    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    iget v2, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_a

    and-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_9

    add-int/2addr v2, v0

    .line 400
    :goto_2
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    if-ge v0, v2, :cond_8

    .line 401
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    return-void

    .line 28711
    :cond_9
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->ICustomTabsCallback$Stub()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 29697
    :cond_a
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 421
    :cond_b
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 406
    :cond_c
    invoke-virtual {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsCallback()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30108
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    iget v2, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    if-ne v0, v2, :cond_d

    const/4 v0, 0x1

    goto :goto_3

    :cond_d
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_e

    return-void

    .line 411
    :cond_e
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    .line 412
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v2

    .line 413
    iget v4, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    if-eq v2, v4, :cond_c

    .line 416
    iput v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    return-void
.end method

.method public final ICustomTabsCallback$Stub()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10702
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 181
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->IPostMessageService()J

    move-result-wide v0

    return-wide v0

    .line 10703
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final ICustomTabsCallback$Stub(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 881
    invoke-direct {p0, p1, v0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsCallback(Ljava/util/List;Z)V

    return-void
.end method

.method public final ICustomTabsCallback$Stub$Proxy(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1017
    instance-of v0, p1, Lo/getEventAppExecutionExceptionSize;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_6

    .line 1018
    check-cast p1, Lo/getEventAppExecutionExceptionSize;

    .line 1019
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-eqz v0, :cond_2

    if-ne v0, v3, :cond_1

    .line 1021
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    .line 1022
    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    add-int/2addr v1, v0

    .line 1023
    :goto_0
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    if-ge v0, v1, :cond_0

    .line 1024
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    invoke-virtual {p1, v0}, Lo/getEventAppExecutionExceptionSize;->onMessageChannelReady(I)V

    goto :goto_0

    :cond_0
    return-void

    .line 1044
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 50160
    :cond_2
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-nez v0, :cond_5

    .line 50159
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    .line 1029
    invoke-virtual {p1, v0}, Lo/getEventAppExecutionExceptionSize;->onMessageChannelReady(I)V

    .line 50164
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    iget v3, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    if-ne v0, v3, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    return-void

    .line 1034
    :cond_4
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    .line 1035
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v3

    .line 1036
    iget v4, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    if-eq v3, v4, :cond_2

    .line 1039
    iput v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    return-void

    .line 50161
    :cond_5
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1047
    :cond_6
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-eqz v0, :cond_9

    if-ne v0, v3, :cond_8

    .line 1049
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    .line 1050
    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    add-int/2addr v1, v0

    .line 1051
    :goto_2
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    if-ge v0, v1, :cond_7

    .line 1052
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    return-void

    .line 1072
    :cond_8
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 50167
    :cond_9
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-nez v0, :cond_c

    .line 50166
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    .line 1057
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50171
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    iget v3, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    if-ne v0, v3, :cond_a

    const/4 v0, 0x1

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_b

    return-void

    .line 1062
    :cond_b
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    .line 1063
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v3

    .line 1064
    iget v4, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    if-eq v3, v4, :cond_9

    .line 1067
    iput v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    return-void

    .line 50168
    :cond_c
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public final ICustomTabsCallback$Stub$Proxy()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14702
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 205
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 14703
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final ICustomTabsService()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 215
    invoke-direct {p0, v0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ICustomTabsService(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1079
    instance-of v0, p1, Lo/getEventAppExecutionExceptionSize;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_6

    .line 1080
    check-cast p1, Lo/getEventAppExecutionExceptionSize;

    .line 1081
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-eqz v0, :cond_2

    if-ne v0, v3, :cond_1

    .line 1083
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    .line 1084
    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    add-int/2addr v1, v0

    .line 1085
    :goto_0
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    if-ge v0, v1, :cond_0

    .line 1086
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    invoke-virtual {p1, v0}, Lo/getEventAppExecutionExceptionSize;->onMessageChannelReady(I)V

    goto :goto_0

    :cond_0
    return-void

    .line 1106
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 50174
    :cond_2
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-nez v0, :cond_5

    .line 50173
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    .line 1091
    invoke-virtual {p1, v0}, Lo/getEventAppExecutionExceptionSize;->onMessageChannelReady(I)V

    .line 50178
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    iget v3, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    if-ne v0, v3, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    return-void

    .line 1096
    :cond_4
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    .line 1097
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v3

    .line 1098
    iget v4, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    if-eq v3, v4, :cond_2

    .line 1101
    iput v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    return-void

    .line 50175
    :cond_5
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1109
    :cond_6
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-eqz v0, :cond_9

    if-ne v0, v3, :cond_8

    .line 1111
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    .line 1112
    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    add-int/2addr v1, v0

    .line 1113
    :goto_2
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    if-ge v0, v1, :cond_7

    .line 1114
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    return-void

    .line 1134
    :cond_8
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 50181
    :cond_9
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-nez v0, :cond_c

    .line 50180
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    .line 1119
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50185
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    iget v3, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    if-ne v0, v3, :cond_a

    const/4 v0, 0x1

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_b

    return-void

    .line 1124
    :cond_b
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    .line 1125
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v3

    .line 1126
    iget v4, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    if-eq v3, v4, :cond_9

    .line 1129
    iput v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    return-void

    .line 50182
    :cond_c
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public final asBinder()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12702
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/16 v0, 0x8

    .line 13696
    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    iget v2, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 13625
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub()J

    move-result-wide v0

    return-wide v0

    .line 13697
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 12703
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final asBinder(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 876
    invoke-direct {p0, p1, v0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsCallback(Ljava/util/List;Z)V

    return-void
.end method

.method public final asInterface()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11702
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 187
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    return v0

    .line 11703
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final asInterface(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 812
    instance-of v0, p1, Lo/encodeZigZag32;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_9

    .line 813
    check-cast p1, Lo/encodeZigZag32;

    .line 814
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-eqz v0, :cond_4

    if-ne v0, v1, :cond_3

    .line 816
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    .line 817
    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    add-int/2addr v1, v0

    .line 818
    :goto_0
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    if-ge v0, v1, :cond_1

    .line 819
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Lo/encodeZigZag32;->ICustomTabsCallback(Z)V

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    return-void

    .line 50132
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 840
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 50137
    :cond_4
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-nez v0, :cond_8

    .line 50136
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    .line 825
    :goto_2
    invoke-virtual {p1, v0}, Lo/encodeZigZag32;->ICustomTabsCallback(Z)V

    .line 50141
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    if-ne v0, v1, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_7

    return-void

    .line 830
    :cond_7
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    .line 831
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    .line 832
    iget v4, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    if-eq v1, v4, :cond_4

    .line 835
    iput v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    return-void

    .line 50138
    :cond_8
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 843
    :cond_9
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-eqz v0, :cond_e

    if-ne v0, v1, :cond_d

    .line 845
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    .line 846
    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    add-int/2addr v1, v0

    .line 847
    :goto_4
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    if-ge v0, v1, :cond_b

    .line 848
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_5

    :cond_a
    const/4 v0, 0x0

    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    if-ne v0, v1, :cond_c

    return-void

    .line 50143
    :cond_c
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 869
    :cond_d
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 50148
    :cond_e
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-nez v0, :cond_12

    .line 50147
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_6

    :cond_f
    const/4 v0, 0x0

    .line 854
    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50152
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_7

    :cond_10
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_11

    return-void

    .line 859
    :cond_11
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    .line 860
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    .line 861
    iget v4, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    if-eq v1, v4, :cond_e

    .line 864
    iput v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    return-void

    .line 50149
    :cond_12
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public final extraCallback(Lo/CreateReportRequest;Lo/writeSessionEventDevice;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/CreateReportRequest<",
            "TT;>;",
            "Lo/writeSessionEventDevice;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19702
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 285
    invoke-direct {p0, p1, p2}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onPostMessage(Lo/CreateReportRequest;Lo/writeSessionEventDevice;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 19703
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public final extraCallback(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 620
    instance-of v0, p1, Lo/getEventAppExecutionExceptionSize;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_7

    .line 621
    check-cast p1, Lo/getEventAppExecutionExceptionSize;

    .line 622
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-eqz v0, :cond_3

    if-ne v0, v3, :cond_2

    .line 624
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    .line 625
    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    add-int/2addr v1, v0

    .line 626
    :goto_0
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    if-ge v0, v1, :cond_0

    .line 627
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    invoke-virtual {p1, v0}, Lo/getEventAppExecutionExceptionSize;->onMessageChannelReady(I)V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    return-void

    .line 42725
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 648
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 43702
    :cond_3
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-nez v0, :cond_6

    .line 43187
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    .line 633
    invoke-virtual {p1, v0}, Lo/getEventAppExecutionExceptionSize;->onMessageChannelReady(I)V

    .line 44108
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    iget v3, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    if-ne v0, v3, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    return-void

    .line 638
    :cond_5
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    .line 639
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v3

    .line 640
    iget v4, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    if-eq v3, v4, :cond_3

    .line 643
    iput v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    return-void

    .line 43703
    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 651
    :cond_7
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-eqz v0, :cond_b

    if-ne v0, v3, :cond_a

    .line 653
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    .line 654
    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    add-int/2addr v1, v0

    .line 655
    :goto_2
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    if-ge v0, v1, :cond_8

    .line 656
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    if-ne v0, v1, :cond_9

    return-void

    .line 44725
    :cond_9
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 677
    :cond_a
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 45702
    :cond_b
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-nez v0, :cond_e

    .line 45187
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    .line 662
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46108
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    iget v3, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    if-ne v0, v3, :cond_c

    const/4 v0, 0x1

    goto :goto_3

    :cond_c
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_d

    return-void

    .line 667
    :cond_d
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    .line 668
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v3

    .line 669
    iget v4, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    if-eq v3, v4, :cond_b

    .line 672
    iput v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    return-void

    .line 45703
    :cond_e
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public final extraCallback(Ljava/util/List;Lo/CreateReportRequest;Lo/writeSessionEventDevice;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lo/CreateReportRequest<",
            "TT;>;",
            "Lo/writeSessionEventDevice;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 938
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 941
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    .line 943
    :cond_0
    invoke-direct {p0, p2, p3}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent(Lo/CreateReportRequest;Lo/writeSessionEventDevice;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50155
    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    iget v2, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    return-void

    .line 948
    :cond_2
    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    .line 949
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 953
    iput v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    return-void

    .line 939
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public final extraCallback()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3108
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_12

    .line 135
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onRelationshipValidationResult:I

    if-ne v0, v1, :cond_1

    goto/16 :goto_4

    .line 139
    :cond_1
    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-eqz v0, :cond_c

    if-eq v0, v3, :cond_a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    const/4 v1, 0x3

    const/4 v2, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 6696
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    sub-int/2addr v0, v1

    if-gt v2, v0, :cond_2

    add-int/2addr v1, v2

    .line 6678
    iput v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    return v3

    .line 6697
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 156
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 7682
    :cond_4
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onRelationshipValidationResult:I

    .line 7683
    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v1}, Lo/DefaultCreateReportSpiCall;->onPostMessage(I)I

    move-result v1

    invoke-static {v1, v2}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result v1

    iput v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onRelationshipValidationResult:I

    .line 7685
    :cond_5
    invoke-virtual {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent()I

    move-result v1

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_6

    invoke-virtual {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback()Z

    move-result v1

    if-nez v1, :cond_5

    .line 7689
    :cond_6
    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    iget v2, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onRelationshipValidationResult:I

    if-ne v1, v2, :cond_7

    .line 7692
    iput v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onRelationshipValidationResult:I

    return v3

    .line 7690
    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->ICustomTabsCallback$Stub()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 147
    :cond_8
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    if-ltz v0, :cond_9

    .line 5696
    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    iget v2, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_9

    add-int/2addr v2, v0

    .line 5678
    iput v2, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    return v3

    .line 5697
    :cond_9
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 4696
    :cond_a
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    sub-int/2addr v0, v1

    const/16 v2, 0x8

    if-gt v2, v0, :cond_b

    add-int/2addr v1, v2

    .line 4678
    iput v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    return v3

    .line 4697
    :cond_b
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3653
    :cond_c
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    sub-int/2addr v0, v1

    const/16 v4, 0xa

    if-lt v0, v4, :cond_e

    .line 3654
    iget-object v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsCallback:[B

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_e

    add-int/lit8 v6, v1, 0x1

    .line 3657
    aget-byte v1, v0, v1

    if-ltz v1, :cond_d

    .line 3658
    iput v6, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    goto :goto_3

    :cond_d
    add-int/lit8 v5, v5, 0x1

    move v1, v6

    goto :goto_1

    :cond_e
    :goto_2
    if-ge v2, v4, :cond_11

    .line 4612
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    if-eq v0, v1, :cond_10

    .line 4615
    iget-object v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsCallback:[B

    add-int/lit8 v5, v0, 0x1

    iput v5, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    aget-byte v0, v1, v0

    if-gez v0, :cond_f

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_f
    :goto_3
    return v3

    .line 4613
    :cond_10
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3672
    :cond_11
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->ICustomTabsCallback()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_12
    :goto_4
    return v2
.end method

.method public final extraCommand()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24702
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/16 v0, 0x8

    .line 25696
    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    iget v2, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 25625
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub()J

    move-result-wide v0

    return-wide v0

    .line 25697
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 24703
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final getInterfaceDescriptor()Lo/SessionProtobufHelper;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20702
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 312
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    if-nez v0, :cond_0

    .line 314
    sget-object v0, Lo/SessionProtobufHelper;->onNavigationEvent:Lo/SessionProtobufHelper;

    return-object v0

    :cond_0
    if-ltz v0, :cond_2

    .line 21696
    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    iget v2, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_2

    .line 318
    iget-boolean v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onPostMessage:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsCallback:[B

    .line 320
    invoke-static {v1, v2, v0}, Lo/SessionProtobufHelper;->ICustomTabsCallback([BII)Lo/SessionProtobufHelper;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsCallback:[B

    .line 321
    invoke-static {v1, v2, v0}, Lo/SessionProtobufHelper;->onMessageChannelReady([BII)Lo/SessionProtobufHelper;

    move-result-object v1

    .line 322
    :goto_0
    iget v2, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    add-int/2addr v2, v0

    iput v2, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    return-object v1

    .line 21697
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 20703
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final getInterfaceDescriptor(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1141
    instance-of v0, p1, Lo/getEventAppExecutionExceptionSize;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x2

    if-eqz v0, :cond_8

    .line 1142
    check-cast p1, Lo/getEventAppExecutionExceptionSize;

    .line 1143
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-eq v0, v4, :cond_4

    if-ne v0, v3, :cond_3

    .line 1154
    :cond_0
    invoke-virtual {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->requestPostMessageChannel()I

    move-result v0

    invoke-virtual {p1, v0}, Lo/getEventAppExecutionExceptionSize;->onMessageChannelReady(I)V

    .line 50196
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    iget v3, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    return-void

    .line 1159
    :cond_2
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    .line 1160
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v3

    .line 1161
    iget v4, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    if-eq v3, v4, :cond_0

    .line 1164
    iput v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    return-void

    .line 1169
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1145
    :cond_4
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    if-ltz v0, :cond_7

    .line 50192
    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    iget v2, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_7

    and-int/lit8 v1, v0, 0x3

    if-nez v1, :cond_6

    add-int/2addr v2, v0

    .line 1148
    :goto_1
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    if-ge v0, v2, :cond_5

    .line 1149
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->validateRelationship()I

    move-result v0

    invoke-virtual {p1, v0}, Lo/getEventAppExecutionExceptionSize;->onMessageChannelReady(I)V

    goto :goto_1

    :cond_5
    return-void

    .line 50189
    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->ICustomTabsCallback$Stub()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 50193
    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1172
    :cond_8
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-eq v0, v4, :cond_d

    if-ne v0, v3, :cond_c

    .line 1183
    :cond_9
    invoke-virtual {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->requestPostMessageChannel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50207
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    iget v3, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    if-ne v0, v3, :cond_a

    const/4 v0, 0x1

    goto :goto_2

    :cond_a
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_b

    return-void

    .line 1188
    :cond_b
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    .line 1189
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v3

    .line 1190
    iget v4, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    if-eq v3, v4, :cond_9

    .line 1193
    iput v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    return-void

    .line 1198
    :cond_c
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1174
    :cond_d
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    if-ltz v0, :cond_10

    .line 50203
    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    iget v2, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_10

    and-int/lit8 v1, v0, 0x3

    if-nez v1, :cond_f

    add-int/2addr v2, v0

    .line 1177
    :goto_3
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    if-ge v0, v2, :cond_e

    .line 1178
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->validateRelationship()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_e
    return-void

    .line 50200
    :cond_f
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->ICustomTabsCallback$Stub()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 50204
    :cond_10
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final mayLaunchUrl()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26702
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 359
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->IPostMessageService()J

    move-result-wide v0

    invoke-static {v0, v1}, Lo/writeSessionAppClsId;->onPostMessage(J)J

    move-result-wide v0

    return-wide v0

    .line 26703
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final newSession()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 210
    invoke-direct {p0, v0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final newSession(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1205
    instance-of v0, p1, Lo/makeTag;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    .line 1206
    move-object v0, p1

    check-cast v0, Lo/makeTag;

    .line 1207
    iget p1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {p1}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result p1

    if-eq p1, v3, :cond_4

    if-ne p1, v2, :cond_3

    .line 1209
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result p1

    if-ltz p1, :cond_2

    .line 50214
    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    iget v2, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    sub-int/2addr v1, v2

    if-gt p1, v1, :cond_2

    and-int/lit8 v1, p1, 0x7

    if-nez v1, :cond_1

    add-int/2addr v2, p1

    .line 1212
    :goto_0
    iget p1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    if-ge p1, v2, :cond_0

    .line 1213
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lo/makeTag;->extraCallback(J)V

    goto :goto_0

    :cond_0
    return-void

    .line 50211
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->ICustomTabsCallback$Stub()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 50215
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1233
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1218
    :cond_4
    invoke-virtual {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCommand()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lo/makeTag;->extraCallback(J)V

    .line 50218
    iget p1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    iget v2, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    if-ne p1, v2, :cond_5

    const/4 p1, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_6

    return-void

    .line 1223
    :cond_6
    iget p1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    .line 1224
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v2

    .line 1225
    iget v4, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    if-eq v2, v4, :cond_4

    .line 1228
    iput p1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    return-void

    .line 1236
    :cond_7
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-eq v0, v3, :cond_c

    if-ne v0, v2, :cond_b

    .line 1238
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    if-ltz v0, :cond_a

    .line 50225
    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    iget v2, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_a

    and-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_9

    add-int/2addr v2, v0

    .line 1241
    :goto_2
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    if-ge v0, v2, :cond_8

    .line 1242
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    return-void

    .line 50222
    :cond_9
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->ICustomTabsCallback$Stub()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 50226
    :cond_a
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1262
    :cond_b
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1247
    :cond_c
    invoke-virtual {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCommand()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50229
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    iget v2, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    if-ne v0, v2, :cond_d

    const/4 v0, 0x1

    goto :goto_3

    :cond_d
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_e

    return-void

    .line 1252
    :cond_e
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    .line 1253
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v2

    .line 1254
    iget v4, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    if-eq v2, v4, :cond_c

    .line 1257
    iput v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    return-void
.end method

.method public final onMessageChannelReady()I
    .locals 1

    .line 130
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    return v0
.end method

.method public final onMessageChannelReady(Lo/CreateReportRequest;Lo/writeSessionEventDevice;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/CreateReportRequest<",
            "TT;>;",
            "Lo/writeSessionEventDevice;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17702
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 245
    invoke-direct {p0, p1, p2}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent(Lo/CreateReportRequest;Lo/writeSessionEventDevice;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 17703
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public final onMessageChannelReady(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 428
    instance-of v0, p1, Lo/getSessionDeviceSize;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x2

    if-eqz v0, :cond_8

    .line 429
    check-cast p1, Lo/getSessionDeviceSize;

    .line 430
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-eq v0, v4, :cond_4

    if-ne v0, v3, :cond_3

    .line 441
    :cond_0
    invoke-virtual {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onPostMessage()F

    move-result v0

    invoke-virtual {p1, v0}, Lo/getSessionDeviceSize;->ICustomTabsCallback(F)V

    .line 32108
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    iget v3, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    return-void

    .line 446
    :cond_2
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    .line 447
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v3

    .line 448
    iget v4, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    if-eq v3, v4, :cond_0

    .line 451
    iput v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    return-void

    .line 456
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 432
    :cond_4
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    if-ltz v0, :cond_7

    .line 31696
    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    iget v2, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_7

    and-int/lit8 v1, v0, 0x3

    if-nez v1, :cond_6

    add-int/2addr v2, v0

    .line 435
    :goto_1
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    if-ge v0, v2, :cond_5

    .line 436
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->validateRelationship()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {p1, v0}, Lo/getSessionDeviceSize;->ICustomTabsCallback(F)V

    goto :goto_1

    :cond_5
    return-void

    .line 30719
    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->ICustomTabsCallback$Stub()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 31697
    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 459
    :cond_8
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-eq v0, v4, :cond_d

    if-ne v0, v3, :cond_c

    .line 470
    :cond_9
    invoke-virtual {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onPostMessage()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34108
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    iget v3, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    if-ne v0, v3, :cond_a

    const/4 v0, 0x1

    goto :goto_2

    :cond_a
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_b

    return-void

    .line 475
    :cond_b
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    .line 476
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v3

    .line 477
    iget v4, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    if-eq v3, v4, :cond_9

    .line 480
    iput v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    return-void

    .line 485
    :cond_c
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 461
    :cond_d
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    if-ltz v0, :cond_10

    .line 33696
    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    iget v2, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_10

    and-int/lit8 v1, v0, 0x3

    if-nez v1, :cond_f

    add-int/2addr v2, v0

    .line 464
    :goto_3
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    if-ge v0, v2, :cond_e

    .line 465
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->validateRelationship()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_e
    return-void

    .line 32719
    :cond_f
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->ICustomTabsCallback$Stub()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 33697
    :cond_10
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final onMessageChannelReady(Ljava/util/List;Lo/CreateReportRequest;Lo/writeSessionEventDevice;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lo/CreateReportRequest<",
            "TT;>;",
            "Lo/writeSessionEventDevice;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 971
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 974
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    .line 976
    :cond_0
    invoke-direct {p0, p2, p3}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onPostMessage(Lo/CreateReportRequest;Lo/writeSessionEventDevice;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50156
    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    iget v2, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    return-void

    .line 981
    :cond_2
    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    .line 982
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 986
    iput v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    return-void

    .line 972
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public final onNavigationEvent()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2108
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v1, 0x7fffffff

    if-eqz v0, :cond_1

    return v1

    .line 121
    :cond_1
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    iput v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    .line 122
    iget v2, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onRelationshipValidationResult:I

    if-ne v0, v2, :cond_2

    return v1

    .line 125
    :cond_2
    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->onPostMessage(I)I

    move-result v0

    return v0
.end method

.method public final onNavigationEvent(Ljava/lang/Class;Lo/writeSessionEventDevice;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lo/writeSessionEventDevice;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16702
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 238
    invoke-static {}, Lo/ReportUploader$HandlingExceptionCheck;->ICustomTabsCallback()Lo/ReportUploader$HandlingExceptionCheck;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/ReportUploader$HandlingExceptionCheck;->onMessageChannelReady(Ljava/lang/Class;)Lo/CreateReportRequest;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent(Lo/CreateReportRequest;Lo/writeSessionEventDevice;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 16703
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public final onNavigationEvent(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 556
    instance-of v0, p1, Lo/makeTag;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_7

    .line 557
    check-cast p1, Lo/makeTag;

    .line 558
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-eqz v0, :cond_3

    if-ne v0, v3, :cond_2

    .line 560
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    .line 561
    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    add-int/2addr v1, v0

    .line 562
    :goto_0
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    if-ge v0, v1, :cond_0

    .line 563
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->IPostMessageService()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lo/makeTag;->extraCallback(J)V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    return-void

    .line 38725
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 584
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 39702
    :cond_3
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-nez v0, :cond_6

    .line 39181
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->IPostMessageService()J

    move-result-wide v3

    .line 569
    invoke-virtual {p1, v3, v4}, Lo/makeTag;->extraCallback(J)V

    .line 40108
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    iget v3, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    if-ne v0, v3, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    return-void

    .line 574
    :cond_5
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    .line 575
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v3

    .line 576
    iget v4, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    if-eq v3, v4, :cond_3

    .line 579
    iput v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    return-void

    .line 39703
    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 587
    :cond_7
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-eqz v0, :cond_b

    if-ne v0, v3, :cond_a

    .line 589
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    .line 590
    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    add-int/2addr v1, v0

    .line 591
    :goto_2
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    if-ge v0, v1, :cond_8

    .line 592
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->IPostMessageService()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    if-ne v0, v1, :cond_9

    return-void

    .line 40725
    :cond_9
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 613
    :cond_a
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 41702
    :cond_b
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-nez v0, :cond_e

    .line 41181
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->IPostMessageService()J

    move-result-wide v3

    .line 598
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42108
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    iget v3, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    if-ne v0, v3, :cond_c

    const/4 v0, 0x1

    goto :goto_3

    :cond_c
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_d

    return-void

    .line 603
    :cond_d
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    .line 604
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v3

    .line 605
    iget v4, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    if-eq v3, v4, :cond_b

    .line 608
    iput v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    return-void

    .line 41703
    :cond_e
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public final onNavigationEvent(Ljava/util/Map;Lo/getTagWireType$extraCallback;Lo/writeSessionEventDevice;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lo/getTagWireType$extraCallback<",
            "TK;TV;>;",
            "Lo/writeSessionEventDevice;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50258
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 1399
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    if-ltz v0, :cond_5

    .line 50262
    iget v2, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    iget v3, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    sub-int v4, v2, v3

    if-gt v0, v4, :cond_5

    add-int/2addr v3, v0

    .line 1405
    iput v3, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    .line 1408
    :try_start_0
    iget-object v0, p2, Lo/getTagWireType$extraCallback;->onMessageChannelReady:Ljava/lang/Object;

    .line 1409
    iget-object v3, p2, Lo/getTagWireType$extraCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1411
    :goto_0
    invoke-virtual {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_4

    const/4 v5, 0x1

    const-string v6, "Unable to parse map entry."

    if-eq v4, v5, :cond_2

    if-eq v4, v1, :cond_1

    .line 1429
    :try_start_1
    invoke-virtual {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 1430
    :cond_0
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {v4, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1421
    :cond_1
    iget-object v4, p2, Lo/getTagWireType$extraCallback;->extraCallback:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    iget-object v5, p2, Lo/getTagWireType$extraCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1425
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 1423
    invoke-direct {p0, v4, v5, p3}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onPostMessage(Lo/DefaultCreateReportSpiCall$onMessageChannelReady;Ljava/lang/Class;Lo/writeSessionEventDevice;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 1418
    :cond_2
    iget-object v4, p2, Lo/getTagWireType$extraCallback;->onPostMessage:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v5}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onPostMessage(Lo/DefaultCreateReportSpiCall$onMessageChannelReady;Ljava/lang/Class;Lo/writeSessionEventDevice;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1436
    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 1437
    :cond_3
    new-instance p1, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p1, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1441
    :cond_4
    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1444
    iput v2, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    return-void

    :catchall_0
    move-exception p1

    iput v2, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    .line 1445
    throw p1

    .line 50263
    :cond_5
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 50259
    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public final onPostMessage()F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8702
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    const/4 v0, 0x4

    .line 9696
    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    iget v2, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 9620
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->validateRelationship()I

    move-result v0

    .line 169
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0

    .line 9697
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 8703
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final onPostMessage(Ljava/lang/Class;Lo/writeSessionEventDevice;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lo/writeSessionEventDevice;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18702
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 278
    invoke-static {}, Lo/ReportUploader$HandlingExceptionCheck;->ICustomTabsCallback()Lo/ReportUploader$HandlingExceptionCheck;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/ReportUploader$HandlingExceptionCheck;->onMessageChannelReady(Ljava/lang/Class;)Lo/CreateReportRequest;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onPostMessage(Lo/CreateReportRequest;Lo/writeSessionEventDevice;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 18703
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public final onPostMessage(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 492
    instance-of v0, p1, Lo/makeTag;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_7

    .line 493
    check-cast p1, Lo/makeTag;

    .line 494
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-eqz v0, :cond_3

    if-ne v0, v3, :cond_2

    .line 496
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    .line 497
    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    add-int/2addr v1, v0

    .line 498
    :goto_0
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    if-ge v0, v1, :cond_0

    .line 499
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->IPostMessageService()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lo/makeTag;->extraCallback(J)V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    return-void

    .line 34725
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 520
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 35702
    :cond_3
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-nez v0, :cond_6

    .line 35175
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->IPostMessageService()J

    move-result-wide v3

    .line 505
    invoke-virtual {p1, v3, v4}, Lo/makeTag;->extraCallback(J)V

    .line 36108
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    iget v3, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    if-ne v0, v3, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    return-void

    .line 510
    :cond_5
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    .line 511
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v3

    .line 512
    iget v4, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    if-eq v3, v4, :cond_3

    .line 515
    iput v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    return-void

    .line 35703
    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 523
    :cond_7
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-eqz v0, :cond_b

    if-ne v0, v3, :cond_a

    .line 525
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    .line 526
    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    add-int/2addr v1, v0

    .line 527
    :goto_2
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    if-ge v0, v1, :cond_8

    .line 528
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->IPostMessageService()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    if-ne v0, v1, :cond_9

    return-void

    .line 36725
    :cond_9
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 549
    :cond_a
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 37702
    :cond_b
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-nez v0, :cond_e

    .line 37175
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->IPostMessageService()J

    move-result-wide v3

    .line 534
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38108
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    iget v3, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    if-ne v0, v3, :cond_c

    const/4 v0, 0x1

    goto :goto_3

    :cond_c
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_d

    return-void

    .line 539
    :cond_d
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    .line 540
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v3

    .line 541
    iget v4, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    if-eq v3, v4, :cond_b

    .line 544
    iput v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    return-void

    .line 37703
    :cond_e
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public final onRelationshipValidationResult()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9702
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 175
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->IPostMessageService()J

    move-result-wide v0

    return-wide v0

    .line 9703
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final onRelationshipValidationResult(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 684
    instance-of v0, p1, Lo/makeTag;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    .line 685
    move-object v0, p1

    check-cast v0, Lo/makeTag;

    .line 686
    iget p1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {p1}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result p1

    if-eq p1, v3, :cond_4

    if-ne p1, v2, :cond_3

    .line 688
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result p1

    if-ltz p1, :cond_2

    .line 47696
    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    iget v2, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    sub-int/2addr v1, v2

    if-gt p1, v1, :cond_2

    and-int/lit8 v1, p1, 0x7

    if-nez v1, :cond_1

    add-int/2addr v2, p1

    .line 691
    :goto_0
    iget p1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    if-ge p1, v2, :cond_0

    .line 692
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lo/makeTag;->extraCallback(J)V

    goto :goto_0

    :cond_0
    return-void

    .line 46711
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->ICustomTabsCallback$Stub()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 47697
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 712
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 697
    :cond_4
    invoke-virtual {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->asBinder()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lo/makeTag;->extraCallback(J)V

    .line 48108
    iget p1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    iget v2, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    if-ne p1, v2, :cond_5

    const/4 p1, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_6

    return-void

    .line 702
    :cond_6
    iget p1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    .line 703
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v2

    .line 704
    iget v4, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    if-eq v2, v4, :cond_4

    .line 707
    iput p1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    return-void

    .line 715
    :cond_7
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-eq v0, v3, :cond_c

    if-ne v0, v2, :cond_b

    .line 717
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    if-ltz v0, :cond_a

    .line 49696
    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    iget v2, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_a

    and-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_9

    add-int/2addr v2, v0

    .line 720
    :goto_2
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    if-ge v0, v2, :cond_8

    .line 721
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    return-void

    .line 48711
    :cond_9
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->ICustomTabsCallback$Stub()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 49697
    :cond_a
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 741
    :cond_b
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 726
    :cond_c
    invoke-virtual {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->asBinder()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50108
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    iget v2, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    if-ne v0, v2, :cond_d

    const/4 v0, 0x1

    goto :goto_3

    :cond_d
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_e

    return-void

    .line 731
    :cond_e
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    .line 732
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v2

    .line 733
    iget v4, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    if-eq v2, v4, :cond_c

    .line 736
    iput v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    return-void
.end method

.method public final onTransact()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13702
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    const/4 v0, 0x4

    .line 14696
    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    iget v2, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 14620
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->validateRelationship()I

    move-result v0

    return v0

    .line 14697
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 13703
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final onTransact(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 748
    instance-of v0, p1, Lo/getEventAppExecutionExceptionSize;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x2

    if-eqz v0, :cond_8

    .line 749
    check-cast p1, Lo/getEventAppExecutionExceptionSize;

    .line 750
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-eq v0, v4, :cond_4

    if-ne v0, v3, :cond_3

    .line 761
    :cond_0
    invoke-virtual {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onTransact()I

    move-result v0

    invoke-virtual {p1, v0}, Lo/getEventAppExecutionExceptionSize;->onMessageChannelReady(I)V

    .line 50119
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    iget v3, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    return-void

    .line 766
    :cond_2
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    .line 767
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v3

    .line 768
    iget v4, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    if-eq v3, v4, :cond_0

    .line 771
    iput v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    return-void

    .line 776
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 752
    :cond_4
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    if-ltz v0, :cond_7

    .line 50115
    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    iget v2, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_7

    and-int/lit8 v1, v0, 0x3

    if-nez v1, :cond_6

    add-int/2addr v2, v0

    .line 755
    :goto_1
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    if-ge v0, v2, :cond_5

    .line 756
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->validateRelationship()I

    move-result v0

    invoke-virtual {p1, v0}, Lo/getEventAppExecutionExceptionSize;->onMessageChannelReady(I)V

    goto :goto_1

    :cond_5
    return-void

    .line 50112
    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->ICustomTabsCallback$Stub()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 50116
    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 779
    :cond_8
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-eq v0, v4, :cond_d

    if-ne v0, v3, :cond_c

    .line 790
    :cond_9
    invoke-virtual {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onTransact()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50130
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    iget v3, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    if-ne v0, v3, :cond_a

    const/4 v0, 0x1

    goto :goto_2

    :cond_a
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_b

    return-void

    .line 795
    :cond_b
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    .line 796
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v3

    .line 797
    iget v4, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    if-eq v3, v4, :cond_9

    .line 800
    iput v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    return-void

    .line 805
    :cond_c
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 781
    :cond_d
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    if-ltz v0, :cond_10

    .line 50126
    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    iget v2, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_10

    and-int/lit8 v1, v0, 0x3

    if-nez v1, :cond_f

    add-int/2addr v2, v0

    .line 784
    :goto_3
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    if-ge v0, v2, :cond_e

    .line 785
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->validateRelationship()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_e
    return-void

    .line 50123
    :cond_f
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->ICustomTabsCallback$Stub()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 50127
    :cond_10
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final postMessage()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22702
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 335
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    return v0

    .line 22703
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final postMessage(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1331
    instance-of v0, p1, Lo/makeTag;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_6

    .line 1332
    check-cast p1, Lo/makeTag;

    .line 1333
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-eqz v0, :cond_2

    if-ne v0, v3, :cond_1

    .line 1335
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    .line 1336
    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    add-int/2addr v1, v0

    .line 1337
    :goto_0
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    if-ge v0, v1, :cond_0

    .line 1338
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->IPostMessageService()J

    move-result-wide v2

    invoke-static {v2, v3}, Lo/writeSessionAppClsId;->onPostMessage(J)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lo/makeTag;->extraCallback(J)V

    goto :goto_0

    :cond_0
    return-void

    .line 1358
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 50246
    :cond_2
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-nez v0, :cond_5

    .line 50245
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->IPostMessageService()J

    move-result-wide v3

    invoke-static {v3, v4}, Lo/writeSessionAppClsId;->onPostMessage(J)J

    move-result-wide v3

    .line 1343
    invoke-virtual {p1, v3, v4}, Lo/makeTag;->extraCallback(J)V

    .line 50250
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    iget v3, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    if-ne v0, v3, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    return-void

    .line 1348
    :cond_4
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    .line 1349
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v3

    .line 1350
    iget v4, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    if-eq v3, v4, :cond_2

    .line 1353
    iput v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    return-void

    .line 50247
    :cond_5
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1361
    :cond_6
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-eqz v0, :cond_9

    if-ne v0, v3, :cond_8

    .line 1363
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    .line 1364
    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    add-int/2addr v1, v0

    .line 1365
    :goto_2
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    if-ge v0, v1, :cond_7

    .line 1366
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->IPostMessageService()J

    move-result-wide v2

    invoke-static {v2, v3}, Lo/writeSessionAppClsId;->onPostMessage(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    return-void

    .line 1386
    :cond_8
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 50253
    :cond_9
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-nez v0, :cond_c

    .line 50252
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->IPostMessageService()J

    move-result-wide v3

    invoke-static {v3, v4}, Lo/writeSessionAppClsId;->onPostMessage(J)J

    move-result-wide v3

    .line 1371
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50257
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    iget v3, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    if-ne v0, v3, :cond_a

    const/4 v0, 0x1

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_b

    return-void

    .line 1376
    :cond_b
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    .line 1377
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v3

    .line 1378
    iget v4, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    if-eq v3, v4, :cond_9

    .line 1381
    iput v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    return-void

    .line 50254
    :cond_c
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public final requestPostMessageChannel()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23702
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    const/4 v0, 0x4

    .line 24696
    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    iget v2, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 24620
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->validateRelationship()I

    move-result v0

    return v0

    .line 24697
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 23703
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final updateVisuals()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25702
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 353
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    invoke-static {v0}, Lo/writeSessionAppClsId;->onMessageChannelReady(I)I

    move-result v0

    return v0

    .line 25703
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final updateVisuals(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1269
    instance-of v0, p1, Lo/getEventAppExecutionExceptionSize;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_6

    .line 1270
    check-cast p1, Lo/getEventAppExecutionExceptionSize;

    .line 1271
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-eqz v0, :cond_2

    if-ne v0, v3, :cond_1

    .line 1273
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    .line 1274
    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    add-int/2addr v1, v0

    .line 1275
    :goto_0
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    if-ge v0, v1, :cond_0

    .line 1276
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    invoke-static {v0}, Lo/writeSessionAppClsId;->onMessageChannelReady(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lo/getEventAppExecutionExceptionSize;->onMessageChannelReady(I)V

    goto :goto_0

    :cond_0
    return-void

    .line 1296
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 50232
    :cond_2
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-nez v0, :cond_5

    .line 50231
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    invoke-static {v0}, Lo/writeSessionAppClsId;->onMessageChannelReady(I)I

    move-result v0

    .line 1281
    invoke-virtual {p1, v0}, Lo/getEventAppExecutionExceptionSize;->onMessageChannelReady(I)V

    .line 50236
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    iget v3, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    if-ne v0, v3, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    return-void

    .line 1286
    :cond_4
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    .line 1287
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v3

    .line 1288
    iget v4, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    if-eq v3, v4, :cond_2

    .line 1291
    iput v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    return-void

    .line 50233
    :cond_5
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1299
    :cond_6
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-eqz v0, :cond_9

    if-ne v0, v3, :cond_8

    .line 1301
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    .line 1302
    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    add-int/2addr v1, v0

    .line 1303
    :goto_2
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    if-ge v0, v1, :cond_7

    .line 1304
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    invoke-static {v0}, Lo/writeSessionAppClsId;->onMessageChannelReady(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    return-void

    .line 1324
    :cond_8
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 50239
    :cond_9
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-nez v0, :cond_c

    .line 50238
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    invoke-static {v0}, Lo/writeSessionAppClsId;->onMessageChannelReady(I)I

    move-result v0

    .line 1309
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50243
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    iget v3, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    if-ne v0, v3, :cond_a

    const/4 v0, 0x1

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_b

    return-void

    .line 1314
    :cond_b
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    .line 1315
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v3

    .line 1316
    iget v4, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    if-eq v3, v4, :cond_9

    .line 1319
    iput v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    return-void

    .line 50240
    :cond_c
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public final warmup()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21702
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 329
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    return v0

    .line 21703
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final warmup(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/SessionProtobufHelper;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 994
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 999
    :cond_0
    invoke-virtual {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->getInterfaceDescriptor()Lo/SessionProtobufHelper;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50157
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    iget v1, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onMessageChannelReady:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    return-void

    .line 1004
    :cond_2
    iget v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    .line 1005
    invoke-direct {p0}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    .line 1006
    iget v2, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->extraCallback:I

    if-eq v1, v2, :cond_0

    .line 1009
    iput v0, p0, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;->onNavigationEvent:I

    return-void

    .line 995
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method
