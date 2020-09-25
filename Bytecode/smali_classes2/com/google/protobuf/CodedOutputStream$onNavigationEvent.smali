.class final Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;
.super Lcom/google/protobuf/CodedOutputStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/CodedOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private onMessageChannelReady:I

.field private final onNavigationEvent:I

.field private final onPostMessage:[B


# direct methods
.method constructor <init>([BII)V
    .locals 4

    const/4 v0, 0x0

    .line 1156
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedOutputStream;-><init>(B)V

    if-eqz p1, :cond_1

    or-int v1, p2, p3

    .line 1160
    array-length v2, p1

    add-int v3, p2, p3

    sub-int/2addr v2, v3

    or-int/2addr v1, v2

    if-ltz v1, :cond_0

    .line 1166
    iput-object p1, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onPostMessage:[B

    .line 1168
    iput p2, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    .line 1169
    iput v3, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onNavigationEvent:I

    return-void

    .line 1161
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    array-length p1, p1

    .line 1164
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    .line 1162
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1158
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "buffer"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private onMessageChannelReady([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1446
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onPostMessage:[B

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1447
    iget p1, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1449
    new-instance p2, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    .line 1450
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onNavigationEvent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, v1

    const-string p3, "Pos: %d, limit: %d, len: %d"

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public final ICustomTabsCallback(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1386
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onPostMessage:[B

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    int-to-byte v3, p1

    aput-byte v3, v0, v1

    .line 1387
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onPostMessage:[B

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1388
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onPostMessage:[B

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1389
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onPostMessage:[B

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    ushr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1391
    new-instance v0, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    .line 1392
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onNavigationEvent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final ICustomTabsCallback(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 4174
    invoke-static {p1, v0}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    .line 1192
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback(I)V

    return-void
.end method

.method public final ICustomTabsCallback(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 5174
    invoke-static {p1, v0}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    .line 1198
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(J)V

    return-void
.end method

.method final ICustomTabsCallback(ILo/WireFormat$FieldType$2;Lo/CreateReportRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 10174
    invoke-static {p1, v0}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    .line 1281
    move-object p1, p2

    check-cast p1, Lo/writeRawVarint64;

    invoke-virtual {p1, p3}, Lo/writeRawVarint64;->getSerializedSize(Lo/CreateReportRequest;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    .line 1282
    iget-object p1, p0, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback:Lo/writeSessionEventAppCustomAttributes;

    invoke-interface {p3, p2, p1}, Lo/CreateReportRequest;->ICustomTabsCallback(Ljava/lang/Object;Lo/sendReport;)V

    return-void
.end method

.method public final ICustomTabsCallback(Lo/SessionProtobufHelper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1248
    invoke-virtual {p1}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    .line 1249
    invoke-virtual {p1, p0}, Lo/SessionProtobufHelper;->extraCallback(Lo/encodeZigZag64;)V

    return-void
.end method

.method public final asBinder()V
    .locals 0

    return-void
.end method

.method public final asInterface()I
    .locals 2

    .line 1517
    iget v0, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onNavigationEvent:I

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final extraCallback(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1174
    invoke-static {p1, p2}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    return-void
.end method

.method public final extraCallback(ILo/WireFormat$FieldType$2;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 11174
    invoke-static {v1, v0}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 12174
    invoke-static {v2, v3}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    .line 11186
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    .line 13174
    invoke-static {v0, v2}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    .line 13305
    invoke-interface {p2}, Lo/WireFormat$FieldType$2;->getSerializedSize()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    .line 13306
    invoke-interface {p2, p0}, Lo/WireFormat$FieldType$2;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    const/4 p1, 0x4

    .line 14174
    invoke-static {v1, p1}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    return-void
.end method

.method public final extraCallback(J)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1398
    invoke-static {}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback$Stub()Z

    move-result v0

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x80

    if-eqz v0, :cond_1

    .line 18517
    iget v0, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onNavigationEvent:I

    iget v6, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    sub-int/2addr v0, v6

    const/16 v6, 0xa

    if-lt v0, v6, :cond_1

    :goto_0
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_0

    .line 1401
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onPostMessage:[B

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    int-to-long v1, v1

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-static {v0, v1, v2, p1}, Lo/CreateReportSpiCall;->onPostMessage([BJB)V

    return-void

    .line 1404
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onPostMessage:[B

    iget v6, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    int-to-long v6, v6

    long-to-int v8, p1

    and-int/lit8 v8, v8, 0x7f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    invoke-static {v0, v6, v7, v8}, Lo/CreateReportSpiCall;->onPostMessage([BJB)V

    ushr-long/2addr p1, v1

    goto :goto_0

    :cond_1
    :goto_1
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_2

    .line 1412
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onPostMessage:[B

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, v0, v1

    return-void

    .line 1415
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onPostMessage:[B

    iget v6, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    long-to-int v7, p1

    and-int/lit8 v7, v7, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v0, v6
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-long/2addr p1, v1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1420
    new-instance p2, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    .line 1421
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onNavigationEvent:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final onMessageChannelReady(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1337
    invoke-static {}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback$Stub()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1338
    invoke-static {}, Lo/computeRawVarint64Size;->extraCallback()Z

    move-result v0

    if-nez v0, :cond_4

    .line 17517
    iget v0, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onNavigationEvent:I

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    sub-int/2addr v0, v1

    const/4 v2, 0x5

    if-lt v0, v2, :cond_4

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 1341
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onPostMessage:[B

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lo/CreateReportSpiCall;->onPostMessage([BJB)V

    return-void

    .line 1344
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onPostMessage:[B

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lo/CreateReportSpiCall;->onPostMessage([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_1

    .line 1347
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onPostMessage:[B

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lo/CreateReportSpiCall;->onPostMessage([BJB)V

    return-void

    .line 1350
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onPostMessage:[B

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lo/CreateReportSpiCall;->onPostMessage([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_2

    .line 1353
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onPostMessage:[B

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lo/CreateReportSpiCall;->onPostMessage([BJB)V

    return-void

    .line 1356
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onPostMessage:[B

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lo/CreateReportSpiCall;->onPostMessage([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_3

    .line 1359
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onPostMessage:[B

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lo/CreateReportSpiCall;->onPostMessage([BJB)V

    return-void

    .line 1362
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onPostMessage:[B

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lo/CreateReportSpiCall;->onPostMessage([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    .line 1364
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onPostMessage:[B

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lo/CreateReportSpiCall;->onPostMessage([BJB)V

    return-void

    :cond_4
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_5

    .line 1369
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onPostMessage:[B

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void

    .line 1372
    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onPostMessage:[B

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1377
    new-instance v0, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    .line 1378
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onNavigationEvent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final onMessageChannelReady(ILo/SessionProtobufHelper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 9174
    invoke-static {p1, v0}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    .line 9248
    invoke-virtual {p2}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    .line 9249
    invoke-virtual {p2, p0}, Lo/SessionProtobufHelper;->extraCallback(Lo/encodeZigZag64;)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/WireFormat$FieldType$2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1305
    invoke-interface {p1}, Lo/WireFormat$FieldType$2;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    .line 1306
    invoke-interface {p1, p0}, Lo/WireFormat$FieldType$2;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

.method public final onNavigationEvent(B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1318
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onPostMessage:[B

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    aput-byte p1, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1320
    new-instance v0, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    .line 1321
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onNavigationEvent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final onNavigationEvent(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3174
    invoke-static {p1, v0}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    .line 1186
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    return-void
.end method

.method public final onNavigationEvent(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 6174
    invoke-static {p1, v0}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    .line 1204
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/CodedOutputStream;->onPostMessage(J)V

    return-void
.end method

.method public final onNavigationEvent(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 8174
    invoke-static {p1, v0}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    .line 1216
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->onPostMessage(Ljava/lang/String;)V

    return-void
.end method

.method public final onNavigationEvent(ILo/SessionProtobufHelper;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 15174
    invoke-static {v1, v0}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 16174
    invoke-static {v2, v3}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    .line 15186
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    .line 1299
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(ILo/SessionProtobufHelper;)V

    const/4 p1, 0x4

    .line 17174
    invoke-static {v1, p1}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    return-void
.end method

.method public final onNavigationEvent(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 7174
    invoke-static {p1, v0}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    int-to-byte p1, p2

    .line 1210
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->onNavigationEvent(B)V

    return-void
.end method

.method public final onNavigationEvent([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1456
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady([BII)V

    return-void
.end method

.method public final onPostMessage(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 1328
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    .line 1331
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(J)V

    return-void
.end method

.method public final onPostMessage(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2174
    invoke-static {p1, v0}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    if-ltz p2, :cond_0

    .line 2328
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    return-void

    :cond_0
    int-to-long p1, p2

    .line 2331
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(J)V

    return-void
.end method

.method public final onPostMessage(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1429
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onPostMessage:[B

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    long-to-int v3, p1

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1430
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onPostMessage:[B

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    const/16 v3, 0x8

    shr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v2

    .line 1431
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onPostMessage:[B

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    const/16 v3, 0x10

    shr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v1

    .line 1432
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onPostMessage:[B

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    const/16 v3, 0x18

    shr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v2

    .line 1433
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onPostMessage:[B

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    const/16 v3, 0x20

    shr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v1

    .line 1434
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onPostMessage:[B

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    const/16 v3, 0x28

    shr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v2

    .line 1435
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onPostMessage:[B

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    const/16 v3, 0x30

    shr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v1

    .line 1436
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onPostMessage:[B

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    const/16 v1, 0x38

    shr-long/2addr p1, v1

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1438
    new-instance p2, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    .line 1439
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onNavigationEvent:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final onPostMessage(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1478
    iget v0, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    .line 1482
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    .line 1483
    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->warmup(I)I

    move-result v1

    .line 1484
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->warmup(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    add-int v1, v0, v2

    .line 1486
    iput v1, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    .line 1487
    iget-object v3, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onPostMessage:[B

    .line 19517
    iget v4, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onNavigationEvent:I

    sub-int/2addr v4, v1

    .line 1487
    invoke-static {p1, v3, v1, v4}, Lo/CompositeCreateReportSpiCall$1;->onNavigationEvent(Ljava/lang/CharSequence;[BII)I

    move-result v1

    .line 1490
    iput v0, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    sub-int v3, v1, v0

    sub-int/2addr v3, v2

    .line 1492
    invoke-virtual {p0, v3}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    .line 1493
    iput v1, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    return-void

    .line 1495
    :cond_0
    invoke-static {p1}, Lo/CompositeCreateReportSpiCall$1;->onPostMessage(Ljava/lang/CharSequence;)I

    move-result v1

    .line 1496
    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    .line 1497
    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onPostMessage:[B

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    .line 20517
    iget v3, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onNavigationEvent:I

    iget v4, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    sub-int/2addr v3, v4

    .line 1497
    invoke-static {p1, v1, v2, v3}, Lo/CompositeCreateReportSpiCall$1;->onNavigationEvent(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v1, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I
    :try_end_0
    .catch Lo/CompositeCreateReportSpiCall$1$extraCallback; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1506
    new-instance v0, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v0, p1}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v1

    .line 1501
    iput v0, p0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady:I

    .line 1504
    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;Lo/CompositeCreateReportSpiCall$1$extraCallback;)V

    return-void
.end method

.method public final onPostMessage([BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1255
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    const/4 v0, 0x0

    .line 1256
    invoke-direct {p0, p1, v0, p2}, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;->onMessageChannelReady([BII)V

    return-void
.end method
