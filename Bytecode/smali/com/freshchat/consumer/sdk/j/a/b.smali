.class public final Lcom/freshchat/consumer/sdk/j/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/j/a/b$b;,
        Lcom/freshchat/consumer/sdk/j/a/b$a;,
        Lcom/freshchat/consumer/sdk/j/a/b$c;
    }
.end annotation


# static fields
.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private final ji:Ljava/io/File;

.field private final jj:Ljava/io/File;

.field private final jk:Ljava/io/File;

.field private final jl:I

.field private final jm:J

.field private final jn:I

.field private jo:J

.field private jp:Ljava/io/Writer;

.field private final jq:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/freshchat/consumer/sdk/j/a/b$b;",
            ">;"
        }
    .end annotation
.end field

.field private jr:I

.field private js:J

.field private final jt:Ljava/util/concurrent/ExecutorService;

.field private final ju:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/freshchat/consumer/sdk/j/a/b;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/freshchat/consumer/sdk/j/a/b;->jo:J

    new-instance v4, Ljava/util/LinkedHashMap;

    const/4 v5, 0x0

    const/high16 v6, 0x3f400000    # 0.75f

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v4, v0, Lcom/freshchat/consumer/sdk/j/a/b;->jq:Ljava/util/LinkedHashMap;

    iput-wide v2, v0, Lcom/freshchat/consumer/sdk/j/a/b;->js:J

    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v14, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v14}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-wide/16 v11, 0x3c

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v2, v0, Lcom/freshchat/consumer/sdk/j/a/b;->jt:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/freshchat/consumer/sdk/j/a/c;

    invoke-direct {v2, p0}, Lcom/freshchat/consumer/sdk/j/a/c;-><init>(Lcom/freshchat/consumer/sdk/j/a/b;)V

    iput-object v2, v0, Lcom/freshchat/consumer/sdk/j/a/b;->ju:Ljava/util/concurrent/Callable;

    iput-object v1, v0, Lcom/freshchat/consumer/sdk/j/a/b;->ji:Ljava/io/File;

    move/from16 v2, p2

    iput v2, v0, Lcom/freshchat/consumer/sdk/j/a/b;->jl:I

    new-instance v2, Ljava/io/File;

    const-string v3, "journal"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/freshchat/consumer/sdk/j/a/b;->jj:Ljava/io/File;

    new-instance v2, Ljava/io/File;

    const-string v3, "journal.tmp"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/freshchat/consumer/sdk/j/a/b;->jk:Ljava/io/File;

    move/from16 v1, p3

    iput v1, v0, Lcom/freshchat/consumer/sdk/j/a/b;->jn:I

    move-wide/from16 v1, p4

    iput-wide v1, v0, Lcom/freshchat/consumer/sdk/j/a/b;->jm:J

    return-void
.end method

.method static synthetic a(Lcom/freshchat/consumer/sdk/j/a/b;I)I
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jr:I

    return p1
.end method

