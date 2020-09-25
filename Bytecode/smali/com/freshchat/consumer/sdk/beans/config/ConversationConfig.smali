.class public Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;
    }
.end annotation


# instance fields
.field private activeConvFetchBackoffRatio:D

.field private activeConvWindow:J

.field private launchDeeplinkFromNotification:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActiveConvFetchBackoffRatio()D
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;->activeConvFetchBackoffRatio:D

    return-wide v0
.end method

.method public getActiveConvWindow()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;->activeConvWindow:J

    return-wide v0
.end method

.method public setActiveConvFetchBackoffRatio(D)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;->activeConvFetchBackoffRatio:D

    return-void
.end method

.method public setActiveConvWindow(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;->activeConvWindow:J

    return-void
.end method

.method public setLaunchDeeplinkFromNotification(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;->launchDeeplinkFromNotification:Z

    return-void
.end method

.method public shouldLaunchDeeplinkFromNotification()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;->launchDeeplinkFromNotification:Z

    return v0
.end method
