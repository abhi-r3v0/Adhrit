.class final Lo/AmountScreenResponse$ScreenData$Steps;
.super Ljava/lang/Object;

# interfaces
.implements Lo/getExitIntent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getExitIntent<",
        "Lo/LoanOrderResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final ICustomTabsCallback(Lo/LoanStatusResponse$Input;)Lo/EmiScreenResponse_StashDetails_DetailJsonAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lo/BankScreenResponse$ScreenData;->onMessageChannelReady(Lo/LoanStatusResponse$Input;)Lo/BankScreenResponse$ScreenData;

    move-result-object p1

    instance-of v0, p1, Lo/BankScreenResponse$ScreenData;

    if-eqz v0, :cond_0

    check-cast p1, Lo/BankScreenResponse$ScreenData;

    invoke-virtual {p1}, Lo/BankScreenResponse$ScreenData;->ICustomTabsCallback()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/LoanStatusResponse$AadhaarCaptcha;->onNavigationEvent(II)V

    invoke-virtual {p1}, Lo/BankScreenResponse$ScreenData;->onPostMessage()Lo/LoanStatusResponse$Input;

    move-result-object v0

    invoke-virtual {v0}, Lo/LoanStatusResponse$Input;->onNavigationEvent()I

    move-result v0

    invoke-static {v0}, Lo/LoanStatusResponse$AadhaarCaptcha;->extraCallback(I)V

    invoke-virtual {p1}, Lo/BankScreenResponse$ScreenData;->onNavigationEvent()Lo/getProvider_bank_code;

    move-result-object v0

    invoke-static {v0}, Lo/AmountScreenResponse$ScreenData$Steps;->ICustomTabsCallback(Lo/getProvider_bank_code;)V

    new-instance v0, Lo/EmiScreenResponse_StashDetails_DetailJsonAdapter;

    invoke-virtual {p1}, Lo/BankScreenResponse$ScreenData;->onPostMessage()Lo/LoanStatusResponse$Input;

    move-result-object v1

    invoke-virtual {v1}, Lo/LoanStatusResponse$Input;->ICustomTabsCallback()[B

    move-result-object v1

    invoke-virtual {p1}, Lo/BankScreenResponse$ScreenData;->onNavigationEvent()Lo/getProvider_bank_code;

    move-result-object p1

    invoke-virtual {p1}, Lo/getProvider_bank_code;->extraCallback()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lo/EmiScreenResponse_StashDetails_DetailJsonAdapter;-><init>([BI)V

    check-cast v0, Lo/EmiScreenResponse_StashDetails_DetailJsonAdapter;

    return-object v0

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected AesCtrKey proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbbu; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected serialized AesCtrKey proto"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static ICustomTabsCallback(Lo/getProvider_bank_code;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-virtual {p0}, Lo/getProvider_bank_code;->extraCallback()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lo/getProvider_bank_code;->extraCallback()I

    move-result p0

    const/16 v0, 0x10

    if-gt p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid IV size"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/LoanSummary$Details;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    instance-of v0, p1, Lo/BankScreenResponse$ScreenData;

    if-eqz v0, :cond_0

    check-cast p1, Lo/BankScreenResponse$ScreenData;

    invoke-virtual {p1}, Lo/BankScreenResponse$ScreenData;->ICustomTabsCallback()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/LoanStatusResponse$AadhaarCaptcha;->onNavigationEvent(II)V

    invoke-virtual {p1}, Lo/BankScreenResponse$ScreenData;->onPostMessage()Lo/LoanStatusResponse$Input;

    move-result-object v0

    invoke-virtual {v0}, Lo/LoanStatusResponse$Input;->onNavigationEvent()I

    move-result v0

    invoke-static {v0}, Lo/LoanStatusResponse$AadhaarCaptcha;->extraCallback(I)V

    invoke-virtual {p1}, Lo/BankScreenResponse$ScreenData;->onNavigationEvent()Lo/getProvider_bank_code;

    move-result-object v0

    invoke-static {v0}, Lo/AmountScreenResponse$ScreenData$Steps;->ICustomTabsCallback(Lo/getProvider_bank_code;)V

    new-instance v0, Lo/EmiScreenResponse_StashDetails_DetailJsonAdapter;

    invoke-virtual {p1}, Lo/BankScreenResponse$ScreenData;->onPostMessage()Lo/LoanStatusResponse$Input;

    move-result-object v1

    invoke-virtual {v1}, Lo/LoanStatusResponse$Input;->ICustomTabsCallback()[B

    move-result-object v1

    invoke-virtual {p1}, Lo/BankScreenResponse$ScreenData;->onNavigationEvent()Lo/getProvider_bank_code;

    move-result-object p1

    invoke-virtual {p1}, Lo/getProvider_bank_code;->extraCallback()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lo/EmiScreenResponse_StashDetails_DetailJsonAdapter;-><init>([BI)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected AesCtrKey proto"

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
    invoke-static {p1}, Lo/getSupported_banks;->onMessageChannelReady(Lo/LoanStatusResponse$Input;)Lo/getSupported_banks;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/AmountScreenResponse$ScreenData$Steps;->onNavigationEvent(Lo/LoanSummary$Details;)Lo/LoanSummary$Details;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbbu; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected serialized AesCtrKeyFormat proto"

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

    invoke-virtual {p0, p1}, Lo/AmountScreenResponse$ScreenData$Steps;->extraCallback(Lo/LoanStatusResponse$Input;)Lo/LoanSummary$Details;

    move-result-object p1

    check-cast p1, Lo/BankScreenResponse$ScreenData;

    invoke-static {}, Lo/EmiScreenResponse$BottomBanner;->extraCallback()Lo/EmiScreenResponse$BottomBanner$ICustomTabsCallback;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrKey"

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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    instance-of v0, p1, Lo/getSupported_banks;

    if-eqz v0, :cond_0

    check-cast p1, Lo/getSupported_banks;

    invoke-virtual {p1}, Lo/getSupported_banks;->onPostMessage()I

    move-result v0

    invoke-static {v0}, Lo/LoanStatusResponse$AadhaarCaptcha;->extraCallback(I)V

    invoke-virtual {p1}, Lo/getSupported_banks;->extraCallback()Lo/getProvider_bank_code;

    move-result-object v0

    invoke-static {v0}, Lo/AmountScreenResponse$ScreenData$Steps;->ICustomTabsCallback(Lo/getProvider_bank_code;)V

    invoke-static {}, Lo/BankScreenResponse$ScreenData;->extraCallback()Lo/BankScreenResponse$ScreenData$ICustomTabsCallback;

    move-result-object v0

    invoke-virtual {p1}, Lo/getSupported_banks;->extraCallback()Lo/getProvider_bank_code;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/BankScreenResponse$ScreenData$ICustomTabsCallback;->onMessageChannelReady(Lo/getProvider_bank_code;)Lo/BankScreenResponse$ScreenData$ICustomTabsCallback;

    move-result-object v0

    invoke-virtual {p1}, Lo/getSupported_banks;->onPostMessage()I

    move-result p1

    invoke-static {p1}, Lo/LoanManagementResponse;->onPostMessage(I)[B

    move-result-object p1

    invoke-static {p1}, Lo/LoanStatusResponse$Input;->ICustomTabsCallback([B)Lo/LoanStatusResponse$Input;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/BankScreenResponse$ScreenData$ICustomTabsCallback;->onNavigationEvent(Lo/LoanStatusResponse$Input;)Lo/BankScreenResponse$ScreenData$ICustomTabsCallback;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/BankScreenResponse$ScreenData$ICustomTabsCallback;->ICustomTabsCallback(I)Lo/BankScreenResponse$ScreenData$ICustomTabsCallback;

    move-result-object p1

    invoke-virtual {p1}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->onPostMessage()Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    move-result-object p1

    check-cast p1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    return-object p1

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected AesCtrKeyFormat proto"

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

    invoke-direct {p0, p1}, Lo/AmountScreenResponse$ScreenData$Steps;->ICustomTabsCallback(Lo/LoanStatusResponse$Input;)Lo/EmiScreenResponse_StashDetails_DetailJsonAdapter;

    move-result-object p1

    return-object p1
.end method
