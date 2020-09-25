.class Lcom/google/firebase/crashlytics/internal/ndk/BinaryImagesConverter;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/internal/ndk/BinaryImagesConverter$FileIdStrategy;
    }
.end annotation


# static fields
.field private static final DATA_DIR:Ljava/lang/String; = "/data"


# instance fields
.field private final context:Landroid/content/Context;

.field private final fileIdStrategy:Lcom/google/firebase/crashlytics/internal/ndk/BinaryImagesConverter$FileIdStrategy;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/internal/ndk/BinaryImagesConverter$FileIdStrategy;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/ndk/BinaryImagesConverter;->context:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/ndk/BinaryImagesConverter;->fileIdStrategy:Lcom/google/firebase/crashlytics/internal/ndk/BinaryImagesConverter$FileIdStrategy;

    return-void
.end method

.method private correctDataPath(Ljava/io/File;)Ljava/io/File;
    .locals 3

    .line 140
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    return-object p1

    .line 144
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/ndk/BinaryImagesConverter;->context:Landroid/content/Context;

    .line 147
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/ndk/BinaryImagesConverter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 148
    new-instance v1, Ljava/io/File;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 150
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v1

    const-string v2, "Error getting ApplicationInfo"

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object p1
.end method

.method private static createBinaryImageJson(Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/ndk/ProcMapEntry;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 171
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 172
    iget-wide v1, p1, Lcom/google/firebase/crashlytics/internal/ndk/ProcMapEntry;->address:J

    const-string v3, "base_address"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 173
    iget-wide v1, p1, Lcom/google/firebase/crashlytics/internal/ndk/ProcMapEntry;->size:J

    const-string v3, "size"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 174
    iget-object p1, p1, Lcom/google/firebase/crashlytics/internal/ndk/ProcMapEntry;->path:Ljava/lang/String;

    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "uuid"

    .line 175
    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private static generateBinaryImagesJsonString(Lorg/json/JSONArray;)[B
    .locals 2

    .line 158
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "binary_images"

    .line 160
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 162
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v0

    const-string v1, "Binary images string is null"

    invoke-virtual {v0, v1, p0}, Lcom/google/firebase/crashlytics/internal/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method private getLibraryFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 131
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 133
    invoke-direct {p0, v0}, Lcom/google/firebase/crashlytics/internal/ndk/BinaryImagesConverter;->correctDataPath(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static isRelevant(Lcom/google/firebase/crashlytics/internal/ndk/ProcMapEntry;)Z
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/ndk/ProcMapEntry;->perms:Ljava/lang/String;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/ndk/ProcMapEntry;->path:Ljava/lang/String;

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-eq p0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static joinMapsEntries(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 182
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 183
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private jsonFromMapEntryString(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    .line 103
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/ndk/ProcMapEntryParser;->parse(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/ndk/ProcMapEntry;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 105
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/ndk/BinaryImagesConverter;->isRelevant(Lcom/google/firebase/crashlytics/internal/ndk/ProcMapEntry;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    iget-object v1, p1, Lcom/google/firebase/crashlytics/internal/ndk/ProcMapEntry;->path:Ljava/lang/String;

    .line 110
    invoke-direct {p0, v1}, Lcom/google/firebase/crashlytics/internal/ndk/BinaryImagesConverter;->getLibraryFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 114
    :try_start_0
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/ndk/BinaryImagesConverter;->fileIdStrategy:Lcom/google/firebase/crashlytics/internal/ndk/BinaryImagesConverter$FileIdStrategy;

    invoke-interface {v2, v1}, Lcom/google/firebase/crashlytics/internal/ndk/BinaryImagesConverter$FileIdStrategy;->createId(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 121
    :try_start_1
    invoke-static {v1, p1}, Lcom/google/firebase/crashlytics/internal/ndk/BinaryImagesConverter;->createBinaryImageJson(Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/ndk/ProcMapEntry;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 123
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v1

    const-string v2, "Could not create a binary image json string"

    invoke-virtual {v1, v2, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :catch_1
    move-exception v1

    .line 116
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not generate ID for file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/google/firebase/crashlytics/internal/ndk/ProcMapEntry;->path:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method private parseProcMapsJsonFromStream(Ljava/io/BufferedReader;)Lorg/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 64
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 65
    invoke-direct {p0, v1}, Lcom/google/firebase/crashlytics/internal/ndk/BinaryImagesConverter;->jsonFromMapEntryString(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private parseProcMapsJsonFromString(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 3

    .line 76
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 80
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "maps"

    .line 81
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 82
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/ndk/BinaryImagesConverter;->joinMapsEntries(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "\\|"

    .line 88
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 90
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 91
    aget-object v2, p1, v1

    .line 92
    invoke-direct {p0, v2}, Lcom/google/firebase/crashlytics/internal/ndk/BinaryImagesConverter;->jsonFromMapEntryString(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 94
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p1

    .line 84
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v1

    const-string v2, "Unable to parse proc maps string"

    invoke-virtual {v1, v2, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method convert(Ljava/io/BufferedReader;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/ndk/BinaryImagesConverter;->parseProcMapsJsonFromStream(Ljava/io/BufferedReader;)Lorg/json/JSONArray;

    move-result-object p1

    .line 56
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/ndk/BinaryImagesConverter;->generateBinaryImagesJsonString(Lorg/json/JSONArray;)[B

    move-result-object p1

    return-object p1
.end method

.method convert(Ljava/lang/String;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/ndk/BinaryImagesConverter;->parseProcMapsJsonFromString(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 50
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/ndk/BinaryImagesConverter;->generateBinaryImagesJsonString(Lorg/json/JSONArray;)[B

    move-result-object p1

    return-object p1
.end method
