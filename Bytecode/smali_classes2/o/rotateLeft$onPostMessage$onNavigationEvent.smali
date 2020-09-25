.class final Lo/rotateLeft$onPostMessage$onNavigationEvent;
.super Lo/onMessage;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/rotateLeft$onPostMessage;->ICustomTabsCallback(Lo/getPredecessorKey;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/isValidKey$ICustomTabsCallback;

.field private synthetic onMessageChannelReady:Lo/rotateLeft$onPostMessage;

.field private synthetic onNavigationEvent:Lo/getPredecessorKey;


# direct methods
.method constructor <init>(Lo/rotateLeft$onPostMessage;Lo/isValidKey$ICustomTabsCallback;Lo/getPredecessorKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 591
    iput-object p1, p0, Lo/rotateLeft$onPostMessage$onNavigationEvent;->onMessageChannelReady:Lo/rotateLeft$onPostMessage;

    iput-object p2, p0, Lo/rotateLeft$onPostMessage$onNavigationEvent;->extraCallback:Lo/isValidKey$ICustomTabsCallback;

    iput-object p3, p0, Lo/rotateLeft$onPostMessage$onNavigationEvent;->onNavigationEvent:Lo/getPredecessorKey;

    .line 592
    iget-object p1, p1, Lo/rotateLeft$onPostMessage;->onNavigationEvent:Lo/rotateLeft;

    invoke-static {p1}, Lo/rotateLeft;->onMessageChannelReady(Lo/rotateLeft;)Lo/verifyInsideTransaction;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/onMessage;-><init>(Lo/verifyInsideTransaction;)V

    return-void
.end method


# virtual methods
.method public final onPostMessage()V
    .locals 3

    .line 597
    iget-object v0, p0, Lo/rotateLeft$onPostMessage$onNavigationEvent;->onMessageChannelReady:Lo/rotateLeft$onPostMessage;

    iget-object v0, v0, Lo/rotateLeft$onPostMessage;->onNavigationEvent:Lo/rotateLeft;

    invoke-static {v0}, Lo/rotateLeft;->ICustomTabsCallback(Lo/rotateLeft;)Lo/currentStringRemainingChars;

    invoke-static {}, Lo/freeze;->extraCallback()V

    .line 598
    invoke-static {}, Lo/freeze;->onTransact()V

    .line 1607
    :try_start_0
    iget-object v0, p0, Lo/rotateLeft$onPostMessage$onNavigationEvent;->onMessageChannelReady:Lo/rotateLeft$onPostMessage;

    .line 2577
    iget-boolean v0, v0, Lo/rotateLeft$onPostMessage;->extraCallback:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 1611
    :try_start_1
    iget-object v0, p0, Lo/rotateLeft$onPostMessage$onNavigationEvent;->onMessageChannelReady:Lo/rotateLeft$onPostMessage;

    .line 3577
    iget-object v0, v0, Lo/rotateLeft$onPostMessage;->onMessageChannelReady:Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent;

    .line 1611
    iget-object v1, p0, Lo/rotateLeft$onPostMessage$onNavigationEvent;->onNavigationEvent:Lo/getPredecessorKey;

    invoke-virtual {v0, v1}, Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent;->onHeaders(Lo/getPredecessorKey;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1613
    :try_start_2
    sget-object v1, Lo/emptyMap;->extraCallback:Lo/emptyMap;

    .line 1614
    invoke-virtual {v1, v0}, Lo/emptyMap;->onPostMessage(Ljava/lang/Throwable;)Lo/emptyMap;

    move-result-object v0

    const-string v1, "Failed to read headers"

    invoke-virtual {v0, v1}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v0

    .line 1615
    iget-object v1, p0, Lo/rotateLeft$onPostMessage$onNavigationEvent;->onMessageChannelReady:Lo/rotateLeft$onPostMessage;

    iget-object v1, v1, Lo/rotateLeft$onPostMessage;->onNavigationEvent:Lo/rotateLeft;

    invoke-static {v1}, Lo/rotateLeft;->onPostMessage(Lo/rotateLeft;)Lo/colorFlip;

    move-result-object v1

    invoke-interface {v1, v0}, Lo/colorFlip;->onMessageChannelReady(Lo/emptyMap;)V

    .line 1616
    iget-object v1, p0, Lo/rotateLeft$onPostMessage$onNavigationEvent;->onMessageChannelReady:Lo/rotateLeft$onPostMessage;

    new-instance v2, Lo/getPredecessorKey;

    invoke-direct {v2}, Lo/getPredecessorKey;-><init>()V

    invoke-static {v1, v0, v2}, Lo/rotateLeft$onPostMessage;->ICustomTabsCallback(Lo/rotateLeft$onPostMessage;Lo/emptyMap;Lo/getPredecessorKey;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 602
    :cond_0
    :goto_0
    iget-object v0, p0, Lo/rotateLeft$onPostMessage$onNavigationEvent;->onMessageChannelReady:Lo/rotateLeft$onPostMessage;

    iget-object v0, v0, Lo/rotateLeft$onPostMessage;->onNavigationEvent:Lo/rotateLeft;

    invoke-static {v0}, Lo/rotateLeft;->ICustomTabsCallback(Lo/rotateLeft;)Lo/currentStringRemainingChars;

    invoke-static {}, Lo/freeze;->ICustomTabsCallback()V

    return-void

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lo/rotateLeft$onPostMessage$onNavigationEvent;->onMessageChannelReady:Lo/rotateLeft$onPostMessage;

    iget-object v1, v1, Lo/rotateLeft$onPostMessage;->onNavigationEvent:Lo/rotateLeft;

    invoke-static {v1}, Lo/rotateLeft;->ICustomTabsCallback(Lo/rotateLeft;)Lo/currentStringRemainingChars;

    invoke-static {}, Lo/freeze;->ICustomTabsCallback()V

    throw v0
.end method
