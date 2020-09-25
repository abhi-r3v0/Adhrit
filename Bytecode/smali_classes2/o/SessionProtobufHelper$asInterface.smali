.class Lo/SessionProtobufHelper$asInterface;
.super Lo/SessionProtobufHelper$onRelationshipValidationResult;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/SessionProtobufHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "asInterface"
.end annotation


# instance fields
.field protected final ICustomTabsCallback:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    .line 1313
    invoke-direct {p0}, Lo/SessionProtobufHelper$onRelationshipValidationResult;-><init>()V

    if-eqz p1, :cond_0

    .line 1317
    iput-object p1, p0, Lo/SessionProtobufHelper$asInterface;->ICustomTabsCallback:[B

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1315
    throw p1
.end method


# virtual methods
.method protected ICustomTabsCallback([BIII)V
    .locals 1

    .line 1361
    iget-object v0, p0, Lo/SessionProtobufHelper$asInterface;->ICustomTabsCallback:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final ICustomTabsCallback()Z
    .locals 3

    .line 1405
    invoke-virtual {p0}, Lo/SessionProtobufHelper$asInterface;->asInterface()I

    move-result v0

    .line 1406
    iget-object v1, p0, Lo/SessionProtobufHelper$asInterface;->ICustomTabsCallback:[B

    invoke-virtual {p0}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v0, v2}, Lo/CompositeCreateReportSpiCall$1;->onPostMessage([BII)Z

    move-result v0

    return v0
.end method

.method protected asInterface()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1423
    :cond_0
    instance-of v1, p1, Lo/SessionProtobufHelper;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1427
    :cond_1
    invoke-virtual {p0}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v1

    move-object v3, p1

    check-cast v3, Lo/SessionProtobufHelper;

    invoke-virtual {v3}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 1430
    :cond_2
    invoke-virtual {p0}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 1434
    :cond_3
    instance-of v0, p1, Lo/SessionProtobufHelper$asInterface;

    if-eqz v0, :cond_5

    .line 1435
    check-cast p1, Lo/SessionProtobufHelper$asInterface;

    .line 1438
    invoke-virtual {p0}, Lo/SessionProtobufHelper$asInterface;->asBinder()I

    move-result v0

    .line 1439
    invoke-virtual {p1}, Lo/SessionProtobufHelper$asInterface;->asBinder()I

    move-result v1

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-eq v0, v1, :cond_4

    return v2

    .line 1444
    :cond_4
    invoke-virtual {p0}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v0

    invoke-virtual {p0, p1, v2, v0}, Lo/SessionProtobufHelper$asInterface;->onMessageChannelReady(Lo/SessionProtobufHelper;II)Z

    move-result p1

    return p1

    .line 1447
    :cond_5
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected final extraCallback(III)I
    .locals 1

    .line 1411
    invoke-virtual {p0}, Lo/SessionProtobufHelper$asInterface;->asInterface()I

    move-result v0

    add-int/2addr v0, p2

    .line 1412
    iget-object p2, p0, Lo/SessionProtobufHelper$asInterface;->ICustomTabsCallback:[B

    add-int/2addr p3, v0

    invoke-static {p1, p2, v0, p3}, Lo/CompositeCreateReportSpiCall$1;->extraCallback(I[BII)I

    move-result p1

    return p1
.end method

.method final extraCallback(Lo/encodeZigZag64;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1392
    iget-object v0, p0, Lo/SessionProtobufHelper$asInterface;->ICustomTabsCallback:[B

    invoke-virtual {p0}, Lo/SessionProtobufHelper$asInterface;->asInterface()I

    move-result v1

    invoke-virtual {p0}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lo/encodeZigZag64;->onNavigationEvent([BII)V

    return-void
.end method

.method onMessageChannelReady(I)B
    .locals 1

    .line 1330
    iget-object v0, p0, Lo/SessionProtobufHelper$asInterface;->ICustomTabsCallback:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public onMessageChannelReady()I
    .locals 1

    .line 1335
    iget-object v0, p0, Lo/SessionProtobufHelper$asInterface;->ICustomTabsCallback:[B

    array-length v0, v0

    return v0
.end method

.method final onMessageChannelReady(Lo/SessionProtobufHelper;II)Z
    .locals 5

    .line 1462
    invoke-virtual {p1}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v0

    if-gt p3, v0, :cond_4

    add-int v0, p2, p3

    .line 1465
    invoke-virtual {p1}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v1

    if-gt v0, v1, :cond_3

    .line 1470
    instance-of v1, p1, Lo/SessionProtobufHelper$asInterface;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1471
    check-cast p1, Lo/SessionProtobufHelper$asInterface;

    .line 1472
    iget-object v0, p0, Lo/SessionProtobufHelper$asInterface;->ICustomTabsCallback:[B

    .line 1473
    iget-object v1, p1, Lo/SessionProtobufHelper$asInterface;->ICustomTabsCallback:[B

    .line 1474
    invoke-virtual {p0}, Lo/SessionProtobufHelper$asInterface;->asInterface()I

    move-result v3

    add-int/2addr v3, p3

    .line 1475
    invoke-virtual {p0}, Lo/SessionProtobufHelper$asInterface;->asInterface()I

    move-result p3

    .line 1476
    invoke-virtual {p1}, Lo/SessionProtobufHelper$asInterface;->asInterface()I

    move-result p1

    add-int/2addr p1, p2

    :goto_0
    if-ge p3, v3, :cond_1

    .line 1479
    aget-byte p2, v0, p3

    aget-byte v4, v1, p1

    if-eq p2, v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 1486
    :cond_2
    invoke-virtual {p1, p2, v0}, Lo/SessionProtobufHelper;->onNavigationEvent(II)Lo/SessionProtobufHelper;

    move-result-object p1

    invoke-virtual {p0, v2, p3}, Lo/SessionProtobufHelper;->onNavigationEvent(II)Lo/SessionProtobufHelper;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1466
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ran off end of other: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1467
    invoke-virtual {p1}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1463
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Length too large: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onNavigationEvent(I)B
    .locals 1

    .line 1325
    iget-object v0, p0, Lo/SessionProtobufHelper$asInterface;->ICustomTabsCallback:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method protected final onNavigationEvent(III)I
    .locals 2

    .line 1491
    iget-object v0, p0, Lo/SessionProtobufHelper$asInterface;->ICustomTabsCallback:[B

    invoke-virtual {p0}, Lo/SessionProtobufHelper$asInterface;->asInterface()I

    move-result v1

    add-int/2addr v1, p2

    invoke-static {p1, v0, v1, p3}, Lo/getEventLogSize;->onPostMessage(I[BII)I

    move-result p1

    return p1
.end method

.method public final onNavigationEvent(II)Lo/SessionProtobufHelper;
    .locals 3

    .line 1343
    invoke-virtual {p0}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v0

    invoke-static {p1, p2, v0}, Lo/SessionProtobufHelper$asInterface;->onMessageChannelReady(III)I

    move-result p2

    if-nez p2, :cond_0

    .line 1346
    sget-object p1, Lo/SessionProtobufHelper;->onNavigationEvent:Lo/SessionProtobufHelper;

    return-object p1

    .line 1349
    :cond_0
    new-instance v0, Lo/SessionProtobufHelper$onMessageChannelReady;

    iget-object v1, p0, Lo/SessionProtobufHelper$asInterface;->ICustomTabsCallback:[B

    invoke-virtual {p0}, Lo/SessionProtobufHelper$asInterface;->asInterface()I

    move-result v2

    add-int/2addr v2, p1

    invoke-direct {v0, v1, v2, p2}, Lo/SessionProtobufHelper$onMessageChannelReady;-><init>([BII)V

    return-object v0
.end method

.method protected final onPostMessage(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4

    .line 1397
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lo/SessionProtobufHelper$asInterface;->ICustomTabsCallback:[B

    invoke-virtual {p0}, Lo/SessionProtobufHelper$asInterface;->asInterface()I

    move-result v2

    invoke-virtual {p0}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public final onTransact()Lo/writeSessionAppClsId;
    .locals 4

    .line 1506
    iget-object v0, p0, Lo/SessionProtobufHelper$asInterface;->ICustomTabsCallback:[B

    .line 1507
    invoke-virtual {p0}, Lo/SessionProtobufHelper$asInterface;->asInterface()I

    move-result v1

    invoke-virtual {p0}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v2

    const/4 v3, 0x1

    .line 1506
    invoke-static {v0, v1, v2, v3}, Lo/writeSessionAppClsId;->ICustomTabsCallback([BIIZ)Lo/writeSessionAppClsId;

    move-result-object v0

    return-object v0
.end method
