.class public Lcom/freshchat/consumer/sdk/j/a/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/j/a/c$a;
    }
.end annotation


# static fields
.field private static final jF:Landroid/graphics/Bitmap$CompressFormat;

.field private static jG:Lcom/freshchat/consumer/sdk/j/a/b;

.field private static jH:Lo/fromMediaItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/fromMediaItem<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static jI:Lcom/freshchat/consumer/sdk/j/a/c$a;

.field private static final jJ:Ljava/lang/Object;

.field private static jK:Z

.field private static jV:Lcom/freshchat/consumer/sdk/j/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/freshchat/consumer/sdk/j/a/d;->jF:Landroid/graphics/Bitmap$CompressFormat;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/freshchat/consumer/sdk/j/a/d;->jJ:Ljava/lang/Object;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/freshchat/consumer/sdk/j/a/d;->jK:Z

    return-void
.end method

.method public constructor <init>(Lcom/freshchat/consumer/sdk/j/a/c$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/j/a/d;->b(Lcom/freshchat/consumer/sdk/j/a/c$a;)V

    return-void
.end method

.method public static a(Lcom/freshchat/consumer/sdk/j/a/c$a;)Lcom/freshchat/consumer/sdk/j/a/d;
    .locals 2

    const-class v0, Lcom/freshchat/consumer/sdk/j/a/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/freshchat/consumer/sdk/j/a/d;->jV:Lcom/freshchat/consumer/sdk/j/a/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/freshchat/consumer/sdk/j/a/d;

    invoke-direct {v1, p0}, Lcom/freshchat/consumer/sdk/j/a/d;-><init>(Lcom/freshchat/consumer/sdk/j/a/c$a;)V

    sput-object v1, Lcom/freshchat/consumer/sdk/j/a/d;->jV:Lcom/freshchat/consumer/sdk/j/a/d;

    :cond_0
    sget-object p0, Lcom/freshchat/consumer/sdk/j/a/d;->jV:Lcom/freshchat/consumer/sdk/j/a/d;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static aV(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/aa;->aA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/graphics/Bitmap;)I
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    mul-int v0, v0, p0

    return v0
.end method

.method private b(Lcom/freshchat/consumer/sdk/j/a/c$a;)V
    .locals 2

    sput-object p1, Lcom/freshchat/consumer/sdk/j/a/d;->jI:Lcom/freshchat/consumer/sdk/j/a/c$a;

    iget-boolean v0, p1, Lcom/freshchat/consumer/sdk/j/a/c$a;->jR:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Memory cache created (size = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/freshchat/consumer/sdk/j/a/d;->jI:Lcom/freshchat/consumer/sdk/j/a/c$a;

    iget v1, v1, Lcom/freshchat/consumer/sdk/j/a/c$a;->jM:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageCache"

    invoke-static {v1, v0}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/freshchat/consumer/sdk/j/a/c$1;

    sget-object v1, Lcom/freshchat/consumer/sdk/j/a/d;->jI:Lcom/freshchat/consumer/sdk/j/a/c$a;

    iget v1, v1, Lcom/freshchat/consumer/sdk/j/a/c$a;->jM:I

    invoke-direct {v0, p0, v1}, Lcom/freshchat/consumer/sdk/j/a/c$1;-><init>(Lcom/freshchat/consumer/sdk/j/a/d;I)V

    sput-object v0, Lcom/freshchat/consumer/sdk/j/a/d;->jH:Lo/fromMediaItem;

    :cond_0
    iget-boolean p1, p1, Lcom/freshchat/consumer/sdk/j/a/c$a;->jU:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/a/d;->fk()V

    :cond_1
    return-void
.end method

.method public static d(Ljava/io/File;)J
    .locals 5

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/aw;->eR()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result p0

    int-to-long v3, p0

    mul-long v1, v1, v3

    return-wide v1
.end method

.method static synthetic fm()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/j/a/d;->jF:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method public static y(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto/16 :goto_4

    :cond_0
    sget-object v0, Lcom/freshchat/consumer/sdk/j/a/d;->jH:Lo/fromMediaItem;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lo/fromMediaItem;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/freshchat/consumer/sdk/j/a/d;->jH:Lo/fromMediaItem;

    invoke-virtual {v0, p1, p2}, Lo/fromMediaItem;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v0, Lcom/freshchat/consumer/sdk/j/a/d;->jJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/freshchat/consumer/sdk/j/a/d;->jG:Lcom/freshchat/consumer/sdk/j/a/b;

    if-eqz v1, :cond_5

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/a/d;->aV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    :try_start_1
    sget-object v2, Lcom/freshchat/consumer/sdk/j/a/d;->jG:Lcom/freshchat/consumer/sdk/j/a/b;

    invoke-virtual {v2, p1}, Lcom/freshchat/consumer/sdk/j/a/b;->aP(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/j/a/b$c;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    sget-object v2, Lcom/freshchat/consumer/sdk/j/a/d;->jG:Lcom/freshchat/consumer/sdk/j/a/b;

    invoke-virtual {v2, p1}, Lcom/freshchat/consumer/sdk/j/a/b;->aQ(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/j/a/b$a;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v3}, Lcom/freshchat/consumer/sdk/j/a/b$a;->w(I)Ljava/io/OutputStream;

    move-result-object v1

    sget-object v2, Lcom/freshchat/consumer/sdk/j/a/d;->jI:Lcom/freshchat/consumer/sdk/j/a/c$a;

    iget-object v2, v2, Lcom/freshchat/consumer/sdk/j/a/c$a;->jP:Landroid/graphics/Bitmap$CompressFormat;

    sget-object v3, Lcom/freshchat/consumer/sdk/j/a/d;->jI:Lcom/freshchat/consumer/sdk/j/a/c$a;

    iget v3, v3, Lcom/freshchat/consumer/sdk/j/a/c$a;->jQ:I

    invoke-virtual {p2, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/j/a/b$a;->commit()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v3}, Lcom/freshchat/consumer/sdk/j/a/b$c;->z(I)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_0
    if-eqz v1, :cond_5

    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_3
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    if-eqz v1, :cond_5

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_5

    goto :goto_1

    :goto_2
    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_2
    :cond_4
    :try_start_5
    throw p1

    :catch_3
    :cond_5
    :goto_3
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_6
    :goto_4
    return-void
.end method

.method public aT(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    sget-object v0, Lcom/freshchat/consumer/sdk/j/a/d;->jH:Lo/fromMediaItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lo/fromMediaItem;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    const-string v0, "ImageCache"

    const-string v1, "Memory cache hit"

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public aU(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/a/d;->aV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/freshchat/consumer/sdk/j/a/d;->jJ:Ljava/lang/Object;

    monitor-enter v0

    :catch_0
    :goto_0
    :try_start_0
    sget-boolean v1, Lcom/freshchat/consumer/sdk/j/a/d;->jK:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_0

    :try_start_1
    sget-object v1, Lcom/freshchat/consumer/sdk/j/a/d;->jJ:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    :cond_0
    :try_start_2
    sget-object v1, Lcom/freshchat/consumer/sdk/j/a/d;->jG:Lcom/freshchat/consumer/sdk/j/a/b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    :try_start_3
    sget-object v1, Lcom/freshchat/consumer/sdk/j/a/d;->jG:Lcom/freshchat/consumer/sdk/j/a/b;

    invoke-virtual {v1, p1}, Lcom/freshchat/consumer/sdk/j/a/b;->aP(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/j/a/b$c;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/freshchat/consumer/sdk/j/a/b$c;->z(I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_3

    :try_start_4
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz p1, :cond_1

    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catch_1
    :cond_1
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return-object v1

    :catch_2
    move-exception v1

    goto :goto_2

    :cond_2
    move-object p1, v2

    :cond_3
    if-eqz p1, :cond_5

    :goto_1
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_4

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    move-object p1, v2

    :goto_2
    :try_start_8
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz p1, :cond_5

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v2, p1

    :goto_3
    if-eqz v2, :cond_4

    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catch_4
    :cond_4
    :try_start_a
    throw v1

    :catch_5
    :cond_5
    :goto_4
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    return-object v2

    :catchall_2
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public clearCache()V
    .locals 3

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/a/d;->fl()V

    sget-object v0, Lcom/freshchat/consumer/sdk/j/a/d;->jJ:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/freshchat/consumer/sdk/j/a/d;->jK:Z

    sget-object v1, Lcom/freshchat/consumer/sdk/j/a/d;->jG:Lcom/freshchat/consumer/sdk/j/a/b;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/freshchat/consumer/sdk/j/a/d;->jG:Lcom/freshchat/consumer/sdk/j/a/b;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/j/a/b;->isClosed()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    sget-object v1, Lcom/freshchat/consumer/sdk/j/a/d;->jG:Lcom/freshchat/consumer/sdk/j/a/b;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/j/a/b;->delete()V

    const-string v1, "ImageCache"

    const-string v2, "Disk cache cleared"

    invoke-static {v1, v2}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v1, 0x0

    sput-object v1, Lcom/freshchat/consumer/sdk/j/a/d;->jG:Lcom/freshchat/consumer/sdk/j/a/b;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/a/d;->fk()V

    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public close()V
    .locals 3

    sget-object v0, Lcom/freshchat/consumer/sdk/j/a/d;->jJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/freshchat/consumer/sdk/j/a/d;->jG:Lcom/freshchat/consumer/sdk/j/a/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    sget-object v1, Lcom/freshchat/consumer/sdk/j/a/d;->jG:Lcom/freshchat/consumer/sdk/j/a/b;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/j/a/b;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/freshchat/consumer/sdk/j/a/d;->jG:Lcom/freshchat/consumer/sdk/j/a/b;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/j/a/b;->close()V

    const/4 v1, 0x0

    sput-object v1, Lcom/freshchat/consumer/sdk/j/a/d;->jG:Lcom/freshchat/consumer/sdk/j/a/b;

    const-string v1, "ImageCache"

    const-string v2, "Disk cache closed"

    invoke-static {v1, v2}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public fk()V
    .locals 7

    sget-object v0, Lcom/freshchat/consumer/sdk/j/a/d;->jJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/freshchat/consumer/sdk/j/a/d;->jG:Lcom/freshchat/consumer/sdk/j/a/b;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/freshchat/consumer/sdk/j/a/d;->jG:Lcom/freshchat/consumer/sdk/j/a/b;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/j/a/b;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    sget-object v1, Lcom/freshchat/consumer/sdk/j/a/d;->jI:Lcom/freshchat/consumer/sdk/j/a/c$a;

    iget-object v1, v1, Lcom/freshchat/consumer/sdk/j/a/c$a;->jO:Ljava/io/File;

    sget-object v2, Lcom/freshchat/consumer/sdk/j/a/d;->jI:Lcom/freshchat/consumer/sdk/j/a/c$a;

    iget-boolean v2, v2, Lcom/freshchat/consumer/sdk/j/a/c$a;->jS:Z

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/a/d;->d(Ljava/io/File;)J

    move-result-wide v2

    sget-object v4, Lcom/freshchat/consumer/sdk/j/a/d;->jI:Lcom/freshchat/consumer/sdk/j/a/c$a;

    iget v4, v4, Lcom/freshchat/consumer/sdk/j/a/c$a;->jN:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    :try_start_1
    sget-object v2, Lcom/freshchat/consumer/sdk/j/a/d;->jI:Lcom/freshchat/consumer/sdk/j/a/c$a;

    iget v2, v2, Lcom/freshchat/consumer/sdk/j/a/c$a;->jN:I

    int-to-long v2, v2

    const/4 v4, 0x1

    invoke-static {v1, v4, v4, v2, v3}, Lcom/freshchat/consumer/sdk/j/a/b;->a(Ljava/io/File;IIJ)Lcom/freshchat/consumer/sdk/j/a/b;

    move-result-object v1

    sput-object v1, Lcom/freshchat/consumer/sdk/j/a/d;->jG:Lcom/freshchat/consumer/sdk/j/a/b;

    const-string v1, "ImageCache"

    const-string v2, "Disk cache initialized"

    invoke-static {v1, v2}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    sget-object v2, Lcom/freshchat/consumer/sdk/j/a/d;->jI:Lcom/freshchat/consumer/sdk/j/a/c$a;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/freshchat/consumer/sdk/j/a/c$a;->jO:Ljava/io/File;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/freshchat/consumer/sdk/j/a/d;->jK:Z

    sget-object v1, Lcom/freshchat/consumer/sdk/j/a/d;->jJ:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public fl()V
    .locals 2

    sget-object v0, Lcom/freshchat/consumer/sdk/j/a/d;->jH:Lo/fromMediaItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/fromMediaItem;->evictAll()V

    const-string v0, "ImageCache"

    const-string v1, "Memory cache cleared"

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 3

    sget-object v0, Lcom/freshchat/consumer/sdk/j/a/d;->jJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/freshchat/consumer/sdk/j/a/d;->jG:Lcom/freshchat/consumer/sdk/j/a/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    sget-object v1, Lcom/freshchat/consumer/sdk/j/a/d;->jG:Lcom/freshchat/consumer/sdk/j/a/b;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/j/a/b;->flush()V

    const-string v1, "ImageCache"

    const-string v2, "Disk cache flushed"

    invoke-static {v1, v2}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
