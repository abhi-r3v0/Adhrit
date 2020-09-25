.class final Lo/writeSessionAppClsId$onPostMessage;
.super Lo/writeSessionAppClsId;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeSessionAppClsId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onPostMessage"
.end annotation


# instance fields
.field private ICustomTabsCallback$Stub:J

.field private asBinder:J

.field private asInterface:J

.field private final extraCallback:Ljava/nio/ByteBuffer;

.field private getInterfaceDescriptor:I

.field private newSession:I

.field private final onRelationshipValidationResult:J

.field private onTransact:I


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .locals 4

    const/4 p2, 0x0

    .line 1321
    invoke-direct {p0, p2}, Lo/writeSessionAppClsId;-><init>(B)V

    const p2, 0x7fffffff

    .line 1315
    iput p2, p0, Lo/writeSessionAppClsId$onPostMessage;->getInterfaceDescriptor:I

    .line 1322
    iput-object p1, p0, Lo/writeSessionAppClsId$onPostMessage;->extraCallback:Ljava/nio/ByteBuffer;

    .line 1323
    invoke-static {p1}, Lo/CreateReportSpiCall;->extraCallback(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lo/writeSessionAppClsId$onPostMessage;->onRelationshipValidationResult:J

    .line 1324
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p2

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/writeSessionAppClsId$onPostMessage;->asInterface:J

    .line 1325
    iget-wide v0, p0, Lo/writeSessionAppClsId$onPostMessage;->onRelationshipValidationResult:J

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p1

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lo/writeSessionAppClsId$onPostMessage;->ICustomTabsCallback$Stub:J

    .line 1326
    iput-wide v0, p0, Lo/writeSessionAppClsId$onPostMessage;->asBinder:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;ZB)V
    .locals 0

    .line 1280
    invoke-direct {p0, p1, p2}, Lo/writeSessionAppClsId$onPostMessage;-><init>(Ljava/nio/ByteBuffer;Z)V

    return-void
.end method

