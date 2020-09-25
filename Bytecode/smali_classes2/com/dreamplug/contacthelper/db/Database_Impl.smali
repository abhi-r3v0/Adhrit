.class public final Lcom/dreamplug/contacthelper/db/Database_Impl;
.super Lcom/dreamplug/contacthelper/db/Database;
.source ""


# instance fields
.field private volatile ICustomTabsCallback$Stub:Lo/setOnScrollChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/dreamplug/contacthelper/db/Database;-><init>()V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lcom/dreamplug/contacthelper/db/Database_Impl;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lo/setCurrentControllerInfo;->extraCallback:Ljava/util/List;

    return-object p0
.end method

.method static synthetic ICustomTabsCallback$Stub(Lcom/dreamplug/contacthelper/db/Database_Impl;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lo/setCurrentControllerInfo;->extraCallback:Ljava/util/List;

    return-object p0
.end method

.method static synthetic asBinder(Lcom/dreamplug/contacthelper/db/Database_Impl;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lo/setCurrentControllerInfo;->extraCallback:Ljava/util/List;

    return-object p0
.end method

.method static synthetic extraCallback(Lcom/dreamplug/contacthelper/db/Database_Impl;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lo/setCurrentControllerInfo;->extraCallback:Ljava/util/List;

    return-object p0
.end method

.method static synthetic onMessageChannelReady(Lcom/dreamplug/contacthelper/db/Database_Impl;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lo/setCurrentControllerInfo;->extraCallback:Ljava/util/List;

    return-object p0
.end method

.method static synthetic onMessageChannelReady(Lcom/dreamplug/contacthelper/db/Database_Impl;Lo/MediaControllerCompatApi21$Callback;)V
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/setCurrentControllerInfo;->onMessageChannelReady(Lo/MediaControllerCompatApi21$Callback;)V

    return-void
.end method

.method static synthetic onNavigationEvent(Lcom/dreamplug/contacthelper/db/Database_Impl;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lo/setCurrentControllerInfo;->extraCallback:Ljava/util/List;

    return-object p0
.end method

.method static synthetic onNavigationEvent(Lcom/dreamplug/contacthelper/db/Database_Impl;Lo/MediaControllerCompatApi21$Callback;)Lo/MediaControllerCompatApi21$Callback;
    .locals 0

    .line 26
    iput-object p1, p0, Lo/setCurrentControllerInfo;->onPostMessage:Lo/MediaControllerCompatApi21$Callback;

    return-object p1
.end method

.method static synthetic onPostMessage(Lcom/dreamplug/contacthelper/db/Database_Impl;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lo/setCurrentControllerInfo;->extraCallback:Ljava/util/List;

    return-object p0
.end method

.method static synthetic onRelationshipValidationResult(Lcom/dreamplug/contacthelper/db/Database_Impl;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lo/setCurrentControllerInfo;->extraCallback:Ljava/util/List;

    return-object p0
.end method

.method static synthetic onTransact(Lcom/dreamplug/contacthelper/db/Database_Impl;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lo/setCurrentControllerInfo;->extraCallback:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final asInterface()Lo/setOnScrollChangeListener;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/dreamplug/contacthelper/db/Database_Impl;->ICustomTabsCallback$Stub:Lo/setOnScrollChangeListener;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/dreamplug/contacthelper/db/Database_Impl;->ICustomTabsCallback$Stub:Lo/setOnScrollChangeListener;

    return-object v0

    .line 144
    :cond_0
    monitor-enter p0

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/dreamplug/contacthelper/db/Database_Impl;->ICustomTabsCallback$Stub:Lo/setOnScrollChangeListener;

    if-nez v0, :cond_1

    .line 146
    new-instance v0, Lo/reset;

    invoke-direct {v0, p0}, Lo/reset;-><init>(Lo/setCurrentControllerInfo;)V

    iput-object v0, p0, Lcom/dreamplug/contacthelper/db/Database_Impl;->ICustomTabsCallback$Stub:Lo/setOnScrollChangeListener;

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/dreamplug/contacthelper/db/Database_Impl;->ICustomTabsCallback$Stub:Lo/setOnScrollChangeListener;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 149
    monitor-exit p0

    throw v0
.end method

.method public final extraCallback()Lo/MediaSessionCompat$MediaSessionImpl;
    .locals 4

    .line 117
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 118
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 119
    new-instance v1, Lo/MediaSessionCompat$MediaSessionImpl;

    const-string v3, "ContactEntity"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Lo/MediaSessionCompat$MediaSessionImpl;-><init>(Lo/setCurrentControllerInfo;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method public final onNavigationEvent(Lo/onAddQueueItem;)Lo/update;
    .locals 4

    .line 31
    new-instance v0, Lo/MediaSessionCompat$MediaSessionImplApi18;

    new-instance v1, Lcom/dreamplug/contacthelper/db/Database_Impl$2;

    invoke-direct {v1, p0}, Lcom/dreamplug/contacthelper/db/Database_Impl$2;-><init>(Lcom/dreamplug/contacthelper/db/Database_Impl;)V

    const-string v2, "43932e02b1efe2b98c3723001dd72289"

    const-string v3, "0a32fc9c3018cc82cb331b9210eea81a"

    invoke-direct {v0, p1, v1, v2, v3}, Lo/MediaSessionCompat$MediaSessionImplApi18;-><init>(Lo/onAddQueueItem;Lo/MediaSessionCompat$MediaSessionImplApi18$onNavigationEvent;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v1, p1, Lo/onAddQueueItem;->extraCallback:Landroid/content/Context;

    .line 1351
    new-instance v2, Lo/update$onNavigationEvent$onMessageChannelReady;

    invoke-direct {v2, v1}, Lo/update$onNavigationEvent$onMessageChannelReady;-><init>(Landroid/content/Context;)V

    .line 107
    iget-object v1, p1, Lo/onAddQueueItem;->onNavigationEvent:Ljava/lang/String;

    .line 1402
    iput-object v1, v2, Lo/update$onNavigationEvent$onMessageChannelReady;->extraCallback:Ljava/lang/String;

    .line 1412
    iput-object v0, v2, Lo/update$onNavigationEvent$onMessageChannelReady;->onMessageChannelReady:Lo/update$onPostMessage;

    .line 110
    invoke-virtual {v2}, Lo/update$onNavigationEvent$onMessageChannelReady;->onPostMessage()Lo/update$onNavigationEvent;

    move-result-object v0

    .line 111
    iget-object p1, p1, Lo/onAddQueueItem;->ICustomTabsCallback:Lo/update$ICustomTabsCallback;

    invoke-interface {p1, v0}, Lo/update$ICustomTabsCallback;->onNavigationEvent(Lo/update$onNavigationEvent;)Lo/update;

    move-result-object p1

    return-object p1
.end method
