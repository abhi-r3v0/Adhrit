.class Lcom/freshchat/consumer/sdk/j/ac$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/j/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field public final format:I

.field public final iq:I

.field public final ir:[B


# direct methods
.method private constructor <init>(II[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/freshchat/consumer/sdk/j/ac$b;->format:I

    iput p2, p0, Lcom/freshchat/consumer/sdk/j/ac$b;->iq:I

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/j/ac$b;->ir:[B

    return-void
.end method

.method synthetic constructor <init>(II[BLcom/freshchat/consumer/sdk/j/ac$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/freshchat/consumer/sdk/j/ac$b;-><init>(II[B)V

    return-void
.end method

.method public static a(JLjava/nio/ByteOrder;)Lcom/freshchat/consumer/sdk/j/ac$b;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    invoke-static {v0, p2}, Lcom/freshchat/consumer/sdk/j/ac$b;->a([JLjava/nio/ByteOrder;)Lcom/freshchat/consumer/sdk/j/ac$b;

    move-result-object p0

    return-object p0
.end method

.method public static a([JLjava/nio/ByteOrder;)Lcom/freshchat/consumer/sdk/j/ac$b;
    .locals 5

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/ac;->eF()[I

    move-result-object v0

    const/4 v1, 0x4

    aget v0, v0, v1

    array-length v2, p0

    mul-int v0, v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    array-length p1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget-wide v3, p0, v2

    long-to-int v4, v3

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/freshchat/consumer/sdk/j/ac$b;

    array-length p0, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Lcom/freshchat/consumer/sdk/j/ac$b;-><init>(II[B)V

    return-object p1
.end method

.method static synthetic a(Lcom/freshchat/consumer/sdk/j/ac$b;Ljava/nio/ByteOrder;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/j/ac$b;->b(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static aD(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/j/ac$b;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/ac;->eG()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    new-instance v0, Lcom/freshchat/consumer/sdk/j/ac$b;

    array-length v1, p0

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1, p0}, Lcom/freshchat/consumer/sdk/j/ac$b;-><init>(II[B)V

    return-object v0
.end method

.method private b(Ljava/nio/ByteOrder;)Ljava/lang/Object;
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/freshchat/consumer/sdk/j/ac$a;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/j/ac$b;->ir:[B

    invoke-direct {v1, v2}, Lcom/freshchat/consumer/sdk/j/ac$a;-><init>([B)V

    invoke-virtual {v1, p1}, Lcom/freshchat/consumer/sdk/j/ac$a;->a(Ljava/nio/ByteOrder;)V

    iget p1, p0, Lcom/freshchat/consumer/sdk/j/ac$b;->format:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    return-object v0

    :pswitch_0
    iget p1, p0, Lcom/freshchat/consumer/sdk/j/ac$b;->iq:I

    new-array p1, p1, [D

    :goto_0
    iget v2, p0, Lcom/freshchat/consumer/sdk/j/ac$b;->iq:I

    if-ge v3, v2, :cond_0

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/j/ac$a;->readDouble()D

    move-result-wide v4

    aput-wide v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    :pswitch_1
    iget p1, p0, Lcom/freshchat/consumer/sdk/j/ac$b;->iq:I

    new-array p1, p1, [D

    :goto_1
    iget v2, p0, Lcom/freshchat/consumer/sdk/j/ac$b;->iq:I

    if-ge v3, v2, :cond_1

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/j/ac$a;->readFloat()F

    move-result v2

    float-to-double v4, v2

    aput-wide v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object p1

    :pswitch_2
    iget p1, p0, Lcom/freshchat/consumer/sdk/j/ac$b;->iq:I

    new-array p1, p1, [Lcom/freshchat/consumer/sdk/j/ac$d;

    :goto_2
    iget v2, p0, Lcom/freshchat/consumer/sdk/j/ac$b;->iq:I

    if-ge v3, v2, :cond_2

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/j/ac$a;->readInt()I

    move-result v2

    int-to-long v5, v2

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/j/ac$a;->readInt()I

    move-result v2

    int-to-long v7, v2

    new-instance v2, Lcom/freshchat/consumer/sdk/j/ac$d;

    const/4 v9, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/freshchat/consumer/sdk/j/ac$d;-><init>(JJLcom/freshchat/consumer/sdk/j/ac$1;)V

    aput-object v2, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-object p1

    :pswitch_3
    iget p1, p0, Lcom/freshchat/consumer/sdk/j/ac$b;->iq:I

    new-array p1, p1, [I

    :goto_3
    iget v2, p0, Lcom/freshchat/consumer/sdk/j/ac$b;->iq:I

    if-ge v3, v2, :cond_3

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/j/ac$a;->readInt()I

    move-result v2

    aput v2, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    return-object p1

    :pswitch_4
    iget p1, p0, Lcom/freshchat/consumer/sdk/j/ac$b;->iq:I

    new-array p1, p1, [I

    :goto_4
    iget v2, p0, Lcom/freshchat/consumer/sdk/j/ac$b;->iq:I

    if-ge v3, v2, :cond_4

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/j/ac$a;->readShort()S

    move-result v2

    aput v2, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    return-object p1

    :pswitch_5
    iget p1, p0, Lcom/freshchat/consumer/sdk/j/ac$b;->iq:I

    new-array p1, p1, [Lcom/freshchat/consumer/sdk/j/ac$d;

    :goto_5
    iget v2, p0, Lcom/freshchat/consumer/sdk/j/ac$b;->iq:I

    if-ge v3, v2, :cond_5

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/j/ac$a;->eK()J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/j/ac$a;->eK()J

    move-result-wide v7

    new-instance v2, Lcom/freshchat/consumer/sdk/j/ac$d;

    const/4 v9, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/freshchat/consumer/sdk/j/ac$d;-><init>(JJLcom/freshchat/consumer/sdk/j/ac$1;)V

    aput-object v2, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_5
    return-object p1

    :pswitch_6
    iget p1, p0, Lcom/freshchat/consumer/sdk/j/ac$b;->iq:I

    new-array p1, p1, [J

    :goto_6
    iget v2, p0, Lcom/freshchat/consumer/sdk/j/ac$b;->iq:I

    if-ge v3, v2, :cond_6

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/j/ac$a;->eK()J

    move-result-wide v4

    aput-wide v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_6
    return-object p1

    :pswitch_7
    iget p1, p0, Lcom/freshchat/consumer/sdk/j/ac$b;->iq:I

    new-array p1, p1, [I

    :goto_7
    iget v2, p0, Lcom/freshchat/consumer/sdk/j/ac$b;->iq:I

    if-ge v3, v2, :cond_7

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/j/ac$a;->readUnsignedShort()I

    move-result v2

    aput v2, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_7
    return-object p1

    :pswitch_8
    iget p1, p0, Lcom/freshchat/consumer/sdk/j/ac$b;->iq:I

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/ac;->eI()[B

    move-result-object v1

    array-length v1, v1

    if-lt p1, v1, :cond_a

    const/4 p1, 0x0

    :goto_8
    invoke-static {}, Lcom/freshchat/consumer/sdk/j/ac;->eI()[B

    move-result-object v1

    array-length v1, v1

    if-ge p1, v1, :cond_9

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/ac$b;->ir:[B

    aget-byte v1, v1, p1

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/ac;->eI()[B

    move-result-object v4

    aget-byte v4, v4, p1

    if-eq v1, v4, :cond_8

    const/4 v2, 0x0

    goto :goto_9

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_9
    :goto_9
    if-eqz v2, :cond_a

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/ac;->eI()[B

    move-result-object p1

    array-length v3, p1

    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_a
    iget v1, p0, Lcom/freshchat/consumer/sdk/j/ac$b;->iq:I

    if-ge v3, v1, :cond_c

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/ac$b;->ir:[B

    aget-byte v1, v1, v3

    if-eqz v1, :cond_c

    const/16 v2, 0x20

    if-lt v1, v2, :cond_b

    int-to-char v1, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_b
    const/16 v1, 0x3f

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_c
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_9
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/j/ac$b;->ir:[B

    array-length p1, p1

    if-ne p1, v2, :cond_d

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/j/ac$b;->ir:[B

    aget-byte p1, p1, v3

    if-ltz p1, :cond_d

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/j/ac$b;->ir:[B

    aget-byte p1, p1, v3

    if-gt p1, v2, :cond_d

    new-instance p1, Ljava/lang/String;

    new-array v1, v2, [C

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/j/ac$b;->ir:[B

    aget-byte v2, v2, v3

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    aput-char v2, v1, v3

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([C)V

    return-object p1

    :cond_d
    new-instance p1, Ljava/lang/String;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/ac$b;->ir:[B

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/ac;->eG()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v1, "ExifInterface"

    const-string v2, "IOException occurred during reading a value"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public c(Ljava/nio/ByteOrder;)D
    .locals 4

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/j/ac$b;->b(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_9

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    :cond_0
    instance-of v0, p1, [J

    const/4 v1, 0x0

    const-string v2, "There are more than one component"

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    check-cast p1, [J

    array-length v0, p1

    if-ne v0, v3, :cond_1

    aget-wide v0, p1, v1

    long-to-double v0, v0

    return-wide v0

    :cond_1
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    instance-of v0, p1, [I

    if-eqz v0, :cond_4

    check-cast p1, [I

    array-length v0, p1

    if-ne v0, v3, :cond_3

    aget p1, p1, v1

    int-to-double v0, p1

    return-wide v0

    :cond_3
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    instance-of v0, p1, [D

    if-eqz v0, :cond_6

    check-cast p1, [D

    array-length v0, p1

    if-ne v0, v3, :cond_5

    aget-wide v0, p1, v1

    return-wide v0

    :cond_5
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    instance-of v0, p1, [Lcom/freshchat/consumer/sdk/j/ac$d;

    if-eqz v0, :cond_8

    check-cast p1, [Lcom/freshchat/consumer/sdk/j/ac$d;

    array-length v0, p1

    if-ne v0, v3, :cond_7

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/j/ac$d;->eL()D

    move-result-wide v0

    return-wide v0

    :cond_7
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "Couldn\'t find a double value"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "NULL can\'t be converted to a double value"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Ljava/nio/ByteOrder;)I
    .locals 4

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/j/ac$b;->b(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    instance-of v0, p1, [J

    const/4 v1, 0x0

    const-string v2, "There are more than one component"

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    check-cast p1, [J

    array-length v0, p1

    if-ne v0, v3, :cond_1

    aget-wide v0, p1, v1

    long-to-int p1, v0

    return p1

    :cond_1
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    instance-of v0, p1, [I

    if-eqz v0, :cond_4

    check-cast p1, [I

    array-length v0, p1

    if-ne v0, v3, :cond_3

    aget p1, p1, v1

    return p1

    :cond_3
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "Couldn\'t find a integer value"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "NULL can\'t be converted to a integer value"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Ljava/nio/ByteOrder;)Ljava/lang/String;
    .locals 7

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/j/ac$b;->b(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    instance-of v2, p1, [J

    const-string v3, ","

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    check-cast p1, [J

    :cond_2
    :goto_0
    array-length v0, p1

    if-ge v4, v0, :cond_3

    aget-wide v5, p1, v4

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    array-length v0, p1

    if-eq v4, v0, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    instance-of v2, p1, [I

    if-eqz v2, :cond_7

    check-cast p1, [I

    :cond_5
    :goto_1
    array-length v0, p1

    if-ge v4, v0, :cond_6

    aget v0, p1, v4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    array-length v0, p1

    if-eq v4, v0, :cond_5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    instance-of v2, p1, [D

    if-eqz v2, :cond_a

    check-cast p1, [D

    :cond_8
    :goto_2
    array-length v0, p1

    if-ge v4, v0, :cond_9

    aget-wide v5, p1, v4

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    array-length v0, p1

    if-eq v4, v0, :cond_8

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_9
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_a
    instance-of v2, p1, [Lcom/freshchat/consumer/sdk/j/ac$d;

    if-eqz v2, :cond_d

    check-cast p1, [Lcom/freshchat/consumer/sdk/j/ac$d;

    :cond_b
    :goto_3
    array-length v0, p1

    if-ge v4, v0, :cond_c

    aget-object v0, p1, v4

    iget-wide v5, v0, Lcom/freshchat/consumer/sdk/j/ac$d;->iu:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v0, p1, v4

    iget-wide v5, v0, Lcom/freshchat/consumer/sdk/j/ac$d;->iv:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    array-length v0, p1

    if-eq v4, v0, :cond_b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_c
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_d
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/ac;->eH()[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/freshchat/consumer/sdk/j/ac$b;->format:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/ac$b;->ir:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
