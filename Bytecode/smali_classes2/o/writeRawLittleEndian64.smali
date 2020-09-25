.class public final Lo/writeRawLittleEndian64;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/writeRawLittleEndian64$onPostMessage;
    }
.end annotation


# instance fields
.field private final zzei:Lcom/google/firebase/perf/internal/GaugeManager;

.field private final zzej:Ljava/lang/String;

.field private final zzek:Lo/onCreateLoader;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/perf/internal/GaugeManager;Ljava/lang/String;Lo/onCreateLoader;)V
    .locals 0

    .line 42000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/writeRawLittleEndian64;->zzei:Lcom/google/firebase/perf/internal/GaugeManager;

    iput-object p2, p0, Lo/writeRawLittleEndian64;->zzej:Ljava/lang/String;

    iput-object p3, p0, Lo/writeRawLittleEndian64;->zzek:Lo/onCreateLoader;

    return-void
.end method

.method static ICustomTabsCallback(I[BIILo/getEventLogSize$asBinder;Lo/writeRawLittleEndian64$onPostMessage;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lo/getEventLogSize$asBinder<",
            "*>;",
            "Lo/writeRawLittleEndian64$onPostMessage;",
            ")I"
        }
    .end annotation

    .line 408
    check-cast p4, Lo/makeTag;

    .line 409
    invoke-static {p1, p2, p5}, Lo/writeRawLittleEndian64;->onNavigationEvent([BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result p2

    .line 410
    iget-wide v0, p5, Lo/writeRawLittleEndian64$onPostMessage;->extraCallback:J

    invoke-static {v0, v1}, Lo/writeSessionAppClsId;->onPostMessage(J)J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lo/makeTag;->extraCallback(J)V

    :goto_0
    if-ge p2, p3, :cond_1

    add-int/lit8 v0, p2, 0x1

    .line 12079
    aget-byte v1, p1, p2

    if-ltz v1, :cond_0

    .line 12081
    iput v1, p5, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    goto :goto_1

    .line 12084
    :cond_0
    invoke-static {v1, p1, v0, p5}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    .line 413
    :goto_1
    iget v1, p5, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    if-ne p0, v1, :cond_1

    .line 416
    invoke-static {p1, v0, p5}, Lo/writeRawLittleEndian64;->onNavigationEvent([BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result p2

    .line 417
    iget-wide v0, p5, Lo/writeRawLittleEndian64$onPostMessage;->extraCallback:J

    invoke-static {v0, v1}, Lo/writeSessionAppClsId;->onPostMessage(J)J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lo/makeTag;->extraCallback(J)V

    goto :goto_0

    :cond_1
    return p2
.end method

.method static ICustomTabsCallback([BI)I
    .locals 2

    .line 155
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method static ICustomTabsCallback([BILo/getEventLogSize$asBinder;Lo/writeRawLittleEndian64$onPostMessage;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lo/getEventLogSize$asBinder<",
            "*>;",
            "Lo/writeRawLittleEndian64$onPostMessage;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 425
    check-cast p2, Lo/getEventAppExecutionExceptionSize;

    add-int/lit8 v0, p1, 0x1

    .line 13079
    aget-byte p1, p0, p1

    if-ltz p1, :cond_0

    .line 13081
    iput p1, p3, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    goto :goto_0

    .line 13084
    :cond_0
    invoke-static {p1, p0, v0, p3}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    .line 427
    :goto_0
    iget p1, p3, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    add-int/2addr p1, v0

    :goto_1
    if-ge v0, p1, :cond_2

    add-int/lit8 v1, v0, 0x1

    .line 14079
    aget-byte v0, p0, v0

    if-ltz v0, :cond_1

    .line 14081
    iput v0, p3, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    move v0, v1

    goto :goto_2

    .line 14084
    :cond_1
    invoke-static {v0, p0, v1, p3}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    .line 430
    :goto_2
    iget v1, p3, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    invoke-virtual {p2, v1}, Lo/getEventAppExecutionExceptionSize;->onMessageChannelReady(I)V

    goto :goto_1

    :cond_2
    if-ne v0, p1, :cond_3

    return v0

    .line 433
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static ICustomTabsCallback([BILo/writeRawLittleEndian64$onPostMessage;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x1

    .line 5079
    aget-byte p1, p0, p1

    if-ltz p1, :cond_0

    .line 5081
    iput p1, p2, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    goto :goto_0

    .line 5084
    :cond_0
    invoke-static {p1, p0, v0, p2}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    .line 219
    :goto_0
    iget p1, p2, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    if-ltz p1, :cond_3

    .line 222
    array-length v1, p0

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_2

    if-nez p1, :cond_1

    .line 225
    sget-object p0, Lo/SessionProtobufHelper;->onNavigationEvent:Lo/SessionProtobufHelper;

    iput-object p0, p2, Lo/writeRawLittleEndian64$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    return v0

    .line 228
    :cond_1
    invoke-static {p0, v0, p1}, Lo/SessionProtobufHelper;->onMessageChannelReady([BII)Lo/SessionProtobufHelper;

    move-result-object p0

    iput-object p0, p2, Lo/writeRawLittleEndian64$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    add-int/2addr v0, p1

    return v0

    .line 223
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 221
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onNavigationEvent()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static ICustomTabsCallback$Stub([BILo/getEventLogSize$asBinder;Lo/writeRawLittleEndian64$onPostMessage;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lo/getEventLogSize$asBinder<",
            "*>;",
            "Lo/writeRawLittleEndian64$onPostMessage;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 521
    check-cast p2, Lo/encodeZigZag32;

    add-int/lit8 v0, p1, 0x1

    .line 20079
    aget-byte p1, p0, p1

    if-ltz p1, :cond_0

    .line 20081
    iput p1, p3, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    goto :goto_0

    .line 20084
    :cond_0
    invoke-static {p1, p0, v0, p3}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    .line 523
    :goto_0
    iget p1, p3, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    add-int/2addr p1, v0

    :goto_1
    if-ge v0, p1, :cond_2

    .line 525
    invoke-static {p0, v0, p3}, Lo/writeRawLittleEndian64;->onNavigationEvent([BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    .line 526
    iget-wide v1, p3, Lo/writeRawLittleEndian64$onPostMessage;->extraCallback:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p2, v1}, Lo/encodeZigZag32;->ICustomTabsCallback(Z)V

    goto :goto_1

    :cond_2
    if-ne v0, p1, :cond_3

    return v0

    .line 529
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static asBinder([BILo/getEventLogSize$asBinder;Lo/writeRawLittleEndian64$onPostMessage;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lo/getEventLogSize$asBinder<",
            "*>;",
            "Lo/writeRawLittleEndian64$onPostMessage;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 505
    check-cast p2, Lo/writeSessionEventApp;

    add-int/lit8 v0, p1, 0x1

    .line 19079
    aget-byte p1, p0, p1

    if-ltz p1, :cond_0

    .line 19081
    iput p1, p3, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    goto :goto_0

    .line 19084
    :cond_0
    invoke-static {p1, p0, v0, p3}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    .line 507
    :goto_0
    iget p1, p3, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    add-int/2addr p1, v0

    :goto_1
    if-ge v0, p1, :cond_1

    .line 19175
    invoke-static {p0, v0}, Lo/writeRawLittleEndian64;->onNavigationEvent([BI)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    .line 509
    invoke-virtual {p2, v1, v2}, Lo/writeSessionEventApp;->onPostMessage(D)V

    add-int/lit8 v0, v0, 0x8

    goto :goto_1

    :cond_1
    if-ne v0, p1, :cond_2

    return v0

    .line 513
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static extraCallback(I[BIILo/getEventLogSize$asBinder;Lo/writeRawLittleEndian64$onPostMessage;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lo/getEventLogSize$asBinder<",
            "*>;",
            "Lo/writeRawLittleEndian64$onPostMessage;",
            ")I"
        }
    .end annotation

    .line 391
    check-cast p4, Lo/getEventAppExecutionExceptionSize;

    add-int/lit8 v0, p2, 0x1

    .line 9079
    aget-byte p2, p1, p2

    if-ltz p2, :cond_0

    .line 9081
    iput p2, p5, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    goto :goto_0

    .line 9084
    :cond_0
    invoke-static {p2, p1, v0, p5}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    .line 393
    :goto_0
    iget p2, p5, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    invoke-static {p2}, Lo/writeSessionAppClsId;->onMessageChannelReady(I)I

    move-result p2

    invoke-virtual {p4, p2}, Lo/getEventAppExecutionExceptionSize;->onMessageChannelReady(I)V

    :goto_1
    if-ge v0, p3, :cond_3

    add-int/lit8 p2, v0, 0x1

    .line 10079
    aget-byte v1, p1, v0

    if-ltz v1, :cond_1

    .line 10081
    iput v1, p5, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    goto :goto_2

    .line 10084
    :cond_1
    invoke-static {v1, p1, p2, p5}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result p2

    .line 396
    :goto_2
    iget v1, p5, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    if-ne p0, v1, :cond_3

    add-int/lit8 v0, p2, 0x1

    .line 11079
    aget-byte p2, p1, p2

    if-ltz p2, :cond_2

    .line 11081
    iput p2, p5, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    goto :goto_3

    .line 11084
    :cond_2
    invoke-static {p2, p1, v0, p5}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result p2

    move v0, p2

    .line 400
    :goto_3
    iget p2, p5, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    invoke-static {p2}, Lo/writeSessionAppClsId;->onMessageChannelReady(I)I

    move-result p2

    invoke-virtual {p4, p2}, Lo/getEventAppExecutionExceptionSize;->onMessageChannelReady(I)V

    goto :goto_1

    :cond_3
    return v0
.end method

.method static extraCallback(I[BIILo/getFileName;Lo/writeRawLittleEndian64$onPostMessage;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 991
    invoke-static {p0}, Lo/DefaultCreateReportSpiCall;->onPostMessage(I)I

    move-result v0

    if-eqz v0, :cond_d

    .line 994
    invoke-static {p0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p3, 0x5

    if-ne v0, p3, :cond_0

    .line 1000
    invoke-static {p1, p2}, Lo/writeRawLittleEndian64;->ICustomTabsCallback([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lo/getFileName;->onPostMessage(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x4

    return p2

    .line 1036
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->extraCallback()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 1019
    :cond_1
    invoke-static {}, Lo/getFileName;->onMessageChannelReady()Lo/getFileName;

    move-result-object v6

    and-int/lit8 v0, p0, -0x8

    or-int/lit8 v7, v0, 0x4

    const/4 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_4

    add-int/lit8 v0, p2, 0x1

    .line 39079
    aget-byte p2, p1, p2

    if-ltz p2, :cond_2

    .line 39081
    iput p2, p5, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    move v2, v0

    goto :goto_1

    .line 39084
    :cond_2
    invoke-static {p2, p1, v0, p5}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result p2

    move v2, p2

    .line 1024
    :goto_1
    iget p2, p5, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    move v0, p2

    if-eq p2, v7, :cond_3

    move-object v1, p1

    move v3, p3

    move-object v4, v6

    move-object v5, p5

    .line 1028
    invoke-static/range {v0 .. v5}, Lo/writeRawLittleEndian64;->extraCallback(I[BIILo/getFileName;Lo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    move v8, v0

    move v0, p2

    move p2, v8

    goto :goto_0

    :cond_3
    move p2, v2

    :cond_4
    if-gt p2, p3, :cond_5

    if-ne v0, v7, :cond_5

    .line 1033
    invoke-virtual {p4, p0, v6}, Lo/getFileName;->onPostMessage(ILjava/lang/Object;)V

    return p2

    .line 1031
    :cond_5
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->ICustomTabsCallback$Stub()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_6
    add-int/lit8 p3, p2, 0x1

    .line 38079
    aget-byte p2, p1, p2

    if-ltz p2, :cond_7

    .line 38081
    iput p2, p5, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    goto :goto_2

    .line 38084
    :cond_7
    invoke-static {p2, p1, p3, p5}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result p3

    .line 1007
    :goto_2
    iget p2, p5, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    if-ltz p2, :cond_a

    .line 1010
    array-length p5, p1

    sub-int/2addr p5, p3

    if-gt p2, p5, :cond_9

    if-nez p2, :cond_8

    .line 1013
    sget-object p1, Lo/SessionProtobufHelper;->onNavigationEvent:Lo/SessionProtobufHelper;

    invoke-virtual {p4, p0, p1}, Lo/getFileName;->onPostMessage(ILjava/lang/Object;)V

    goto :goto_3

    .line 1015
    :cond_8
    invoke-static {p1, p3, p2}, Lo/SessionProtobufHelper;->onMessageChannelReady([BII)Lo/SessionProtobufHelper;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lo/getFileName;->onPostMessage(ILjava/lang/Object;)V

    :goto_3
    add-int/2addr p3, p2

    return p3

    .line 1011
    :cond_9
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 1009
    :cond_a
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onNavigationEvent()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 1003
    :cond_b
    invoke-static {p1, p2}, Lo/writeRawLittleEndian64;->onNavigationEvent([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lo/getFileName;->onPostMessage(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x8

    return p2

    .line 996
    :cond_c
    invoke-static {p1, p2, p5}, Lo/writeRawLittleEndian64;->onNavigationEvent([BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result p1

    .line 997
    iget-wide p2, p5, Lo/writeRawLittleEndian64$onPostMessage;->extraCallback:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p0, p2}, Lo/getFileName;->onPostMessage(ILjava/lang/Object;)V

    return p1

    .line 992
    :cond_d
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->extraCallback()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static extraCallback([BILo/getEventLogSize$asBinder;Lo/writeRawLittleEndian64$onPostMessage;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lo/getEventLogSize$asBinder<",
            "*>;",
            "Lo/writeRawLittleEndian64$onPostMessage;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 441
    check-cast p2, Lo/makeTag;

    add-int/lit8 v0, p1, 0x1

    .line 15079
    aget-byte p1, p0, p1

    if-ltz p1, :cond_0

    .line 15081
    iput p1, p3, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    goto :goto_0

    .line 15084
    :cond_0
    invoke-static {p1, p0, v0, p3}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    .line 443
    :goto_0
    iget p1, p3, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    add-int/2addr p1, v0

    :goto_1
    if-ge v0, p1, :cond_1

    .line 445
    invoke-static {p0, v0, p3}, Lo/writeRawLittleEndian64;->onNavigationEvent([BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    .line 446
    iget-wide v1, p3, Lo/writeRawLittleEndian64$onPostMessage;->extraCallback:J

    invoke-virtual {p2, v1, v2}, Lo/makeTag;->extraCallback(J)V

    goto :goto_1

    :cond_1
    if-ne v0, p1, :cond_2

    return v0

    .line 449
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static extraCallback([BILo/writeRawLittleEndian64$onPostMessage;)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    .line 79
    aget-byte p1, p0, p1

    if-ltz p1, :cond_0

    .line 81
    iput p1, p2, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    return v0

    .line 84
    :cond_0
    invoke-static {p1, p0, v0, p2}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result p0

    return p0
.end method

.method static onMessageChannelReady(I[BIILjava/lang/Object;Lo/WireFormat$FieldType$2;Lo/SessionReport;Lo/writeRawLittleEndian64$onPostMessage;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Ljava/lang/Object;",
            "Lo/WireFormat$FieldType$2;",
            "Lo/SessionReport<",
            "Lo/getFileName;",
            "Lo/getFileName;",
            ">;",
            "Lo/writeRawLittleEndian64$onPostMessage;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v1, p1

    move v2, p2

    move-object/from16 v0, p6

    move-object/from16 v6, p7

    ushr-int/lit8 v3, p0, 0x3

    .line 755
    iget-object v4, v6, Lo/writeRawLittleEndian64$onPostMessage;->ICustomTabsCallback:Lo/writeSessionEventDevice;

    .line 29159
    iget-object v4, v4, Lo/writeSessionEventDevice;->onMessageChannelReady:Ljava/util/Map;

    new-instance v5, Lo/writeSessionEventDevice$extraCallback;

    move-object/from16 v7, p5

    invoke-direct {v5, v7, v3}, Lo/writeSessionEventDevice$extraCallback;-><init>(Ljava/lang/Object;I)V

    .line 29160
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lo/getEventAppExecutionSize$onMessageChannelReady;

    if-nez v7, :cond_0

    .line 759
    invoke-static/range {p4 .. p4}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;)Lo/getFileName;

    move-result-object v4

    move v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v5, p7

    .line 758
    invoke-static/range {v0 .. v5}, Lo/writeRawLittleEndian64;->extraCallback(I[BIILo/getFileName;Lo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    return v0

    .line 761
    :cond_0
    move-object/from16 v4, p4

    check-cast v4, Lo/getEventAppExecutionSize$extraCallback;

    invoke-virtual {v4}, Lo/getEventAppExecutionSize$extraCallback;->ICustomTabsCallback()Lo/getBinaryImageSize;

    .line 29778
    iget-object v8, v4, Lo/getEventAppExecutionSize$extraCallback;->extensions:Lo/getBinaryImageSize;

    .line 29780
    iget-object v5, v7, Lo/getEventAppExecutionSize$onMessageChannelReady;->extraCallback:Lo/getEventAppExecutionSize$ICustomTabsCallback;

    .line 30115
    iget-boolean v5, v5, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onPostMessage:Z

    const/4 v9, 0x0

    if-eqz v5, :cond_3

    .line 29780
    iget-object v5, v7, Lo/getEventAppExecutionSize$onMessageChannelReady;->extraCallback:Lo/getEventAppExecutionSize$ICustomTabsCallback;

    .line 30120
    iget-boolean v5, v5, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onMessageChannelReady:Z

    if-eqz v5, :cond_3

    .line 29781
    sget-object v5, Lo/writeRawLittleEndian64$5;->onMessageChannelReady:[I

    .line 30290
    iget-object v10, v7, Lo/getEventAppExecutionSize$onMessageChannelReady;->extraCallback:Lo/getEventAppExecutionSize$ICustomTabsCallback;

    .line 31105
    iget-object v10, v10, Lo/getEventAppExecutionSize$ICustomTabsCallback;->ICustomTabsCallback:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    .line 29781
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v5, v5, v10

    packed-switch v5, :pswitch_data_0

    .line 29871
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Type cannot be packed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v7, Lo/getEventAppExecutionSize$onMessageChannelReady;->extraCallback:Lo/getEventAppExecutionSize$ICustomTabsCallback;

    .line 32105
    iget-object v2, v2, Lo/getEventAppExecutionSize$ICustomTabsCallback;->ICustomTabsCallback:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    .line 29872
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29851
    :pswitch_0
    new-instance v5, Lo/getEventAppExecutionExceptionSize;

    invoke-direct {v5}, Lo/getEventAppExecutionExceptionSize;-><init>()V

    .line 29852
    invoke-static {p1, p2, v5, v6}, Lo/writeRawLittleEndian64;->ICustomTabsCallback([BILo/getEventLogSize$asBinder;Lo/writeRawLittleEndian64$onPostMessage;)I

    move-result v1

    .line 29853
    iget-object v2, v4, Lo/getEventAppExecutionSize;->unknownFields:Lo/getFileName;

    .line 29854
    invoke-static {}, Lo/getFileName;->ICustomTabsCallback()Lo/getFileName;

    move-result-object v6

    if-ne v2, v6, :cond_1

    goto :goto_0

    :cond_1
    move-object v9, v2

    .line 29857
    :goto_0
    iget-object v2, v7, Lo/getEventAppExecutionSize$onMessageChannelReady;->extraCallback:Lo/getEventAppExecutionSize$ICustomTabsCallback;

    .line 31125
    iget-object v2, v2, Lo/getEventAppExecutionSize$ICustomTabsCallback;->extraCallback:Lo/getEventLogSize$onNavigationEvent;

    .line 29858
    invoke-static {v3, v5, v2, v9, v0}, Lo/NativeSessionReport;->onMessageChannelReady(ILjava/util/List;Lo/getEventLogSize$onNavigationEvent;Ljava/lang/Object;Lo/SessionReport;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getFileName;

    if-eqz v0, :cond_2

    .line 29865
    iput-object v0, v4, Lo/getEventAppExecutionSize;->unknownFields:Lo/getFileName;

    .line 29867
    :cond_2
    iget-object v0, v7, Lo/getEventAppExecutionSize$onMessageChannelReady;->extraCallback:Lo/getEventAppExecutionSize$ICustomTabsCallback;

    invoke-virtual {v8, v0, v5}, Lo/getBinaryImageSize;->onPostMessage(Lo/getBinaryImageSize$ICustomTabsCallback;Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 29844
    :pswitch_1
    new-instance v0, Lo/makeTag;

    invoke-direct {v0}, Lo/makeTag;-><init>()V

    .line 29845
    invoke-static {p1, p2, v0, v6}, Lo/writeRawLittleEndian64;->onTransact([BILo/getEventLogSize$asBinder;Lo/writeRawLittleEndian64$onPostMessage;)I

    move-result v1

    goto/16 :goto_7

    .line 29837
    :pswitch_2
    new-instance v0, Lo/getEventAppExecutionExceptionSize;

    invoke-direct {v0}, Lo/getEventAppExecutionExceptionSize;-><init>()V

    .line 29838
    invoke-static {p1, p2, v0, v6}, Lo/writeRawLittleEndian64;->onRelationshipValidationResult([BILo/getEventLogSize$asBinder;Lo/writeRawLittleEndian64$onPostMessage;)I

    move-result v1

    goto/16 :goto_7

    .line 29830
    :pswitch_3
    new-instance v0, Lo/encodeZigZag32;

    invoke-direct {v0}, Lo/encodeZigZag32;-><init>()V

    .line 29831
    invoke-static {p1, p2, v0, v6}, Lo/writeRawLittleEndian64;->ICustomTabsCallback$Stub([BILo/getEventLogSize$asBinder;Lo/writeRawLittleEndian64$onPostMessage;)I

    move-result v1

    goto/16 :goto_7

    .line 29823
    :pswitch_4
    new-instance v0, Lo/getEventAppExecutionExceptionSize;

    invoke-direct {v0}, Lo/getEventAppExecutionExceptionSize;-><init>()V

    .line 29824
    invoke-static {p1, p2, v0, v6}, Lo/writeRawLittleEndian64;->onNavigationEvent([BILo/getEventLogSize$asBinder;Lo/writeRawLittleEndian64$onPostMessage;)I

    move-result v1

    goto/16 :goto_7

    .line 29815
    :pswitch_5
    new-instance v0, Lo/makeTag;

    invoke-direct {v0}, Lo/makeTag;-><init>()V

    .line 29816
    invoke-static {p1, p2, v0, v6}, Lo/writeRawLittleEndian64;->onPostMessage([BILo/getEventLogSize$asBinder;Lo/writeRawLittleEndian64$onPostMessage;)I

    move-result v1

    goto/16 :goto_7

    .line 29807
    :pswitch_6
    new-instance v0, Lo/getEventAppExecutionExceptionSize;

    invoke-direct {v0}, Lo/getEventAppExecutionExceptionSize;-><init>()V

    .line 29808
    invoke-static {p1, p2, v0, v6}, Lo/writeRawLittleEndian64;->ICustomTabsCallback([BILo/getEventLogSize$asBinder;Lo/writeRawLittleEndian64$onPostMessage;)I

    move-result v1

    goto/16 :goto_7

    .line 29799
    :pswitch_7
    new-instance v0, Lo/makeTag;

    invoke-direct {v0}, Lo/makeTag;-><init>()V

    .line 29800
    invoke-static {p1, p2, v0, v6}, Lo/writeRawLittleEndian64;->extraCallback([BILo/getEventLogSize$asBinder;Lo/writeRawLittleEndian64$onPostMessage;)I

    move-result v1

    goto/16 :goto_7

    .line 29791
    :pswitch_8
    new-instance v0, Lo/getSessionDeviceSize;

    invoke-direct {v0}, Lo/getSessionDeviceSize;-><init>()V

    .line 29792
    invoke-static {p1, p2, v0, v6}, Lo/writeRawLittleEndian64;->onMessageChannelReady([BILo/getEventLogSize$asBinder;Lo/writeRawLittleEndian64$onPostMessage;)I

    move-result v1

    goto/16 :goto_7

    .line 29784
    :pswitch_9
    new-instance v0, Lo/writeSessionEventApp;

    invoke-direct {v0}, Lo/writeSessionEventApp;-><init>()V

    .line 29785
    invoke-static {p1, p2, v0, v6}, Lo/writeRawLittleEndian64;->asBinder([BILo/getEventLogSize$asBinder;Lo/writeRawLittleEndian64$onPostMessage;)I

    move-result v1

    goto/16 :goto_7

    .line 32290
    :cond_3
    iget-object v5, v7, Lo/getEventAppExecutionSize$onMessageChannelReady;->extraCallback:Lo/getEventAppExecutionSize$ICustomTabsCallback;

    .line 33105
    iget-object v5, v5, Lo/getEventAppExecutionSize$ICustomTabsCallback;->ICustomTabsCallback:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    .line 29877
    sget-object v10, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->getInterfaceDescriptor:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    if-ne v5, v10, :cond_6

    .line 29878
    invoke-static {p1, p2, v6}, Lo/writeRawLittleEndian64;->extraCallback([BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v1

    .line 29879
    iget-object v2, v7, Lo/getEventAppExecutionSize$onMessageChannelReady;->extraCallback:Lo/getEventAppExecutionSize$ICustomTabsCallback;

    .line 33125
    iget-object v2, v2, Lo/getEventAppExecutionSize$ICustomTabsCallback;->extraCallback:Lo/getEventLogSize$onNavigationEvent;

    .line 29879
    iget v5, v6, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    invoke-interface {v2, v5}, Lo/getEventLogSize$onNavigationEvent;->extraCallback(I)Lo/getEventLogSize$ICustomTabsCallback;

    move-result-object v2

    if-nez v2, :cond_5

    .line 29881
    iget-object v2, v4, Lo/getEventAppExecutionSize;->unknownFields:Lo/getFileName;

    .line 29882
    invoke-static {}, Lo/getFileName;->ICustomTabsCallback()Lo/getFileName;

    move-result-object v5

    if-ne v2, v5, :cond_4

    .line 29883
    invoke-static {}, Lo/getFileName;->onMessageChannelReady()Lo/getFileName;

    move-result-object v2

    .line 29884
    iput-object v2, v4, Lo/getEventAppExecutionSize;->unknownFields:Lo/getFileName;

    .line 29886
    :cond_4
    iget v4, v6, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    invoke-static {v3, v4, v2, v0}, Lo/NativeSessionReport;->onPostMessage(IILjava/lang/Object;Lo/SessionReport;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 29892
    :cond_5
    iget v0, v6, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_4

    .line 29894
    :cond_6
    sget-object v0, Lo/writeRawLittleEndian64$5;->onMessageChannelReady:[I

    .line 33290
    iget-object v4, v7, Lo/getEventAppExecutionSize$onMessageChannelReady;->extraCallback:Lo/getEventAppExecutionSize$ICustomTabsCallback;

    .line 34105
    iget-object v4, v4, Lo/getEventAppExecutionSize$ICustomTabsCallback;->ICustomTabsCallback:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    .line 29894
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_1

    move v0, v2

    move-object v1, v9

    goto/16 :goto_5

    .line 29953
    :pswitch_a
    invoke-static {}, Lo/ReportUploader$HandlingExceptionCheck;->ICustomTabsCallback()Lo/ReportUploader$HandlingExceptionCheck;

    move-result-object v0

    .line 35235
    iget-object v3, v7, Lo/getEventAppExecutionSize$onMessageChannelReady;->onMessageChannelReady:Lo/WireFormat$FieldType$2;

    .line 29953
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Lo/ReportUploader$HandlingExceptionCheck;->onMessageChannelReady(Ljava/lang/Class;)Lo/CreateReportRequest;

    move-result-object v0

    move v4, p3

    .line 29952
    invoke-static {v0, p1, p2, p3, v6}, Lo/writeRawLittleEndian64;->onMessageChannelReady(Lo/CreateReportRequest;[BIILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    .line 29955
    iget-object v1, v6, Lo/writeRawLittleEndian64$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    goto/16 :goto_5

    :pswitch_b
    move v4, p3

    shl-int/lit8 v0, v3, 0x3

    or-int/lit8 v5, v0, 0x4

    .line 29946
    invoke-static {}, Lo/ReportUploader$HandlingExceptionCheck;->ICustomTabsCallback()Lo/ReportUploader$HandlingExceptionCheck;

    move-result-object v0

    .line 34235
    iget-object v3, v7, Lo/getEventAppExecutionSize$onMessageChannelReady;->onMessageChannelReady:Lo/WireFormat$FieldType$2;

    .line 29946
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Lo/ReportUploader$HandlingExceptionCheck;->onMessageChannelReady(Ljava/lang/Class;)Lo/CreateReportRequest;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, v5

    move-object/from16 v5, p7

    .line 29945
    invoke-static/range {v0 .. v5}, Lo/writeRawLittleEndian64;->onMessageChannelReady(Lo/CreateReportRequest;[BIIILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    .line 29948
    iget-object v1, v6, Lo/writeRawLittleEndian64$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    goto/16 :goto_5

    .line 29940
    :pswitch_c
    invoke-static {p1, p2, v6}, Lo/writeRawLittleEndian64;->onMessageChannelReady([BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    .line 29941
    iget-object v1, v6, Lo/writeRawLittleEndian64$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    goto/16 :goto_5

    .line 29928
    :pswitch_d
    invoke-static {p1, p2, v6}, Lo/writeRawLittleEndian64;->ICustomTabsCallback([BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    .line 29929
    iget-object v1, v6, Lo/writeRawLittleEndian64$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    goto/16 :goto_5

    .line 29959
    :pswitch_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shouldn\'t reach here."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29936
    :pswitch_f
    invoke-static {p1, p2, v6}, Lo/writeRawLittleEndian64;->onNavigationEvent([BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    .line 29937
    iget-wide v1, v6, Lo/writeRawLittleEndian64$onPostMessage;->extraCallback:J

    invoke-static {v1, v2}, Lo/writeSessionAppClsId;->onPostMessage(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto/16 :goto_5

    .line 29932
    :pswitch_10
    invoke-static {p1, p2, v6}, Lo/writeRawLittleEndian64;->extraCallback([BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    .line 29933
    iget v1, v6, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    invoke-static {v1}, Lo/writeSessionAppClsId;->onMessageChannelReady(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_5

    .line 29924
    :pswitch_11
    invoke-static {p1, p2, v6}, Lo/writeRawLittleEndian64;->onNavigationEvent([BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    .line 29925
    iget-wide v1, v6, Lo/writeRawLittleEndian64$onPostMessage;->extraCallback:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_7

    const/4 v1, 0x1

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_5

    .line 29920
    :pswitch_12
    invoke-static {p1, p2}, Lo/writeRawLittleEndian64;->ICustomTabsCallback([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    .line 29915
    :pswitch_13
    invoke-static {p1, p2}, Lo/writeRawLittleEndian64;->onNavigationEvent([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_3

    .line 29910
    :pswitch_14
    invoke-static {p1, p2, v6}, Lo/writeRawLittleEndian64;->extraCallback([BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    .line 29911
    iget v1, v6, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_5

    .line 29905
    :pswitch_15
    invoke-static {p1, p2, v6}, Lo/writeRawLittleEndian64;->onNavigationEvent([BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    .line 29906
    iget-wide v1, v6, Lo/writeRawLittleEndian64$onPostMessage;->extraCallback:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_5

    .line 34180
    :pswitch_16
    invoke-static {p1, p2}, Lo/writeRawLittleEndian64;->ICustomTabsCallback([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 29900
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_2
    add-int/lit8 v1, v2, 0x4

    goto :goto_4

    .line 34175
    :pswitch_17
    invoke-static {p1, p2}, Lo/writeRawLittleEndian64;->onNavigationEvent([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 29896
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_3
    add-int/lit8 v1, v2, 0x8

    :goto_4
    move v11, v1

    move-object v1, v0

    move v0, v11

    .line 35295
    :goto_5
    iget-object v2, v7, Lo/getEventAppExecutionSize$onMessageChannelReady;->extraCallback:Lo/getEventAppExecutionSize$ICustomTabsCallback;

    iget-boolean v2, v2, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onPostMessage:Z

    if-eqz v2, :cond_8

    .line 29963
    iget-object v2, v7, Lo/getEventAppExecutionSize$onMessageChannelReady;->extraCallback:Lo/getEventAppExecutionSize$ICustomTabsCallback;

    invoke-virtual {v8, v2, v1}, Lo/getBinaryImageSize;->onMessageChannelReady(Lo/getBinaryImageSize$ICustomTabsCallback;Ljava/lang/Object;)V

    move v1, v0

    goto :goto_8

    .line 29965
    :cond_8
    sget-object v2, Lo/writeRawLittleEndian64$5;->onMessageChannelReady:[I

    .line 36290
    iget-object v3, v7, Lo/getEventAppExecutionSize$onMessageChannelReady;->extraCallback:Lo/getEventAppExecutionSize$ICustomTabsCallback;

    .line 37105
    iget-object v3, v3, Lo/getEventAppExecutionSize$ICustomTabsCallback;->ICustomTabsCallback:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    .line 29965
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x11

    if-eq v2, v3, :cond_9

    const/16 v3, 0x12

    if-eq v2, v3, :cond_9

    goto :goto_6

    .line 29968
    :cond_9
    iget-object v2, v7, Lo/getEventAppExecutionSize$onMessageChannelReady;->extraCallback:Lo/getEventAppExecutionSize$ICustomTabsCallback;

    .line 37266
    iget-object v3, v8, Lo/getBinaryImageSize;->ICustomTabsCallback:Lo/Report$Type;

    invoke-virtual {v3, v2}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 37267
    instance-of v3, v2, Lo/getFrameSize;

    if-eqz v3, :cond_a

    .line 37268
    check-cast v2, Lo/getFrameSize;

    .line 38067
    invoke-virtual {v2, v9}, Lo/WireFormat;->onMessageChannelReady(Lo/WireFormat$FieldType$2;)Lo/WireFormat$FieldType$2;

    move-result-object v2

    :cond_a
    if-eqz v2, :cond_b

    .line 29970
    invoke-static {v2, v1}, Lo/getEventLogSize;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_b
    :goto_6
    move-object v11, v1

    move v1, v0

    move-object v0, v11

    .line 29976
    :goto_7
    iget-object v2, v7, Lo/getEventAppExecutionSize$onMessageChannelReady;->extraCallback:Lo/getEventAppExecutionSize$ICustomTabsCallback;

    invoke-virtual {v8, v2, v0}, Lo/getBinaryImageSize;->onPostMessage(Lo/getBinaryImageSize$ICustomTabsCallback;Ljava/lang/Object;)V

    :goto_8
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method static onMessageChannelReady(I[BIILo/getEventLogSize$asBinder;Lo/writeRawLittleEndian64$onPostMessage;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lo/getEventLogSize$asBinder<",
            "*>;",
            "Lo/writeRawLittleEndian64$onPostMessage;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    add-int/lit8 v0, p2, 0x1

    .line 25079
    aget-byte p2, p1, p2

    if-ltz p2, :cond_0

    .line 25081
    iput p2, p5, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    goto :goto_0

    .line 25084
    :cond_0
    invoke-static {p2, p1, v0, p5}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    .line 656
    :goto_0
    iget p2, p5, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    if-ltz p2, :cond_9

    .line 659
    array-length v1, p1

    sub-int/2addr v1, v0

    if-gt p2, v1, :cond_8

    if-nez p2, :cond_1

    .line 662
    sget-object p2, Lo/SessionProtobufHelper;->onNavigationEvent:Lo/SessionProtobufHelper;

    invoke-interface {p4, p2}, Lo/getEventLogSize$asBinder;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 664
    :cond_1
    invoke-static {p1, v0, p2}, Lo/SessionProtobufHelper;->onMessageChannelReady([BII)Lo/SessionProtobufHelper;

    move-result-object v1

    invoke-interface {p4, v1}, Lo/getEventLogSize$asBinder;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/2addr v0, p2

    :goto_2
    if-ge v0, p3, :cond_7

    add-int/lit8 p2, v0, 0x1

    .line 26079
    aget-byte v1, p1, v0

    if-ltz v1, :cond_2

    .line 26081
    iput v1, p5, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    goto :goto_3

    .line 26084
    :cond_2
    invoke-static {v1, p1, p2, p5}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result p2

    .line 669
    :goto_3
    iget v1, p5, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    if-ne p0, v1, :cond_7

    add-int/lit8 v0, p2, 0x1

    .line 27079
    aget-byte p2, p1, p2

    if-ltz p2, :cond_3

    .line 27081
    iput p2, p5, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    goto :goto_4

    .line 27084
    :cond_3
    invoke-static {p2, p1, v0, p5}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result p2

    move v0, p2

    .line 673
    :goto_4
    iget p2, p5, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    if-ltz p2, :cond_6

    .line 676
    array-length v1, p1

    sub-int/2addr v1, v0

    if-gt p2, v1, :cond_5

    if-nez p2, :cond_4

    .line 679
    sget-object p2, Lo/SessionProtobufHelper;->onNavigationEvent:Lo/SessionProtobufHelper;

    invoke-interface {p4, p2}, Lo/getEventLogSize$asBinder;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 681
    :cond_4
    invoke-static {p1, v0, p2}, Lo/SessionProtobufHelper;->onMessageChannelReady([BII)Lo/SessionProtobufHelper;

    move-result-object v1

    invoke-interface {p4, v1}, Lo/getEventLogSize$asBinder;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 677
    :cond_5
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 675
    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onNavigationEvent()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_7
    return v0

    .line 660
    :cond_8
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 658
    :cond_9
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onNavigationEvent()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static onMessageChannelReady(I[BIILo/writeRawLittleEndian64$onPostMessage;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1043
    invoke-static {p0}, Lo/DefaultCreateReportSpiCall;->onPostMessage(I)I

    move-result v0

    if-eqz v0, :cond_9

    .line 1046
    invoke-static {p0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p0, 0x5

    if-ne v0, p0, :cond_0

    add-int/lit8 p2, p2, 0x4

    return p2

    .line 1073
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->extraCallback()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_1
    and-int/lit8 p0, p0, -0x8

    or-int/lit8 p0, p0, 0x4

    const/4 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_3

    add-int/lit8 v0, p2, 0x1

    .line 41079
    aget-byte p2, p1, p2

    if-ltz p2, :cond_2

    .line 41081
    iput p2, p4, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    move p2, v0

    goto :goto_1

    .line 41084
    :cond_2
    invoke-static {p2, p1, v0, p4}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result p2

    .line 1062
    :goto_1
    iget v0, p4, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    if-eq v0, p0, :cond_3

    .line 1066
    invoke-static {v0, p1, p2, p3, p4}, Lo/writeRawLittleEndian64;->onMessageChannelReady(I[BIILo/writeRawLittleEndian64$onPostMessage;)I

    move-result p2

    goto :goto_0

    :cond_3
    if-gt p2, p3, :cond_4

    if-ne v0, p0, :cond_4

    return p2

    .line 1069
    :cond_4
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->ICustomTabsCallback$Stub()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_5
    add-int/lit8 p0, p2, 0x1

    .line 40079
    aget-byte p2, p1, p2

    if-ltz p2, :cond_6

    .line 40081
    iput p2, p4, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    goto :goto_2

    .line 40084
    :cond_6
    invoke-static {p2, p1, p0, p4}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result p0

    .line 1056
    :goto_2
    iget p1, p4, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    add-int/2addr p0, p1

    return p0

    :cond_7
    add-int/lit8 p2, p2, 0x8

    return p2

    .line 1048
    :cond_8
    invoke-static {p1, p2, p4}, Lo/writeRawLittleEndian64;->onNavigationEvent([BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result p0

    return p0

    .line 1044
    :cond_9
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->extraCallback()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static onMessageChannelReady(Lo/CreateReportRequest;I[BIILo/getEventLogSize$asBinder;Lo/writeRawLittleEndian64$onPostMessage;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CreateReportRequest;",
            "I[BII",
            "Lo/getEventLogSize$asBinder<",
            "*>;",
            "Lo/writeRawLittleEndian64$onPostMessage;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p1, -0x8

    or-int/lit8 v0, v0, 0x4

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, v0

    move-object v6, p6

    .line 734
    invoke-static/range {v1 .. v6}, Lo/writeRawLittleEndian64;->onMessageChannelReady(Lo/CreateReportRequest;[BIIILo/writeRawLittleEndian64$onPostMessage;)I

    move-result p3

    .line 735
    iget-object v1, p6, Lo/writeRawLittleEndian64$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    invoke-interface {p5, v1}, Lo/getEventLogSize$asBinder;->add(Ljava/lang/Object;)Z

    :goto_0
    if-ge p3, p4, :cond_1

    add-int/lit8 v1, p3, 0x1

    .line 29079
    aget-byte v2, p2, p3

    if-ltz v2, :cond_0

    .line 29081
    iput v2, p6, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    goto :goto_1

    .line 29084
    :cond_0
    invoke-static {v2, p2, v1, p6}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v1

    :goto_1
    move v3, v1

    .line 738
    iget v1, p6, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    if-ne p1, v1, :cond_1

    move-object v1, p0

    move-object v2, p2

    move v4, p4

    move v5, v0

    move-object v6, p6

    .line 741
    invoke-static/range {v1 .. v6}, Lo/writeRawLittleEndian64;->onMessageChannelReady(Lo/CreateReportRequest;[BIIILo/writeRawLittleEndian64$onPostMessage;)I

    move-result p3

    .line 742
    iget-object v1, p6, Lo/writeRawLittleEndian64$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    invoke-interface {p5, v1}, Lo/getEventLogSize$asBinder;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return p3
.end method

.method static onMessageChannelReady(Lo/CreateReportRequest;[BIIILo/writeRawLittleEndian64$onPostMessage;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    check-cast p0, Lo/ReportManager;

    .line 5780
    iget-object v0, p0, Lo/ReportManager;->extraCallback:Lo/getDefaultDefault;

    iget-object v1, p0, Lo/ReportManager;->onNavigationEvent:Lo/WireFormat$FieldType$2;

    invoke-interface {v0, v1}, Lo/getDefaultDefault;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, p0

    move-object v1, v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .line 263
    invoke-virtual/range {v0 .. v6}, Lo/ReportManager;->onNavigationEvent(Ljava/lang/Object;[BIIILo/writeRawLittleEndian64$onPostMessage;)I

    move-result p1

    .line 264
    invoke-virtual {p0, v7}, Lo/ReportManager;->ICustomTabsCallback(Ljava/lang/Object;)V

    .line 265
    iput-object v7, p5, Lo/writeRawLittleEndian64$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    return p1
.end method

.method static onMessageChannelReady(Lo/CreateReportRequest;[BIILo/writeRawLittleEndian64$onPostMessage;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 v0, p2, 0x1

    .line 237
    aget-byte p2, p1, p2

    if-gez p2, :cond_0

    .line 239
    invoke-static {p2, p1, v0, p4}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    .line 240
    iget p2, p4, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    :cond_0
    move v3, v0

    if-ltz p2, :cond_1

    sub-int/2addr p3, v3

    if-gt p2, p3, :cond_1

    .line 245
    invoke-interface {p0}, Lo/CreateReportRequest;->extraCallback()Ljava/lang/Object;

    move-result-object p3

    add-int/2addr p2, v3

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move v4, p2

    move-object v5, p4

    .line 246
    invoke-interface/range {v0 .. v5}, Lo/CreateReportRequest;->extraCallback(Ljava/lang/Object;[BIILo/writeRawLittleEndian64$onPostMessage;)V

    .line 247
    invoke-interface {p0, p3}, Lo/CreateReportRequest;->ICustomTabsCallback(Ljava/lang/Object;)V

    .line 248
    iput-object p3, p4, Lo/writeRawLittleEndian64$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    return p2

    .line 243
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static onMessageChannelReady([BILo/getEventLogSize$asBinder;Lo/writeRawLittleEndian64$onPostMessage;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lo/getEventLogSize$asBinder<",
            "*>;",
            "Lo/writeRawLittleEndian64$onPostMessage;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 489
    check-cast p2, Lo/getSessionDeviceSize;

    add-int/lit8 v0, p1, 0x1

    .line 18079
    aget-byte p1, p0, p1

    if-ltz p1, :cond_0

    .line 18081
    iput p1, p3, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    goto :goto_0

    .line 18084
    :cond_0
    invoke-static {p1, p0, v0, p3}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    .line 491
    :goto_0
    iget p1, p3, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    add-int/2addr p1, v0

    :goto_1
    if-ge v0, p1, :cond_1

    .line 18180
    invoke-static {p0, v0}, Lo/writeRawLittleEndian64;->ICustomTabsCallback([BI)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p3

    .line 493
    invoke-virtual {p2, p3}, Lo/getSessionDeviceSize;->ICustomTabsCallback(F)V

    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_1
    if-ne v0, p1, :cond_2

    return v0

    .line 497
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static onMessageChannelReady([BILo/writeRawLittleEndian64$onPostMessage;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x1

    .line 3079
    aget-byte p1, p0, p1

    if-ltz p1, :cond_0

    .line 3081
    iput p1, p2, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    goto :goto_0

    .line 3084
    :cond_0
    invoke-static {p1, p0, v0, p2}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    .line 187
    :goto_0
    iget p1, p2, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    if-ltz p1, :cond_2

    if-nez p1, :cond_1

    const-string p0, ""

    .line 191
    iput-object p0, p2, Lo/writeRawLittleEndian64$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    return v0

    .line 194
    :cond_1
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lo/getEventLogSize;->extraCallback:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v0, p1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v1, p2, Lo/writeRawLittleEndian64$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    add-int/2addr v0, p1

    return v0

    .line 189
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onNavigationEvent()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static onNavigationEvent(I[BIILo/getEventLogSize$asBinder;Lo/writeRawLittleEndian64$onPostMessage;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lo/getEventLogSize$asBinder<",
            "*>;",
            "Lo/writeRawLittleEndian64$onPostMessage;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    add-int/lit8 v0, p2, 0x1

    .line 24079
    aget-byte p2, p1, p2

    if-ltz p2, :cond_0

    .line 24081
    iput p2, p5, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    goto :goto_0

    .line 24084
    :cond_0
    invoke-static {p2, p1, v0, p5}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    .line 613
    :goto_0
    iget p2, p5, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    if-ltz p2, :cond_7

    const-string v1, ""

    if-nez p2, :cond_1

    .line 617
    invoke-interface {p4, v1}, Lo/getEventLogSize$asBinder;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    add-int v2, v0, p2

    .line 619
    invoke-static {p1, v0, v2}, Lo/CompositeCreateReportSpiCall$1;->onPostMessage([BII)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 622
    new-instance v3, Ljava/lang/String;

    sget-object v4, Lo/getEventLogSize;->extraCallback:Ljava/nio/charset/Charset;

    invoke-direct {v3, p1, v0, p2, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 623
    invoke-interface {p4, v3}, Lo/getEventLogSize$asBinder;->add(Ljava/lang/Object;)Z

    :goto_1
    move v0, v2

    :goto_2
    if-ge v0, p3, :cond_5

    .line 627
    invoke-static {p1, v0, p5}, Lo/writeRawLittleEndian64;->extraCallback([BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result p2

    .line 628
    iget v2, p5, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    if-ne p0, v2, :cond_5

    .line 631
    invoke-static {p1, p2, p5}, Lo/writeRawLittleEndian64;->extraCallback([BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    .line 632
    iget p2, p5, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    if-ltz p2, :cond_4

    if-nez p2, :cond_2

    .line 636
    invoke-interface {p4, v1}, Lo/getEventLogSize$asBinder;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    add-int v2, v0, p2

    .line 638
    invoke-static {p1, v0, v2}, Lo/CompositeCreateReportSpiCall$1;->onPostMessage([BII)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 641
    new-instance v3, Ljava/lang/String;

    sget-object v4, Lo/getEventLogSize;->extraCallback:Ljava/nio/charset/Charset;

    invoke-direct {v3, p1, v0, p2, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 642
    invoke-interface {p4, v3}, Lo/getEventLogSize$asBinder;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 639
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->asBinder()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 634
    :cond_4
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onNavigationEvent()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_5
    return v0

    .line 620
    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->asBinder()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 615
    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onNavigationEvent()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static onNavigationEvent(Lo/CreateReportRequest;I[BIILo/getEventLogSize$asBinder;Lo/writeRawLittleEndian64$onPostMessage;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CreateReportRequest<",
            "*>;I[BII",
            "Lo/getEventLogSize$asBinder<",
            "*>;",
            "Lo/writeRawLittleEndian64$onPostMessage;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 704
    invoke-static {p0, p2, p3, p4, p6}, Lo/writeRawLittleEndian64;->onMessageChannelReady(Lo/CreateReportRequest;[BIILo/writeRawLittleEndian64$onPostMessage;)I

    move-result p3

    .line 705
    iget-object v0, p6, Lo/writeRawLittleEndian64$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    invoke-interface {p5, v0}, Lo/getEventLogSize$asBinder;->add(Ljava/lang/Object;)Z

    :goto_0
    if-ge p3, p4, :cond_1

    add-int/lit8 v0, p3, 0x1

    .line 28079
    aget-byte v1, p2, p3

    if-ltz v1, :cond_0

    .line 28081
    iput v1, p6, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    goto :goto_1

    .line 28084
    :cond_0
    invoke-static {v1, p2, v0, p6}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    .line 708
    :goto_1
    iget v1, p6, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    if-ne p1, v1, :cond_1

    .line 711
    invoke-static {p0, p2, v0, p4, p6}, Lo/writeRawLittleEndian64;->onMessageChannelReady(Lo/CreateReportRequest;[BIILo/writeRawLittleEndian64$onPostMessage;)I

    move-result p3

    .line 712
    iget-object v0, p6, Lo/writeRawLittleEndian64$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    invoke-interface {p5, v0}, Lo/getEventLogSize$asBinder;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return p3
.end method

.method static onNavigationEvent([BILo/getEventLogSize$asBinder;Lo/writeRawLittleEndian64$onPostMessage;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lo/getEventLogSize$asBinder<",
            "*>;",
            "Lo/writeRawLittleEndian64$onPostMessage;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 457
    check-cast p2, Lo/getEventAppExecutionExceptionSize;

    add-int/lit8 v0, p1, 0x1

    .line 16079
    aget-byte p1, p0, p1

    if-ltz p1, :cond_0

    .line 16081
    iput p1, p3, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    goto :goto_0

    .line 16084
    :cond_0
    invoke-static {p1, p0, v0, p3}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    .line 459
    :goto_0
    iget p1, p3, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    add-int/2addr p1, v0

    :goto_1
    if-ge v0, p1, :cond_1

    .line 461
    invoke-static {p0, v0}, Lo/writeRawLittleEndian64;->ICustomTabsCallback([BI)I

    move-result p3

    invoke-virtual {p2, p3}, Lo/getEventAppExecutionExceptionSize;->onMessageChannelReady(I)V

    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_1
    if-ne v0, p1, :cond_2

    return v0

    .line 465
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static onNavigationEvent([BILo/writeRawLittleEndian64$onPostMessage;)I
    .locals 9

    add-int/lit8 v0, p1, 0x1

    .line 129
    aget-byte p1, p0, p1

    int-to-long v1, p1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-ltz p1, :cond_0

    .line 131
    iput-wide v1, p2, Lo/writeRawLittleEndian64$onPostMessage;->extraCallback:J

    return v0

    :cond_0
    const-wide/16 v3, 0x7f

    and-long/2addr v1, v3

    add-int/lit8 p1, v0, 0x1

    .line 2141
    aget-byte v0, p0, v0

    and-int/lit8 v3, v0, 0x7f

    int-to-long v3, v3

    const/4 v5, 0x7

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    const/4 v3, 0x7

    :goto_0
    if-gez v0, :cond_1

    add-int/lit8 v0, p1, 0x1

    .line 2145
    aget-byte p1, p0, p1

    add-int/2addr v3, v5

    and-int/lit8 v4, p1, 0x7f

    int-to-long v6, v4

    shl-long/2addr v6, v3

    or-long/2addr v1, v6

    move v8, v0

    move v0, p1

    move p1, v8

    goto :goto_0

    .line 2149
    :cond_1
    iput-wide v1, p2, Lo/writeRawLittleEndian64$onPostMessage;->extraCallback:J

    return p1
.end method

.method static onNavigationEvent([BI)J
    .locals 7

    .line 163
    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x4

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x5

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x6

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x7

    aget-byte p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    const/16 v2, 0x38

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method static onPostMessage(I[BIILo/getEventLogSize$asBinder;Lo/writeRawLittleEndian64$onPostMessage;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lo/getEventLogSize$asBinder<",
            "*>;",
            "Lo/writeRawLittleEndian64$onPostMessage;",
            ")I"
        }
    .end annotation

    .line 272
    check-cast p4, Lo/getEventAppExecutionExceptionSize;

    add-int/lit8 v0, p2, 0x1

    .line 6079
    aget-byte p2, p1, p2

    if-ltz p2, :cond_0

    .line 6081
    iput p2, p5, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    goto :goto_0

    .line 6084
    :cond_0
    invoke-static {p2, p1, v0, p5}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    .line 274
    :goto_0
    iget p2, p5, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    invoke-virtual {p4, p2}, Lo/getEventAppExecutionExceptionSize;->onMessageChannelReady(I)V

    :goto_1
    if-ge v0, p3, :cond_3

    add-int/lit8 p2, v0, 0x1

    .line 7079
    aget-byte v1, p1, v0

    if-ltz v1, :cond_1

    .line 7081
    iput v1, p5, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    goto :goto_2

    .line 7084
    :cond_1
    invoke-static {v1, p1, p2, p5}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result p2

    .line 277
    :goto_2
    iget v1, p5, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    if-ne p0, v1, :cond_3

    add-int/lit8 v0, p2, 0x1

    .line 8079
    aget-byte p2, p1, p2

    if-ltz p2, :cond_2

    .line 8081
    iput p2, p5, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    goto :goto_3

    .line 8084
    :cond_2
    invoke-static {p2, p1, v0, p5}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result p2

    move v0, p2

    .line 281
    :goto_3
    iget p2, p5, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    invoke-virtual {p4, p2}, Lo/getEventAppExecutionExceptionSize;->onMessageChannelReady(I)V

    goto :goto_1

    :cond_3
    return v0
.end method

.method static onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I
    .locals 1

    and-int/lit8 p0, p0, 0x7f

    add-int/lit8 v0, p2, 0x1

    .line 90
    aget-byte p2, p1, p2

    if-ltz p2, :cond_0

    shl-int/lit8 p1, p2, 0x7

    or-int/2addr p0, p1

    .line 92
    iput p0, p3, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    return v0

    :cond_0
    and-int/lit8 p2, p2, 0x7f

    shl-int/lit8 p2, p2, 0x7

    or-int/2addr p0, p2

    add-int/lit8 p2, v0, 0x1

    .line 97
    aget-byte v0, p1, v0

    if-ltz v0, :cond_1

    shl-int/lit8 p1, v0, 0xe

    or-int/2addr p0, p1

    .line 99
    iput p0, p3, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    return p2

    :cond_1
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0xe

    or-int/2addr p0, v0

    add-int/lit8 v0, p2, 0x1

    .line 104
    aget-byte p2, p1, p2

    if-ltz p2, :cond_2

    shl-int/lit8 p1, p2, 0x15

    or-int/2addr p0, p1

    .line 106
    iput p0, p3, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    return v0

    :cond_2
    and-int/lit8 p2, p2, 0x7f

    shl-int/lit8 p2, p2, 0x15

    or-int/2addr p0, p2

    add-int/lit8 p2, v0, 0x1

    .line 111
    aget-byte v0, p1, v0

    if-ltz v0, :cond_3

    shl-int/lit8 p1, v0, 0x1c

    or-int/2addr p0, p1

    .line 113
    iput p0, p3, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    return p2

    :cond_3
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x1c

    or-int/2addr p0, v0

    :goto_0
    add-int/lit8 v0, p2, 0x1

    .line 118
    aget-byte p2, p1, p2

    if-ltz p2, :cond_4

    .line 120
    iput p0, p3, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    return v0

    :cond_4
    move p2, v0

    goto :goto_0
.end method

.method static onPostMessage([BILo/getEventLogSize$asBinder;Lo/writeRawLittleEndian64$onPostMessage;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lo/getEventLogSize$asBinder<",
            "*>;",
            "Lo/writeRawLittleEndian64$onPostMessage;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 473
    check-cast p2, Lo/makeTag;

    add-int/lit8 v0, p1, 0x1

    .line 17079
    aget-byte p1, p0, p1

    if-ltz p1, :cond_0

    .line 17081
    iput p1, p3, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    goto :goto_0

    .line 17084
    :cond_0
    invoke-static {p1, p0, v0, p3}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    .line 475
    :goto_0
    iget p1, p3, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    add-int/2addr p1, v0

    :goto_1
    if-ge v0, p1, :cond_1

    .line 477
    invoke-static {p0, v0}, Lo/writeRawLittleEndian64;->onNavigationEvent([BI)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lo/makeTag;->extraCallback(J)V

    add-int/lit8 v0, v0, 0x8

    goto :goto_1

    :cond_1
    if-ne v0, p1, :cond_2

    return v0

    .line 481
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static onPostMessage([BILo/writeRawLittleEndian64$onPostMessage;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x1

    .line 4079
    aget-byte p1, p0, p1

    if-ltz p1, :cond_0

    .line 4081
    iput p1, p2, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    goto :goto_0

    .line 4084
    :cond_0
    invoke-static {p1, p0, v0, p2}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    .line 203
    :goto_0
    iget p1, p2, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    if-ltz p1, :cond_2

    if-nez p1, :cond_1

    const-string p0, ""

    .line 207
    iput-object p0, p2, Lo/writeRawLittleEndian64$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    return v0

    .line 210
    :cond_1
    invoke-static {p0, v0, p1}, Lo/CompositeCreateReportSpiCall$1;->ICustomTabsCallback([BII)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lo/writeRawLittleEndian64$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    add-int/2addr v0, p1

    return v0

    .line 205
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onNavigationEvent()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static onRelationshipValidationResult([BILo/getEventLogSize$asBinder;Lo/writeRawLittleEndian64$onPostMessage;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lo/getEventLogSize$asBinder<",
            "*>;",
            "Lo/writeRawLittleEndian64$onPostMessage;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 537
    check-cast p2, Lo/getEventAppExecutionExceptionSize;

    add-int/lit8 v0, p1, 0x1

    .line 21079
    aget-byte p1, p0, p1

    if-ltz p1, :cond_0

    .line 21081
    iput p1, p3, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    goto :goto_0

    .line 21084
    :cond_0
    invoke-static {p1, p0, v0, p3}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    .line 539
    :goto_0
    iget p1, p3, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    add-int/2addr p1, v0

    :goto_1
    if-ge v0, p1, :cond_2

    add-int/lit8 v1, v0, 0x1

    .line 22079
    aget-byte v0, p0, v0

    if-ltz v0, :cond_1

    .line 22081
    iput v0, p3, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    move v0, v1

    goto :goto_2

    .line 22084
    :cond_1
    invoke-static {v0, p0, v1, p3}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    .line 542
    :goto_2
    iget v1, p3, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    invoke-static {v1}, Lo/writeSessionAppClsId;->onMessageChannelReady(I)I

    move-result v1

    invoke-virtual {p2, v1}, Lo/getEventAppExecutionExceptionSize;->onMessageChannelReady(I)V

    goto :goto_1

    :cond_2
    if-ne v0, p1, :cond_3

    return v0

    .line 545
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static onTransact([BILo/getEventLogSize$asBinder;Lo/writeRawLittleEndian64$onPostMessage;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lo/getEventLogSize$asBinder<",
            "*>;",
            "Lo/writeRawLittleEndian64$onPostMessage;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 554
    check-cast p2, Lo/makeTag;

    add-int/lit8 v0, p1, 0x1

    .line 23079
    aget-byte p1, p0, p1

    if-ltz p1, :cond_0

    .line 23081
    iput p1, p3, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    goto :goto_0

    .line 23084
    :cond_0
    invoke-static {p1, p0, v0, p3}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    .line 556
    :goto_0
    iget p1, p3, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    add-int/2addr p1, v0

    :goto_1
    if-ge v0, p1, :cond_1

    .line 558
    invoke-static {p0, v0, p3}, Lo/writeRawLittleEndian64;->onNavigationEvent([BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    .line 559
    iget-wide v1, p3, Lo/writeRawLittleEndian64$onPostMessage;->extraCallback:J

    invoke-static {v1, v2}, Lo/writeSessionAppClsId;->onPostMessage(J)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lo/makeTag;->extraCallback(J)V

    goto :goto_1

    :cond_1
    if-ne v0, p1, :cond_2

    return v0

    .line 562
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 43000
    iget-object v0, p0, Lo/writeRawLittleEndian64;->zzei:Lcom/google/firebase/perf/internal/GaugeManager;

    iget-object v1, p0, Lo/writeRawLittleEndian64;->zzej:Ljava/lang/String;

    iget-object v2, p0, Lo/writeRawLittleEndian64;->zzek:Lo/onCreateLoader;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/internal/GaugeManager;->zzd(Ljava/lang/String;Lo/onCreateLoader;)V

    return-void
.end method
