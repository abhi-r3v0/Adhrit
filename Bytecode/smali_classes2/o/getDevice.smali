.class final Lo/getDevice;
.super Ljava/lang/Object;

# interfaces
.implements Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter<",
        "Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/SuggestedAmount;

.field private final synthetic onMessageChannelReady:Lo/getVersionNumber;

.field private final synthetic onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;


# direct methods
.method constructor <init>(Lo/getVersionNumber;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Lo/SuggestedAmount;)V
    .locals 0

    iput-object p1, p0, Lo/getDevice;->onMessageChannelReady:Lo/getVersionNumber;

    iput-object p2, p0, Lo/getDevice;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    iput-object p3, p0, Lo/getDevice;->ICustomTabsCallback:Lo/SuggestedAmount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 4

    const-string p1, "success"

    :try_start_0
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "failure"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    move-object v0, p2

    const/4 p2, 0x1

    :goto_0
    iget-object v1, p0, Lo/getDevice;->onMessageChannelReady:Lo/getVersionNumber;

    invoke-static {v1}, Lo/getVersionNumber;->extraCallback(Lo/getVersionNumber;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ads_id"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lo/getDevice;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    const-string v2, "/nativeAdPreProcess"

    invoke-interface {v1, v2, p0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "json"

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lo/getDevice;->ICustomTabsCallback:Lo/SuggestedAmount;

    invoke-virtual {p1, v1}, Lo/SuggestedAmount;->extraCallback(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "Error while preprocessing json."

    invoke-static {p2, p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p2, p0, Lo/getDevice;->ICustomTabsCallback:Lo/SuggestedAmount;

    invoke-virtual {p2, p1}, Lo/SuggestedAmount;->onMessageChannelReady(Ljava/lang/Throwable;)V

    return-void
.end method
