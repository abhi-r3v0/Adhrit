.class public final Lo/createButton;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final onNavigationEvent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/createSeekBar<",
            "Lo/createCheckBox;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lo/createButton;->onNavigationEvent:Ljava/util/Map;

    return-void
.end method

.method public static ICustomTabsCallback(Ljava/io/InputStream;Ljava/lang/String;)Lo/createSeekBar;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Lo/createSeekBar<",
            "Lo/createCheckBox;",
            ">;"
        }
    .end annotation

    .line 274
    new-instance v0, Lo/createButton$9;

    invoke-direct {v0, p0, p1}, Lo/createButton$9;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lo/createButton;->extraCallback(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lo/createSeekBar;

    move-result-object p0

    return-object p0
.end method

.method public static ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lo/verifyNotNull;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lo/verifyNotNull<",
            "Lo/createCheckBox;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, ".zip"

    .line 178
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, p2}, Lo/createButton;->onPostMessage(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lo/verifyNotNull;

    move-result-object p0

    return-object p0

    .line 181
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 1287
    invoke-static {p0, p2}, Lo/createButton;->onPostMessage(Ljava/io/InputStream;Ljava/lang/String;)Lo/verifyNotNull;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 183
    new-instance p1, Lo/verifyNotNull;

    invoke-direct {p1, p0}, Lo/verifyNotNull;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method private static ICustomTabsCallback(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lo/verifyNotNull;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/lang/String;",
            ")",
            "Lo/verifyNotNull<",
            "Lo/createCheckBox;",
            ">;"
        }
    .end annotation

    .line 412
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 415
    :try_start_0
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    if-eqz v1, :cond_3

    .line 417
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "__MACOSX"

    .line 418
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 420
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v5, ".json"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 421
    invoke-static {p0}, Lo/warn;->onNavigationEvent(Ljava/io/InputStream;)Lo/toLog;

    move-result-object v1

    invoke-static {v1}, Lo/warn;->ICustomTabsCallback(Lo/toLog;)Lo/fullLimitUpdateChild;

    move-result-object v1

    invoke-static {v1}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback(Lo/fullLimitUpdateChild;)Lo/restoreToolbarHierarchyState;

    move-result-object v1

    const/4 v3, 0x0

    .line 422
    invoke-static {v1, v2, v3}, Lo/createButton;->onNavigationEvent(Lo/restoreToolbarHierarchyState;Ljava/lang/String;Z)Lo/verifyNotNull;

    move-result-object v1

    .line 5028
    iget-object v1, v1, Lo/verifyNotNull;->onPostMessage:Ljava/lang/Object;

    .line 422
    move-object v3, v1

    check-cast v3, Lo/createCheckBox;

    goto :goto_1

    :cond_0
    const-string v1, ".png"

    .line 423
    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".webp"

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "/"

    .line 424
    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 425
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    aget-object v1, v1, v4

    .line 426
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 428
    :cond_2
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 431
    :goto_1
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    .line 439
    new-instance p0, Lo/verifyNotNull;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unable to parse composition"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lo/verifyNotNull;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    .line 442
    :cond_4
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 443
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v3, v1}, Lo/createButton;->extraCallback(Lo/createCheckBox;Ljava/lang/String;)Lo/MediaBrowserCompat$MediaBrowserImplApi21$5;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 445
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 5029
    iget v2, v1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$5;->onMessageChannelReady:I

    .line 5033
    iget v4, v1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$5;->ICustomTabsCallback:I

    .line 445
    invoke-static {v0, v2, v4}, Lo/ActionBarOverlayLayout$LayoutParams;->ICustomTabsCallback(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5059
    iput-object v0, v1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$5;->onPostMessage:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 5197
    :cond_6
    iget-object p0, v3, Lo/createCheckBox;->onPostMessage:Ljava/util/Map;

    .line 450
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 451
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$5;

    .line 6052
    iget-object v1, v1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$5;->onPostMessage:Landroid/graphics/Bitmap;

    if-nez v1, :cond_7

    .line 452
    new-instance p0, Lo/verifyNotNull;

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "There is no image for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$5;

    .line 7041
    iget-object v0, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$5;->extraCallback:Ljava/lang/String;

    .line 452
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lo/verifyNotNull;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    :cond_8
    if-eqz p1, :cond_9

    .line 457
    invoke-static {}, Lo/drawableStateChanged;->onNavigationEvent()Lo/drawableStateChanged;

    move-result-object p0

    if-eqz p1, :cond_9

    .line 8037
    iget-object p0, p0, Lo/drawableStateChanged;->onNavigationEvent:Lo/fromMediaItem;

    invoke-virtual {p0, p1, v3}, Lo/fromMediaItem;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    :cond_9
    new-instance p0, Lo/verifyNotNull;

    invoke-direct {p0, v3}, Lo/verifyNotNull;-><init>(Ljava/lang/Object;)V

    return-object p0

    :catch_0
    move-exception p0

    .line 434
    new-instance p1, Lo/verifyNotNull;

    invoke-direct {p1, p0}, Lo/verifyNotNull;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method private static extraCallback(Lo/createCheckBox;Ljava/lang/String;)Lo/MediaBrowserCompat$MediaBrowserImplApi21$5;
    .locals 2

    .line 8197
    iget-object p0, p0, Lo/createCheckBox;->onPostMessage:Ljava/util/Map;

    .line 464
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$5;

    .line 9041
    iget-object v1, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$5;->extraCallback:Ljava/lang/String;

    .line 465
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static extraCallback(Landroid/content/Context;I)Lo/createSeekBar;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lo/createSeekBar<",
            "Lo/createCheckBox;",
            ">;"
        }
    .end annotation

    .line 198
    invoke-static {p0, p1}, Lo/createButton;->onMessageChannelReady(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 2212
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 2213
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 2214
    new-instance v2, Lo/createButton$3;

    invoke-direct {v2, v1, p0, p1, v0}, Lo/createButton$3;-><init>(Ljava/lang/ref/WeakReference;Landroid/content/Context;ILjava/lang/String;)V

    invoke-static {v0, v2}, Lo/createButton;->extraCallback(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lo/createSeekBar;

    move-result-object p0

    return-object p0
.end method

.method private static extraCallback(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lo/createSeekBar;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "Lo/verifyNotNull<",
            "Lo/createCheckBox;",
            ">;>;)",
            "Lo/createSeekBar<",
            "Lo/createCheckBox;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    .line 479
    :cond_0
    invoke-static {}, Lo/drawableStateChanged;->onNavigationEvent()Lo/drawableStateChanged;

    move-result-object v1

    if-nez p0, :cond_1

    goto :goto_0

    .line 10030
    :cond_1
    iget-object v0, v1, Lo/drawableStateChanged;->onNavigationEvent:Lo/fromMediaItem;

    invoke-virtual {v0, p0}, Lo/fromMediaItem;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/createCheckBox;

    :goto_0
    if-eqz v0, :cond_2

    .line 481
    new-instance p0, Lo/createSeekBar;

    new-instance p1, Lo/createButton$10;

    invoke-direct {p1, v0}, Lo/createButton$10;-><init>(Lo/createCheckBox;)V

    invoke-direct {p0, p1}, Lo/createSeekBar;-><init>(Ljava/util/concurrent/Callable;)V

    return-object p0

    :cond_2
    if-eqz p0, :cond_3

    .line 488
    sget-object v0, Lo/createButton;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 489
    sget-object p1, Lo/createButton;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/createSeekBar;

    return-object p0

    .line 492
    :cond_3
    new-instance v0, Lo/createSeekBar;

    invoke-direct {v0, p1}, Lo/createSeekBar;-><init>(Ljava/util/concurrent/Callable;)V

    if-eqz p0, :cond_4

    .line 494
    new-instance p1, Lo/createButton$4;

    invoke-direct {p1, p0}, Lo/createButton$4;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lo/createSeekBar;->onPostMessage(Lo/createMultiAutoCompleteTextView;)Lo/createSeekBar;

    .line 500
    new-instance p1, Lo/createButton$5;

    invoke-direct {p1, p0}, Lo/createButton$5;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lo/createSeekBar;->ICustomTabsCallback(Lo/createMultiAutoCompleteTextView;)Lo/createSeekBar;

    .line 506
    sget-object p1, Lo/createButton;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v0
.end method

.method public static extraCallback(Landroid/content/Context;ILjava/lang/String;)Lo/verifyNotNull;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lo/verifyNotNull<",
            "Lo/createCheckBox;",
            ">;"
        }
    .end annotation

    .line 250
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    .line 2287
    invoke-static {p0, p2}, Lo/createButton;->onPostMessage(Ljava/io/InputStream;Ljava/lang/String;)Lo/verifyNotNull;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 252
    new-instance p1, Lo/verifyNotNull;

    invoke-direct {p1, p0}, Lo/verifyNotNull;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method private static onMessageChannelReady(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rawRes"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3264
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v1, 0x20

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const-string p0, "_night_"

    goto :goto_1

    :cond_1
    const-string p0, "_day_"

    .line 257
    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic onMessageChannelReady()Ljava/util/Map;
    .locals 1

    .line 46
    sget-object v0, Lo/createButton;->onNavigationEvent:Ljava/util/Map;

    return-object v0
.end method

.method public static onMessageChannelReady(Landroid/content/Context;Ljava/lang/String;)Lo/verifyNotNull;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lo/verifyNotNull<",
            "Lo/createCheckBox;",
            ">;"
        }
    .end annotation

    .line 162
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "asset_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-static {p0, p1, v0}, Lo/createButton;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lo/verifyNotNull;

    move-result-object p0

    return-object p0
.end method

.method public static onNavigationEvent(Landroid/content/Context;ILjava/lang/String;)Lo/createSeekBar;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lo/createSeekBar<",
            "Lo/createCheckBox;",
            ">;"
        }
    .end annotation

    .line 212
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 213
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 214
    new-instance v0, Lo/createButton$3;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p0, p1, v1}, Lo/createButton$3;-><init>(Ljava/lang/ref/WeakReference;Landroid/content/Context;ILjava/lang/String;)V

    invoke-static {v1, v0}, Lo/createButton;->extraCallback(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lo/createSeekBar;

    move-result-object p0

    return-object p0
.end method

.method public static onNavigationEvent(Landroid/content/Context;Ljava/lang/String;)Lo/createSeekBar;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lo/createSeekBar<",
            "Lo/createCheckBox;",
            ">;"
        }
    .end annotation

    .line 127
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "asset_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1142
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 1143
    new-instance v1, Lo/createButton$2;

    invoke-direct {v1, p0, p1, v0}, Lo/createButton$2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lo/createButton;->extraCallback(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lo/createSeekBar;

    move-result-object p0

    return-object p0
.end method

.method public static onNavigationEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lo/createSeekBar;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lo/createSeekBar<",
            "Lo/createCheckBox;",
            ">;"
        }
    .end annotation

    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 143
    new-instance p2, Lo/createButton$2;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lo/createButton$2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p2}, Lo/createButton;->extraCallback(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lo/createSeekBar;

    move-result-object p0

    return-object p0
.end method

.method public static onNavigationEvent(Landroid/content/Context;I)Lo/verifyNotNull;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lo/verifyNotNull<",
            "Lo/createCheckBox;",
            ">;"
        }
    .end annotation

    .line 235
    invoke-static {p0, p1}, Lo/createButton;->onMessageChannelReady(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lo/createButton;->extraCallback(Landroid/content/Context;ILjava/lang/String;)Lo/verifyNotNull;

    move-result-object p0

    return-object p0
.end method

.method public static onNavigationEvent(Ljava/io/InputStream;Ljava/lang/String;)Lo/verifyNotNull;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Lo/verifyNotNull<",
            "Lo/createCheckBox;",
            ">;"
        }
    .end annotation

    .line 287
    invoke-static {p0, p1}, Lo/createButton;->onPostMessage(Ljava/io/InputStream;Ljava/lang/String;)Lo/verifyNotNull;

    move-result-object p0

    return-object p0