.method private ICustomTabsCallback$Stub(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 11001
    iget-wide v0, p0, Lo/writeSessionAppClsId$onPostMessage;->asInterface:J

    iget-wide v2, p0, Lo/writeSessionAppClsId$onPostMessage;->ICustomTabsCallback$Stub:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    if-gt p1, v1, :cond_0

    int-to-long v0, p1

    add-long/2addr v2, v0

    .line 1978
    iput-wide v2, p0, Lo/writeSessionAppClsId$onPostMessage;->ICustomTabsCallback$Stub:J

    return-void

    :cond_0
    if-gez p1, :cond_1

    .line 1983
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onNavigationEvent()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1985
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

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

    .line 1877
    iget-wide v0, p0, Lo/writeSessionAppClsId$onPostMessage;->ICustomTabsCallback$Stub:J

    .line 1879
    iget-wide v2, p0, Lo/writeSessionAppClsId$onPostMessage;->asInterface:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x8

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    add-long/2addr v4, v0

    .line 1883
    iput-wide v4, p0, Lo/writeSessionAppClsId$onPostMessage;->ICustomTabsCallback$Stub:J

    .line 1884
    invoke-static {v0, v1}, Lo/CreateReportSpiCall;->extraCallback(J)B

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const-wide/16 v6, 0x1

    add-long/2addr v6, v0

    .line 1885
    invoke-static {v6, v7}, Lo/CreateReportSpiCall;->extraCallback(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x2

    add-long/2addr v6, v0

    .line 1886
    invoke-static {v6, v7}, Lo/CreateReportSpiCall;->extraCallback(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x3

    add-long/2addr v6, v0

    .line 1887
    invoke-static {v6, v7}, Lo/CreateReportSpiCall;->extraCallback(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x4

    add-long/2addr v6, v0

    .line 1888
    invoke-static {v6, v7}, Lo/CreateReportSpiCall;->extraCallback(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x5

    add-long/2addr v6, v0

    .line 1889
    invoke-static {v6, v7}, Lo/CreateReportSpiCall;->extraCallback(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x28

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x6

    add-long/2addr v6, v0

    .line 1890
    invoke-static {v6, v7}, Lo/CreateReportSpiCall;->extraCallback(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x30

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x7

    add-long/2addr v0, v6

    .line 1891
    invoke-static {v0, v1}, Lo/CreateReportSpiCall;->extraCallback(J)B

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v4

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0

    .line 1880
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private IPostMessageService()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1862
    iget-wide v0, p0, Lo/writeSessionAppClsId$onPostMessage;->ICustomTabsCallback$Stub:J

    .line 1864
    iget-wide v2, p0, Lo/writeSessionAppClsId$onPostMessage;->asInterface:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    add-long/2addr v4, v0

    .line 1868
    iput-wide v4, p0, Lo/writeSessionAppClsId$onPostMessage;->ICustomTabsCallback$Stub:J

    .line 1869
    invoke-static {v0, v1}, Lo/CreateReportSpiCall;->extraCallback(J)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const-wide/16 v3, 0x1

    add-long/2addr v3, v0

    .line 1870
    invoke-static {v3, v4}, Lo/CreateReportSpiCall;->extraCallback(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    const-wide/16 v3, 0x2

    add-long/2addr v3, v0

    .line 1871
    invoke-static {v3, v4}, Lo/CreateReportSpiCall;->extraCallback(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const-wide/16 v3, 0x3

    add-long/2addr v0, v3

    .line 1872
    invoke-static {v0, v1}, Lo/CreateReportSpiCall;->extraCallback(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0

    .line 1865
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private IPostMessageService$Stub()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1712
    iget-wide v0, p0, Lo/writeSessionAppClsId$onPostMessage;->ICustomTabsCallback$Stub:J

    .line 1714
    iget-wide v2, p0, Lo/writeSessionAppClsId$onPostMessage;->asInterface:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_6

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    .line 1719
    invoke-static {v0, v1}, Lo/CreateReportSpiCall;->extraCallback(J)B

    move-result v0

    if-ltz v0, :cond_0

    .line 1720
    iput-wide v4, p0, Lo/writeSessionAppClsId$onPostMessage;->ICustomTabsCallback$Stub:J

    return v0

    .line 1722
    :cond_0
    iget-wide v6, p0, Lo/writeSessionAppClsId$onPostMessage;->asInterface:J

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x9

    cmp-long v1, v6, v8

    if-ltz v1, :cond_6

    add-long v6, v4, v2

    .line 1724
    invoke-static {v4, v5}, Lo/CreateReportSpiCall;->extraCallback(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v0, v1

    if-gez v0, :cond_1

    xor-int/lit8 v0, v0, -0x80

    goto :goto_0

    :cond_1
    add-long v4, v6, v2

    .line 1726
    invoke-static {v6, v7}, Lo/CreateReportSpiCall;->extraCallback(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_3

    xor-int/lit16 v0, v0, 0x3f80

    :cond_2
    move-wide v6, v4

    goto :goto_0

    :cond_3
    add-long v6, v4, v2

    .line 1728
    invoke-static {v4, v5}, Lo/CreateReportSpiCall;->extraCallback(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x15

    xor-int/2addr v0, v1

    if-gez v0, :cond_4

    const v1, -0x1fc080

    xor-int/2addr v0, v1

    goto :goto_0

    :cond_4
    add-long v4, v6, v2

    .line 1731
    invoke-static {v6, v7}, Lo/CreateReportSpiCall;->extraCallback(J)B

    move-result v1

    shl-int/lit8 v6, v1, 0x1c

    xor-int/2addr v0, v6

    const v6, 0xfe03f80

    xor-int/2addr v0, v6

    if-gez v1, :cond_2

    add-long v6, v4, v2

    .line 1735
    invoke-static {v4, v5}, Lo/CreateReportSpiCall;->extraCallback(J)B

    move-result v1

    if-gez v1, :cond_5

    add-long v4, v6, v2

    .line 1736
    invoke-static {v6, v7}, Lo/CreateReportSpiCall;->extraCallback(J)B

    move-result v1

    if-gez v1, :cond_2

    add-long v6, v4, v2

    .line 1737
    invoke-static {v4, v5}, Lo/CreateReportSpiCall;->extraCallback(J)B

    move-result v1

    if-gez v1, :cond_5

    add-long v4, v6, v2

    .line 1738
    invoke-static {v6, v7}, Lo/CreateReportSpiCall;->extraCallback(J)B

    move-result v1

    if-gez v1, :cond_2

    add-long v6, v4, v2

    .line 1739
    invoke-static {v4, v5}, Lo/CreateReportSpiCall;->extraCallback(J)B

    move-result v1

    if-ltz v1, :cond_6

    .line 1743
    :cond_5
    :goto_0
    iput-wide v6, p0, Lo/writeSessionAppClsId$onPostMessage;->ICustomTabsCallback$Stub:J

    return v0

    .line 1746
    :cond_6
    invoke-virtual {p0}, Lo/writeSessionAppClsId$onPostMessage;->requestPostMessageChannel()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method private cancel()V
    .locals 4

    .line 1989
    iget-wide v0, p0, Lo/writeSessionAppClsId$onPostMessage;->asInterface:J

    iget v2, p0, Lo/writeSessionAppClsId$onPostMessage;->onTransact:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/writeSessionAppClsId$onPostMessage;->asInterface:J

    .line 1990
    iget-wide v2, p0, Lo/writeSessionAppClsId$onPostMessage;->asBinder:J

    sub-long v2, v0, v2

    long-to-int v3, v2

    .line 1991
    iget v2, p0, Lo/writeSessionAppClsId$onPostMessage;->getInterfaceDescriptor:I

    if-le v3, v2, :cond_0

    sub-int/2addr v3, v2

    .line 1993
    iput v3, p0, Lo/writeSessionAppClsId$onPostMessage;->onTransact:I

    int-to-long v2, v3

    sub-long/2addr v0, v2

    .line 1994
    iput-wide v0, p0, Lo/writeSessionAppClsId$onPostMessage;->asInterface:J

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1996
    iput v0, p0, Lo/writeSessionAppClsId$onPostMessage;->onTransact:I

    return-void
.end method

.method private validateRelationship()J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1790
    iget-wide v0, p0, Lo/writeSessionAppClsId$onPostMessage;->ICustomTabsCallback$Stub:J

    .line 1792
    iget-wide v2, p0, Lo/writeSessionAppClsId$onPostMessage;->asInterface:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_9

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    .line 1798
    invoke-static {v0, v1}, Lo/CreateReportSpiCall;->extraCallback(J)B

    move-result v0

    if-ltz v0, :cond_0

    .line 1799
    iput-wide v4, p0, Lo/writeSessionAppClsId$onPostMessage;->ICustomTabsCallback$Stub:J

    int-to-long v0, v0

    return-wide v0

    .line 1801
    :cond_0
    iget-wide v6, p0, Lo/writeSessionAppClsId$onPostMessage;->asInterface:J

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x9

    cmp-long v1, v6, v8

    if-ltz v1, :cond_9

    add-long v6, v4, v2

    .line 1803
    invoke-static {v4, v5}, Lo/CreateReportSpiCall;->extraCallback(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v0, v1

    if-gez v0, :cond_1

    xor-int/lit8 v0, v0, -0x80

    :goto_0
    int-to-long v0, v0

    goto/16 :goto_4

    :cond_1
    add-long v4, v6, v2

    .line 1805
    invoke-static {v6, v7}, Lo/CreateReportSpiCall;->extraCallback(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_3

    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    :cond_2
    :goto_1
    move-wide v6, v4

    goto/16 :goto_4

    :cond_3
    add-long v6, v4, v2

    .line 1807
    invoke-static {v4, v5}, Lo/CreateReportSpiCall;->extraCallback(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x15

    xor-int/2addr v0, v1

    if-gez v0, :cond_4

    const v1, -0x1fc080

    xor-int/2addr v0, v1

    goto :goto_0

    :cond_4
    int-to-long v0, v0

    add-long v4, v6, v2

    .line 1809
    invoke-static {v6, v7}, Lo/CreateReportSpiCall;->extraCallback(J)B

    move-result v6

    int-to-long v6, v6

    const/16 v8, 0x1c

    shl-long/2addr v6, v8

    xor-long/2addr v0, v6

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-ltz v8, :cond_5

    const-wide/32 v2, 0xfe03f80

    :goto_2
    xor-long/2addr v0, v2

    goto :goto_1

    :cond_5
    add-long v8, v4, v2

    .line 1811
    invoke-static {v4, v5}, Lo/CreateReportSpiCall;->extraCallback(J)B

    move-result v4

    int-to-long v4, v4

    const/16 v10, 0x23

    shl-long/2addr v4, v10

    xor-long/2addr v0, v4

    cmp-long v4, v0, v6

    if-gez v4, :cond_6

    const-wide v2, -0x7f01fc080L

    :goto_3
    xor-long/2addr v0, v2

    move-wide v6, v8

    goto :goto_4

    :cond_6
    add-long v4, v8, v2

    .line 1813
    invoke-static {v8, v9}, Lo/CreateReportSpiCall;->extraCallback(J)B

    move-result v8

    int-to-long v8, v8

    const/16 v10, 0x2a

    shl-long/2addr v8, v10

    xor-long/2addr v0, v8

    cmp-long v8, v0, v6

    if-ltz v8, :cond_7

    const-wide v2, 0x3f80fe03f80L

    goto :goto_2

    :cond_7
    add-long v8, v4, v2

    .line 1815
    invoke-static {v4, v5}, Lo/CreateReportSpiCall;->extraCallback(J)B

    move-result v4

    int-to-long v4, v4

    const/16 v10, 0x31

    shl-long/2addr v4, v10

    xor-long/2addr v0, v4

    cmp-long v4, v0, v6

    if-gez v4, :cond_8

    const-wide v2, -0x1fc07f01fc080L

    goto :goto_3

    :cond_8
    add-long v4, v8, v2

    .line 1825
    invoke-static {v8, v9}, Lo/CreateReportSpiCall;->extraCallback(J)B

    move-result v8

    int-to-long v8, v8

    const/16 v10, 0x38

    shl-long/2addr v8, v10

    xor-long/2addr v0, v8

    const-wide v8, 0xfe03f80fe03f80L

    xor-long/2addr v0, v8

    cmp-long v8, v0, v6

    if-gez v8, :cond_2

    add-long/2addr v2, v4

    .line 1836
    invoke-static {v4, v5}, Lo/CreateReportSpiCall;->extraCallback(J)B

    move-result v4

    int-to-long v4, v4

    cmp-long v8, v4, v6

    if-ltz v8, :cond_9

    move-wide v6, v2

    .line 1841
    :goto_4
    iput-wide v6, p0, Lo/writeSessionAppClsId$onPostMessage;->ICustomTabsCallback$Stub:J

    return-wide v0

    .line 1844
    :cond_9
    invoke-virtual {p0}, Lo/writeSessionAppClsId$onPostMessage;->requestPostMessageChannel()J

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

    .line 1466
    invoke-direct {p0}, Lo/writeSessionAppClsId$onPostMessage;->IPostMessageService()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final ICustomTabsCallback(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 10943
    iget-wide v0, p0, Lo/writeSessionAppClsId$onPostMessage;->ICustomTabsCallback$Stub:J

    iget-wide v2, p0, Lo/writeSessionAppClsId$onPostMessage;->asBinder:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    add-int/2addr p1, v1

    .line 1910
    iget v0, p0, Lo/writeSessionAppClsId$onPostMessage;->getInterfaceDescriptor:I

    if-gt p1, v0, :cond_0

    .line 1914
    iput p1, p0, Lo/writeSessionAppClsId$onPostMessage;->getInterfaceDescriptor:I

    .line 1916
    invoke-direct {p0}, Lo/writeSessionAppClsId$onPostMessage;->cancel()V

    return v0

    .line 1912
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1907
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

    .line 1491
    invoke-direct {p0}, Lo/writeSessionAppClsId$onPostMessage;->IPostMessageService()I

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

    .line 1682
    invoke-direct {p0}, Lo/writeSessionAppClsId$onPostMessage;->IPostMessageService$Stub()I

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

    .line 1687
    invoke-direct {p0}, Lo/writeSessionAppClsId$onPostMessage;->IPostMessageService()I

    move-result v0

    return v0
.end method

.method public final ICustomTabsService$Stub$Proxy()I
    .locals 4

    .line 1943
    iget-wide v0, p0, Lo/writeSessionAppClsId$onPostMessage;->ICustomTabsCallback$Stub:J

    iget-wide v2, p0, Lo/writeSessionAppClsId$onPostMessage;->asBinder:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public final asBinder()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1481
    invoke-direct {p0}, Lo/writeSessionAppClsId$onPostMessage;->IPostMessageService$Stub()I

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

    .line 1496
    invoke-direct {p0}, Lo/writeSessionAppClsId$onPostMessage;->validateRelationship()J

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

    .line 1476
    invoke-direct {p0}, Lo/writeSessionAppClsId$onPostMessage;->validateRelationship()J

    move-result-wide v0

    return-wide v0
.end method

.method public final extraCallback(I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1360
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

    .line 1378
    invoke-direct {p0, v4}, Lo/writeSessionAppClsId$onPostMessage;->ICustomTabsCallback$Stub(I)V

    return v2

    .line 1381
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_1
    return v1

    .line 5439
    :cond_2
    invoke-virtual {p0}, Lo/writeSessionAppClsId;->onMessageChannelReady()I

    move-result v0

    if-eqz v0, :cond_3

    .line 5440
    invoke-virtual {p0, v0}, Lo/writeSessionAppClsId;->extraCallback(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1373
    :cond_3
    invoke-static {p1}, Lo/DefaultCreateReportSpiCall;->onPostMessage(I)I

    move-result p1

    invoke-static {p1, v4}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p1

    .line 6348
    iget v0, p0, Lo/writeSessionAppClsId$onPostMessage;->newSession:I

    if-ne v0, p1, :cond_4

    return v2

    .line 6349
    :cond_4
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onPostMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1368
    :cond_5
    invoke-direct {p0}, Lo/writeSessionAppClsId$onPostMessage;->IPostMessageService$Stub()I

    move-result p1

    invoke-direct {p0, p1}, Lo/writeSessionAppClsId$onPostMessage;->ICustomTabsCallback$Stub(I)V

    return v2

    :cond_6
    const/16 p1, 0x8

    .line 1365
    invoke-direct {p0, p1}, Lo/writeSessionAppClsId$onPostMessage;->ICustomTabsCallback$Stub(I)V

    return v2

    .line 4001
    :cond_7
    iget-wide v3, p0, Lo/writeSessionAppClsId$onPostMessage;->asInterface:J

    iget-wide v5, p0, Lo/writeSessionAppClsId$onPostMessage;->ICustomTabsCallback$Stub:J

    sub-long/2addr v3, v5

    long-to-int p1, v3

    const-wide/16 v3, 0x1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_9

    :goto_0
    if-ge v1, v0, :cond_8

    .line 4759
    iget-wide v5, p0, Lo/writeSessionAppClsId$onPostMessage;->ICustomTabsCallback$Stub:J

    add-long v7, v5, v3

    iput-wide v7, p0, Lo/writeSessionAppClsId$onPostMessage;->ICustomTabsCallback$Stub:J

    invoke-static {v5, v6}, Lo/CreateReportSpiCall;->extraCallback(J)B

    move-result p1

    if-gez p1, :cond_a

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4763
    :cond_8
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->ICustomTabsCallback()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_9
    :goto_1
    if-ge v1, v0, :cond_c

    .line 4948
    iget-wide v5, p0, Lo/writeSessionAppClsId$onPostMessage;->ICustomTabsCallback$Stub:J

    iget-wide v7, p0, Lo/writeSessionAppClsId$onPostMessage;->asInterface:J

    cmp-long p1, v5, v7

    if-eqz p1, :cond_b

    add-long v7, v5, v3

    .line 4951
    iput-wide v7, p0, Lo/writeSessionAppClsId$onPostMessage;->ICustomTabsCallback$Stub:J

    invoke-static {v5, v6}, Lo/CreateReportSpiCall;->extraCallback(J)B

    move-result p1

    if-gez p1, :cond_a

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_a
    return v2

    .line 4949
    :cond_b
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 4772
    :cond_c
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

    .line 1697
    invoke-direct {p0}, Lo/writeSessionAppClsId$onPostMessage;->IPostMessageService$Stub()I

    move-result v0

    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public final getInterfaceDescriptor()Lo/SessionProtobufHelper;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1616
    invoke-direct {p0}, Lo/writeSessionAppClsId$onPostMessage;->IPostMessageService$Stub()I

    move-result v0

    if-lez v0, :cond_0

    .line 9001
    iget-wide v1, p0, Lo/writeSessionAppClsId$onPostMessage;->asInterface:J

    iget-wide v3, p0, Lo/writeSessionAppClsId$onPostMessage;->ICustomTabsCallback$Stub:J

    sub-long/2addr v1, v3

    long-to-int v2, v1

    if-gt v0, v2, :cond_0

    .line 1624
    new-array v1, v0, [B

    int-to-long v5, v0

    .line 1625
    invoke-static {v3, v4, v1, v5, v6}, Lo/CreateReportSpiCall;->ICustomTabsCallback(J[BJ)V

    .line 1626
    iget-wide v2, p0, Lo/writeSessionAppClsId$onPostMessage;->ICustomTabsCallback$Stub:J

    add-long/2addr v2, v5

    iput-wide v2, p0, Lo/writeSessionAppClsId$onPostMessage;->ICustomTabsCallback$Stub:J

    .line 1627
    invoke-static {v1}, Lo/SessionProtobufHelper;->onPostMessage([B)Lo/SessionProtobufHelper;

    move-result-object v0

    return-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 1632
    sget-object v0, Lo/SessionProtobufHelper;->onNavigationEvent:Lo/SessionProtobufHelper;

    return-object v0

    :cond_1
    if-gez v0, :cond_2

    .line 1635
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onNavigationEvent()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1637
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final mayLaunchUrl()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1702
    invoke-direct {p0}, Lo/writeSessionAppClsId$onPostMessage;->validateRelationship()J

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
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1525
    invoke-direct {p0}, Lo/writeSessionAppClsId$onPostMessage;->IPostMessageService$Stub()I

    move-result v0

    if-lez v0, :cond_0

    .line 8001
    iget-wide v1, p0, Lo/writeSessionAppClsId$onPostMessage;->asInterface:J

    iget-wide v3, p0, Lo/writeSessionAppClsId$onPostMessage;->ICustomTabsCallback$Stub:J

    sub-long/2addr v1, v3

    long-to-int v2, v1

    if-gt v0, v2, :cond_0

    .line 8005
    iget-wide v1, p0, Lo/writeSessionAppClsId$onPostMessage;->onRelationshipValidationResult:J

    sub-long/2addr v3, v1

    long-to-int v1, v3

    .line 1528
    iget-object v2, p0, Lo/writeSessionAppClsId$onPostMessage;->extraCallback:Ljava/nio/ByteBuffer;

    invoke-static {v2, v1, v0}, Lo/CompositeCreateReportSpiCall$1;->extraCallback(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v1

    .line 1529
    iget-wide v2, p0, Lo/writeSessionAppClsId$onPostMessage;->ICustomTabsCallback$Stub:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lo/writeSessionAppClsId$onPostMessage;->ICustomTabsCallback$Stub:J

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    if-gtz v0, :cond_2

    .line 1537
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onNavigationEvent()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1539
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final onMessageChannelReady()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2938
    iget-wide v0, p0, Lo/writeSessionAppClsId$onPostMessage;->ICustomTabsCallback$Stub:J

    iget-wide v2, p0, Lo/writeSessionAppClsId$onPostMessage;->asInterface:J

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-nez v5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1333
    iput v4, p0, Lo/writeSessionAppClsId$onPostMessage;->newSession:I

    return v4

    .line 1337
    :cond_1
    invoke-direct {p0}, Lo/writeSessionAppClsId$onPostMessage;->IPostMessageService$Stub()I

    move-result v0

    iput v0, p0, Lo/writeSessionAppClsId$onPostMessage;->newSession:I

    .line 1338
    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->onPostMessage(I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 1343
    iget v0, p0, Lo/writeSessionAppClsId$onPostMessage;->newSession:I

    return v0

    .line 1341
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

    .line 1461
    invoke-direct {p0}, Lo/writeSessionAppClsId$onPostMessage;->ICustomTabsService$Stub()J

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

    .line 1348
    iget v0, p0, Lo/writeSessionAppClsId$onPostMessage;->newSession:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1349
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

    .line 1471
    invoke-direct {p0}, Lo/writeSessionAppClsId$onPostMessage;->validateRelationship()J

    move-result-wide v0

    return-wide v0
.end method

.method public final onPostMessage(I)V
    .locals 0

    .line 1923
    iput p1, p0, Lo/writeSessionAppClsId$onPostMessage;->getInterfaceDescriptor:I

    .line 1924
    invoke-direct {p0}, Lo/writeSessionAppClsId$onPostMessage;->cancel()V

    return-void
.end method

.method public final onRelationshipValidationResult()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1486
    invoke-direct {p0}, Lo/writeSessionAppClsId$onPostMessage;->ICustomTabsService$Stub()J

    move-result-wide v0

    return-wide v0
.end method

.method public final onTransact()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1501
    invoke-direct {p0}, Lo/writeSessionAppClsId$onPostMessage;->IPostMessageService$Stub()I

    move-result v0

    if-lez v0, :cond_0

    .line 7001
    iget-wide v1, p0, Lo/writeSessionAppClsId$onPostMessage;->asInterface:J

    iget-wide v3, p0, Lo/writeSessionAppClsId$onPostMessage;->ICustomTabsCallback$Stub:J

    sub-long/2addr v1, v3

    long-to-int v2, v1

    if-gt v0, v2, :cond_0

    .line 1507
    new-array v1, v0, [B

    int-to-long v5, v0

    .line 1508
    invoke-static {v3, v4, v1, v5, v6}, Lo/CreateReportSpiCall;->ICustomTabsCallback(J[BJ)V

    .line 1509
    new-instance v0, Ljava/lang/String;

    sget-object v2, Lo/getEventLogSize;->extraCallback:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1510
    iget-wide v1, p0, Lo/writeSessionAppClsId$onPostMessage;->ICustomTabsCallback$Stub:J

    add-long/2addr v1, v5

    iput-wide v1, p0, Lo/writeSessionAppClsId$onPostMessage;->ICustomTabsCallback$Stub:J

    return-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    if-gez v0, :cond_2

    .line 1518
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onNavigationEvent()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1520
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final postMessage()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1938
    iget-wide v0, p0, Lo/writeSessionAppClsId$onPostMessage;->ICustomTabsCallback$Stub:J

    iget-wide v2, p0, Lo/writeSessionAppClsId$onPostMessage;->asInterface:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final requestPostMessageChannel()J
    .locals 8
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

    .line 9948
    iget-wide v3, p0, Lo/writeSessionAppClsId$onPostMessage;->ICustomTabsCallback$Stub:J

    iget-wide v5, p0, Lo/writeSessionAppClsId$onPostMessage;->asInterface:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    .line 9951
    iput-wide v5, p0, Lo/writeSessionAppClsId$onPostMessage;->ICustomTabsCallback$Stub:J

    invoke-static {v3, v4}, Lo/CreateReportSpiCall;->extraCallback(J)B

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

    .line 9949
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1857
    :cond_2
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

    .line 1692
    invoke-direct {p0}, Lo/writeSessionAppClsId$onPostMessage;->ICustomTabsService$Stub()J

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

    .line 1677
    invoke-direct {p0}, Lo/writeSessionAppClsId$onPostMessage;->IPostMessageService$Stub()I

    move-result v0

    return v0
.end method
