.class final Lo/getExternal_id;
.super Ljava/lang/Object;

# interfaces
.implements Lo/getExitIntent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getExitIntent<",
        "Lo/getBottom_cta;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static extraCallback(Lo/EmiSchedule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-virtual {p0}, Lo/EmiSchedule;->onMessageChannelReady()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_6

    sget-object v0, Lo/getInstrument_capabilities;->onPostMessage:[I

    invoke-virtual {p0}, Lo/EmiSchedule;->ICustomTabsCallback()Lo/EmiCard;

    move-result-object v1

    invoke-virtual {v1}, Lo/EmiCard;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "tag size too big"

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lo/EmiSchedule;->onMessageChannelReady()I

    move-result p0

    const/16 v0, 0x40

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown hash type"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {p0}, Lo/EmiSchedule;->onMessageChannelReady()I

    move-result p0

    const/16 v0, 0x20

    if-gt p0, v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-virtual {p0}, Lo/EmiSchedule;->onMessageChannelReady()I

    move-result p0

    const/16 v0, 0x14

    if-gt p0, v0, :cond_5

    :goto_0
    return-void

    :cond_5
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "tag size too small"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final onNavigationEvent(Lo/LoanStatusResponse$Input;)Lo/getBottom_cta;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lo/EmiSchedule$EmiCard;->extraCallback(Lo/LoanStatusResponse$Input;)Lo/EmiSchedule$EmiCard;

    move-result-object p1

    instance-of v0, p1, Lo/EmiSchedule$EmiCard;

    if-eqz v0, :cond_4

    check-cast p1, Lo/EmiSchedule$EmiCard;

    invoke-virtual {p1}, Lo/EmiSchedule$EmiCard;->onPostMessage()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/LoanStatusResponse$AadhaarCaptcha;->onNavigationEvent(II)V

    invoke-virtual {p1}, Lo/EmiSchedule$EmiCard;->ICustomTabsCallback()Lo/LoanStatusResponse$Input;

    move-result-object v0

    invoke-virtual {v0}, Lo/LoanStatusResponse$Input;->onNavigationEvent()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    invoke-virtual {p1}, Lo/EmiSchedule$EmiCard;->extraCallback()Lo/EmiSchedule;

    move-result-object v0

    invoke-static {v0}, Lo/getExternal_id;->extraCallback(Lo/EmiSchedule;)V

    invoke-virtual {p1}, Lo/EmiSchedule$EmiCard;->extraCallback()Lo/EmiSchedule;

    move-result-object v0

    invoke-virtual {v0}, Lo/EmiSchedule;->ICustomTabsCallback()Lo/EmiCard;

    move-result-object v0

    invoke-virtual {p1}, Lo/EmiSchedule$EmiCard;->ICustomTabsCallback()Lo/LoanStatusResponse$Input;

    move-result-object v1

    invoke-virtual {v1}, Lo/LoanStatusResponse$Input;->ICustomTabsCallback()[B

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "HMAC"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1}, Lo/EmiSchedule$EmiCard;->extraCallback()Lo/EmiSchedule;

    move-result-object p1

    invoke-virtual {p1}, Lo/EmiSchedule;->onMessageChannelReady()I

    move-result p1

    sget-object v1, Lo/getInstrument_capabilities;->onPostMessage:[I

    invoke-virtual {v0}, Lo/EmiCard;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    new-instance v0, Lo/LoanManagementResponseJsonAdapter;

    const-string v1, "HMACSHA512"

    invoke-direct {v0, v1, v2, p1}, Lo/LoanManagementResponseJsonAdapter;-><init>(Ljava/lang/String;Ljava/security/Key;I)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown hash"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance v0, Lo/LoanManagementResponseJsonAdapter;

    const-string v1, "HMACSHA256"

    invoke-direct {v0, v1, v2, p1}, Lo/LoanManagementResponseJsonAdapter;-><init>(Ljava/lang/String;Ljava/security/Key;I)V

    goto :goto_0

    :cond_2
    new-instance v0, Lo/LoanManagementResponseJsonAdapter;

    const-string v1, "HMACSHA1"

    invoke-direct {v0, v1, v2, p1}, Lo/LoanManagementResponseJsonAdapter;-><init>(Ljava/lang/String;Ljava/security/Key;I)V

    :goto_0
    check-cast v0, Lo/getBottom_cta;

    return-object v0

    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "key too short"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected HmacKey proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbbu; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected serialized HmacKey proto"

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

    instance-of v0, p1, Lo/EmiSchedule$EmiCard;

    if-eqz v0, :cond_4

    check-cast p1, Lo/EmiSchedule$EmiCard;

    invoke-virtual {p1}, Lo/EmiSchedule$EmiCard;->onPostMessage()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/LoanStatusResponse$AadhaarCaptcha;->onNavigationEvent(II)V

    invoke-virtual {p1}, Lo/EmiSchedule$EmiCard;->ICustomTabsCallback()Lo/LoanStatusResponse$Input;

    move-result-object v0

    invoke-virtual {v0}, Lo/LoanStatusResponse$Input;->onNavigationEvent()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    invoke-virtual {p1}, Lo/EmiSchedule$EmiCard;->extraCallback()Lo/EmiSchedule;

    move-result-object v0

    invoke-static {v0}, Lo/getExternal_id;->extraCallback(Lo/EmiSchedule;)V

    invoke-virtual {p1}, Lo/EmiSchedule$EmiCard;->extraCallback()Lo/EmiSchedule;

    move-result-object v0

    invoke-virtual {v0}, Lo/EmiSchedule;->ICustomTabsCallback()Lo/EmiCard;

    move-result-object v0

    invoke-virtual {p1}, Lo/EmiSchedule$EmiCard;->ICustomTabsCallback()Lo/LoanStatusResponse$Input;

    move-result-object v1

    invoke-virtual {v1}, Lo/LoanStatusResponse$Input;->ICustomTabsCallback()[B

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "HMAC"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1}, Lo/EmiSchedule$EmiCard;->extraCallback()Lo/EmiSchedule;

    move-result-object p1

    invoke-virtual {p1}, Lo/EmiSchedule;->onMessageChannelReady()I

    move-result p1

    sget-object v1, Lo/getInstrument_capabilities;->onPostMessage:[I

    invoke-virtual {v0}, Lo/EmiCard;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    new-instance v0, Lo/LoanManagementResponseJsonAdapter;

    const-string v1, "HMACSHA512"

    invoke-direct {v0, v1, v2, p1}, Lo/LoanManagementResponseJsonAdapter;-><init>(Ljava/lang/String;Ljava/security/Key;I)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown hash"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance v0, Lo/LoanManagementResponseJsonAdapter;

    const-string v1, "HMACSHA256"

    invoke-direct {v0, v1, v2, p1}, Lo/LoanManagementResponseJsonAdapter;-><init>(Ljava/lang/String;Ljava/security/Key;I)V

    return-object v0

    :cond_2
    new-instance v0, Lo/LoanManagementResponseJsonAdapter;

    const-string v1, "HMACSHA1"

    invoke-direct {v0, v1, v2, p1}, Lo/LoanManagementResponseJsonAdapter;-><init>(Ljava/lang/String;Ljava/security/Key;I)V

    return-object v0

    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "key too short"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected HmacKey proto"

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
    invoke-static {p1}, Lo/EmiDetailsJsonAdapter;->extraCallback(Lo/LoanStatusResponse$Input;)Lo/EmiDetailsJsonAdapter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/getExternal_id;->onNavigationEvent(Lo/LoanSummary$Details;)Lo/LoanSummary$Details;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbbu; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected serialized HmacKeyFormat proto"

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

    invoke-virtual {p0, p1}, Lo/getExternal_id;->extraCallback(Lo/LoanStatusResponse$Input;)Lo/LoanSummary$Details;

    move-result-object p1

    check-cast p1, Lo/EmiSchedule$EmiCard;

    invoke-static {}, Lo/EmiScreenResponse$BottomBanner;->extraCallback()Lo/EmiScreenResponse$BottomBanner$ICustomTabsCallback;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.HmacKey"

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

    instance-of v0, p1, Lo/EmiDetailsJsonAdapter;

    if-eqz v0, :cond_1

    check-cast p1, Lo/EmiDetailsJsonAdapter;

    invoke-virtual {p1}, Lo/EmiDetailsJsonAdapter;->onMessageChannelReady()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lo/EmiDetailsJsonAdapter;->ICustomTabsCallback()Lo/EmiSchedule;

    move-result-object v0

    invoke-static {v0}, Lo/getExternal_id;->extraCallback(Lo/EmiSchedule;)V

    invoke-static {}, Lo/EmiSchedule$EmiCard;->onMessageChannelReady()Lo/EmiSchedule$EmiCard$onNavigationEvent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/EmiSchedule$EmiCard$onNavigationEvent;->onMessageChannelReady(I)Lo/EmiSchedule$EmiCard$onNavigationEvent;

    move-result-object v0

    invoke-virtual {p1}, Lo/EmiDetailsJsonAdapter;->ICustomTabsCallback()Lo/EmiSchedule;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/EmiSchedule$EmiCard$onNavigationEvent;->ICustomTabsCallback(Lo/EmiSchedule;)Lo/EmiSchedule$EmiCard$onNavigationEvent;

    move-result-object v0

    invoke-virtual {p1}, Lo/EmiDetailsJsonAdapter;->onMessageChannelReady()I

    move-result p1

    invoke-static {p1}, Lo/LoanManagementResponse;->onPostMessage(I)[B

    move-result-object p1

    invoke-static {p1}, Lo/LoanStatusResponse$Input;->ICustomTabsCallback([B)Lo/LoanStatusResponse$Input;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/EmiSchedule$EmiCard$onNavigationEvent;->onMessageChannelReady(Lo/LoanStatusResponse$Input;)Lo/EmiSchedule$EmiCard$onNavigationEvent;

    move-result-object p1

    invoke-virtual {p1}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->onPostMessage()Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    move-result-object p1

    check-cast p1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    return-object p1

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "key too short"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected HmacKeyFormat proto"

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

    invoke-direct {p0, p1}, Lo/getExternal_id;->onNavigationEvent(Lo/LoanStatusResponse$Input;)Lo/getBottom_cta;

    move-result-object p1

    return-object p1
.end method