.end method

.method private static onNavigationEvent(Lo/restoreToolbarHierarchyState;Ljava/lang/String;Z)Lo/verifyNotNull;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/restoreToolbarHierarchyState;",
            "Ljava/lang/String;",
            "Z)",
            "Lo/verifyNotNull<",
            "Lo/createCheckBox;",
            ">;"
        }
    .end annotation

    .line 371
    :try_start_0
    invoke-static {p0}, Lo/haltActionBarHideOffsetAnimations;->extraCallback(Lo/restoreToolbarHierarchyState;)Lo/createCheckBox;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 373
    invoke-static {}, Lo/drawableStateChanged;->onNavigationEvent()Lo/drawableStateChanged;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 4037
    iget-object v1, v1, Lo/drawableStateChanged;->onNavigationEvent:Lo/fromMediaItem;

    invoke-virtual {v1, p1, v0}, Lo/fromMediaItem;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    :cond_0
    new-instance p1, Lo/verifyNotNull;

    invoke-direct {p1, v0}, Lo/verifyNotNull;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    .line 380
    invoke-static {p0}, Lo/ActionBarOverlayLayout$LayoutParams;->onPostMessage(Ljava/io/Closeable;)V

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 377
    :try_start_1
    new-instance v0, Lo/verifyNotNull;

    invoke-direct {v0, p1}, Lo/verifyNotNull;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_2

    .line 380
    invoke-static {p0}, Lo/ActionBarOverlayLayout$LayoutParams;->onPostMessage(Ljava/io/Closeable;)V

    :cond_2
    return-object v0

    :goto_0
    if-eqz p2, :cond_3

    invoke-static {p0}, Lo/ActionBarOverlayLayout$LayoutParams;->onPostMessage(Ljava/io/Closeable;)V

    :cond_3
    throw p1
