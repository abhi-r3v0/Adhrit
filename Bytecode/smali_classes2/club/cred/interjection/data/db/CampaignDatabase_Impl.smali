.class public final Lclub/cred/interjection/data/db/CampaignDatabase_Impl;
.super Lclub/cred/interjection/data/db/CampaignDatabase;
.source ""


# instance fields
.field private volatile ICustomTabsCallback$Stub:Lo/createTextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lclub/cred/interjection/data/db/CampaignDatabase;-><init>()V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lclub/cred/interjection/data/db/CampaignDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lo/setCurrentControllerInfo;->extraCallback:Ljava/util/List;

    return-object p0
.end method

.method static synthetic ICustomTabsCallback(Lclub/cred/interjection/data/db/CampaignDatabase_Impl;Lo/MediaControllerCompatApi21$Callback;)Lo/MediaControllerCompatApi21$Callback;
    .locals 0

    .line 26
    iput-object p1, p0, Lo/setCurrentControllerInfo;->onPostMessage:Lo/MediaControllerCompatApi21$Callback;

    return-object p1
.end method

.method static synthetic ICustomTabsCallback$Stub(Lclub/cred/interjection/data/db/CampaignDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lo/setCurrentControllerInfo;->extraCallback:Ljava/util/List;

    return-object p0
.end method

.method static synthetic asBinder(Lclub/cred/interjection/data/db/CampaignDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lo/setCurrentControllerInfo;->extraCallback:Ljava/util/List;

    return-object p0
.end method

.method static synthetic asInterface(Lclub/cred/interjection/data/db/CampaignDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lo/setCurrentControllerInfo;->extraCallback:Ljava/util/List;

    return-object p0
.end method

.method static synthetic extraCallback(Lclub/cred/interjection/data/db/CampaignDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lo/setCurrentControllerInfo;->extraCallback:Ljava/util/List;

    return-object p0
.end method

.method static synthetic onMessageChannelReady(Lclub/cred/interjection/data/db/CampaignDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lo/setCurrentControllerInfo;->extraCallback:Ljava/util/List;

    return-object p0
.end method

.method static synthetic onNavigationEvent(Lclub/cred/interjection/data/db/CampaignDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lo/setCurrentControllerInfo;->extraCallback:Ljava/util/List;

    return-object p0
.end method

.method static synthetic onPostMessage(Lclub/cred/interjection/data/db/CampaignDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lo/setCurrentControllerInfo;->extraCallback:Ljava/util/List;

    return-object p0
.end method

.method static synthetic onPostMessage(Lclub/cred/interjection/data/db/CampaignDatabase_Impl;Lo/MediaControllerCompatApi21$Callback;)V
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/setCurrentControllerInfo;->onMessageChannelReady(Lo/MediaControllerCompatApi21$Callback;)V

    return-void
.end method

.method static synthetic onTransact(Lclub/cred/interjection/data/db/CampaignDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lo/setCurrentControllerInfo;->extraCallback:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final extraCallback()Lo/MediaSessionCompat$MediaSessionImpl;
    .locals 4

    .line 112
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 113
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 114
    new-instance v1, Lo/MediaSessionCompat$MediaSessionImpl;

    const-string v3, "campaigns"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Lo/MediaSessionCompat$MediaSessionImpl;-><init>(Lo/setCurrentControllerInfo;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method public final onNavigationEvent(Lo/onAddQueueItem;)Lo/update;
    .locals 4

    .line 31
    new-instance v0, Lo/MediaSessionCompat$MediaSessionImplApi18;

    new-instance v1, Lclub/cred/interjection/data/db/CampaignDatabase_Impl$4;

    invoke-direct {v1, p0}, Lclub/cred/interjection/data/db/CampaignDatabase_Impl$4;-><init>(Lclub/cred/interjection/data/db/CampaignDatabase_Impl;)V

    const-string v2, "86f7559486a8e40ca5982ce116a023e6"

    const-string v3, "9580b01f412d4e7a5d7a273b061f2d4d"

    invoke-direct {v0, p1, v1, v2, v3}, Lo/MediaSessionCompat$MediaSessionImplApi18;-><init>(Lo/onAddQueueItem;Lo/MediaSessionCompat$MediaSessionImplApi18$onNavigationEvent;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v1, p1, Lo/onAddQueueItem;->extraCallback:Landroid/content/Context;

    .line 1351
    new-instance v2, Lo/update$onNavigationEvent$onMessageChannelReady;

    invoke-direct {v2, v1}, Lo/update$onNavigationEvent$onMessageChannelReady;-><init>(Landroid/content/Context;)V

    .line 102
    iget-object v1, p1, Lo/onAddQueueItem;->onNavigationEvent:Ljava/lang/String;

    .line 1402
    iput-object v1, v2, Lo/update$onNavigationEvent$onMessageChannelReady;->extraCallback:Ljava/lang/String;

    .line 1412
    iput-object v0, v2, Lo/update$onNavigationEvent$onMessageChannelReady;->onMessageChannelReady:Lo/update$onPostMessage;

    .line 105
    invoke-virtual {v2}, Lo/update$onNavigationEvent$onMessageChannelReady;->onPostMessage()Lo/update$onNavigationEvent;

    move-result-object v0

    .line 106
    iget-object p1, p1, Lo/onAddQueueItem;->ICustomTabsCallback:Lo/update$ICustomTabsCallback;

    invoke-interface {p1, v0}, Lo/update$ICustomTabsCallback;->onNavigationEvent(Lo/update$onNavigationEvent;)Lo/update;

    move-result-object p1

    return-object p1
.end method

.method public final onTransact()Lo/createTextView;
    .locals 1

    .line 136
    iget-object v0, p0, Lclub/cred/interjection/data/db/CampaignDatabase_Impl;->ICustomTabsCallback$Stub:Lo/createTextView;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lclub/cred/interjection/data/db/CampaignDatabase_Impl;->ICustomTabsCallback$Stub:Lo/createTextView;

    return-object v0

    .line 139
    :cond_0
    monitor-enter p0

    .line 140
    :try_start_0
    iget-object v0, p0, Lclub/cred/interjection/data/db/CampaignDatabase_Impl;->ICustomTabsCallback$Stub:Lo/createTextView;

    if-nez v0, :cond_1

    .line 141
    new-instance v0, Lo/createView;

    invoke-direct {v0, p0}, Lo/createView;-><init>(Lo/setCurrentControllerInfo;)V

    iput-object v0, p0, Lclub/cred/interjection/data/db/CampaignDatabase_Impl;->ICustomTabsCallback$Stub:Lo/createTextView;

    .line 143
    :cond_1
    iget-object v0, p0, Lclub/cred/interjection/data/db/CampaignDatabase_Impl;->ICustomTabsCallback$Stub:Lo/createTextView;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 144
    monitor-exit p0

    throw v0
.end method
