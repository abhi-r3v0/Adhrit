.class Lcom/google/firebase/crashlytics/ndk/BreakpadController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/firebase/crashlytics/ndk/NativeComponentController;


# static fields
.field private static final APP_METADATA_FILE:Ljava/lang/String; = "app.json"

.field private static final DEVICE_METADATA_FILE:Ljava/lang/String; = "device.json"

.field private static final OS_METADATA_FILE:Ljava/lang/String; = "os.json"

.field private static final SESSION_METADATA_FILE:Ljava/lang/String; = "session.json"

.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private final context:Landroid/content/Context;

.field private final filesManager:Lcom/google/firebase/crashlytics/ndk/CrashFilesManager;

.field private final nativeApi:Lcom/google/firebase/crashlytics/ndk/NativeApi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 32
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/ndk/BreakpadController;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/ndk/NativeApi;Lcom/google/firebase/crashlytics/ndk/CrashFilesManager;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/firebase/crashlytics/ndk/BreakpadController;->context:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/google/firebase/crashlytics/ndk/BreakpadController;->nativeApi:Lcom/google/firebase/crashlytics/ndk/NativeApi;

    .line 45
    iput-object p3, p0, Lcom/google/firebase/crashlytics/ndk/BreakpadController;->filesManager:Lcom/google/firebase/crashlytics/ndk/CrashFilesManager;

    return-void
.end method

.method private static getSingleFileWithExtension(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 174
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 175
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private writeSessionJsonFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/BreakpadController;->filesManager:Lcom/google/firebase/crashlytics/ndk/CrashFilesManager;

    invoke-interface {v0, p1}, Lcom/google/firebase/crashlytics/ndk/CrashFilesManager;->getSessionFileDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 155
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 156
    invoke-static {v0, p2}, Lcom/google/firebase/crashlytics/ndk/BreakpadController;->writeTextFile(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method private static writeTextFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 6

    const-string v0, "Failed to close "

    const/4 v1, 0x0

    .line 162
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v5, Lcom/google/firebase/crashlytics/ndk/BreakpadController;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 163
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 168
    throw p1

    .line 167
    :catch_1
    :goto_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public finalizeSession(Ljava/lang/String;)Z
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/BreakpadController;->filesManager:Lcom/google/firebase/crashlytics/ndk/CrashFilesManager;

    invoke-interface {v0, p1}, Lcom/google/firebase/crashlytics/ndk/CrashFilesManager;->deleteSessionFilesDirectory(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public getFilesForSession(Ljava/lang/String;)Lcom/google/firebase/crashlytics/ndk/SessionFiles;
    .locals 4

    .line 81
    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/BreakpadController;->filesManager:Lcom/google/firebase/crashlytics/ndk/CrashFilesManager;

    invoke-interface {v0, p1}, Lcom/google/firebase/crashlytics/ndk/CrashFilesManager;->getSessionFileDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 82
    new-instance v0, Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;-><init>()V

    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ".dmp"

    .line 85
    invoke-static {p1, v1}, Lcom/google/firebase/crashlytics/ndk/BreakpadController;->getSingleFileWithExtension(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;->minidumpFile(Ljava/io/File;)Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;

    move-result-object v1

    const-string v2, ".maps"

    .line 86
    invoke-static {p1, v2}, Lcom/google/firebase/crashlytics/ndk/BreakpadController;->getSingleFileWithExtension(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;->binaryImagesFile(Ljava/io/File;)Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;

    move-result-object v1

    const-string v2, ".device_info"

    .line 87
    invoke-static {p1, v2}, Lcom/google/firebase/crashlytics/ndk/BreakpadController;->getSingleFileWithExtension(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;->metadataFile(Ljava/io/File;)Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "session.json"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;->sessionFile(Ljava/io/File;)Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "app.json"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;->appFile(Ljava/io/File;)Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "device.json"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;->deviceFile(Ljava/io/File;)Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "os.json"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;->osFile(Ljava/io/File;)Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;

    .line 93
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;->build()Lcom/google/firebase/crashlytics/ndk/SessionFiles;

    move-result-object p1

    return-object p1
.end method

.method public hasCrashDataForSession(Ljava/lang/String;)Z
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/BreakpadController;->filesManager:Lcom/google/firebase/crashlytics/ndk/CrashFilesManager;

    invoke-interface {v0, p1}, Lcom/google/firebase/crashlytics/ndk/CrashFilesManager;->hasSessionFileDirectory(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/ndk/BreakpadController;->getFilesForSession(Ljava/lang/String;)Lcom/google/firebase/crashlytics/ndk/SessionFiles;

    move-result-object p1

    iget-object p1, p1, Lcom/google/firebase/crashlytics/ndk/SessionFiles;->minidump:Ljava/io/File;

    if-eqz p1, :cond_0

    .line 67
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public initialize(Ljava/lang/String;)Z
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/BreakpadController;->filesManager:Lcom/google/firebase/crashlytics/ndk/CrashFilesManager;

    invoke-interface {v0, p1}, Lcom/google/firebase/crashlytics/ndk/CrashFilesManager;->getSessionFileDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 54
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    .line 55
    iget-object v1, p0, Lcom/google/firebase/crashlytics/ndk/BreakpadController;->nativeApi:Lcom/google/firebase/crashlytics/ndk/NativeApi;

    iget-object v2, p0, Lcom/google/firebase/crashlytics/ndk/BreakpadController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/google/firebase/crashlytics/ndk/NativeApi;->initialize(Ljava/lang/String;Landroid/content/res/AssetManager;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 58
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v1

    const-string v2, "Error initializing CrashlyticsNdk"

    invoke-virtual {v1, v2, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return v0
.end method

.method public writeBeginSession(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 99
    invoke-static {p1, p2, p3, p4}, Lcom/google/firebase/crashlytics/ndk/SessionMetadataJsonSerializer;->serializeBeginSession(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "session.json"

    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/crashlytics/ndk/BreakpadController;->writeSessionJsonFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeSessionApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    .line 112
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p7, ""

    :goto_0
    move-object v5, p7

    move-object v0, p2

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move v4, p6

    .line 114
    invoke-static/range {v0 .. v5}, Lcom/google/firebase/crashlytics/ndk/SessionMetadataJsonSerializer;->serializeSessionApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "app.json"

    .line 116
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/crashlytics/ndk/BreakpadController;->writeSessionJsonFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeSessionDevice(Ljava/lang/String;ILjava/lang/String;IJJZILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 140
    invoke-static/range {p2 .. p12}, Lcom/google/firebase/crashlytics/ndk/SessionMetadataJsonSerializer;->serializeSessionDevice(ILjava/lang/String;IJJZILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "device.json"

    .line 150
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/crashlytics/ndk/BreakpadController;->writeSessionJsonFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeSessionOs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 123
    invoke-static {p2, p3, p4}, Lcom/google/firebase/crashlytics/ndk/SessionMetadataJsonSerializer;->serializeSessionOs(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    const-string p3, "os.json"

    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/crashlytics/ndk/BreakpadController;->writeSessionJsonFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
