.class public Lorg/apache/xml/security/utils/UnsyncByteArrayOutputStream;
.super Ljava/io/OutputStream;


# static fields
.field private static a:Ljava/lang/ThreadLocal;


# instance fields
.field private b:[B

.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/xml/security/utils/UnsyncByteArrayOutputStream$1;

    invoke-direct {v0}, Lorg/apache/xml/security/utils/UnsyncByteArrayOutputStream$1;-><init>()V

    sput-object v0, Lorg/apache/xml/security/utils/UnsyncByteArrayOutputStream;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/16 v0, 0x2000

    iput v0, p0, Lorg/apache/xml/security/utils/UnsyncByteArrayOutputStream;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/security/utils/UnsyncByteArrayOutputStream;->d:I

    sget-object v0, Lorg/apache/xml/security/utils/UnsyncByteArrayOutputStream;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lorg/apache/xml/security/utils/UnsyncByteArrayOutputStream;->b:[B

    return-void
.end method

.method private a(I)V
    .locals 4

    iget v0, p0, Lorg/apache/xml/security/utils/UnsyncByteArrayOutputStream;->c:I

    :goto_0
    if-le p1, v0, :cond_0

    shl-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    new-array p1, v0, [B

    iget-object v1, p0, Lorg/apache/xml/security/utils/UnsyncByteArrayOutputStream;->b:[B

    iget v2, p0, Lorg/apache/xml/security/utils/UnsyncByteArrayOutputStream;->d:I

    const/4 v3, 0x0

    invoke-static {v1, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lorg/apache/xml/security/utils/UnsyncByteArrayOutputStream;->b:[B

    iput v0, p0, Lorg/apache/xml/security/utils/UnsyncByteArrayOutputStream;->c:I

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 4

    iget v0, p0, Lorg/apache/xml/security/utils/UnsyncByteArrayOutputStream;->d:I

    new-array v1, v0, [B

    iget-object v2, p0, Lorg/apache/xml/security/utils/UnsyncByteArrayOutputStream;->b:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/security/utils/UnsyncByteArrayOutputStream;->d:I

    return-void
.end method

.method public write(I)V
    .locals 3

    iget v0, p0, Lorg/apache/xml/security/utils/UnsyncByteArrayOutputStream;->d:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/apache/xml/security/utils/UnsyncByteArrayOutputStream;->c:I

    if-le v0, v1, :cond_0

    invoke-direct {p0, v0}, Lorg/apache/xml/security/utils/UnsyncByteArrayOutputStream;->a(I)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/security/utils/UnsyncByteArrayOutputStream;->b:[B

    iget v1, p0, Lorg/apache/xml/security/utils/UnsyncByteArrayOutputStream;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/security/utils/UnsyncByteArrayOutputStream;->d:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method

.method public write([B)V
    .locals 5

    iget v0, p0, Lorg/apache/xml/security/utils/UnsyncByteArrayOutputStream;->d:I

    array-length v1, p1

    add-int/2addr v0, v1

    iget v1, p0, Lorg/apache/xml/security/utils/UnsyncByteArrayOutputStream;->c:I

    if-le v0, v1, :cond_0

    invoke-direct {p0, v0}, Lorg/apache/xml/security/utils/UnsyncByteArrayOutputStream;->a(I)V

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/xml/security/utils/UnsyncByteArrayOutputStream;->b:[B

    iget v3, p0, Lorg/apache/xml/security/utils/UnsyncByteArrayOutputStream;->d:I

    array-length v4, p1

    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lorg/apache/xml/security/utils/UnsyncByteArrayOutputStream;->d:I

    return-void
.end method

.method public write([BII)V
    .locals 3

    iget v0, p0, Lorg/apache/xml/security/utils/UnsyncByteArrayOutputStream;->d:I

    add-int/2addr v0, p3

    iget v1, p0, Lorg/apache/xml/security/utils/UnsyncByteArrayOutputStream;->c:I

    if-le v0, v1, :cond_0

    invoke-direct {p0, v0}, Lorg/apache/xml/security/utils/UnsyncByteArrayOutputStream;->a(I)V

    :cond_0
    iget-object v1, p0, Lorg/apache/xml/security/utils/UnsyncByteArrayOutputStream;->b:[B

    iget v2, p0, Lorg/apache/xml/security/utils/UnsyncByteArrayOutputStream;->d:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lorg/apache/xml/security/utils/UnsyncByteArrayOutputStream;->d:I

    return-void
.end method
