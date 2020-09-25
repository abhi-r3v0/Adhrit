.class final Lo/EventDataCollector;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getUrl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/EventDataCollector$onMessageChannelReady;
    }
.end annotation

.annotation runtime Lo/mark;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/EventDataCollector$onMessageChannelReady;

.field private final onNavigationEvent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/ContentFetcher$2;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Lcom/dreamplug/fabrik/ui/cm/models/Template$extraCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/dreamplug/fabrik/ui/cm/models/Template$extraCallback;)V
    .locals 1
    .annotation runtime Lo/withJitterFactor;
    .end annotation

    .line 59
    new-instance v0, Lo/EventDataCollector$onMessageChannelReady;

    invoke-direct {v0, p1}, Lo/EventDataCollector$onMessageChannelReady;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Lo/EventDataCollector;-><init>(Lo/EventDataCollector$onMessageChannelReady;Lcom/dreamplug/fabrik/ui/cm/models/Template$extraCallback;)V

    return-void
.end method

.method private constructor <init>(Lo/EventDataCollector$onMessageChannelReady;Lcom/dreamplug/fabrik/ui/cm/models/Template$extraCallback;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/EventDataCollector;->onNavigationEvent:Ljava/util/Map;

    .line 65
    iput-object p1, p0, Lo/EventDataCollector;->ICustomTabsCallback:Lo/EventDataCollector$onMessageChannelReady;

    .line 66
    iput-object p2, p0, Lo/EventDataCollector;->onPostMessage:Lcom/dreamplug/fabrik/ui/cm/models/Template$extraCallback;

    return-void
.end method


# virtual methods
.method public final declared-synchronized onMessageChannelReady(Ljava/lang/String;)Lo/ContentFetcher$2;
    .locals 5

    monitor-enter p0

    .line 72
    :try_start_0
    iget-object v0, p0, Lo/EventDataCollector;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lo/EventDataCollector;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/ContentFetcher$2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 76
    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/EventDataCollector;->ICustomTabsCallback:Lo/EventDataCollector$onMessageChannelReady;

    invoke-virtual {v0, p1}, Lo/EventDataCollector$onMessageChannelReady;->onNavigationEvent(Ljava/lang/String;)Lo/SingleInstallBroadcastReceiver;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 78
    monitor-exit p0

    return-object p1

    .line 80
    :cond_1
    :try_start_2
    iget-object v1, p0, Lo/EventDataCollector;->onPostMessage:Lcom/dreamplug/fabrik/ui/cm/models/Template$extraCallback;

    .line 1037
    iget-object v2, v1, Lcom/dreamplug/fabrik/ui/cm/models/Template$extraCallback;->onNavigationEvent:Landroid/content/Context;

    iget-object v3, v1, Lcom/dreamplug/fabrik/ui/cm/models/Template$extraCallback;->onMessageChannelReady:Lo/b;

    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/cm/models/Template$extraCallback;->ICustomTabsCallback:Lo/b;

    .line 1050
    new-instance v4, Lo/setConnProvider;

    invoke-direct {v4, v2, v3, v1, p1}, Lo/setConnProvider;-><init>(Landroid/content/Context;Lo/b;Lo/b;Ljava/lang/String;)V

    .line 80
    invoke-interface {v0, v4}, Lo/SingleInstallBroadcastReceiver;->create(Lo/ServerParameters;)Lo/ContentFetcher$2;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lo/EventDataCollector;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
