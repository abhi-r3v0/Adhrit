.class public final Lo/TabConfigResponse;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field public final ICustomTabsCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final ICustomTabsCallback$Stub:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final ICustomTabsCallback$Stub$Proxy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final ICustomTabsService:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final asBinder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final asInterface:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final extraCallback:Ljava/lang/String;

.field public final extraCommand:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final getInterfaceDescriptor:Ljava/lang/String;

.field public final mayLaunchUrl:Ljava/lang/String;

.field public final newSession:Ljava/lang/String;

.field public final onMessageChannelReady:Ljava/lang/String;

.field public final onNavigationEvent:Ljava/lang/String;

.field public final onPostMessage:Ljava/lang/String;

.field public final onRelationshipValidationResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final onTransact:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final postMessage:Ljava/lang/String;

.field public final requestPostMessageChannel:J

.field public final updateVisuals:Ljava/lang/String;

.field private final validateRelationship:Ljava/lang/String;

.field public final warmup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lo/TabConfigResponse;->onNavigationEvent:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, v0, Lo/TabConfigResponse;->onPostMessage:Ljava/lang/String;

    move-object v2, p3

    iput-object v2, v0, Lo/TabConfigResponse;->ICustomTabsCallback:Ljava/util/List;

    iput-object v1, v0, Lo/TabConfigResponse;->extraCallback:Ljava/lang/String;

    iput-object v1, v0, Lo/TabConfigResponse;->onMessageChannelReady:Ljava/lang/String;

    move-object v2, p6

    iput-object v2, v0, Lo/TabConfigResponse;->onRelationshipValidationResult:Ljava/util/List;

    move-object v2, p7

    iput-object v2, v0, Lo/TabConfigResponse;->ICustomTabsCallback$Stub:Ljava/util/List;

    move-object v2, p8

    iput-object v2, v0, Lo/TabConfigResponse;->onTransact:Ljava/util/List;

    move-object v2, p9

    iput-object v2, v0, Lo/TabConfigResponse;->asBinder:Ljava/util/List;

    move-object v2, p10

    iput-object v2, v0, Lo/TabConfigResponse;->getInterfaceDescriptor:Ljava/lang/String;

    move-object v2, p12

    iput-object v2, v0, Lo/TabConfigResponse;->ICustomTabsCallback$Stub$Proxy:Ljava/util/List;

    move-object/from16 v2, p13

    iput-object v2, v0, Lo/TabConfigResponse;->ICustomTabsService:Ljava/util/List;

    move-object/from16 v2, p14

    iput-object v2, v0, Lo/TabConfigResponse;->warmup:Ljava/util/List;

    iput-object v1, v0, Lo/TabConfigResponse;->newSession:Ljava/lang/String;

    iput-object v1, v0, Lo/TabConfigResponse;->updateVisuals:Ljava/lang/String;

    iput-object v1, v0, Lo/TabConfigResponse;->postMessage:Ljava/lang/String;

    iput-object v1, v0, Lo/TabConfigResponse;->extraCommand:Ljava/util/List;

    iput-object v1, v0, Lo/TabConfigResponse;->mayLaunchUrl:Ljava/lang/String;

    move-object/from16 v2, p20

    iput-object v2, v0, Lo/TabConfigResponse;->asInterface:Ljava/util/List;

    iput-object v1, v0, Lo/TabConfigResponse;->validateRelationship:Ljava/lang/String;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lo/TabConfigResponse;->requestPostMessageChannel:J

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/TabConfigResponse;->onPostMessage:Ljava/lang/String;

    const-string v0, "adapters"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/TabConfigResponse;->ICustomTabsCallback:Ljava/util/List;

    const/4 v0, 0x0

    const-string v1, "allocation_id"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lo/TabConfigResponse;->extraCallback:Ljava/lang/String;

    invoke-static {}, Lo/getParcel;->validateRelationship()Lo/AccountTemplateProperties;

    const-string v1, "clickurl"

    invoke-static {p1, v1}, Lo/AccountTemplateProperties;->onNavigationEvent(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lo/TabConfigResponse;->onRelationshipValidationResult:Ljava/util/List;

    invoke-static {}, Lo/getParcel;->validateRelationship()Lo/AccountTemplateProperties;

    const-string v1, "imp_urls"

    invoke-static {p1, v1}, Lo/AccountTemplateProperties;->onNavigationEvent(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lo/TabConfigResponse;->ICustomTabsCallback$Stub:Ljava/util/List;

    invoke-static {}, Lo/getParcel;->validateRelationship()Lo/AccountTemplateProperties;

    const-string v1, "downloaded_imp_urls"

    invoke-static {p1, v1}, Lo/AccountTemplateProperties;->onNavigationEvent(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lo/TabConfigResponse;->onTransact:Ljava/util/List;

    invoke-static {}, Lo/getParcel;->validateRelationship()Lo/AccountTemplateProperties;

    const-string v1, "fill_urls"

    invoke-static {p1, v1}, Lo/AccountTemplateProperties;->onNavigationEvent(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lo/TabConfigResponse;->asInterface:Ljava/util/List;

    invoke-static {}, Lo/getParcel;->validateRelationship()Lo/AccountTemplateProperties;

    const-string v1, "video_start_urls"

    invoke-static {p1, v1}, Lo/AccountTemplateProperties;->onNavigationEvent(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lo/TabConfigResponse;->ICustomTabsCallback$Stub$Proxy:Ljava/util/List;

    invoke-static {}, Lo/getParcel;->validateRelationship()Lo/AccountTemplateProperties;

    const-string v1, "video_complete_urls"

    invoke-static {p1, v1}, Lo/AccountTemplateProperties;->onNavigationEvent(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lo/TabConfigResponse;->warmup:Ljava/util/List;

    invoke-static {}, Lo/getParcel;->validateRelationship()Lo/AccountTemplateProperties;

    const-string v1, "video_reward_urls"

    invoke-static {p1, v1}, Lo/AccountTemplateProperties;->onNavigationEvent(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lo/WinningTypes;->MediaBrowserCompat$MediaBrowserImpl:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lo/TabConfigResponse;->warmup:Ljava/util/List;

    :goto_1
    iput-object v1, p0, Lo/TabConfigResponse;->ICustomTabsService:Ljava/util/List;

    const-string v1, "ad"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lo/getParcel;->validateRelationship()Lo/AccountTemplateProperties;

    const-string v2, "manual_impression_urls"

    invoke-static {v1, v2}, Lo/AccountTemplateProperties;->onNavigationEvent(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v0

    :goto_2
    iput-object v2, p0, Lo/TabConfigResponse;->asBinder:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    move-object v1, v0

    :goto_3
    iput-object v1, p0, Lo/TabConfigResponse;->onNavigationEvent:Ljava/lang/String;

    const-string v1, "data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_4
    move-object v2, v0

    :goto_4
    iput-object v2, p0, Lo/TabConfigResponse;->getInterfaceDescriptor:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v2, "class_name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_5
    move-object v1, v0

    :goto_5
    iput-object v1, p0, Lo/TabConfigResponse;->onMessageChannelReady:Ljava/lang/String;

    const-string v1, "html_template"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lo/TabConfigResponse;->newSession:Ljava/lang/String;

    const-string v1, "ad_base_url"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lo/TabConfigResponse;->updateVisuals:Ljava/lang/String;

    const-string v1, "assets"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_6
    move-object v1, v0

    :goto_6
    iput-object v1, p0, Lo/TabConfigResponse;->postMessage:Ljava/lang/String;

    invoke-static {}, Lo/getParcel;->validateRelationship()Lo/AccountTemplateProperties;

    const-string v1, "template_ids"

    invoke-static {p1, v1}, Lo/AccountTemplateProperties;->onNavigationEvent(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lo/TabConfigResponse;->extraCommand:Ljava/util/List;

    const-string v1, "ad_loader_options"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_7
    move-object v1, v0

    :goto_7
    iput-object v1, p0, Lo/TabConfigResponse;->mayLaunchUrl:Ljava/lang/String;

    const-string v1, "response_type"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/TabConfigResponse;->validateRelationship:Ljava/lang/String;

    const-wide/16 v0, -0x1

    const-string v2, "ad_network_timeout_millis"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lo/TabConfigResponse;->requestPostMessageChannel:J

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()Z
    .locals 2

    iget-object v0, p0, Lo/TabConfigResponse;->validateRelationship:Ljava/lang/String;

    const-string v1, "banner"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final onPostMessage()Z
    .locals 2

    iget-object v0, p0, Lo/TabConfigResponse;->validateRelationship:Ljava/lang/String;

    const-string v1, "native"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
