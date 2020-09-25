.class final Lo/sendData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/moveRedRight;


# instance fields
.field final extraCallback:Lo/emptyMap;

.field private final onPostMessage:Lo/rotateRight$extraCallback;


# direct methods
.method constructor <init>(Lo/emptyMap;Lo/rotateRight$extraCallback;)V
    .locals 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 42
    iput-object p1, p0, Lo/sendData;->extraCallback:Lo/emptyMap;

    .line 43
    iput-object p2, p0, Lo/sendData;->onPostMessage:Lo/rotateRight$extraCallback;

    return-void

    .line 2142
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "error must not be OK"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/buildAncestorWhereClause;
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not a real transport"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ICustomTabsCallback(Lo/moveRedRight$onPostMessage;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 54
    new-instance v0, Lo/sendData$1;

    invoke-direct {v0, p0, p1}, Lo/sendData$1;-><init>(Lo/sendData;Lo/moveRedRight$onPostMessage;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onNavigationEvent(Lo/reverseIterator;Lo/getPredecessorKey;Lo/deleteTrackedQuery;)Lo/colorFlip;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/reverseIterator<",
            "**>;",
            "Lo/getPredecessorKey;",
            "Lo/deleteTrackedQuery;",
            ")",
            "Lo/colorFlip;"
        }
    .end annotation

    .line 49
    new-instance p1, Lo/onControlMessage;

    iget-object p2, p0, Lo/sendData;->extraCallback:Lo/emptyMap;

    iget-object p3, p0, Lo/sendData;->onPostMessage:Lo/rotateRight$extraCallback;

    invoke-direct {p1, p2, p3}, Lo/onControlMessage;-><init>(Lo/emptyMap;Lo/rotateRight$extraCallback;)V

    return-object p1
.end method
