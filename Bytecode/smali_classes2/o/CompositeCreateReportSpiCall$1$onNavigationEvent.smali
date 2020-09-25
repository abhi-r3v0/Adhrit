.class final Lo/CompositeCreateReportSpiCall$1$onNavigationEvent;
.super Lo/CompositeCreateReportSpiCall$1$ICustomTabsCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CompositeCreateReportSpiCall$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onNavigationEvent"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1169
    invoke-direct {p0}, Lo/CompositeCreateReportSpiCall$1$ICustomTabsCallback;-><init>()V

    return-void
.end method

.method private static ICustomTabsCallback([BIJI)I
    .locals 2

    if-eqz p4, :cond_2

    const/4 v0, 0x1

    if-eq p4, v0, :cond_1

    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    .line 1857
    invoke-static {p0, p2, p3}, Lo/CreateReportSpiCall;->onPostMessage([BJ)B

    move-result p4

    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    invoke-static {p0, p2, p3}, Lo/CreateReportSpiCall;->onPostMessage([BJ)B

    move-result p0

    .line 1856
    invoke-static {p1, p4, p0}, Lo/CompositeCreateReportSpiCall$1;->onNavigationEvent(III)I

    move-result p0

    return p0

    .line 1859
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1854
    :cond_1
    invoke-static {p0, p2, p3}, Lo/CreateReportSpiCall;->onPostMessage([BJ)B

    move-result p0

    invoke-static {p1, p0}, Lo/CompositeCreateReportSpiCall$1;->onNavigationEvent(II)I

    move-result p0

    return p0

    .line 1852
    :cond_2
    invoke-static {p1}, Lo/CompositeCreateReportSpiCall$1;->onNavigationEvent(I)I

    move-result p0

    return p0
.end method

.method private static extraCallback([BJI)I
    .locals 11

    const/4 v0, 0x0

    const-wide/16 v1, 0x1

    const/16 v3, 0x10

    if-ge p3, v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    move-wide v4, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p3, :cond_2

    add-long v6, v4, v1

    .line 18660
    invoke-static {p0, v4, v5}, Lo/CreateReportSpiCall;->onPostMessage([BJ)B

    move-result v4

    if-gez v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    move-wide v4, v6

    goto :goto_0

    :cond_2
    move v3, p3

    :goto_1
    sub-int/2addr p3, v3

    int-to-long v3, v3

    add-long/2addr p1, v3

    :cond_3
    :goto_2
    const/4 v3, 0x0

    :goto_3
    if-lez p3, :cond_5

    add-long v3, p1, v1

    .line 1709
    invoke-static {p0, p1, p2}, Lo/CreateReportSpiCall;->onPostMessage([BJ)B

    move-result p1

    if-ltz p1, :cond_4

    add-int/lit8 p3, p3, -0x1

    move-wide v9, v3

    move v3, p1

    move-wide p1, v9

    goto :goto_3

    :cond_4
    move-wide v9, v3

    move v3, p1

    move-wide p1, v9

    :cond_5
    if-nez p3, :cond_6

    return v0

    :cond_6
    add-int/lit8 p3, p3, -0x1

    const/16 v4, -0x20

    const/16 v5, -0x41

    const/4 v6, -0x1

    if-ge v3, v4, :cond_a

    if-nez p3, :cond_7

    return v3

    :cond_7
    add-int/lit8 p3, p3, -0x1

    const/16 v4, -0x3e

    if-lt v3, v4, :cond_9

    add-long v3, p1, v1

    .line 1726
    invoke-static {p0, p1, p2}, Lo/CreateReportSpiCall;->onPostMessage([BJ)B

    move-result p1

    if-le p1, v5, :cond_8

    goto :goto_4

    :cond_8
    move-wide p1, v3

    goto :goto_2

    :cond_9
    :goto_4
    return v6

    :cond_a
    const/16 v7, -0x10

    if-ge v3, v7, :cond_f

    const/4 v7, 0x2

    if-ge p3, v7, :cond_b

    .line 1733
    invoke-static {p0, v3, p1, p2, p3}, Lo/CompositeCreateReportSpiCall$1$onNavigationEvent;->ICustomTabsCallback([BIJI)I

    move-result p0

    return p0

    :cond_b
    add-int/lit8 p3, p3, -0x2

    add-long v7, p1, v1

    .line 1738
    invoke-static {p0, p1, p2}, Lo/CreateReportSpiCall;->onPostMessage([BJ)B

    move-result p1

    if-gt p1, v5, :cond_e

    const/16 p2, -0x60

    if-ne v3, v4, :cond_c

    if-lt p1, p2, :cond_e

    :cond_c
    const/16 v4, -0x13

    if-ne v3, v4, :cond_d

    if-ge p1, p2, :cond_e

    :cond_d
    add-long p1, v7, v1

    .line 1744
    invoke-static {p0, v7, v8}, Lo/CreateReportSpiCall;->onPostMessage([BJ)B

    move-result v3

    if-le v3, v5, :cond_3

    :cond_e
    return v6

    :cond_f
    const/4 v4, 0x3

    if-ge p3, v4, :cond_10

    .line 1751
    invoke-static {p0, v3, p1, p2, p3}, Lo/CompositeCreateReportSpiCall$1$onNavigationEvent;->ICustomTabsCallback([BIJI)I

    move-result p0

    return p0

    :cond_10
    add-int/lit8 p3, p3, -0x3

    add-long v7, p1, v1

    .line 1756
    invoke-static {p0, p1, p2}, Lo/CreateReportSpiCall;->onPostMessage([BJ)B

    move-result p1

    if-gt p1, v5, :cond_11

    shl-int/lit8 p2, v3, 0x1c

    add-int/lit8 p1, p1, 0x70

    add-int/2addr p2, p1

    shr-int/lit8 p1, p2, 0x1e

    if-nez p1, :cond_11

    add-long p1, v7, v1

    .line 1763
    invoke-static {p0, v7, v8}, Lo/CreateReportSpiCall;->onPostMessage([BJ)B

    move-result v3

    if-gt v3, v5, :cond_11

    add-long v3, p1, v1

    .line 1765
    invoke-static {p0, p1, p2}, Lo/CreateReportSpiCall;->onPostMessage([BJ)B

    move-result p1

    if-le p1, v5, :cond_8

    :cond_11
    return v6
.end method


# virtual methods
.method final ICustomTabsCallback(Ljava/lang/CharSequence;[BII)I
    .locals 22

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    int-to-long v4, v2

    int-to-long v6, v3

    add-long/2addr v6, v4

    .line 1522
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const-string v9, " at index "

    const-string v10, "Failed writing "

    if-gt v8, v3, :cond_c

    .line 1523
    array-length v11, v1

    sub-int/2addr v11, v3

    if-lt v11, v2, :cond_c

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x80

    const-wide/16 v11, 0x1

    if-ge v2, v8, :cond_0

    .line 1532
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_0

    add-long/2addr v11, v4

    int-to-byte v3, v13

    .line 1533
    invoke-static {v1, v4, v5, v3}, Lo/CreateReportSpiCall;->onPostMessage([BJB)V

    add-int/lit8 v2, v2, 0x1

    move-wide v4, v11

    goto :goto_0

    :cond_0
    if-ne v2, v8, :cond_1

    long-to-int v0, v4

    return v0

    :cond_1
    :goto_1
    if-ge v2, v8, :cond_b

    .line 1541
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_2

    cmp-long v14, v4, v6

    if-gez v14, :cond_2

    add-long v14, v4, v11

    int-to-byte v13, v13

    .line 1543
    invoke-static {v1, v4, v5, v13}, Lo/CreateReportSpiCall;->onPostMessage([BJB)V

    move-wide v4, v11

    move-wide v12, v14

    :goto_2
    const/16 v11, 0x80

    goto/16 :goto_3

    :cond_2
    const/16 v14, 0x800

    if-ge v13, v14, :cond_3

    const-wide/16 v14, 0x2

    sub-long v14, v6, v14

    cmp-long v16, v4, v14

    if-gtz v16, :cond_3

    add-long v14, v4, v11

    ushr-int/lit8 v3, v13, 0x6

    or-int/lit16 v3, v3, 0x3c0

    int-to-byte v3, v3

    .line 1545
    invoke-static {v1, v4, v5, v3}, Lo/CreateReportSpiCall;->onPostMessage([BJB)V

    add-long v3, v14, v11

    and-int/lit8 v5, v13, 0x3f

    const/16 v13, 0x80

    or-int/2addr v5, v13

    int-to-byte v5, v5

    .line 1546
    invoke-static {v1, v14, v15, v5}, Lo/CreateReportSpiCall;->onPostMessage([BJB)V

    move-wide/from16 v20, v11

    const/16 v11, 0x80

    move-wide v12, v3

    move-wide/from16 v4, v20

    goto/16 :goto_3

    :cond_3
    const v3, 0xdfff

    const v14, 0xd800

    if-lt v13, v14, :cond_4

    if-ge v3, v13, :cond_5

    :cond_4
    const-wide/16 v15, 0x3

    sub-long v15, v6, v15

    cmp-long v17, v4, v15

    if-gtz v17, :cond_5

    add-long v14, v4, v11

    ushr-int/lit8 v3, v13, 0xc

    or-int/lit16 v3, v3, 0x1e0

    int-to-byte v3, v3

    .line 1549
    invoke-static {v1, v4, v5, v3}, Lo/CreateReportSpiCall;->onPostMessage([BJB)V

    add-long v3, v14, v11

    ushr-int/lit8 v5, v13, 0x6

    and-int/lit8 v5, v5, 0x3f

    const/16 v11, 0x80

    or-int/2addr v5, v11

    int-to-byte v5, v5

    .line 1550
    invoke-static {v1, v14, v15, v5}, Lo/CreateReportSpiCall;->onPostMessage([BJB)V

    const-wide/16 v14, 0x1

    add-long v18, v3, v14

    and-int/lit8 v5, v13, 0x3f

    or-int/2addr v5, v11

    int-to-byte v5, v5

    .line 1551
    invoke-static {v1, v3, v4, v5}, Lo/CreateReportSpiCall;->onPostMessage([BJB)V

    move-wide/from16 v12, v18

    const-wide/16 v4, 0x1

    goto :goto_2

    :cond_5
    const-wide/16 v11, 0x4

    sub-long v11, v6, v11

    cmp-long v15, v4, v11

    if-gtz v15, :cond_8

    add-int/lit8 v3, v2, 0x1

    if-eq v3, v8, :cond_7

    .line 1556
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v13, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1559
    invoke-static {v13, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    const-wide/16 v11, 0x1

    add-long v13, v4, v11

    ushr-int/lit8 v15, v2, 0x12

    or-int/lit16 v15, v15, 0xf0

    int-to-byte v15, v15

    .line 1560
    invoke-static {v1, v4, v5, v15}, Lo/CreateReportSpiCall;->onPostMessage([BJB)V

    add-long v4, v13, v11

    ushr-int/lit8 v15, v2, 0xc

    and-int/lit8 v15, v15, 0x3f

    const/16 v11, 0x80

    or-int/lit16 v12, v15, 0x80

    int-to-byte v12, v12

    .line 1561
    invoke-static {v1, v13, v14, v12}, Lo/CreateReportSpiCall;->onPostMessage([BJB)V

    const-wide/16 v12, 0x1

    add-long v14, v4, v12

    ushr-int/lit8 v16, v2, 0x6

    and-int/lit8 v12, v16, 0x3f

    or-int/2addr v12, v11

    int-to-byte v12, v12

    .line 1562
    invoke-static {v1, v4, v5, v12}, Lo/CreateReportSpiCall;->onPostMessage([BJB)V

    const-wide/16 v4, 0x1

    add-long v12, v14, v4

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v11

    int-to-byte v2, v2

    .line 1563
    invoke-static {v1, v14, v15, v2}, Lo/CreateReportSpiCall;->onPostMessage([BJB)V

    move v2, v3

    :goto_3
    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x80

    move-wide/from16 v20, v4

    move-wide v4, v12

    move-wide/from16 v11, v20

    goto/16 :goto_1

    :cond_6
    move v2, v3

    .line 1557
    :cond_7
    new-instance v0, Lo/CompositeCreateReportSpiCall$1$extraCallback;

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v2, v8}, Lo/CompositeCreateReportSpiCall$1$extraCallback;-><init>(II)V

    throw v0

    :cond_8
    if-gt v14, v13, :cond_a

    if-gt v13, v3, :cond_a

    add-int/lit8 v1, v2, 0x1

    if-eq v1, v8, :cond_9

    .line 1566
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1568
    :cond_9
    new-instance v0, Lo/CompositeCreateReportSpiCall$1$extraCallback;

    invoke-direct {v0, v2, v8}, Lo/CompositeCreateReportSpiCall$1$extraCallback;-><init>(II)V

    throw v0

    .line 1571
    :cond_a
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    long-to-int v0, v4

    return v0

    .line 1525
    :cond_c
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v8, v8, -0x1

    .line 1526
    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v0, v2, v3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method final ICustomTabsCallback([BII)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    or-int v0, p2, p3

    .line 1369
    array-length v1, p1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_e

    add-int v0, p2, p3

    .line 1379
    new-array p3, p3, [C

    const/4 v3, 0x0

    :goto_0
    if-ge p2, v0, :cond_1

    int-to-long v4, p2

    .line 1385
    invoke-static {p1, v4, v5}, Lo/CreateReportSpiCall;->onPostMessage([BJ)B

    move-result v4

    if-ltz v4, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_1

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v5, v3, 0x1

    int-to-char v4, v4

    .line 3901
    aput-char v4, p3, v3

    move v3, v5

    goto :goto_0

    :cond_1
    move v8, v3

    :goto_2
    if-ge p2, v0, :cond_d

    add-int/lit8 v3, p2, 0x1

    int-to-long v4, p2

    .line 1394
    invoke-static {p1, v4, v5}, Lo/CreateReportSpiCall;->onPostMessage([BJ)B

    move-result p2

    if-ltz p2, :cond_2

    const/4 v4, 0x1

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_5

    add-int/lit8 v4, v8, 0x1

    int-to-char p2, p2

    .line 5901
    aput-char p2, p3, v8

    :goto_4
    if-ge v3, v0, :cond_4

    int-to-long v5, v3

    .line 1400
    invoke-static {p1, v5, v6}, Lo/CreateReportSpiCall;->onPostMessage([BJ)B

    move-result p2

    if-ltz p2, :cond_3

    const/4 v5, 0x1

    goto :goto_5

    :cond_3
    const/4 v5, 0x0

    :goto_5
    if-eqz v5, :cond_4

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v4, 0x1

    int-to-char p2, p2

    .line 7901
    aput-char p2, p3, v4

    move v4, v5

    goto :goto_4

    :cond_4
    move p2, v3

    move v8, v4

    goto :goto_2

    :cond_5
    const/16 v4, -0x20

    if-ge p2, v4, :cond_6

    const/4 v4, 0x1

    goto :goto_6

    :cond_6
    const/4 v4, 0x0

    :goto_6
    if-eqz v4, :cond_8

    if-ge v3, v0, :cond_7

    add-int/lit8 v4, v3, 0x1

    int-to-long v5, v3

    .line 1412
    invoke-static {p1, v5, v6}, Lo/CreateReportSpiCall;->onPostMessage([BJ)B

    move-result v3

    add-int/lit8 v5, v8, 0x1

    .line 1411
    invoke-static {p2, v3, p3, v8}, Lo/CompositeCreateReportSpiCall$1$onPostMessage;->onNavigationEvent(BB[CI)V

    move p2, v4

    move v8, v5

    goto :goto_2

    .line 1409
    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->asBinder()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_8
    const/16 v4, -0x10

    if-ge p2, v4, :cond_9

    const/4 v4, 0x1

    goto :goto_7

    :cond_9
    const/4 v4, 0x0

    :goto_7
    if-eqz v4, :cond_b

    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_a

    add-int/lit8 v4, v3, 0x1

    int-to-long v5, v3

    .line 1419
    invoke-static {p1, v5, v6}, Lo/CreateReportSpiCall;->onPostMessage([BJ)B

    move-result v3

    add-int/lit8 v5, v4, 0x1

    int-to-long v6, v4

    .line 1420
    invoke-static {p1, v6, v7}, Lo/CreateReportSpiCall;->onPostMessage([BJ)B

    move-result v4

    add-int/lit8 v6, v8, 0x1

    .line 1417
    invoke-static {p2, v3, v4, p3, v8}, Lo/CompositeCreateReportSpiCall$1$onPostMessage;->ICustomTabsCallback(BBB[CI)V

    move p2, v5

    move v8, v6

    goto :goto_2

    .line 1415
    :cond_a
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->asBinder()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_b
    add-int/lit8 v4, v0, -0x2

    if-ge v3, v4, :cond_c

    add-int/lit8 v4, v3, 0x1

    int-to-long v5, v3

    .line 1429
    invoke-static {p1, v5, v6}, Lo/CreateReportSpiCall;->onPostMessage([BJ)B

    move-result v5

    add-int/lit8 v3, v4, 0x1

    int-to-long v6, v4

    .line 1430
    invoke-static {p1, v6, v7}, Lo/CreateReportSpiCall;->onPostMessage([BJ)B

    move-result v6

    add-int/lit8 v9, v3, 0x1

    int-to-long v3, v3

    .line 1431
    invoke-static {p1, v3, v4}, Lo/CreateReportSpiCall;->onPostMessage([BJ)B

    move-result v7

    add-int/lit8 v10, v8, 0x1

    move v3, p2

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, p3

    .line 1427
    invoke-static/range {v3 .. v8}, Lo/CompositeCreateReportSpiCall$1$onPostMessage;->onPostMessage(BBBB[CI)V

    add-int/2addr v10, v2

    move p2, v9

    move v8, v10

    goto/16 :goto_2

    .line 1425
    :cond_c
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->asBinder()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1439
    :cond_d
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3, v1, v8}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 1370
    :cond_e
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    array-length p1, p1

    .line 1371
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v3, p2

    const-string p1, "buffer length=%d, index=%d, size=%d"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final onMessageChannelReady(I[BII)I
    .locals 11

    or-int v0, p3, p4

    .line 1178
    array-length v1, p2

    sub-int/2addr v1, p4

    or-int/2addr v0, v1

    const/4 v1, 0x0

    if-ltz v0, :cond_11

    int-to-long v2, p3

    int-to-long p3, p4

    if-eqz p1, :cond_10

    cmp-long v0, v2, p3

    if-ltz v0, :cond_0

    return p1

    :cond_0
    int-to-byte v0, p1

    const/16 v4, -0x20

    const/4 v5, -0x1

    const/16 v6, -0x41

    const-wide/16 v7, 0x1

    if-ge v0, v4, :cond_3

    const/16 p1, -0x3e

    if-lt v0, p1, :cond_2

    add-long/2addr v7, v2

    .line 1204
    invoke-static {p2, v2, v3}, Lo/CreateReportSpiCall;->onPostMessage([BJ)B

    move-result p1

    if-le p1, v6, :cond_1

    goto :goto_0

    :cond_1
    move-wide v2, v7

    goto/16 :goto_3

    :cond_2
    :goto_0
    return v5

    :cond_3
    const/16 v9, -0x10

    if-ge v0, v9, :cond_a

    shr-int/lit8 p1, p1, 0x8

    not-int p1, p1

    int-to-byte p1, p1

    if-nez p1, :cond_5

    add-long v9, v2, v7

    .line 1213
    invoke-static {p2, v2, v3}, Lo/CreateReportSpiCall;->onPostMessage([BJ)B

    move-result p1

    cmp-long v1, v9, p3

    if-ltz v1, :cond_4

    .line 1215
    invoke-static {v0, p1}, Lo/CompositeCreateReportSpiCall$1;->onNavigationEvent(II)I

    move-result p1

    return p1

    :cond_4
    move-wide v2, v9

    :cond_5
    if-gt p1, v6, :cond_9

    const/16 v1, -0x60

    if-ne v0, v4, :cond_6

    if-lt p1, v1, :cond_9

    :cond_6
    const/16 v4, -0x13

    if-ne v0, v4, :cond_7

    if-ge p1, v1, :cond_9

    :cond_7
    add-long v0, v2, v7

    .line 1224
    invoke-static {p2, v2, v3}, Lo/CreateReportSpiCall;->onPostMessage([BJ)B

    move-result p1

    if-le p1, v6, :cond_8

    goto :goto_1

    :cond_8
    move-wide v2, v0

    goto :goto_3

    :cond_9
    :goto_1
    return v5

    :cond_a
    shr-int/lit8 v4, p1, 0x8

    not-int v4, v4

    int-to-byte v4, v4

    if-nez v4, :cond_c

    add-long v9, v2, v7

    .line 1234
    invoke-static {p2, v2, v3}, Lo/CreateReportSpiCall;->onPostMessage([BJ)B

    move-result v4

    cmp-long p1, v9, p3

    if-ltz p1, :cond_b

    .line 1236
    invoke-static {v0, v4}, Lo/CompositeCreateReportSpiCall$1;->onNavigationEvent(II)I

    move-result p1

    return p1

    :cond_b
    move-wide v2, v9

    goto :goto_2

    :cond_c
    shr-int/lit8 p1, p1, 0x10

    int-to-byte v1, p1

    :goto_2
    if-nez v1, :cond_e

    add-long v9, v2, v7

    .line 1242
    invoke-static {p2, v2, v3}, Lo/CreateReportSpiCall;->onPostMessage([BJ)B

    move-result v1

    cmp-long p1, v9, p3

    if-ltz p1, :cond_d

    .line 1244
    invoke-static {v0, v4, v1}, Lo/CompositeCreateReportSpiCall$1;->onNavigationEvent(III)I

    move-result p1

    return p1

    :cond_d
    move-wide v2, v9

    :cond_e
    if-gt v4, v6, :cond_f

    shl-int/lit8 p1, v0, 0x1c

    add-int/lit8 v4, v4, 0x70

    add-int/2addr p1, v4

    shr-int/lit8 p1, p1, 0x1e

    if-nez p1, :cond_f

    if-gt v1, v6, :cond_f

    add-long v0, v2, v7

    .line 1261
    invoke-static {p2, v2, v3}, Lo/CreateReportSpiCall;->onPostMessage([BJ)B

    move-result p1

    if-le p1, v6, :cond_8

    :cond_f
    return v5

    :cond_10
    :goto_3
    sub-long/2addr p3, v2

    long-to-int p1, p3

    .line 1267
    invoke-static {p2, v2, v3, p1}, Lo/CompositeCreateReportSpiCall$1$onNavigationEvent;->extraCallback([BJI)I

    move-result p1

    return p1

    .line 1179
    :cond_11
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    array-length p2, p2

    .line 1180
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, p2

    const/4 p2, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, p2

    const-string p2, "Array length=%d, index=%d, limit=%d"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final onNavigationEvent(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    move/from16 v0, p2

    move/from16 v1, p3

    or-int v2, v0, v1

    .line 1446
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->limit()I

    move-result v3

    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    or-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v2, :cond_e

    .line 1450
    invoke-static/range {p1 .. p1}, Lo/CreateReportSpiCall;->extraCallback(Ljava/nio/ByteBuffer;)J

    move-result-wide v5

    int-to-long v7, v0

    add-long/2addr v5, v7

    int-to-long v7, v1

    add-long/2addr v7, v5

    .line 1455
    new-array v0, v1, [C

    const/4 v1, 0x0

    :goto_0
    const-wide/16 v15, 0x1

    cmp-long v2, v5, v7

    if-gez v2, :cond_1

    .line 1461
    invoke-static {v5, v6}, Lo/CreateReportSpiCall;->extraCallback(J)B

    move-result v2

    if-ltz v2, :cond_0

    const/4 v9, 0x1

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_1

    add-long/2addr v5, v15

    add-int/lit8 v9, v1, 0x1

    int-to-char v2, v2

    .line 11901
    aput-char v2, v0, v1

    move v1, v9

    goto :goto_0

    :cond_1
    :goto_2
    move v14, v1

    :goto_3
    cmp-long v1, v5, v7

    if-gez v1, :cond_d

    add-long v1, v5, v15

    .line 1470
    invoke-static {v5, v6}, Lo/CreateReportSpiCall;->extraCallback(J)B

    move-result v9

    if-ltz v9, :cond_2

    const/4 v5, 0x1

    goto :goto_4

    :cond_2
    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_5

    add-int/lit8 v5, v14, 0x1

    int-to-char v6, v9

    .line 13901
    aput-char v6, v0, v14

    :goto_5
    cmp-long v6, v1, v7

    if-gez v6, :cond_4

    .line 1476
    invoke-static {v1, v2}, Lo/CreateReportSpiCall;->extraCallback(J)B

    move-result v6

    if-ltz v6, :cond_3

    const/4 v9, 0x1

    goto :goto_6

    :cond_3
    const/4 v9, 0x0

    :goto_6
    if-eqz v9, :cond_4

    add-long/2addr v1, v15

    add-int/lit8 v9, v5, 0x1

    int-to-char v6, v6

    .line 15901
    aput-char v6, v0, v5

    move v5, v9

    goto :goto_5

    :cond_4
    move v14, v5

    move-wide v5, v1

    goto :goto_3

    :cond_5
    const/16 v5, -0x20

    if-ge v9, v5, :cond_6

    const/4 v5, 0x1

    goto :goto_7

    :cond_6
    const/4 v5, 0x0

    :goto_7
    if-eqz v5, :cond_8

    cmp-long v5, v1, v7

    if-gez v5, :cond_7

    add-long v5, v1, v15

    .line 1488
    invoke-static {v1, v2}, Lo/CreateReportSpiCall;->extraCallback(J)B

    move-result v1

    add-int/lit8 v2, v14, 0x1

    .line 1487
    invoke-static {v9, v1, v0, v14}, Lo/CompositeCreateReportSpiCall$1$onPostMessage;->onNavigationEvent(BB[CI)V

    move v14, v2

    goto :goto_3

    .line 1485
    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->asBinder()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_8
    const/16 v5, -0x10

    if-ge v9, v5, :cond_9

    const/4 v5, 0x1

    goto :goto_8

    :cond_9
    const/4 v5, 0x0

    :goto_8
    if-eqz v5, :cond_b

    sub-long v5, v7, v15

    cmp-long v10, v1, v5

    if-gez v10, :cond_a

    add-long v5, v1, v15

    .line 1495
    invoke-static {v1, v2}, Lo/CreateReportSpiCall;->extraCallback(J)B

    move-result v1

    add-long v10, v5, v15

    .line 1496
    invoke-static {v5, v6}, Lo/CreateReportSpiCall;->extraCallback(J)B

    move-result v2

    add-int/lit8 v5, v14, 0x1

    .line 1493
    invoke-static {v9, v1, v2, v0, v14}, Lo/CompositeCreateReportSpiCall$1$onPostMessage;->ICustomTabsCallback(BBB[CI)V

    move v14, v5

    move-wide v5, v10

    goto :goto_3

    .line 1491
    :cond_a
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->asBinder()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_b
    const-wide/16 v5, 0x2

    sub-long v5, v7, v5

    cmp-long v10, v1, v5

    if-gez v10, :cond_c

    add-long v5, v1, v15

    .line 1505
    invoke-static {v1, v2}, Lo/CreateReportSpiCall;->extraCallback(J)B

    move-result v10

    add-long v1, v5, v15

    .line 1506
    invoke-static {v5, v6}, Lo/CreateReportSpiCall;->extraCallback(J)B

    move-result v11

    add-long v5, v1, v15

    .line 1507
    invoke-static {v1, v2}, Lo/CreateReportSpiCall;->extraCallback(J)B

    move-result v12

    add-int/lit8 v1, v14, 0x1

    move-object v13, v0

    .line 1503
    invoke-static/range {v9 .. v14}, Lo/CompositeCreateReportSpiCall$1$onPostMessage;->onPostMessage(BBBB[CI)V

    add-int/2addr v1, v4

    goto/16 :goto_2

    .line 1501
    :cond_c
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->asBinder()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1515
    :cond_d
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v3, v14}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    .line 1447
    :cond_e
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 1448
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->limit()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v4

    const/4 v0, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    const-string v0, "buffer limit=%d, index=%d, limit=%d"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
