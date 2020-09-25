.class public final Lo/AutoDebitRequestBody_MandateDetailJsonAdapter;
.super Lo/ConfigJsonAdapter;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/RentOrderResponseJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/RentOrderResponseJsonAdapter<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Ljava/lang/Object;

.field private onNavigationEvent:Landroid/content/SharedPreferences;

.field private final onPostMessage:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/RentOrderResponseJsonAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/RentOrderResponseJsonAdapter<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lo/ConfigJsonAdapter;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/AutoDebitRequestBody_MandateDetailJsonAdapter;->extraCallback:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lo/AutoDebitRequestBody_MandateDetailJsonAdapter;->onPostMessage:Landroid/content/Context;

    iput-object p2, p0, Lo/AutoDebitRequestBody_MandateDetailJsonAdapter;->ICustomTabsCallback:Lo/RentOrderResponseJsonAdapter;

    return-void
.end method


# virtual methods
.method final synthetic onMessageChannelReady(Lorg/json/JSONObject;)Ljava/lang/Void;
    .locals 3

    iget-object v0, p0, Lo/AutoDebitRequestBody_MandateDetailJsonAdapter;->onPostMessage:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lo/WinningTypes;->ICustomTabsCallback(Landroid/content/Context;ILorg/json/JSONObject;)V

    iget-object p1, p0, Lo/AutoDebitRequestBody_MandateDetailJsonAdapter;->onNavigationEvent:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    invoke-interface {v0}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v0

    const-string v2, "js_last_update"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onMessageChannelReady()Lo/PaymentModeListResponseJsonAdapter;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/PaymentModeListResponseJsonAdapter<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo/AutoDebitRequestBody_MandateDetailJsonAdapter;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/AutoDebitRequestBody_MandateDetailJsonAdapter;->onNavigationEvent:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    :goto_0
    monitor-exit v0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lo/AutoDebitRequestBody_MandateDetailJsonAdapter;->onPostMessage:Landroid/content/Context;

    const-string v2, "google_ads_flags_meta"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lo/AutoDebitRequestBody_MandateDetailJsonAdapter;->onNavigationEvent:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lo/AutoDebitRequestBody_MandateDetailJsonAdapter;->onNavigationEvent:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    const-string v3, "js_last_update"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v2

    invoke-interface {v2}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sget-object v0, Lo/WinningTypes;->MediaDescriptionCompat$Builder:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v4, 0x0

    cmp-long v5, v2, v0

    if-gez v5, :cond_1

    invoke-static {v4}, Lo/InvalidPaymentAmount$$Parcelable;->extraCallback(Ljava/lang/Object;)Lo/PayNowBottomSheetResponseJsonAdapter;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v1, "js"

    invoke-static {}, Lo/DataListJsonAdapter;->ICustomTabsCallback()Lo/DataListJsonAdapter;

    move-result-object v2

    iget-object v2, v2, Lo/DataListJsonAdapter;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mf"

    sget-object v2, Lo/WinningTypes;->getMediaDescription:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cl"

    const-string v2, "193400285"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "rapid_rc"

    const-string v2, "dev"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "rapid_rollup"

    const-string v2, "HEAD"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "dynamite_version"

    const/16 v2, 0x117

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v1, p0, Lo/AutoDebitRequestBody_MandateDetailJsonAdapter;->ICustomTabsCallback:Lo/RentOrderResponseJsonAdapter;

    invoke-interface {v1, v0}, Lo/RentOrderResponseJsonAdapter;->onPostMessage(Ljava/lang/Object;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object v0

    new-instance v1, Lo/AutoDebitRegistrationStatusResponseJsonAdapter;

    invoke-direct {v1, p0}, Lo/AutoDebitRegistrationStatusResponseJsonAdapter;-><init>(Lo/AutoDebitRequestBody_MandateDetailJsonAdapter;)V

    sget-object v2, Lo/Properties;->onNavigationEvent:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lo/InvalidPaymentAmount$$Parcelable;->onMessageChannelReady(Lo/PaymentModeListResponseJsonAdapter;Lo/getText3;Ljava/util/concurrent/Executor;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Unable to populate SDK Core Constants parameters."

    invoke-static {v1, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v4}, Lo/InvalidPaymentAmount$$Parcelable;->extraCallback(Ljava/lang/Object;)Lo/PayNowBottomSheetResponseJsonAdapter;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
