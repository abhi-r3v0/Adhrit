.class final Lo/AmountScreenResponse_ScreenData_InterestInfoJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lo/getExitIntent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getExitIntent<",
        "Lo/getInterest_rate;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final ICustomTabsCallback(Lo/LoanStatusResponse$Input;)Lo/getInterest_rate;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lo/DisbursementDetailJsonAdapter;->onNavigationEvent(Lo/LoanStatusResponse$Input;)Lo/DisbursementDetailJsonAdapter;

    move-result-object p1

    instance-of v0, p1, Lo/DisbursementDetailJsonAdapter;

    if-eqz v0, :cond_0

    check-cast p1, Lo/DisbursementDetailJsonAdapter;

    invoke-virtual {p1}, Lo/DisbursementDetailJsonAdapter;->onPostMessage()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/LoanStatusResponse$AadhaarCaptcha;->onNavigationEvent(II)V

    invoke-virtual {p1}, Lo/DisbursementDetailJsonAdapter;->onMessageChannelReady()Lo/Detail;

    move-result-object v0

    invoke-static {v0}, Lo/BankScreenResponse$$Parcelable;->onMessageChannelReady(Lo/Detail;)V

    invoke-virtual {p1}, Lo/DisbursementDetailJsonAdapter;->onMessageChannelReady()Lo/Detail;

    move-result-object v0

    invoke-virtual {v0}, Lo/Detail;->extraCallback()Lo/Details;

    move-result-object v1

    invoke-virtual {v1}, Lo/Details;->ICustomTabsCallback()Lo/DraftDataJsonAdapter;

    move-result-object v2

    invoke-static {v2}, Lo/BankScreenResponse$$Parcelable;->ICustomTabsCallback(Lo/DraftDataJsonAdapter;)Lo/getConfirmationDetails;

    move-result-object v2

    invoke-virtual {p1}, Lo/DisbursementDetailJsonAdapter;->extraCallback()Lo/LoanStatusResponse$Input;

    move-result-object v3

    invoke-virtual {v3}, Lo/LoanStatusResponse$Input;->ICustomTabsCallback()[B

    move-result-object v3

    invoke-virtual {p1}, Lo/DisbursementDetailJsonAdapter;->ICustomTabsCallback()Lo/LoanStatusResponse$Input;

    move-result-object p1

    invoke-virtual {p1}, Lo/LoanStatusResponse$Input;->ICustomTabsCallback()[B

    move-result-object p1

    invoke-static {v2, v3, p1}, Lo/LendingAutoDebitResponse;->extraCallback(Lo/getConfirmationDetails;[B[B)Ljava/security/interfaces/ECPublicKey;

    move-result-object v5

    new-instance v9, Lo/BankScreenResponse$ExistingAccount;

    invoke-virtual {v0}, Lo/Detail;->ICustomTabsCallback()Lo/ConfirmDetails;

    move-result-object p1

    invoke-virtual {p1}, Lo/ConfirmDetails;->ICustomTabsCallback()Lo/EmiScreenResponse$Custom;

    move-result-object p1

    invoke-direct {v9, p1}, Lo/BankScreenResponse$ExistingAccount;-><init>(Lo/EmiScreenResponse$Custom;)V

    new-instance p1, Lo/ImageCustomJsonAdapter;

    invoke-virtual {v1}, Lo/Details;->onPostMessage()Lo/LoanStatusResponse$Input;

    move-result-object v2

    invoke-virtual {v2}, Lo/LoanStatusResponse$Input;->ICustomTabsCallback()[B

    move-result-object v6

    invoke-virtual {v1}, Lo/Details;->onNavigationEvent()Lo/EmiCard;

    move-result-object v1

    invoke-static {v1}, Lo/BankScreenResponse$$Parcelable;->onMessageChannelReady(Lo/EmiCard;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lo/Detail;->onPostMessage()Lo/CommonPitchItemJsonAdapter;

    move-result-object v0

    invoke-static {v0}, Lo/BankScreenResponse$$Parcelable;->ICustomTabsCallback(Lo/CommonPitchItemJsonAdapter;)Lo/LendingTriggerResponse;

    move-result-object v8

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lo/ImageCustomJsonAdapter;-><init>(Ljava/security/interfaces/ECPublicKey;[BLjava/lang/String;Lo/LendingTriggerResponse;Lo/ExitIntentJsonAdapter;)V

    check-cast p1, Lo/getInterest_rate;

    return-object p1

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected EciesAeadHkdfPublicKey proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbbu; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected serialized EciesAeadHkdfPublicKey proto"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/LoanSummary$Details;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    instance-of v0, p1, Lo/DisbursementDetailJsonAdapter;

    if-eqz v0, :cond_0

    check-cast p1, Lo/DisbursementDetailJsonAdapter;

    invoke-virtual {p1}, Lo/DisbursementDetailJsonAdapter;->onPostMessage()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/LoanStatusResponse$AadhaarCaptcha;->onNavigationEvent(II)V

    invoke-virtual {p1}, Lo/DisbursementDetailJsonAdapter;->onMessageChannelReady()Lo/Detail;

    move-result-object v0

    invoke-static {v0}, Lo/BankScreenResponse$$Parcelable;->onMessageChannelReady(Lo/Detail;)V

    invoke-virtual {p1}, Lo/DisbursementDetailJsonAdapter;->onMessageChannelReady()Lo/Detail;

    move-result-object v0

    invoke-virtual {v0}, Lo/Detail;->extraCallback()Lo/Details;

    move-result-object v1

    invoke-virtual {v1}, Lo/Details;->ICustomTabsCallback()Lo/DraftDataJsonAdapter;

    move-result-object v2

    invoke-static {v2}, Lo/BankScreenResponse$$Parcelable;->ICustomTabsCallback(Lo/DraftDataJsonAdapter;)Lo/getConfirmationDetails;

    move-result-object v2

    invoke-virtual {p1}, Lo/DisbursementDetailJsonAdapter;->extraCallback()Lo/LoanStatusResponse$Input;

    move-result-object v3

    invoke-virtual {v3}, Lo/LoanStatusResponse$Input;->ICustomTabsCallback()[B

    move-result-object v3

    invoke-virtual {p1}, Lo/DisbursementDetailJsonAdapter;->ICustomTabsCallback()Lo/LoanStatusResponse$Input;

    move-result-object p1

    invoke-virtual {p1}, Lo/LoanStatusResponse$Input;->ICustomTabsCallback()[B

    move-result-object p1

    invoke-static {v2, v3, p1}, Lo/LendingAutoDebitResponse;->extraCallback(Lo/getConfirmationDetails;[B[B)Ljava/security/interfaces/ECPublicKey;

    move-result-object v5

    new-instance v9, Lo/BankScreenResponse$ExistingAccount;

    invoke-virtual {v0}, Lo/Detail;->ICustomTabsCallback()Lo/ConfirmDetails;

    move-result-object p1

    invoke-virtual {p1}, Lo/ConfirmDetails;->ICustomTabsCallback()Lo/EmiScreenResponse$Custom;

    move-result-object p1

    invoke-direct {v9, p1}, Lo/BankScreenResponse$ExistingAccount;-><init>(Lo/EmiScreenResponse$Custom;)V

    new-instance p1, Lo/ImageCustomJsonAdapter;

    invoke-virtual {v1}, Lo/Details;->onPostMessage()Lo/LoanStatusResponse$Input;

    move-result-object v2

    invoke-virtual {v2}, Lo/LoanStatusResponse$Input;->ICustomTabsCallback()[B

    move-result-object v6

    invoke-virtual {v1}, Lo/Details;->onNavigationEvent()Lo/EmiCard;

    move-result-object v1

    invoke-static {v1}, Lo/BankScreenResponse$$Parcelable;->onMessageChannelReady(Lo/EmiCard;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lo/Detail;->onPostMessage()Lo/CommonPitchItemJsonAdapter;

    move-result-object v0

    invoke-static {v0}, Lo/BankScreenResponse$$Parcelable;->ICustomTabsCallback(Lo/CommonPitchItemJsonAdapter;)Lo/LendingTriggerResponse;

    move-result-object v8

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lo/ImageCustomJsonAdapter;-><init>(Ljava/security/interfaces/ECPublicKey;[BLjava/lang/String;Lo/LendingTriggerResponse;Lo/ExitIntentJsonAdapter;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected EciesAeadHkdfPublicKey proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final extraCallback(Lo/LoanStatusResponse$Input;)Lo/LoanSummary$Details;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Not implemented."

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onMessageChannelReady(Lo/LoanStatusResponse$Input;)Lo/EmiScreenResponse$BottomBanner;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Not implemented."

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onNavigationEvent(Lo/LoanSummary$Details;)Lo/LoanSummary$Details;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Not implemented."

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onPostMessage()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic onPostMessage(Lo/LoanStatusResponse$Input;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lo/AmountScreenResponse_ScreenData_InterestInfoJsonAdapter;->ICustomTabsCallback(Lo/LoanStatusResponse$Input;)Lo/getInterest_rate;

    move-result-object p1

    return-object p1
.end method
