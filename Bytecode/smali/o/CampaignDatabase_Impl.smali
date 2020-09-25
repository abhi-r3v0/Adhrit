.class public final Lo/CampaignDatabase_Impl;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public ICustomTabsCallback:Ljava/lang/String;

.field public ICustomTabsCallback$Stub:J

.field public ICustomTabsCallback$Stub$Proxy:J

.field public ICustomTabsService:J

.field public ICustomTabsService$Stub:Ljava/lang/Throwable;

.field public ICustomTabsService$Stub$Proxy:I

.field public IPostMessageService:I

.field public IPostMessageService$Stub:J

.field public IPostMessageService$Stub$Proxy:Lo/setScaleType$extraCallback;

.field public asBinder:Lo/getHostPrefix;

.field public asInterface:J

.field private cancelAll:J

.field public extraCallback:Ljava/lang/String;

.field public extraCommand:I

.field public getInterfaceDescriptor:J

.field public mayLaunchUrl:I

.field public newSession:J

.field public onMessageChannelReady:Lo/AFHelper;

.field public onNavigationEvent:Ljava/lang/Object;

.field public onPostMessage:Lo/getHostPrefix;

.field public onRelationshipValidationResult:Lo/getHostPrefix;

.field public onTransact:[Lo/getHostPrefix;

.field public postMessage:Ljava/lang/String;

.field public requestPostMessageChannel:I

.field public updateVisuals:Z

.field public validateRelationship:J

.field public warmup:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 33
    iput-wide v0, p0, Lo/CampaignDatabase_Impl;->ICustomTabsCallback$Stub:J

    .line 34
    iput-wide v0, p0, Lo/CampaignDatabase_Impl;->asInterface:J

    .line 35
    iput-wide v0, p0, Lo/CampaignDatabase_Impl;->warmup:J

    .line 36
    iput-wide v0, p0, Lo/CampaignDatabase_Impl;->ICustomTabsService:J

    .line 37
    iput-wide v0, p0, Lo/CampaignDatabase_Impl;->newSession:J

    .line 40
    iput-wide v0, p0, Lo/CampaignDatabase_Impl;->ICustomTabsCallback$Stub$Proxy:J

    .line 41
    iput-wide v0, p0, Lo/CampaignDatabase_Impl;->getInterfaceDescriptor:J

    const/4 v2, 0x1

    .line 44
    iput v2, p0, Lo/CampaignDatabase_Impl;->extraCommand:I

    const/4 v2, -0x1

    .line 49
    iput v2, p0, Lo/CampaignDatabase_Impl;->requestPostMessageChannel:I

    .line 50
    iput v2, p0, Lo/CampaignDatabase_Impl;->mayLaunchUrl:I

    .line 56
    iput v2, p0, Lo/CampaignDatabase_Impl;->IPostMessageService:I

    .line 58
    iput v2, p0, Lo/CampaignDatabase_Impl;->ICustomTabsService$Stub$Proxy:I

    .line 59
    iput-wide v0, p0, Lo/CampaignDatabase_Impl;->validateRelationship:J

    .line 60
    iput-wide v0, p0, Lo/CampaignDatabase_Impl;->IPostMessageService$Stub:J

    .line 62
    iput-wide v0, p0, Lo/CampaignDatabase_Impl;->cancelAll:J

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 104
    iput-wide v0, p0, Lo/CampaignDatabase_Impl;->ICustomTabsCallback$Stub$Proxy:J

    .line 105
    iput-wide v0, p0, Lo/CampaignDatabase_Impl;->getInterfaceDescriptor:J

    .line 107
    iput-wide v0, p0, Lo/CampaignDatabase_Impl;->ICustomTabsCallback$Stub:J

    .line 108
    iput-wide v0, p0, Lo/CampaignDatabase_Impl;->warmup:J

    .line 109
    iput-wide v0, p0, Lo/CampaignDatabase_Impl;->ICustomTabsService:J

    .line 110
    iput-wide v0, p0, Lo/CampaignDatabase_Impl;->newSession:J

    .line 112
    iput-wide v0, p0, Lo/CampaignDatabase_Impl;->validateRelationship:J

    .line 113
    iput-wide v0, p0, Lo/CampaignDatabase_Impl;->IPostMessageService$Stub:J

    .line 115
    iput-wide v0, p0, Lo/CampaignDatabase_Impl;->cancelAll:J

    return-void
.end method
