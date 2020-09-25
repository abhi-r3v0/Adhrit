.class public final Lo/getInterestInfo;
.super Ljava/lang/Object;


# direct methods
.method public static final onNavigationEvent([B)Lo/getShowKyc;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-static {p0}, Lo/EmiScreenResponse$ScreenData;->extraCallback([B)Lo/EmiScreenResponse$ScreenData;

    move-result-object p0

    invoke-virtual {p0}, Lo/EmiScreenResponse$ScreenData;->extraCallback()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/EmiScreenResponse$ScreenData$onNavigationEvent;

    invoke-virtual {v1}, Lo/EmiScreenResponse$ScreenData$onNavigationEvent;->onMessageChannelReady()Lo/EmiScreenResponse$BottomBanner;

    move-result-object v2

    invoke-virtual {v2}, Lo/EmiScreenResponse$BottomBanner;->onMessageChannelReady()Lo/EmiScreenResponse$BottomBanner$extraCallback;

    move-result-object v2

    sget-object v3, Lo/EmiScreenResponse$BottomBanner$extraCallback;->onPostMessage:Lo/EmiScreenResponse$BottomBanner$extraCallback;

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lo/EmiScreenResponse$ScreenData$onNavigationEvent;->onMessageChannelReady()Lo/EmiScreenResponse$BottomBanner;

    move-result-object v2

    invoke-virtual {v2}, Lo/EmiScreenResponse$BottomBanner;->onMessageChannelReady()Lo/EmiScreenResponse$BottomBanner$extraCallback;

    move-result-object v2

    sget-object v3, Lo/EmiScreenResponse$BottomBanner$extraCallback;->ICustomTabsCallback:Lo/EmiScreenResponse$BottomBanner$extraCallback;

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lo/EmiScreenResponse$ScreenData$onNavigationEvent;->onMessageChannelReady()Lo/EmiScreenResponse$BottomBanner;

    move-result-object v1

    invoke-virtual {v1}, Lo/EmiScreenResponse$BottomBanner;->onMessageChannelReady()Lo/EmiScreenResponse$BottomBanner$extraCallback;

    move-result-object v1

    sget-object v2, Lo/EmiScreenResponse$BottomBanner$extraCallback;->onMessageChannelReady:Lo/EmiScreenResponse$BottomBanner$extraCallback;

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "keyset contains secret key material"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p0}, Lo/getShowKyc;->onMessageChannelReady(Lo/EmiScreenResponse$ScreenData;)Lo/getShowKyc;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbbu; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid keyset"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
