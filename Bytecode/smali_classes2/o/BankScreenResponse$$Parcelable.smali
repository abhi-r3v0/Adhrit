.class final Lo/BankScreenResponse$$Parcelable;
.super Ljava/lang/Object;


# direct methods
.method public static ICustomTabsCallback(Lo/CommonPitchItemJsonAdapter;)Lo/LendingTriggerResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    sget-object v0, Lo/getAccount_type;->onMessageChannelReady:[I

    invoke-virtual {p0}, Lo/CommonPitchItemJsonAdapter;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-object p0, Lo/LendingTriggerResponse;->onNavigationEvent:Lo/LendingTriggerResponse;

    return-object p0

    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "unknown point format: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Lo/LendingTriggerResponse;->ICustomTabsCallback:Lo/LendingTriggerResponse;

    return-object p0
.end method

.method public static ICustomTabsCallback(Lo/DraftDataJsonAdapter;)Lo/getConfirmationDetails;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    sget-object v0, Lo/getAccount_type;->onNavigationEvent:[I

    invoke-virtual {p0}, Lo/DraftDataJsonAdapter;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget-object p0, Lo/getConfirmationDetails;->ICustomTabsCallback:Lo/getConfirmationDetails;

    return-object p0

    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "unknown curve type: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Lo/getConfirmationDetails;->onPostMessage:Lo/getConfirmationDetails;

    return-object p0

    :cond_2
    sget-object p0, Lo/getConfirmationDetails;->onNavigationEvent:Lo/getConfirmationDetails;

    return-object p0
.end method

.method public static onMessageChannelReady(Lo/EmiCard;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    sget-object v0, Lo/getAccount_type;->extraCallback:[I

    invoke-virtual {p0}, Lo/EmiCard;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string p0, "HmacSha512"

    return-object p0

    :cond_0
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "hash unsupported for HMAC: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "HmacSha256"

    return-object p0

    :cond_2
    const-string p0, "HmacSha1"

    return-object p0
.end method

.method public static onMessageChannelReady(Lo/Detail;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-virtual {p0}, Lo/Detail;->extraCallback()Lo/Details;

    move-result-object v0

    invoke-virtual {v0}, Lo/Details;->ICustomTabsCallback()Lo/DraftDataJsonAdapter;

    move-result-object v0

    invoke-static {v0}, Lo/BankScreenResponse$$Parcelable;->ICustomTabsCallback(Lo/DraftDataJsonAdapter;)Lo/getConfirmationDetails;

    move-result-object v0

    invoke-static {v0}, Lo/LendingAutoDebitResponse;->extraCallback(Lo/getConfirmationDetails;)Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p0}, Lo/Detail;->extraCallback()Lo/Details;

    move-result-object v0

    invoke-virtual {v0}, Lo/Details;->onNavigationEvent()Lo/EmiCard;

    move-result-object v0

    invoke-static {v0}, Lo/BankScreenResponse$$Parcelable;->onMessageChannelReady(Lo/EmiCard;)Ljava/lang/String;

    invoke-virtual {p0}, Lo/Detail;->onPostMessage()Lo/CommonPitchItemJsonAdapter;

    move-result-object v0

    sget-object v1, Lo/CommonPitchItemJsonAdapter;->onMessageChannelReady:Lo/CommonPitchItemJsonAdapter;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lo/Detail;->ICustomTabsCallback()Lo/ConfirmDetails;

    move-result-object p0

    invoke-virtual {p0}, Lo/ConfirmDetails;->ICustomTabsCallback()Lo/EmiScreenResponse$Custom;

    move-result-object p0

    invoke-static {p0}, Lo/getMax_limit;->onPostMessage(Lo/EmiScreenResponse$Custom;)Lo/EmiScreenResponse$BottomBanner;

    return-void

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown EC point format"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
