.class final Lo/AmountScreenResponseJsonAdapter;
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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lo/EmiScreenResponse_CardDataJsonAdapter;->onPostMessage(Lo/LoanStatusResponse$Input;)Lo/EmiScreenResponse_CardDataJsonAdapter;

    move-result-object p1

    instance-of v0, p1, Lo/EmiScreenResponse_CardDataJsonAdapter;

    if-eqz v0, :cond_0

    check-cast p1, Lo/EmiScreenResponse_CardDataJsonAdapter;

    invoke-virtual {p1}, Lo/EmiScreenResponse_CardDataJsonAdapter;->extraCallback()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/LoanStatusResponse$AadhaarCaptcha;->onNavigationEvent(II)V

    invoke-virtual {p1}, Lo/EmiScreenResponse_CardDataJsonAdapter;->onNavigationEvent()Lo/EmiScreenResponse_CustomJsonAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lo/EmiScreenResponse_CustomJsonAdapter;->extraCallback()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/getMin_limit;->extraCallback(Ljava/lang/String;)Lo/getPrevious_screen;

    move-result-object v1

    invoke-interface {v1, v0}, Lo/getPrevious_screen;->onPostMessage(Ljava/lang/String;)Lo/getNo_of_breaks_in_amount;

    move-result-object v0

    new-instance v1, Lo/AmountScreenResponse_ScreenDataJsonAdapter;

    invoke-virtual {p1}, Lo/EmiScreenResponse_CardDataJsonAdapter;->onNavigationEvent()Lo/EmiScreenResponse_CustomJsonAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lo/EmiScreenResponse_CustomJsonAdapter;->onPostMessage()Lo/EmiScreenResponse$Custom;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lo/AmountScreenResponse_ScreenDataJsonAdapter;-><init>(Lo/EmiScreenResponse$Custom;Lo/getNo_of_breaks_in_amount;)V

    check-cast v1, Lo/getNo_of_breaks_in_amount;

    return-object v1

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected KmsEnvelopeAeadKey proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbbu; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected serialized KmSEnvelopeAeadKey proto"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/LoanSummary$Details;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    instance-of v0, p1, Lo/EmiScreenResponse_CardDataJsonAdapter;

    if-eqz v0, :cond_0

    check-cast p1, Lo/EmiScreenResponse_CardDataJsonAdapter;

    invoke-virtual {p1}, Lo/EmiScreenResponse_CardDataJsonAdapter;->extraCallback()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/LoanStatusResponse$AadhaarCaptcha;->onNavigationEvent(II)V

    invoke-virtual {p1}, Lo/EmiScreenResponse_CardDataJsonAdapter;->onNavigationEvent()Lo/EmiScreenResponse_CustomJsonAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lo/EmiScreenResponse_CustomJsonAdapter;->extraCallback()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/getMin_limit;->extraCallback(Ljava/lang/String;)Lo/getPrevious_screen;

    move-result-object v1

    invoke-interface {v1, v0}, Lo/getPrevious_screen;->onPostMessage(Ljava/lang/String;)Lo/getNo_of_breaks_in_amount;

    move-result-object v0

    new-instance v1, Lo/AmountScreenResponse_ScreenDataJsonAdapter;

    invoke-virtual {p1}, Lo/EmiScreenResponse_CardDataJsonAdapter;->onNavigationEvent()Lo/EmiScreenResponse_CustomJsonAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lo/EmiScreenResponse_CustomJsonAdapter;->onPostMessage()Lo/EmiScreenResponse$Custom;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lo/AmountScreenResponse_ScreenDataJsonAdapter;-><init>(Lo/EmiScreenResponse$Custom;Lo/getNo_of_breaks_in_amount;)V

    return-object v1

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected KmsEnvelopeAeadKey proto"

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
    invoke-static {p1}, Lo/EmiScreenResponse_CustomJsonAdapter;->extraCallback(Lo/LoanStatusResponse$Input;)Lo/EmiScreenResponse_CustomJsonAdapter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/AmountScreenResponseJsonAdapter;->onNavigationEvent(Lo/LoanSummary$Details;)Lo/LoanSummary$Details;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbbu; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected serialized KmsEnvelopeAeadKeyFormat proto"

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

    invoke-virtual {p0, p1}, Lo/AmountScreenResponseJsonAdapter;->extraCallback(Lo/LoanStatusResponse$Input;)Lo/LoanSummary$Details;

    move-result-object p1

    check-cast p1, Lo/EmiScreenResponse_CardDataJsonAdapter;

    invoke-static {}, Lo/EmiScreenResponse$BottomBanner;->extraCallback()Lo/EmiScreenResponse$BottomBanner$ICustomTabsCallback;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    invoke-virtual {v0, v1}, Lo/EmiScreenResponse$BottomBanner$ICustomTabsCallback;->onPostMessage(Ljava/lang/String;)Lo/EmiScreenResponse$BottomBanner$ICustomTabsCallback;

    move-result-object v0

    invoke-virtual {p1}, Lo/LoanStatusResponse$Data;->getInterfaceDescriptor()Lo/LoanStatusResponse$Input;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/EmiScreenResponse$BottomBanner$ICustomTabsCallback;->ICustomTabsCallback(Lo/LoanStatusResponse$Input;)Lo/EmiScreenResponse$BottomBanner$ICustomTabsCallback;

    move-result-object p1

    sget-object v0, Lo/EmiScreenResponse$BottomBanner$extraCallback;->onNavigationEvent:Lo/EmiScreenResponse$BottomBanner$extraCallback;

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

    instance-of v0, p1, Lo/EmiScreenResponse_CustomJsonAdapter;

    if-eqz v0, :cond_0

    check-cast p1, Lo/EmiScreenResponse_CustomJsonAdapter;

    invoke-static {}, Lo/EmiScreenResponse_CardDataJsonAdapter;->onPostMessage()Lo/EmiScreenResponse_CardDataJsonAdapter$extraCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/EmiScreenResponse_CardDataJsonAdapter$extraCallback;->onMessageChannelReady(Lo/EmiScreenResponse_CustomJsonAdapter;)Lo/EmiScreenResponse_CardDataJsonAdapter$extraCallback;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/EmiScreenResponse_CardDataJsonAdapter$extraCallback;->extraCallback(I)Lo/EmiScreenResponse_CardDataJsonAdapter$extraCallback;

    move-result-object p1

    invoke-virtual {p1}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->onPostMessage()Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    move-result-object p1

    check-cast p1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    return-object p1

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected KmsEnvelopeAeadKeyFormat proto"

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

    invoke-direct {p0, p1}, Lo/AmountScreenResponseJsonAdapter;->onNavigationEvent(Lo/LoanStatusResponse$Input;)Lo/getNo_of_breaks_in_amount;

    move-result-object p1

    return-object p1
.end method
