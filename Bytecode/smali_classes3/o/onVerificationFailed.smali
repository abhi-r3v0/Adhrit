.class public final Lo/onVerificationFailed;
.super Ljava/lang/Object;


# static fields
.field public static final ICustomTabsCallback:Lo/addItemDecoration$onPostMessage;


# instance fields
.field public final onMessageChannelReady:Lo/lambda$of$1;

.field public final onNavigationEvent:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lo/addItemDecoration$onPostMessage;

    const-string v1, "AssetPackStorage"

    invoke-direct {v0, v1}, Lo/addItemDecoration$onPostMessage;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/onVerificationFailed;->ICustomTabsCallback:Lo/addItemDecoration$onPostMessage;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lo/lambda$of$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/onVerificationFailed;->onNavigationEvent:Landroid/content/Context;

    iput-object p2, p0, Lo/onVerificationFailed;->onMessageChannelReady:Lo/lambda$of$1;

    return-void
.end method

.method public static ICustomTabsCallback(Ljava/io/File;)V
    .locals 7

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lo/onVerificationFailed;->onPostMessage(Ljava/io/File;)J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "stale.tmp"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Lo/onVerificationFailed;->onMessageChannelReady(Ljava/io/File;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static onMessageChannelReady(Ljava/io/File;)Z
    .locals 7

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v6, v0, v4

    invoke-static {v6}, Lo/onVerificationFailed;->onMessageChannelReady(Ljava/io/File;)Z

    move-result v6

    and-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    if-eq v2, v5, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method public static onPostMessage(Ljava/io/File;)J
    .locals 9

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length v4, p0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, p0, v5

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "stale.tmp"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v4, Lo/onVerificationFailed;->ICustomTabsCallback:Lo/addItemDecoration$onPostMessage;

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x6

    const-string v6, "PlayCore"

    .line 8000
    invoke-static {v6, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v4, v4, Lo/addItemDecoration$onPostMessage;->extraCallback:Ljava/lang/String;

    const-string v5, "Corrupt asset pack directories."

    invoke-static {v4, v5, v3}, Lo/addItemDecoration$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 0
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    return-wide v1

    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;IJ)Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3, p4}, Lo/onVerificationFailed;->onPostMessage(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object p1

    const-string p2, "_slices"

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p1, "_metadata"

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final ICustomTabsCallback()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const-string v0, "assetpacks"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 9000
    :try_start_0
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lo/onVerificationFailed;->onNavigationEvent:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 10000
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lo/onVerificationFailed;->onNavigationEvent:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 11000
    :cond_0
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lo/onVerificationFailed;->onNavigationEvent:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    .line 12000
    new-instance v8, Ljava/io/File;

    .line 13000
    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lo/onVerificationFailed;->onNavigationEvent:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-direct {v9, v10, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v10, "_tmp"

    .line 12000
    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1

    :catch_0
    move-exception v0

    sget-object v3, Lo/onVerificationFailed;->ICustomTabsCallback:Lo/addItemDecoration$onPostMessage;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    const-string v0, "Could not process directory while scanning installed packs. %s"

    invoke-virtual {v3, v0, v4}, Lo/addItemDecoration$onPostMessage;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-object v1
.end method

.method public final extraCallback(Ljava/lang/String;IJ)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5000
    new-instance v0, Ljava/io/File;

    .line 6000
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3, p4}, Lo/onVerificationFailed;->onPostMessage(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object p1

    const-string p2, "_packs"

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p1, "merge.tmp"

    .line 5000
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance p1, Ljava/util/Properties;

    invoke-direct {p1}, Ljava/util/Properties;-><init>()V

    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    const-string p2, "numberOfMerges"

    invoke-virtual {p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "Merge checkpoint file corrupt."

    if-eqz p3, :cond_1

    :try_start_1
    invoke-virtual {p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Lo/getFactory;

    invoke-direct {p2, p4, p1}, Lo/getFactory;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :cond_1
    new-instance p1, Lo/getFactory;

    invoke-direct {p1, p4}, Lo/getFactory;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    :try_start_2
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    .line 7000
    sget-object p3, Lo/MediaBrowserCompat$ItemCallback$4;->ICustomTabsCallback:Lo/publish;

    invoke-virtual {p3, p1, p2}, Lo/publish;->onPostMessage(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 5000
    :goto_0
    throw p1
.end method

.method public final extraCallback()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/getSignInSecondFactor;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lo/onVerificationFailed;->ICustomTabsCallback()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 2000
    new-instance v6, Ljava/io/File;

    .line 3000
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lo/onVerificationFailed;->onNavigationEvent:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    const-string v9, "assetpacks"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2000
    invoke-direct {v6, v7, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_1

    sget-object v6, Lo/onVerificationFailed;->ICustomTabsCallback:Lo/addItemDecoration$onPostMessage;

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v5, v7, v2

    const-string v5, "Pack not found with pack name: %s"

    invoke-virtual {v6, v5, v7}, Lo/addItemDecoration$onPostMessage;->extraCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    move-object v5, v8

    goto/16 :goto_3

    :cond_1
    new-instance v7, Ljava/io/File;

    iget-object v9, p0, Lo/onVerificationFailed;->onMessageChannelReady:Lo/lambda$of$1;

    invoke-virtual {v9}, Lo/lambda$of$1;->extraCallback()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v6, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    const/4 v9, 0x2

    if-nez v6, :cond_2

    sget-object v6, Lo/onVerificationFailed;->ICustomTabsCallback:Lo/addItemDecoration$onPostMessage;

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v5, v7, v2

    iget-object v5, p0, Lo/onVerificationFailed;->onMessageChannelReady:Lo/lambda$of$1;

    invoke-virtual {v5}, Lo/lambda$of$1;->extraCallback()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v1

    const-string v5, "Pack not found with pack name: %s app version: %s"

    invoke-virtual {v6, v5, v7}, Lo/addItemDecoration$onPostMessage;->extraCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_5

    array-length v7, v6

    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    if-le v7, v1, :cond_4

    sget-object v6, Lo/onVerificationFailed;->ICustomTabsCallback:Lo/addItemDecoration$onPostMessage;

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v5, v7, v2

    iget-object v5, p0, Lo/onVerificationFailed;->onMessageChannelReady:Lo/lambda$of$1;

    invoke-virtual {v5}, Lo/lambda$of$1;->extraCallback()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v1

    const-string v5, "Multiple pack versions found for pack name: %s app version: %s"

    invoke-virtual {v6, v5, v7}, Lo/addItemDecoration$onPostMessage;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    aget-object v5, v6, v2

    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_5
    :goto_2
    sget-object v6, Lo/onVerificationFailed;->ICustomTabsCallback:Lo/addItemDecoration$onPostMessage;

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v5, v7, v2

    iget-object v5, p0, Lo/onVerificationFailed;->onMessageChannelReady:Lo/lambda$of$1;

    invoke-virtual {v5}, Lo/lambda$of$1;->extraCallback()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v1

    const-string v5, "No pack version found for pack name: %s app version: %s"

    invoke-virtual {v6, v5, v7}, Lo/addItemDecoration$onPostMessage;->extraCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :goto_3
    if-nez v5, :cond_6

    goto :goto_4

    .line 1000
    :cond_6
    new-instance v6, Ljava/io/File;

    const-string v7, "assets"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_7

    sget-object v5, Lo/onVerificationFailed;->ICustomTabsCallback:Lo/addItemDecoration$onPostMessage;

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v6, v7, v2

    const-string v6, "Failed to find assets directory: %s"

    invoke-virtual {v5, v6, v7}, Lo/addItemDecoration$onPostMessage;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_7
    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    .line 4000
    new-instance v8, Lo/getSignInSecondFactor;

    invoke-direct {v8, v2, v5, v6}, Lo/getSignInSecondFactor;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    :goto_4
    if-eqz v8, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    sget-object v4, Lo/onVerificationFailed;->ICustomTabsCallback:Lo/addItemDecoration$onPostMessage;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    const-string v2, "Could not process directory while scanning installed packs: %s"

    invoke-virtual {v4, v2, v1}, Lo/addItemDecoration$onPostMessage;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    return-object v0
.end method

.method public final onMessageChannelReady(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3, p4}, Lo/onVerificationFailed;->onPostMessage(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object p1

    const-string p2, "_slices"

    invoke-direct {v2, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p1, "_verified"

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1, p5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final onPostMessage(Ljava/lang/String;IJ)Ljava/io/File;
    .locals 7

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    .line 14000
    new-instance v3, Ljava/io/File;

    .line 15000
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lo/onVerificationFailed;->onNavigationEvent:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "assetpacks"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v5, "_tmp"

    .line 14000
    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final onPostMessage(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3, p4}, Lo/onVerificationFailed;->onPostMessage(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object p1

    const-string p2, "_slices"

    invoke-direct {v2, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p1, "_unverified"

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1, p5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
