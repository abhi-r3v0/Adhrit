.class public Lin/juspay/hypersdk/services/FileProviderService;
.super Ljava/lang/Object;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FileProviderService"

.field private static maxSecondsToLoad:I = 0x3c


# instance fields
.field private final fileCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final fileCacheWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

.field private shouldCheckInternalAssets:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lin/juspay/hypersdk/core/JuspayServices;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lin/juspay/hypersdk/services/FileProviderService;->fileCache:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lin/juspay/hypersdk/services/FileProviderService;->fileCacheWhiteList:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lin/juspay/hypersdk/services/FileProviderService;->shouldCheckInternalAssets:Z

    iput-object p1, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    return-void
.end method

.method static synthetic access$000(Lin/juspay/hypersdk/services/FileProviderService;)Lin/juspay/hypersdk/core/JuspayServices;
    .locals 0

    iget-object p0, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    return-object p0
.end method

.method private cacheFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/services/FileProviderService;->fileCache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Caching file: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "FileProviderService"

    invoke-virtual {p2, v0, p1}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    :try_start_0
    invoke-direct {p0}, Lin/juspay/hypersdk/services/FileProviderService;->createJuspayDir()V

    invoke-direct {p0, p2}, Lin/juspay/hypersdk/services/FileProviderService;->createRequiredDir(Ljava/lang/String;)V

    iget-object v0, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    const-string v1, "FileProviderService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "copyFile: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Lin/juspay/hypersdk/services/FileProviderService;->getFileFromInternalStorage(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {p0, p2}, Lin/juspay/hypersdk/services/FileProviderService;->getFileFromInternalStorage(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p2, 0x400

    new-array p2, p2, [B

    :goto_0
    invoke-virtual {v0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    move-object v6, p2

    iget-object p2, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {p2}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Exception: "

    :goto_1
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "FileProviderService"

    const-string v2, "action"

    const-string v3, "system"

    const-string v4, "file_provider_service"

    invoke-virtual/range {v0 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception p2

    move-object v6, p2

    iget-object p2, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {p2}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "File not found: "

    goto :goto_1
.end method

.method private createCertDir()V
    .locals 4

    invoke-static {}, Lin/juspay/hypersdk/core/JuspayCoreLib;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "juspay"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    const-string v2, "certificates_v1"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_0
    return-void
.end method

.method private createJuspayDir()V
    .locals 3

    invoke-static {}, Lin/juspay/hypersdk/core/JuspayCoreLib;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v2, "juspay"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_0
    return-void
.end method

.method private createRequiredDir(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lin/juspay/hypersdk/core/JuspayCoreLib;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/File;

    const/4 v3, 0x0

    const-string v4, "juspay"

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-void
.end method

.method private deleteFileFromCache(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lin/juspay/hypersdk/services/FileProviderService;->isFileCached(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lin/juspay/hypersdk/services/FileProviderService;->fileCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private getFileFromInternalStorage(Ljava/lang/String;)Ljava/io/File;
    .locals 5

    invoke-static {}, Lin/juspay/hypersdk/core/JuspayCoreLib;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Context while reading Internal Storage :"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "FileProviderService"

    invoke-virtual {v1, v3, v2}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Getting file from internal storage. Filename: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "juspay"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private initialiseHashAndStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const-string v0, "jp_hash_and_status"

    iget-object v1, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    const-string v2, "FileProviderService"

    const-string v3, "initialiseHashAndStatus: starting the initialise"

    invoke-virtual {v1, v2, v3}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    const-string v3, "{}"

    invoke-static {v1, v0, v3}, Lin/juspay/hypersdk/data/KeyValueStore;->read(Lin/juspay/hypersdk/core/JuspayServices;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    const-string v4, "initialiseHashAndStatus: found the file name"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    const-string v4, "initialiseHashAndStatus: not found the file name"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    const-string v4, "status"

    const-string v5, "in_progress"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "hashLoaded"

    invoke-virtual {v1, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "used"

    invoke-virtual {v1, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "asset"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/Thread;

    new-instance p3, Lin/juspay/hypersdk/services/FileProviderService$1;

    invoke-direct {p3, p0, p4, p2}, Lin/juspay/hypersdk/services/FileProviderService$1;-><init>(Lin/juspay/hypersdk/services/FileProviderService;ILjava/lang/String;)V

    invoke-direct {p1, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_1
    invoke-virtual {v3, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    const-string p2, "initialiseHashAndStatus: initialised"

    invoke-virtual {p1, v2, p2}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lin/juspay/hypersdk/data/KeyValueStore;->write(Lin/juspay/hypersdk/core/JuspayServices;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    const-string p2, "initialiseHashAndStatus: done"

    invoke-virtual {p1, v2, p2}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    const-string p3, "initialiseHashAndStatus: Exception"

    invoke-virtual {p2, v2, p3}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, p3, p1}, Lin/juspay/hypersdk/core/JuspayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private isExternallyBlockedHash(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 7

    iget-object v0, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    const-string v1, "jp_asset_manage"

    const-string v2, "false"

    invoke-static {v0, v1, v2}, Lin/juspay/hypersdk/data/KeyValueStore;->read(Lin/juspay/hypersdk/core/JuspayServices;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    const-string v1, "jp_external_blocked_hashes"

    const-string v2, "{}"

    invoke-static {v0, v1, v2}, Lin/juspay/hypersdk/data/KeyValueStore;->read(Lin/juspay/hypersdk/core/JuspayServices;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v6, p1

    iget-object p1, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {p1}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v0

    const-string v1, "FileProviderService"

    const-string v2, "action"

    const-string v3, "system"

    const-string v4, "file_provider_service"

    const-string v5, "Exception: while checking isExternallyBlockedHash"

    invoke-virtual/range {v0 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method private isFileCached(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/services/FileProviderService;->fileCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private isHashPresent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "FileProviderService"

    :try_start_0
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "readFromInternalStorage: blocked hash has "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in it"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-direct {p0, p1}, Lin/juspay/hypersdk/services/FileProviderService;->isExternallyBlockedHash(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    iget-object p2, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "readFromInternalStorage: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " blocked hash matched with the current hash- "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    const-string p2, "readFromInternalStorage: before finding "

    invoke-virtual {p1, v0, p2}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private readFromAssets(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    invoke-static {}, Lin/juspay/hypersdk/core/JuspayCoreLib;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v1}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v2

    :try_start_0
    invoke-virtual {p0, p1}, Lin/juspay/hypersdk/services/FileProviderService;->getAssetFileAsByte(Ljava/lang/String;)[B

    move-result-object v1

    const-string v3, "jsa"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "FileProviderService"

    if-eqz v3, :cond_0

    :try_start_1
    iget-object v3, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Read JSA Asset file "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " with encrypted hash - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lin/juspay/hypersdk/utils/EncryptionHelper;->md5([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lin/juspay/hypersdk/R$string;->juspay_encryption_version:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lin/juspay/hypersdk/utils/EncryptionHelper;->decryptThenGunzip([BLjava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Done reading "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from assets"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    move-object v8, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Exception trying to read from file: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "FileProviderService"

    const-string v4, "action"

    const-string v5, "system"

    const-string v6, "file_provider_service"

    invoke-virtual/range {v2 .. v8}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private readFromInputStream(Ljava/io/ByteArrayOutputStream;Ljava/io/InputStream;)V
    .locals 3

    const/16 v0, 0x1000

    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method private readFromInternalStorage(Ljava/lang/String;I)Ljava/lang/String;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    const-string v3, "fb/"

    const-string v4, "   "

    const-string v5, "FileProviderService"

    invoke-virtual/range {p0 .. p1}, Lin/juspay/hypersdk/services/FileProviderService;->appendSdkNameAndVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v7}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkInfo()Lin/juspay/hypersdk/data/SdkInfo;

    move-result-object v7

    invoke-virtual {v7}, Lin/juspay/hypersdk/data/SdkInfo;->usesLocalAssets()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    return-object v8

    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    const-string v9, "jsa"

    invoke-virtual {v6, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v1, v6}, Lin/juspay/hypersdk/services/FileProviderService;->decryptGunzipInternalStorage(Ljava/lang/String;)[B

    move-result-object v9

    iget-object v10, v1, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    const-string v11, "readFromInternalStorage: started"

    invoke-virtual {v10, v5, v11}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v1, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    const-string v11, "readFromInternalStorage: asset manage is on"

    invoke-virtual {v10, v5, v11}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "latest"
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-static {v9}, Lin/juspay/hypersdk/utils/EncryptionHelper;->md5([B)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v1, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    const-string v13, "readFromInternalStorage: found the hash"

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v5, v13}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v12, v1, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    const-string v13, "jp_blocked_hash"

    const-string v14, "{}"

    invoke-static {v12, v13, v14}, Lin/juspay/hypersdk/data/KeyValueStore;->read(Lin/juspay/hypersdk/core/JuspayServices;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v12, v1, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    const-string v14, "readFromInternalStorage: blocked hash has file name - "

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v5, v14}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "latest_hash"

    invoke-direct {v1, v11, v12, v13}, Lin/juspay/hypersdk/services/FileProviderService;->isHashPresent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    new-instance v10, Ljava/io/File;

    iget-object v13, v1, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v13}, Lin/juspay/hypersdk/core/JuspayServices;->getContext()Landroid/content/Context;

    move-result-object v13

    const-string v14, "juspay"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v13

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v13, v1, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "readFromInternalStorage: after finding "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v5, v14}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-string v13, "asset"

    if-eqz v10, :cond_3

    :try_start_2
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lin/juspay/hypersdk/services/FileProviderService;->decryptGunzipInternalStorage(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lin/juspay/hypersdk/utils/EncryptionHelper;->md5([B)Ljava/lang/String;

    move-result-object v11

    iget-object v10, v1, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    const-string v14, "jp_asset_manage"

    const-string v15, "false"

    invoke-static {v10, v14, v15}, Lin/juspay/hypersdk/data/KeyValueStore;->read(Lin/juspay/hypersdk/core/JuspayServices;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v14, "true"

    invoke-virtual {v10, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v9, v3

    :cond_1
    const-string v3, "fallback_hash"

    invoke-direct {v1, v11, v12, v3}, Lin/juspay/hypersdk/services/FileProviderService;->isHashPresent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {v1, v11, v0, v13, v2}, Lin/juspay/hypersdk/services/FileProviderService;->initialiseHashAndStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v8

    :cond_2
    const-string v10, "fallback"

    goto :goto_0

    :cond_3
    iget-object v3, v1, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    const-string v4, "readFromInternalStorage: There is no fallback present- "

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    const-string v4, "readFromInternalStorage: using asset"

    invoke-virtual {v3, v5, v4}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v11, v0, v13, v2}, Lin/juspay/hypersdk/services/FileProviderService;->initialiseHashAndStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v8

    :cond_4
    :goto_0
    iget-object v3, v1, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "readFromInternalStorage: the final status is - "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v11, v0, v10, v2}, Lin/juspay/hypersdk/services/FileProviderService;->initialiseHashAndStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "Problem while smart fallback"

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v0}, Lin/juspay/hypersdk/core/JuspayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    if-eqz v9, :cond_5

    iget-object v0, v1, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    const-string v2, "Reading complete. From InternalStorage - "

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v9}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_5
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v1, v6}, Lin/juspay/hypersdk/services/FileProviderService;->getFileFromInternalStorage(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    :try_start_6
    invoke-virtual {v4}, Ljava/io/Reader;->read()I

    move-result v0

    const/4 v9, -0x1

    if-eq v0, v9, :cond_6

    int-to-char v0, v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    invoke-virtual {v3}, Ljava/io/Reader;->close()V

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v12, v0

    iget-object v0, v1, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v6

    const-string v7, "FileProviderService"

    const-string v8, "action"

    const-string v9, "system"

    const-string v10, "file_provider_service"

    const-string v11, "Exception trying to close IO streams"

    invoke-virtual/range {v6 .. v12}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-object v5

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v4, v8

    goto/16 :goto_d

    :catch_4
    move-exception v0

    move-object v4, v8

    goto :goto_5

    :catch_5
    move-exception v0

    move-object v4, v8

    goto :goto_7

    :catch_6
    move-object v4, v8

    goto/16 :goto_b

    :catchall_1
    move-exception v0

    move-object v3, v0

    move-object v4, v8

    goto/16 :goto_e

    :catch_7
    move-exception v0

    move-object v3, v8

    goto :goto_4

    :catch_8
    move-exception v0

    move-object v3, v8

    goto :goto_6

    :catch_9
    move-object v3, v8

    goto/16 :goto_a

    :catchall_2
    move-exception v0

    move-object v3, v0

    move-object v2, v8

    move-object v4, v2

    goto/16 :goto_e

    :catch_a
    move-exception v0

    move-object v2, v8

    move-object v3, v2

    :goto_4
    move-object v4, v3

    :goto_5
    :try_start_8
    const-string v7, "Could not read "

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lin/juspay/hypersdk/core/JuspayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v3, :cond_7

    :try_start_9
    invoke-virtual {v3}, Ljava/io/Reader;->close()V

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_8
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_c

    goto :goto_c

    :catch_b
    move-exception v0

    move-object v2, v8

    move-object v3, v2

    :goto_6
    move-object v4, v3

    :goto_7
    :try_start_a
    const-string v7, "IOException. Could not read "

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lin/juspay/hypersdk/core/JuspayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eqz v3, :cond_9

    :try_start_b
    invoke-virtual {v3}, Ljava/io/Reader;->close()V

    goto :goto_8

    :catch_c
    move-exception v0

    move-object v15, v0

    goto :goto_9

    :cond_9
    :goto_8
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_a
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_c

    goto :goto_c

    :goto_9
    iget-object v0, v1, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v9

    const-string v10, "FileProviderService"

    const-string v11, "action"

    const-string v12, "system"

    const-string v13, "file_provider_service"

    const-string v14, "Exception trying to close IO streams"

    invoke-virtual/range {v9 .. v15}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    :catch_d
    move-object v2, v8

    move-object v3, v2

    :goto_a
    move-object v4, v3

    :catch_e
    :goto_b
    :try_start_c
    iget-object v0, v1, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    const-string v7, "File not found "

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    if-eqz v3, :cond_b

    :try_start_d
    invoke-virtual {v3}, Ljava/io/Reader;->close()V

    :cond_b
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_c
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c

    :cond_d
    :goto_c
    return-object v8

    :catchall_3
    move-exception v0

    :goto_d
    move-object v8, v3

    move-object v3, v0

    :goto_e
    if-eqz v8, :cond_e

    :try_start_e
    invoke-virtual {v8}, Ljava/io/Reader;->close()V

    goto :goto_f

    :catch_f
    move-exception v0

    move-object v15, v0

    goto :goto_10

    :cond_e
    :goto_f
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_f
    if-eqz v4, :cond_10

    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_f

    goto :goto_11

    :goto_10
    iget-object v0, v1, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v9

    const-string v10, "FileProviderService"

    const-string v11, "action"

    const-string v12, "system"

    const-string v13, "file_provider_service"

    const-string v14, "Exception trying to close IO streams"

    invoke-virtual/range {v9 .. v15}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_10
    :goto_11
    throw v3
.end method

.method private updateFallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string v0, "jp_blocked_hash"

    const-string v1, "latest_hash"

    const-string v2, "jsa"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, p2}, Lin/juspay/hypersdk/services/FileProviderService;->isFilePresent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "updateFallback: starting"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FileProviderService"

    invoke-virtual {v2, v4, v3}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, p2}, Lin/juspay/hypersdk/services/FileProviderService;->decryptGunzipInternalStorage(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lin/juspay/hypersdk/utils/EncryptionHelper;->md5([B)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    const-string v5, "{}"

    invoke-static {v3, v0, v5}, Lin/juspay/hypersdk/data/KeyValueStore;->read(Lin/juspay/hypersdk/core/JuspayServices;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    const-string v6, "updateFallback: got the blocked hash"

    invoke-virtual {v3, v4, v6}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "updateFallback: file copied"

    const-string v7, "updateFallback: wonderful.. copying to the fallback"

    const-string v8, "fb/"

    if-eqz v3, :cond_2

    :try_start_1
    iget-object v3, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    const-string v9, "updateFallback: got the file name "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v4, v9}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v2, v4, v7}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v2}, Lin/juspay/hypersdk/services/FileProviderService;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v5, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lin/juspay/hypersdk/data/KeyValueStore;->write(Lin/juspay/hypersdk/core/JuspayServices;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {p1, v4, v6}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lin/juspay/hypersdk/services/FileProviderService;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    const-string v0, "updateFallback: we didn;t get the file name from blocked hash "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {p1, v4, v7}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {p1, v4, v6}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    move-object v6, p1

    iget-object p1, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {p1}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Exception: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "FileProviderService"

    const-string v2, "action"

    const-string v3, "system"

    const-string v4, "auto_fallback"

    invoke-virtual/range {v0 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v6, p1

    iget-object p1, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {p1}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "File not found: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "FileProviderService"

    const-string v2, "action"

    const-string v3, "system"

    const-string v4, "auto_fallback"

    invoke-virtual/range {v0 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private writeToFile(Ljava/lang/String;[BZ)Z
    .locals 8

    invoke-virtual {p0, p1}, Lin/juspay/hypersdk/services/FileProviderService;->appendSdkNameAndVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lin/juspay/hypersdk/services/FileProviderService;->updateFallback(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lin/juspay/hypersdk/services/FileProviderService;->deleteFileFromCache(Ljava/lang/String;)V

    iget-object p1, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {p1}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    :try_start_0
    iget-object p1, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    const-string v2, "FileProviderService"

    const-string v3, "Updating file in internal storage: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lin/juspay/hypersdk/services/FileProviderService;->createJuspayDir()V

    invoke-direct {p0, v0}, Lin/juspay/hypersdk/services/FileProviderService;->createRequiredDir(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-direct {p0}, Lin/juspay/hypersdk/services/FileProviderService;->createCertDir()V

    :cond_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p0, v0}, Lin/juspay/hypersdk/services/FileProviderService;->getFileFromInternalStorage(Ljava/lang/String;)Ljava/io/File;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    move-object v7, p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Exception: "

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v7, p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "IOException: "

    goto :goto_0

    :catch_2
    move-exception p1

    move-object v7, p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "File not found: "

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "FileProviderService"

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "file_provider_service"

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public addToFileCacheWhiteList(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/services/FileProviderService;->fileCacheWhiteList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public appendSdkNameAndVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkInfo()Lin/juspay/hypersdk/data/SdkInfo;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const-string v2, "_"

    if-lez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lin/juspay/hypersdk/data/SdkInfo;->getSdkName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lin/juspay/hypersdk/data/SdkInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lin/juspay/hypersdk/data/SdkInfo;->getSdkName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lin/juspay/hypersdk/data/SdkInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public clearCache()V
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/services/FileProviderService;->fileCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lin/juspay/hypersdk/services/FileProviderService;->fileCacheWhiteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public decryptGunzipAssetFile(Ljava/lang/String;)[B
    .locals 9

    invoke-static {}, Lin/juspay/hypersdk/core/JuspayCoreLib;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v1}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v2

    const/4 v1, 0x0

    new-array v1, v1, [B

    :try_start_0
    invoke-virtual {p0, p1}, Lin/juspay/hypersdk/services/FileProviderService;->getAssetFileAsByte(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception in reading "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from assets"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v3, "FileProviderService"

    const-string v4, "action"

    const-string v5, "system"

    const-string v6, "file_provider_service"

    invoke-virtual/range {v2 .. v8}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lin/juspay/hypersdk/R$string;->juspay_encryption_version:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lin/juspay/hypersdk/utils/EncryptionHelper;->decryptThenGunzip([BLjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public decryptGunzipInternalStorage(Ljava/lang/String;)[B
    .locals 10

    const-string v0, "FileProviderService"

    invoke-static {}, Lin/juspay/hypersdk/core/JuspayCoreLib;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v2}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v3

    :try_start_0
    invoke-virtual {p0, p1}, Lin/juspay/hypersdk/services/FileProviderService;->getInternalStorageFileAsByte(Ljava/lang/String;)[B

    move-result-object v2

    iget-object v4, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Read Encrypted file from internalStorage - "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " with encrypted hash - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lin/juspay/hypersdk/utils/EncryptionHelper;->md5([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lin/juspay/hypersdk/R$string;->juspay_encryption_version:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lin/juspay/hypersdk/utils/EncryptionHelper;->decryptThenGunzip([BLjava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    move-object v9, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception in reading "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from internal storage"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v4, "FileProviderService"

    const-string v5, "action"

    const-string v6, "system"

    const-string v7, "file_provider_service"

    invoke-virtual/range {v3 .. v9}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1

    :catch_1
    move-exception v1

    iget-object v2, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "No File to decrypt in internal storage: "

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public deleteFileFromInternalStorage(Ljava/lang/String;)Z
    .locals 9

    iget-object v0, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v0

    iget-object v1, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v1}, Lin/juspay/hypersdk/core/JuspayServices;->getRemoteAssetService()Lin/juspay/hypersdk/services/RemoteAssetService;

    move-result-object v7

    invoke-direct {p0, p1}, Lin/juspay/hypersdk/services/FileProviderService;->getFileFromInternalStorage(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "FileProviderService"

    if-eqz v1, :cond_0

    iget-object v1, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Deleting "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from internal storage"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "FILE CORRUPTED. DISABLING SDK"

    invoke-static {v2, v1}, Lin/juspay/hypersdk/core/JuspayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "system"

    const-string v3, "warning"

    const-string v4, "file_provider_service"

    const-string v5, "file_corrupted"

    move-object v1, v0

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    const-string v1, ".zip"

    const-string v2, ".jsa"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Lin/juspay/hypersdk/services/RemoteAssetService;->resetMetadata(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v7, p1

    const-string v2, "FileProviderService"

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "file_provider_service"

    const-string v6, "Error while resetting etag"

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result p1

    return p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lin/juspay/hypersdk/core/JuspayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public getAssetFileAsByte(Ljava/lang/String;)[B
    .locals 9

    const-string v0, "Could not read "

    iget-object v1, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v1}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v2

    invoke-static {}, Lin/juspay/hypersdk/core/JuspayCoreLib;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v4, "juspay/"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lin/juspay/hypersdk/services/FileProviderService;->readFromInputStream(Ljava/io/ByteArrayOutputStream;Ljava/io/InputStream;)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    move-object v8, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exception: Could not read "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "FileProviderService"

    const-string v4, "action"

    const-string v5, "system"

    const-string v6, "file_provider_service"

    invoke-virtual/range {v2 .. v8}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lin/juspay/hypersdk/services/FileProviderService;->deleteFileFromInternalStorage(Ljava/lang/String;)Z

    const/4 p1, 0x0

    new-array p1, p1, [B

    return-object p1

    :catch_1
    move-exception v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "FileProviderService"

    const-string v4, "action"

    const-string v5, "system"

    const-string v6, "file_provider_service"

    move-object v8, v1

    invoke-virtual/range {v2 .. v8}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lin/juspay/hypersdk/services/FileProviderService;->deleteFileFromInternalStorage(Ljava/lang/String;)Z

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "FileProviderService"

    const-string v4, "action"

    const-string v5, "system"

    const-string v6, "file_provider_service"

    move-object v8, v1

    invoke-virtual/range {v2 .. v8}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getInternalStorageFileAsByte(Ljava/lang/String;)[B
    .locals 9

    iget-object v0, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    iget-object v0, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getRemoteAssetService()Lin/juspay/hypersdk/services/RemoteAssetService;

    move-result-object v0

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Lin/juspay/hypersdk/services/FileProviderService;->getFileFromInternalStorage(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v2, v3}, Lin/juspay/hypersdk/services/FileProviderService;->readFromInputStream(Ljava/io/ByteArrayOutputStream;Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Exception: Could not read "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "FileProviderService"

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "file_provider_service"

    move-object v7, v0

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lin/juspay/hypersdk/services/FileProviderService;->deleteFileFromInternalStorage(Ljava/lang/String;)Z

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Could not read "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "FileProviderService"

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "file_provider_service"

    move-object v7, v0

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lin/juspay/hypersdk/services/FileProviderService;->deleteFileFromInternalStorage(Ljava/lang/String;)Z

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception v2

    move-object v8, v2

    iget-object v2, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "File not found "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "FileProviderService"

    invoke-virtual {v2, v4, v3}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    const-string v2, ".zip"

    const-string v3, ".jsa"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lin/juspay/hypersdk/services/RemoteAssetService;->resetMetadata(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    :catch_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Couldn\'t reset "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "FileProviderService"

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "file_provider_service"

    move-object v7, v8

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    throw v8
.end method

.method public isFilePresent(Ljava/lang/String;)Z
    .locals 10

    invoke-static {}, Lin/juspay/hypersdk/core/JuspayCoreLib;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v1}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v2

    iget-boolean v1, p0, Lin/juspay/hypersdk/services/FileProviderService;->shouldCheckInternalAssets:Z

    const/4 v9, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    const-string v4, "juspay"

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {p0, p1}, Lin/juspay/hypersdk/services/FileProviderService;->appendSdkNameAndVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    return v9

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "juspay/"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    const-string v3, "FileProviderService"

    const-string v4, "action"

    const-string v5, "system"

    const-string v6, "file_provider_service"

    const-string v7, "Cannot close Input Stream"

    invoke-virtual/range {v2 .. v8}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return v9

    :catch_1
    return v3
.end method

.method public isShouldCheckInternalAssets()Z
    .locals 1

    iget-boolean v0, p0, Lin/juspay/hypersdk/services/FileProviderService;->shouldCheckInternalAssets:Z

    return v0
.end method

.method public readFromCache(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-direct {p0, p1}, Lin/juspay/hypersdk/services/FileProviderService;->isFileCached(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lin/juspay/hypersdk/services/FileProviderService;->fileCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Returning cached value of the file: "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "FileProviderService"

    invoke-virtual {v1, v2, p1}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lin/juspay/hypersdk/services/FileProviderService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Cached: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public readFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget v0, Lin/juspay/hypersdk/services/FileProviderService;->maxSecondsToLoad:I

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lin/juspay/hypersdk/services/FileProviderService;->readFromFile(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readFromFile(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lin/juspay/hypersdk/services/FileProviderService;->readFromFile(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readFromFile(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    sget v0, Lin/juspay/hypersdk/services/FileProviderService;->maxSecondsToLoad:I

    invoke-virtual {p0, p1, p2, v0}, Lin/juspay/hypersdk/services/FileProviderService;->readFromFile(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readFromFile(Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lin/juspay/hypersdk/services/FileProviderService;->readFromCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    iget-boolean v0, p0, Lin/juspay/hypersdk/services/FileProviderService;->shouldCheckInternalAssets:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p3}, Lin/juspay/hypersdk/services/FileProviderService;->readFromInternalStorage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    if-nez p2, :cond_2

    invoke-direct {p0, p1}, Lin/juspay/hypersdk/services/FileProviderService;->readFromAssets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_2
    iget-object p3, p0, Lin/juspay/hypersdk/services/FileProviderService;->fileCacheWhiteList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    if-eqz p2, :cond_3

    invoke-direct {p0, p1, p2}, Lin/juspay/hypersdk/services/FileProviderService;->cacheFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-nez p2, :cond_4

    const-string p1, ""

    return-object p1

    :cond_4
    return-object p2
.end method

.method public setShouldCheckInternalAssets(Z)V
    .locals 0

    iput-boolean p1, p0, Lin/juspay/hypersdk/services/FileProviderService;->shouldCheckInternalAssets:Z

    return-void
.end method

.method public updateCertificate(Ljava/lang/String;[B)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lin/juspay/hypersdk/services/FileProviderService;->writeToFile(Ljava/lang/String;[BZ)Z

    move-result p1

    return p1
.end method

.method public updateFile(Ljava/lang/String;[B)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lin/juspay/hypersdk/services/FileProviderService;->writeToFile(Ljava/lang/String;[BZ)Z

    move-result p1

    return p1
.end method
