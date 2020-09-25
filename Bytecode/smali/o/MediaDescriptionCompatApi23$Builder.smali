.class public Lo/MediaDescriptionCompatApi23$Builder;
.super Landroid/content/ContentProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/MediaDescriptionCompatApi23$Builder$ICustomTabsCallback;,
        Lo/MediaDescriptionCompatApi23$Builder$onPostMessage;
    }
.end annotation


# static fields
.field private static extraCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lo/MediaDescriptionCompatApi23$Builder$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final onMessageChannelReady:Ljava/io/File;

.field private static final onPostMessage:[Ljava/lang/String;


# instance fields
.field private onNavigationEvent:Lo/MediaDescriptionCompatApi23$Builder$onPostMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "_display_name"

    const-string v1, "_size"

    .line 340
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/MediaDescriptionCompatApi23$Builder;->onPostMessage:[Ljava/lang/String;

    .line 357
    new-instance v0, Ljava/io/File;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/MediaDescriptionCompatApi23$Builder;->onMessageChannelReady:Ljava/io/File;

    .line 360
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lo/MediaDescriptionCompatApi23$Builder;->extraCallback:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 339
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;
    .locals 0

    .line 417
    invoke-static {p0, p1}, Lo/MediaDescriptionCompatApi23$Builder;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;)Lo/MediaDescriptionCompatApi23$Builder$onPostMessage;

    move-result-object p0

    .line 418
    invoke-interface {p0, p2}, Lo/MediaDescriptionCompatApi23$Builder$onPostMessage;->onNavigationEvent(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static varargs onMessageChannelReady(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-gtz v1, :cond_1

    .line 820
    aget-object v2, p1, v0

    if-eqz v2, :cond_0

    .line 822
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p0, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private static onNavigationEvent(Landroid/content/Context;Ljava/lang/String;)Lo/MediaDescriptionCompatApi23$Builder$onPostMessage;
    .locals 11

    .line 575
    sget-object v0, Lo/MediaDescriptionCompatApi23$Builder;->extraCallback:Ljava/util/HashMap;

    monitor-enter v0

    .line 576
    :try_start_0
    sget-object v1, Lo/MediaDescriptionCompatApi23$Builder;->extraCallback:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/MediaDescriptionCompatApi23$Builder$onPostMessage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_c

    .line 3601
    :try_start_1
    new-instance v1, Lo/MediaDescriptionCompatApi23$Builder$ICustomTabsCallback;

    invoke-direct {v1, p1}, Lo/MediaDescriptionCompatApi23$Builder$ICustomTabsCallback;-><init>(Ljava/lang/String;)V

    .line 3603
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    .line 3604
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 3611
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.support.FILE_PROVIDER_PATHS"

    .line 3610
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageItemInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 3618
    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_9

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    .line 3620
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "name"

    const/4 v6, 0x0

    .line 3622
    invoke-interface {v2, v6, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "path"

    .line 3623
    invoke-interface {v2, v6, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "root-path"

    .line 3626
    invoke-virtual {v8, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_1

    .line 3627
    sget-object v6, Lo/MediaDescriptionCompatApi23$Builder;->onMessageChannelReady:Ljava/io/File;

    goto :goto_1

    :cond_1
    const-string v8, "files-path"

    .line 3628
    invoke-virtual {v8, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3629
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    goto :goto_1

    :cond_2
    const-string v8, "cache-path"

    .line 3630
    invoke-virtual {v8, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3631
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    goto :goto_1

    :cond_3
    const-string v8, "external-path"

    .line 3632
    invoke-virtual {v8, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3633
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    goto :goto_1

    :cond_4
    const-string v8, "external-files-path"

    .line 3634
    invoke-virtual {v8, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3635
    invoke-static {p0, v6}, Lo/fromParcel;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v3

    .line 3636
    array-length v8, v3

    if-lez v8, :cond_7

    .line 3637
    aget-object v6, v3, v9

    goto :goto_1

    :cond_5
    const-string v8, "external-cache-path"

    .line 3639
    invoke-virtual {v8, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 3640
    invoke-static {p0}, Lo/fromParcel;->ICustomTabsCallback(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v3

    .line 3641
    array-length v8, v3

    if-lez v8, :cond_7

    .line 3642
    aget-object v6, v3, v9

    goto :goto_1

    .line 3644
    :cond_6
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-lt v8, v10, :cond_7

    const-string v8, "external-media-path"

    .line 3645
    invoke-virtual {v8, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3646
    invoke-virtual {p0}, Landroid/content/Context;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object v3

    .line 3647
    array-length v8, v3

    if-lez v8, :cond_7

    .line 3648
    aget-object v6, v3, v9

    :cond_7
    :goto_1
    if-eqz v6, :cond_0

    new-array v3, v4, [Ljava/lang/String;

    aput-object v7, v3, v9

    .line 3653
    invoke-static {v6, v3}, Lo/MediaDescriptionCompatApi23$Builder;->onMessageChannelReady(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 3709
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_8

    .line 3715
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3721
    :try_start_3
    iget-object v4, v1, Lo/MediaDescriptionCompatApi23$Builder$ICustomTabsCallback;->onNavigationEvent:Ljava/util/HashMap;

    invoke-virtual {v4, v5, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :catch_0
    move-exception p0

    .line 3717
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to resolve canonical path for "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 3710
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Name must not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 587
    :cond_9
    :try_start_4
    sget-object p0, Lo/MediaDescriptionCompatApi23$Builder;->extraCallback:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 3613
    :cond_a
    :try_start_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Missing android.support.FILE_PROVIDER_PATHS meta-data"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3606
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Couldn\'t find meta-data for provider with authority "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_1
    move-exception p0

    .line 584
    :try_start_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to parse android.support.FILE_PROVIDER_PATHS meta-data"

    invoke-direct {p1, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    .line 581
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to parse android.support.FILE_PROVIDER_PATHS meta-data"

    invoke-direct {p1, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 589
    :cond_c
    :goto_2
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 1

    .line 382
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 385
    iget-boolean v0, p2, Landroid/content/pm/ComponentInfo;->exported:Z

    if-nez v0, :cond_1

    .line 388
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    if-eqz v0, :cond_0

    .line 392
    iget-object p2, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {p1, p2}, Lo/MediaDescriptionCompatApi23$Builder;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;)Lo/MediaDescriptionCompatApi23$Builder$onPostMessage;

    move-result-object p1

    iput-object p1, p0, Lo/MediaDescriptionCompatApi23$Builder;->onNavigationEvent:Lo/MediaDescriptionCompatApi23$Builder$onPostMessage;

    return-void

    .line 389
    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Provider must grant uri permissions"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 386
    :cond_1
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Provider must not be exported"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 541
    iget-object p2, p0, Lo/MediaDescriptionCompatApi23$Builder;->onNavigationEvent:Lo/MediaDescriptionCompatApi23$Builder$onPostMessage;

    invoke-interface {p2, p1}, Lo/MediaDescriptionCompatApi23$Builder$onPostMessage;->extraCallback(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    .line 542
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .line 493
    iget-object v0, p0, Lo/MediaDescriptionCompatApi23$Builder;->onNavigationEvent:Lo/MediaDescriptionCompatApi23$Builder$onPostMessage;

    invoke-interface {v0, p1}, Lo/MediaDescriptionCompatApi23$Builder$onPostMessage;->extraCallback(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    .line 495
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 497
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 498
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const-string p1, "application/octet-stream"

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 513
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "No external inserts"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 564
    iget-object v0, p0, Lo/MediaDescriptionCompatApi23$Builder;->onNavigationEvent:Lo/MediaDescriptionCompatApi23$Builder$onPostMessage;

    invoke-interface {v0, p1}, Lo/MediaDescriptionCompatApi23$Builder$onPostMessage;->extraCallback(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    const-string v0, "r"

    .line 2795
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p2, 0x10000000

    goto :goto_1

    :cond_0
    const-string/jumbo v0, "w"

    .line 2797
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "wt"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "wa"

    .line 2801
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 p2, 0x2a000000

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "rw"

    .line 2805
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 p2, 0x38000000

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "rwt"

    .line 2808
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/high16 p2, 0x3c000000    # 0.0078125f

    goto :goto_1

    .line 2813
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Invalid mode: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_0
    const/high16 p2, 0x2c000000

    .line 566
    :goto_1
    invoke-static {p1, p2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .line 454
    iget-object p3, p0, Lo/MediaDescriptionCompatApi23$Builder;->onNavigationEvent:Lo/MediaDescriptionCompatApi23$Builder$onPostMessage;

    invoke-interface {p3, p1}, Lo/MediaDescriptionCompatApi23$Builder$onPostMessage;->extraCallback(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    if-nez p2, :cond_0

    .line 457
    sget-object p2, Lo/MediaDescriptionCompatApi23$Builder;->onPostMessage:[Ljava/lang/String;

    .line 460
    :cond_0
    array-length p3, p2

    new-array p3, p3, [Ljava/lang/String;

    .line 461
    array-length p4, p2

    new-array p4, p4, [Ljava/lang/Object;

    .line 463
    array-length p5, p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p5, :cond_3

    aget-object v3, p2, v1

    const-string v4, "_display_name"

    .line 464
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 465
    aput-object v4, p3, v2

    add-int/lit8 v3, v2, 0x1

    .line 466
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p4, v2

    :goto_1
    move v2, v3

    goto :goto_2

    :cond_1
    const-string v4, "_size"

    .line 467
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 468
    aput-object v4, p3, v2

    add-int/lit8 v3, v2, 0x1

    .line 469
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, p4, v2

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1829
    :cond_3
    new-array p1, v2, [Ljava/lang/String;

    .line 1830
    invoke-static {p3, v0, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1835
    new-array p2, v2, [Ljava/lang/Object;

    .line 1836
    invoke-static {p4, v0, p2, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 476
    new-instance p3, Landroid/database/MatrixCursor;

    const/4 p4, 0x1

    invoke-direct {p3, p1, p4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 477
    invoke-virtual {p3, p2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object p3
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 523
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "No external updates"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
