.class final Lo/WinnerSheetBlock;
.super Ljava/lang/Object;


# static fields
.field static extraCallback:Lo/getInterest_rate;


# direct methods
.method static onMessageChannelReady(Lo/SubmitScoreRequestJsonAdapter;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    sget-object v0, Lo/WinnerSheetBlock;->extraCallback:Lo/getInterest_rate;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lo/WinningTypes;->MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi21:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    :cond_1
    const/4 v0, 0x0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const-string v3, "4o7tecxtkw7XaNt5hPj+0H1LvOi0SgxCIJTY9VcbazM/HSl/sFlxBFwnc8glnvoB"

    const-string v4, "RgSY6YxU2k1vLXOV3vapBnQwJDzYDlmX50wbm2tDcnw="

    invoke-virtual {p0, v3, v4}, Lo/SubmitScoreRequestJsonAdapter;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    :goto_0
    if-nez v0, :cond_4

    return v2

    :cond_4
    :try_start_0
    invoke-static {v0, v1}, Lo/MiniCardsResponseJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Z)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p0}, Lo/getInterestInfo;->onNavigationEvent([B)Lo/getShowKyc;

    move-result-object p0

    sget-object v0, Lo/AttributesJsonAdapter;->onNavigationEvent:Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;

    invoke-virtual {v0}, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;->onNavigationEvent()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/EmiScreenResponse$ChildCard;

    invoke-virtual {v3}, Lo/EmiScreenResponse$ChildCard;->onPostMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v3}, Lo/EmiScreenResponse$ChildCard;->onNavigationEvent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v3}, Lo/EmiScreenResponse$ChildCard;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Lo/EmiScreenResponse$ChildCard;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lo/getMax_limit;->onMessageChannelReady(Ljava/lang/String;)Lo/getSub_title;

    move-result-object v4

    invoke-virtual {v3}, Lo/EmiScreenResponse$ChildCard;->onPostMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lo/EmiScreenResponse$ChildCard;->onNavigationEvent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lo/EmiScreenResponse$ChildCard;->extraCallback()I

    move-result v7

    invoke-interface {v4, v5, v6, v7}, Lo/getSub_title;->extraCallback(Ljava/lang/String;Ljava/lang/String;I)Lo/getExitIntent;

    move-result-object v4

    invoke-virtual {v3}, Lo/EmiScreenResponse$ChildCard;->onPostMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lo/EmiScreenResponse$ChildCard;->onMessageChannelReady()Z

    move-result v3

    invoke-static {v5, v4, v3}, Lo/getMax_limit;->onMessageChannelReady(Ljava/lang/String;Lo/getExitIntent;Z)V

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Missing catalogue_name."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Missing primitive_name."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Missing type_url."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    invoke-static {p0}, Lo/AmountScreenResponse_ScreenData_StepsJsonAdapter;->onNavigationEvent(Lo/getShowKyc;)Lo/getInterest_rate;

    move-result-object p0

    sput-object p0, Lo/WinnerSheetBlock;->extraCallback:Lo/getInterest_rate;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p0, :cond_9

    return v1

    :catch_0
    :cond_9
    return v2
.end method
