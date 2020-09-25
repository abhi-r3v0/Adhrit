.class public final Lo/StatementResponse_StatementDetails_PastDuesJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ICustomTabsCallback:Lo/BadgesJsonAdapter;

.field private final synthetic extraCallback:Ljava/util/Map;

.field private final synthetic onPostMessage:Lcom/google/android/gms/ads/internal/gmsg/HttpClient;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/gmsg/HttpClient;Ljava/util/Map;Lo/BadgesJsonAdapter;)V
    .locals 0

    iput-object p1, p0, Lo/StatementResponse_StatementDetails_PastDuesJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/gmsg/HttpClient;

    iput-object p2, p0, Lo/StatementResponse_StatementDetails_PastDuesJsonAdapter;->extraCallback:Ljava/util/Map;

    iput-object p3, p0, Lo/StatementResponse_StatementDetails_PastDuesJsonAdapter;->ICustomTabsCallback:Lo/BadgesJsonAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const-string v0, "Received Http request."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V

    iget-object v0, p0, Lo/StatementResponse_StatementDetails_PastDuesJsonAdapter;->extraCallback:Ljava/util/Map;

    const-string v1, "http_request"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lo/StatementResponse_StatementDetails_PastDuesJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/gmsg/HttpClient;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient;->send(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Response should not be null."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v1, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v2, Lo/StatementResponse_StatementDetails_Transactions_DomesticTransactionJsonAdapter;

    invoke-direct {v2, p0, v0}, Lo/StatementResponse_StatementDetails_Transactions_DomesticTransactionJsonAdapter;-><init>(Lo/StatementResponse_StatementDetails_PastDuesJsonAdapter;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error converting request to json."

    invoke-static {v1, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
