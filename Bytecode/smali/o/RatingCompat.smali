.class public Lo/RatingCompat;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/RatingCompat$ICustomTabsCallback;,
        Lo/RatingCompat$onMessageChannelReady;,
        Lo/RatingCompat$onPostMessage;
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation
.end field

.field static final extraCallback:Lo/fromMediaItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/fromMediaItem<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field static final onMessageChannelReady:Ljava/lang/Object;

.field static final onNavigationEvent:Lo/fromMediaItemList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/fromMediaItemList<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lo/newHeartRating$onNavigationEvent<",
            "Lo/RatingCompat$onPostMessage;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final onPostMessage:Lo/newHeartRating;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 172
    new-instance v0, Lo/fromMediaItem;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lo/fromMediaItem;-><init>(I)V

    sput-object v0, Lo/RatingCompat;->extraCallback:Lo/fromMediaItem;

    .line 175
    new-instance v0, Lo/newHeartRating;

    const-string v1, "fonts"

    invoke-direct {v0, v1}, Lo/newHeartRating;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/RatingCompat;->onPostMessage:Lo/newHeartRating;

    .line 201
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/RatingCompat;->onMessageChannelReady:Ljava/lang/Object;

    .line 204
    new-instance v0, Lo/fromMediaItemList;

    invoke-direct {v0}, Lo/fromMediaItemList;-><init>()V

    sput-object v0, Lo/RatingCompat;->onNavigationEvent:Lo/fromMediaItemList;

    .line 784
    new-instance v0, Lo/RatingCompat$3;

    invoke-direct {v0}, Lo/RatingCompat$3;-><init>()V

    sput-object v0, Lo/RatingCompat;->ICustomTabsCallback:Ljava/util/Comparator;

    return-void
.end method

