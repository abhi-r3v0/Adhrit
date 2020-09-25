.class final Lo/MediaSessionCompat$Callback$CallbackHandler$2$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/MediaSessionCompat$Callback$CallbackHandler$2;->extraCallback([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic extraCallback:[Ljava/lang/String;

.field final synthetic onMessageChannelReady:Lo/MediaSessionCompat$Callback$CallbackHandler$2;


# direct methods
.method constructor <init>(Lo/MediaSessionCompat$Callback$CallbackHandler$2;[Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lo/MediaSessionCompat$Callback$CallbackHandler$2$2;->onMessageChannelReady:Lo/MediaSessionCompat$Callback$CallbackHandler$2;

    iput-object p2, p0, Lo/MediaSessionCompat$Callback$CallbackHandler$2$2;->extraCallback:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 87
    iget-object v0, p0, Lo/MediaSessionCompat$Callback$CallbackHandler$2$2;->onMessageChannelReady:Lo/MediaSessionCompat$Callback$CallbackHandler$2;

    iget-object v0, v0, Lo/MediaSessionCompat$Callback$CallbackHandler$2;->ICustomTabsCallback:Lo/MediaSessionCompat$Callback$CallbackHandler;

    iget-object v0, v0, Lo/MediaSessionCompat$Callback$CallbackHandler;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    iget-object v1, p0, Lo/MediaSessionCompat$Callback$CallbackHandler$2$2;->extraCallback:[Ljava/lang/String;

    .line 1470
    iget-object v2, v0, Lo/MediaSessionCompat$MediaSessionImpl;->asInterface:Lo/MediaBrowserCompat$MediaBrowserImplApi21;

    monitor-enter v2

    .line 1471
    :try_start_0
    iget-object v0, v0, Lo/MediaSessionCompat$MediaSessionImpl;->asInterface:Lo/MediaBrowserCompat$MediaBrowserImplApi21;

    invoke-virtual {v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1472
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/MediaSessionCompat$MediaSessionImpl$ICustomTabsCallback;

    invoke-virtual {v4}, Lo/MediaSessionCompat$MediaSessionImpl$ICustomTabsCallback;->onMessageChannelReady()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1473
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/MediaSessionCompat$MediaSessionImpl$extraCallback;

    const/4 v4, 0x0

    .line 1646
    iget-object v5, v3, Lo/MediaSessionCompat$MediaSessionImpl$extraCallback;->onPostMessage:[Ljava/lang/String;

    array-length v5, v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v5, v7, :cond_2

    .line 1647
    array-length v5, v1

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_6

    aget-object v8, v1, v7

    .line 1648
    iget-object v9, v3, Lo/MediaSessionCompat$MediaSessionImpl$extraCallback;->onPostMessage:[Ljava/lang/String;

    aget-object v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1650
    iget-object v4, v3, Lo/MediaSessionCompat$MediaSessionImpl$extraCallback;->onNavigationEvent:Ljava/util/Set;

    goto :goto_5

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1655
    :cond_2
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1656
    array-length v7, v1

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_5

    aget-object v9, v1, v8

    .line 1657
    iget-object v10, v3, Lo/MediaSessionCompat$MediaSessionImpl$extraCallback;->onPostMessage:[Ljava/lang/String;

    array-length v11, v10

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v11, :cond_4

    aget-object v13, v10, v12

    .line 1658
    invoke-virtual {v13, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1659
    invoke-virtual {v5, v13}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1664
    :cond_5
    invoke-virtual {v5}, Ljava/util/AbstractCollection;->size()I

    move-result v6

    if-lez v6, :cond_6

    move-object v4, v5

    :cond_6
    :goto_5
    if-eqz v4, :cond_0

    .line 1669
    iget-object v3, v3, Lo/MediaSessionCompat$MediaSessionImpl$extraCallback;->extraCallback:Lo/MediaSessionCompat$MediaSessionImpl$ICustomTabsCallback;

    invoke-virtual {v3, v4}, Lo/MediaSessionCompat$MediaSessionImpl$ICustomTabsCallback;->onMessageChannelReady(Ljava/util/Set;)V

    goto :goto_0

    .line 1476
    :cond_7
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
