.class public final Lcom/google/firebase/crashlytics/internal/ndk/NativeFileUtils;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binaryImagesJsonFromMapsFile(Ljava/io/File;Landroid/content/Context;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 32
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 37
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    :try_start_1
    new-instance p0, Lcom/google/firebase/crashlytics/internal/ndk/BinaryImagesConverter;

    new-instance v0, Lcom/google/firebase/crashlytics/internal/ndk/Sha1FileIdStrategy;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/internal/ndk/Sha1FileIdStrategy;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/crashlytics/internal/ndk/BinaryImagesConverter;-><init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/internal/ndk/BinaryImagesConverter$FileIdStrategy;)V

    invoke-virtual {p0, v1}, Lcom/google/firebase/crashlytics/internal/ndk/BinaryImagesConverter;->convert(Ljava/io/BufferedReader;)[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 41
    throw p0

    :cond_1
    :goto_1
    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method
