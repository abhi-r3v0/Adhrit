.class final Lo/getCompoundHash$extraCommand;
.super Lo/pruneCache;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCompoundHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "extraCommand"
.end annotation


# instance fields
.field private final onMessageChannelReady:Ljava/lang/String;

.field private synthetic onNavigationEvent:Lo/getCompoundHash;


# direct methods
.method private constructor <init>(Lo/getCompoundHash;Ljava/lang/String;)V
    .locals 0

    .line 882
    iput-object p1, p0, Lo/getCompoundHash$extraCommand;->onNavigationEvent:Lo/getCompoundHash;

    invoke-direct {p0}, Lo/pruneCache;-><init>()V

    if-eqz p2, :cond_0

    .line 883
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lo/getCompoundHash$extraCommand;->onMessageChannelReady:Ljava/lang/String;

    return-void

    .line 1910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "authority"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lo/getCompoundHash;Ljava/lang/String;B)V
    .locals 0

    .line 877
    invoke-direct {p0, p1, p2}, Lo/getCompoundHash$extraCommand;-><init>(Lo/getCompoundHash;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final extraCallback()Ljava/lang/String;
    .locals 1

    .line 904
    iget-object v0, p0, Lo/getCompoundHash$extraCommand;->onMessageChannelReady:Ljava/lang/String;

    return-object v0
.end method

.method public final onPostMessage(Lo/reverseIterator;Lo/deleteTrackedQuery;)Lo/resetPreviouslyActiveTrackedQueries;
    .locals 9
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
            ")",
            "Lo/resetPreviouslyActiveTrackedQueries<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 889
    new-instance v8, Lo/rotateLeft;

    iget-object v0, p0, Lo/getCompoundHash$extraCommand;->onNavigationEvent:Lo/getCompoundHash;

    .line 891
    invoke-static {v0, p2}, Lo/getCompoundHash;->onMessageChannelReady(Lo/getCompoundHash;Lo/deleteTrackedQuery;)Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v0, p0, Lo/getCompoundHash$extraCommand;->onNavigationEvent:Lo/getCompoundHash;

    .line 893
    invoke-static {v0}, Lo/getCompoundHash;->cancelAll(Lo/getCompoundHash;)Lo/rotateLeft$onMessageChannelReady;

    move-result-object v4

    .line 894
    iget-object v0, p0, Lo/getCompoundHash$extraCommand;->onNavigationEvent:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->notify(Lo/getCompoundHash;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/getCompoundHash$extraCommand;->onNavigationEvent:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->postMessage(Lo/getCompoundHash;)Lo/fixUp;

    move-result-object v0

    invoke-interface {v0}, Lo/fixUp;->onPostMessage()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    :goto_0
    move-object v5, v0

    iget-object v0, p0, Lo/getCompoundHash$extraCommand;->onNavigationEvent:Lo/getCompoundHash;

    .line 895
    invoke-static {v0}, Lo/getCompoundHash;->ICustomTabsCallback(Lo/getCompoundHash;)Lo/moveRedLeft;

    move-result-object v6

    iget-object v0, p0, Lo/getCompoundHash$extraCommand;->onNavigationEvent:Lo/getCompoundHash;

    .line 896
    invoke-static {v0}, Lo/getCompoundHash;->warmup(Lo/getCompoundHash;)Z

    move-result v7

    move-object v0, v8

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lo/rotateLeft;-><init>(Lo/reverseIterator;Ljava/util/concurrent/Executor;Lo/deleteTrackedQuery;Lo/rotateLeft$onMessageChannelReady;Ljava/util/concurrent/ScheduledExecutorService;Lo/moveRedLeft;Z)V

    iget-object p1, p0, Lo/getCompoundHash$extraCommand;->onNavigationEvent:Lo/getCompoundHash;

    .line 897
    invoke-static {p1}, Lo/getCompoundHash;->IPostMessageService(Lo/getCompoundHash;)Z

    move-result p1

    .line 2167
    iput-boolean p1, v8, Lo/rotateLeft;->onPostMessage:Z

    .line 897
    iget-object p1, p0, Lo/getCompoundHash$extraCommand;->onNavigationEvent:Lo/getCompoundHash;

    .line 898
    invoke-static {p1}, Lo/getCompoundHash;->ICustomTabsService$Stub(Lo/getCompoundHash;)Lo/loadNestedQuery;

    move-result-object p1

    .line 2172
    iput-object p1, v8, Lo/rotateLeft;->ICustomTabsCallback:Lo/loadNestedQuery;

    .line 898
    iget-object p1, p0, Lo/getCompoundHash$extraCommand;->onNavigationEvent:Lo/getCompoundHash;

    .line 899
    invoke-static {p1}, Lo/getCompoundHash;->ICustomTabsService$Stub$Proxy(Lo/getCompoundHash;)Lo/removeAllUserWrites;

    move-result-object p1

    .line 2177
    iput-object p1, v8, Lo/rotateLeft;->onMessageChannelReady:Lo/removeAllUserWrites;

    return-object v8
.end method
