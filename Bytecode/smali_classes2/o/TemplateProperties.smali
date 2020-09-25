.class public final Lo/TemplateProperties;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# direct methods
.method public static ICustomTabsCallback(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lo/getParcel;->cancel()Lo/Template;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/Template;->extraCallback(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lo/getParcel;->cancel()Lo/Template;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/Template;->ICustomTabsCallback$Stub(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-object p0

    :cond_1
    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return-object p0

    :cond_2
    sget-object v0, Lo/WinningTypes;->MediaBrowserCompat$CustomActionResultReceiver:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lo/WinningTypes;->onReceiveResult:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v0, "fbs_aeid"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p0, v0, p1}, Lo/TemplateProperties;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_4
    :goto_0
    return-object p0
.end method

.method public static onMessageChannelReady(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;
    .locals 2

    invoke-static {}, Lo/getParcel;->cancel()Lo/Template;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/Template;->asInterface(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "fbs_aeid"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lo/getParcel;->cancel()Lo/Template;

    move-result-object v1

    invoke-virtual {v1, p1}, Lo/Template;->ICustomTabsCallback$Stub(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0, v1}, Lo/TemplateProperties;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {}, Lo/getParcel;->cancel()Lo/Template;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lo/Template;->onPostMessage(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static onNavigationEvent(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lo/getParcel;->cancel()Lo/Template;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/Template;->extraCallback(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lo/getParcel;->cancel()Lo/Template;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/Template;->ICustomTabsCallback$Stub(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    sget-object v1, Lo/WinningTypes;->MediaBrowserCompat$CustomActionResultReceiver:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lo/WinningTypes;->onReceiveResult:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    move-result-object v2

    invoke-virtual {v2, p0}, Lo/AuthSupportedResponse$MetaData;->onMessageChannelReady(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lo/getParcel;->cancel()Lo/Template;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lo/Template;->onPostMessage(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    move-result-object v2

    invoke-virtual {v2, p0}, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lo/getParcel;->cancel()Lo/Template;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lo/Template;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v1, "fbs_aeid"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    move-result-object v2

    invoke-virtual {v2, p0}, Lo/AuthSupportedResponse$MetaData;->onMessageChannelReady(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lo/getParcel;->cancel()Lo/Template;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lo/Template;->onPostMessage(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Lo/TemplateProperties;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    move-result-object v2

    invoke-virtual {v2, p0}, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lo/getParcel;->cancel()Lo/Template;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lo/Template;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Lo/TemplateProperties;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_5
    :goto_0
    return-object p0
.end method

.method private static onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    const-string v0, "&adurl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "?adurl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    :cond_0
    if-eq v0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
