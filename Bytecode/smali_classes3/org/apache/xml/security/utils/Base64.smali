.class public Lorg/apache/xml/security/utils/Base64;
.super Ljava/lang/Object;


# static fields
.field private static final a:[B

.field private static final b:[C


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v0, 0xff

    new-array v1, v0, [B

    sput-object v1, Lorg/apache/xml/security/utils/Base64;->a:[B

    const/16 v1, 0x40

    new-array v1, v1, [C

    sput-object v1, Lorg/apache/xml/security/utils/Base64;->b:[C

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    sget-object v3, Lorg/apache/xml/security/utils/Base64;->a:[B

    const/4 v4, -0x1

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x5a

    :goto_1
    const/16 v2, 0x41

    if-lt v0, v2, :cond_1

    sget-object v2, Lorg/apache/xml/security/utils/Base64;->a:[B

    add-int/lit8 v3, v0, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x7a

    :goto_2
    const/16 v2, 0x1a

    const/16 v3, 0x61

    if-lt v0, v3, :cond_2

    sget-object v3, Lorg/apache/xml/security/utils/Base64;->a:[B

    add-int/lit8 v4, v0, -0x61

    add-int/2addr v4, v2

    int-to-byte v2, v4

    aput-byte v2, v3, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    const/16 v0, 0x39

    :goto_3
    const/16 v3, 0x34

    const/16 v4, 0x30

    if-lt v0, v4, :cond_3

    sget-object v4, Lorg/apache/xml/security/utils/Base64;->a:[B

    add-int/lit8 v5, v0, -0x30

    add-int/2addr v5, v3

    int-to-byte v3, v5

    aput-byte v3, v4, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_3
    sget-object v0, Lorg/apache/xml/security/utils/Base64;->a:[B

    const/16 v4, 0x3e

    const/16 v5, 0x2b

    aput-byte v4, v0, v5

    const/16 v6, 0x3f

    const/16 v7, 0x2f

    aput-byte v6, v0, v7

    const/4 v0, 0x0

    :goto_4
    const/16 v8, 0x19

    if-gt v0, v8, :cond_4

    sget-object v8, Lorg/apache/xml/security/utils/Base64;->b:[C

    add-int/lit8 v9, v0, 0x41

    int-to-char v9, v9

    aput-char v9, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const/16 v8, 0x33

    if-gt v2, v8, :cond_5

    sget-object v8, Lorg/apache/xml/security/utils/Base64;->b:[C

    add-int/lit8 v9, v0, 0x61

    int-to-char v9, v9

    aput-char v9, v8, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    :goto_6
    const/16 v0, 0x3d

    if-gt v3, v0, :cond_6

    sget-object v0, Lorg/apache/xml/security/utils/Base64;->b:[C

    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    aput-char v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_6
    sget-object v0, Lorg/apache/xml/security/utils/Base64;->b:[C

    aput-char v5, v0, v4

    aput-char v7, v0, v6

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static final a(Ljava/lang/String;[B)I
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    invoke-static {v3}, Lorg/apache/xml/security/utils/Base64;->a(B)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v4, v2, 0x1

    aput-byte v3, p1, v2

    move v2, v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static final a([BI)Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x4

    move/from16 v2, p1

    if-ge v2, v1, :cond_0

    const v2, 0x7fffffff

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    array-length v3, v0

    shl-int/lit8 v3, v3, 0x3

    if-nez v3, :cond_2

    const-string v0, ""

    return-object v0

    :cond_2
    rem-int/lit8 v4, v3, 0x18

    div-int/lit8 v3, v3, 0x18

    if-eqz v4, :cond_3

    add-int/lit8 v5, v3, 0x1

    goto :goto_0

    :cond_3
    move v5, v3

    :goto_0
    div-int/2addr v2, v1

    add-int/lit8 v6, v5, -0x1

    div-int/2addr v6, v2

    shl-int/lit8 v2, v5, 0x2

    add-int/2addr v2, v6

    new-array v2, v2, [C

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1
    if-ge v7, v6, :cond_8

    const/4 v11, 0x0

    :goto_2
    const/16 v12, 0x13

    if-ge v11, v12, :cond_7

    add-int/lit8 v12, v9, 0x1

    aget-byte v9, v0, v9

    add-int/lit8 v13, v12, 0x1

    aget-byte v12, v0, v12

    add-int/lit8 v14, v13, 0x1

    aget-byte v13, v0, v13

    and-int/lit8 v15, v12, 0xf

    int-to-byte v15, v15

    and-int/lit8 v5, v9, 0x3

    int-to-byte v5, v5

    and-int/lit8 v16, v9, -0x80

    shr-int/lit8 v9, v9, 0x2

    if-nez v16, :cond_4

    goto :goto_3

    :cond_4
    xor-int/lit16 v9, v9, 0xc0

    :goto_3
    int-to-byte v9, v9

    and-int/lit8 v16, v12, -0x80

    shr-int/lit8 v12, v12, 0x4

    if-nez v16, :cond_5

    goto :goto_4

    :cond_5
    xor-int/lit16 v12, v12, 0xf0

    :goto_4
    int-to-byte v12, v12

    and-int/lit8 v16, v13, -0x80

    shr-int/lit8 v1, v13, 0x6

    if-nez v16, :cond_6

    goto :goto_5

    :cond_6
    xor-int/lit16 v1, v1, 0xfc

    :goto_5
    int-to-byte v1, v1

    add-int/lit8 v17, v8, 0x1

    sget-object v18, Lorg/apache/xml/security/utils/Base64;->b:[C

    aget-char v9, v18, v9

    aput-char v9, v2, v8

    add-int/lit8 v8, v17, 0x1

    const/4 v9, 0x4

    shl-int/2addr v5, v9

    or-int/2addr v5, v12

    aget-char v5, v18, v5

    aput-char v5, v2, v17

    add-int/lit8 v5, v8, 0x1

    shl-int/lit8 v9, v15, 0x2

    or-int/2addr v1, v9

    aget-char v1, v18, v1

    aput-char v1, v2, v8

    add-int/lit8 v8, v5, 0x1

    and-int/lit8 v1, v13, 0x3f

    aget-char v1, v18, v1

    aput-char v1, v2, v5

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x1

    move v9, v14

    const/4 v1, 0x4

    goto :goto_2

    :cond_7
    add-int/lit8 v1, v8, 0x1

    const/16 v5, 0xa

    aput-char v5, v2, v8

    add-int/lit8 v7, v7, 0x1

    move v8, v1

    const/4 v1, 0x4

    goto :goto_1

    :cond_8
    :goto_6
    if-ge v10, v3, :cond_c

    add-int/lit8 v1, v9, 0x1

    aget-byte v5, v0, v9

    add-int/lit8 v6, v1, 0x1

    aget-byte v1, v0, v1

    add-int/lit8 v9, v6, 0x1

    aget-byte v6, v0, v6

    and-int/lit8 v7, v1, 0xf

    int-to-byte v7, v7

    and-int/lit8 v11, v5, 0x3

    int-to-byte v11, v11

    and-int/lit8 v12, v5, -0x80

    shr-int/lit8 v5, v5, 0x2

    if-nez v12, :cond_9

    goto :goto_7

    :cond_9
    xor-int/lit16 v5, v5, 0xc0

    :goto_7
    int-to-byte v5, v5

    and-int/lit8 v12, v1, -0x80

    shr-int/lit8 v1, v1, 0x4

    if-nez v12, :cond_a

    goto :goto_8

    :cond_a
    xor-int/lit16 v1, v1, 0xf0

    :goto_8
    int-to-byte v1, v1

    and-int/lit8 v12, v6, -0x80

    if-nez v12, :cond_b

    shr-int/lit8 v12, v6, 0x6

    goto :goto_9

    :cond_b
    shr-int/lit8 v12, v6, 0x6

    xor-int/lit16 v12, v12, 0xfc

    :goto_9
    int-to-byte v12, v12

    add-int/lit8 v13, v8, 0x1

    sget-object v14, Lorg/apache/xml/security/utils/Base64;->b:[C

    aget-char v5, v14, v5

    aput-char v5, v2, v8

    add-int/lit8 v5, v13, 0x1

    const/4 v8, 0x4

    shl-int/2addr v11, v8

    or-int/2addr v1, v11

    aget-char v1, v14, v1

    aput-char v1, v2, v13

    add-int/lit8 v1, v5, 0x1

    shl-int/lit8 v7, v7, 0x2

    or-int/2addr v7, v12

    aget-char v7, v14, v7

    aput-char v7, v2, v5

    add-int/lit8 v8, v1, 0x1

    and-int/lit8 v5, v6, 0x3f

    aget-char v5, v14, v5

    aput-char v5, v2, v1

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_c
    const/16 v1, 0x8

    const/16 v3, 0x3d

    if-ne v4, v1, :cond_e

    aget-byte v0, v0, v9

    and-int/lit8 v1, v0, 0x3

    int-to-byte v1, v1

    and-int/lit8 v4, v0, -0x80

    shr-int/lit8 v0, v0, 0x2

    if-nez v4, :cond_d

    goto :goto_a

    :cond_d
    xor-int/lit16 v0, v0, 0xc0

    :goto_a
    int-to-byte v0, v0

    add-int/lit8 v4, v8, 0x1

    sget-object v5, Lorg/apache/xml/security/utils/Base64;->b:[C

    aget-char v0, v5, v0

    aput-char v0, v2, v8

    add-int/lit8 v0, v4, 0x1

    const/4 v6, 0x4

    shl-int/2addr v1, v6

    aget-char v1, v5, v1

    aput-char v1, v2, v4

    add-int/lit8 v1, v0, 0x1

    aput-char v3, v2, v0

    aput-char v3, v2, v1

    goto :goto_d

    :cond_e
    const/16 v1, 0x10

    if-ne v4, v1, :cond_11

    aget-byte v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    aget-byte v0, v0, v9

    and-int/lit8 v4, v0, 0xf

    int-to-byte v4, v4

    and-int/lit8 v5, v1, 0x3

    int-to-byte v5, v5

    and-int/lit8 v6, v1, -0x80

    shr-int/lit8 v1, v1, 0x2

    if-nez v6, :cond_f

    goto :goto_b

    :cond_f
    xor-int/lit16 v1, v1, 0xc0

    :goto_b
    int-to-byte v1, v1

    and-int/lit8 v6, v0, -0x80

    if-nez v6, :cond_10

    const/4 v6, 0x4

    shr-int/2addr v0, v6

    goto :goto_c

    :cond_10
    const/4 v6, 0x4

    shr-int/2addr v0, v6

    xor-int/lit16 v0, v0, 0xf0

    :goto_c
    int-to-byte v0, v0

    add-int/lit8 v7, v8, 0x1

    sget-object v9, Lorg/apache/xml/security/utils/Base64;->b:[C

    aget-char v1, v9, v1

    aput-char v1, v2, v8

    add-int/lit8 v1, v7, 0x1

    shl-int/2addr v5, v6

    or-int/2addr v0, v5

    aget-char v0, v9, v0

    aput-char v0, v2, v7

    add-int/lit8 v0, v1, 0x1

    shl-int/lit8 v4, v4, 0x2

    aget-char v4, v9, v4

    aput-char v4, v2, v1

    aput-char v3, v2, v0

    :cond_11
    :goto_d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static final a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 11

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    const-string v6, "decoding.general"

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x2

    if-lez v4, :cond_4

    int-to-byte v4, v4

    invoke-static {v4}, Lorg/apache/xml/security/utils/Base64;->a(B)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {v4}, Lorg/apache/xml/security/utils/Base64;->b(B)Z

    move-result v10

    if-eqz v10, :cond_1

    add-int/lit8 v10, v3, 0x1

    aput-byte v4, v1, v3

    if-ne v10, v7, :cond_4

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    int-to-byte p0, p0

    aput-byte p0, v1, v10

    goto :goto_2

    :cond_1
    add-int/lit8 v10, v3, 0x1

    aput-byte v4, v1, v3

    if-eq v4, v5, :cond_3

    if-ne v10, v0, :cond_2

    sget-object v3, Lorg/apache/xml/security/utils/Base64;->a:[B

    aget-byte v4, v1, v2

    aget-byte v4, v3, v4

    aget-byte v5, v1, v8

    aget-byte v5, v3, v5

    aget-byte v6, v1, v9

    aget-byte v6, v3, v6

    aget-byte v7, v1, v7

    aget-byte v3, v3, v7

    shl-int/2addr v4, v9

    shr-int/lit8 v7, v5, 0x4

    or-int/2addr v4, v7

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    and-int/lit8 v4, v5, 0xf

    shl-int/2addr v4, v0

    shr-int/lit8 v5, v6, 0x2

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v4, v5

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v4, v6, 0x6

    or-int/2addr v3, v4

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_2
    move v3, v10

    goto :goto_1

    :cond_3
    new-instance p0, Lorg/apache/xml/security/exceptions/Base64DecodingException;

    invoke-direct {p0, v6}, Lorg/apache/xml/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    aget-byte p0, v1, v2

    aget-byte v2, v1, v8

    aget-byte v3, v1, v9

    aget-byte v1, v1, v7

    sget-object v4, Lorg/apache/xml/security/utils/Base64;->a:[B

    aget-byte p0, v4, p0

    aget-byte v2, v4, v2

    aget-byte v7, v4, v3

    aget-byte v4, v4, v1

    if-eq v7, v5, :cond_6

    if-ne v4, v5, :cond_5

    goto :goto_4

    :cond_5
    shl-int/2addr p0, v9

    shr-int/lit8 v1, v2, 0x4

    or-int/2addr p0, v1

    int-to-byte p0, p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    and-int/lit8 p0, v2, 0xf

    shl-int/2addr p0, v0

    shr-int/lit8 v0, v7, 0x2

    and-int/lit8 v0, v0, 0xf

    or-int/2addr p0, v0

    int-to-byte p0, p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 p0, v7, 0x6

    or-int/2addr p0, v4

    :goto_3
    int-to-byte p0, p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    return-void

    :cond_6
    :goto_4
    invoke-static {v3}, Lorg/apache/xml/security/utils/Base64;->b(B)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {v1}, Lorg/apache/xml/security/utils/Base64;->b(B)Z

    move-result v4

    if-eqz v4, :cond_8

    and-int/lit8 v1, v2, 0xf

    if-nez v1, :cond_7

    shl-int/2addr p0, v9

    shr-int/lit8 v0, v2, 0x4

    :goto_5
    or-int/2addr p0, v0

    goto :goto_3

    :cond_7
    new-instance p0, Lorg/apache/xml/security/exceptions/Base64DecodingException;

    invoke-direct {p0, v6}, Lorg/apache/xml/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    invoke-static {v3}, Lorg/apache/xml/security/utils/Base64;->b(B)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-static {v1}, Lorg/apache/xml/security/utils/Base64;->b(B)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Lorg/apache/xml/security/utils/Base64;->a:[B

    aget-byte v1, v1, v3

    and-int/lit8 v3, v1, 0x3

    if-nez v3, :cond_9

    shl-int/2addr p0, v9

    shr-int/lit8 v3, v2, 0x4

    or-int/2addr p0, v3

    int-to-byte p0, p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    and-int/lit8 p0, v2, 0xf

    shl-int/2addr p0, v0

    shr-int/lit8 v0, v1, 0x2

    and-int/lit8 v0, v0, 0xf

    goto :goto_5

    :cond_9
    new-instance p0, Lorg/apache/xml/security/exceptions/Base64DecodingException;

    invoke-direct {p0, v6}, Lorg/apache/xml/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Lorg/apache/xml/security/exceptions/Base64DecodingException;

    invoke-direct {p0, v6}, Lorg/apache/xml/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final a(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    invoke-static {p0, v0}, Lorg/apache/xml/security/utils/Base64;->a(Ljava/lang/String;[B)I

    move-result p0

    invoke-static {v0, p1, p0}, Lorg/apache/xml/security/utils/Base64;->a([BLjava/io/OutputStream;I)V

    return-void
.end method

.method public static final a([BLjava/io/OutputStream;)V
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lorg/apache/xml/security/utils/Base64;->a([BLjava/io/OutputStream;I)V

    return-void
.end method

.method protected static final a([BLjava/io/OutputStream;I)V
    .locals 8

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-static {p0}, Lorg/apache/xml/security/utils/Base64;->c([B)I

    move-result p2

    :cond_0
    rem-int/lit8 v1, p2, 0x4

    if-nez v1, :cond_b

    div-int/lit8 p2, p2, 0x4

    if-nez p2, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    add-int/lit8 p2, p2, -0x1

    :goto_0
    const-string v2, "decoding.general"

    if-lez p2, :cond_3

    sget-object v3, Lorg/apache/xml/security/utils/Base64;->a:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, p0, v1

    aget-byte v1, v3, v1

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p0, v4

    aget-byte v4, v3, v4

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, p0, v5

    aget-byte v5, v3, v5

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, p0, v6

    aget-byte v3, v3, v6

    if-eq v1, v0, :cond_2

    if-eq v4, v0, :cond_2

    if-eq v5, v0, :cond_2

    if-eq v3, v0, :cond_2

    shl-int/lit8 v1, v1, 0x2

    shr-int/lit8 v2, v4, 0x4

    or-int/2addr v1, v2

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    and-int/lit8 v1, v4, 0xf

    shl-int/lit8 v1, v1, 0x4

    shr-int/lit8 v2, v5, 0x2

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v1, v2

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v1, v5, 0x6

    or-int/2addr v1, v3

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 p2, p2, -0x1

    move v1, v7

    goto :goto_0

    :cond_2
    new-instance p0, Lorg/apache/xml/security/exceptions/Base64DecodingException;

    invoke-direct {p0, v2}, Lorg/apache/xml/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    sget-object p2, Lorg/apache/xml/security/utils/Base64;->a:[B

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p0, v1

    aget-byte v1, p2, v1

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p0, v3

    aget-byte v3, p2, v3

    if-eq v1, v0, :cond_a

    if-eq v3, v0, :cond_a

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p0, v4

    aget-byte v6, p2, v4

    aget-byte p0, p0, v5

    aget-byte p2, p2, p0

    if-eq v6, v0, :cond_5

    if-ne p2, v0, :cond_4

    goto :goto_2

    :cond_4
    shl-int/lit8 p0, v1, 0x2

    shr-int/lit8 v0, v3, 0x4

    or-int/2addr p0, v0

    int-to-byte p0, p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    and-int/lit8 p0, v3, 0xf

    shl-int/lit8 p0, p0, 0x4

    shr-int/lit8 v0, v6, 0x2

    and-int/lit8 v0, v0, 0xf

    or-int/2addr p0, v0

    int-to-byte p0, p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 p0, v6, 0x6

    :goto_1
    or-int/2addr p0, p2

    int-to-byte p0, p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    return-void

    :cond_5
    :goto_2
    invoke-static {v4}, Lorg/apache/xml/security/utils/Base64;->b(B)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-static {p0}, Lorg/apache/xml/security/utils/Base64;->b(B)Z

    move-result p2

    if-eqz p2, :cond_7

    and-int/lit8 p0, v3, 0xf

    if-nez p0, :cond_6

    shl-int/lit8 p0, v1, 0x2

    shr-int/lit8 p2, v3, 0x4

    goto :goto_1

    :cond_6
    new-instance p0, Lorg/apache/xml/security/exceptions/Base64DecodingException;

    invoke-direct {p0, v2}, Lorg/apache/xml/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    invoke-static {v4}, Lorg/apache/xml/security/utils/Base64;->b(B)Z

    move-result p2

    if-nez p2, :cond_9

    invoke-static {p0}, Lorg/apache/xml/security/utils/Base64;->b(B)Z

    move-result p0

    if-eqz p0, :cond_9

    and-int/lit8 p0, v6, 0x3

    if-nez p0, :cond_8

    shl-int/lit8 p0, v1, 0x2

    shr-int/lit8 p2, v3, 0x4

    or-int/2addr p0, p2

    int-to-byte p0, p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    and-int/lit8 p0, v3, 0xf

    shl-int/lit8 p0, p0, 0x4

    shr-int/lit8 p2, v6, 0x2

    and-int/lit8 p2, p2, 0xf

    goto :goto_1

    :cond_8
    new-instance p0, Lorg/apache/xml/security/exceptions/Base64DecodingException;

    invoke-direct {p0, v2}, Lorg/apache/xml/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Lorg/apache/xml/security/exceptions/Base64DecodingException;

    invoke-direct {p0, v2}, Lorg/apache/xml/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Lorg/apache/xml/security/exceptions/Base64DecodingException;

    invoke-direct {p0, v2}, Lorg/apache/xml/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Lorg/apache/xml/security/exceptions/Base64DecodingException;

    const-string p1, "decoding.divisible.four"

    invoke-direct {p0, p1}, Lorg/apache/xml/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static final a(B)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final a(Ljava/lang/String;)[B
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    invoke-static {p0, v0}, Lorg/apache/xml/security/utils/Base64;->a(Ljava/lang/String;[B)I

    move-result p0

    invoke-static {v0, p0}, Lorg/apache/xml/security/utils/Base64;->b([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lorg/w3c/dom/Element;)[B
    .locals 3

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    move-object v1, p0

    check-cast v1, Lorg/w3c/dom/Text;

    invoke-interface {v1}, Lorg/w3c/dom/Text;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xml/security/utils/Base64;->a(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static final a([B)[B
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lorg/apache/xml/security/utils/Base64;->b([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static final b([B)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/apache/xml/security/utils/XMLUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7fffffff

    :goto_0
    invoke-static {p0, v0}, Lorg/apache/xml/security/utils/Base64;->a([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v0, 0x4c

    goto :goto_0
.end method

.method protected static final b(B)Z
    .locals 1

    const/16 v0, 0x3d

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected static final b([BI)[B
    .locals 11

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-static {p0}, Lorg/apache/xml/security/utils/Base64;->c([B)I

    move-result p1

    :cond_0
    rem-int/lit8 v1, p1, 0x4

    if-nez v1, :cond_b

    div-int/lit8 p1, p1, 0x4

    const/4 v1, 0x0

    if-nez p1, :cond_1

    new-array p0, v1, [B

    return-object p0

    :cond_1
    add-int/lit8 v2, p1, -0x1

    shl-int/lit8 v3, v2, 0x2

    mul-int/lit8 v2, v2, 0x3

    sget-object v4, Lorg/apache/xml/security/utils/Base64;->a:[B

    add-int/lit8 v5, v3, 0x1

    aget-byte v3, p0, v3

    aget-byte v3, v4, v3

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, p0, v5

    aget-byte v5, v4, v5

    const-string v7, "decoding.general"

    if-eq v3, v0, :cond_a

    if-eq v5, v0, :cond_a

    add-int/lit8 v8, v6, 0x1

    aget-byte v6, p0, v6

    aget-byte v9, v4, v6

    aget-byte v8, p0, v8

    aget-byte v4, v4, v8

    if-eq v9, v0, :cond_3

    if-ne v4, v0, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v6, v2, 0x3

    new-array v6, v6, [B

    add-int/lit8 v8, v2, 0x1

    shl-int/lit8 v3, v3, 0x2

    shr-int/lit8 v10, v5, 0x4

    or-int/2addr v3, v10

    int-to-byte v3, v3

    aput-byte v3, v6, v2

    add-int/lit8 v2, v8, 0x1

    and-int/lit8 v3, v5, 0xf

    shl-int/lit8 v3, v3, 0x4

    shr-int/lit8 v5, v9, 0x2

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v6, v8

    shl-int/lit8 v3, v9, 0x6

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v6, v2

    goto :goto_1

    :cond_3
    :goto_0
    invoke-static {v6}, Lorg/apache/xml/security/utils/Base64;->b(B)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v8}, Lorg/apache/xml/security/utils/Base64;->b(B)Z

    move-result v4

    if-eqz v4, :cond_5

    and-int/lit8 v4, v5, 0xf

    if-nez v4, :cond_4

    add-int/lit8 v4, v2, 0x1

    new-array v6, v4, [B

    shl-int/lit8 v3, v3, 0x2

    shr-int/lit8 v4, v5, 0x4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v6, v2

    goto :goto_1

    :cond_4
    new-instance p0, Lorg/apache/xml/security/exceptions/Base64DecodingException;

    invoke-direct {p0, v7}, Lorg/apache/xml/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-static {v6}, Lorg/apache/xml/security/utils/Base64;->b(B)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static {v8}, Lorg/apache/xml/security/utils/Base64;->b(B)Z

    move-result v4

    if-eqz v4, :cond_9

    and-int/lit8 v4, v9, 0x3

    if-nez v4, :cond_8

    add-int/lit8 v4, v2, 0x2

    new-array v6, v4, [B

    add-int/lit8 v4, v2, 0x1

    shl-int/lit8 v3, v3, 0x2

    shr-int/lit8 v8, v5, 0x4

    or-int/2addr v3, v8

    int-to-byte v3, v3

    aput-byte v3, v6, v2

    and-int/lit8 v2, v5, 0xf

    shl-int/lit8 v2, v2, 0x4

    shr-int/lit8 v3, v9, 0x2

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v6, v4

    :goto_1
    add-int/2addr p1, v0

    const/4 v2, 0x0

    :goto_2
    if-lez p1, :cond_7

    sget-object v3, Lorg/apache/xml/security/utils/Base64;->a:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, p0, v1

    aget-byte v1, v3, v1

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p0, v4

    aget-byte v4, v3, v4

    add-int/lit8 v8, v5, 0x1

    aget-byte v5, p0, v5

    aget-byte v5, v3, v5

    add-int/lit8 v9, v8, 0x1

    aget-byte v8, p0, v8

    aget-byte v3, v3, v8

    if-eq v1, v0, :cond_6

    if-eq v4, v0, :cond_6

    if-eq v5, v0, :cond_6

    if-eq v3, v0, :cond_6

    add-int/lit8 v8, v2, 0x1

    shl-int/lit8 v1, v1, 0x2

    shr-int/lit8 v10, v4, 0x4

    or-int/2addr v1, v10

    int-to-byte v1, v1

    aput-byte v1, v6, v2

    add-int/lit8 v1, v8, 0x1

    and-int/lit8 v2, v4, 0xf

    shl-int/lit8 v2, v2, 0x4

    shr-int/lit8 v4, v5, 0x2

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v6, v8

    add-int/lit8 v2, v1, 0x1

    shl-int/lit8 v4, v5, 0x6

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v6, v1

    add-int/lit8 p1, p1, -0x1

    move v1, v9

    goto :goto_2

    :cond_6
    new-instance p0, Lorg/apache/xml/security/exceptions/Base64DecodingException;

    invoke-direct {p0, v7}, Lorg/apache/xml/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    return-object v6

    :cond_8
    new-instance p0, Lorg/apache/xml/security/exceptions/Base64DecodingException;

    invoke-direct {p0, v7}, Lorg/apache/xml/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Lorg/apache/xml/security/exceptions/Base64DecodingException;

    invoke-direct {p0, v7}, Lorg/apache/xml/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Lorg/apache/xml/security/exceptions/Base64DecodingException;

    invoke-direct {p0, v7}, Lorg/apache/xml/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Lorg/apache/xml/security/exceptions/Base64DecodingException;

    const-string p1, "decoding.divisible.four"

    invoke-direct {p0, p1}, Lorg/apache/xml/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static final c([B)I
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    aget-byte v3, p0, v0

    invoke-static {v3}, Lorg/apache/xml/security/utils/Base64;->a(B)Z

    move-result v4

    if-nez v4, :cond_1

    add-int/lit8 v4, v2, 0x1

    aput-byte v3, p0, v2

    move v2, v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method
