.class public final Lo/onControlMessage;
.super Lo/isInterrupted;
.source ""


# instance fields
.field private ICustomTabsCallback:Z

.field private final extraCallback:Lo/rotateRight$extraCallback;

.field private final onNavigationEvent:Lo/emptyMap;


# direct methods
.method public constructor <init>(Lo/emptyMap;)V
    .locals 1

    .line 38
    sget-object v0, Lo/rotateRight$extraCallback;->onPostMessage:Lo/rotateRight$extraCallback;

    invoke-direct {p0, p1, v0}, Lo/onControlMessage;-><init>(Lo/emptyMap;Lo/rotateRight$extraCallback;)V

    return-void
.end method

.method public constructor <init>(Lo/emptyMap;Lo/rotateRight$extraCallback;)V
    .locals 3

    .line 44
    invoke-direct {p0}, Lo/isInterrupted;-><init>()V

    .line 1516
    sget-object v0, Lo/emptyMap$onPostMessage;->onMessageChannelReady:Lo/emptyMap$onPostMessage;

    iget-object v1, p1, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 46
    iput-object p1, p0, Lo/onControlMessage;->onNavigationEvent:Lo/emptyMap;

    .line 47
    iput-object p2, p0, Lo/onControlMessage;->extraCallback:Lo/rotateRight$extraCallback;

    return-void

    .line 2142
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "error must not be OK"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/assertValidTrackedQuery$onPostMessage;)V
    .locals 2

    .line 64
    iget-object v0, p0, Lo/onControlMessage;->onNavigationEvent:Lo/emptyMap;

    const-string v1, "error"

    invoke-virtual {p1, v1, v0}, Lo/assertValidTrackedQuery$onPostMessage;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Object;)Lo/assertValidTrackedQuery$onPostMessage;

    move-result-object p1

    iget-object v0, p0, Lo/onControlMessage;->extraCallback:Lo/rotateRight$extraCallback;

    const-string v1, "progress"

    invoke-virtual {p1, v1, v0}, Lo/assertValidTrackedQuery$onPostMessage;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Object;)Lo/assertValidTrackedQuery$onPostMessage;

    return-void
.end method

.method public final onPostMessage(Lo/rotateRight;)V
    .locals 3

    .line 52
    iget-boolean v0, p0, Lo/onControlMessage;->ICustomTabsCallback:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 53
    iput-boolean v1, p0, Lo/onControlMessage;->ICustomTabsCallback:Z

    .line 54
    iget-object v0, p0, Lo/onControlMessage;->onNavigationEvent:Lo/emptyMap;

    iget-object v1, p0, Lo/onControlMessage;->extraCallback:Lo/rotateRight$extraCallback;

    new-instance v2, Lo/getPredecessorKey;

    invoke-direct {v2}, Lo/getPredecessorKey;-><init>()V

    invoke-interface {p1, v0, v1, v2}, Lo/rotateRight;->onNavigationEvent(Lo/emptyMap;Lo/rotateRight$extraCallback;Lo/getPredecessorKey;)V

    return-void

    .line 2511
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "already started"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
