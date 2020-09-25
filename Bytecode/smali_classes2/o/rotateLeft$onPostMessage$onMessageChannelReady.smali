.class final Lo/rotateLeft$onPostMessage$onMessageChannelReady;
.super Lo/onMessage;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/rotateLeft$onPostMessage;->onPostMessage(Lo/emptyMap;Lo/getPredecessorKey;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/getPredecessorKey;

.field private synthetic extraCallback:Lo/rotateLeft$onPostMessage;

.field private synthetic onMessageChannelReady:Lo/isValidKey$ICustomTabsCallback;

.field private synthetic onNavigationEvent:Lo/emptyMap;


# direct methods
.method constructor <init>(Lo/rotateLeft$onPostMessage;Lo/isValidKey$ICustomTabsCallback;Lo/emptyMap;Lo/getPredecessorKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 731
    iput-object p1, p0, Lo/rotateLeft$onPostMessage$onMessageChannelReady;->extraCallback:Lo/rotateLeft$onPostMessage;

    iput-object p2, p0, Lo/rotateLeft$onPostMessage$onMessageChannelReady;->onMessageChannelReady:Lo/isValidKey$ICustomTabsCallback;

    iput-object p3, p0, Lo/rotateLeft$onPostMessage$onMessageChannelReady;->onNavigationEvent:Lo/emptyMap;

    iput-object p4, p0, Lo/rotateLeft$onPostMessage$onMessageChannelReady;->ICustomTabsCallback:Lo/getPredecessorKey;

    .line 732
    iget-object p1, p1, Lo/rotateLeft$onPostMessage;->onNavigationEvent:Lo/rotateLeft;

    invoke-static {p1}, Lo/rotateLeft;->onMessageChannelReady(Lo/rotateLeft;)Lo/verifyInsideTransaction;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/onMessage;-><init>(Lo/verifyInsideTransaction;)V

    return-void
.end method


# virtual methods
.method public final onPostMessage()V
    .locals 3

    .line 737
    iget-object v0, p0, Lo/rotateLeft$onPostMessage$onMessageChannelReady;->extraCallback:Lo/rotateLeft$onPostMessage;

    iget-object v0, v0, Lo/rotateLeft$onPostMessage;->onNavigationEvent:Lo/rotateLeft;

    invoke-static {v0}, Lo/rotateLeft;->ICustomTabsCallback(Lo/rotateLeft;)Lo/currentStringRemainingChars;

    invoke-static {}, Lo/freeze;->extraCallback()V

    .line 738
    invoke-static {}, Lo/freeze;->onTransact()V

    .line 1747
    :try_start_0
    iget-object v0, p0, Lo/rotateLeft$onPostMessage$onMessageChannelReady;->extraCallback:Lo/rotateLeft$onPostMessage;

    .line 2577
    iget-boolean v0, v0, Lo/rotateLeft$onPostMessage;->extraCallback:Z

    if-nez v0, :cond_0

    .line 1751
    iget-object v0, p0, Lo/rotateLeft$onPostMessage$onMessageChannelReady;->extraCallback:Lo/rotateLeft$onPostMessage;

    iget-object v1, p0, Lo/rotateLeft$onPostMessage$onMessageChannelReady;->onNavigationEvent:Lo/emptyMap;

    iget-object v2, p0, Lo/rotateLeft$onPostMessage$onMessageChannelReady;->ICustomTabsCallback:Lo/getPredecessorKey;

    invoke-static {v0, v1, v2}, Lo/rotateLeft$onPostMessage;->ICustomTabsCallback(Lo/rotateLeft$onPostMessage;Lo/emptyMap;Lo/getPredecessorKey;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 742
    :cond_0
    iget-object v0, p0, Lo/rotateLeft$onPostMessage$onMessageChannelReady;->extraCallback:Lo/rotateLeft$onPostMessage;

    iget-object v0, v0, Lo/rotateLeft$onPostMessage;->onNavigationEvent:Lo/rotateLeft;

    invoke-static {v0}, Lo/rotateLeft;->ICustomTabsCallback(Lo/rotateLeft;)Lo/currentStringRemainingChars;

    invoke-static {}, Lo/freeze;->ICustomTabsCallback()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lo/rotateLeft$onPostMessage$onMessageChannelReady;->extraCallback:Lo/rotateLeft$onPostMessage;

    iget-object v1, v1, Lo/rotateLeft$onPostMessage;->onNavigationEvent:Lo/rotateLeft;

    invoke-static {v1}, Lo/rotateLeft;->ICustomTabsCallback(Lo/rotateLeft;)Lo/currentStringRemainingChars;

    invoke-static {}, Lo/freeze;->ICustomTabsCallback()V

    throw v0
.end method
