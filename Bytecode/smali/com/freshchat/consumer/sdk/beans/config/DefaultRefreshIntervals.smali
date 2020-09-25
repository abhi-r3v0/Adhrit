.class public Lcom/freshchat/consumer/sdk/beans/config/DefaultRefreshIntervals;
.super Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;


# static fields
.field public static final ACTIVE_CONV_MAX_FETCH_INTERVAL:J = 0xea60L

.field public static final ACTIVE_CONV_MIN_FETCH_INTERVAL:J = 0x4e20L

.field private static final CHANNELS_FETCH_INTERVAL_LAID_BACK:J = 0x240c8400L

.field private static final CHANNELS_FETCH_INTERVAL_NORMAL:J = 0x493e0L

.field private static final FAQ_FETCH_INTERVAL_LAIDBACK:J = 0x240c8400L

.field private static final FAQ_FETCH_INTERVAL_NORMAL:J = 0x493e0L

.field private static final MESSAGES_FETCH_INTERVAL_LAIDBACK:J = 0xea60L

.field private static final MESSAGES_FETCH_INTERVAL_NORMAL:J = 0x7530L

.field public static final REMOTE_CONFIG_FETCH_INTERVAL:J = 0x5265c00L

.field public static final RESPONSE_TIME_EXPECTATIONS_FETCH_INTERVAL:J = 0x493e0L


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;-><init>()V

    const-wide/32 v0, 0x5265c00

    invoke-virtual {p0, v0, v1}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->setRemoteConfigFetchInterval(J)V

    const-wide/32 v0, 0x493e0

    invoke-virtual {p0, v0, v1}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->setResponseTimeExpectationsFetchInterval(J)V

    const-wide/16 v2, 0x4e20

    invoke-virtual {p0, v2, v3}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->setActiveConvMinFetchInterval(J)V

    const-wide/32 v2, 0xea60

    invoke-virtual {p0, v2, v3}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->setActiveConvMaxFetchInterval(J)V

    const-wide/16 v4, 0x7530

    invoke-virtual {p0, v4, v5}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->setMsgFetchIntervalNormal(J)V

    invoke-virtual {p0, v2, v3}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->setMsgFetchIntervalLaidback(J)V

    invoke-virtual {p0, v0, v1}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->setFaqFetchIntervalNormal(J)V

    const-wide/32 v2, 0x240c8400

    invoke-virtual {p0, v2, v3}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->setFaqFetchIntervalLaidback(J)V

    invoke-virtual {p0, v0, v1}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->setChannelsFetchIntervalNormal(J)V

    invoke-virtual {p0, v2, v3}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->setChannelsFetchIntervalLaidback(J)V

    return-void
.end method
