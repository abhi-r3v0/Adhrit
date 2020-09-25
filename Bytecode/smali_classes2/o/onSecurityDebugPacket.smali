.class final Lo/onSecurityDebugPacket;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/loadTrackedQueryKeys;


# static fields
.field static final extraCallback:Lo/deleteTrackedQuery$onMessageChannelReady;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/deleteTrackedQuery$onMessageChannelReady<",
            "Lo/sendUnlisten$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field

.field static final onNavigationEvent:Lo/deleteTrackedQuery$onMessageChannelReady;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/deleteTrackedQuery$onMessageChannelReady<",
            "Lo/getSslCacheDirectory$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lo/onDisconnectCancel;",
            ">;"
        }
    .end annotation
.end field

.field volatile onMessageChannelReady:Z

.field private final onPostMessage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 6291
    new-instance v0, Lo/deleteTrackedQuery$onMessageChannelReady;

    const-string v1, "internal-retry-policy"

    invoke-direct {v0, v1}, Lo/deleteTrackedQuery$onMessageChannelReady;-><init>(Ljava/lang/String;)V

    .line 59
    sput-object v0, Lo/onSecurityDebugPacket;->extraCallback:Lo/deleteTrackedQuery$onMessageChannelReady;

    .line 7291
    new-instance v0, Lo/deleteTrackedQuery$onMessageChannelReady;

    const-string v1, "internal-hedging-policy"

    invoke-direct {v0, v1}, Lo/deleteTrackedQuery$onMessageChannelReady;-><init>(Ljava/lang/String;)V

    .line 61
    sput-object v0, Lo/onSecurityDebugPacket;->onNavigationEvent:Lo/deleteTrackedQuery$onMessageChannelReady;

    return-void
.end method

