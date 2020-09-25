.class public final Lo/WishlistUnlikeEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lo/AppsFlyerLibCore$c;
.implements Lo/AppsFlyerProperties;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<NETWORK_EXTRAS::",
        "Lo/AppsFlyerLibCore$e;",
        "SERVER_PARAMETERS:",
        "Lcom/google/ads/mediation/MediationServerParameters;",
        ">",
        "Ljava/lang/Object;",
        "Lo/AppsFlyerLibCore$c;",
        "Lo/AppsFlyerProperties;"
    }
.end annotation

.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final onNavigationEvent:Lo/PromotionalCardsJsonAdapter;


# direct methods
.method public constructor <init>(Lo/PromotionalCardsJsonAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/WishlistUnlikeEntity;->onNavigationEvent:Lo/PromotionalCardsJsonAdapter;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/WishlistUnlikeEntity;)Lo/PromotionalCardsJsonAdapter;
    .locals 0

    iget-object p0, p0, Lo/WishlistUnlikeEntity;->onNavigationEvent:Lo/PromotionalCardsJsonAdapter;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Lcom/google/ads/mediation/MediationBannerAdapter;Lo/AppsFlyerLibCore$b$ICustomTabsCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationBannerAdapter<",
            "**>;",
            "Lo/AppsFlyerLibCore$b$ICustomTabsCallback;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Adapter called onFailedToReceiveAd with error. "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;)V

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    invoke-static {}, Lo/ControlStatementRepo$TransactionItem;->onMessageChannelReady()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0, p1}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Lo/ControlStatementRepo$TransactionItem;->onNavigationEvent:Landroid/os/Handler;

    new-instance v0, Lo/StringRepoResponseJsonAdapter;

    invoke-direct {v0, p0, p2}, Lo/StringRepoResponseJsonAdapter;-><init>(Lo/WishlistUnlikeEntity;Lo/AppsFlyerLibCore$b$ICustomTabsCallback;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    :try_start_0
    iget-object p1, p0, Lo/WishlistUnlikeEntity;->onNavigationEvent:Lo/PromotionalCardsJsonAdapter;

    invoke-static {p2}, Lo/StringRepoResponse;->onNavigationEvent(Lo/AppsFlyerLibCore$b$ICustomTabsCallback;)I

    move-result p2

    invoke-interface {p1, p2}, Lo/PromotionalCardsJsonAdapter;->onNavigationEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onPostMessage(Lcom/google/ads/mediation/MediationInterstitialAdapter;Lo/AppsFlyerLibCore$b$ICustomTabsCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationInterstitialAdapter<",
            "**>;",
            "Lo/AppsFlyerLibCore$b$ICustomTabsCallback;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Adapter called onFailedToReceiveAd with error "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;)V

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    invoke-static {}, Lo/ControlStatementRepo$TransactionItem;->onMessageChannelReady()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0, p1}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Lo/ControlStatementRepo$TransactionItem;->onNavigationEvent:Landroid/os/Handler;

    new-instance v0, Lo/setRingAngle;

    invoke-direct {v0, p0, p2}, Lo/setRingAngle;-><init>(Lo/WishlistUnlikeEntity;Lo/AppsFlyerLibCore$b$ICustomTabsCallback;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    :try_start_0
    iget-object p1, p0, Lo/WishlistUnlikeEntity;->onNavigationEvent:Lo/PromotionalCardsJsonAdapter;

    invoke-static {p2}, Lo/StringRepoResponse;->onNavigationEvent(Lo/AppsFlyerLibCore$b$ICustomTabsCallback;)I

    move-result p2

    invoke-interface {p1, p2}, Lo/PromotionalCardsJsonAdapter;->onNavigationEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
