.class final Lo/rotateLeft$onPostMessage$extraCallback;
.super Lo/onMessage;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/rotateLeft$onPostMessage;->onMessageChannelReady(Lo/sendAuthHelper$onMessageChannelReady;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "extraCallback"
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/sendAuthHelper$onMessageChannelReady;

.field private synthetic onMessageChannelReady:Lo/rotateLeft$onPostMessage;

.field private synthetic onNavigationEvent:Lo/isValidKey$ICustomTabsCallback;


# direct methods
.method constructor <init>(Lo/rotateLeft$onPostMessage;Lo/isValidKey$ICustomTabsCallback;Lo/sendAuthHelper$onMessageChannelReady;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 634
    iput-object p1, p0, Lo/rotateLeft$onPostMessage$extraCallback;->onMessageChannelReady:Lo/rotateLeft$onPostMessage;

    iput-object p2, p0, Lo/rotateLeft$onPostMessage$extraCallback;->onNavigationEvent:Lo/isValidKey$ICustomTabsCallback;

    iput-object p3, p0, Lo/rotateLeft$onPostMessage$extraCallback;->extraCallback:Lo/sendAuthHelper$onMessageChannelReady;

    .line 635
    iget-object p1, p1, Lo/rotateLeft$onPostMessage;->onNavigationEvent:Lo/rotateLeft;

    invoke-static {p1}, Lo/rotateLeft;->onMessageChannelReady(Lo/rotateLeft;)Lo/verifyInsideTransaction;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/onMessage;-><init>(Lo/verifyInsideTransaction;)V

    return-void
.end method


# virtual methods
.method public final onPostMessage()V
    .locals 3

    .line 640
    iget-object v0, p0, Lo/rotateLeft$onPostMessage$extraCallback;->onMessageChannelReady:Lo/rotateLeft$onPostMessage;

    iget-object v0, v0, Lo/rotateLeft$onPostMessage;->onNavigationEvent:Lo/rotateLeft;

    invoke-static {v0}, Lo/rotateLeft;->ICustomTabsCallback(Lo/rotateLeft;)Lo/currentStringRemainingChars;

    invoke-static {}, Lo/freeze;->extraCallback()V

    .line 641
    invoke-static {}, Lo/freeze;->onTransact()V

    .line 1650
    :try_start_0
    iget-object v0, p0, Lo/rotateLeft$onPostMessage$extraCallback;->onMessageChannelReady:Lo/rotateLeft$onPostMessage;

    .line 2577
    iget-boolean v0, v0, Lo/rotateLeft$onPostMessage;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 1651
    iget-object v0, p0, Lo/rotateLeft$onPostMessage$extraCallback;->extraCallback:Lo/sendAuthHelper$onMessageChannelReady;

    invoke-static {v0}, Lo/getAuthTokenProvider;->onMessageChannelReady(Lo/sendAuthHelper$onMessageChannelReady;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto :goto_1

    .line 1656
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lo/rotateLeft$onPostMessage$extraCallback;->extraCallback:Lo/sendAuthHelper$onMessageChannelReady;

    invoke-interface {v0}, Lo/sendAuthHelper$onMessageChannelReady;->onNavigationEvent()Ljava/io/InputStream;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_1

    .line 1658
    :try_start_2
    iget-object v1, p0, Lo/rotateLeft$onPostMessage$extraCallback;->onMessageChannelReady:Lo/rotateLeft$onPostMessage;

    .line 3577
    iget-object v1, v1, Lo/rotateLeft$onPostMessage;->onMessageChannelReady:Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent;

    .line 1658
    iget-object v2, p0, Lo/rotateLeft$onPostMessage$extraCallback;->onMessageChannelReady:Lo/rotateLeft$onPostMessage;

    iget-object v2, v2, Lo/rotateLeft$onPostMessage;->onNavigationEvent:Lo/rotateLeft;

    invoke-static {v2}, Lo/rotateLeft;->extraCallback(Lo/rotateLeft;)Lo/reverseIterator;

    move-result-object v2

    .line 4275
    iget-object v2, v2, Lo/reverseIterator;->onNavigationEvent:Lo/reverseIterator$onMessageChannelReady;

    invoke-interface {v2, v0}, Lo/reverseIterator$onMessageChannelReady;->extraCallback(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v2

    .line 1658
    invoke-virtual {v1, v2}, Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent;->onMessage(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1663
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 1660
    invoke-static {v0}, Lo/getAuthTokenProvider;->extraCallback(Ljava/io/InputStream;)V

    .line 1661
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 1666
    :try_start_4
    iget-object v1, p0, Lo/rotateLeft$onPostMessage$extraCallback;->extraCallback:Lo/sendAuthHelper$onMessageChannelReady;

    invoke-static {v1}, Lo/getAuthTokenProvider;->onMessageChannelReady(Lo/sendAuthHelper$onMessageChannelReady;)V

    .line 1667
    sget-object v1, Lo/emptyMap;->extraCallback:Lo/emptyMap;

    .line 1668
    invoke-virtual {v1, v0}, Lo/emptyMap;->onPostMessage(Ljava/lang/Throwable;)Lo/emptyMap;

    move-result-object v0

    const-string v1, "Failed to read message."

    invoke-virtual {v0, v1}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v0

    .line 1669
    iget-object v1, p0, Lo/rotateLeft$onPostMessage$extraCallback;->onMessageChannelReady:Lo/rotateLeft$onPostMessage;

    iget-object v1, v1, Lo/rotateLeft$onPostMessage;->onNavigationEvent:Lo/rotateLeft;

    invoke-static {v1}, Lo/rotateLeft;->onPostMessage(Lo/rotateLeft;)Lo/colorFlip;

    move-result-object v1

    invoke-interface {v1, v0}, Lo/colorFlip;->onMessageChannelReady(Lo/emptyMap;)V

    .line 1670
    iget-object v1, p0, Lo/rotateLeft$onPostMessage$extraCallback;->onMessageChannelReady:Lo/rotateLeft$onPostMessage;

    new-instance v2, Lo/getPredecessorKey;

    invoke-direct {v2}, Lo/getPredecessorKey;-><init>()V

    invoke-static {v1, v0, v2}, Lo/rotateLeft$onPostMessage;->ICustomTabsCallback(Lo/rotateLeft$onPostMessage;Lo/emptyMap;Lo/getPredecessorKey;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 645
    :cond_1
    :goto_1
    iget-object v0, p0, Lo/rotateLeft$onPostMessage$extraCallback;->onMessageChannelReady:Lo/rotateLeft$onPostMessage;

    iget-object v0, v0, Lo/rotateLeft$onPostMessage;->onNavigationEvent:Lo/rotateLeft;

    invoke-static {v0}, Lo/rotateLeft;->ICustomTabsCallback(Lo/rotateLeft;)Lo/currentStringRemainingChars;

    invoke-static {}, Lo/freeze;->ICustomTabsCallback()V

    return-void

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lo/rotateLeft$onPostMessage$extraCallback;->onMessageChannelReady:Lo/rotateLeft$onPostMessage;

    iget-object v1, v1, Lo/rotateLeft$onPostMessage;->onNavigationEvent:Lo/rotateLeft;

    invoke-static {v1}, Lo/rotateLeft;->ICustomTabsCallback(Lo/rotateLeft;)Lo/currentStringRemainingChars;

    invoke-static {}, Lo/freeze;->ICustomTabsCallback()V

    throw v0
.end method
