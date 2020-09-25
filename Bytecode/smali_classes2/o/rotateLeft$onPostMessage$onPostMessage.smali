.class final Lo/rotateLeft$onPostMessage$onPostMessage;
.super Lo/onMessage;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/rotateLeft$onPostMessage;->extraCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "onPostMessage"
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/isValidKey$ICustomTabsCallback;

.field private synthetic onMessageChannelReady:Lo/rotateLeft$onPostMessage;


# direct methods
.method constructor <init>(Lo/rotateLeft$onPostMessage;Lo/isValidKey$ICustomTabsCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 768
    iput-object p1, p0, Lo/rotateLeft$onPostMessage$onPostMessage;->onMessageChannelReady:Lo/rotateLeft$onPostMessage;

    iput-object p2, p0, Lo/rotateLeft$onPostMessage$onPostMessage;->extraCallback:Lo/isValidKey$ICustomTabsCallback;

    .line 769
    iget-object p1, p1, Lo/rotateLeft$onPostMessage;->onNavigationEvent:Lo/rotateLeft;

    invoke-static {p1}, Lo/rotateLeft;->onMessageChannelReady(Lo/rotateLeft;)Lo/verifyInsideTransaction;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/onMessage;-><init>(Lo/verifyInsideTransaction;)V

    return-void
.end method


# virtual methods
.method public final onPostMessage()V
    .locals 3

    .line 774
    iget-object v0, p0, Lo/rotateLeft$onPostMessage$onPostMessage;->onMessageChannelReady:Lo/rotateLeft$onPostMessage;

    iget-object v0, v0, Lo/rotateLeft$onPostMessage;->onNavigationEvent:Lo/rotateLeft;

    invoke-static {v0}, Lo/rotateLeft;->ICustomTabsCallback(Lo/rotateLeft;)Lo/currentStringRemainingChars;

    invoke-static {}, Lo/freeze;->extraCallback()V

    .line 775
    invoke-static {}, Lo/freeze;->onTransact()V

    .line 1785
    :try_start_0
    iget-object v0, p0, Lo/rotateLeft$onPostMessage$onPostMessage;->onMessageChannelReady:Lo/rotateLeft$onPostMessage;

    .line 2577
    iget-object v0, v0, Lo/rotateLeft$onPostMessage;->onMessageChannelReady:Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent;

    .line 1785
    invoke-virtual {v0}, Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent;->onReady()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1787
    :try_start_1
    sget-object v1, Lo/emptyMap;->extraCallback:Lo/emptyMap;

    .line 1788
    invoke-virtual {v1, v0}, Lo/emptyMap;->onPostMessage(Ljava/lang/Throwable;)Lo/emptyMap;

    move-result-object v0

    const-string v1, "Failed to call onReady."

    invoke-virtual {v0, v1}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v0

    .line 1789
    iget-object v1, p0, Lo/rotateLeft$onPostMessage$onPostMessage;->onMessageChannelReady:Lo/rotateLeft$onPostMessage;

    iget-object v1, v1, Lo/rotateLeft$onPostMessage;->onNavigationEvent:Lo/rotateLeft;

    invoke-static {v1}, Lo/rotateLeft;->onPostMessage(Lo/rotateLeft;)Lo/colorFlip;

    move-result-object v1

    invoke-interface {v1, v0}, Lo/colorFlip;->onMessageChannelReady(Lo/emptyMap;)V

    .line 1790
    iget-object v1, p0, Lo/rotateLeft$onPostMessage$onPostMessage;->onMessageChannelReady:Lo/rotateLeft$onPostMessage;

    new-instance v2, Lo/getPredecessorKey;

    invoke-direct {v2}, Lo/getPredecessorKey;-><init>()V

    invoke-static {v1, v0, v2}, Lo/rotateLeft$onPostMessage;->ICustomTabsCallback(Lo/rotateLeft$onPostMessage;Lo/emptyMap;Lo/getPredecessorKey;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 779
    :goto_0
    iget-object v0, p0, Lo/rotateLeft$onPostMessage$onPostMessage;->onMessageChannelReady:Lo/rotateLeft$onPostMessage;

    iget-object v0, v0, Lo/rotateLeft$onPostMessage;->onNavigationEvent:Lo/rotateLeft;

    invoke-static {v0}, Lo/rotateLeft;->ICustomTabsCallback(Lo/rotateLeft;)Lo/currentStringRemainingChars;

    invoke-static {}, Lo/freeze;->ICustomTabsCallback()V

    return-void

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lo/rotateLeft$onPostMessage$onPostMessage;->onMessageChannelReady:Lo/rotateLeft$onPostMessage;

    iget-object v1, v1, Lo/rotateLeft$onPostMessage;->onNavigationEvent:Lo/rotateLeft;

    invoke-static {v1}, Lo/rotateLeft;->ICustomTabsCallback(Lo/rotateLeft;)Lo/currentStringRemainingChars;

    invoke-static {}, Lo/freeze;->ICustomTabsCallback()V

    throw v0
.end method
