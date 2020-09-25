.class final Lo/ExtraDetailsJsonAdapter;
.super Lo/LoanStatusResponse$AadhaarFillDetails;


# static fields
.field private static final onMessageChannelReady:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    sput-object v0, Lo/ExtraDetailsJsonAdapter;->onMessageChannelReady:[B

    return-void
.end method

.method constructor <init>([BI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lo/LoanStatusResponse$AadhaarFillDetails;-><init>([BI)V

    return-void
.end method

.method private static onPostMessage([IIIII)V
    .locals 2

    aget v0, p0, p1

    aget v1, p0, p2

    add-int/2addr v0, v1

    aput v0, p0, p1

    aget v0, p0, p4

    aget v1, p0, p1

    xor-int/2addr v0, v1

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lo/ExtraDetailsJsonAdapter;->onMessageChannelReady(II)I

    move-result v0

    aput v0, p0, p4

    aget v0, p0, p3

    aget v1, p0, p4

    add-int/2addr v0, v1

    aput v0, p0, p3

    aget v0, p0, p2

    aget v1, p0, p3

    xor-int/2addr v0, v1

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lo/ExtraDetailsJsonAdapter;->onMessageChannelReady(II)I

    move-result v0

    aput v0, p0, p2

    aget v0, p0, p1

    aget v1, p0, p2

    add-int/2addr v0, v1

    aput v0, p0, p1

    aget v0, p0, p4

    aget p1, p0, p1

    xor-int/2addr p1, v0

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lo/ExtraDetailsJsonAdapter;->onMessageChannelReady(II)I

    move-result p1

    aput p1, p0, p4

    aget p1, p0, p3

    aget p4, p0, p4

    add-int/2addr p1, p4

    aput p1, p0, p3

    aget p1, p0, p2

    aget p3, p0, p3

    xor-int/2addr p1, p3

    const/4 p3, 0x7

    invoke-static {p1, p3}, Lo/ExtraDetailsJsonAdapter;->onMessageChannelReady(II)I

    move-result p1

    aput p1, p0, p2

    return-void
.end method


# virtual methods
.method final onMessageChannelReady()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method final onMessageChannelReady([BI)Ljava/nio/ByteBuffer;
    .locals 16

    const/16 v0, 0x10

    new-array v1, v0, [I

    sget-object v2, Lo/LoanStatusResponse$AadhaarFillDetails;->ICustomTabsCallback:[I

    sget-object v3, Lo/ExtraDetailsJsonAdapter;->ICustomTabsCallback:[I

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v2, p0

    iget-object v3, v2, Lo/ExtraDetailsJsonAdapter;->onNavigationEvent:Lo/LoanDetailJsonAdapter;

    invoke-virtual {v3}, Lo/LoanDetailJsonAdapter;->ICustomTabsCallback()[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v3}, Lo/ExtraDetailsJsonAdapter;->onMessageChannelReady(Ljava/nio/ByteBuffer;)[I

    move-result-object v3

    array-length v5, v3

    const/4 v6, 0x4

    invoke-static {v3, v4, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v3, 0xc

    aput p2, v1, v3

    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {v5}, Lo/ExtraDetailsJsonAdapter;->onMessageChannelReady(Ljava/nio/ByteBuffer;)[I

    move-result-object v5

    const/4 v7, 0x3

    const/16 v8, 0xd

    invoke-static {v5, v4, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    const/4 v9, 0x0

    :goto_0
    const/16 v10, 0xa

    if-ge v9, v10, :cond_0

    const/16 v11, 0x8

    invoke-static {v5, v4, v6, v11, v3}, Lo/ExtraDetailsJsonAdapter;->onPostMessage([IIIII)V

    const/16 v12, 0x9

    const/4 v13, 0x5

    const/4 v14, 0x1

    invoke-static {v5, v14, v13, v12, v8}, Lo/ExtraDetailsJsonAdapter;->onPostMessage([IIIII)V

    const/16 v15, 0xe

    const/4 v0, 0x6

    const/4 v6, 0x2

    invoke-static {v5, v6, v0, v10, v15}, Lo/ExtraDetailsJsonAdapter;->onPostMessage([IIIII)V

    const/16 v12, 0xf

    const/16 v15, 0xb

    const/4 v6, 0x7

    invoke-static {v5, v7, v6, v15, v12}, Lo/ExtraDetailsJsonAdapter;->onPostMessage([IIIII)V

    invoke-static {v5, v4, v13, v10, v12}, Lo/ExtraDetailsJsonAdapter;->onPostMessage([IIIII)V

    invoke-static {v5, v14, v0, v15, v3}, Lo/ExtraDetailsJsonAdapter;->onPostMessage([IIIII)V

    const/4 v0, 0x2

    invoke-static {v5, v0, v6, v11, v8}, Lo/ExtraDetailsJsonAdapter;->onPostMessage([IIIII)V

    const/16 v0, 0xe

    const/16 v6, 0x9

    const/4 v10, 0x4

    invoke-static {v5, v7, v10, v6, v0}, Lo/ExtraDetailsJsonAdapter;->onPostMessage([IIIII)V

    add-int/lit8 v9, v9, 0x1

    const/16 v0, 0x10

    const/4 v6, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/16 v3, 0x10

    if-ge v0, v3, :cond_1

    aget v3, v1, v0

    aget v6, v5, v0

    add-int/2addr v3, v6

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x40

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    const/16 v5, 0x10

    invoke-virtual {v3, v1, v4, v5}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    return-object v0
.end method
