.class final Lo/writeSessionAppClsId$extraCallback;
.super Lo/writeSessionAppClsId;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeSessionAppClsId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "extraCallback"
.end annotation


# instance fields
.field private ICustomTabsCallback$Stub:I

.field private asBinder:I

.field private asInterface:I

.field private final extraCallback:[B

.field private onRelationshipValidationResult:I

.field private onTransact:I

.field private warmup:I


# direct methods
.method private constructor <init>([BIIZ)V
    .locals 0

    const/4 p4, 0x0

    .line 608
    invoke-direct {p0, p4}, Lo/writeSessionAppClsId;-><init>(B)V

    const p4, 0x7fffffff

    .line 606
    iput p4, p0, Lo/writeSessionAppClsId$extraCallback;->warmup:I

    .line 609
    iput-object p1, p0, Lo/writeSessionAppClsId$extraCallback;->extraCallback:[B

    add-int/2addr p3, p2

    .line 610
    iput p3, p0, Lo/writeSessionAppClsId$extraCallback;->ICustomTabsCallback$Stub:I

    .line 611
    iput p2, p0, Lo/writeSessionAppClsId$extraCallback;->onRelationshipValidationResult:I

    .line 612
    iput p2, p0, Lo/writeSessionAppClsId$extraCallback;->asBinder:I

    return-void
.end method

.method synthetic constructor <init>([BIIZB)V
    .locals 0

    .line 595
    invoke-direct {p0, p1, p2, p3, p4}, Lo/writeSessionAppClsId$extraCallback;-><init>([BIIZ)V

    return-void
.end method

.method private ICustomTabsCallback$Stub(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 1263
    iget v0, p0, Lo/writeSessionAppClsId$extraCallback;->ICustomTabsCallback$Stub:I

    iget v1, p0, Lo/writeSessionAppClsId$extraCallback;->onRelationshipValidationResult:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    add-int/2addr v1, p1

    .line 1265
    iput v1, p0, Lo/writeSessionAppClsId$extraCallback;->onRelationshipValidationResult:I

    return-void

    :cond_0
    if-gez p1, :cond_1

    .line 1270
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onNavigationEvent()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1272
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method private ICustomTabsService$Stub()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1137
    iget v0, p0, Lo/writeSessionAppClsId$extraCallback;->onRelationshipValidationResult:I

    .line 1139
    iget v1, p0, Lo/writeSessionAppClsId$extraCallback;->ICustomTabsCallback$Stub:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 1143
    iget-object v1, p0, Lo/writeSessionAppClsId$extraCallback;->extraCallback:[B

    add-int/lit8 v2, v0, 0x4

    .line 1144
    iput v2, p0, Lo/writeSessionAppClsId$extraCallback;->onRelationshipValidationResult:I

    .line 1145
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

    .line 1140
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private IPostMessageService()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 985
    iget v0, p0, Lo/writeSessionAppClsId$extraCallback;->onRelationshipValidationResult:I

    .line 987
    iget v1, p0, Lo/writeSessionAppClsId$extraCallback;->ICustomTabsCallback$Stub:I

    if-eq v1, v0, :cond_6

    .line 991
    iget-object v2, p0, Lo/writeSessionAppClsId$extraCallback;->extraCallback:[B

    add-int/lit8 v3, v0, 0x1

    .line 993
    aget-byte v0, v2, v0

    if-ltz v0, :cond_0

    .line 994
    iput v3, p0, Lo/writeSessionAppClsId$extraCallback;->onRelationshipValidationResult:I

    return v0

    :cond_0
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-lt v1, v4, :cond_6

    add-int/lit8 v1, v3, 0x1

    .line 998
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_1

    xor-int/lit8 v0, v0, -0x80

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v1, 0x1

    .line 1000
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

    .line 1002
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_4

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v1, 0x1

    .line 1005
    aget-byte v1, v2, v1

    shl-int/lit8 v4, v1, 0x1c

    xor-int/2addr v0, v4

    const v4, 0xfe03f80

    xor-int/2addr v0, v4

    if-gez v1, :cond_2

    add-int/lit8 v1, v3, 0x1

    .line 1008
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

    .line 1017
    :cond_5
    :goto_0
    iput v1, p0, Lo/writeSessionAppClsId$extraCallback;->onRelationshipValidationResult:I

    return v0

    .line 1020
    :cond_6
    invoke-virtual {p0}, Lo/writeSessionAppClsId$extraCallback;->requestPostMessageChannel()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method private IPostMessageService$Stub()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1153
    iget v0, p0, Lo/writeSessionAppClsId$extraCallback;->onRelationshipValidationResult:I

    .line 1155
    iget v1, p0, Lo/writeSessionAppClsId$extraCallback;->ICustomTabsCallback$Stub:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 1159
    iget-object v1, p0, Lo/writeSessionAppClsId$extraCallback;->extraCallback:[B

    add-int/lit8 v3, v0, 0x8

    .line 1160
    iput v3, p0, Lo/writeSessionAppClsId$extraCallback;->onRelationshipValidationResult:I

    .line 1161
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

    .line 1156
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private cancel()V
    .locals 3

    .line 1199
    iget v0, p0, Lo/writeSessionAppClsId$extraCallback;->ICustomTabsCallback$Stub:I

    iget v1, p0, Lo/writeSessionAppClsId$extraCallback;->asInterface:I

    add-int/2addr v0, v1

    iput v0, p0, Lo/writeSessionAppClsId$extraCallback;->ICustomTabsCallback$Stub:I

    .line 1200
    iget v1, p0, Lo/writeSessionAppClsId$extraCallback;->asBinder:I

    sub-int v1, v0, v1

    .line 1201
    iget v2, p0, Lo/writeSessionAppClsId$extraCallback;->warmup:I

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    .line 1203
    iput v1, p0, Lo/writeSessionAppClsId$extraCallback;->asInterface:I

    sub-int/2addr v0, v1

    .line 1204
    iput v0, p0, Lo/writeSessionAppClsId$extraCallback;->ICustomTabsCallback$Stub:I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1206
    iput v0, p0, Lo/writeSessionAppClsId$extraCallback;->asInterface:I

    return-void
.end method

.method private validateRelationship()J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1064
    iget v0, p0, Lo/writeSessionAppClsId$extraCallback;->onRelationshipValidationResult:I

    .line 1066
    iget v1, p0, Lo/writeSessionAppClsId$extraCallback;->ICustomTabsCallback$Stub:I

    if-eq v1, v0, :cond_9

    .line 1070
    iget-object v2, p0, Lo/writeSessionAppClsId$extraCallback;->extraCallback:[B

    add-int/lit8 v3, v0, 0x1

    .line 1073
    aget-byte v0, v2, v0

    if-ltz v0, :cond_0

    .line 1074
    iput v3, p0, Lo/writeSessionAppClsId$extraCallback;->onRelationshipValidationResult:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-lt v1, v4, :cond_9

    add-int/lit8 v1, v3, 0x1

    .line 1078
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

    .line 1080
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

    .line 1082
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

    .line 1084
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

    .line 1086
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

    .line 1088
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

    .line 1090
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

    .line 1100
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

    .line 1111
    aget-byte v0, v2, v0

    int-to-long v7, v0

    cmp-long v0, v7, v5

    if-ltz v0, :cond_9

    goto :goto_3

    :cond_8
    move v1, v0

    :goto_3
    move-wide v2, v3

    .line 1116
    :goto_4
    iput v1, p0, Lo/writeSessionAppClsId$extraCallback;->onRelationshipValidationResult:I

    return-wide v2

    .line 1119
    :cond_9
    invoke-virtual {p0}, Lo/writeSessionAppClsId$extraCallback;->requestPostMessageChannel()J

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

    .line 752
    invoke-direct {p0}, Lo/writeSessionAppClsId$extraCallback;->ICustomTabsService$Stub()I

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

    .line 7232
    iget v0, p0, Lo/writeSessionAppClsId$extraCallback;->onRelationshipValidationResult:I

    iget v1, p0, Lo/writeSessionAppClsId$extraCallback;->asBinder:I

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    .line 1187
    iget v0, p0, Lo/writeSessionAppClsId$extraCallback;->warmup:I

    if-gt p1, v0, :cond_0

    .line 1191
    iput p1, p0, Lo/writeSessionAppClsId$extraCallback;->warmup:I

    .line 1193
    invoke-direct {p0}, Lo/writeSessionAppClsId$extraCallback;->cancel()V

    return v0

    .line 1189
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1184
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

    .line 777
    invoke-direct {p0}, Lo/writeSessionAppClsId$extraCallback;->ICustomTabsService$Stub()I

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

    .line 955
    invoke-direct {p0}, Lo/writeSessionAppClsId$extraCallback;->IPostMessageService()I

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

    .line 960
    invoke-direct {p0}, Lo/writeSessionAppClsId$extraCallback;->ICustomTabsService$Stub()I

    move-result v0

    return v0
.end method

.method public final ICustomTabsService$Stub$Proxy()I
    .locals 2

    .line 1232
    iget v0, p0, Lo/writeSessionAppClsId$extraCallback;->onRelationshipValidationResult:I

    iget v1, p0, Lo/writeSessionAppClsId$extraCallback;->asBinder:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final asBinder()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 767
    invoke-direct {p0}, Lo/writeSessionAppClsId$extraCallback;->IPostMessageService()I

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

    .line 782
    invoke-direct {p0}, Lo/writeSessionAppClsId$extraCallback;->validateRelationship()J

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

    .line 762
    invoke-direct {p0}, Lo/writeSessionAppClsId$extraCallback;->validateRelationship()J

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

    .line 646
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

    .line 664
    invoke-direct {p0, v4}, Lo/writeSessionAppClsId$extraCallback;->ICustomTabsCallback$Stub(I)V

    return v2

    .line 667
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_1
    return v1

    .line 3725
    :cond_2
    invoke-virtual {p0}, Lo/writeSessionAppClsId;->onMessageChannelReady()I

    move-result v0

    if-eqz v0, :cond_3

    .line 3726
    invoke-virtual {p0, v0}, Lo/writeSessionAppClsId;->extraCallback(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 659
    :cond_3
    invoke-static {p1}, Lo/DefaultCreateReportSpiCall;->onPostMessage(I)I

    move-result p1

    invoke-static {p1, v4}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p1

    .line 4634
    iget v0, p0, Lo/writeSessionAppClsId$extraCallback;->onTransact:I

    if-ne v0, p1, :cond_4

    return v2

    .line 4635
    :cond_4
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onPostMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 654
    :cond_5
    invoke-direct {p0}, Lo/writeSessionAppClsId$extraCallback;->IPostMessageService()I

    move-result p1

    invoke-direct {p0, p1}, Lo/writeSessionAppClsId$extraCallback;->ICustomTabsCallback$Stub(I)V

    return v2

    :cond_6
    const/16 p1, 0x8

    .line 651
    invoke-direct {p0, p1}, Lo/writeSessionAppClsId$extraCallback;->ICustomTabsCallback$Stub(I)V

    return v2

    .line 3024
    :cond_7
    iget p1, p0, Lo/writeSessionAppClsId$extraCallback;->ICustomTabsCallback$Stub:I

    iget v0, p0, Lo/writeSessionAppClsId$extraCallback;->onRelationshipValidationResult:I

    sub-int/2addr p1, v0

    const/16 v0, 0xa

    if-lt p1, v0, :cond_9

    :goto_0
    if-ge v1, v0, :cond_8

    .line 3033
    iget-object p1, p0, Lo/writeSessionAppClsId$extraCallback;->extraCallback:[B

    iget v3, p0, Lo/writeSessionAppClsId$extraCallback;->onRelationshipValidationResult:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lo/writeSessionAppClsId$extraCallback;->onRelationshipValidationResult:I

    aget-byte p1, p1, v3

    if-gez p1, :cond_a

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3037
    :cond_8
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->ICustomTabsCallback()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_9
    :goto_1
    if-ge v1, v0, :cond_c

    .line 3237
    iget p1, p0, Lo/writeSessionAppClsId$extraCallback;->onRelationshipValidationResult:I

    iget v3, p0, Lo/writeSessionAppClsId$extraCallback;->ICustomTabsCallback$Stub:I

    if-eq p1, v3, :cond_b

    .line 3240
    iget-object v3, p0, Lo/writeSessionAppClsId$extraCallback;->extraCallback:[B

    add-int/lit8 v4, p1, 0x1

    iput v4, p0, Lo/writeSessionAppClsId$extraCallback;->onRelationshipValidationResult:I

    aget-byte p1, v3, p1

    if-gez p1, :cond_a

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_a
    return v2

    .line 3238
    :cond_b
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 3046
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

    .line 970
    invoke-direct {p0}, Lo/writeSessionAppClsId$extraCallback;->IPostMessageService()I

    move-result v0

    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public final getInterfaceDescriptor()Lo/SessionProtobufHelper;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 897
    invoke-direct {p0}, Lo/writeSessionAppClsId$extraCallback;->IPostMessageService()I

    move-result v0

    if-lez v0, :cond_0

    .line 898
    iget v1, p0, Lo/writeSessionAppClsId$extraCallback;->ICustomTabsCallback$Stub:I

    iget v2, p0, Lo/writeSessionAppClsId$extraCallback;->onRelationshipValidationResult:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 903
    iget-object v1, p0, Lo/writeSessionAppClsId$extraCallback;->extraCallback:[B

    .line 904
    invoke-static {v1, v2, v0}, Lo/SessionProtobufHelper;->onMessageChannelReady([BII)Lo/SessionProtobufHelper;

    move-result-object v1

    .line 905
    iget v2, p0, Lo/writeSessionAppClsId$extraCallback;->onRelationshipValidationResult:I

    add-int/2addr v2, v0

    iput v2, p0, Lo/writeSessionAppClsId$extraCallback;->onRelationshipValidationResult:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    .line 909
    sget-object v0, Lo/SessionProtobufHelper;->onNavigationEvent:Lo/SessionProtobufHelper;

    return-object v0

    :cond_1
    if-lez v0, :cond_2

    .line 5245
    iget v1, p0, Lo/writeSessionAppClsId$extraCallback;->ICustomTabsCallback$Stub:I

    iget v2, p0, Lo/writeSessionAppClsId$extraCallback;->onRelationshipValidationResult:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_2

    add-int/2addr v0, v2

    .line 5247
    iput v0, p0, Lo/writeSessionAppClsId$extraCallback;->onRelationshipValidationResult:I

    .line 5248
    iget-object v1, p0, Lo/writeSessionAppClsId$extraCallback;->extraCallback:[B

    invoke-static {v1, v2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    goto :goto_0

    :cond_2
    if-gtz v0, :cond_4

    if-nez v0, :cond_3

    .line 5253
    sget-object v0, Lo/getEventLogSize;->ICustomTabsCallback:[B

    .line 912
    :goto_0
    invoke-static {v0}, Lo/SessionProtobufHelper;->onPostMessage([B)Lo/SessionProtobufHelper;

    move-result-object v0

    return-object v0

    .line 5255
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onNavigationEvent()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 5258
    :cond_4
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

    .line 975
    invoke-direct {p0}, Lo/writeSessionAppClsId$extraCallback;->validateRelationship()J

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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 807
    invoke-direct {p0}, Lo/writeSessionAppClsId$extraCallback;->IPostMessageService()I

    move-result v0

    if-lez v0, :cond_0

    .line 808
    iget v1, p0, Lo/writeSessionAppClsId$extraCallback;->ICustomTabsCallback$Stub:I

    iget v2, p0, Lo/writeSessionAppClsId$extraCallback;->onRelationshipValidationResult:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 809
    iget-object v1, p0, Lo/writeSessionAppClsId$extraCallback;->extraCallback:[B

    invoke-static {v1, v2, v0}, Lo/CompositeCreateReportSpiCall$1;->ICustomTabsCallback([BII)Ljava/lang/String;

    move-result-object v1

    .line 810
    iget v2, p0, Lo/writeSessionAppClsId$extraCallback;->onRelationshipValidationResult:I

    add-int/2addr v2, v0

    iput v2, p0, Lo/writeSessionAppClsId$extraCallback;->onRelationshipValidationResult:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    if-gtz v0, :cond_2

    .line 818
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onNavigationEvent()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 820
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final onMessageChannelReady()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2227
    iget v0, p0, Lo/writeSessionAppClsId$extraCallback;->onRelationshipValidationResult:I

    iget v1, p0, Lo/writeSessionAppClsId$extraCallback;->ICustomTabsCallback$Stub:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 619
    iput v2, p0, Lo/writeSessionAppClsId$extraCallback;->onTransact:I

    return v2

    .line 623
    :cond_1
    invoke-direct {p0}, Lo/writeSessionAppClsId$extraCallback;->IPostMessageService()I

    move-result v0

    iput v0, p0, Lo/writeSessionAppClsId$extraCallback;->onTransact:I

    .line 624
    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->onPostMessage(I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 629
    iget v0, p0, Lo/writeSessionAppClsId$extraCallback;->onTransact:I

    return v0

    .line 627
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

    .line 747
    invoke-direct {p0}, Lo/writeSessionAppClsId$extraCallback;->IPostMessageService$Stub()J

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

    .line 634
    iget v0, p0, Lo/writeSessionAppClsId$extraCallback;->onTransact:I

    if-ne v0, p1, :cond_0

    return-void

    .line 635
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

    .line 757
    invoke-direct {p0}, Lo/writeSessionAppClsId$extraCallback;->validateRelationship()J

    move-result-wide v0

    return-wide v0
.end method

.method public final onPostMessage(I)V
    .locals 0

    .line 1212
    iput p1, p0, Lo/writeSessionAppClsId$extraCallback;->warmup:I

    .line 1213
    invoke-direct {p0}, Lo/writeSessionAppClsId$extraCallback;->cancel()V

    return-void
.end method

.method public final onRelationshipValidationResult()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 772
    invoke-direct {p0}, Lo/writeSessionAppClsId$extraCallback;->IPostMessageService$Stub()J

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

    .line 787
    invoke-direct {p0}, Lo/writeSessionAppClsId$extraCallback;->IPostMessageService()I

    move-result v0

    if-lez v0, :cond_0

    .line 788
    iget v1, p0, Lo/writeSessionAppClsId$extraCallback;->ICustomTabsCallback$Stub:I

    iget v2, p0, Lo/writeSessionAppClsId$extraCallback;->onRelationshipValidationResult:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 791
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lo/writeSessionAppClsId$extraCallback;->extraCallback:[B

    iget v3, p0, Lo/writeSessionAppClsId$extraCallback;->onRelationshipValidationResult:I

    sget-object v4, Lo/getEventLogSize;->extraCallback:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 792
    iget v2, p0, Lo/writeSessionAppClsId$extraCallback;->onRelationshipValidationResult:I

    add-int/2addr v2, v0

    iput v2, p0, Lo/writeSessionAppClsId$extraCallback;->onRelationshipValidationResult:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    if-gez v0, :cond_2

    .line 800
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onNavigationEvent()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 802
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final postMessage()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1227
    iget v0, p0, Lo/writeSessionAppClsId$extraCallback;->onRelationshipValidationResult:I

    iget v1, p0, Lo/writeSessionAppClsId$extraCallback;->ICustomTabsCallback$Stub:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

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

    if-ge v2, v3, :cond_2

    .line 6237
    iget v3, p0, Lo/writeSessionAppClsId$extraCallback;->onRelationshipValidationResult:I

    iget v4, p0, Lo/writeSessionAppClsId$extraCallback;->ICustomTabsCallback$Stub:I

    if-eq v3, v4, :cond_1

    .line 6240
    iget-object v4, p0, Lo/writeSessionAppClsId$extraCallback;->extraCallback:[B

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lo/writeSessionAppClsId$extraCallback;->onRelationshipValidationResult:I

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

    .line 6238
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1132
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

    .line 965
    invoke-direct {p0}, Lo/writeSessionAppClsId$extraCallback;->IPostMessageService$Stub()J

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

    .line 950
    invoke-direct {p0}, Lo/writeSessionAppClsId$extraCallback;->IPostMessageService()I

    move-result v0

    return v0
.end method