.method public static ICustomTabsCallback(Landroid/content/pm/PackageManager;Lo/extraCallback$onPostMessage;Landroid/content/res/Resources;)Landroid/content/pm/ProviderInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 3095
    iget-object v0, p1, Lo/extraCallback$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    const/4 v1, 0x0

    .line 745
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 751
    iget-object v3, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 3104
    iget-object v4, p1, Lo/extraCallback$onPostMessage;->extraCallback:Ljava/lang/String;

    .line 751
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 760
    iget-object v0, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x40

    invoke-virtual {p0, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 762
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {p0}, Lo/RatingCompat;->onNavigationEvent([Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object p0

    .line 763
    sget-object v0, Lo/RatingCompat;->ICustomTabsCallback:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 764
    invoke-static {p1, p2}, Lo/RatingCompat;->onPostMessage(Lo/extraCallback$onPostMessage;Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object p1

    .line 765
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v1, p2, :cond_1

    .line 767
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 768
    sget-object v0, Lo/RatingCompat;->ICustomTabsCallback:Ljava/util/Comparator;

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 769
    invoke-static {p0, p2}, Lo/RatingCompat;->onNavigationEvent(Ljava/util/List;Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    .line 752
    :cond_2
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Found content provider "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", but package was not "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4104
    iget-object p1, p1, Lo/extraCallback$onPostMessage;->extraCallback:Ljava/lang/String;

    .line 754
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 747
    :cond_3
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "No package found for authority: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ICustomTabsCallback(Landroid/content/Context;Lo/extraCallback$onPostMessage;Lo/containsKey$ICustomTabsCallback;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;
    .locals 2

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1143
    iget-object v1, p1, Lo/extraCallback$onPostMessage;->asBinder:Ljava/lang/String;

    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    sget-object v1, Lo/RatingCompat;->extraCallback:Lo/fromMediaItem;

    invoke-virtual {v1, v0}, Lo/fromMediaItem;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    .line 236
    invoke-virtual {p2, v1}, Lo/containsKey$ICustomTabsCallback;->extraCallback(Landroid/graphics/Typeface;)V

    :cond_0
    return-object v1

    :cond_1
    if-eqz p4, :cond_4

    const/4 v1, -0x1

    if-ne p5, v1, :cond_4

    .line 243
    invoke-static {p0, p1, p6}, Lo/RatingCompat;->extraCallback(Landroid/content/Context;Lo/extraCallback$onPostMessage;I)Lo/RatingCompat$onPostMessage;

    move-result-object p0

    if-eqz p2, :cond_3

    .line 245
    iget p1, p0, Lo/RatingCompat$onPostMessage;->onNavigationEvent:I

    if-nez p1, :cond_2

    .line 246
    iget-object p1, p0, Lo/RatingCompat$onPostMessage;->extraCallback:Landroid/graphics/Typeface;

    invoke-virtual {p2, p1, p3}, Lo/containsKey$ICustomTabsCallback;->onMessageChannelReady(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_0

    .line 248
    :cond_2
    iget p1, p0, Lo/RatingCompat$onPostMessage;->onNavigationEvent:I

    invoke-virtual {p2, p1, p3}, Lo/containsKey$ICustomTabsCallback;->onMessageChannelReady(ILandroid/os/Handler;)V

    .line 251
    :cond_3
    :goto_0
    iget-object p0, p0, Lo/RatingCompat$onPostMessage;->extraCallback:Landroid/graphics/Typeface;

    return-object p0

    .line 254
    :cond_4
    new-instance v1, Lo/RatingCompat$2;

    invoke-direct {v1, p0, p1, p6, v0}, Lo/RatingCompat$2;-><init>(Landroid/content/Context;Lo/extraCallback$onPostMessage;ILjava/lang/String;)V

    const/4 p0, 0x0

    if-eqz p4, :cond_5

    .line 267
    :try_start_0
    sget-object p1, Lo/RatingCompat;->onPostMessage:Lo/newHeartRating;

    invoke-virtual {p1, v1, p5}, Lo/newHeartRating;->extraCallback(Ljava/util/concurrent/Callable;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/RatingCompat$onPostMessage;

    iget-object p0, p1, Lo/RatingCompat$onPostMessage;->extraCallback:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0

    :cond_5
    if-nez p2, :cond_6

    move-object p1, p0

    goto :goto_1

    .line 273
    :cond_6
    new-instance p1, Lo/RatingCompat$1;

    invoke-direct {p1, p2, p3}, Lo/RatingCompat$1;-><init>(Lo/containsKey$ICustomTabsCallback;Landroid/os/Handler;)V

    .line 287
    :goto_1
    sget-object p2, Lo/RatingCompat;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter p2

    .line 288
    :try_start_1
    sget-object p3, Lo/RatingCompat;->onNavigationEvent:Lo/fromMediaItemList;

    invoke-virtual {p3, v0}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/ArrayList;

    if-eqz p3, :cond_8

    if-eqz p1, :cond_7

    .line 293
    invoke-virtual {p3, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 295
    :cond_7
    monitor-exit p2

    return-object p0

    :cond_8
    if-eqz p1, :cond_9

    .line 298
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 299
    invoke-virtual {p3, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 300
    sget-object p1, Lo/RatingCompat;->onNavigationEvent:Lo/fromMediaItemList;

    invoke-virtual {p1, v0, p3}, Lo/fromMediaItemList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    :cond_9
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    sget-object p1, Lo/RatingCompat;->onPostMessage:Lo/newHeartRating;

    new-instance p2, Lo/RatingCompat$4;

    invoke-direct {p2, v0}, Lo/RatingCompat$4;-><init>(Ljava/lang/String;)V

    .line 2136
    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    .line 2137
    new-instance p4, Lo/newHeartRating$5;

    invoke-direct {p4, p1, v1, p3, p2}, Lo/newHeartRating$5;-><init>(Lo/newHeartRating;Ljava/util/concurrent/Callable;Landroid/os/Handler;Lo/newHeartRating$onNavigationEvent;)V

    invoke-virtual {p1, p4}, Lo/newHeartRating;->extraCallback(Ljava/lang/Runnable;)V

    return-object p0

    :catchall_0
    move-exception p0

    .line 302
    monitor-exit p2

    throw p0
.end method

.method public static extraCallback(Landroid/content/Context;Landroid/os/CancellationSignal;Lo/extraCallback$onPostMessage;)Lo/RatingCompat$ICustomTabsCallback;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 728
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 727
    invoke-static {v0, p2, v1}, Lo/RatingCompat;->ICustomTabsCallback(Landroid/content/pm/PackageManager;Lo/extraCallback$onPostMessage;Landroid/content/res/Resources;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 730
    new-instance p0, Lo/RatingCompat$ICustomTabsCallback;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lo/RatingCompat$ICustomTabsCallback;-><init>(I[Lo/RatingCompat$onMessageChannelReady;)V

    return-object p0

    .line 733
    :cond_0
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {p0, p2, v0, p1}, Lo/RatingCompat;->onPostMessage(Landroid/content/Context;Lo/extraCallback$onPostMessage;Ljava/lang/String;Landroid/os/CancellationSignal;)[Lo/RatingCompat$onMessageChannelReady;

    move-result-object p0

    .line 735
    new-instance p1, Lo/RatingCompat$ICustomTabsCallback;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Lo/RatingCompat$ICustomTabsCallback;-><init>(I[Lo/RatingCompat$onMessageChannelReady;)V

    return-object p1
.end method

.method static extraCallback(Landroid/content/Context;Lo/extraCallback$onPostMessage;I)Lo/RatingCompat$onPostMessage;
    .locals 3

    const/4 v0, 0x0

    .line 184
    :try_start_0
    invoke-static {p0, v0, p1}, Lo/RatingCompat;->extraCallback(Landroid/content/Context;Landroid/os/CancellationSignal;Lo/extraCallback$onPostMessage;)Lo/RatingCompat$ICustomTabsCallback;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    invoke-virtual {p1}, Lo/RatingCompat$ICustomTabsCallback;->ICustomTabsCallback()I

    move-result v1

    const/4 v2, -0x3

    if-nez v1, :cond_1

    .line 190
    invoke-virtual {p1}, Lo/RatingCompat$ICustomTabsCallback;->onNavigationEvent()[Lo/RatingCompat$onMessageChannelReady;

    move-result-object p1

    .line 189
    invoke-static {p0, v0, p1, p2}, Lo/getBundle;->extraCallback(Landroid/content/Context;Landroid/os/CancellationSignal;[Lo/RatingCompat$onMessageChannelReady;I)Landroid/graphics/Typeface;

    move-result-object p0

    .line 191
    new-instance p1, Lo/RatingCompat$onPostMessage;

    if-eqz p0, :cond_0

    const/4 v2, 0x0

    .line 193
    :cond_0
    invoke-direct {p1, p0, v2}, Lo/RatingCompat$onPostMessage;-><init>(Landroid/graphics/Typeface;I)V

    return-object p1

    .line 195
    :cond_1
    invoke-virtual {p1}, Lo/RatingCompat$ICustomTabsCallback;->ICustomTabsCallback()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_2

    const/4 v2, -0x2

    .line 198
    :cond_2
    new-instance p0, Lo/RatingCompat$onPostMessage;

    invoke-direct {p0, v0, v2}, Lo/RatingCompat$onPostMessage;-><init>(Landroid/graphics/Typeface;I)V

    return-object p0

    .line 186
    :catch_0
    new-instance p0, Lo/RatingCompat$onPostMessage;

    const/4 p1, -0x1

    invoke-direct {p0, v0, p1}, Lo/RatingCompat$onPostMessage;-><init>(Landroid/graphics/Typeface;I)V

    return-object p0
.end method

.method public static onMessageChannelReady(Landroid/content/Context;[Lo/RatingCompat$onMessageChannelReady;Landroid/os/CancellationSignal;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Lo/RatingCompat$onMessageChannelReady;",
            "Landroid/os/CancellationSignal;",
            ")",
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 689
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 691
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 692
    invoke-virtual {v3}, Lo/RatingCompat$onMessageChannelReady;->onNavigationEvent()I

    move-result v4

    if-nez v4, :cond_0

    .line 696
    invoke-virtual {v3}, Lo/RatingCompat$onMessageChannelReady;->ICustomTabsCallback()Landroid/net/Uri;

    move-result-object v3

    .line 697
    invoke-virtual {v0, v3}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 701
    invoke-static {p0, p2, v3}, Lo/MediaMetadataCompat$Builder;->onPostMessage(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/net/Uri;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 702
    invoke-virtual {v0, v3, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 704
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static onNavigationEvent([Landroid/content/pm/Signature;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 813
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 814
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 815
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static onNavigationEvent(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/util/List<",
            "[B>;)Z"
        }
    .end annotation

    .line 801
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    .line 804
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 805
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static onPostMessage(Lo/extraCallback$onPostMessage;Landroid/content/res/Resources;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/extraCallback$onPostMessage;",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation

    .line 4125
    iget-object v0, p0, Lo/extraCallback$onPostMessage;->onPostMessage:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 5125
    iget-object p0, p0, Lo/extraCallback$onPostMessage;->onPostMessage:Ljava/util/List;

    return-object p0

    .line 5137
    :cond_0
    iget p0, p0, Lo/extraCallback$onPostMessage;->ICustomTabsCallback:I

    .line 781
    invoke-static {p1, p0}, Lo/MediaDescriptionCompatApi23;->onPostMessage(Landroid/content/res/Resources;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static onPostMessage(Landroid/content/Context;Lo/extraCallback$onPostMessage;Ljava/lang/String;Landroid/os/CancellationSignal;)[Lo/RatingCompat$onMessageChannelReady;
    .locals 21

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 824
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 825
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "content"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 826
    invoke-virtual {v3, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 827
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 828
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v5, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    .line 829
    invoke-virtual {v4, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v4, "file"

    .line 830
    invoke-virtual {v1, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 831
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v4, 0x0

    .line 834
    :try_start_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-le v5, v6, :cond_0

    .line 835
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v14, "_id"

    const-string v15, "file_id"

    const-string v16, "font_ttc_index"

    const-string v17, "font_variation_settings"

    const-string v18, "font_weight"

    const-string v19, "font_italic"

    const-string/jumbo v20, "result_code"

    filled-new-array/range {v14 .. v20}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "query = ?"

    new-array v9, v12, [Ljava/lang/String;

    .line 6113
    iget-object v0, v0, Lo/extraCallback$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    aput-object v0, v9, v13

    const/4 v10, 0x0

    move-object v6, v3

    move-object/from16 v11, p3

    .line 835
    invoke-virtual/range {v5 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 842
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v14, "_id"

    const-string v15, "file_id"

    const-string v16, "font_ttc_index"

    const-string v17, "font_variation_settings"

    const-string v18, "font_weight"

    const-string v19, "font_italic"

    const-string/jumbo v20, "result_code"

    filled-new-array/range {v14 .. v20}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "query = ?"

    new-array v9, v12, [Ljava/lang/String;

    .line 7113
    iget-object v0, v0, Lo/extraCallback$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    aput-object v0, v9, v13

    const/4 v10, 0x0

    move-object v6, v3

    .line 842
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    move-object v4, v0

    if-eqz v4, :cond_6

    .line 848
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_6

    const-string/jumbo v0, "result_code"

    .line 849
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 850
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "_id"

    .line 851
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "file_id"

    .line 852
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "font_ttc_index"

    .line 853
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "font_weight"

    .line 854
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "font_italic"

    .line 855
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 856
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v10, -0x1

    if-eq v0, v10, :cond_1

    .line 858
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    move/from16 v19, v11

    goto :goto_2

    :cond_1
    const/16 v19, 0x0

    :goto_2
    if-eq v7, v10, :cond_2

    .line 860
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    move/from16 v16, v11

    goto :goto_3

    :cond_2
    const/16 v16, 0x0

    :goto_3
    if-ne v6, v10, :cond_3

    .line 863
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 864
    invoke-static {v3, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    goto :goto_4

    .line 866
    :cond_3
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 867
    invoke-static {v1, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    :goto_4
    move-object v15, v11

    if-eq v8, v10, :cond_4

    .line 870
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    move/from16 v17, v11

    goto :goto_5

    :cond_4
    const/16 v11, 0x190

    const/16 v17, 0x190

    :goto_5
    if-eq v9, v10, :cond_5

    .line 871
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-ne v10, v12, :cond_5

    const/16 v18, 0x1

    goto :goto_6

    :cond_5
    const/16 v18, 0x0

    .line 873
    :goto_6
    new-instance v10, Lo/RatingCompat$onMessageChannelReady;

    move-object v14, v10

    invoke-direct/range {v14 .. v19}, Lo/RatingCompat$onMessageChannelReady;-><init>(Landroid/net/Uri;IIZI)V

    invoke-virtual {v2, v10}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_6
    if-eqz v4, :cond_7

    .line 878
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_7
    new-array v0, v13, [Lo/RatingCompat$onMessageChannelReady;

    .line 881
    invoke-virtual {v2, v0}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/RatingCompat$onMessageChannelReady;

    return-object v0

    :catchall_0
    move-exception v0

    if-eqz v4, :cond_8

    .line 878
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 880
    :cond_8
    throw v0
.end method
