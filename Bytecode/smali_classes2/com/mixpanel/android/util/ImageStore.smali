.class public Lcom/mixpanel/android/util/ImageStore;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mixpanel/android/util/ImageStore$CantGetImageException;
    }
.end annotation


# static fields
.field public static ICustomTabsCallback:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final extraCallback:Ljava/io/File;

.field private final onMessageChannelReady:Lo/SessionSettingsData;

.field private final onNavigationEvent:Ljava/security/MessageDigest;

.field private final onPostMessage:Lcom/mixpanel/android/util/RemoteService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 37
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "MixpanelAPI.Images."

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lo/isRepeatingSequence;

    invoke-direct {v0}, Lo/isRepeatingSequence;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/mixpanel/android/util/ImageStore;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mixpanel/android/util/RemoteService;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/mixpanel/android/util/RemoteService;)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p2

    iput-object p2, p0, Lcom/mixpanel/android/util/ImageStore;->extraCallback:Ljava/io/File;

    .line 42
    iput-object p3, p0, Lcom/mixpanel/android/util/ImageStore;->onPostMessage:Lcom/mixpanel/android/util/RemoteService;

    .line 43
    invoke-static {p1}, Lo/SessionSettingsData;->ICustomTabsCallback(Landroid/content/Context;)Lo/SessionSettingsData;

    move-result-object p1

    iput-object p1, p0, Lcom/mixpanel/android/util/ImageStore;->onMessageChannelReady:Lo/SessionSettingsData;

    :try_start_0
    const-string p1, "SHA1"

    .line 46
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "MixpanelAPI.ImageStore"

    const-string p2, "Images won\'t be stored because this platform doesn\'t supply a SHA1 hash function"

    .line 48
    invoke-static {p1, p2}, Lo/TrimmedThrowableData;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 52
    :goto_0
    iput-object p1, p0, Lcom/mixpanel/android/util/ImageStore;->onNavigationEvent:Ljava/security/MessageDigest;

    .line 54
    sget-object p1, Lcom/mixpanel/android/util/ImageStore;->ICustomTabsCallback:Landroid/util/LruCache;

    if-nez p1, :cond_1

    .line 55
    const-class p1, Lcom/mixpanel/android/util/ImageStore;

    monitor-enter p1

    .line 56
    :try_start_1
    sget-object p2, Lcom/mixpanel/android/util/ImageStore;->ICustomTabsCallback:Landroid/util/LruCache;

    if-nez p2, :cond_0

    .line 57
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide p2

    const-wide/16 v0, 0x400

    div-long/2addr p2, v0

    long-to-int p3, p2

    .line 58
    iget-object p2, p0, Lcom/mixpanel/android/util/ImageStore;->onMessageChannelReady:Lo/SessionSettingsData;

    .line 1502
    iget p2, p2, Lo/SessionSettingsData;->IPostMessageService:I

    .line 58
    div-int/2addr p3, p2

    .line 60
    new-instance p2, Lcom/mixpanel/android/util/ImageStore$5;

    invoke-direct {p2, p3}, Lcom/mixpanel/android/util/ImageStore$5;-><init>(I)V

    sput-object p2, Lcom/mixpanel/android/util/ImageStore;->ICustomTabsCallback:Landroid/util/LruCache;

    .line 67
    :cond_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2

    :cond_1
    return-void
.end method

