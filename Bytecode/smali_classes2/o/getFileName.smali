.class public final Lo/getFileName;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final asBinder:Lo/getFileName;


# instance fields
.field ICustomTabsCallback:Z

.field extraCallback:[Ljava/lang/Object;

.field onMessageChannelReady:[I

.field onNavigationEvent:I

.field onPostMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 52
    new-instance v0, Lo/getFileName;

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v1}, Lo/getFileName;-><init>(I[I[Ljava/lang/Object;Z)V

    sput-object v0, Lo/getFileName;->asBinder:Lo/getFileName;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/16 v0, 0x8

    new-array v1, v0, [I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 99
    invoke-direct {p0, v2, v1, v0, v3}, Lo/getFileName;-><init>(I[I[Ljava/lang/Object;Z)V

    return-void
.end method

.method private constructor <init>(I[I[Ljava/lang/Object;Z)V
    .locals 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 92
    iput v0, p0, Lo/getFileName;->onNavigationEvent:I

    .line 104
    iput p1, p0, Lo/getFileName;->onPostMessage:I

    .line 105
    iput-object p2, p0, Lo/getFileName;->onMessageChannelReady:[I

    .line 106
    iput-object p3, p0, Lo/getFileName;->extraCallback:[Ljava/lang/Object;

    .line 107
    iput-boolean p4, p0, Lo/getFileName;->ICustomTabsCallback:Z

    return-void
.end method

.method public static ICustomTabsCallback()Lo/getFileName;
    .locals 1

    .line 61
    sget-object v0, Lo/getFileName;->asBinder:Lo/getFileName;

    return-object v0
.end method

.method private ICustomTabsCallback(Lo/writeSessionAppClsId;)Lo/getFileName;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 483
    :cond_0
    invoke-virtual {p1}, Lo/writeSessionAppClsId;->onMessageChannelReady()I

    move-result v0

    if-eqz v0, :cond_1

    .line 484
    invoke-virtual {p0, v0, p1}, Lo/getFileName;->onMessageChannelReady(ILo/writeSessionAppClsId;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-object p0
.end method

.method static onMessageChannelReady()Lo/getFileName;
    .locals 1

    .line 66
    new-instance v0, Lo/getFileName;

    invoke-direct {v0}, Lo/getFileName;-><init>()V

    return-object v0
.end method

.method static onMessageChannelReady(Lo/getFileName;Lo/getFileName;)Lo/getFileName;
    .locals 6

    .line 74
    iget v0, p0, Lo/getFileName;->onPostMessage:I

    iget v1, p1, Lo/getFileName;->onPostMessage:I

    add-int/2addr v0, v1

    .line 75
    iget-object v1, p0, Lo/getFileName;->onMessageChannelReady:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 76
    iget-object v2, p1, Lo/getFileName;->onMessageChannelReady:[I

    iget v3, p0, Lo/getFileName;->onPostMessage:I

    iget v4, p1, Lo/getFileName;->onPostMessage:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    iget-object v2, p0, Lo/getFileName;->extraCallback:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 78
    iget-object v3, p1, Lo/getFileName;->extraCallback:[Ljava/lang/Object;

    iget p0, p0, Lo/getFileName;->onPostMessage:I

    iget p1, p1, Lo/getFileName;->onPostMessage:I

    invoke-static {v3, v5, v2, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    new-instance p0, Lo/getFileName;

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Lo/getFileName;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object p0
.end method

.method private onNavigationEvent()V
    .locals 2

    .line 400
    iget v0, p0, Lo/getFileName;->onPostMessage:I

    iget-object v1, p0, Lo/getFileName;->onMessageChannelReady:[I

    array-length v1, v1

    if-ne v0, v1, :cond_1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    shr-int/lit8 v0, v0, 0x1

    .line 402
    :goto_0
    iget v1, p0, Lo/getFileName;->onPostMessage:I

    add-int/2addr v1, v0

    .line 404
    iget-object v0, p0, Lo/getFileName;->onMessageChannelReady:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lo/getFileName;->onMessageChannelReady:[I

    .line 405
    iget-object v0, p0, Lo/getFileName;->extraCallback:[Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lo/getFileName;->extraCallback:[Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private static onNavigationEvent(ILjava/lang/Object;Lo/sendReport;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    invoke-static {p0}, Lo/DefaultCreateReportSpiCall;->onPostMessage(I)I

    move-result v0

    .line 208
    invoke-static {p0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result p0

    if-eqz p0, :cond_5

    const/4 v1, 0x1

    if-eq p0, v1, :cond_4

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-ne p0, v1, :cond_0

    .line 213
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-interface {p2, v0, p0}, Lo/sendReport;->ICustomTabsCallback(II)V

    return-void

    .line 234
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 222
    :cond_1
    invoke-interface {p2}, Lo/sendReport;->onPostMessage()Lo/sendReport$ICustomTabsCallback;

    move-result-object p0

    sget-object v1, Lo/sendReport$ICustomTabsCallback;->onNavigationEvent:Lo/sendReport$ICustomTabsCallback;

    if-ne p0, v1, :cond_2

    .line 223
    invoke-interface {p2, v0}, Lo/sendReport;->onMessageChannelReady(I)V

    .line 224
    check-cast p1, Lo/getFileName;

    invoke-virtual {p1, p2}, Lo/getFileName;->ICustomTabsCallback(Lo/sendReport;)V

    .line 225
    invoke-interface {p2, v0}, Lo/sendReport;->ICustomTabsCallback(I)V

    return-void

    .line 227
    :cond_2
    invoke-interface {p2, v0}, Lo/sendReport;->ICustomTabsCallback(I)V

    .line 228
    check-cast p1, Lo/getFileName;

    invoke-virtual {p1, p2}, Lo/getFileName;->ICustomTabsCallback(Lo/sendReport;)V

    .line 229
    invoke-interface {p2, v0}, Lo/sendReport;->onMessageChannelReady(I)V

    return-void

    .line 219
    :cond_3
    check-cast p1, Lo/SessionProtobufHelper;

    invoke-interface {p2, v0, p1}, Lo/sendReport;->extraCallback(ILo/SessionProtobufHelper;)V

    return-void

    .line 216
    :cond_4
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    invoke-interface {p2, v0, p0, p1}, Lo/sendReport;->ICustomTabsCallback(IJ)V

    return-void

    .line 210
    :cond_5
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    invoke-interface {p2, v0, p0, p1}, Lo/sendReport;->extraCallback(IJ)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/sendReport;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    iget v0, p0, Lo/getFileName;->onPostMessage:I

    if-nez v0, :cond_0

    return-void

    .line 195
    :cond_0
    invoke-interface {p1}, Lo/sendReport;->onPostMessage()Lo/sendReport$ICustomTabsCallback;

    move-result-object v0

    sget-object v1, Lo/sendReport$ICustomTabsCallback;->onNavigationEvent:Lo/sendReport$ICustomTabsCallback;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 196
    :goto_0
    iget v1, p0, Lo/getFileName;->onPostMessage:I

    if-ge v0, v1, :cond_1

    .line 197
    iget-object v1, p0, Lo/getFileName;->onMessageChannelReady:[I

    aget v1, v1, v0

    iget-object v2, p0, Lo/getFileName;->extraCallback:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Lo/getFileName;->onNavigationEvent(ILjava/lang/Object;Lo/sendReport;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 200
    :cond_2
    iget v0, p0, Lo/getFileName;->onPostMessage:I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 201
    iget-object v1, p0, Lo/getFileName;->onMessageChannelReady:[I

    aget v1, v1, v0

    iget-object v2, p0, Lo/getFileName;->extraCallback:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Lo/getFileName;->onNavigationEvent(ILjava/lang/Object;Lo/sendReport;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 332
    :cond_1
    instance-of v2, p1, Lo/getFileName;

    if-nez v2, :cond_2

    return v1

    .line 336
    :cond_2
    check-cast p1, Lo/getFileName;

    .line 337
    iget v2, p0, Lo/getFileName;->onPostMessage:I

    iget v3, p1, Lo/getFileName;->onPostMessage:I

    if-ne v2, v3, :cond_8

    iget-object v3, p0, Lo/getFileName;->onMessageChannelReady:[I

    iget-object v4, p1, Lo/getFileName;->onMessageChannelReady:[I

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_4

    .line 1306
    aget v6, v3, v5

    aget v7, v4, v5

    if-eq v6, v7, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_8

    .line 338
    iget-object v2, p0, Lo/getFileName;->extraCallback:[Ljava/lang/Object;

    iget-object p1, p1, Lo/getFileName;->extraCallback:[Ljava/lang/Object;

    iget v3, p0, Lo/getFileName;->onPostMessage:I

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_6

    .line 1315
    aget-object v5, v2, v4

    aget-object v6, p1, v4

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const/4 p1, 0x0

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    const/4 p1, 0x1

    :goto_3
    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    return v0

    :cond_8
    :goto_4
    return v1
.end method

.method public final hashCode()I
    .locals 8

    .line 366
    iget v0, p0, Lo/getFileName;->onPostMessage:I

    add-int/lit16 v1, v0, 0x20f

    mul-int/lit8 v1, v1, 0x1f

    .line 367
    iget-object v2, p0, Lo/getFileName;->onMessageChannelReady:[I

    const/4 v3, 0x0

    const/16 v4, 0x11

    const/4 v5, 0x0

    const/16 v6, 0x11

    :goto_0
    if-ge v5, v0, :cond_0

    mul-int/lit8 v6, v6, 0x1f

    .line 1349
    aget v7, v2, v5

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr v1, v6

    mul-int/lit8 v1, v1, 0x1f

    .line 368
    iget-object v0, p0, Lo/getFileName;->extraCallback:[Ljava/lang/Object;

    iget v2, p0, Lo/getFileName;->onPostMessage:I

    :goto_1
    if-ge v3, v2, :cond_1

    mul-int/lit8 v4, v4, 0x1f

    .line 1357
    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v1, v4

    return v1
.end method

.method final onMessageChannelReady(Ljava/lang/StringBuilder;I)V
    .locals 3

    const/4 v0, 0x0

    .line 382
    :goto_0
    iget v1, p0, Lo/getFileName;->onPostMessage:I

    if-ge v0, v1, :cond_0

    .line 383
    iget-object v1, p0, Lo/getFileName;->onMessageChannelReady:[I

    aget v1, v1, v0

    invoke-static {v1}, Lo/DefaultCreateReportSpiCall;->onPostMessage(I)I

    move-result v1

    .line 384
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/getFileName;->extraCallback:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {p1, p2, v1, v2}, Lo/WireFormat$JavaType;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method final onMessageChannelReady(ILo/writeSessionAppClsId;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3121
    iget-boolean v0, p0, Lo/getFileName;->ICustomTabsCallback:Z

    if-eqz v0, :cond_6

    .line 419
    invoke-static {p1}, Lo/DefaultCreateReportSpiCall;->onPostMessage(I)I

    move-result v0

    .line 420
    invoke-static {p1}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    if-eq v1, v2, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v3, 0x3

    const/4 v4, 0x4

    if-eq v1, v3, :cond_2

    if-eq v1, v4, :cond_1

    const/4 v0, 0x5

    if-ne v1, v0, :cond_0

    .line 425
    invoke-virtual {p2}, Lo/writeSessionAppClsId;->ICustomTabsCallback$Stub()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lo/getFileName;->onPostMessage(ILjava/lang/Object;)V

    return v2

    .line 442
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 434
    :cond_2
    new-instance v1, Lo/getFileName;

    invoke-direct {v1}, Lo/getFileName;-><init>()V

    .line 435
    invoke-direct {v1, p2}, Lo/getFileName;->ICustomTabsCallback(Lo/writeSessionAppClsId;)Lo/getFileName;

    .line 436
    invoke-static {v0, v4}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result v0

    invoke-virtual {p2, v0}, Lo/writeSessionAppClsId;->onNavigationEvent(I)V

    .line 437
    invoke-virtual {p0, p1, v1}, Lo/getFileName;->onPostMessage(ILjava/lang/Object;)V

    return v2

    .line 431
    :cond_3
    invoke-virtual {p2}, Lo/writeSessionAppClsId;->getInterfaceDescriptor()Lo/SessionProtobufHelper;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lo/getFileName;->onPostMessage(ILjava/lang/Object;)V

    return v2

    .line 428
    :cond_4
    invoke-virtual {p2}, Lo/writeSessionAppClsId;->onRelationshipValidationResult()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lo/getFileName;->onPostMessage(ILjava/lang/Object;)V

    return v2

    .line 422
    :cond_5
    invoke-virtual {p2}, Lo/writeSessionAppClsId;->extraCallback()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lo/getFileName;->onPostMessage(ILjava/lang/Object;)V

    return v2

    .line 3122
    :cond_6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final onPostMessage()I
    .locals 6

    .line 267
    iget v0, p0, Lo/getFileName;->onNavigationEvent:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 273
    :goto_0
    iget v2, p0, Lo/getFileName;->onPostMessage:I

    if-ge v0, v2, :cond_6

    .line 274
    iget-object v2, p0, Lo/getFileName;->onMessageChannelReady:[I

    aget v2, v2, v0

    .line 275
    invoke-static {v2}, Lo/DefaultCreateReportSpiCall;->onPostMessage(I)I

    move-result v3

    .line 276
    invoke-static {v2}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v2

    if-eqz v2, :cond_5

    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    const/4 v5, 0x2

    if-eq v2, v5, :cond_3

    const/4 v5, 0x3

    if-eq v2, v5, :cond_2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_1

    .line 281
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(I)I

    move-result v2

    goto :goto_1

    .line 295
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 291
    :cond_2
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->getInterfaceDescriptor(I)I

    move-result v2

    shl-int/2addr v2, v4

    iget-object v3, p0, Lo/getFileName;->extraCallback:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lo/getFileName;

    .line 292
    invoke-virtual {v3}, Lo/getFileName;->onPostMessage()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 287
    :cond_3
    iget-object v2, p0, Lo/getFileName;->extraCallback:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Lo/SessionProtobufHelper;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback(ILo/SessionProtobufHelper;)I

    move-result v2

    goto :goto_1

    .line 284
    :cond_4
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->asInterface(I)I

    move-result v2

    goto :goto_1

    .line 278
    :cond_5
    iget-object v2, p0, Lo/getFileName;->extraCallback:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(IJ)I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 299
    :cond_6
    iput v1, p0, Lo/getFileName;->onNavigationEvent:I

    return v1
.end method

.method final onPostMessage(ILjava/lang/Object;)V
    .locals 2

    .line 2121
    iget-boolean v0, p0, Lo/getFileName;->ICustomTabsCallback:Z

    if-eqz v0, :cond_0

    .line 391
    invoke-direct {p0}, Lo/getFileName;->onNavigationEvent()V

    .line 393
    iget-object v0, p0, Lo/getFileName;->onMessageChannelReady:[I

    iget v1, p0, Lo/getFileName;->onPostMessage:I

    aput p1, v0, v1

    .line 394
    iget-object p1, p0, Lo/getFileName;->extraCallback:[Ljava/lang/Object;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 395
    iput v1, p0, Lo/getFileName;->onPostMessage:I

    return-void

    .line 2122
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
