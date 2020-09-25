.class public final Lo/trackLocation;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setDeviceTrackingDisabled;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setDeviceTrackingDisabled<",
        "Lo/getRootAlpha<",
        "Lo/convertToJsonObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/util/concurrent/Executor;

.field final extraCallback:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Landroid/content/ContentResolver;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lo/trackLocation;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    .line 50
    iput-object p2, p0, Lo/trackLocation;->extraCallback:Landroid/content/ContentResolver;

    return-void
.end method

.method static onNavigationEvent(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 4

    .line 170
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-lt v0, v2, :cond_0

    :try_start_0
    const-string v0, "r"

    .line 172
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    .line 173
    new-instance p1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {p1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 174
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    const-wide/16 v2, -0x1

    .line 175
    invoke-virtual {p1, v2, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    return-object v1
.end method


# virtual methods
.method final extraCallback(Lo/getHostPrefix;)Ljava/lang/String;
    .locals 10

    .line 1150
    iget-object v0, p1, Lo/getHostPrefix;->ICustomTabsCallback:Landroid/net/Uri;

    .line 139
    invoke-static {v0}, Lo/setLayoutDirection;->ICustomTabsCallback(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {p1}, Lo/getHostPrefix;->extraCallback()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 141
    :cond_0
    invoke-static {v0}, Lo/setLayoutDirection;->onNavigationEvent(Landroid/net/Uri;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 144
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt p1, v2, :cond_1

    .line 145
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    const-string v2, "com.android.providers.media.documents"

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 146
    invoke-static {v0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 147
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, ":"

    .line 149
    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v2

    aput-object p1, v3, v4

    const-string p1, "_id=?"

    move-object v7, p1

    move-object v5, v0

    move-object v8, v3

    goto :goto_0

    :cond_1
    move-object v5, v0

    move-object v7, v1

    move-object v8, v7

    .line 151
    :goto_0
    iget-object v4, p0, Lo/trackLocation;->extraCallback:Landroid/content/ContentResolver;

    const-string p1, "_data"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    .line 152
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 155
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 156
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 160
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p1

    :cond_4
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v1
.end method

.method public final extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/waitForCustomerUserId<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;",
            "Lo/setPreinstallAttribution;",
            ")V"
        }
    .end annotation

    .line 58
    invoke-interface {p2}, Lo/setPreinstallAttribution;->ICustomTabsCallback()Lo/unregisterConversionListener;

    move-result-object v6

    .line 59
    invoke-interface {p2}, Lo/setPreinstallAttribution;->onMessageChannelReady()Lo/getHostPrefix;

    move-result-object v8

    const-string v0, "local"

    const-string/jumbo v1, "video"

    .line 60
    invoke-interface {p2, v0, v1}, Lo/setPreinstallAttribution;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance v9, Lo/trackLocation$3;

    const-string v5, "VideoThumbnailProducer"

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, v6

    move-object v4, p2

    move-object v7, p2

    invoke-direct/range {v0 .. v8}, Lo/trackLocation$3;-><init>(Lo/trackLocation;Lo/waitForCustomerUserId;Lo/unregisterConversionListener;Lo/setPreinstallAttribution;Ljava/lang/String;Lo/unregisterConversionListener;Lo/setPreinstallAttribution;Lo/getHostPrefix;)V

    .line 119
    new-instance p1, Lo/trackLocation$4;

    invoke-direct {p1, v9}, Lo/trackLocation$4;-><init>(Lo/validateAndTrackInAppPurchase;)V

    invoke-interface {p2, p1}, Lo/setPreinstallAttribution;->onPostMessage(Lo/releaseGlows$onPostMessage$onMessageChannelReady;)V

    .line 126
    iget-object p1, p0, Lo/trackLocation;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
