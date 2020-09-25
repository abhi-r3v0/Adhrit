.class public final Lin/juspay/a/a/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/juspay/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/io/File;

.field b:Z

.field c:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lin/juspay/a/a/a$a;->b:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lin/juspay/a/a/a$a;->c:Z

    if-eqz p1, :cond_0

    iput-object p1, p0, Lin/juspay/a/a/a$a;->a:Ljava/io/File;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "file == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Lin/juspay/a/a/a;
    .locals 5

    iget-object v0, p0, Lin/juspay/a/a/a$a;->a:Ljava/io/File;

    iget-boolean v1, p0, Lin/juspay/a/a/a$a;->c:Z

    invoke-static {v0, v1}, Lin/juspay/a/a/a;->a(Ljava/io/File;Z)Ljava/io/RandomAccessFile;

    move-result-object v0

    :try_start_0
    new-instance v1, Lin/juspay/a/a/a;

    iget-object v2, p0, Lin/juspay/a/a/a$a;->a:Ljava/io/File;

    iget-boolean v3, p0, Lin/juspay/a/a/a$a;->b:Z

    iget-boolean v4, p0, Lin/juspay/a/a/a$a;->c:Z

    invoke-direct {v1, v2, v0, v3, v4}, Lin/juspay/a/a/a;-><init>(Ljava/io/File;Ljava/io/RandomAccessFile;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    throw v1
.end method
