.class Lo/MediaMetadataCompat$1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/MediaMetadataCompat$1$onMessageChannelReady;
    }
.end annotation


# instance fields
.field private extraCallback:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lo/MediaDescriptionCompatApi23$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lo/MediaMetadataCompat$1;->extraCallback:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private static ICustomTabsCallback([Ljava/lang/Object;ILo/MediaMetadataCompat$1$onMessageChannelReady;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I",
            "Lo/MediaMetadataCompat$1$onMessageChannelReady<",
            "TT;>;)TT;"
        }
    .end annotation

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    const/16 v0, 0x190

    goto :goto_0

    :cond_0
    const/16 v0, 0x2bc

    :goto_0
    and-int/lit8 p1, p1, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    const/4 v3, 0x0

    const v4, 0x7fffffff

    .line 67
    array-length v5, p0

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_5

    aget-object v7, p0, v6

    .line 68
    invoke-interface {p2, v7}, Lo/MediaMetadataCompat$1$onMessageChannelReady;->onMessageChannelReady(Ljava/lang/Object;)I

    move-result v8

    sub-int/2addr v8, v0

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    shl-int/2addr v8, v2

    .line 69
    invoke-interface {p2, v7}, Lo/MediaMetadataCompat$1$onMessageChannelReady;->extraCallback(Ljava/lang/Object;)Z

    move-result v9

    if-ne v9, p1, :cond_2

    const/4 v9, 0x0

    goto :goto_3

    :cond_2
    const/4 v9, 0x1

    :goto_3
    add-int/2addr v8, v9

    if-eqz v3, :cond_3

    if-le v4, v8, :cond_4

    :cond_3
    move-object v3, v7

    move v4, v8

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    return-object v3
.end method

.method private static onMessageChannelReady(Landroid/graphics/Typeface;)J
    .locals 6

    const-string v0, "Could not retrieve font from family."

    const-string v1, "TypefaceCompatBaseImpl"

    const-wide/16 v2, 0x0

    if-nez p0, :cond_0

    return-wide v2

    .line 85
    :cond_0
    :try_start_0
    const-class v4, Landroid/graphics/Typeface;

    const-string v5, "native_instance"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x1

    .line 86
    invoke-virtual {v4, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 87
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    .line 88
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    .line 93
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-wide v2

    :catch_1
    move-exception p0

    .line 90
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-wide v2
.end method

.method private onMessageChannelReady(Lo/MediaDescriptionCompatApi23$onNavigationEvent;I)Lo/MediaDescriptionCompatApi23$onPostMessage;
    .locals 1

    .line 153
    invoke-virtual {p1}, Lo/MediaDescriptionCompatApi23$onNavigationEvent;->onNavigationEvent()[Lo/MediaDescriptionCompatApi23$onPostMessage;

    move-result-object p1

    new-instance v0, Lo/MediaMetadataCompat$1$1;

    invoke-direct {v0, p0}, Lo/MediaMetadataCompat$1$1;-><init>(Lo/MediaMetadataCompat$1;)V

    invoke-static {p1, p2, v0}, Lo/MediaMetadataCompat$1;->ICustomTabsCallback([Ljava/lang/Object;ILo/MediaMetadataCompat$1$onMessageChannelReady;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MediaDescriptionCompatApi23$onPostMessage;

    return-object p1
.end method

.method private onPostMessage(Landroid/graphics/Typeface;Lo/MediaDescriptionCompatApi23$onNavigationEvent;)V
    .locals 4

    .line 219
    invoke-static {p1}, Lo/MediaMetadataCompat$1;->onMessageChannelReady(Landroid/graphics/Typeface;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 221
    iget-object p1, p0, Lo/MediaMetadataCompat$1;->extraCallback:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public ICustomTabsCallback(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .locals 0

    .line 187
    invoke-static {p1}, Lo/MediaMetadataCompat$Builder;->extraCallback(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    const/4 p4, 0x0

    if-nez p1, :cond_0

    return-object p4

    .line 192
    :cond_0
    :try_start_0
    invoke-static {p1, p2, p3}, Lo/MediaMetadataCompat$Builder;->extraCallback(Ljava/io/File;Landroid/content/res/Resources;I)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_1

    .line 202
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-object p4

    .line 195
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-object p2

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 203
    throw p2

    .line 202
    :catch_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-object p4
.end method

.method protected ICustomTabsCallback(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;
    .locals 1

    .line 114
    invoke-static {p1}, Lo/MediaMetadataCompat$Builder;->extraCallback(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 119
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lo/MediaMetadataCompat$Builder;->extraCallback(Ljava/io/File;Ljava/io/InputStream;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_1

    .line 129
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-object v0

    .line 122
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-object p2

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 130
    throw p2

    .line 129
    :catch_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-object v0
.end method

.method public ICustomTabsCallback(Landroid/content/Context;Lo/MediaDescriptionCompatApi23$onNavigationEvent;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .locals 2

    .line 169
    invoke-direct {p0, p2, p4}, Lo/MediaMetadataCompat$1;->onMessageChannelReady(Lo/MediaDescriptionCompatApi23$onNavigationEvent;I)Lo/MediaDescriptionCompatApi23$onPostMessage;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 174
    :cond_0
    invoke-virtual {v0}, Lo/MediaDescriptionCompatApi23$onPostMessage;->asBinder()I

    move-result v1

    invoke-virtual {v0}, Lo/MediaDescriptionCompatApi23$onPostMessage;->onPostMessage()Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {p1, p3, v1, v0, p4}, Lo/getBundle;->onMessageChannelReady(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 176
    invoke-direct {p0, p1, p2}, Lo/MediaMetadataCompat$1;->onPostMessage(Landroid/graphics/Typeface;Lo/MediaDescriptionCompatApi23$onNavigationEvent;)V

    return-object p1
.end method

.method protected ICustomTabsCallback([Lo/RatingCompat$onMessageChannelReady;I)Lo/RatingCompat$onMessageChannelReady;
    .locals 1

    .line 99
    new-instance v0, Lo/MediaMetadataCompat$1$2;

    invoke-direct {v0, p0}, Lo/MediaMetadataCompat$1$2;-><init>(Lo/MediaMetadataCompat$1;)V

    invoke-static {p1, p2, v0}, Lo/MediaMetadataCompat$1;->ICustomTabsCallback([Ljava/lang/Object;ILo/MediaMetadataCompat$1$onMessageChannelReady;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/RatingCompat$onMessageChannelReady;

    return-object p1
.end method

.method public onMessageChannelReady(Landroid/content/Context;Landroid/os/CancellationSignal;[Lo/RatingCompat$onMessageChannelReady;I)Landroid/graphics/Typeface;
    .locals 1

    .line 137
    array-length p2, p3

    const/4 v0, 0x0

    if-gtz p2, :cond_0

    return-object v0

    .line 140
    :cond_0
    invoke-virtual {p0, p3, p4}, Lo/MediaMetadataCompat$1;->ICustomTabsCallback([Lo/RatingCompat$onMessageChannelReady;I)Lo/RatingCompat$onMessageChannelReady;

    move-result-object p2

    .line 143
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-virtual {p2}, Lo/RatingCompat$onMessageChannelReady;->ICustomTabsCallback()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 144
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lo/MediaMetadataCompat$1;->ICustomTabsCallback(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    invoke-static {p2}, Lo/MediaMetadataCompat$Builder;->onPostMessage(Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    move-object v0, p2

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    invoke-static {v0}, Lo/MediaMetadataCompat$Builder;->onPostMessage(Ljava/io/Closeable;)V

    .line 149
    throw p1

    :catch_0
    move-object p2, v0

    .line 148
    :catch_1
    invoke-static {p2}, Lo/MediaMetadataCompat$Builder;->onPostMessage(Ljava/io/Closeable;)V

    return-object v0
.end method

.method onNavigationEvent(Landroid/graphics/Typeface;)Lo/MediaDescriptionCompatApi23$onNavigationEvent;
    .locals 4

    .line 211
    invoke-static {p1}, Lo/MediaMetadataCompat$1;->onMessageChannelReady(Landroid/graphics/Typeface;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 215
    :cond_0
    iget-object p1, p0, Lo/MediaMetadataCompat$1;->extraCallback:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MediaDescriptionCompatApi23$onNavigationEvent;

    return-object p1
.end method
