.class public final Lin/juspay/a/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/juspay/a/a/a$c;,
        Lin/juspay/a/a/a$a;,
        Lin/juspay/a/a/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;",
        "Ljava/lang/Iterable<",
        "[B>;"
    }
.end annotation


# static fields
.field private static final f:[B


# instance fields
.field final a:Ljava/io/RandomAccessFile;

.field final b:Ljava/io/File;

.field final c:Z

.field final d:I

.field e:J

.field private final g:[B

.field private final h:Z

.field private i:I

.field private j:Lin/juspay/a/a/a$b;

.field private k:Lin/juspay/a/a/a$b;

.field private l:I

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1000

    new-array v0, v0, [B

    sput-object v0, Lin/juspay/a/a/a;->f:[B

    return-void
.end method

.method constructor <init>(Ljava/io/File;Ljava/io/RandomAccessFile;ZZ)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v1, v0, [B

    iput-object v1, p0, Lin/juspay/a/a/a;->g:[B

    const/4 v1, 0x0

    iput v1, p0, Lin/juspay/a/a/a;->l:I

    iput-object p1, p0, Lin/juspay/a/a/a;->b:Ljava/io/File;

    iput-object p2, p0, Lin/juspay/a/a/a;->a:Ljava/io/RandomAccessFile;

    iput-boolean p3, p0, Lin/juspay/a/a/a;->h:Z

    const-wide/16 v2, 0x0

    invoke-virtual {p2, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object p1, p0, Lin/juspay/a/a/a;->g:[B

    invoke-virtual {p2, p1}, Ljava/io/RandomAccessFile;->readFully([B)V

    const/4 p1, 0x1

    if-nez p4, :cond_0

    iget-object p3, p0, Lin/juspay/a/a/a;->g:[B

    aget-byte p3, p3, v1

    and-int/lit16 p3, p3, 0x80

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-boolean p3, p0, Lin/juspay/a/a/a;->c:Z

    const/16 p4, 0xc

    const/4 v2, 0x4

    const/16 v3, 0x10

    if-eqz p3, :cond_2

    iput v0, p0, Lin/juspay/a/a/a;->d:I

    iget-object p3, p0, Lin/juspay/a/a/a;->g:[B

    invoke-static {p3, v1}, Lin/juspay/a/a/a;->a([BI)I

    move-result p3

    const v0, 0x7fffffff

    and-int/2addr p3, v0

    if-ne p3, p1, :cond_1

    iget-object p1, p0, Lin/juspay/a/a/a;->g:[B

    invoke-static {p1, v2}, Lin/juspay/a/a/a;->b([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lin/juspay/a/a/a;->e:J

    iget-object p1, p0, Lin/juspay/a/a/a;->g:[B

    invoke-static {p1, p4}, Lin/juspay/a/a/a;->a([BI)I

    move-result p1

    iput p1, p0, Lin/juspay/a/a/a;->i:I

    iget-object p1, p0, Lin/juspay/a/a/a;->g:[B

    invoke-static {p1, v3}, Lin/juspay/a/a/a;->b([BI)J

    move-result-wide p3

    iget-object p1, p0, Lin/juspay/a/a/a;->g:[B

    const/16 v0, 0x18

    invoke-static {p1, v0}, Lin/juspay/a/a/a;->b([BI)J

    move-result-wide v0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Unable to read version "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " format. Supported versions are 1 and legacy."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iput v3, p0, Lin/juspay/a/a/a;->d:I

    iget-object p1, p0, Lin/juspay/a/a/a;->g:[B

    invoke-static {p1, v1}, Lin/juspay/a/a/a;->a([BI)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lin/juspay/a/a/a;->e:J

    iget-object p1, p0, Lin/juspay/a/a/a;->g:[B

    invoke-static {p1, v2}, Lin/juspay/a/a/a;->a([BI)I

    move-result p1

    iput p1, p0, Lin/juspay/a/a/a;->i:I

    iget-object p1, p0, Lin/juspay/a/a/a;->g:[B

    const/16 p3, 0x8

    invoke-static {p1, p3}, Lin/juspay/a/a/a;->a([BI)I

    move-result p1

    int-to-long v0, p1

    iget-object p1, p0, Lin/juspay/a/a/a;->g:[B

    invoke-static {p1, p4}, Lin/juspay/a/a/a;->a([BI)I

    move-result p1

    int-to-long p3, p1

    move-wide v6, p3

    move-wide p3, v0

    move-wide v0, v6

    :goto_1
    iget-wide v2, p0, Lin/juspay/a/a/a;->e:J

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-gtz p1, :cond_4

    iget-wide p1, p0, Lin/juspay/a/a/a;->e:J

    iget v2, p0, Lin/juspay/a/a/a;->d:I

    int-to-long v2, v2

    cmp-long v4, p1, v2

    if-lez v4, :cond_3

    invoke-direct {p0, p3, p4}, Lin/juspay/a/a/a;->a(J)Lin/juspay/a/a/a$b;

    move-result-object p1

    iput-object p1, p0, Lin/juspay/a/a/a;->j:Lin/juspay/a/a/a$b;

    invoke-direct {p0, v0, v1}, Lin/juspay/a/a/a;->a(J)Lin/juspay/a/a/a$b;

    move-result-object p1

    iput-object p1, p0, Lin/juspay/a/a/a;->k:Lin/juspay/a/a/a$b;

    return-void

    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "File is corrupt; length stored in header ("

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide p3, p0, Lin/juspay/a/a/a;->e:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, ") is invalid."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "File is truncated. Expected length: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lin/juspay/a/a/a;->e:J

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, ", Actual length: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lin/juspay/a/a/a;)I
    .locals 0

    iget p0, p0, Lin/juspay/a/a/a;->l:I

    return p0
.end method

.method private static a([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, p0

    return v0
.end method

.method private a(J)Lin/juspay/a/a/a$b;
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    sget-object p1, Lin/juspay/a/a/a$b;->a:Lin/juspay/a/a/a$b;

    return-object p1

    :cond_0
    iget-object v3, p0, Lin/juspay/a/a/a;->g:[B

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Lin/juspay/a/a/a;->b(J[BII)V

    iget-object v0, p0, Lin/juspay/a/a/a;->g:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lin/juspay/a/a/a;->a([BI)I

    move-result v0

    new-instance v1, Lin/juspay/a/a/a$b;

    invoke-direct {v1, p1, p2, v0}, Lin/juspay/a/a/a$b;-><init>(JI)V

    return-object v1
.end method

.method static synthetic a(Lin/juspay/a/a/a;J)Lin/juspay/a/a/a$b;
    .locals 0

    invoke-direct {p0, p1, p2}, Lin/juspay/a/a/a;->a(J)Lin/juspay/a/a/a$b;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/io/File;)Ljava/io/RandomAccessFile;
    .locals 2

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rwd"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Ljava/io/File;Z)Ljava/io/RandomAccessFile;
    .locals 0

    invoke-static {p0, p1}, Lin/juspay/a/a/a;->b(Ljava/io/File;Z)Ljava/io/RandomAccessFile;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")TT;^TT;"
        }
    .end annotation

    throw p0
.end method

.method private a(JIJJ)V
    .locals 6

    iget-object v0, p0, Lin/juspay/a/a/a;->a:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-boolean v0, p0, Lin/juspay/a/a/a;->c:Z

    const/16 v1, 0x10

    const/16 v2, 0xc

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lin/juspay/a/a/a;->g:[B

    const v5, -0x7fffffff

    invoke-static {v0, v4, v5}, Lin/juspay/a/a/a;->b([BII)V

    iget-object v0, p0, Lin/juspay/a/a/a;->g:[B

    invoke-static {v0, v3, p1, p2}, Lin/juspay/a/a/a;->a([BIJ)V

    iget-object p1, p0, Lin/juspay/a/a/a;->g:[B

    invoke-static {p1, v2, p3}, Lin/juspay/a/a/a;->b([BII)V

    iget-object p1, p0, Lin/juspay/a/a/a;->g:[B

    invoke-static {p1, v1, p4, p5}, Lin/juspay/a/a/a;->a([BIJ)V

    iget-object p1, p0, Lin/juspay/a/a/a;->g:[B

    const/16 p2, 0x18

    invoke-static {p1, p2, p6, p7}, Lin/juspay/a/a/a;->a([BIJ)V

    iget-object p1, p0, Lin/juspay/a/a/a;->a:Ljava/io/RandomAccessFile;

    iget-object p2, p0, Lin/juspay/a/a/a;->g:[B

    const/16 p3, 0x20

    invoke-virtual {p1, p2, v4, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    return-void

    :cond_0
    iget-object v0, p0, Lin/juspay/a/a/a;->g:[B

    long-to-int p2, p1

    invoke-static {v0, v4, p2}, Lin/juspay/a/a/a;->b([BII)V

    iget-object p1, p0, Lin/juspay/a/a/a;->g:[B

    invoke-static {p1, v3, p3}, Lin/juspay/a/a/a;->b([BII)V

    iget-object p1, p0, Lin/juspay/a/a/a;->g:[B

    const/16 p2, 0x8

    long-to-int p3, p4

    invoke-static {p1, p2, p3}, Lin/juspay/a/a/a;->b([BII)V

    iget-object p1, p0, Lin/juspay/a/a/a;->g:[B

    long-to-int p2, p6

    invoke-static {p1, v2, p2}, Lin/juspay/a/a/a;->b([BII)V

    iget-object p1, p0, Lin/juspay/a/a/a;->a:Ljava/io/RandomAccessFile;

    iget-object p2, p0, Lin/juspay/a/a/a;->g:[B

    invoke-virtual {p1, p2, v4, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    return-void
.end method

.method private a(JJ)V
    .locals 7

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_0

    sget-object v0, Lin/juspay/a/a/a;->f:[B

    array-length v0, v0

    int-to-long v0, v0

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v6, v0

    sget-object v3, Lin/juspay/a/a/a;->f:[B

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lin/juspay/a/a/a;->a(J[BII)V

    int-to-long v0, v6

    sub-long/2addr p3, v0

    add-long/2addr p1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(J[BII)V
    .locals 5

    invoke-direct {p0, p1, p2}, Lin/juspay/a/a/a;->b(J)J

    move-result-wide p1

    int-to-long v0, p5

    add-long/2addr v0, p1

    iget-wide v2, p0, Lin/juspay/a/a/a;->e:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    iget-object v0, p0, Lin/juspay/a/a/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object p1, p0, Lin/juspay/a/a/a;->a:Ljava/io/RandomAccessFile;

    :goto_0
    invoke-virtual {p1, p3, p4, p5}, Ljava/io/RandomAccessFile;->write([BII)V

    return-void

    :cond_0
    sub-long/2addr v2, p1

    long-to-int v0, v2

    iget-object v1, p0, Lin/juspay/a/a/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object p1, p0, Lin/juspay/a/a/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, p3, p4, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-object p1, p0, Lin/juspay/a/a/a;->a:Ljava/io/RandomAccessFile;

    iget p2, p0, Lin/juspay/a/a/a;->d:I

    int-to-long v1, p2

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object p1, p0, Lin/juspay/a/a/a;->a:Ljava/io/RandomAccessFile;

    add-int/2addr p4, v0

    sub-int/2addr p5, v0

    goto :goto_0
.end method

.method static synthetic a(Lin/juspay/a/a/a;J[BII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lin/juspay/a/a/a;->b(J[BII)V

    return-void
.end method

.method private static a([BIJ)V
    .locals 3

    const/16 v0, 0x38

    shr-long v0, p2, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x30

    shr-long v1, p2, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    const/16 v1, 0x28

    shr-long v1, p2, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x3

    const/16 v1, 0x20

    shr-long v1, p2, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x4

    const/16 v1, 0x18

    shr-long v1, p2, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x5

    const/16 v1, 0x10

    shr-long v1, p2, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x6

    const/16 v1, 0x8

    shr-long v1, p2, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p0, v0

    add-int/lit8 p1, p1, 0x7

    long-to-int p3, p2

    int-to-byte p2, p3

    aput-byte p2, p0, p1

    return-void
.end method

.method private b(J)J
    .locals 4

    iget-wide v0, p0, Lin/juspay/a/a/a;->e:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    return-wide p1

    :cond_0
    iget v2, p0, Lin/juspay/a/a/a;->d:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    sub-long/2addr v2, v0

    return-wide v2
.end method

.method static synthetic b(Lin/juspay/a/a/a;J)J
    .locals 0

    invoke-direct {p0, p1, p2}, Lin/juspay/a/a/a;->b(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static b([BI)J
    .locals 7

    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x4

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x5

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x6

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x7

    aget-byte p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method static synthetic b(Lin/juspay/a/a/a;)Lin/juspay/a/a/a$b;
    .locals 0

    iget-object p0, p0, Lin/juspay/a/a/a;->j:Lin/juspay/a/a/a$b;

    return-object p0
.end method

.method private static b(Ljava/io/File;Z)Ljava/io/RandomAccessFile;
    .locals 6

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lin/juspay/a/a/a;->a(Ljava/io/File;)Ljava/io/RandomAccessFile;

    move-result-object v1

    const-wide/16 v2, 0x1000

    :try_start_0
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    if-eqz p1, :cond_0

    const/16 p1, 0x1000

    invoke-virtual {v1, p1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    goto :goto_0

    :cond_0
    const p1, -0x7fffffff

    invoke-virtual {v1, p1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->writeLong(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Rename failed!"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    throw p0

    :cond_2
    :goto_1
    invoke-static {p0}, Lin/juspay/a/a/a;->a(Ljava/io/File;)Ljava/io/RandomAccessFile;

    move-result-object p0

    return-object p0
.end method

.method private b(J[BII)V
    .locals 5

    invoke-direct {p0, p1, p2}, Lin/juspay/a/a/a;->b(J)J

    move-result-wide p1

    int-to-long v0, p5

    add-long/2addr v0, p1

    iget-wide v2, p0, Lin/juspay/a/a/a;->e:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    iget-object v0, p0, Lin/juspay/a/a/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object p1, p0, Lin/juspay/a/a/a;->a:Ljava/io/RandomAccessFile;

    :goto_0
    invoke-virtual {p1, p3, p4, p5}, Ljava/io/RandomAccessFile;->readFully([BII)V

    return-void

    :cond_0
    sub-long/2addr v2, p1

    long-to-int v0, v2

    iget-object v1, p0, Lin/juspay/a/a/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object p1, p0, Lin/juspay/a/a/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, p3, p4, v0}, Ljava/io/RandomAccessFile;->readFully([BII)V

    iget-object p1, p0, Lin/juspay/a/a/a;->a:Ljava/io/RandomAccessFile;

    iget p2, p0, Lin/juspay/a/a/a;->d:I

    int-to-long v1, p2

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object p1, p0, Lin/juspay/a/a/a;->a:Ljava/io/RandomAccessFile;

    add-int/2addr p4, v0

    sub-int/2addr p5, v0

    goto :goto_0
.end method

.method private static b([BII)V
    .locals 2

    shr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 p1, p1, 0x3

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    return-void
.end method

.method private c(J)V
    .locals 17

    move-object/from16 v8, p0

    const-wide/16 v0, 0x4

    add-long v2, p1, v0

    invoke-direct/range {p0 .. p0}, Lin/juspay/a/a/a;->e()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-ltz v6, :cond_0

    return-void

    :cond_0
    iget-wide v6, v8, Lin/juspay/a/a/a;->e:J

    :goto_0
    add-long/2addr v4, v6

    const/4 v9, 0x1

    shl-long v9, v6, v9

    cmp-long v6, v4, v2

    if-ltz v6, :cond_5

    invoke-direct {v8, v9, v10}, Lin/juspay/a/a/a;->d(J)V

    iget-object v2, v8, Lin/juspay/a/a/a;->k:Lin/juspay/a/a/a$b;

    iget-wide v2, v2, Lin/juspay/a/a/a$b;->b:J

    add-long/2addr v2, v0

    iget-object v0, v8, Lin/juspay/a/a/a;->k:Lin/juspay/a/a/a$b;

    iget v0, v0, Lin/juspay/a/a/a$b;->c:I

    int-to-long v0, v0

    add-long/2addr v2, v0

    invoke-direct {v8, v2, v3}, Lin/juspay/a/a/a;->b(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    iget-object v4, v8, Lin/juspay/a/a/a;->j:Lin/juspay/a/a/a$b;

    iget-wide v4, v4, Lin/juspay/a/a/a$b;->b:J

    cmp-long v6, v0, v4

    if-gtz v6, :cond_2

    iget-object v2, v8, Lin/juspay/a/a/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    iget-wide v3, v8, Lin/juspay/a/a/a;->e:J

    invoke-virtual {v2, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    iget v3, v8, Lin/juspay/a/a/a;->d:I

    int-to-long v4, v3

    sub-long/2addr v0, v4

    int-to-long v12, v3

    move-object v11, v2

    move-wide v14, v0

    move-object/from16 v16, v2

    invoke-virtual/range {v11 .. v16}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    move-wide v11, v0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Copied insufficient number of bytes!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2
    move-wide v11, v2

    :goto_1
    iget-object v0, v8, Lin/juspay/a/a/a;->k:Lin/juspay/a/a/a$b;

    iget-wide v0, v0, Lin/juspay/a/a/a$b;->b:J

    iget-object v2, v8, Lin/juspay/a/a/a;->j:Lin/juspay/a/a/a$b;

    iget-wide v2, v2, Lin/juspay/a/a/a$b;->b:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_3

    iget-wide v0, v8, Lin/juspay/a/a/a;->e:J

    iget-object v2, v8, Lin/juspay/a/a/a;->k:Lin/juspay/a/a/a$b;

    iget-wide v2, v2, Lin/juspay/a/a/a$b;->b:J

    add-long/2addr v0, v2

    iget v2, v8, Lin/juspay/a/a/a;->d:I

    int-to-long v2, v2

    sub-long v13, v0, v2

    iget v3, v8, Lin/juspay/a/a/a;->i:I

    iget-object v0, v8, Lin/juspay/a/a/a;->j:Lin/juspay/a/a/a$b;

    iget-wide v4, v0, Lin/juspay/a/a/a$b;->b:J

    move-object/from16 v0, p0

    move-wide v1, v9

    move-wide v6, v13

    invoke-direct/range {v0 .. v7}, Lin/juspay/a/a/a;->a(JIJJ)V

    new-instance v0, Lin/juspay/a/a/a$b;

    iget-object v1, v8, Lin/juspay/a/a/a;->k:Lin/juspay/a/a/a$b;

    iget v1, v1, Lin/juspay/a/a/a$b;->c:I

    invoke-direct {v0, v13, v14, v1}, Lin/juspay/a/a/a$b;-><init>(JI)V

    iput-object v0, v8, Lin/juspay/a/a/a;->k:Lin/juspay/a/a/a$b;

    goto :goto_2

    :cond_3
    iget v3, v8, Lin/juspay/a/a/a;->i:I

    iget-object v0, v8, Lin/juspay/a/a/a;->j:Lin/juspay/a/a/a$b;

    iget-wide v4, v0, Lin/juspay/a/a/a$b;->b:J

    iget-object v0, v8, Lin/juspay/a/a/a;->k:Lin/juspay/a/a/a$b;

    iget-wide v6, v0, Lin/juspay/a/a/a$b;->b:J

    move-object/from16 v0, p0

    move-wide v1, v9

    invoke-direct/range {v0 .. v7}, Lin/juspay/a/a/a;->a(JIJJ)V

    :goto_2
    iput-wide v9, v8, Lin/juspay/a/a/a;->e:J

    iget-boolean v0, v8, Lin/juspay/a/a/a;->h:Z

    if-eqz v0, :cond_4

    iget v0, v8, Lin/juspay/a/a/a;->d:I

    int-to-long v0, v0

    invoke-direct {v8, v0, v1, v11, v12}, Lin/juspay/a/a/a;->a(JJ)V

    :cond_4
    return-void

    :cond_5
    move-wide v6, v9

    goto/16 :goto_0
.end method

.method static synthetic c(Lin/juspay/a/a/a;)Z
    .locals 0

    iget-boolean p0, p0, Lin/juspay/a/a/a;->m:Z

    return p0
.end method

.method static synthetic d(Lin/juspay/a/a/a;)I
    .locals 0

    iget p0, p0, Lin/juspay/a/a/a;->i:I

    return p0
.end method

.method private d()J
    .locals 7

    iget v0, p0, Lin/juspay/a/a/a;->i:I

    if-nez v0, :cond_0

    iget v0, p0, Lin/juspay/a/a/a;->d:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lin/juspay/a/a/a;->k:Lin/juspay/a/a/a$b;

    iget-wide v0, v0, Lin/juspay/a/a/a$b;->b:J

    iget-object v2, p0, Lin/juspay/a/a/a;->j:Lin/juspay/a/a/a$b;

    iget-wide v2, v2, Lin/juspay/a/a/a$b;->b:J

    const-wide/16 v4, 0x4

    cmp-long v6, v0, v2

    iget-object v0, p0, Lin/juspay/a/a/a;->k:Lin/juspay/a/a/a$b;

    iget-wide v0, v0, Lin/juspay/a/a/a$b;->b:J

    if-ltz v6, :cond_1

    iget-object v2, p0, Lin/juspay/a/a/a;->j:Lin/juspay/a/a/a$b;

    iget-wide v2, v2, Lin/juspay/a/a/a$b;->b:J

    sub-long/2addr v0, v2

    add-long/2addr v0, v4

    iget-object v2, p0, Lin/juspay/a/a/a;->k:Lin/juspay/a/a/a$b;

    iget v2, v2, Lin/juspay/a/a/a$b;->c:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Lin/juspay/a/a/a;->d:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0

    :cond_1
    add-long/2addr v0, v4

    iget-object v2, p0, Lin/juspay/a/a/a;->k:Lin/juspay/a/a/a$b;

    iget v2, v2, Lin/juspay/a/a/a$b;->c:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lin/juspay/a/a/a;->e:J

    add-long/2addr v0, v2

    iget-object v2, p0, Lin/juspay/a/a/a;->j:Lin/juspay/a/a/a$b;

    iget-wide v2, v2, Lin/juspay/a/a/a$b;->b:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private d(J)V
    .locals 1

    iget-object v0, p0, Lin/juspay/a/a/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->setLength(J)V

    iget-object p1, p0, Lin/juspay/a/a/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->force(Z)V

    return-void
.end method

.method private e()J
    .locals 4

    iget-wide v0, p0, Lin/juspay/a/a/a;->e:J

    invoke-direct {p0}, Lin/juspay/a/a/a;->d()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final a(I)V
    .locals 20

    move-object/from16 v8, p0

    move/from16 v9, p1

    if-ltz v9, :cond_6

    if-nez v9, :cond_0

    return-void

    :cond_0
    iget v0, v8, Lin/juspay/a/a/a;->i:I

    if-ne v9, v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lin/juspay/a/a/a;->c()V

    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lin/juspay/a/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, v8, Lin/juspay/a/a/a;->i:I

    if-gt v9, v0, :cond_4

    iget-object v0, v8, Lin/juspay/a/a/a;->j:Lin/juspay/a/a/a$b;

    iget-wide v10, v0, Lin/juspay/a/a/a$b;->b:J

    const-wide/16 v0, 0x0

    iget-object v2, v8, Lin/juspay/a/a/a;->j:Lin/juspay/a/a/a$b;

    iget-wide v2, v2, Lin/juspay/a/a/a$b;->b:J

    iget-object v4, v8, Lin/juspay/a/a/a;->j:Lin/juspay/a/a/a$b;

    iget v4, v4, Lin/juspay/a/a/a$b;->c:I

    const/4 v6, 0x0

    move-wide v12, v0

    move-wide v14, v2

    move v7, v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v9, :cond_2

    add-int/lit8 v0, v7, 0x4

    int-to-long v0, v0

    add-long/2addr v12, v0

    const-wide/16 v0, 0x4

    add-long/2addr v14, v0

    int-to-long v0, v7

    add-long/2addr v14, v0

    invoke-direct {v8, v14, v15}, Lin/juspay/a/a/a;->b(J)J

    move-result-wide v14

    iget-object v3, v8, Lin/juspay/a/a/a;->g:[B

    const/4 v4, 0x0

    const/4 v7, 0x4

    move-object/from16 v0, p0

    move-wide v1, v14

    move/from16 v16, v5

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lin/juspay/a/a/a;->b(J[BII)V

    iget-object v0, v8, Lin/juspay/a/a/a;->g:[B

    invoke-static {v0, v6}, Lin/juspay/a/a/a;->a([BI)I

    move-result v7

    add-int/lit8 v5, v16, 0x1

    goto :goto_0

    :cond_2
    iget-wide v1, v8, Lin/juspay/a/a/a;->e:J

    iget v0, v8, Lin/juspay/a/a/a;->i:I

    sub-int v3, v0, v9

    iget-object v0, v8, Lin/juspay/a/a/a;->k:Lin/juspay/a/a/a$b;

    iget-wide v4, v0, Lin/juspay/a/a/a$b;->b:J

    move-object/from16 v0, p0

    move-wide/from16 v16, v4

    move-wide v4, v14

    move-wide/from16 v18, v10

    move v10, v7

    move-wide/from16 v6, v16

    invoke-direct/range {v0 .. v7}, Lin/juspay/a/a/a;->a(JIJJ)V

    iget v0, v8, Lin/juspay/a/a/a;->i:I

    sub-int/2addr v0, v9

    iput v0, v8, Lin/juspay/a/a/a;->i:I

    iget v0, v8, Lin/juspay/a/a/a;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v8, Lin/juspay/a/a/a;->l:I

    new-instance v0, Lin/juspay/a/a/a$b;

    invoke-direct {v0, v14, v15, v10}, Lin/juspay/a/a/a$b;-><init>(JI)V

    iput-object v0, v8, Lin/juspay/a/a/a;->j:Lin/juspay/a/a/a$b;

    iget-boolean v0, v8, Lin/juspay/a/a/a;->h:Z

    if-eqz v0, :cond_3

    move-wide/from16 v0, v18

    invoke-direct {v8, v0, v1, v12, v13}, Lin/juspay/a/a/a;->a(JJ)V

    :cond_3
    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot remove more elements ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") than present in queue ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lin/juspay/a/a/a;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot remove negative ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") number of elements."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a([B)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lin/juspay/a/a/a;->a([BII)V

    return-void
.end method

.method public final a([BII)V
    .locals 13

    move-object v8, p0

    move-object v6, p1

    move/from16 v7, p3

    if-eqz v6, :cond_5

    or-int v0, p2, v7

    if-ltz v0, :cond_4

    array-length v0, v6

    sub-int/2addr v0, p2

    if-gt v7, v0, :cond_4

    iget-boolean v0, v8, Lin/juspay/a/a/a;->m:Z

    if-nez v0, :cond_3

    int-to-long v0, v7

    invoke-direct {p0, v0, v1}, Lin/juspay/a/a/a;->c(J)V

    invoke-virtual {p0}, Lin/juspay/a/a/a;->a()Z

    move-result v9

    const-wide/16 v10, 0x4

    if-eqz v9, :cond_0

    iget v0, v8, Lin/juspay/a/a/a;->d:I

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    iget-object v0, v8, Lin/juspay/a/a/a;->k:Lin/juspay/a/a/a$b;

    iget-wide v0, v0, Lin/juspay/a/a/a$b;->b:J

    add-long/2addr v0, v10

    iget-object v2, v8, Lin/juspay/a/a/a;->k:Lin/juspay/a/a/a$b;

    iget v2, v2, Lin/juspay/a/a/a$b;->c:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lin/juspay/a/a/a;->b(J)J

    move-result-wide v0

    :goto_0
    new-instance v12, Lin/juspay/a/a/a$b;

    invoke-direct {v12, v0, v1, v7}, Lin/juspay/a/a/a$b;-><init>(JI)V

    iget-object v0, v8, Lin/juspay/a/a/a;->g:[B

    const/4 v1, 0x0

    invoke-static {v0, v1, v7}, Lin/juspay/a/a/a;->b([BII)V

    iget-wide v1, v12, Lin/juspay/a/a/a$b;->b:J

    iget-object v3, v8, Lin/juspay/a/a/a;->g:[B

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lin/juspay/a/a/a;->a(J[BII)V

    iget-wide v0, v12, Lin/juspay/a/a/a$b;->b:J

    add-long v1, v0, v10

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lin/juspay/a/a/a;->a(J[BII)V

    if-eqz v9, :cond_1

    iget-wide v0, v12, Lin/juspay/a/a/a$b;->b:J

    goto :goto_1

    :cond_1
    iget-object v0, v8, Lin/juspay/a/a/a;->j:Lin/juspay/a/a/a$b;

    iget-wide v0, v0, Lin/juspay/a/a/a$b;->b:J

    :goto_1
    move-wide v4, v0

    iget-wide v1, v8, Lin/juspay/a/a/a;->e:J

    iget v0, v8, Lin/juspay/a/a/a;->i:I

    add-int/lit8 v3, v0, 0x1

    iget-wide v6, v12, Lin/juspay/a/a/a$b;->b:J

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lin/juspay/a/a/a;->a(JIJJ)V

    iput-object v12, v8, Lin/juspay/a/a/a;->k:Lin/juspay/a/a/a$b;

    iget v0, v8, Lin/juspay/a/a/a;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v8, Lin/juspay/a/a/a;->i:I

    iget v0, v8, Lin/juspay/a/a/a;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v8, Lin/juspay/a/a/a;->l:I

    if-eqz v9, :cond_2

    iput-object v12, v8, Lin/juspay/a/a/a;->j:Lin/juspay/a/a/a$b;

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "data == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a()Z
    .locals 1

    iget v0, p0, Lin/juspay/a/a/a;->i:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lin/juspay/a/a/a;->a(I)V

    return-void
.end method

.method public final c()V
    .locals 9

    iget-boolean v0, p0, Lin/juspay/a/a/a;->m:Z

    if-nez v0, :cond_2

    const-wide/16 v2, 0x1000

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lin/juspay/a/a/a;->a(JIJJ)V

    iget-boolean v0, p0, Lin/juspay/a/a/a;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lin/juspay/a/a/a;->a:Ljava/io/RandomAccessFile;

    iget v2, p0, Lin/juspay/a/a/a;->d:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lin/juspay/a/a/a;->a:Ljava/io/RandomAccessFile;

    sget-object v2, Lin/juspay/a/a/a;->f:[B

    iget v3, p0, Lin/juspay/a/a/a;->d:I

    rsub-int v3, v3, 0x1000

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    :cond_0
    iput v1, p0, Lin/juspay/a/a/a;->i:I

    sget-object v0, Lin/juspay/a/a/a$b;->a:Lin/juspay/a/a/a$b;

    iput-object v0, p0, Lin/juspay/a/a/a;->j:Lin/juspay/a/a/a$b;

    sget-object v0, Lin/juspay/a/a/a$b;->a:Lin/juspay/a/a/a$b;

    iput-object v0, p0, Lin/juspay/a/a/a;->k:Lin/juspay/a/a/a$b;

    iget-wide v0, p0, Lin/juspay/a/a/a;->e:J

    const-wide/16 v2, 0x1000

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    invoke-direct {p0, v2, v3}, Lin/juspay/a/a/a;->d(J)V

    :cond_1
    iput-wide v2, p0, Lin/juspay/a/a/a;->e:J

    iget v0, p0, Lin/juspay/a/a/a;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lin/juspay/a/a/a;->l:I

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lin/juspay/a/a/a;->m:Z

    iget-object v0, p0, Lin/juspay/a/a/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "[B>;"
        }
    .end annotation

    new-instance v0, Lin/juspay/a/a/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lin/juspay/a/a/a$c;-><init>(Lin/juspay/a/a/a;Lin/juspay/a/a/a$1;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "QueueFile{file="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lin/juspay/a/a/a;->b:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", zero="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lin/juspay/a/a/a;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", versioned="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lin/juspay/a/a/a;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lin/juspay/a/a/a;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lin/juspay/a/a/a;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", first="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lin/juspay/a/a/a;->j:Lin/juspay/a/a/a$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", last="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lin/juspay/a/a/a;->k:Lin/juspay/a/a/a$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
