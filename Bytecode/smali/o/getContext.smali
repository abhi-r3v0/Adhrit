.class public final Lo/getContext;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ContentFrameLayout$OnAttachListener;


# instance fields
.field private final ICustomTabsCallback:Lo/setDisplayOptions;

.field private final extraCallback:Ljava/io/File;

.field private final onMessageChannelReady:Lo/DecorContentParent;

.field private onNavigationEvent:Lo/getTextClassifier;

.field private final onPostMessage:J


# direct methods
.method constructor <init>(Ljava/io/File;J)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lo/DecorContentParent;

    invoke-direct {v0}, Lo/DecorContentParent;-><init>()V

    iput-object v0, p0, Lo/getContext;->onMessageChannelReady:Lo/DecorContentParent;

    .line 71
    iput-object p1, p0, Lo/getContext;->extraCallback:Ljava/io/File;

    .line 72
    iput-wide p2, p0, Lo/getContext;->onPostMessage:J

    .line 73
    new-instance p1, Lo/setDisplayOptions;

    invoke-direct {p1}, Lo/setDisplayOptions;-><init>()V

    iput-object p1, p0, Lo/getContext;->ICustomTabsCallback:Lo/setDisplayOptions;

    return-void
.end method

.method private declared-synchronized extraCallback()Lo/getTextClassifier;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 77
    :try_start_0
    iget-object v0, p0, Lo/getContext;->onNavigationEvent:Lo/getTextClassifier;

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lo/getContext;->extraCallback:Ljava/io/File;

    iget-wide v1, p0, Lo/getContext;->onPostMessage:J

    invoke-static {v0, v1, v2}, Lo/getTextClassifier;->onMessageChannelReady(Ljava/io/File;J)Lo/getTextClassifier;

    move-result-object v0

    iput-object v0, p0, Lo/getContext;->onNavigationEvent:Lo/getTextClassifier;

    .line 80
    :cond_0
    iget-object v0, p0, Lo/getContext;->onNavigationEvent:Lo/getTextClassifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final onPostMessage(Lo/AppCompatImageHelper;)Ljava/io/File;
    .locals 4

    .line 85
    iget-object v0, p0, Lo/getContext;->ICustomTabsCallback:Lo/setDisplayOptions;

    invoke-virtual {v0, p1}, Lo/setDisplayOptions;->extraCallback(Lo/AppCompatImageHelper;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DiskLruCacheWrapper"

    const/4 v2, 0x2

    .line 86
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Get: Obtained: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for for Key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    .line 94
    :try_start_0
    invoke-direct {p0}, Lo/getContext;->extraCallback()Lo/getTextClassifier;

    move-result-object v2

    invoke-virtual {v2, v0}, Lo/getTextClassifier;->ICustomTabsCallback(Ljava/lang/String;)Lo/getTextClassifier$onNavigationEvent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1743
    iget-object v0, v0, Lo/getTextClassifier$onNavigationEvent;->ICustomTabsCallback:[Ljava/io/File;

    const/4 v2, 0x0

    aget-object p1, v0, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x5

    .line 99
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Unable to get from disk cache"

    .line 100
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-object p1
.end method

.method public final onPostMessage(Lo/AppCompatImageHelper;Lo/ContentFrameLayout$OnAttachListener$onPostMessage;)V
    .locals 5

    .line 110
    iget-object v0, p0, Lo/getContext;->ICustomTabsCallback:Lo/setDisplayOptions;

    invoke-virtual {v0, p1}, Lo/setDisplayOptions;->extraCallback(Lo/AppCompatImageHelper;)Ljava/lang/String;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lo/getContext;->onMessageChannelReady:Lo/DecorContentParent;

    .line 2026
    monitor-enter v1

    .line 2027
    :try_start_0
    iget-object v2, v1, Lo/DecorContentParent;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/DecorContentParent$onMessageChannelReady;

    if-nez v2, :cond_0

    .line 2029
    iget-object v2, v1, Lo/DecorContentParent;->ICustomTabsCallback:Lo/DecorContentParent$extraCallback;

    invoke-virtual {v2}, Lo/DecorContentParent$extraCallback;->onNavigationEvent()Lo/DecorContentParent$onMessageChannelReady;

    move-result-object v2

    .line 2030
    iget-object v3, v1, Lo/DecorContentParent;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2032
    :cond_0
    iget v3, v2, Lo/DecorContentParent$onMessageChannelReady;->onPostMessage:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v2, Lo/DecorContentParent$onMessageChannelReady;->onPostMessage:I

    .line 2033
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2035
    iget-object v1, v2, Lo/DecorContentParent$onMessageChannelReady;->onNavigationEvent:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_1
    const-string v1, "DiskLruCacheWrapper"

    const/4 v2, 0x2

    .line 113
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "DiskLruCacheWrapper"

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Put: Obtained: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for for Key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 119
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lo/getContext;->extraCallback()Lo/getTextClassifier;

    move-result-object p1

    .line 120
    invoke-virtual {p1, v0}, Lo/getTextClassifier;->ICustomTabsCallback(Ljava/lang/String;)Lo/getTextClassifier$onNavigationEvent;

    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_3

    .line 143
    :catch_0
    :cond_2
    :goto_0
    iget-object p1, p0, Lo/getContext;->onMessageChannelReady:Lo/DecorContentParent;

    invoke-virtual {p1, v0}, Lo/DecorContentParent;->ICustomTabsCallback(Ljava/lang/String;)V

    return-void

    .line 2447
    :cond_3
    :try_start_3
    invoke-virtual {p1, v0}, Lo/getTextClassifier;->onNavigationEvent(Ljava/lang/String;)Lo/getTextClassifier$ICustomTabsCallback;

    move-result-object p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p1, :cond_6

    const/4 v1, 0x0

    .line 130
    :try_start_4
    invoke-virtual {p1}, Lo/getTextClassifier$ICustomTabsCallback;->ICustomTabsCallback()Ljava/io/File;

    move-result-object v2

    .line 131
    invoke-interface {p2, v2}, Lo/ContentFrameLayout$OnAttachListener$onPostMessage;->extraCallback(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 2835
    iget-object p2, p1, Lo/getTextClassifier$ICustomTabsCallback;->ICustomTabsCallback:Lo/getTextClassifier;

    .line 3090
    invoke-virtual {p2, p1, v4}, Lo/getTextClassifier;->onPostMessage(Lo/getTextClassifier$ICustomTabsCallback;Z)V

    .line 2836
    iput-boolean v4, p1, Lo/getTextClassifier$ICustomTabsCallback;->onPostMessage:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3848
    :cond_4
    :try_start_5
    iget-boolean p2, p1, Lo/getTextClassifier$ICustomTabsCallback;->onPostMessage:Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez p2, :cond_2

    .line 4844
    :try_start_6
    iget-object p2, p1, Lo/getTextClassifier$ICustomTabsCallback;->ICustomTabsCallback:Lo/getTextClassifier;

    .line 5090
    invoke-virtual {p2, p1, v1}, Lo/getTextClassifier;->onPostMessage(Lo/getTextClassifier$ICustomTabsCallback;Z)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 5848
    :try_start_7
    iget-boolean v2, p1, Lo/getTextClassifier$ICustomTabsCallback;->onPostMessage:Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-nez v2, :cond_5

    .line 6844
    :try_start_8
    iget-object v2, p1, Lo/getTextClassifier$ICustomTabsCallback;->ICustomTabsCallback:Lo/getTextClassifier;

    .line 7090
    invoke-virtual {v2, p1, v1}, Lo/getTextClassifier;->onPostMessage(Lo/getTextClassifier$ICustomTabsCallback;Z)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 135
    :catch_1
    :cond_5
    :try_start_9
    throw p2

    .line 127
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Had two simultaneous puts for: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catch_2
    move-exception p1

    :try_start_a
    const-string p2, "DiskLruCacheWrapper"

    const/4 v1, 0x5

    .line 138
    invoke-static {p2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "DiskLruCacheWrapper"

    const-string v1, "Unable to put to disk cache"

    .line 139
    invoke-static {p2, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 143
    iget-object p2, p0, Lo/getContext;->onMessageChannelReady:Lo/DecorContentParent;

    invoke-virtual {p2, v0}, Lo/DecorContentParent;->ICustomTabsCallback(Ljava/lang/String;)V

    throw p1

    :catchall_2
    move-exception p1

    .line 2033
    monitor-exit v1

    throw p1
.end method
