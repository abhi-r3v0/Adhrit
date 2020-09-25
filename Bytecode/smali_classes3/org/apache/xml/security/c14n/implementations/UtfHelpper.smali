.class public Lorg/apache/xml/security/c14n/implementations/UtfHelpper;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final a(CLjava/io/OutputStream;)V
    .locals 5

    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    return-void

    :cond_0
    const v1, 0xd800

    const/16 v2, 0x3f

    if-lt p0, v1, :cond_1

    const v1, 0xdbff

    if-le p0, v1, :cond_2

    :cond_1
    const v1, 0xdc00

    if-lt p0, v1, :cond_3

    const v1, 0xdfff

    if-gt p0, v1, :cond_3

    :cond_2
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    return-void

    :cond_3
    const/16 v1, 0x7ff

    if-le p0, v1, :cond_5

    ushr-int/lit8 v1, p0, 0xc

    int-to-char v1, v1

    const/16 v3, 0xe0

    if-lez v1, :cond_4

    and-int/lit8 v1, v1, 0xf

    or-int/2addr v3, v1

    :cond_4
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    const/16 v1, 0x80

    const/16 v3, 0x3f

    goto :goto_0

    :cond_5
    const/16 v1, 0xc0

    const/16 v3, 0x1f

    :goto_0
    ushr-int/lit8 v4, p0, 0x6

    int-to-char v4, v4

    if-lez v4, :cond_6

    and-int/2addr v3, v4

    or-int/2addr v1, v3

    :cond_6
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    and-int/2addr p0, v2

    or-int/2addr p0, v0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method static final a(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_7

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x80

    if-ge v1, v3, :cond_0

    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_3

    :cond_0
    const v4, 0xd800

    const/16 v5, 0x3f

    if-lt v1, v4, :cond_1

    const v4, 0xdbff

    if-le v1, v4, :cond_2

    :cond_1
    const v4, 0xdc00

    if-lt v1, v4, :cond_3

    const v4, 0xdfff

    if-gt v1, v4, :cond_3

    :cond_2
    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write(I)V

    goto :goto_3

    :cond_3
    const/16 v4, 0x7ff

    if-le v1, v4, :cond_5

    ushr-int/lit8 v4, v1, 0xc

    int-to-char v4, v4

    const/16 v6, 0xe0

    if-lez v4, :cond_4

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v6, v4

    :cond_4
    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    const/16 v4, 0x80

    goto :goto_2

    :cond_5
    const/16 v4, 0xc0

    const/16 v5, 0x1f

    :goto_2
    ushr-int/lit8 v6, v1, 0x6

    int-to-char v6, v6

    if-lez v6, :cond_6

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    :cond_6
    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v3

    goto :goto_1

    :goto_3
    move v1, v2

    goto :goto_0

    :cond_7
    return-void
.end method

.method static final a(Ljava/lang/String;Ljava/io/OutputStream;Ljava/util/Map;)V
    .locals 1

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/xml/security/c14n/implementations/UtfHelpper;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-interface {p2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public static final a(Ljava/lang/String;)[B
    .locals 11

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v3, v0, :cond_8

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v7, 0x80

    if-ge v3, v7, :cond_0

    add-int/lit8 v7, v5, 0x1

    int-to-byte v3, v3

    aput-byte v3, v1, v5

    :goto_1
    move v3, v6

    move v5, v7

    goto :goto_0

    :cond_0
    const v8, 0xd800

    const/16 v9, 0x3f

    if-lt v3, v8, :cond_1

    const v8, 0xdbff

    if-le v3, v8, :cond_2

    :cond_1
    const v8, 0xdc00

    if-lt v3, v8, :cond_3

    const v8, 0xdfff

    if-gt v3, v8, :cond_3

    :cond_2
    add-int/lit8 v7, v5, 0x1

    aput-byte v9, v1, v5

    goto :goto_1

    :cond_3
    if-nez v4, :cond_4

    mul-int/lit8 v4, v0, 0x3

    new-array v4, v4, [B

    invoke-static {v1, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x1

    move-object v1, v4

    const/4 v4, 0x1

    :cond_4
    const/16 v8, 0x7ff

    if-le v3, v8, :cond_6

    ushr-int/lit8 v8, v3, 0xc

    int-to-char v8, v8

    const/16 v10, -0x20

    if-lez v8, :cond_5

    and-int/lit8 v8, v8, 0xf

    or-int/2addr v8, v10

    int-to-byte v10, v8

    :cond_5
    add-int/lit8 v8, v5, 0x1

    aput-byte v10, v1, v5

    const/16 v5, -0x80

    goto :goto_2

    :cond_6
    const/16 v8, -0x40

    const/16 v9, 0x1f

    move v8, v5

    const/16 v5, -0x40

    :goto_2
    ushr-int/lit8 v10, v3, 0x6

    int-to-char v10, v10

    if-lez v10, :cond_7

    and-int/2addr v9, v10

    or-int/2addr v5, v9

    int-to-byte v5, v5

    :cond_7
    add-int/lit8 v9, v8, 0x1

    aput-byte v5, v1, v8

    add-int/lit8 v5, v9, 0x1

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v7

    int-to-byte v3, v3

    aput-byte v3, v1, v9

    move v3, v6

    goto :goto_0

    :cond_8
    if-eqz v4, :cond_9

    new-array p0, v5, [B

    invoke-static {v1, v2, p0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, p0

    :cond_9
    return-object v1
.end method
