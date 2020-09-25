.class final Lo/getCenter;
.super Ljava/lang/Object;


# static fields
.field private static final ICustomTabsCallback:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lo/getCenter;->ICustomTabsCallback:Ljava/nio/charset/Charset;

    return-void
.end method

.method public static extraCallback(Lo/EmiScreenResponse$ScreenData;)Lo/EmiScreenResponse$StashDetails;
    .locals 4

    invoke-static {}, Lo/EmiScreenResponse$StashDetails;->onNavigationEvent()Lo/EmiScreenResponse$StashDetails$onMessageChannelReady;

    move-result-object v0

    invoke-virtual {p0}, Lo/EmiScreenResponse$ScreenData;->ICustomTabsCallback()I

    move-result v1

    invoke-virtual {v0, v1}, Lo/EmiScreenResponse$StashDetails$onMessageChannelReady;->onMessageChannelReady(I)Lo/EmiScreenResponse$StashDetails$onMessageChannelReady;

    move-result-object v0

    invoke-virtual {p0}, Lo/EmiScreenResponse$ScreenData;->extraCallback()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/EmiScreenResponse$ScreenData$onNavigationEvent;

    invoke-static {}, Lo/EmiScreenResponse$StashDetails$onPostMessage;->ICustomTabsCallback()Lo/EmiScreenResponse$StashDetails$onPostMessage$onNavigationEvent;

    move-result-object v2

    invoke-virtual {v1}, Lo/EmiScreenResponse$ScreenData$onNavigationEvent;->onMessageChannelReady()Lo/EmiScreenResponse$BottomBanner;

    move-result-object v3

    invoke-virtual {v3}, Lo/EmiScreenResponse$BottomBanner;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/EmiScreenResponse$StashDetails$onPostMessage$onNavigationEvent;->onMessageChannelReady(Ljava/lang/String;)Lo/EmiScreenResponse$StashDetails$onPostMessage$onNavigationEvent;

    move-result-object v2

    invoke-virtual {v1}, Lo/EmiScreenResponse$ScreenData$onNavigationEvent;->onPostMessage()Lo/EmiScreenResponse;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/EmiScreenResponse$StashDetails$onPostMessage$onNavigationEvent;->extraCallback(Lo/EmiScreenResponse;)Lo/EmiScreenResponse$StashDetails$onPostMessage$onNavigationEvent;

    move-result-object v2

    invoke-virtual {v1}, Lo/EmiScreenResponse$ScreenData$onNavigationEvent;->extraCallback()Lo/EmiScreenResponse_ItemDetailsJsonAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/EmiScreenResponse$StashDetails$onPostMessage$onNavigationEvent;->extraCallback(Lo/EmiScreenResponse_ItemDetailsJsonAdapter;)Lo/EmiScreenResponse$StashDetails$onPostMessage$onNavigationEvent;

    move-result-object v2

    invoke-virtual {v1}, Lo/EmiScreenResponse$ScreenData$onNavigationEvent;->onNavigationEvent()I

    move-result v1

    invoke-virtual {v2, v1}, Lo/EmiScreenResponse$StashDetails$onPostMessage$onNavigationEvent;->onPostMessage(I)Lo/EmiScreenResponse$StashDetails$onPostMessage$onNavigationEvent;

    move-result-object v1

    invoke-virtual {v1}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->onPostMessage()Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    move-result-object v1

    check-cast v1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast v1, Lo/EmiScreenResponse$StashDetails$onPostMessage;

    invoke-virtual {v0, v1}, Lo/EmiScreenResponse$StashDetails$onMessageChannelReady;->onMessageChannelReady(Lo/EmiScreenResponse$StashDetails$onPostMessage;)Lo/EmiScreenResponse$StashDetails$onMessageChannelReady;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->onPostMessage()Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    move-result-object p0

    check-cast p0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast p0, Lo/EmiScreenResponse$StashDetails;

    return-object p0
.end method

.method public static onPostMessage(Lo/EmiScreenResponse$ScreenData;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-virtual {p0}, Lo/EmiScreenResponse$ScreenData;->onMessageChannelReady()I

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lo/EmiScreenResponse$ScreenData;->ICustomTabsCallback()I

    move-result v0

    invoke-virtual {p0}, Lo/EmiScreenResponse$ScreenData;->extraCallback()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/EmiScreenResponse$ScreenData$onNavigationEvent;

    invoke-virtual {v5}, Lo/EmiScreenResponse$ScreenData$onNavigationEvent;->ICustomTabsCallback()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Lo/EmiScreenResponse$ScreenData$onNavigationEvent;->extraCallback()Lo/EmiScreenResponse_ItemDetailsJsonAdapter;

    move-result-object v6

    sget-object v7, Lo/EmiScreenResponse_ItemDetailsJsonAdapter;->onPostMessage:Lo/EmiScreenResponse_ItemDetailsJsonAdapter;

    if-eq v6, v7, :cond_4

    invoke-virtual {v5}, Lo/EmiScreenResponse$ScreenData$onNavigationEvent;->onPostMessage()Lo/EmiScreenResponse;

    move-result-object v6

    sget-object v7, Lo/EmiScreenResponse;->extraCallback:Lo/EmiScreenResponse;

    if-eq v6, v7, :cond_3

    invoke-virtual {v5}, Lo/EmiScreenResponse$ScreenData$onNavigationEvent;->onPostMessage()Lo/EmiScreenResponse;

    move-result-object v6

    sget-object v7, Lo/EmiScreenResponse;->ICustomTabsCallback:Lo/EmiScreenResponse;

    if-ne v6, v7, :cond_2

    invoke-virtual {v5}, Lo/EmiScreenResponse$ScreenData$onNavigationEvent;->onNavigationEvent()I

    move-result v6

    if-ne v6, v0, :cond_2

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "keyset contains multiple primary keys"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    invoke-virtual {v5}, Lo/EmiScreenResponse$ScreenData$onNavigationEvent;->onMessageChannelReady()Lo/EmiScreenResponse$BottomBanner;

    move-result-object v5

    invoke-virtual {v5}, Lo/EmiScreenResponse$BottomBanner;->onMessageChannelReady()Lo/EmiScreenResponse$BottomBanner$extraCallback;

    move-result-object v5

    sget-object v6, Lo/EmiScreenResponse$BottomBanner$extraCallback;->extraCallback:Lo/EmiScreenResponse$BottomBanner$extraCallback;

    if-eq v5, v6, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/security/GeneralSecurityException;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {v5}, Lo/EmiScreenResponse$ScreenData$onNavigationEvent;->onNavigationEvent()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "key %d has unknown status"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/security/GeneralSecurityException;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {v5}, Lo/EmiScreenResponse$ScreenData$onNavigationEvent;->onNavigationEvent()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "key %d has unknown prefix"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/security/GeneralSecurityException;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {v5}, Lo/EmiScreenResponse$ScreenData$onNavigationEvent;->onNavigationEvent()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "key %d has no key data"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    if-nez v3, :cond_8

    if-eqz v4, :cond_7

    goto :goto_2

    :cond_7
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "keyset doesn\'t contain a valid primary key"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_2
    return-void

    :cond_9
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "empty keyset"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
