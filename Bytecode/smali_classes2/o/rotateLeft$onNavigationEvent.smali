.class final Lo/rotateLeft$onNavigationEvent;
.super Lo/onMessage;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/rotateLeft;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/emptyMap;

.field private synthetic onMessageChannelReady:Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent;

.field private synthetic onPostMessage:Lo/rotateLeft;


# direct methods
.method constructor <init>(Lo/rotateLeft;Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent;Lo/emptyMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 410
    iput-object p1, p0, Lo/rotateLeft$onNavigationEvent;->onPostMessage:Lo/rotateLeft;

    iput-object p2, p0, Lo/rotateLeft$onNavigationEvent;->onMessageChannelReady:Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent;

    iput-object p3, p0, Lo/rotateLeft$onNavigationEvent;->ICustomTabsCallback:Lo/emptyMap;

    .line 411
    invoke-static {p1}, Lo/rotateLeft;->onMessageChannelReady(Lo/rotateLeft;)Lo/verifyInsideTransaction;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/onMessage;-><init>(Lo/verifyInsideTransaction;)V

    return-void
.end method


# virtual methods
.method public final onPostMessage()V
    .locals 4

    .line 416
    iget-object v0, p0, Lo/rotateLeft$onNavigationEvent;->onPostMessage:Lo/rotateLeft;

    iget-object v1, p0, Lo/rotateLeft$onNavigationEvent;->onMessageChannelReady:Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent;

    iget-object v2, p0, Lo/rotateLeft$onNavigationEvent;->ICustomTabsCallback:Lo/emptyMap;

    new-instance v3, Lo/getPredecessorKey;

    invoke-direct {v3}, Lo/getPredecessorKey;-><init>()V

    invoke-static {v0, v1, v2, v3}, Lo/rotateLeft;->ICustomTabsCallback(Lo/rotateLeft;Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent;Lo/emptyMap;Lo/getPredecessorKey;)V

    return-void
.end method
