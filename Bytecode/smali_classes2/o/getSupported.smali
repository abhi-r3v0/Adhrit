.class final Lo/getSupported;
.super Ljava/lang/Object;

# interfaces
.implements Lo/Footer$$Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/Footer$$Parcelable<",
        "Ljava/lang/Throwable;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final synthetic onPostMessage:Lo/CashBackDetailsJsonAdapter;


# direct methods
.method constructor <init>(Lo/getCashback_disabled;Lo/CashBackDetailsJsonAdapter;)V
    .locals 0

    iput-object p2, p0, Lo/getSupported;->onPostMessage:Lo/CashBackDetailsJsonAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Ljava/lang/Object;)Lo/PaymentModeListResponseJsonAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "Error occurred while dispatching http response in getter."

    invoke-static {v0, p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v0

    const-string v1, "HttpGetter.deliverResponse.1"

    invoke-virtual {v0, p1, v1}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onMessageChannelReady(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object p1, p0, Lo/getSupported;->onPostMessage:Lo/CashBackDetailsJsonAdapter;

    invoke-interface {p1}, Lo/CashBackDetailsJsonAdapter;->extraCallback()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lo/InvalidPaymentAmount$$Parcelable;->extraCallback(Ljava/lang/Object;)Lo/PayNowBottomSheetResponseJsonAdapter;

    move-result-object p1

    return-object p1
.end method
