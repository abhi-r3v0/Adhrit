.class final Lin/juspay/a/a/a$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/juspay/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "[B>;"
    }
.end annotation


# instance fields
.field a:I

.field b:I

.field final synthetic c:Lin/juspay/a/a/a;

.field private d:J


# direct methods
.method private constructor <init>(Lin/juspay/a/a/a;)V
    .locals 2

    iput-object p1, p0, Lin/juspay/a/a/a$c;->c:Lin/juspay/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lin/juspay/a/a/a$c;->a:I

    iget-object p1, p0, Lin/juspay/a/a/a$c;->c:Lin/juspay/a/a/a;

    invoke-static {p1}, Lin/juspay/a/a/a;->a(Lin/juspay/a/a/a;)I

    move-result p1

    iput p1, p0, Lin/juspay/a/a/a$c;->b:I

    iget-object p1, p0, Lin/juspay/a/a/a$c;->c:Lin/juspay/a/a/a;

    invoke-static {p1}, Lin/juspay/a/a/a;->b(Lin/juspay/a/a/a;)Lin/juspay/a/a/a$b;

    move-result-object p1

    iget-wide v0, p1, Lin/juspay/a/a/a$b;->b:J

    iput-wide v0, p0, Lin/juspay/a/a/a$c;->d:J

    return-void
.end method

.method synthetic constructor <init>(Lin/juspay/a/a/a;Lin/juspay/a/a/a$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lin/juspay/a/a/a$c;-><init>(Lin/juspay/a/a/a;)V

    return-void
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lin/juspay/a/a/a$c;->c:Lin/juspay/a/a/a;

    invoke-static {v0}, Lin/juspay/a/a/a;->a(Lin/juspay/a/a/a;)I

    move-result v0

    iget v1, p0, Lin/juspay/a/a/a$c;->b:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final a()[B
    .locals 10

    iget-object v0, p0, Lin/juspay/a/a/a$c;->c:Lin/juspay/a/a/a;

    invoke-static {v0}, Lin/juspay/a/a/a;->c(Lin/juspay/a/a/a;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lin/juspay/a/a/a$c;->b()V

    iget-object v0, p0, Lin/juspay/a/a/a$c;->c:Lin/juspay/a/a/a;

    invoke-virtual {v0}, Lin/juspay/a/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lin/juspay/a/a/a$c;->a:I

    iget-object v1, p0, Lin/juspay/a/a/a$c;->c:Lin/juspay/a/a/a;

    invoke-static {v1}, Lin/juspay/a/a/a;->d(Lin/juspay/a/a/a;)I

    move-result v1

    if-ge v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lin/juspay/a/a/a$c;->c:Lin/juspay/a/a/a;

    iget-wide v1, p0, Lin/juspay/a/a/a$c;->d:J

    invoke-static {v0, v1, v2}, Lin/juspay/a/a/a;->a(Lin/juspay/a/a/a;J)Lin/juspay/a/a/a$b;

    move-result-object v0

    iget v1, v0, Lin/juspay/a/a/a$b;->c:I

    new-array v1, v1, [B

    iget-object v2, p0, Lin/juspay/a/a/a$c;->c:Lin/juspay/a/a/a;

    iget-wide v3, v0, Lin/juspay/a/a/a$b;->b:J

    const-wide/16 v8, 0x4

    add-long/2addr v3, v8

    invoke-static {v2, v3, v4}, Lin/juspay/a/a/a;->b(Lin/juspay/a/a/a;J)J

    move-result-wide v3

    iput-wide v3, p0, Lin/juspay/a/a/a$c;->d:J

    iget-object v2, p0, Lin/juspay/a/a/a$c;->c:Lin/juspay/a/a/a;

    const/4 v6, 0x0

    iget v7, v0, Lin/juspay/a/a/a$b;->c:I

    move-object v5, v1

    invoke-static/range {v2 .. v7}, Lin/juspay/a/a/a;->a(Lin/juspay/a/a/a;J[BII)V

    iget-object v2, p0, Lin/juspay/a/a/a$c;->c:Lin/juspay/a/a/a;

    iget-wide v3, v0, Lin/juspay/a/a/a$b;->b:J

    add-long/2addr v3, v8

    iget v0, v0, Lin/juspay/a/a/a$b;->c:I

    int-to-long v5, v0

    add-long/2addr v3, v5

    invoke-static {v2, v3, v4}, Lin/juspay/a/a/a;->b(Lin/juspay/a/a/a;J)J

    move-result-wide v2

    iput-wide v2, p0, Lin/juspay/a/a/a$c;->d:J

    iget v0, p0, Lin/juspay/a/a/a$c;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lin/juspay/a/a/a$c;->a:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lin/juspay/a/a/a;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final hasNext()Z
    .locals 2

    iget-object v0, p0, Lin/juspay/a/a/a$c;->c:Lin/juspay/a/a/a;

    invoke-static {v0}, Lin/juspay/a/a/a;->c(Lin/juspay/a/a/a;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lin/juspay/a/a/a$c;->b()V

    iget v0, p0, Lin/juspay/a/a/a$c;->a:I

    iget-object v1, p0, Lin/juspay/a/a/a$c;->c:Lin/juspay/a/a/a;

    invoke-static {v1}, Lin/juspay/a/a/a;->d(Lin/juspay/a/a/a;)I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lin/juspay/a/a/a$c;->a()[B

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 2

    invoke-direct {p0}, Lin/juspay/a/a/a$c;->b()V

    iget-object v0, p0, Lin/juspay/a/a/a$c;->c:Lin/juspay/a/a/a;

    invoke-virtual {v0}, Lin/juspay/a/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lin/juspay/a/a/a$c;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lin/juspay/a/a/a$c;->c:Lin/juspay/a/a/a;

    invoke-virtual {v0}, Lin/juspay/a/a/a;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lin/juspay/a/a/a$c;->c:Lin/juspay/a/a/a;

    invoke-static {v0}, Lin/juspay/a/a/a;->a(Lin/juspay/a/a/a;)I

    move-result v0

    iput v0, p0, Lin/juspay/a/a/a$c;->b:I

    iget v0, p0, Lin/juspay/a/a/a$c;->a:I

    sub-int/2addr v0, v1

    iput v0, p0, Lin/juspay/a/a/a$c;->a:I

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lin/juspay/a/a/a;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Removal is only permitted from the head."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
