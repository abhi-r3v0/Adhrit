.class public abstract Lcom/google/android/datatransport/runtime/scheduling/SchedulingConfigModule;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onMessageChannelReady(Lo/b;)Lo/ag$2;
    .locals 7

    .line 1100
    new-instance v0, Lo/ag$2$onNavigationEvent;

    invoke-direct {v0}, Lo/ag$2$onNavigationEvent;-><init>()V

    .line 1071
    sget-object v1, Lo/setReferrer;->extraCallback:Lo/setReferrer;

    .line 2047
    new-instance v2, Lo/ac$onPostMessage;

    invoke-direct {v2}, Lo/ac$onPostMessage;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    const-string v4, "Null flags"

    if-eqz v3, :cond_4

    .line 2096
    iput-object v3, v2, Lo/ac$onPostMessage;->onMessageChannelReady:Ljava/util/Set;

    const-wide/16 v5, 0x7530

    .line 1075
    invoke-virtual {v2, v5, v6}, Lo/ag$2$onPostMessage$ICustomTabsCallback;->onNavigationEvent(J)Lo/ag$2$onPostMessage$ICustomTabsCallback;

    move-result-object v2

    .line 1076
    invoke-virtual {v2}, Lo/ag$2$onPostMessage$ICustomTabsCallback;->onNavigationEvent()Lo/ag$2$onPostMessage$ICustomTabsCallback;

    move-result-object v2

    .line 1077
    invoke-virtual {v2}, Lo/ag$2$onPostMessage$ICustomTabsCallback;->onPostMessage()Lo/ag$2$onPostMessage;

    move-result-object v2

    .line 2117
    iget-object v3, v0, Lo/ag$2$onNavigationEvent;->extraCallback:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    sget-object v1, Lo/setReferrer;->onPostMessage:Lo/setReferrer;

    .line 3047
    new-instance v2, Lo/ac$onPostMessage;

    invoke-direct {v2}, Lo/ac$onPostMessage;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 3096
    iput-object v3, v2, Lo/ac$onPostMessage;->onMessageChannelReady:Ljava/util/Set;

    const-wide/16 v5, 0x3e8

    .line 1081
    invoke-virtual {v2, v5, v6}, Lo/ag$2$onPostMessage$ICustomTabsCallback;->onNavigationEvent(J)Lo/ag$2$onPostMessage$ICustomTabsCallback;

    move-result-object v2

    .line 1082
    invoke-virtual {v2}, Lo/ag$2$onPostMessage$ICustomTabsCallback;->onNavigationEvent()Lo/ag$2$onPostMessage$ICustomTabsCallback;

    move-result-object v2

    .line 1083
    invoke-virtual {v2}, Lo/ag$2$onPostMessage$ICustomTabsCallback;->onPostMessage()Lo/ag$2$onPostMessage;

    move-result-object v2

    .line 3117
    iget-object v3, v0, Lo/ag$2$onNavigationEvent;->extraCallback:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1078
    sget-object v1, Lo/setReferrer;->onNavigationEvent:Lo/setReferrer;

    .line 4047
    new-instance v2, Lo/ac$onPostMessage;

    invoke-direct {v2}, Lo/ac$onPostMessage;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 4096
    iput-object v3, v2, Lo/ac$onPostMessage;->onMessageChannelReady:Ljava/util/Set;

    const-wide/32 v3, 0x5265c00

    .line 1087
    invoke-virtual {v2, v3, v4}, Lo/ag$2$onPostMessage$ICustomTabsCallback;->onNavigationEvent(J)Lo/ag$2$onPostMessage$ICustomTabsCallback;

    move-result-object v2

    .line 1088
    invoke-virtual {v2}, Lo/ag$2$onPostMessage$ICustomTabsCallback;->onNavigationEvent()Lo/ag$2$onPostMessage$ICustomTabsCallback;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Lo/ag$2$onMessageChannelReady;

    const/4 v4, 0x0

    sget-object v5, Lo/ag$2$onMessageChannelReady;->extraCallback:Lo/ag$2$onMessageChannelReady;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lo/ag$2$onMessageChannelReady;->onPostMessage:Lo/ag$2$onMessageChannelReady;

    aput-object v5, v3, v4

    .line 4184
    new-instance v4, Ljava/util/HashSet;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 1089
    invoke-virtual {v2, v3}, Lo/ag$2$onPostMessage$ICustomTabsCallback;->onPostMessage(Ljava/util/Set;)Lo/ag$2$onPostMessage$ICustomTabsCallback;

    move-result-object v2

    .line 1090
    invoke-virtual {v2}, Lo/ag$2$onPostMessage$ICustomTabsCallback;->onPostMessage()Lo/ag$2$onPostMessage;

    move-result-object v2

    .line 5117
    iget-object v3, v0, Lo/ag$2$onNavigationEvent;->extraCallback:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6112
    iput-object p0, v0, Lo/ag$2$onNavigationEvent;->onMessageChannelReady:Lo/b;

    .line 6122
    iget-object p0, v0, Lo/ag$2$onNavigationEvent;->onMessageChannelReady:Lo/b;

    if-eqz p0, :cond_1

    .line 6126
    iget-object p0, v0, Lo/ag$2$onNavigationEvent;->extraCallback:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    invoke-static {}, Lo/setReferrer;->values()[Lo/setReferrer;

    move-result-object v1

    array-length v1, v1

    if-lt p0, v1, :cond_0

    .line 6130
    iget-object p0, v0, Lo/ag$2$onNavigationEvent;->extraCallback:Ljava/util/Map;

    .line 6131
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lo/ag$2$onNavigationEvent;->extraCallback:Ljava/util/Map;

    .line 6132
    iget-object v0, v0, Lo/ag$2$onNavigationEvent;->onMessageChannelReady:Lo/b;

    .line 7104
    new-instance v1, Lo/ab$b;

    invoke-direct {v1, v0, p0}, Lo/ab$b;-><init>(Lo/b;Ljava/util/Map;)V

    return-object v1

    .line 6127
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not all priorities have been configured"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6123
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "missing required property: clock"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4094
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3094
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2094
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
