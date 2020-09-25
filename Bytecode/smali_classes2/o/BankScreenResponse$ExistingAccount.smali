.class final Lo/BankScreenResponse$ExistingAccount;
.super Ljava/lang/Object;

# interfaces
.implements Lo/ExitIntentJsonAdapter;


# instance fields
.field private ICustomTabsCallback:Lo/getInstrument_source_type;

.field private final extraCallback:Ljava/lang/String;

.field private onMessageChannelReady:I

.field private final onNavigationEvent:I

.field private onPostMessage:Lo/CommonPitchItem;


# direct methods
.method constructor <init>(Lo/EmiScreenResponse$Custom;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lo/EmiScreenResponse$Custom;->extraCallback()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/BankScreenResponse$ExistingAccount;->extraCallback:Ljava/lang/String;

    const-string v1, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "invalid KeyFormat protobuf, expected AesGcmKeyFormat"

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lo/EmiScreenResponse$Custom;->ICustomTabsCallback()Lo/LoanStatusResponse$Input;

    move-result-object v0

    invoke-static {v0}, Lo/BankScreenResponse_ExistingAccountJsonAdapter;->onMessageChannelReady(Lo/LoanStatusResponse$Input;)Lo/BankScreenResponse_ExistingAccountJsonAdapter;

    move-result-object v0

    invoke-static {p1}, Lo/getMax_limit;->onNavigationEvent(Lo/EmiScreenResponse$Custom;)Lo/LoanSummary$Details;

    move-result-object p1

    check-cast p1, Lo/CommonPitchItem;

    iput-object p1, p0, Lo/BankScreenResponse$ExistingAccount;->onPostMessage:Lo/CommonPitchItem;

    invoke-virtual {v0}, Lo/BankScreenResponse_ExistingAccountJsonAdapter;->extraCallback()I

    move-result p1

    iput p1, p0, Lo/BankScreenResponse$ExistingAccount;->onNavigationEvent:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbbu; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lo/BankScreenResponse$ExistingAccount;->extraCallback:Ljava/lang/String;

    const-string v2, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {p1}, Lo/EmiScreenResponse$Custom;->ICustomTabsCallback()Lo/LoanStatusResponse$Input;

    move-result-object v0

    invoke-static {v0}, Lo/getCustom;->extraCallback(Lo/LoanStatusResponse$Input;)Lo/getCustom;

    move-result-object v0

    invoke-static {p1}, Lo/getMax_limit;->onNavigationEvent(Lo/EmiScreenResponse$Custom;)Lo/LoanSummary$Details;

    move-result-object p1

    check-cast p1, Lo/getInstrument_source_type;

    iput-object p1, p0, Lo/BankScreenResponse$ExistingAccount;->ICustomTabsCallback:Lo/getInstrument_source_type;

    invoke-virtual {v0}, Lo/getCustom;->onNavigationEvent()Lo/getSupported_banks;

    move-result-object p1

    invoke-virtual {p1}, Lo/getSupported_banks;->onPostMessage()I

    move-result p1

    iput p1, p0, Lo/BankScreenResponse$ExistingAccount;->onMessageChannelReady:I

    invoke-virtual {v0}, Lo/getCustom;->extraCallback()Lo/EmiDetailsJsonAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lo/EmiDetailsJsonAdapter;->onMessageChannelReady()I

    move-result p1

    iget v0, p0, Lo/BankScreenResponse$ExistingAccount;->onMessageChannelReady:I

    add-int/2addr v0, p1

    iput v0, p0, Lo/BankScreenResponse$ExistingAccount;->onNavigationEvent:I
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzbbu; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "unsupported AEAD DEM key type: "

    iget-object v1, p0, Lo/BankScreenResponse$ExistingAccount;->extraCallback:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final extraCallback()I
    .locals 1

    iget v0, p0, Lo/BankScreenResponse$ExistingAccount;->onNavigationEvent:I

    return v0
.end method

.method public final onPostMessage([B)Lo/getNo_of_breaks_in_amount;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    array-length v0, p1

    iget v1, p0, Lo/BankScreenResponse$ExistingAccount;->onNavigationEvent:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lo/BankScreenResponse$ExistingAccount;->extraCallback:Ljava/lang/String;

    const-string v1, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lo/CommonPitchItem;->extraCallback()Lo/CommonPitchItem$onPostMessage;

    move-result-object v0

    iget-object v2, p0, Lo/BankScreenResponse$ExistingAccount;->onPostMessage:Lo/CommonPitchItem;

    invoke-virtual {v0, v2}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->onNavigationEvent(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;

    move-result-object v0

    check-cast v0, Lo/CommonPitchItem$onPostMessage;

    iget v2, p0, Lo/BankScreenResponse$ExistingAccount;->onNavigationEvent:I

    invoke-static {p1, v1, v2}, Lo/LoanStatusResponse$Input;->ICustomTabsCallback([BII)Lo/LoanStatusResponse$Input;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/CommonPitchItem$onPostMessage;->extraCallback(Lo/LoanStatusResponse$Input;)Lo/CommonPitchItem$onPostMessage;

    move-result-object p1

    invoke-virtual {p1}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->onPostMessage()Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    move-result-object p1

    check-cast p1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast p1, Lo/CommonPitchItem;

    :goto_0
    iget-object v0, p0, Lo/BankScreenResponse$ExistingAccount;->extraCallback:Ljava/lang/String;

    invoke-static {v0, p1}, Lo/getMax_limit;->extraCallback(Ljava/lang/String;Lo/LoanSummary$Details;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getNo_of_breaks_in_amount;

    return-object p1

    :cond_0
    iget-object v0, p0, Lo/BankScreenResponse$ExistingAccount;->extraCallback:Ljava/lang/String;

    const-string v2, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lo/BankScreenResponse$ExistingAccount;->onMessageChannelReady:I

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iget v1, p0, Lo/BankScreenResponse$ExistingAccount;->onMessageChannelReady:I

    iget v2, p0, Lo/BankScreenResponse$ExistingAccount;->onNavigationEvent:I

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-static {}, Lo/BankScreenResponse$ScreenData;->extraCallback()Lo/BankScreenResponse$ScreenData$ICustomTabsCallback;

    move-result-object v1

    iget-object v2, p0, Lo/BankScreenResponse$ExistingAccount;->ICustomTabsCallback:Lo/getInstrument_source_type;

    invoke-virtual {v2}, Lo/getInstrument_source_type;->ICustomTabsCallback()Lo/BankScreenResponse$ScreenData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->onNavigationEvent(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;

    move-result-object v1

    check-cast v1, Lo/BankScreenResponse$ScreenData$ICustomTabsCallback;

    invoke-static {v0}, Lo/LoanStatusResponse$Input;->ICustomTabsCallback([B)Lo/LoanStatusResponse$Input;

    move-result-object v0

    invoke-virtual {v1, v0}, Lo/BankScreenResponse$ScreenData$ICustomTabsCallback;->onNavigationEvent(Lo/LoanStatusResponse$Input;)Lo/BankScreenResponse$ScreenData$ICustomTabsCallback;

    move-result-object v0

    invoke-virtual {v0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->onPostMessage()Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    move-result-object v0

    check-cast v0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast v0, Lo/BankScreenResponse$ScreenData;

    invoke-static {}, Lo/EmiSchedule$EmiCard;->onMessageChannelReady()Lo/EmiSchedule$EmiCard$onNavigationEvent;

    move-result-object v1

    iget-object v2, p0, Lo/BankScreenResponse$ExistingAccount;->ICustomTabsCallback:Lo/getInstrument_source_type;

    invoke-virtual {v2}, Lo/getInstrument_source_type;->extraCallback()Lo/EmiSchedule$EmiCard;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->onNavigationEvent(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;

    move-result-object v1

    check-cast v1, Lo/EmiSchedule$EmiCard$onNavigationEvent;

    invoke-static {p1}, Lo/LoanStatusResponse$Input;->ICustomTabsCallback([B)Lo/LoanStatusResponse$Input;

    move-result-object p1

    invoke-virtual {v1, p1}, Lo/EmiSchedule$EmiCard$onNavigationEvent;->onMessageChannelReady(Lo/LoanStatusResponse$Input;)Lo/EmiSchedule$EmiCard$onNavigationEvent;

    move-result-object p1

    invoke-virtual {p1}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->onPostMessage()Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    move-result-object p1

    check-cast p1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast p1, Lo/EmiSchedule$EmiCard;

    invoke-static {}, Lo/getInstrument_source_type;->onMessageChannelReady()Lo/getInstrument_source_type$onNavigationEvent;

    move-result-object v1

    iget-object v2, p0, Lo/BankScreenResponse$ExistingAccount;->ICustomTabsCallback:Lo/getInstrument_source_type;

    invoke-virtual {v2}, Lo/getInstrument_source_type;->onPostMessage()I

    move-result v2

    invoke-virtual {v1, v2}, Lo/getInstrument_source_type$onNavigationEvent;->extraCallback(I)Lo/getInstrument_source_type$onNavigationEvent;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/getInstrument_source_type$onNavigationEvent;->ICustomTabsCallback(Lo/BankScreenResponse$ScreenData;)Lo/getInstrument_source_type$onNavigationEvent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/getInstrument_source_type$onNavigationEvent;->onMessageChannelReady(Lo/EmiSchedule$EmiCard;)Lo/getInstrument_source_type$onNavigationEvent;

    move-result-object p1

    invoke-virtual {p1}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->onPostMessage()Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    move-result-object p1

    check-cast p1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast p1, Lo/getInstrument_source_type;

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown DEM key type"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Symmetric key has incorrect length"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
