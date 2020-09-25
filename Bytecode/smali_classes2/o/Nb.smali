.class public final Lo/Nb;
.super Ljava/lang/Object;

# interfaces
.implements Lo/AutoDebitInstrumentSetupRequestBody_RegistrationDetailJsonAdapter;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/RentOrderResponseJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/RentOrderResponseJsonAdapter<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private onMessageChannelReady:Lo/RentOrderResponseJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/RentOrderResponseJsonAdapter<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lo/getParcel;->updateVisuals()Lo/RentPaymentFragment$paymentFinished$$inlined$executeOnResume$3;

    move-result-object v0

    invoke-static {}, Lo/DataListJsonAdapter;->ICustomTabsCallback()Lo/DataListJsonAdapter;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/RentPaymentFragment$paymentFinished$$inlined$executeOnResume$3;->onPostMessage(Landroid/content/Context;Lo/DataListJsonAdapter;)Lo/SmsConsentRequest;

    move-result-object v0

    sget-object v1, Lo/BankSmsAckRequest;->onMessageChannelReady:Lo/then;

    sget-object v2, Lo/BankSmsAckRequest;->onMessageChannelReady:Lo/then;

    const-string v3, "google.afma.request.getAdDictionary"

    invoke-virtual {v0, v3, v1, v2}, Lo/SmsConsentRequest;->ICustomTabsCallback(Ljava/lang/String;Lo/RentPaymentFragment$paymentFinished$$inlined$executeOnResume$1;Lo/RentPaymentFragment$fetchRentOrderDetails$1$$special$$inlined$let$lambda$1$1;)Lo/RentOrderResponseJsonAdapter;

    move-result-object v0

    iput-object v0, p0, Lo/Nb;->onMessageChannelReady:Lo/RentOrderResponseJsonAdapter;

    invoke-static {}, Lo/getParcel;->updateVisuals()Lo/RentPaymentFragment$paymentFinished$$inlined$executeOnResume$3;

    move-result-object v0

    invoke-static {}, Lo/DataListJsonAdapter;->ICustomTabsCallback()Lo/DataListJsonAdapter;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/RentPaymentFragment$paymentFinished$$inlined$executeOnResume$3;->onPostMessage(Landroid/content/Context;Lo/DataListJsonAdapter;)Lo/SmsConsentRequest;

    move-result-object p1

    sget-object v0, Lo/BankSmsAckRequest;->onMessageChannelReady:Lo/then;

    sget-object v1, Lo/BankSmsAckRequest;->onMessageChannelReady:Lo/then;

    const-string v2, "google.afma.sdkConstants.getSdkConstants"

    invoke-virtual {p1, v2, v0, v1}, Lo/SmsConsentRequest;->ICustomTabsCallback(Ljava/lang/String;Lo/RentPaymentFragment$paymentFinished$$inlined$executeOnResume$1;Lo/RentPaymentFragment$fetchRentOrderDetails$1$$special$$inlined$let$lambda$1$1;)Lo/RentOrderResponseJsonAdapter;

    move-result-object p1

    iput-object p1, p0, Lo/Nb;->ICustomTabsCallback:Lo/RentOrderResponseJsonAdapter;

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()Lo/RentOrderResponseJsonAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/RentOrderResponseJsonAdapter<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo/Nb;->onMessageChannelReady:Lo/RentOrderResponseJsonAdapter;

    return-object v0
.end method

.method public final onNavigationEvent()Lo/RentOrderResponseJsonAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/RentOrderResponseJsonAdapter<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo/Nb;->ICustomTabsCallback:Lo/RentOrderResponseJsonAdapter;

    return-object v0
.end method
