.class Lo/AmountScreenResponse$ScreenData$Center$$Parcelable;
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


# static fields
.field private static final extraCallback:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lo/AmountScreenResponse$ScreenData$Center$$Parcelable;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lo/AmountScreenResponse$ScreenData$Center$$Parcelable;->extraCallback:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lo/AmountScreenResponse$ScreenData$Steps;

    invoke-direct {v0}, Lo/AmountScreenResponse$ScreenData$Steps;-><init>()V

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrKey"

    invoke-static {v1, v0}, Lo/getMax_limit;->onPostMessage(Ljava/lang/String;Lo/getExitIntent;)V

    return-void
.end method

.method private final onNavigationEvent(Lo/LoanStatusResponse$Input;)Lo/getNo_of_breaks_in_amount;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lo/getInstrument_source_type;->onPostMessage(Lo/LoanStatusResponse$Input;)Lo/getInstrument_source_type;

    move-result-object p1

    instance-of v0, p1, Lo/getInstrument_source_type;

    if-eqz v0, :cond_0

    check-cast p1, Lo/getInstrument_source_type;

    invoke-virtual {p1}, Lo/getInstrument_source_type;->onPostMessage()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/LoanStatusResponse$AadhaarCaptcha;->onNavigationEvent(II)V

    new-instance v0, Lo/LendingTriggerResponseJsonAdapter;

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrKey"

    invoke-virtual {p1}, Lo/getInstrument_source_type;->ICustomTabsCallback()Lo/BankScreenResponse$ScreenData;

    move-result-object v2

    invoke-static {v1, v2}, Lo/getMax_limit;->extraCallback(Ljava/lang/String;Lo/LoanSummary$Details;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/LoanOrderResponse;

    const-string v2, "type.googleapis.com/google.crypto.tink.HmacKey"

    invoke-virtual {p1}, Lo/getInstrument_source_type;->extraCallback()Lo/EmiSchedule$EmiCard;

    move-result-object v3

    invoke-static {v2, v3}, Lo/getMax_limit;->extraCallback(Ljava/lang/String;Lo/LoanSummary$Details;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getBottom_cta;

    invoke-virtual {p1}, Lo/getInstrument_source_type;->extraCallback()Lo/EmiSchedule$EmiCard;

    move-result-object p1

    invoke-virtual {p1}, Lo/EmiSchedule$EmiCard;->extraCallback()Lo/EmiSchedule;

    move-result-object p1

    invoke-virtual {p1}, Lo/EmiSchedule;->onMessageChannelReady()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lo/LendingTriggerResponseJsonAdapter;-><init>(Lo/LoanOrderResponse;Lo/getBottom_cta;I)V

    check-cast v0, Lo/getNo_of_breaks_in_amount;

    return-object v0

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected AesCtrHmacAeadKey proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbbu; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected serialized AesCtrHmacAeadKey proto"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/LoanSummary$Details;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    instance-of v0, p1, Lo/getInstrument_source_type;

    if-eqz v0, :cond_0

    check-cast p1, Lo/getInstrument_source_type;

    invoke-virtual {p1}, Lo/getInstrument_source_type;->onPostMessage()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/LoanStatusResponse$AadhaarCaptcha;->onNavigationEvent(II)V

    new-instance v0, Lo/LendingTriggerResponseJsonAdapter;

    invoke-virtual {p1}, Lo/getInstrument_source_type;->ICustomTabsCallback()Lo/BankScreenResponse$ScreenData;

    move-result-object v1

    const-string v2, "type.googleapis.com/google.crypto.tink.AesCtrKey"

    invoke-static {v2, v1}, Lo/getMax_limit;->extraCallback(Ljava/lang/String;Lo/LoanSummary$Details;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/LoanOrderResponse;

    invoke-virtual {p1}, Lo/getInstrument_source_type;->extraCallback()Lo/EmiSchedule$EmiCard;

    move-result-object v2

    const-string v3, "type.googleapis.com/google.crypto.tink.HmacKey"

    invoke-static {v3, v2}, Lo/getMax_limit;->extraCallback(Ljava/lang/String;Lo/LoanSummary$Details;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getBottom_cta;

    invoke-virtual {p1}, Lo/getInstrument_source_type;->extraCallback()Lo/EmiSchedule$EmiCard;

    move-result-object p1

    invoke-virtual {p1}, Lo/EmiSchedule$EmiCard;->extraCallback()Lo/EmiSchedule;

    move-result-object p1

    invoke-virtual {p1}, Lo/EmiSchedule;->onMessageChannelReady()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lo/LendingTriggerResponseJsonAdapter;-><init>(Lo/LoanOrderResponse;Lo/getBottom_cta;I)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected AesCtrHmacAeadKey proto"

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
    invoke-static {p1}, Lo/getCustom;->extraCallback(Lo/LoanStatusResponse$Input;)Lo/getCustom;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/AmountScreenResponse$ScreenData$Center$$Parcelable;->onNavigationEvent(Lo/LoanSummary$Details;)Lo/LoanSummary$Details;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbbu; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected serialized AesCtrHmacAeadKeyFormat proto"

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

    invoke-virtual {p0, p1}, Lo/AmountScreenResponse$ScreenData$Center$$Parcelable;->extraCallback(Lo/LoanStatusResponse$Input;)Lo/LoanSummary$Details;

    move-result-object p1

    check-cast p1, Lo/getInstrument_source_type;

    invoke-static {}, Lo/EmiScreenResponse$BottomBanner;->extraCallback()Lo/EmiScreenResponse$BottomBanner$ICustomTabsCallback;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

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

    instance-of v0, p1, Lo/getCustom;

    if-eqz v0, :cond_0

    check-cast p1, Lo/getCustom;

    invoke-virtual {p1}, Lo/getCustom;->onNavigationEvent()Lo/getSupported_banks;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrKey"

    invoke-static {v1, v0}, Lo/getMax_limit;->onPostMessage(Ljava/lang/String;Lo/LoanSummary$Details;)Lo/LoanSummary$Details;

    move-result-object v0

    check-cast v0, Lo/BankScreenResponse$ScreenData;

    invoke-virtual {p1}, Lo/getCustom;->extraCallback()Lo/EmiDetailsJsonAdapter;

    move-result-object p1

    const-string v1, "type.googleapis.com/google.crypto.tink.HmacKey"

    invoke-static {v1, p1}, Lo/getMax_limit;->onPostMessage(Ljava/lang/String;Lo/LoanSummary$Details;)Lo/LoanSummary$Details;

    move-result-object p1

    check-cast p1, Lo/EmiSchedule$EmiCard;

    invoke-static {}, Lo/getInstrument_source_type;->onMessageChannelReady()Lo/getInstrument_source_type$onNavigationEvent;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/getInstrument_source_type$onNavigationEvent;->ICustomTabsCallback(Lo/BankScreenResponse$ScreenData;)Lo/getInstrument_source_type$onNavigationEvent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/getInstrument_source_type$onNavigationEvent;->onMessageChannelReady(Lo/EmiSchedule$EmiCard;)Lo/getInstrument_source_type$onNavigationEvent;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/getInstrument_source_type$onNavigationEvent;->extraCallback(I)Lo/getInstrument_source_type$onNavigationEvent;

    move-result-object p1

    invoke-virtual {p1}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->onPostMessage()Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    move-result-object p1

    check-cast p1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    return-object p1

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected AesCtrHmacAeadKeyFormat proto"

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

    invoke-direct {p0, p1}, Lo/AmountScreenResponse$ScreenData$Center$$Parcelable;->onNavigationEvent(Lo/LoanStatusResponse$Input;)Lo/getNo_of_breaks_in_amount;

    move-result-object p1

    return-object p1
.end method
