.class public Lcom/freshchat/consumer/sdk/beans/config/DefaultRemoteConfig;
.super Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;


# static fields
.field private static final ENABLED_FEATURES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SESSION_TIMEOUT_DURATION:J = 0x1b7740L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/freshchat/consumer/sdk/beans/config/DefaultRemoteConfig;->ENABLED_FEATURES:Ljava/util/Set;

    sget-object v1, Lcom/freshchat/consumer/sdk/beans/config/Feature;->FAQ:Lcom/freshchat/consumer/sdk/beans/config/Feature;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/freshchat/consumer/sdk/beans/config/DefaultRemoteConfig;->ENABLED_FEATURES:Ljava/util/Set;

    sget-object v1, Lcom/freshchat/consumer/sdk/beans/config/Feature;->INBOX:Lcom/freshchat/consumer/sdk/beans/config/Feature;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->setAccountActive(Z)V

    sget-object v0, Lcom/freshchat/consumer/sdk/beans/config/DefaultRemoteConfig;->ENABLED_FEATURES:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->setEnabledFeatures(Ljava/util/Set;)V

    const-wide/32 v0, 0x1b7740

    invoke-virtual {p0, v0, v1}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->setSessionTimeoutInterval(J)V

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/config/DefaultConversationConfig;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/beans/config/DefaultConversationConfig;-><init>()V

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->setConversationConfig(Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;)V

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/config/DefaultRefreshIntervals;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/beans/config/DefaultRefreshIntervals;-><init>()V

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->setRefreshIntervals(Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;)V

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/config/DefaultCsatConfig;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/beans/config/DefaultCsatConfig;-><init>()V

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->setCsatConfig(Lcom/freshchat/consumer/sdk/beans/config/CsatConfig;)V

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/config/DefaultUserAuthConfig;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/beans/config/DefaultUserAuthConfig;-><init>()V

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->setUserAuthConfig(Lcom/freshchat/consumer/sdk/beans/config/UserAuthConfig;)V

    return-void
.end method
