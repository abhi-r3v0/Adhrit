.class public Lorg/apache/xml/security/utils/UnsyncBufferedOutputStream;
.super Ljava/io/OutputStream;


# static fields
.field private static d:Ljava/lang/ThreadLocal;


# instance fields
.field final a:Ljava/io/OutputStream;

.field final b:[B

.field c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/xml/security/utils/UnsyncBufferedOutputStream$1;

    invoke-direct {v0}, Lorg/apache/xml/security/utils/UnsyncBufferedOutputStream$1;-><init>()V

    sput-object v0, Lorg/apache/xml/security/utils/UnsyncBufferedOutputStream;->d:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/security/utils/UnsyncBufferedOutputStream;->c:I

    sget-object v0, Lorg/apache/xml/security/utils/UnsyncBufferedOutputStream;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lorg/apache/xml/security/utils/UnsyncBufferedOutputStream;->b:[B

    iput-object p1, p0, Lorg/apache/xml/security/utils/UnsyncBufferedOutputStream;->a:Ljava/io/OutputStream;

    return-void
.end method

.method private final a()V
    .locals 4

    iget v0, p0, Lorg/apache/xml/security/utils/UnsyncBufferedOutputStream;->c:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v2, p0, Lorg/apache/xml/security/utils/UnsyncBufferedOutputStream;->a:Ljava/io/OutputStream;

    iget-object v3, p0, Lorg/apache/xml/security/utils/UnsyncBufferedOutputStream;->b:[B

    invoke-virtual {v2, v3, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    :cond_0
    iput v1, p0, Lorg/apache/xml/security/utils/UnsyncBufferedOutputStream;->c:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public flush()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xml/security/utils/UnsyncBufferedOutputStream;->a()V

    iget-object v0, p0, Lorg/apache/xml/security/utils/UnsyncBufferedOutputStream;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 3

    iget v0, p0, Lorg/apache/xml/security/utils/UnsyncBufferedOutputStream;->c:I

    const/16 v1, 0x2000

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/xml/security/utils/UnsyncBufferedOutputStream;->a()V

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/security/utils/UnsyncBufferedOutputStream;->b:[B

    iget v1, p0, Lorg/apache/xml/security/utils/UnsyncBufferedOutputStream;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/security/utils/UnsyncBufferedOutputStream;->c:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method

.method public write([B)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 3

    iget v0, p0, Lorg/apache/xml/security/utils/UnsyncBufferedOutputStream;->c:I

    add-int/2addr v0, p3

    const/16 v1, 0x2000

    if-le v0, v1, :cond_1

    invoke-direct {p0}, Lorg/apache/xml/security/utils/UnsyncBufferedOutputStream;->a()V

    if-le p3, v1, :cond_0

    iget-object v0, p0, Lorg/apache/xml/security/utils/UnsyncBufferedOutputStream;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void

    :cond_0
    move v0, p3

    :cond_1
    iget-object v1, p0, Lorg/apache/xml/security/utils/UnsyncBufferedOutputStream;->b:[B

    iget v2, p0, Lorg/apache/xml/security/utils/UnsyncBufferedOutputStream;->c:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lorg/apache/xml/security/utils/UnsyncBufferedOutputStream;->c:I

    return-void
.end method
