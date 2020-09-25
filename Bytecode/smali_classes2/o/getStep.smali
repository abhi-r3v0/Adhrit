.class final Lo/getStep;
.super Ljava/lang/Object;

# interfaces
.implements Lo/getExitIntent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getExitIntent<",
        "Lo/getLoc_instrument_id;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final ICustomTabsCallback(Lo/LoanStatusResponse$Input;)Lo/getLoc_instrument_id;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lo/CustomJsonAdapter;->ICustomTabsCallback(Lo/LoanStatusResponse$Input;)Lo/CustomJsonAdapter;

    move-result-object p1

    instance-of v0, p1, Lo/CustomJsonAdapter;

    if-eqz v0, :cond_0

    check-cast p1, Lo/CustomJsonAdapter;

    invoke-virtual {p1}, Lo/CustomJsonAdapter;->onNavigationEvent()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/LoanStatusResponse$AadhaarCaptcha;->onNavigationEvent(II)V

    invoke-virtual {p1}, Lo/CustomJsonAdapter;->ICustomTabsCallback()Lo/DisbursementDetailJsonAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lo/DisbursementDetailJsonAdapter;->onMessageChannelReady()Lo/Detail;

    move-result-object v0

    invoke-static {v0}, Lo/BankScreenResponse$$Parcelable;->onMessageChannelReady(Lo/Detail;)V

    invoke-virtual {p1}, Lo/CustomJsonAdapter;->ICustomTabsCallback()Lo/DisbursementDetailJsonAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lo/DisbursementDetailJsonAdapter;->onMessageChannelReady()Lo/Detail;

    move-result-object v0

    invoke-virtual {v0}, Lo/Detail;->extraCallback()Lo/Details;

    move-result-object v1

    invoke-virtual {v1}, Lo/Details;->ICustomTabsCallback()Lo/DraftDataJsonAdapter;

    move-result-object v2

    invoke-static {v2}, Lo/BankScreenResponse$$Parcelable;->ICustomTabsCallback(Lo/DraftDataJsonAdapter;)Lo/getConfirmationDetails;

    move-result-object v2

    invoke-virtual {p1}, Lo/CustomJsonAdapter;->extraCallback()Lo/LoanStatusResponse$Input;

    move-result-object p1

    invoke-virtual {p1}, Lo/LoanStatusResponse$Input;->ICustomTabsCallback()[B

    move-result-object p1

    invoke-static {v2}, Lo/LendingAutoDebitResponse;->extraCallback(Lo/getConfirmationDetails;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance p1, Ljava/security/spec/ECPrivateKeySpec;

    invoke-direct {p1, v3, v2}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    sget-object v2, Lo/LineManagementResponse;->onNavigationEvent:Lo/LineManagementResponse;

    const-string v3, "EC"

    invoke-virtual {v2, v3}, Lo/LineManagementResponse;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/KeyFactory;

    invoke-virtual {v2, p1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/security/interfaces/ECPrivateKey;

    new-instance v7, Lo/BankScreenResponse$ExistingAccount;

    invoke-virtual {v0}, Lo/Detail;->ICustomTabsCallback()Lo/ConfirmDetails;

    move-result-object p1

    invoke-virtual {p1}, Lo/ConfirmDetails;->ICustomTabsCallback()Lo/EmiScreenResponse$Custom;

    move-result-object p1

    invoke-direct {v7, p1}, Lo/BankScreenResponse$ExistingAccount;-><init>(Lo/EmiScreenResponse$Custom;)V

    new-instance p1, Lo/ExitIntent;

    invoke-virtual {v1}, Lo/Details;->onPostMessage()Lo/LoanStatusResponse$Input;

    move-result-object v2

    invoke-virtual {v2}, Lo/LoanStatusResponse$Input;->ICustomTabsCallback()[B

    move-result-object v4

    invoke-virtual {v1}, Lo/Details;->onNavigationEvent()Lo/EmiCard;

    move-result-object v1

    invoke-static {v1}, Lo/BankScreenResponse$$Parcelable;->onMessageChannelReady(Lo/EmiCard;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lo/Detail;->onPostMessage()Lo/CommonPitchItemJsonAdapter;

    move-result-object v0

    invoke-static {v0}, Lo/BankScreenResponse$$Parcelable;->ICustomTabsCallback(Lo/CommonPitchItemJsonAdapter;)Lo/LendingTriggerResponse;

    move-result-object v6

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lo/ExitIntent;-><init>(Ljava/security/interfaces/ECPrivateKey;[BLjava/lang/String;Lo/LendingTriggerResponse;Lo/ExitIntentJsonAdapter;)V

    check-cast p1, Lo/getLoc_instrument_id;

    return-object p1

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected EciesAeadHkdfPrivateKey proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbbu; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected serialized EciesAeadHkdfPrivateKey proto"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/LoanSummary$Details;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    instance-of v0, p1, Lo/CustomJsonAdapter;

    if-eqz v0, :cond_0

    check-cast p1, Lo/CustomJsonAdapter;

    invoke-virtual {p1}, Lo/CustomJsonAdapter;->onNavigationEvent()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/LoanStatusResponse$AadhaarCaptcha;->onNavigationEvent(II)V

    invoke-virtual {p1}, Lo/CustomJsonAdapter;->ICustomTabsCallback()Lo/DisbursementDetailJsonAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lo/DisbursementDetailJsonAdapter;->onMessageChannelReady()Lo/Detail;

    move-result-object v0

    invoke-static {v0}, Lo/BankScreenResponse$$Parcelable;->onMessageChannelReady(Lo/Detail;)V

    invoke-virtual {p1}, Lo/CustomJsonAdapter;->ICustomTabsCallback()Lo/DisbursementDetailJsonAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lo/DisbursementDetailJsonAdapter;->onMessageChannelReady()Lo/Detail;

    move-result-object v0

    invoke-virtual {v0}, Lo/Detail;->extraCallback()Lo/Details;

    move-result-object v1

    invoke-virtual {v1}, Lo/Details;->ICustomTabsCallback()Lo/DraftDataJsonAdapter;

    move-result-object v2

    invoke-static {v2}, Lo/BankScreenResponse$$Parcelable;->ICustomTabsCallback(Lo/DraftDataJsonAdapter;)Lo/getConfirmationDetails;

    move-result-object v2

    invoke-virtual {p1}, Lo/CustomJsonAdapter;->extraCallback()Lo/LoanStatusResponse$Input;

    move-result-object p1

    invoke-virtual {p1}, Lo/LoanStatusResponse$Input;->ICustomTabsCallback()[B

    move-result-object p1

    invoke-static {v2}, Lo/LendingAutoDebitResponse;->extraCallback(Lo/getConfirmationDetails;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance p1, Ljava/security/spec/ECPrivateKeySpec;

    invoke-direct {p1, v3, v2}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    sget-object v2, Lo/LineManagementResponse;->onNavigationEvent:Lo/LineManagementResponse;

    const-string v3, "EC"

    invoke-virtual {v2, v3}, Lo/LineManagementResponse;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/KeyFactory;

    invoke-virtual {v2, p1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/security/interfaces/ECPrivateKey;

    new-instance v7, Lo/BankScreenResponse$ExistingAccount;

    invoke-virtual {v0}, Lo/Detail;->ICustomTabsCallback()Lo/ConfirmDetails;

    move-result-object p1

    invoke-virtual {p1}, Lo/ConfirmDetails;->ICustomTabsCallback()Lo/EmiScreenResponse$Custom;

    move-result-object p1

    invoke-direct {v7, p1}, Lo/BankScreenResponse$ExistingAccount;-><init>(Lo/EmiScreenResponse$Custom;)V

    new-instance p1, Lo/ExitIntent;

    invoke-virtual {v1}, Lo/Details;->onPostMessage()Lo/LoanStatusResponse$Input;

    move-result-object v2

    invoke-virtual {v2}, Lo/LoanStatusResponse$Input;->ICustomTabsCallback()[B

    move-result-object v4

    invoke-virtual {v1}, Lo/Details;->onNavigationEvent()Lo/EmiCard;

    move-result-object v1

    invoke-static {v1}, Lo/BankScreenResponse$$Parcelable;->onMessageChannelReady(Lo/EmiCard;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lo/Detail;->onPostMessage()Lo/CommonPitchItemJsonAdapter;

    move-result-object v0

    invoke-static {v0}, Lo/BankScreenResponse$$Parcelable;->ICustomTabsCallback(Lo/CommonPitchItemJsonAdapter;)Lo/LendingTriggerResponse;

    move-result-object v6

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lo/ExitIntent;-><init>(Ljava/security/interfaces/ECPrivateKey;[BLjava/lang/String;Lo/LendingTriggerResponse;Lo/ExitIntentJsonAdapter;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected EciesAeadHkdfPrivateKey proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final extraCallback(Lo/LoanStatusResponse$Input;)Lo/LoanSummary$Details;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lo/Custom;->onNavigationEvent(Lo/LoanStatusResponse$Input;)Lo/Custom;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/getStep;->onNavigationEvent(Lo/LoanSummary$Details;)Lo/LoanSummary$Details;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbbu; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "invalid EciesAeadHkdf key format"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final onMessageChannelReady(Lo/LoanStatusResponse$Input;)Lo/EmiScreenResponse$BottomBanner;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lo/getStep;->extraCallback(Lo/LoanStatusResponse$Input;)Lo/LoanSummary$Details;

    move-result-object p1

    check-cast p1, Lo/CustomJsonAdapter;

    invoke-static {}, Lo/EmiScreenResponse$BottomBanner;->extraCallback()Lo/EmiScreenResponse$BottomBanner$ICustomTabsCallback;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey"

    invoke-virtual {v0, v1}, Lo/EmiScreenResponse$BottomBanner$ICustomTabsCallback;->onPostMessage(Ljava/lang/String;)Lo/EmiScreenResponse$BottomBanner$ICustomTabsCallback;

    move-result-object v0

    invoke-virtual {p1}, Lo/LoanStatusResponse$Data;->getInterfaceDescriptor()Lo/LoanStatusResponse$Input;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/EmiScreenResponse$BottomBanner$ICustomTabsCallback;->ICustomTabsCallback(Lo/LoanStatusResponse$Input;)Lo/EmiScreenResponse$BottomBanner$ICustomTabsCallback;

    move-result-object p1

    sget-object v0, Lo/EmiScreenResponse$BottomBanner$extraCallback;->onMessageChannelReady:Lo/EmiScreenResponse$BottomBanner$extraCallback;

    invoke-virtual {p1, v0}, Lo/EmiScreenResponse$BottomBanner$ICustomTabsCallback;->extraCallback(Lo/EmiScreenResponse$BottomBanner$extraCallback;)Lo/EmiScreenResponse$BottomBanner$ICustomTabsCallback;

    move-result-object p1

    invoke-virtual {p1}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->onPostMessage()Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    move-result-object p1

    check-cast p1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast p1, Lo/EmiScreenResponse$BottomBanner;

    return-object p1
.end method

.method public final onNavigationEvent(Lo/LoanSummary$Details;)Lo/LoanSummary$Details;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    instance-of v0, p1, Lo/Custom;

    if-eqz v0, :cond_0

    check-cast p1, Lo/Custom;

    invoke-virtual {p1}, Lo/Custom;->onPostMessage()Lo/Detail;

    move-result-object v0

    invoke-static {v0}, Lo/BankScreenResponse$$Parcelable;->onMessageChannelReady(Lo/Detail;)V

    invoke-virtual {p1}, Lo/Custom;->onPostMessage()Lo/Detail;

    move-result-object v0

    invoke-virtual {v0}, Lo/Detail;->extraCallback()Lo/Details;

    move-result-object v0

    invoke-virtual {v0}, Lo/Details;->ICustomTabsCallback()Lo/DraftDataJsonAdapter;

    move-result-object v0

    invoke-static {v0}, Lo/BankScreenResponse$$Parcelable;->ICustomTabsCallback(Lo/DraftDataJsonAdapter;)Lo/getConfirmationDetails;

    move-result-object v0

    invoke-static {v0}, Lo/LendingAutoDebitResponse;->extraCallback(Lo/getConfirmationDetails;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {v0}, Lo/LendingAutoDebitResponse;->onPostMessage(Ljava/security/spec/ECParameterSpec;)Ljava/security/KeyPair;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPublicKey;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {}, Lo/DisbursementDetailJsonAdapter;->onNavigationEvent()Lo/DisbursementDetailJsonAdapter$ICustomTabsCallback;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lo/DisbursementDetailJsonAdapter$ICustomTabsCallback;->onMessageChannelReady(I)Lo/DisbursementDetailJsonAdapter$ICustomTabsCallback;

    move-result-object v2

    invoke-virtual {p1}, Lo/Custom;->onPostMessage()Lo/Detail;

    move-result-object p1

    invoke-virtual {v2, p1}, Lo/DisbursementDetailJsonAdapter$ICustomTabsCallback;->onNavigationEvent(Lo/Detail;)Lo/DisbursementDetailJsonAdapter$ICustomTabsCallback;

    move-result-object p1

    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lo/LoanStatusResponse$Input;->ICustomTabsCallback([B)Lo/LoanStatusResponse$Input;

    move-result-object v2

    invoke-virtual {p1, v2}, Lo/DisbursementDetailJsonAdapter$ICustomTabsCallback;->onNavigationEvent(Lo/LoanStatusResponse$Input;)Lo/DisbursementDetailJsonAdapter$ICustomTabsCallback;

    move-result-object p1

    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lo/LoanStatusResponse$Input;->ICustomTabsCallback([B)Lo/LoanStatusResponse$Input;

    move-result-object v1

    invoke-virtual {p1, v1}, Lo/DisbursementDetailJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback(Lo/LoanStatusResponse$Input;)Lo/DisbursementDetailJsonAdapter$ICustomTabsCallback;

    move-result-object p1

    invoke-virtual {p1}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->onPostMessage()Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    move-result-object p1

    check-cast p1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast p1, Lo/DisbursementDetailJsonAdapter;

    invoke-static {}, Lo/CustomJsonAdapter;->onMessageChannelReady()Lo/CustomJsonAdapter$onNavigationEvent;

    move-result-object v1

    invoke-virtual {v1, v3}, Lo/CustomJsonAdapter$onNavigationEvent;->extraCallback(I)Lo/CustomJsonAdapter$onNavigationEvent;

    move-result-object v1

    invoke-virtual {v1, p1}, Lo/CustomJsonAdapter$onNavigationEvent;->extraCallback(Lo/DisbursementDetailJsonAdapter;)Lo/CustomJsonAdapter$onNavigationEvent;

    move-result-object p1

    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lo/LoanStatusResponse$Input;->ICustomTabsCallback([B)Lo/LoanStatusResponse$Input;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/CustomJsonAdapter$onNavigationEvent;->ICustomTabsCallback(Lo/LoanStatusResponse$Input;)Lo/CustomJsonAdapter$onNavigationEvent;

    move-result-object p1

    invoke-virtual {p1}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->onPostMessage()Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    move-result-object p1

    check-cast p1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    return-object p1

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected EciesAeadHkdfKeyFormat proto"

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

    invoke-direct {p0, p1}, Lo/getStep;->ICustomTabsCallback(Lo/LoanStatusResponse$Input;)Lo/getLoc_instrument_id;

    move-result-object p1

    return-object p1
.end method