.end method

.method public static onPostMessage(Landroid/content/Context;Ljava/lang/String;)Lo/createSeekBar;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lo/createSeekBar<",
            "Lo/createCheckBox;",
            ">;"
        }
    .end annotation

    .line 79
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "url_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1088
    new-instance v1, Lo/createButton$1;

    invoke-direct {v1, p0, p1, v0}, Lo/createButton$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lo/createButton;->extraCallback(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lo/createSeekBar;

    move-result-object p0

    return-object p0
.end method

.method public static onPostMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lo/createSeekBar;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lo/createSeekBar<",
            "Lo/createCheckBox;",
            ">;"
        }
    .end annotation

    .line 88
    new-instance v0, Lo/createButton$1;

    invoke-direct {v0, p0, p1, p2}, Lo/createButton$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lo/createButton;->extraCallback(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lo/createSeekBar;

    move-result-object p0

    return-object p0
.end method

.method private static onPostMessage(Ljava/io/InputStream;Ljava/lang/String;)Lo/verifyNotNull;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Lo/verifyNotNull<",
            "Lo/createCheckBox;",
            ">;"
        }
    .end annotation

    .line 294
    :try_start_0
    invoke-static {p0}, Lo/warn;->onNavigationEvent(Ljava/io/InputStream;)Lo/toLog;

    move-result-object v0

    invoke-static {v0}, Lo/warn;->ICustomTabsCallback(Lo/toLog;)Lo/fullLimitUpdateChild;

    move-result-object v0

    invoke-static {v0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback(Lo/fullLimitUpdateChild;)Lo/restoreToolbarHierarchyState;

    move-result-object v0

    const/4 v1, 0x1

    .line 3364
    invoke-static {v0, p1, v1}, Lo/createButton;->onNavigationEvent(Lo/restoreToolbarHierarchyState;Ljava/lang/String;Z)Lo/verifyNotNull;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    invoke-static {p0}, Lo/ActionBarOverlayLayout$LayoutParams;->onPostMessage(Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p0}, Lo/ActionBarOverlayLayout$LayoutParams;->onPostMessage(Ljava/io/Closeable;)V

    throw p1
.end method

.method public static onPostMessage(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lo/verifyNotNull;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/lang/String;",
            ")",
            "Lo/verifyNotNull<",
            "Lo/createCheckBox;",
            ">;"
        }
    .end annotation

    .line 403
    :try_start_0
    invoke-static {p0, p1}, Lo/createButton;->ICustomTabsCallback(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lo/verifyNotNull;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    invoke-static {p0}, Lo/ActionBarOverlayLayout$LayoutParams;->onPostMessage(Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p0}, Lo/ActionBarOverlayLayout$LayoutParams;->onPostMessage(Ljava/io/Closeable;)V

    throw p1
.end method
