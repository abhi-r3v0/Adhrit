.class final Lo/shouldContinue;
.super Lo/saveTrackedQueryKeys;
.source ""


# instance fields
.field private final onNavigationEvent:Lo/oppositeColor;

.field private final onPostMessage:Lo/sendUnauth;


# direct methods
.method constructor <init>(Lo/oppositeColor;Lo/sendUnauth;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lo/saveTrackedQueryKeys;-><init>()V

    if-eqz p1, :cond_1

    .line 33
    check-cast p1, Lo/oppositeColor;

    iput-object p1, p0, Lo/shouldContinue;->onNavigationEvent:Lo/oppositeColor;

    if-eqz p2, :cond_0

    .line 34
    check-cast p2, Lo/sendUnauth;

    iput-object p2, p0, Lo/shouldContinue;->onPostMessage:Lo/sendUnauth;

    return-void

    .line 2910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "time"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1910
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "tracer"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static onMessageChannelReady(Lo/saveTrackedQueryKeys$extraCallback;)Ljava/util/logging/Level;
    .locals 1

    .line 98
    sget-object v0, Lo/shouldContinue$3;->onPostMessage:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 104
    sget-object p0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    return-object p0

    .line 102
    :cond_0
    sget-object p0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    return-object p0

    .line 100
    :cond_1
    sget-object p0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    return-object p0
.end method


# virtual methods
.method public final extraCallback(Lo/saveTrackedQueryKeys$extraCallback;Ljava/lang/String;)V
    .locals 3

    .line 39
    iget-object v0, p0, Lo/shouldContinue;->onNavigationEvent:Lo/oppositeColor;

    .line 3136
    iget-object v0, v0, Lo/oppositeColor;->onMessageChannelReady:Lo/buildAncestorWhereClause;

    .line 4056
    invoke-static {p1}, Lo/shouldContinue;->onMessageChannelReady(Lo/saveTrackedQueryKeys$extraCallback;)Ljava/util/logging/Level;

    move-result-object v1

    .line 4057
    sget-object v2, Lo/oppositeColor;->onPostMessage:Ljava/util/logging/Logger;

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4058
    invoke-static {v0, v1, p2}, Lo/oppositeColor;->onNavigationEvent(Lo/buildAncestorWhereClause;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 4072
    :cond_0
    sget-object v0, Lo/saveTrackedQueryKeys$extraCallback;->ICustomTabsCallback:Lo/saveTrackedQueryKeys$extraCallback;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lo/shouldContinue;->onNavigationEvent:Lo/oppositeColor;

    invoke-virtual {v0}, Lo/oppositeColor;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 4076
    sget-object v0, Lo/saveTrackedQueryKeys$extraCallback;->ICustomTabsCallback:Lo/saveTrackedQueryKeys$extraCallback;

    if-eq p1, v0, :cond_4

    .line 4079
    iget-object v0, p0, Lo/shouldContinue;->onNavigationEvent:Lo/oppositeColor;

    new-instance v2, Lo/serializeObject$onMessageChannelReady$onPostMessage$onMessageChannelReady;

    invoke-direct {v2}, Lo/serializeObject$onMessageChannelReady$onPostMessage$onMessageChannelReady;-><init>()V

    .line 4581
    iput-object p2, v2, Lo/serializeObject$onMessageChannelReady$onPostMessage$onMessageChannelReady;->onPostMessage:Ljava/lang/String;

    .line 5087
    sget-object p2, Lo/shouldContinue$3;->onPostMessage:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    if-eq p1, v1, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    .line 5093
    sget-object p1, Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;->onPostMessage:Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;

    goto :goto_1

    .line 5091
    :cond_2
    sget-object p1, Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;->onMessageChannelReady:Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;

    goto :goto_1

    .line 5089
    :cond_3
    sget-object p1, Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;->ICustomTabsCallback:Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;

    .line 5591
    :goto_1
    iput-object p1, v2, Lo/serializeObject$onMessageChannelReady$onPostMessage$onMessageChannelReady;->extraCallback:Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;

    .line 4081
    iget-object p1, p0, Lo/shouldContinue;->onPostMessage:Lo/sendUnauth;

    .line 4082
    invoke-interface {p1}, Lo/sendUnauth;->onMessageChannelReady()J

    move-result-wide p1

    .line 6586
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v2, Lo/serializeObject$onMessageChannelReady$onPostMessage$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/Long;

    .line 4083
    invoke-virtual {v2}, Lo/serializeObject$onMessageChannelReady$onPostMessage$onMessageChannelReady;->onPostMessage()Lo/serializeObject$onMessageChannelReady$onPostMessage;

    move-result-object p1

    .line 4079
    invoke-virtual {v0, p1}, Lo/oppositeColor;->ICustomTabsCallback(Lo/serializeObject$onMessageChannelReady$onPostMessage;)V

    :cond_4
    return-void
.end method

.method public final varargs extraCallback(Lo/saveTrackedQueryKeys$extraCallback;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 48
    invoke-static {p1}, Lo/shouldContinue;->onMessageChannelReady(Lo/saveTrackedQueryKeys$extraCallback;)Ljava/util/logging/Level;

    move-result-object v0

    .line 7072
    sget-object v1, Lo/saveTrackedQueryKeys$extraCallback;->ICustomTabsCallback:Lo/saveTrackedQueryKeys$extraCallback;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lo/shouldContinue;->onNavigationEvent:Lo/oppositeColor;

    invoke-virtual {v1}, Lo/oppositeColor;->onMessageChannelReady()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 49
    sget-object v1, Lo/oppositeColor;->onPostMessage:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    goto :goto_2

    .line 50
    :cond_2
    :goto_1
    invoke-static {p2, p3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 52
    :goto_2
    invoke-virtual {p0, p1, p2}, Lo/saveTrackedQueryKeys;->extraCallback(Lo/saveTrackedQueryKeys$extraCallback;Ljava/lang/String;)V

    return-void
.end method