.method private declared-synchronized a(Ljava/lang/String;J)Lcom/freshchat/consumer/sdk/j/a/b$a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/j/a/b;->fh()V

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/j/a/b;->aS(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jq:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freshchat/consumer/sdk/j/a/b$b;

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    cmp-long v4, p2, v1

    if-eqz v4, :cond_1

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/a/b$b;->e(Lcom/freshchat/consumer/sdk/j/a/b$b;)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v1, p2

    if-eqz v4, :cond_1

    :cond_0
    monitor-exit p0

    return-object v3

    :cond_1
    if-nez v0, :cond_2

    :try_start_1
    new-instance v0, Lcom/freshchat/consumer/sdk/j/a/b$b;

    invoke-direct {v0, p0, p1, v3}, Lcom/freshchat/consumer/sdk/j/a/b$b;-><init>(Lcom/freshchat/consumer/sdk/j/a/b;Ljava/lang/String;Lcom/freshchat/consumer/sdk/j/a/c;)V

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jq:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/a/b$b;->a(Lcom/freshchat/consumer/sdk/j/a/b$b;)Lcom/freshchat/consumer/sdk/j/a/b$a;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_3

    monitor-exit p0

    return-object v3

    :cond_3
    :goto_0
    :try_start_2
    new-instance p2, Lcom/freshchat/consumer/sdk/j/a/b$a;

    invoke-direct {p2, p0, v0, v3}, Lcom/freshchat/consumer/sdk/j/a/b$a;-><init>(Lcom/freshchat/consumer/sdk/j/a/b;Lcom/freshchat/consumer/sdk/j/a/b$b;Lcom/freshchat/consumer/sdk/j/a/c;)V

    invoke-static {v0, p2}, Lcom/freshchat/consumer/sdk/j/a/b$b;->a(Lcom/freshchat/consumer/sdk/j/a/b$b;Lcom/freshchat/consumer/sdk/j/a/b$a;)Lcom/freshchat/consumer/sdk/j/a/b$a;

    iget-object p3, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jp:Ljava/io/Writer;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DIRTY "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jp:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static a(Ljava/io/File;IIJ)Lcom/freshchat/consumer/sdk/j/a/b;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_2

    if-lez p2, :cond_1

    new-instance v0, Lcom/freshchat/consumer/sdk/j/a/b;

    move-object v3, v0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/freshchat/consumer/sdk/j/a/b;-><init>(Ljava/io/File;IIJ)V

    iget-object v1, v0, Lcom/freshchat/consumer/sdk/j/a/b;->jj:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/j/a/b;->cu()V

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/j/a/b;->et()V

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, v0, Lcom/freshchat/consumer/sdk/j/a/b;->jj:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v1, v0, Lcom/freshchat/consumer/sdk/j/a/b;->jp:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/j/a/b;->delete()V

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Lcom/freshchat/consumer/sdk/j/a/b;

    move-object v4, v0

    move-object v5, p0

    move v6, p1

    move v7, p2

    move-wide v8, p3

    invoke-direct/range {v4 .. v9}, Lcom/freshchat/consumer/sdk/j/a/b;-><init>(Ljava/io/File;IIJ)V

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/j/a/b;->ff()V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "valueCount <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxSize <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/freshchat/consumer/sdk/j/a/b;)Ljava/io/Writer;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jp:Ljava/io/Writer;

    return-object p0
.end method

.method private declared-synchronized a(Lcom/freshchat/consumer/sdk/j/a/b$a;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/a/b$a;->a(Lcom/freshchat/consumer/sdk/j/a/b$a;)Lcom/freshchat/consumer/sdk/j/a/b$b;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/a/b$b;->a(Lcom/freshchat/consumer/sdk/j/a/b$b;)Lcom/freshchat/consumer/sdk/j/a/b$a;

    move-result-object v1

    if-ne v1, p1, :cond_9

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/a/b$b;->d(Lcom/freshchat/consumer/sdk/j/a/b$b;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jn:I

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Lcom/freshchat/consumer/sdk/j/a/b$b;->y(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/j/a/b$a;->abort()V

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "edit didn\'t create file "

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    iget p1, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jn:I

    if-ge v1, p1, :cond_4

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/j/a/b$b;->y(I)Ljava/io/File;

    move-result-object p1

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/j/a/b$b;->x(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/a/b$b;->b(Lcom/freshchat/consumer/sdk/j/a/b$b;)[J

    move-result-object p1

    aget-wide v3, p1, v1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/a/b$b;->b(Lcom/freshchat/consumer/sdk/j/a/b$b;)[J

    move-result-object p1

    aput-wide v5, p1, v1

    iget-wide v7, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jo:J

    sub-long/2addr v7, v3

    add-long/2addr v7, v5

    iput-wide v7, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jo:J

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/a/b;->c(Ljava/io/File;)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget p1, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jr:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jr:I

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/a/b$b;->a(Lcom/freshchat/consumer/sdk/j/a/b$b;Lcom/freshchat/consumer/sdk/j/a/b$a;)Lcom/freshchat/consumer/sdk/j/a/b$a;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/a/b$b;->d(Lcom/freshchat/consumer/sdk/j/a/b$b;)Z

    move-result p1

    or-int/2addr p1, p2

    const/16 v2, 0xa

    if-eqz p1, :cond_5

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/a/b$b;->a(Lcom/freshchat/consumer/sdk/j/a/b$b;Z)Z

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jp:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CLEAN "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/a/b$b;->c(Lcom/freshchat/consumer/sdk/j/a/b$b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/j/a/b$b;->fj()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_6

    iget-wide p1, p0, Lcom/freshchat/consumer/sdk/j/a/b;->js:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    iput-wide v1, p0, Lcom/freshchat/consumer/sdk/j/a/b;->js:J

    invoke-static {v0, p1, p2}, Lcom/freshchat/consumer/sdk/j/a/b$b;->a(Lcom/freshchat/consumer/sdk/j/a/b$b;J)J

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jq:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/a/b$b;->c(Lcom/freshchat/consumer/sdk/j/a/b$b;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jp:Ljava/io/Writer;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "REMOVE "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/a/b$b;->c(Lcom/freshchat/consumer/sdk/j/a/b$b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_6
    :goto_3
    iget-wide p1, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jo:J

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jm:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_7

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/j/a/b;->fg()Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jt:Ljava/util/concurrent/ExecutorService;

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/j/a/b;->ju:Ljava/util/concurrent/Callable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    monitor-exit p0

    return-void

    :cond_9
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/freshchat/consumer/sdk/j/a/b;Lcom/freshchat/consumer/sdk/j/a/b$a;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/freshchat/consumer/sdk/j/a/b;->a(Lcom/freshchat/consumer/sdk/j/a/b$a;Z)V

    return-void
.end method

.method private aI(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const-string/jumbo v2, "unexpected journal line: "

    const/4 v3, 0x2

    if-lt v1, v3, :cond_5

    const/4 v1, 0x1

    aget-object v4, v0, v1

    const/4 v5, 0x0

    aget-object v6, v0, v5

    const-string v7, "REMOVE"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    array-length v6, v0

    if-ne v6, v3, :cond_0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jq:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v4}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-object v6, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jq:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v4}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/freshchat/consumer/sdk/j/a/b$b;

    const/4 v7, 0x0

    if-nez v6, :cond_1

    new-instance v6, Lcom/freshchat/consumer/sdk/j/a/b$b;

    invoke-direct {v6, p0, v4, v7}, Lcom/freshchat/consumer/sdk/j/a/b$b;-><init>(Lcom/freshchat/consumer/sdk/j/a/b;Ljava/lang/String;Lcom/freshchat/consumer/sdk/j/a/c;)V

    iget-object v8, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jq:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v4, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    aget-object v4, v0, v5

    const-string v8, "CLEAN"

    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    array-length v4, v0

    iget v8, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jn:I

    add-int/2addr v8, v3

    if-ne v4, v8, :cond_2

    invoke-static {v6, v1}, Lcom/freshchat/consumer/sdk/j/a/b$b;->a(Lcom/freshchat/consumer/sdk/j/a/b$b;Z)Z

    invoke-static {v6, v7}, Lcom/freshchat/consumer/sdk/j/a/b$b;->a(Lcom/freshchat/consumer/sdk/j/a/b$b;Lcom/freshchat/consumer/sdk/j/a/b$a;)Lcom/freshchat/consumer/sdk/j/a/b$a;

    array-length p1, v0

    invoke-static {v0, v3, p1}, Lcom/freshchat/consumer/sdk/j/a/b;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {v6, p1}, Lcom/freshchat/consumer/sdk/j/a/b$b;->a(Lcom/freshchat/consumer/sdk/j/a/b$b;[Ljava/lang/String;)V

    return-void

    :cond_2
    aget-object v1, v0, v5

    const-string v4, "DIRTY"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    array-length v1, v0

    if-ne v1, v3, :cond_3

    new-instance p1, Lcom/freshchat/consumer/sdk/j/a/b$a;

    invoke-direct {p1, p0, v6, v7}, Lcom/freshchat/consumer/sdk/j/a/b$a;-><init>(Lcom/freshchat/consumer/sdk/j/a/b;Lcom/freshchat/consumer/sdk/j/a/b$b;Lcom/freshchat/consumer/sdk/j/a/c;)V

    invoke-static {v6, p1}, Lcom/freshchat/consumer/sdk/j/a/b$b;->a(Lcom/freshchat/consumer/sdk/j/a/b$b;Lcom/freshchat/consumer/sdk/j/a/b$a;)Lcom/freshchat/consumer/sdk/j/a/b$a;

    return-void

    :cond_3
    aget-object v1, v0, v5

    const-string v4, "READ"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    array-length v0, v0

    if-ne v0, v3, :cond_4

    return-void

    :cond_4
    new-instance v0, Ljava/io/IOException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/io/IOException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private aS(Ljava/lang/String;)V
    .locals 3

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\r"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "keys must not contain spaces or newlines: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic b(Lcom/freshchat/consumer/sdk/j/a/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/j/a/b;->trimToSize()V

    return-void
.end method

.method public static b(Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length p0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_2

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/a/b;->b(Ljava/io/File;)V

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "failed to delete file: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "not a directory: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_1

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method private static c(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/freshchat/consumer/sdk/j/a/b;)Z
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/j/a/b;->fg()Z

    move-result p0

    return p0
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception p0

    throw p0

    :catch_1
    :cond_0
    return-void
.end method

.method private static copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    array-length v0, p0

    if-gt p1, p2, :cond_1

    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    sub-int/2addr p2, p1

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private cu()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ", "

    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jj:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    :try_start_0
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/a/b;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/a/b;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/a/b;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/a/b;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/a/b;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "libcore.io.DiskLruCache"

    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "1"

    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jl:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jn:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    :goto_0
    :try_start_1
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/a/b;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/freshchat/consumer/sdk/j/a/b;->aI(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/a/b;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :cond_0
    :try_start_2
    new-instance v4, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "unexpected journal header: ["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/a/b;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method static synthetic d(Lcom/freshchat/consumer/sdk/j/a/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/j/a/b;->ff()V

    return-void
.end method

.method static synthetic e(Lcom/freshchat/consumer/sdk/j/a/b;)I
    .locals 0

    iget p0, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jn:I

    return p0
.end method

.method private et()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jk:Ljava/io/File;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/a/b;->c(Ljava/io/File;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jq:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freshchat/consumer/sdk/j/a/b$b;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/a/b$b;->a(Lcom/freshchat/consumer/sdk/j/a/b$b;)Lcom/freshchat/consumer/sdk/j/a/b$a;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    :goto_1
    iget v2, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jn:I

    if-ge v3, v2, :cond_0

    iget-wide v4, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jo:J

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/a/b$b;->b(Lcom/freshchat/consumer/sdk/j/a/b$b;)[J

    move-result-object v2

    aget-wide v6, v2, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jo:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/freshchat/consumer/sdk/j/a/b$b;->a(Lcom/freshchat/consumer/sdk/j/a/b$b;Lcom/freshchat/consumer/sdk/j/a/b$a;)Lcom/freshchat/consumer/sdk/j/a/b$a;

    :goto_2
    iget v2, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jn:I

    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Lcom/freshchat/consumer/sdk/j/a/b$b;->x(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/a/b;->c(Ljava/io/File;)V

    invoke-virtual {v1, v3}, Lcom/freshchat/consumer/sdk/j/a/b$b;->y(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/a/b;->c(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method static synthetic f(Lcom/freshchat/consumer/sdk/j/a/b;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/j/a/b;->ji:Ljava/io/File;

    return-object p0
.end method

.method private declared-synchronized ff()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jp:Ljava/io/Writer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jp:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jk:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    const-string v1, "libcore.io.DiskLruCache"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v1, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jl:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v1, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jn:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jq:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/freshchat/consumer/sdk/j/a/b$b;

    invoke-static {v3}, Lcom/freshchat/consumer/sdk/j/a/b$b;->a(Lcom/freshchat/consumer/sdk/j/a/b$b;)Lcom/freshchat/consumer/sdk/j/a/b$a;

    move-result-object v4

    const/16 v5, 0xa

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "DIRTY "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/freshchat/consumer/sdk/j/a/b$b;->c(Lcom/freshchat/consumer/sdk/j/a/b$b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "CLEAN "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/freshchat/consumer/sdk/j/a/b$b;->c(Lcom/freshchat/consumer/sdk/j/a/b$b;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/j/a/b$b;->fj()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jk:Ljava/io/File;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jj:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jj:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jp:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private fg()Z
    .locals 2

    iget v0, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jr:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jq:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private fh()V
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jp:Ljava/io/Writer;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private trimToSize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jo:J

    iget-wide v2, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jm:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jq:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/a/b;->aR(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized aP(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/j/a/b$c;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/j/a/b;->fh()V

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/j/a/b;->aS(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jq:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freshchat/consumer/sdk/j/a/b$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/a/b$b;->d(Lcom/freshchat/consumer/sdk/j/a/b$b;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_2
    iget v2, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jn:I

    new-array v8, v2, [Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    :goto_0
    :try_start_3
    iget v3, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jn:I

    if-ge v2, v3, :cond_2

    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v0, v2}, Lcom/freshchat/consumer/sdk/j/a/b$b;->x(I)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v3, v8, v2
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :try_start_4
    iget v1, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jr:I

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jp:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "READ "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/j/a/b;->fg()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jt:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/j/a/b;->ju:Ljava/util/concurrent/Callable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    :cond_3
    new-instance v1, Lcom/freshchat/consumer/sdk/j/a/b$c;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/a/b$b;->e(Lcom/freshchat/consumer/sdk/j/a/b$b;)J

    move-result-wide v6

    const/4 v9, 0x0

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v9}, Lcom/freshchat/consumer/sdk/j/a/b$c;-><init>(Lcom/freshchat/consumer/sdk/j/a/b;Ljava/lang/String;J[Ljava/io/InputStream;Lcom/freshchat/consumer/sdk/j/a/c;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v1

    :catch_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final aQ(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/j/a/b$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/freshchat/consumer/sdk/j/a/b;->a(Ljava/lang/String;J)Lcom/freshchat/consumer/sdk/j/a/b$a;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized aR(Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/j/a/b;->fh()V

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/j/a/b;->aS(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jq:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freshchat/consumer/sdk/j/a/b$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/a/b$b;->a(Lcom/freshchat/consumer/sdk/j/a/b$b;)Lcom/freshchat/consumer/sdk/j/a/b$a;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    iget v2, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jn:I

    if-ge v1, v2, :cond_2

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/j/a/b$b;->x(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-wide v2, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jo:J

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/a/b$b;->b(Lcom/freshchat/consumer/sdk/j/a/b$b;)[J

    move-result-object v4

    aget-wide v5, v4, v1

    sub-long/2addr v2, v5

    iput-wide v2, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jo:J

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/a/b$b;->b(Lcom/freshchat/consumer/sdk/j/a/b$b;)[J

    move-result-object v2

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "failed to delete "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget v0, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jr:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jr:I

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jp:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "REMOVE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jq:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/j/a/b;->fg()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jt:Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/b;->ju:Ljava/util/concurrent/Callable;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return v1

    :cond_4
    :goto_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jp:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jq:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freshchat/consumer/sdk/j/a/b$b;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/a/b$b;->a(Lcom/freshchat/consumer/sdk/j/a/b$b;)Lcom/freshchat/consumer/sdk/j/a/b$a;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/a/b$b;->a(Lcom/freshchat/consumer/sdk/j/a/b$b;)Lcom/freshchat/consumer/sdk/j/a/b$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/j/a/b$a;->abort()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/j/a/b;->trimToSize()V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jp:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jp:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/a/b;->close()V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/b;->ji:Ljava/io/File;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/a/b;->b(Ljava/io/File;)V

    return-void
.end method

.method public final declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/j/a/b;->fh()V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/j/a/b;->trimToSize()V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jp:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isClosed()Z
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/b;->jp:Ljava/io/Writer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
