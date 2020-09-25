.class public Lcom/freshchat/consumer/sdk/beans/config/DefaultConversationConfig;
.super Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;


# static fields
.field private static final ACTIVE_CONV_FETCH_BACKOFF_RATIO:D = 1.25

.field private static final ACTIVE_CONV_WINDOW:J = 0xf731400L

.field private static final LAUNCH_DEEPLINK_FROM_NOTIFICATION:Z = true


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;-><init>()V

    const-wide/32 v0, 0xf731400

    invoke-virtual {p0, v0, v1}, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;->setActiveConvWindow(J)V

    const-wide/high16 v0, 0x3ff4000000000000L    # 1.25

    invoke-virtual {p0, v0, v1}, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;->setActiveConvFetchBackoffRatio(D)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;->setLaunchDeeplinkFromNotification(Z)V

    return-void
.end method
