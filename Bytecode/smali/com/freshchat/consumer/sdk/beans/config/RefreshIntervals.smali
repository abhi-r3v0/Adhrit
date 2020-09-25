.class public Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;
.super Ljava/lang/Object;


# static fields
.field private static final MAX_REMOTE_CONFIG_FETCH_INTERVAL:J = 0x5265c00L


# instance fields
.field private activeConvMaxFetchInterval:J

.field private activeConvMinFetchInterval:J

.field private channelsFetchIntervalLaidback:J

.field private channelsFetchIntervalNormal:J

.field private faqFetchIntervalLaidback:J

.field private faqFetchIntervalNormal:J

.field private msgFetchIntervalLaidback:J

.field private msgFetchIntervalNormal:J

.field private remoteConfigFetchInterval:J

.field private responseTimeExpectationsFetchInterval:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActiveConvMaxFetchInterval()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->activeConvMaxFetchInterval:J

    return-wide v0
.end method

.method public getActiveConvMinFetchInterval()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->activeConvMinFetchInterval:J

    return-wide v0
.end method

.method public getChannelsFetchIntervalLaidback()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->channelsFetchIntervalLaidback:J

    return-wide v0
.end method

.method public getChannelsFetchIntervalNormal()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->channelsFetchIntervalNormal:J

    return-wide v0
.end method

.method public getFaqFetchIntervalLaidback()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->faqFetchIntervalLaidback:J

    return-wide v0
.end method

.method public getFaqFetchIntervalNormal()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->faqFetchIntervalNormal:J

    return-wide v0
.end method

.method public getMsgFetchIntervalLaidback()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->msgFetchIntervalLaidback:J

    return-wide v0
.end method

.method public getMsgFetchIntervalNormal()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->msgFetchIntervalNormal:J

    return-wide v0
.end method

.method public getRemoteConfigFetchInterval()J
    .locals 4

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->remoteConfigFetchInterval:J

    const-wide/32 v2, 0x5265c00

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getResponseTimeExpectationsFetchInterval()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->responseTimeExpectationsFetchInterval:J

    return-wide v0
.end method

.method public setActiveConvMaxFetchInterval(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->activeConvMaxFetchInterval:J

    return-void
.end method

.method public setActiveConvMinFetchInterval(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->activeConvMinFetchInterval:J

    return-void
.end method

.method public setChannelsFetchIntervalLaidback(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->channelsFetchIntervalLaidback:J

    return-void
.end method

.method public setChannelsFetchIntervalNormal(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->channelsFetchIntervalNormal:J

    return-void
.end method

.method public setFaqFetchIntervalLaidback(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->faqFetchIntervalLaidback:J

    return-void
.end method

.method public setFaqFetchIntervalNormal(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->faqFetchIntervalNormal:J

    return-void
.end method

.method public setMsgFetchIntervalLaidback(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->msgFetchIntervalLaidback:J

    return-void
.end method

.method public setMsgFetchIntervalNormal(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->msgFetchIntervalNormal:J

    return-void
.end method

.method public setRemoteConfigFetchInterval(J)V
    .locals 2

    const-wide/32 v0, 0x5265c00

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->remoteConfigFetchInterval:J

    return-void
.end method

.method public setResponseTimeExpectationsFetchInterval(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->responseTimeExpectationsFetchInterval:J

    return-void
.end method