.method private static ICustomTabsCallback(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/util/ImageStore$CantGetImageException;
        }
    .end annotation

    .line 124
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 125
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 126
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 127
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v0, v0

    mul-float v1, v1, v0

    const/high16 v0, 0x40800000    # 4.0f

    mul-float v1, v1, v0

    .line 3142
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 3143
    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-float v2, v2

    .line 3144
    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v3

    long-to-float v0, v3

    sub-float/2addr v0, v2

    cmpl-float v0, v1, v0

    if-gtz v0, :cond_1

    .line 132
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 134
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 135
    new-instance p0, Lcom/mixpanel/android/util/ImageStore$CantGetImageException;

    const-string v0, "Bitmap on disk can\'t be opened or was corrupt"

    invoke-direct {p0, v0}, Lcom/mixpanel/android/util/ImageStore$CantGetImageException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 129
    :cond_1
    new-instance p0, Lcom/mixpanel/android/util/ImageStore$CantGetImageException;

    const-string v0, "Do not have enough memory for the image"

    invoke-direct {p0, v0}, Lcom/mixpanel/android/util/ImageStore$CantGetImageException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private extraCallback(Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/util/ImageStore$CantGetImageException;
        }
    .end annotation

    const-string v0, "Problem closing output file"

    const-string v1, "MixpanelAPI.ImageStore"

    .line 72
    invoke-virtual {p0, p1}, Lcom/mixpanel/android/util/ImageStore;->ICustomTabsCallback(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 75
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 77
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/mixpanel/android/util/ImageStore;->onMessageChannelReady:Lo/SessionSettingsData;

    invoke-virtual {v3}, Lo/SessionSettingsData;->extraCallback()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    .line 78
    iget-object v4, p0, Lcom/mixpanel/android/util/ImageStore;->onPostMessage:Lcom/mixpanel/android/util/RemoteService;

    const/4 v5, 0x0

    invoke-interface {v4, p1, v5, v3}, Lcom/mixpanel/android/util/RemoteService;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;Ljavax/net/ssl/SSLSocketFactory;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/mixpanel/android/util/RemoteService$ServiceUnavailableException; {:try_start_0 .. :try_end_0} :catch_6

    if-eqz p1, :cond_2

    if-eqz v2, :cond_2

    .line 86
    array-length v3, p1

    const v4, 0x989680

    if-ge v3, v4, :cond_2

    .line 89
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 90
    :try_start_2
    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 100
    invoke-static {v1, v0, p1}, Lo/TrimmedThrowableData;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catchall_0
    move-exception p1

    move-object v5, v3

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v5, v3

    goto :goto_0

    :catch_2
    move-exception p1

    move-object v5, v3

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_3
    move-exception p1

    .line 94
    :goto_0
    :try_start_4
    new-instance v2, Lcom/mixpanel/android/util/ImageStore$CantGetImageException;

    const-string v3, "Can\'t store bitmap"

    invoke-direct {v2, v3, p1}, Lcom/mixpanel/android/util/ImageStore$CantGetImageException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_4
    move-exception p1

    .line 92
    :goto_1
    new-instance v2, Lcom/mixpanel/android/util/ImageStore$CantGetImageException;

    const-string v3, "It appears that ImageStore is misconfigured, or disk storage is unavailable- can\'t write to bitmap directory"

    invoke-direct {v2, v3, p1}, Lcom/mixpanel/android/util/ImageStore$CantGetImageException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    if-eqz v5, :cond_1

    .line 98
    :try_start_5
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_3

    :catch_5
    move-exception v2

    .line 100
    invoke-static {v1, v0, v2}, Lo/TrimmedThrowableData;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    :cond_1
    :goto_3
    throw p1

    :cond_2
    :goto_4
    return-object v2

    :catch_6
    move-exception p1

    .line 82
    new-instance v0, Lcom/mixpanel/android/util/ImageStore$CantGetImageException;

    const-string v1, "Couldn\'t download image due to service availability"

    invoke-direct {v0, v1, p1}, Lcom/mixpanel/android/util/ImageStore$CantGetImageException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_7
    move-exception p1

    .line 80
    new-instance v0, Lcom/mixpanel/android/util/ImageStore$CantGetImageException;

    const-string v1, "Can\'t download bitmap"

    invoke-direct {v0, v1, p1}, Lcom/mixpanel/android/util/ImageStore$CantGetImageException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static onNavigationEvent(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .line 188
    sget-object v0, Lcom/mixpanel/android/util/ImageStore;->ICustomTabsCallback:Landroid/util/LruCache;

    monitor-enter v0

    .line 189
    :try_start_0
    sget-object v1, Lcom/mixpanel/android/util/ImageStore;->ICustomTabsCallback:Landroid/util/LruCache;

    invoke-virtual {v1, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 190
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/mixpanel/android/util/ImageStore;->onNavigationEvent:Ljava/security/MessageDigest;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 174
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MP_IMG_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0xa

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 176
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mixpanel/android/util/ImageStore;->extraCallback:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final onPostMessage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/util/ImageStore$CantGetImageException;
        }
    .end annotation

    .line 112
    invoke-static {p1}, Lcom/mixpanel/android/util/ImageStore;->onNavigationEvent(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 115
    invoke-direct {p0, p1}, Lcom/mixpanel/android/util/ImageStore;->extraCallback(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 116
    invoke-static {v0}, Lcom/mixpanel/android/util/ImageStore;->ICustomTabsCallback(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2180
    invoke-static {p1}, Lcom/mixpanel/android/util/ImageStore;->onNavigationEvent(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2181
    sget-object v1, Lcom/mixpanel/android/util/ImageStore;->ICustomTabsCallback:Landroid/util/LruCache;

    monitor-enter v1

    .line 2182
    :try_start_0
    sget-object v2, Lcom/mixpanel/android/util/ImageStore;->ICustomTabsCallback:Landroid/util/LruCache;

    invoke-virtual {v2, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2183
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1

    :cond_0
    :goto_0
    return-object v0
.end method
