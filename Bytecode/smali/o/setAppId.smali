.class public Lo/setAppId;
.super Lo/setResolveDeepLinkURLs;
.source ""

# interfaces
.implements Lo/setHost;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setResolveDeepLinkURLs;",
        "Lo/setHost<",
        "Lo/getCardBackgroundColor;",
        ">;"
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Landroid/graphics/Rect;

.field private static final extraCallback:[Ljava/lang/String;

.field private static final onMessageChannelReady:Landroid/graphics/Rect;

.field private static final onNavigationEvent:[Ljava/lang/String;

.field private static final onPostMessage:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final asInterface:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 33
    const-class v0, Lo/setAppId;

    sput-object v0, Lo/setAppId;->onPostMessage:Ljava/lang/Class;

    const-string v0, "_data"

    const-string v1, "_id"

    .line 37
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lo/setAppId;->extraCallback:[Ljava/lang/String;

    .line 39
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/setAppId;->onNavigationEvent:[Ljava/lang/String;

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/16 v2, 0x200

    const/16 v3, 0x180

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lo/setAppId;->onMessageChannelReady:Landroid/graphics/Rect;

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    const/16 v2, 0x60

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lo/setAppId;->ICustomTabsCallback:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lo/CustomVersionedParcelable;Landroid/content/ContentResolver;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lo/setResolveDeepLinkURLs;-><init>(Ljava/util/concurrent/Executor;Lo/CustomVersionedParcelable;)V

    .line 54
    iput-object p3, p0, Lo/setAppId;->asInterface:Landroid/content/ContentResolver;

    return-void
.end method

.method private ICustomTabsCallback(Landroid/net/Uri;Lo/ǃ;)Lo/getCardBackgroundColor;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 79
    :cond_0
    iget-object v1, p0, Lo/setAppId;->asInterface:Landroid/content/ContentResolver;

    sget-object v3, Lo/setAppId;->extraCallback:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 84
    :cond_1
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "_id"

    .line 85
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 87
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-direct {p0, p2, v1, v2}, Lo/setAppId;->onMessageChannelReady(Lo/ǃ;J)Lo/getCardBackgroundColor;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string v0, "_data"

    .line 90
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {v0}, Lo/setAppId;->extraCallback(Ljava/lang/String;)I

    move-result v0

    .line 1180
    iput v0, p2, Lo/getCardBackgroundColor;->onNavigationEvent:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw p2
.end method

.method private static extraCallback(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    .line 160
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v3, "Orientation"

    .line 162
    invoke-virtual {v2, v3, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    .line 3045
    invoke-static {v2}, Lo/ɹ;->extraCallback(I)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v2

    .line 164
    sget-object v3, Lo/setAppId;->onPostMessage:Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    const-string p0, "Unable to retrieve thumbnail rotation for %s"

    invoke-static {v3, v2, p0, v1}, Lo/setTranslateX;->onNavigationEvent(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v0
.end method

.method private onMessageChannelReady(Lo/ǃ;J)Lo/getCardBackgroundColor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2137
    sget-object v0, Lo/setAppId;->ICustomTabsCallback:Landroid/graphics/Rect;

    .line 2138
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sget-object v1, Lo/setAppId;->ICustomTabsCallback:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 2137
    invoke-static {v0, v1, p1}, Lo/isAttachedToWindow$onMessageChannelReady;->onNavigationEvent(IILo/ǃ;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    .line 2140
    :cond_0
    sget-object v0, Lo/setAppId;->onMessageChannelReady:Landroid/graphics/Rect;

    .line 2141
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sget-object v1, Lo/setAppId;->onMessageChannelReady:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 2140
    invoke-static {v0, v1, p1}, Lo/isAttachedToWindow$onMessageChannelReady;->onNavigationEvent(IILo/ǃ;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_2

    return-object v0

    .line 111
    :cond_2
    iget-object v1, p0, Lo/setAppId;->asInterface:Landroid/content/ContentResolver;

    sget-object v2, Lo/setAppId;->onNavigationEvent:[Ljava/lang/String;

    .line 112
    invoke-static {v1, p2, p3, p1, v2}, Landroid/provider/MediaStore$Images$Thumbnails;->queryMiniThumbnail(Landroid/content/ContentResolver;JI[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v0

    .line 118
    :cond_3
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "_data"

    .line 121
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 120
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 122
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 123
    new-instance p3, Ljava/io/FileInputStream;

    invoke-direct {p3, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_4

    const/4 p2, -0x1

    goto :goto_1

    .line 2149
    :cond_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int p2, v0

    .line 123
    :goto_1
    invoke-virtual {p0, p3, p2}, Lo/setAppId;->ICustomTabsCallback(Ljava/io/InputStream;I)Lo/getCardBackgroundColor;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    :cond_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw p2
.end method


# virtual methods
.method protected final onMessageChannelReady()Ljava/lang/String;
    .locals 1

    const-string v0, "LocalContentUriThumbnailFetchProducer"

    return-object v0
.end method

.method protected final onMessageChannelReady(Lo/getHostPrefix;)Lo/getCardBackgroundColor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1150
    iget-object v0, p1, Lo/getHostPrefix;->ICustomTabsCallback:Landroid/net/Uri;

    .line 67
    invoke-static {v0}, Lo/setLayoutDirection;->onTransact(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1166
    iget-object p1, p1, Lo/getHostPrefix;->asBinder:Lo/ǃ;

    .line 68
    invoke-direct {p0, v0, p1}, Lo/setAppId;->ICustomTabsCallback(Landroid/net/Uri;Lo/ǃ;)Lo/getCardBackgroundColor;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final onNavigationEvent(Lo/ǃ;)Z
    .locals 2

    .line 59
    sget-object v0, Lo/setAppId;->onMessageChannelReady:Landroid/graphics/Rect;

    .line 60
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sget-object v1, Lo/setAppId;->onMessageChannelReady:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 59
    invoke-static {v0, v1, p1}, Lo/isAttachedToWindow$onMessageChannelReady;->onNavigationEvent(IILo/ǃ;)Z

    move-result p1

    return p1
.end method
