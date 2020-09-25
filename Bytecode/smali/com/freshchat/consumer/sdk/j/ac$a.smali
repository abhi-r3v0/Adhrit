.class Lcom/freshchat/consumer/sdk/j/ac$a;
.super Ljava/io/ByteArrayInputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/j/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final BIG_ENDIAN:Ljava/nio/ByteOrder;

.field private static final LITTLE_ENDIAN:Ljava/nio/ByteOrder;


# instance fields
.field private in:Ljava/nio/ByteOrder;

.field private final io:J

.field private ip:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Lcom/freshchat/consumer/sdk/j/ac$a;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Lcom/freshchat/consumer/sdk/j/ac$a;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/j/ac$a;->in:Ljava/nio/ByteOrder;

    array-length p1, p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/freshchat/consumer/sdk/j/ac$a;->io:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/freshchat/consumer/sdk/j/ac$a;->ip:J

    return-void
.end method

.method static synthetic a(Lcom/freshchat/consumer/sdk/j/ac$a;)J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/j/ac$a;->io:J

    return-wide v0
.end method


# virtual methods
.method public a(Ljava/nio/ByteOrder;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/ac$a;->in:Ljava/nio/ByteOrder;

    return-void
.end method

.method public eJ()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/j/ac$a;->ip:J

    return-wide v0
.end method

.method public eK()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/ac$a;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/ac$a;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/ac$a;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/j/ac$a;->ip:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/freshchat/consumer/sdk/j/ac$a;->ip:J

    iget-wide v2, p0, Lcom/freshchat/consumer/sdk/j/ac$a;->io:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    const/4 v0, 0x0

    array-length v1, p1

    invoke-super {p0, p1, v0, v1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v0

    array-length p1, p1

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Couldn\'t read up to the length of buffer"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public readInt()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/j/ac$a;->ip:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/freshchat/consumer/sdk/j/ac$a;->ip:J

    iget-wide v2, p0, Lcom/freshchat/consumer/sdk/j/ac$a;->io:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_3

    invoke-super {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    invoke-super {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    invoke-super {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    invoke-super {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    or-int v4, v0, v1

    or-int/2addr v4, v2

    or-int/2addr v4, v3

    if-ltz v4, :cond_2

    iget-object v4, p0, Lcom/freshchat/consumer/sdk/j/ac$a;->in:Ljava/nio/ByteOrder;

    sget-object v5, Lcom/freshchat/consumer/sdk/j/ac$a;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v4, v5, :cond_0

    shl-int/lit8 v3, v3, 0x18

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v3, v2

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v3, v1

    add-int/2addr v3, v0

    return v3

    :cond_0
    sget-object v5, Lcom/freshchat/consumer/sdk/j/ac$a;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v4, v5, :cond_1

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    return v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid byte order: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/j/ac$a;->in:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_3
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readLong()J
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/freshchat/consumer/sdk/j/ac$a;->ip:J

    const-wide/16 v3, 0x8

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/freshchat/consumer/sdk/j/ac$a;->ip:J

    iget-wide v3, v0, Lcom/freshchat/consumer/sdk/j/ac$a;->io:J

    cmp-long v5, v1, v3

    if-gtz v5, :cond_3

    invoke-super/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    invoke-super/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    invoke-super/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    invoke-super/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    invoke-super/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    invoke-super/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    invoke-super/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    invoke-super/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    or-int v9, v1, v2

    or-int/2addr v9, v3

    or-int/2addr v9, v4

    or-int/2addr v9, v5

    or-int/2addr v9, v6

    or-int/2addr v9, v7

    or-int/2addr v9, v8

    if-ltz v9, :cond_2

    iget-object v9, v0, Lcom/freshchat/consumer/sdk/j/ac$a;->in:Ljava/nio/ByteOrder;

    sget-object v10, Lcom/freshchat/consumer/sdk/j/ac$a;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v13, 0x18

    const/16 v14, 0x20

    const/16 v15, 0x28

    const/16 v16, 0x30

    const/16 v17, 0x38

    if-ne v9, v10, :cond_0

    int-to-long v8, v8

    shl-long v8, v8, v17

    int-to-long v11, v7

    shl-long v11, v11, v16

    add-long/2addr v8, v11

    int-to-long v6, v6

    shl-long/2addr v6, v15

    add-long/2addr v8, v6

    int-to-long v5, v5

    shl-long/2addr v5, v14

    add-long/2addr v8, v5

    int-to-long v4, v4

    shl-long/2addr v4, v13

    add-long/2addr v8, v4

    int-to-long v3, v3

    const/16 v5, 0x10

    shl-long/2addr v3, v5

    add-long/2addr v8, v3

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    add-long/2addr v8, v2

    int-to-long v1, v1

    add-long/2addr v8, v1

    return-wide v8

    :cond_0
    sget-object v11, Lcom/freshchat/consumer/sdk/j/ac$a;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v9, v11, :cond_1

    int-to-long v11, v1

    shl-long v11, v11, v17

    int-to-long v1, v2

    shl-long v1, v1, v16

    add-long/2addr v11, v1

    int-to-long v1, v3

    shl-long/2addr v1, v15

    add-long/2addr v11, v1

    int-to-long v1, v4

    shl-long/2addr v1, v14

    add-long/2addr v11, v1

    int-to-long v1, v5

    shl-long/2addr v1, v13

    add-long/2addr v11, v1

    int-to-long v1, v6

    const/16 v3, 0x10

    shl-long/2addr v1, v3

    add-long/2addr v11, v1

    int-to-long v1, v7

    const/16 v3, 0x8

    shl-long/2addr v1, v3

    add-long/2addr v11, v1

    int-to-long v1, v8

    add-long/2addr v11, v1

    return-wide v11

    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid byte order: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/freshchat/consumer/sdk/j/ac$a;->in:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    :cond_3
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public readShort()S
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/j/ac$a;->ip:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/freshchat/consumer/sdk/j/ac$a;->ip:J

    iget-wide v2, p0, Lcom/freshchat/consumer/sdk/j/ac$a;->io:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_3

    invoke-super {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    invoke-super {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    or-int v2, v0, v1

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/j/ac$a;->in:Ljava/nio/ByteOrder;

    sget-object v3, Lcom/freshchat/consumer/sdk/j/ac$a;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_0

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v0

    int-to-short v0, v1

    return v0

    :cond_0
    sget-object v3, Lcom/freshchat/consumer/sdk/j/ac$a;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_1

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid byte order: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/j/ac$a;->in:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_3
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readUnsignedShort()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/j/ac$a;->ip:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/freshchat/consumer/sdk/j/ac$a;->ip:J

    iget-wide v2, p0, Lcom/freshchat/consumer/sdk/j/ac$a;->io:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_3

    invoke-super {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    invoke-super {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    or-int v2, v0, v1

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/j/ac$a;->in:Ljava/nio/ByteOrder;

    sget-object v3, Lcom/freshchat/consumer/sdk/j/ac$a;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_0

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v0

    return v1

    :cond_0
    sget-object v3, Lcom/freshchat/consumer/sdk/j/ac$a;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_1

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v1

    return v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid byte order: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/j/ac$a;->in:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_3
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public seek(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/freshchat/consumer/sdk/j/ac$a;->ip:J

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Couldn\'t seek up to the byteCount"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public skip(J)J
    .locals 4

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/j/ac$a;->io:J

    iget-wide v2, p0, Lcom/freshchat/consumer/sdk/j/ac$a;->ip:J

    sub-long/2addr v0, v2

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-super {p0, p1, p2}, Ljava/io/ByteArrayInputStream;->skip(J)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/j/ac$a;->ip:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/freshchat/consumer/sdk/j/ac$a;->ip:J

    return-wide p1
.end method
