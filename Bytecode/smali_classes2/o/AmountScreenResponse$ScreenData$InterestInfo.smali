.class final Lo/AmountScreenResponse$ScreenData$InterestInfo;
.super Ljava/lang/Object;

# interfaces
.implements Lo/getExitIntent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getExitIntent<",
        "Lo/getNo_of_breaks_in_amount;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final onNavigationEvent(Lo/LoanStatusResponse$Input;)Lo/getNo_of_breaks_in_amount;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "expected AesGcmKey proto"

    :try_start_0
    invoke-static {p1}, Lo/CommonPitchItem;->ICustomTabsCallback(Lo/LoanStatusResponse$Input;)Lo/CommonPitchItem;

    move-result-object p1

    instance-of v1, p1, Lo/CommonPitchItem;

    if-eqz v1, :cond_0

    check-cast p1, Lo/CommonPitchItem;

    invoke-virtual {p1}, Lo/CommonPitchItem;->onNavigationEvent()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lo/LoanStatusResponse$AadhaarCaptcha;->onNavigationEvent(II)V

    invoke-virtual {p1}, Lo/CommonPitchItem;->onPostMessage()Lo/LoanStatusResponse$Input;

    move-result-object v1

    invoke-virtual {v1}, Lo/LoanStatusResponse$Input;->onNavigationEvent()I

    move-result v1

    invoke-static {v1}, Lo/LoanStatusResponse$AadhaarCaptcha;->extraCallback(I)V

    new-instance v1, Lo/EmiScreenResponse_StashDetailsJsonAdapter;

    invoke-virtual {p1}, Lo/CommonPitchItem;->onPostMessage()Lo/LoanStatusResponse$Input;

    move-result-object p1

    invoke-virtual {p1}, Lo/LoanStatusResponse$Input;->ICustomTabsCallback()[B

    move-result-object p1

    invoke-direct {v1, p1}, Lo/EmiScreenResponse_StashDetailsJsonAdapter;-><init>([B)V

    check-cast v1, Lo/getNo_of_breaks_in_amount;

    return-object v1

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbbu; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/LoanSummary$Details;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    instance-of v0, p1, Lo/CommonPitchItem;

    if-eqz v0, :cond_0

    check-cast p1, Lo/CommonPitchItem;

    invoke-virtual {p1}, Lo/CommonPitchItem;->onNavigationEvent()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/LoanStatusResponse$AadhaarCaptcha;->onNavigationEvent(II)V

    invoke-virtual {p1}, Lo/CommonPitchItem;->onPostMessage()Lo/LoanStatusResponse$Input;

    move-result-object v0

    invoke-virtual {v0}, Lo/LoanStatusResponse$Input;->onNavigationEvent()I

    move-result v0

    invoke-static {v0}, Lo/LoanStatusResponse$AadhaarCaptcha;->extraCallback(I)V

    new-instance v0, Lo/EmiScreenResponse_StashDetailsJsonAdapter;

    invoke-virtual {p1}, Lo/CommonPitchItem;->onPostMessage()Lo/LoanStatusResponse$Input;

    move-result-object p1

    invoke-virtual {p1}, Lo/LoanStatusResponse$Input;->ICustomTabsCallback()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lo/EmiScreenResponse_StashDetailsJsonAdapter;-><init>([B)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected AesGcmKey proto"

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
    invoke-static {p1}, Lo/BankScreenResponse_ExistingAccountJsonAdapter;->onMessageChannelReady(Lo/LoanStatusResponse$Input;)Lo/BankScreenResponse_ExistingAccountJsonAdapter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/AmountScreenResponse$ScreenData$InterestInfo;->onNavigationEvent(Lo/LoanSummary$Details;)Lo/LoanSummary$Details;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbbu; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected serialized AesGcmKeyFormat proto"

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

    invoke-virtual {p0, p1}, Lo/AmountScreenResponse$ScreenData$InterestInfo;->extraCallback(Lo/LoanStatusResponse$Input;)Lo/LoanSummary$Details;

    move-result-object p1

    check-cast p1, Lo/CommonPitchItem;

    invoke-static {}, Lo/EmiScreenResponse$BottomBanner;->extraCallback()Lo/EmiScreenResponse$BottomBanner$ICustomTabsCallback;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    invoke-virtual {v0, v1}, Lo/EmiScreenResponse$BottomBanner$ICustomTabsCallback;->onPostMessage(Ljava/lang/String;)Lo/EmiScreenResponse$BottomBanner$ICustomTabsCallback;

    move-result-object v0

    invoke-virtual {p1}, Lo/LoanStatusResponse$Data;->getInterfaceDescriptor()Lo/LoanStatusResponse$Input;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/EmiScreenResponse$BottomBanner$ICustomTabsCallback;->ICustomTabsCallback(Lo/LoanStatusResponse$Input;)Lo/EmiScreenResponse$BottomBanner$ICustomTabsCallback;

    move-result-object p1

    sget-object v0, Lo/EmiScreenResponse$BottomBanner$extraCallback;->ICustomTabsCallback:Lo/EmiScreenResponse$BottomBanner$extraCallback;

    invoke-virtual {p1, v0}, Lo/EmiScreenResponse$BottomBanner$ICustomTabsCallback;->extraCallback(Lo/EmiScreenResponse$BottomBanner$extraCallback;)Lo/EmiScreenResponse$BottomBanner$ICustomTabsCallback;

    move-result-object p1

    invoke-virtual {p1}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->onPostMessage()Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    move-result-object p1

    check-cast p1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast p1, Lo/EmiScreenResponse$BottomBanner;

    return-object p1
.end method

.method public final onNavigationEvent(Lo/LoanSummary$Details;)Lo/LoanSummary$Details;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    instance-of v0, p1, Lo/BankScreenResponse_ExistingAccountJsonAdapter;

    if-eqz v0, :cond_0

    check-cast p1, Lo/BankScreenResponse_ExistingAccountJsonAdapter;

    invoke-virtual {p1}, Lo/BankScreenResponse_ExistingAccountJsonAdapter;->extraCallback()I

    move-result v0

    invoke-static {v0}, Lo/LoanStatusResponse$AadhaarCaptcha;->extraCallback(I)V

    invoke-static {}, Lo/CommonPitchItem;->extraCallback()Lo/CommonPitchItem$onPostMessage;

    move-result-object v0

    invoke-virtual {p1}, Lo/BankScreenResponse_ExistingAccountJsonAdapter;->extraCallback()I

    move-result p1

    invoke-static {p1}, Lo/LoanManagementResponse;->onPostMessage(I)[B

    move-result-object p1

    invoke-static {p1}, Lo/LoanStatusResponse$Input;->ICustomTabsCallback([B)Lo/LoanStatusResponse$Input;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/CommonPitchItem$onPostMessage;->extraCallback(Lo/LoanStatusResponse$Input;)Lo/CommonPitchItem$onPostMessage;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/CommonPitchItem$onPostMessage;->onPostMessage(I)Lo/CommonPitchItem$onPostMessage;

    move-result-object p1

    invoke-virtual {p1}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->onPostMessage()Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    move-result-object p1

    check-cast p1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    return-object p1

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected AesGcmKeyFormat proto"

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

    invoke-direct {p0, p1}, Lo/AmountScreenResponse$ScreenData$InterestInfo;->onNavigationEvent(Lo/LoanStatusResponse$Input;)Lo/getNo_of_breaks_in_amount;

    move-result-object p1

    return-object p1
.end method
