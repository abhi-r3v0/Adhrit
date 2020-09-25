.class public final Lo/AttributeJsonAdapter;
.super Lo/stopScroll;
.source ""


# instance fields
.field private final extraCallback:Lo/CampaignDatabase_Impl;

.field private final onNavigationEvent:Lo/CoroutineWorker;


# direct methods
.method public constructor <init>(Lo/CoroutineWorker;Lo/CampaignDatabase_Impl;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lo/stopScroll;-><init>()V

    .line 21
    iput-object p1, p0, Lo/AttributeJsonAdapter;->onNavigationEvent:Lo/CoroutineWorker;

    .line 22
    iput-object p2, p0, Lo/AttributeJsonAdapter;->extraCallback:Lo/CampaignDatabase_Impl;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/getHostPrefix;Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 3

    .line 28
    iget-object v0, p0, Lo/AttributeJsonAdapter;->extraCallback:Lo/CampaignDatabase_Impl;

    iget-object v1, p0, Lo/AttributeJsonAdapter;->onNavigationEvent:Lo/CoroutineWorker;

    invoke-interface {v1}, Lo/CoroutineWorker;->now()J

    move-result-wide v1

    .line 1173
    iput-wide v1, v0, Lo/CampaignDatabase_Impl;->ICustomTabsCallback$Stub$Proxy:J

    .line 30
    iget-object v0, p0, Lo/AttributeJsonAdapter;->extraCallback:Lo/CampaignDatabase_Impl;

    .line 2136
    iput-object p1, v0, Lo/CampaignDatabase_Impl;->onPostMessage:Lo/getHostPrefix;

    .line 31
    iget-object p1, p0, Lo/AttributeJsonAdapter;->extraCallback:Lo/CampaignDatabase_Impl;

    .line 2149
    iput-object p2, p1, Lo/CampaignDatabase_Impl;->onNavigationEvent:Ljava/lang/Object;

    .line 32
    iget-object p1, p0, Lo/AttributeJsonAdapter;->extraCallback:Lo/CampaignDatabase_Impl;

    .line 3132
    iput-object p3, p1, Lo/CampaignDatabase_Impl;->ICustomTabsCallback:Ljava/lang/String;

    .line 33
    iget-object p1, p0, Lo/AttributeJsonAdapter;->extraCallback:Lo/CampaignDatabase_Impl;

    .line 3197
    iput-boolean p4, p1, Lo/CampaignDatabase_Impl;->updateVisuals:Z

    return-void
.end method

.method public final extraCallback(Ljava/lang/String;)V
    .locals 3

    .line 57
    iget-object v0, p0, Lo/AttributeJsonAdapter;->extraCallback:Lo/CampaignDatabase_Impl;

    iget-object v1, p0, Lo/AttributeJsonAdapter;->onNavigationEvent:Lo/CoroutineWorker;

    invoke-interface {v1}, Lo/CoroutineWorker;->now()J

    move-result-wide v1

    .line 10177
    iput-wide v1, v0, Lo/CampaignDatabase_Impl;->getInterfaceDescriptor:J

    .line 59
    iget-object v0, p0, Lo/AttributeJsonAdapter;->extraCallback:Lo/CampaignDatabase_Impl;

    .line 11132
    iput-object p1, v0, Lo/CampaignDatabase_Impl;->ICustomTabsCallback:Ljava/lang/String;

    return-void
.end method

.method public final onPostMessage(Lo/getHostPrefix;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 2

    .line 48
    iget-object p3, p0, Lo/AttributeJsonAdapter;->extraCallback:Lo/CampaignDatabase_Impl;

    iget-object v0, p0, Lo/AttributeJsonAdapter;->onNavigationEvent:Lo/CoroutineWorker;

    invoke-interface {v0}, Lo/CoroutineWorker;->now()J

    move-result-wide v0

    .line 7177
    iput-wide v0, p3, Lo/CampaignDatabase_Impl;->getInterfaceDescriptor:J

    .line 50
    iget-object p3, p0, Lo/AttributeJsonAdapter;->extraCallback:Lo/CampaignDatabase_Impl;

    .line 8136
    iput-object p1, p3, Lo/CampaignDatabase_Impl;->onPostMessage:Lo/getHostPrefix;

    .line 51
    iget-object p1, p0, Lo/AttributeJsonAdapter;->extraCallback:Lo/CampaignDatabase_Impl;

    .line 9132
    iput-object p2, p1, Lo/CampaignDatabase_Impl;->ICustomTabsCallback:Ljava/lang/String;

    .line 52
    iget-object p1, p0, Lo/AttributeJsonAdapter;->extraCallback:Lo/CampaignDatabase_Impl;

    .line 9197
    iput-boolean p4, p1, Lo/CampaignDatabase_Impl;->updateVisuals:Z

    return-void
.end method

.method public final onPostMessage(Lo/getHostPrefix;Ljava/lang/String;Z)V
    .locals 3

    .line 38
    iget-object v0, p0, Lo/AttributeJsonAdapter;->extraCallback:Lo/CampaignDatabase_Impl;

    iget-object v1, p0, Lo/AttributeJsonAdapter;->onNavigationEvent:Lo/CoroutineWorker;

    invoke-interface {v1}, Lo/CoroutineWorker;->now()J

    move-result-wide v1

    .line 4177
    iput-wide v1, v0, Lo/CampaignDatabase_Impl;->getInterfaceDescriptor:J

    .line 40
    iget-object v0, p0, Lo/AttributeJsonAdapter;->extraCallback:Lo/CampaignDatabase_Impl;

    .line 5136
    iput-object p1, v0, Lo/CampaignDatabase_Impl;->onPostMessage:Lo/getHostPrefix;

    .line 41
    iget-object p1, p0, Lo/AttributeJsonAdapter;->extraCallback:Lo/CampaignDatabase_Impl;

    .line 6132
    iput-object p2, p1, Lo/CampaignDatabase_Impl;->ICustomTabsCallback:Ljava/lang/String;

    .line 42
    iget-object p1, p0, Lo/AttributeJsonAdapter;->extraCallback:Lo/CampaignDatabase_Impl;

    .line 6197
    iput-boolean p3, p1, Lo/CampaignDatabase_Impl;->updateVisuals:Z

    return-void
.end method
