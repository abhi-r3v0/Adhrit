.class public final Lo/Badges;
.super Lo/NotificationsResponse;

# interfaces
.implements Lo/NotificationSeenAckRequestBody;
.implements Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/NotificationsResponse<",
        "Lo/PlutusOrderJsonAdapter;",
        ">;",
        "Lo/NotificationSeenAckRequestBody;",
        "Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;"
    }
.end annotation

.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final onMessageChannelReady:Lo/DisbursalLottieFragment$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/DataListJsonAdapter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzarg;
        }
    .end annotation

    invoke-direct {p0}, Lo/NotificationsResponse;-><init>()V

    :try_start_0
    new-instance v0, Lo/DisbursalLottieFragment$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;

    new-instance v1, Lo/UploadFiltersJsonAdapter;

    invoke-direct {v1, p1}, Lo/UploadFiltersJsonAdapter;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lo/DisbursalLottieFragment$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;-><init>(Lo/UploadFiltersJsonAdapter;)V

    iput-object v0, p0, Lo/Badges;->onMessageChannelReady:Lo/DisbursalLottieFragment$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/DisbursalLottieFragment$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;->setWillNotDraw(Z)V

    iget-object v0, p0, Lo/Badges;->onMessageChannelReady:Lo/DisbursalLottieFragment$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;

    new-instance v1, Lo/BadgeNotificationsResponse;

    invoke-direct {v1, p0}, Lo/BadgeNotificationsResponse;-><init>(Lo/Badges;)V

    invoke-virtual {v0, v1}, Lo/CreateLoanPayRequestJsonAdapter;->onPostMessage(Lo/LendingWithdrawalFragment$ctaClicked$$inlined$executeOnResume$1;)V

    iget-object v0, p0, Lo/Badges;->onMessageChannelReady:Lo/DisbursalLottieFragment$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;

    new-instance v1, Lo/BadgeAckResponseJsonAdapter;

    invoke-direct {v1, p0}, Lo/BadgeAckResponseJsonAdapter;-><init>(Lo/Badges;)V

    invoke-virtual {v0, v1}, Lo/CreateLoanPayRequestJsonAdapter;->onNavigationEvent(Lo/LendingWithdrawalFragment$onActivityResult$$inlined$executeOnResume$1;)V

    iget-object v0, p0, Lo/Badges;->onMessageChannelReady:Lo/DisbursalLottieFragment$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;

    new-instance v1, Lo/NotificationCentreFragment$onItemClickListener$1$onClick$$inlined$let$lambda$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lo/NotificationCentreFragment$onItemClickListener$1$onClick$$inlined$let$lambda$1;-><init>(Lo/NotificationJsonAdapter;Lo/Body;)V

    const-string v2, "GoogleJsInterface"

    invoke-virtual {v0, v1, v2}, Lo/CreateLoanPayRequestJsonAdapter;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    move-result-object v0

    iget-object p2, p2, Lo/DataListJsonAdapter;->extraCallback:Ljava/lang/String;

    iget-object v1, p0, Lo/Badges;->onMessageChannelReady:Lo/DisbursalLottieFragment$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;

    invoke-virtual {v1}, Lo/DisbursalLottieFragment$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lo/AuthSupportedResponse$MetaData;->onMessageChannelReady(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebSettings;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzarg;

    const-string v0, "Init failed."

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzarg;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method final synthetic ICustomTabsCallback(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lo/Badges;->onMessageChannelReady:Lo/DisbursalLottieFragment$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;

    invoke-virtual {v0, p1}, Lo/CreateLoanPayRequestJsonAdapter;->onMessageChannelReady(Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic ICustomTabsCallback$Stub$Proxy()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method final synthetic asInterface(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lo/Badges;->onMessageChannelReady:Lo/DisbursalLottieFragment$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;

    invoke-virtual {v0, p1}, Lo/CreateLoanPayRequestJsonAdapter;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public final extraCallback(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "<!DOCTYPE html><html><head><script src=\"%s\"></script></head></html>"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/Badges;->onPostMessage(Ljava/lang/String;)V

    return-void
.end method

.method public final extraCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lo/NotificationsResponseJsonAdapter;->ICustomTabsCallback(Lo/NotificationSeenAckRequestBody;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final extraCallback(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lo/NotificationsResponseJsonAdapter;->onMessageChannelReady(Lo/NotificationSeenAckRequestBody;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final onMessageChannelReady()Lo/PlutusOrder;
    .locals 1

    new-instance v0, Lo/OrderJsonAdapter;

    invoke-direct {v0, p0}, Lo/OrderJsonAdapter;-><init>(Lo/PlutusOrderJsonAdapter;)V

    return-object v0
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lo/Properties;->extraCallback:Ljava/util/concurrent/Executor;

    new-instance v1, Lo/onSuccess;

    invoke-direct {v1, p0, p1}, Lo/onSuccess;-><init>(Lo/Badges;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lo/Properties;->extraCallback:Ljava/util/concurrent/Executor;

    new-instance v1, Lo/Notification;

    invoke-direct {v1, p0, p1}, Lo/Notification;-><init>(Lo/Badges;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lo/NotificationsResponseJsonAdapter;->ICustomTabsCallback(Lo/NotificationSeenAckRequestBody;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final onPostMessage()V
    .locals 1

    iget-object v0, p0, Lo/Badges;->onMessageChannelReady:Lo/DisbursalLottieFragment$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;

    invoke-virtual {v0}, Lo/DisbursalLottieFragment$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;->destroy()V

    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lo/Properties;->extraCallback:Ljava/util/concurrent/Executor;

    new-instance v1, Lo/BadgeNotificationsResponseJsonAdapter;

    invoke-direct {v1, p0, p1}, Lo/BadgeNotificationsResponseJsonAdapter;-><init>(Lo/Badges;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lo/NotificationsResponseJsonAdapter;->extraCallback(Lo/NotificationSeenAckRequestBody;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final onPostMessage(Lo/OnboardCardsData;)V
    .locals 2

    iget-object v0, p0, Lo/Badges;->onMessageChannelReady:Lo/DisbursalLottieFragment$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;

    new-instance v1, Lo/BodyJsonAdapter;

    invoke-direct {v1, p1}, Lo/BodyJsonAdapter;-><init>(Lo/OnboardCardsData;)V

    invoke-virtual {v0, v1}, Lo/CreateLoanPayRequestJsonAdapter;->onNavigationEvent(Lo/LoanManagementFragment$onActivityResult$$inlined$executeOnResume$1;)V

    return-void
.end method

.method final synthetic onTransact(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lo/Badges;->onMessageChannelReady:Lo/DisbursalLottieFragment$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;

    const-string v1, "text/html"

    const-string v2, "UTF-8"

    invoke-virtual {v0, p1, v1, v2}, Lo/DisbursalLottieFragment$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
