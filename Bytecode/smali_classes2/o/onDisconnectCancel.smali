.class final Lo/onDisconnectCancel;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onDisconnectCancel$extraCallback;
    }
.end annotation


# instance fields
.field final extraCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/onDisconnectCancel$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field final onMessageChannelReady:Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;

.field final onNavigationEvent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/onDisconnectCancel$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field final onPostMessage:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/util/Map;Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/onDisconnectCancel$extraCallback;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/onDisconnectCancel$extraCallback;",
            ">;",
            "Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lo/onDisconnectCancel;->onNavigationEvent:Ljava/util/Map;

    .line 53
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lo/onDisconnectCancel;->extraCallback:Ljava/util/Map;

    .line 54
    iput-object p3, p0, Lo/onDisconnectCancel;->onMessageChannelReady:Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;

    .line 55
    iput-object p4, p0, Lo/onDisconnectCancel;->onPostMessage:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_a

    .line 159
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_8

    .line 162
    :cond_1
    check-cast p1, Lo/onDisconnectCancel;

    .line 163
    iget-object v2, p0, Lo/onDisconnectCancel;->onNavigationEvent:Ljava/util/Map;

    iget-object v3, p1, Lo/onDisconnectCancel;->onNavigationEvent:Ljava/util/Map;

    if-eq v2, v3, :cond_3

    if-eqz v2, :cond_2

    .line 1052
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_a

    .line 163
    iget-object v2, p0, Lo/onDisconnectCancel;->extraCallback:Ljava/util/Map;

    iget-object v3, p1, Lo/onDisconnectCancel;->extraCallback:Ljava/util/Map;

    if-eq v2, v3, :cond_5

    if-eqz v2, :cond_4

    .line 2052
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v2, 0x1

    :goto_3
    if-eqz v2, :cond_a

    .line 164
    iget-object v2, p0, Lo/onDisconnectCancel;->onMessageChannelReady:Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;

    iget-object v3, p1, Lo/onDisconnectCancel;->onMessageChannelReady:Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;

    if-eq v2, v3, :cond_7

    if-eqz v2, :cond_6

    .line 3052
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v2, 0x1

    :goto_5
    if-eqz v2, :cond_a

    .line 165
    iget-object v2, p0, Lo/onDisconnectCancel;->onPostMessage:Ljava/lang/Object;

    iget-object p1, p1, Lo/onDisconnectCancel;->onPostMessage:Ljava/lang/Object;

    if-eq v2, p1, :cond_9

    if-eqz v2, :cond_8

    .line 4052
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_6

    :cond_8
    const/4 p1, 0x0

    goto :goto_7

    :cond_9
    :goto_6
    const/4 p1, 0x1

    :goto_7
    if-eqz p1, :cond_a

    return v0

    :cond_a
    :goto_8
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 171
    iget-object v1, p0, Lo/onDisconnectCancel;->onNavigationEvent:Ljava/util/Map;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/onDisconnectCancel;->extraCallback:Ljava/util/Map;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/onDisconnectCancel;->onMessageChannelReady:Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/onDisconnectCancel;->onPostMessage:Ljava/lang/Object;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 4077
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 4105
    new-instance v0, Lo/buildAppRequest$onPostMessage;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/buildAppRequest$onPostMessage;-><init>(Ljava/lang/String;B)V

    .line 176
    iget-object v1, p0, Lo/onDisconnectCancel;->onNavigationEvent:Ljava/util/Map;

    const-string v2, "serviceMethodMap"

    .line 177
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/onDisconnectCancel;->extraCallback:Ljava/util/Map;

    const-string v2, "serviceMap"

    .line 178
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/onDisconnectCancel;->onMessageChannelReady:Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;

    const-string v2, "retryThrottling"

    .line 179
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/onDisconnectCancel;->onPostMessage:Ljava/lang/Object;

    const-string v2, "loadBalancingConfig"

    .line 180
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
