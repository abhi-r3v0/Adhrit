.class public final Lo/getLinkingData;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:I

.field private final ICustomTabsCallback$Stub:Z

.field private final asBinder:I

.field private final asInterface:I

.field private final extraCallback:Z

.field private final onMessageChannelReady:Ljava/lang/String;

.field private final onNavigationEvent:I

.field private final onPostMessage:I

.field private final onTransact:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    :cond_0
    sget-object p1, Lo/WinningTypes;->INotificationSideChannel:Lo/WinRaffleTicketResponseJsonAdapter;

    const-string v1, "aggressive_media_codec_release"

    invoke-static {v0, v1, p1}, Lo/getLinkingData;->extraCallback(Lorg/json/JSONObject;Ljava/lang/String;Lo/WinRaffleTicketResponseJsonAdapter;)Z

    move-result p1

    iput-boolean p1, p0, Lo/getLinkingData;->extraCallback:Z

    sget-object p1, Lo/WinningTypes;->newSession:Lo/WinRaffleTicketResponseJsonAdapter;

    const-string v1, "byte_buffer_precache_limit"

    invoke-static {v0, v1, p1}, Lo/getLinkingData;->ICustomTabsCallback(Lorg/json/JSONObject;Ljava/lang/String;Lo/WinRaffleTicketResponseJsonAdapter;)I

    move-result p1

    iput p1, p0, Lo/getLinkingData;->ICustomTabsCallback:I

    sget-object p1, Lo/WinningTypes;->extraCommand:Lo/WinRaffleTicketResponseJsonAdapter;

    const-string v1, "exo_cache_buffer_size"

    invoke-static {v0, v1, p1}, Lo/getLinkingData;->ICustomTabsCallback(Lorg/json/JSONObject;Ljava/lang/String;Lo/WinRaffleTicketResponseJsonAdapter;)I

    move-result p1

    iput p1, p0, Lo/getLinkingData;->onNavigationEvent:I

    sget-object p1, Lo/WinningTypes;->onRelationshipValidationResult:Lo/WinRaffleTicketResponseJsonAdapter;

    const-string v1, "exo_connect_timeout_millis"

    invoke-static {v0, v1, p1}, Lo/getLinkingData;->ICustomTabsCallback(Lorg/json/JSONObject;Ljava/lang/String;Lo/WinRaffleTicketResponseJsonAdapter;)I

    move-result p1

    iput p1, p0, Lo/getLinkingData;->onPostMessage:I

    sget-object p1, Lo/WinningTypes;->asInterface:Lo/WinRaffleTicketResponseJsonAdapter;

    const-string v1, "exo_player_version"

    invoke-static {v0, v1, p1}, Lo/getLinkingData;->onPostMessage(Lorg/json/JSONObject;Ljava/lang/String;Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/getLinkingData;->onMessageChannelReady:Ljava/lang/String;

    sget-object p1, Lo/WinningTypes;->ICustomTabsCallback$Stub:Lo/WinRaffleTicketResponseJsonAdapter;

    const-string v1, "exo_read_timeout_millis"

    invoke-static {v0, v1, p1}, Lo/getLinkingData;->ICustomTabsCallback(Lorg/json/JSONObject;Ljava/lang/String;Lo/WinRaffleTicketResponseJsonAdapter;)I

    move-result p1

    iput p1, p0, Lo/getLinkingData;->asInterface:I

    sget-object p1, Lo/WinningTypes;->ICustomTabsService:Lo/WinRaffleTicketResponseJsonAdapter;

    const-string v1, "load_check_interval_bytes"

    invoke-static {v0, v1, p1}, Lo/getLinkingData;->ICustomTabsCallback(Lorg/json/JSONObject;Ljava/lang/String;Lo/WinRaffleTicketResponseJsonAdapter;)I

    move-result p1

    iput p1, p0, Lo/getLinkingData;->asBinder:I

    sget-object p1, Lo/WinningTypes;->getInterfaceDescriptor:Lo/WinRaffleTicketResponseJsonAdapter;

    const-string v1, "player_precache_limit"

    invoke-static {v0, v1, p1}, Lo/getLinkingData;->ICustomTabsCallback(Lorg/json/JSONObject;Ljava/lang/String;Lo/WinRaffleTicketResponseJsonAdapter;)I

    move-result p1

    iput p1, p0, Lo/getLinkingData;->onTransact:I

    sget-object p1, Lo/WinningTypes;->putRating:Lo/WinRaffleTicketResponseJsonAdapter;

    const-string v1, "use_cache_data_source"

    invoke-static {v0, v1, p1}, Lo/getLinkingData;->extraCallback(Lorg/json/JSONObject;Ljava/lang/String;Lo/WinRaffleTicketResponseJsonAdapter;)Z

    move-result p1

    iput-boolean p1, p0, Lo/getLinkingData;->ICustomTabsCallback$Stub:Z

    return-void
.end method

.method private static ICustomTabsCallback(Lorg/json/JSONObject;Ljava/lang/String;Lo/WinRaffleTicketResponseJsonAdapter;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lo/WinRaffleTicketResponseJsonAdapter<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object p0

    invoke-virtual {p0, p2}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static extraCallback(Lorg/json/JSONObject;Ljava/lang/String;Lo/WinRaffleTicketResponseJsonAdapter;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lo/WinRaffleTicketResponseJsonAdapter<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object p0

    invoke-virtual {p0, p2}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static onPostMessage(Lorg/json/JSONObject;Ljava/lang/String;Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lo/WinRaffleTicketResponseJsonAdapter<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object p0

    invoke-virtual {p0, p2}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
