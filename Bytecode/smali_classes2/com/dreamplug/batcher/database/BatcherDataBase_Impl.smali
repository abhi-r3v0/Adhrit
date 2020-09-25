.class public final Lcom/dreamplug/batcher/database/BatcherDataBase_Impl;
.super Lcom/dreamplug/batcher/database/BatcherDataBase;
.source ""


# instance fields
.field private volatile ICustomTabsCallback$Stub:Lo/performAccessibilityAction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/dreamplug/batcher/database/BatcherDataBase;-><init>()V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lcom/dreamplug/batcher/database/BatcherDataBase_Impl;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lo/setCurrentControllerInfo;->extraCallback:Ljava/util/List;

    return-object p0
.end method

.method static synthetic ICustomTabsCallback$Stub(Lcom/dreamplug/batcher/database/BatcherDataBase_Impl;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lo/setCurrentControllerInfo;->extraCallback:Ljava/util/List;

    return-object p0
.end method

.method static synthetic asInterface(Lcom/dreamplug/batcher/database/BatcherDataBase_Impl;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lo/setCurrentControllerInfo;->extraCallback:Ljava/util/List;

    return-object p0
.end method

.method static synthetic extraCallback(Lcom/dreamplug/batcher/database/BatcherDataBase_Impl;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lo/setCurrentControllerInfo;->extraCallback:Ljava/util/List;

    return-object p0
.end method

.method static synthetic extraCallback(Lcom/dreamplug/batcher/database/BatcherDataBase_Impl;Lo/MediaControllerCompatApi21$Callback;)Lo/MediaControllerCompatApi21$Callback;
    .locals 0

    .line 25
    iput-object p1, p0, Lo/setCurrentControllerInfo;->onPostMessage:Lo/MediaControllerCompatApi21$Callback;

    return-object p1
.end method

.method static synthetic onMessageChannelReady(Lcom/dreamplug/batcher/database/BatcherDataBase_Impl;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lo/setCurrentControllerInfo;->extraCallback:Ljava/util/List;

    return-object p0
.end method

.method static synthetic onNavigationEvent(Lcom/dreamplug/batcher/database/BatcherDataBase_Impl;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lo/setCurrentControllerInfo;->extraCallback:Ljava/util/List;

    return-object p0
.end method

.method static synthetic onPostMessage(Lcom/dreamplug/batcher/database/BatcherDataBase_Impl;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lo/setCurrentControllerInfo;->extraCallback:Ljava/util/List;

    return-object p0
.end method

.method static synthetic onPostMessage(Lcom/dreamplug/batcher/database/BatcherDataBase_Impl;Lo/MediaControllerCompatApi21$Callback;)V
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lo/setCurrentControllerInfo;->onMessageChannelReady(Lo/MediaControllerCompatApi21$Callback;)V

    return-void
.end method

.method static synthetic onRelationshipValidationResult(Lcom/dreamplug/batcher/database/BatcherDataBase_Impl;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lo/setCurrentControllerInfo;->extraCallback:Ljava/util/List;

    return-object p0
.end method

.method static synthetic onTransact(Lcom/dreamplug/batcher/database/BatcherDataBase_Impl;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lo/setCurrentControllerInfo;->extraCallback:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final extraCallback()Lo/MediaSessionCompat$MediaSessionImpl;
    .locals 4

    .line 111
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 112
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 113
    new-instance v1, Lo/MediaSessionCompat$MediaSessionImpl;

    const-string v3, "request"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Lo/MediaSessionCompat$MediaSessionImpl;-><init>(Lo/setCurrentControllerInfo;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method public final onNavigationEvent(Lo/onAddQueueItem;)Lo/update;
    .locals 4

    .line 30
    new-instance v0, Lo/MediaSessionCompat$MediaSessionImplApi18;

    new-instance v1, Lcom/dreamplug/batcher/database/BatcherDataBase_Impl$5;

    invoke-direct {v1, p0}, Lcom/dreamplug/batcher/database/BatcherDataBase_Impl$5;-><init>(Lcom/dreamplug/batcher/database/BatcherDataBase_Impl;)V

    const-string v2, "58a2744f04d76cdf3b8b07653fba7fa9"

    const-string v3, "65b68869ce3db8fe5117df48af5e6b77"

    invoke-direct {v0, p1, v1, v2, v3}, Lo/MediaSessionCompat$MediaSessionImplApi18;-><init>(Lo/onAddQueueItem;Lo/MediaSessionCompat$MediaSessionImplApi18$onNavigationEvent;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v1, p1, Lo/onAddQueueItem;->extraCallback:Landroid/content/Context;

    .line 1351
    new-instance v2, Lo/update$onNavigationEvent$onMessageChannelReady;

    invoke-direct {v2, v1}, Lo/update$onNavigationEvent$onMessageChannelReady;-><init>(Landroid/content/Context;)V

    .line 101
    iget-object v1, p1, Lo/onAddQueueItem;->onNavigationEvent:Ljava/lang/String;

    .line 1402
    iput-object v1, v2, Lo/update$onNavigationEvent$onMessageChannelReady;->extraCallback:Ljava/lang/String;

    .line 1412
    iput-object v0, v2, Lo/update$onNavigationEvent$onMessageChannelReady;->onMessageChannelReady:Lo/update$onPostMessage;

    .line 104
    invoke-virtual {v2}, Lo/update$onNavigationEvent$onMessageChannelReady;->onPostMessage()Lo/update$onNavigationEvent;

    move-result-object v0

    .line 105
    iget-object p1, p1, Lo/onAddQueueItem;->ICustomTabsCallback:Lo/update$ICustomTabsCallback;

    invoke-interface {p1, v0}, Lo/update$ICustomTabsCallback;->onNavigationEvent(Lo/update$onNavigationEvent;)Lo/update;

    move-result-object p1

    return-object p1
.end method

.method public final onTransact()Lo/performAccessibilityAction;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/dreamplug/batcher/database/BatcherDataBase_Impl;->ICustomTabsCallback$Stub:Lo/performAccessibilityAction;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/dreamplug/batcher/database/BatcherDataBase_Impl;->ICustomTabsCallback$Stub:Lo/performAccessibilityAction;

    return-object v0

    .line 138
    :cond_0
    monitor-enter p0

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/dreamplug/batcher/database/BatcherDataBase_Impl;->ICustomTabsCallback$Stub:Lo/performAccessibilityAction;

    if-nez v0, :cond_1

    .line 140
    new-instance v0, Lo/getActionList;

    invoke-direct {v0, p0}, Lo/getActionList;-><init>(Lo/setCurrentControllerInfo;)V

    iput-object v0, p0, Lcom/dreamplug/batcher/database/BatcherDataBase_Impl;->ICustomTabsCallback$Stub:Lo/performAccessibilityAction;

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/dreamplug/batcher/database/BatcherDataBase_Impl;->ICustomTabsCallback$Stub:Lo/performAccessibilityAction;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 143
    monitor-exit p0

    throw v0
.end method
