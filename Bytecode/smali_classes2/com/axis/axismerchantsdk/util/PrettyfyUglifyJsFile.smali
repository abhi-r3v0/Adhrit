.class public Lcom/axis/axismerchantsdk/util/PrettyfyUglifyJsFile;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private static onNavigationEvent([B)[B
    .locals 5

    const/16 v0, 0x400

    new-array v1, v0, [B

    .line 49
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 50
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 51
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v2, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 53
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    const/4 v4, 0x0

    .line 54
    invoke-virtual {p0, v1, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 57
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 58
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 59
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static onPostMessage([B)Ljava/lang/String;
    .locals 12

    const/16 v0, 0x8

    :try_start_0
    new-array v1, v0, [B

    .line 20
    array-length v2, p0

    sub-int/2addr v2, v0

    new-array v2, v2, [B

    .line 23
    array-length v3, p0

    new-array v4, v0, [[I

    const/4 v5, 0x2

    new-array v6, v5, [I

    const/4 v7, 0x0

    aput v7, v6, v7

    const/16 v8, 0x9

    const/4 v9, 0x1

    aput v8, v6, v9

    aput-object v6, v4, v7

    new-array v6, v5, [I

    aput v9, v6, v7

    const/16 v10, 0x13

    aput v10, v6, v9

    aput-object v6, v4, v9

    new-array v6, v5, [I

    aput v5, v6, v7

    const/16 v10, 0x1d

    aput v10, v6, v9

    aput-object v6, v4, v5

    new-array v6, v5, [I

    const/4 v10, 0x3

    aput v10, v6, v7

    const/16 v11, 0x27

    aput v11, v6, v9

    aput-object v6, v4, v10

    new-array v6, v5, [I

    const/4 v10, 0x4

    aput v10, v6, v7

    const/16 v11, 0x31

    aput v11, v6, v9

    aput-object v6, v4, v10

    new-array v6, v5, [I

    const/4 v10, 0x5

    aput v10, v6, v7

    const/16 v11, 0x3b

    aput v11, v6, v9

    aput-object v6, v4, v10

    new-array v6, v5, [I

    const/4 v10, 0x6

    aput v10, v6, v7

    const/16 v11, 0x45

    aput v11, v6, v9

    aput-object v6, v4, v10

    new-array v5, v5, [I

    const/4 v6, 0x7

    aput v6, v5, v7

    const/16 v10, 0x4f

    aput v10, v5, v9

    aput-object v5, v4, v6

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_0

    .line 26
    aget-object v6, v4, v5

    aget v6, v6, v7

    aget-object v10, v4, v5

    aget v10, v10, v9

    aget-byte v10, p0, v10

    aput-byte v10, v1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v7, v3, :cond_2

    if-lez v7, :cond_1

    .line 29
    rem-int/lit8 v6, v7, 0xa

    if-ne v6, v8, :cond_1

    if-ge v4, v0, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 34
    :cond_1
    aget-byte v6, p0, v7

    rem-int/lit8 v9, v5, 0x8

    aget-byte v9, v1, v9

    xor-int/2addr v6, v9

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 38
    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-static {v2}, Lcom/axis/axismerchantsdk/util/PrettyfyUglifyJsFile;->onNavigationEvent([B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method