.method constructor <init>(Z)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lo/onSecurityDebugPacket;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReference;

    .line 50
    iput-boolean p1, p0, Lo/onSecurityDebugPacket;->onPostMessage:Z

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/onSecurityDebugPacket;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lo/onSecurityDebugPacket;->onMessageChannelReady:Z

    return p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/reverseIterator;Lo/deleteTrackedQuery;Lo/pruneCache;)Lo/resetPreviouslyActiveTrackedQueries;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/reverseIterator<",
            "TReqT;TRespT;>;",
            "Lo/deleteTrackedQuery;",
            "Lo/pruneCache;",
            ")",
            "Lo/resetPreviouslyActiveTrackedQueries<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 66
    iget-boolean v0, p0, Lo/onSecurityDebugPacket;->onPostMessage:Z

    if-eqz v0, :cond_6

    .line 67
    iget-boolean v0, p0, Lo/onSecurityDebugPacket;->onMessageChannelReady:Z

    if-eqz v0, :cond_5

    .line 1190
    invoke-virtual {p0, p1}, Lo/onSecurityDebugPacket;->onNavigationEvent(Lo/reverseIterator;)Lo/onDisconnectCancel$extraCallback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1191
    sget-object v0, Lo/sendUnlisten;->ICustomTabsCallback$Stub:Lo/sendUnlisten;

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lo/onDisconnectCancel$extraCallback;->ICustomTabsCallback:Lo/sendUnlisten;

    .line 1196
    :goto_0
    invoke-virtual {p0, p1}, Lo/onSecurityDebugPacket;->onNavigationEvent(Lo/reverseIterator;)Lo/onDisconnectCancel$extraCallback;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1197
    sget-object v1, Lo/getSslCacheDirectory;->extraCallback:Lo/getSslCacheDirectory;

    goto :goto_1

    :cond_1
    iget-object v1, v1, Lo/onDisconnectCancel$extraCallback;->asInterface:Lo/getSslCacheDirectory;

    .line 84
    :goto_1
    sget-object v2, Lo/sendUnlisten;->ICustomTabsCallback$Stub:Lo/sendUnlisten;

    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_3

    sget-object v2, Lo/getSslCacheDirectory;->extraCallback:Lo/getSslCacheDirectory;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v2, 0x1

    :goto_3
    if-eqz v2, :cond_4

    .line 88
    sget-object v2, Lo/onSecurityDebugPacket;->extraCallback:Lo/deleteTrackedQuery$onMessageChannelReady;

    new-instance v3, Lo/onSecurityDebugPacket$onNavigationEvent;

    invoke-direct {v3, v0}, Lo/onSecurityDebugPacket$onNavigationEvent;-><init>(Lo/sendUnlisten;)V

    .line 89
    invoke-virtual {p2, v2, v3}, Lo/deleteTrackedQuery;->onPostMessage(Lo/deleteTrackedQuery$onMessageChannelReady;Ljava/lang/Object;)Lo/deleteTrackedQuery;

    move-result-object p2

    sget-object v0, Lo/onSecurityDebugPacket;->onNavigationEvent:Lo/deleteTrackedQuery$onMessageChannelReady;

    new-instance v2, Lo/onSecurityDebugPacket$extraCallback;

    invoke-direct {v2, v1}, Lo/onSecurityDebugPacket$extraCallback;-><init>(Lo/getSslCacheDirectory;)V

    .line 90
    invoke-virtual {p2, v0, v2}, Lo/deleteTrackedQuery;->onPostMessage(Lo/deleteTrackedQuery$onMessageChannelReady;Ljava/lang/Object;)Lo/deleteTrackedQuery;

    move-result-object p2

    goto :goto_4

    .line 2183
    :cond_4
    new-instance p2, Lcom/google/common/base/VerifyException;

    new-array p3, v4, [Ljava/lang/Object;

    aput-object p1, p3, v3

    const-string p1, "Can not apply both retry and hedging policy for the method \'%s\'"

    invoke-static {p1, p3}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/common/base/VerifyException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 129
    :cond_5
    sget-object v0, Lo/onSecurityDebugPacket;->extraCallback:Lo/deleteTrackedQuery$onMessageChannelReady;

    new-instance v1, Lo/onSecurityDebugPacket$onPostMessage;

    invoke-direct {v1, p0, p1}, Lo/onSecurityDebugPacket$onPostMessage;-><init>(Lo/onSecurityDebugPacket;Lo/reverseIterator;)V

    .line 130
    invoke-virtual {p2, v0, v1}, Lo/deleteTrackedQuery;->onPostMessage(Lo/deleteTrackedQuery$onMessageChannelReady;Ljava/lang/Object;)Lo/deleteTrackedQuery;

    move-result-object p2

    sget-object v0, Lo/onSecurityDebugPacket;->onNavigationEvent:Lo/deleteTrackedQuery$onMessageChannelReady;

    new-instance v1, Lo/onSecurityDebugPacket$onMessageChannelReady;

    invoke-direct {v1, p0, p1}, Lo/onSecurityDebugPacket$onMessageChannelReady;-><init>(Lo/onSecurityDebugPacket;Lo/reverseIterator;)V

    .line 131
    invoke-virtual {p2, v0, v1}, Lo/deleteTrackedQuery;->onPostMessage(Lo/deleteTrackedQuery$onMessageChannelReady;Ljava/lang/Object;)Lo/deleteTrackedQuery;

    move-result-object p2

    .line 135
    :cond_6
    :goto_4
    invoke-virtual {p0, p1}, Lo/onSecurityDebugPacket;->onNavigationEvent(Lo/reverseIterator;)Lo/onDisconnectCancel$extraCallback;

    move-result-object v0

    if-nez v0, :cond_7

    .line 137
    invoke-virtual {p3, p1, p2}, Lo/pruneCache;->onPostMessage(Lo/reverseIterator;Lo/deleteTrackedQuery;)Lo/resetPreviouslyActiveTrackedQueries;

    move-result-object p1

    return-object p1

    .line 140
    :cond_7
    iget-object v1, v0, Lo/onDisconnectCancel$extraCallback;->onMessageChannelReady:Ljava/lang/Long;

    if-eqz v1, :cond_9

    .line 141
    iget-object v1, v0, Lo/onDisconnectCancel$extraCallback;->onMessageChannelReady:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v3}, Lo/saveNode;->extraCallback(JLjava/util/concurrent/TimeUnit;)Lo/saveNode;

    move-result-object v1

    .line 3148
    iget-object v2, p2, Lo/deleteTrackedQuery;->ICustomTabsCallback:Lo/saveNode;

    if-eqz v2, :cond_8

    .line 144
    invoke-virtual {v1, v2}, Lo/saveNode;->onNavigationEvent(Lo/saveNode;)I

    move-result v2

    if-gez v2, :cond_9

    .line 4130
    :cond_8
    new-instance v2, Lo/deleteTrackedQuery;

    invoke-direct {v2, p2}, Lo/deleteTrackedQuery;-><init>(Lo/deleteTrackedQuery;)V

    .line 4131
    iput-object v1, v2, Lo/deleteTrackedQuery;->ICustomTabsCallback:Lo/saveNode;

    move-object p2, v2

    .line 148
    :cond_9
    iget-object v1, v0, Lo/onDisconnectCancel$extraCallback;->onPostMessage:Ljava/lang/Boolean;

    if-eqz v1, :cond_b

    .line 150
    iget-object v1, v0, Lo/onDisconnectCancel$extraCallback;->onPostMessage:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 4157
    new-instance v1, Lo/deleteTrackedQuery;

    invoke-direct {v1, p2}, Lo/deleteTrackedQuery;-><init>(Lo/deleteTrackedQuery;)V

    .line 4158
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p2, v1, Lo/deleteTrackedQuery;->asBinder:Ljava/lang/Boolean;

    goto :goto_5

    .line 4167
    :cond_a
    new-instance v1, Lo/deleteTrackedQuery;

    invoke-direct {v1, p2}, Lo/deleteTrackedQuery;-><init>(Lo/deleteTrackedQuery;)V

    .line 4168
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p2, v1, Lo/deleteTrackedQuery;->asBinder:Ljava/lang/Boolean;

    :goto_5
    move-object p2, v1

    .line 152
    :cond_b
    iget-object v1, v0, Lo/onDisconnectCancel$extraCallback;->onNavigationEvent:Ljava/lang/Integer;

    if-eqz v1, :cond_d

    .line 4409
    iget-object v1, p2, Lo/deleteTrackedQuery;->onTransact:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    .line 156
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v2, v0, Lo/onDisconnectCancel$extraCallback;->onNavigationEvent:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 155
    invoke-virtual {p2, v1}, Lo/deleteTrackedQuery;->onMessageChannelReady(I)Lo/deleteTrackedQuery;

    move-result-object p2

    goto :goto_6

    .line 158
    :cond_c
    iget-object v1, v0, Lo/onDisconnectCancel$extraCallback;->onNavigationEvent:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p2, v1}, Lo/deleteTrackedQuery;->onMessageChannelReady(I)Lo/deleteTrackedQuery;

    move-result-object p2

    .line 161
    :cond_d
    :goto_6
    iget-object v1, v0, Lo/onDisconnectCancel$extraCallback;->extraCallback:Ljava/lang/Integer;

    if-eqz v1, :cond_f

    .line 4418
    iget-object v1, p2, Lo/deleteTrackedQuery;->ICustomTabsCallback$Stub:Ljava/lang/Integer;

    if-eqz v1, :cond_e

    .line 165
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v0, v0, Lo/onDisconnectCancel$extraCallback;->extraCallback:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 164
    invoke-virtual {p2, v0}, Lo/deleteTrackedQuery;->onNavigationEvent(I)Lo/deleteTrackedQuery;

    move-result-object p2

    goto :goto_7

    .line 167
    :cond_e
    iget-object v0, v0, Lo/onDisconnectCancel$extraCallback;->extraCallback:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lo/deleteTrackedQuery;->onNavigationEvent(I)Lo/deleteTrackedQuery;

    move-result-object p2

    .line 171
    :cond_f
    :goto_7
    invoke-virtual {p3, p1, p2}, Lo/pruneCache;->onPostMessage(Lo/reverseIterator;Lo/deleteTrackedQuery;)Lo/resetPreviouslyActiveTrackedQueries;

    move-result-object p1

    return-object p1
.end method

.method final onNavigationEvent(Lo/reverseIterator;)Lo/onDisconnectCancel$extraCallback;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/reverseIterator<",
            "**>;)",
            "Lo/onDisconnectCancel$extraCallback;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lo/onSecurityDebugPacket;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/onDisconnectCancel;

    if-eqz v0, :cond_0

    .line 5140
    iget-object v1, v0, Lo/onDisconnectCancel;->onNavigationEvent:Ljava/util/Map;

    .line 5253
    iget-object v2, p1, Lo/reverseIterator;->extraCallback:Ljava/lang/String;

    .line 179
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/onDisconnectCancel$extraCallback;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 5264
    iget-object p1, p1, Lo/reverseIterator;->onPostMessage:Ljava/lang/String;

    .line 6133
    iget-object v0, v0, Lo/onDisconnectCancel;->extraCallback:Ljava/util/Map;

    .line 183
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lo/onDisconnectCancel$extraCallback;

    :cond_1
    return-object v1
.end method
