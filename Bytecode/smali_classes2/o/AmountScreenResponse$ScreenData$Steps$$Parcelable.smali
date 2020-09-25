.class final Lo/AmountScreenResponse$ScreenData$Steps$$Parcelable;
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

.method private static extraCallback(Lo/LoanSummary$Details;)Lo/getNo_of_breaks_in_amount;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    instance-of v0, p0, Lo/EmiScreenResponse$StashDetails$EmiDetails;

    if-eqz v0, :cond_0

    check-cast p0, Lo/EmiScreenResponse$StashDetails$EmiDetails;

    invoke-virtual {p0}, Lo/EmiScreenResponse$StashDetails$EmiDetails;->onPostMessage()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/LoanStatusResponse$AadhaarCaptcha;->onNavigationEvent(II)V

    invoke-virtual {p0}, Lo/EmiScreenResponse$StashDetails$EmiDetails;->extraCallback()Lo/EmiScreenResponseJsonAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lo/EmiScreenResponseJsonAdapter;->extraCallback()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo/getMin_limit;->extraCallback(Ljava/lang/String;)Lo/getPrevious_screen;

    move-result-object v0

    invoke-interface {v0, p0}, Lo/getPrevious_screen;->onPostMessage(Ljava/lang/String;)Lo/getNo_of_breaks_in_amount;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "expected KmsAeadKey proto"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static onNavigationEvent(Lo/LoanStatusResponse$Input;)Lo/getNo_of_breaks_in_amount;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lo/EmiScreenResponse$StashDetails$EmiDetails;->onPostMessage(Lo/LoanStatusResponse$Input;)Lo/EmiScreenResponse$StashDetails$EmiDetails;

    move-result-object p0

    invoke-static {p0}, Lo/AmountScreenResponse$ScreenData$Steps$$Parcelable;->extraCallback(Lo/LoanSummary$Details;)Lo/getNo_of_breaks_in_amount;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbbu; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected KmsAeadKey proto"

    invoke-direct {v0, v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/LoanSummary$Details;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-static {p1}, Lo/AmountScreenResponse$ScreenData$Steps$$Parcelable;->extraCallback(Lo/LoanSummary$Details;)Lo/getNo_of_breaks_in_amount;

    move-result-object p1

    return-object p1
.end method

.method public final extraCallback(Lo/LoanStatusResponse$Input;)Lo/LoanSummary$Details;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lo/EmiScreenResponseJsonAdapter;->onNavigationEvent(Lo/LoanStatusResponse$Input;)Lo/EmiScreenResponseJsonAdapter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/AmountScreenResponse$ScreenData$Steps$$Parcelable;->onNavigationEvent(Lo/LoanSummary$Details;)Lo/LoanSummary$Details;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbbu; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected serialized KmsAeadKeyFormat proto"

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

    invoke-virtual {p0, p1}, Lo/AmountScreenResponse$ScreenData$Steps$$Parcelable;->extraCallback(Lo/LoanStatusResponse$Input;)Lo/LoanSummary$Details;

    move-result-object p1

    check-cast p1, Lo/EmiScreenResponse$StashDetails$EmiDetails;

    invoke-static {}, Lo/EmiScreenResponse$BottomBanner;->extraCallback()Lo/EmiScreenResponse$BottomBanner$ICustomTabsCallback;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.KmsAeadKey"

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

    instance-of v0, p1, Lo/EmiScreenResponseJsonAdapter;

    if-eqz v0, :cond_0

    check-cast p1, Lo/EmiScreenResponseJsonAdapter;

    invoke-static {}, Lo/EmiScreenResponse$StashDetails$EmiDetails;->onNavigationEvent()Lo/EmiScreenResponse$StashDetails$EmiDetails$onMessageChannelReady;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/EmiScreenResponse$StashDetails$EmiDetails$onMessageChannelReady;->ICustomTabsCallback(Lo/EmiScreenResponseJsonAdapter;)Lo/EmiScreenResponse$StashDetails$EmiDetails$onMessageChannelReady;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/EmiScreenResponse$StashDetails$EmiDetails$onMessageChannelReady;->extraCallback(I)Lo/EmiScreenResponse$StashDetails$EmiDetails$onMessageChannelReady;

    move-result-object p1

    invoke-virtual {p1}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->onPostMessage()Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    move-result-object p1

    check-cast p1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    return-object p1

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected KmsAeadKeyFormat proto"

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

    invoke-static {p1}, Lo/AmountScreenResponse$ScreenData$Steps$$Parcelable;->onNavigationEvent(Lo/LoanStatusResponse$Input;)Lo/getNo_of_breaks_in_amount;

    move-result-object p1

    return-object p1
.end method
