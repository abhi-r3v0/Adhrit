.class final Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;->onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/getScrapOrHiddenOrCachedHolderForPosition;

.field private synthetic onPostMessage:Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;


# direct methods
.method constructor <init>(Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 0

    iput-object p1, p0, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady$extraCallback;->onPostMessage:Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;

    iput-object p2, p0, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady$extraCallback;->onNavigationEvent:Lo/getScrapOrHiddenOrCachedHolderForPosition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 250
    iget-object v0, p0, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady$extraCallback;->onPostMessage:Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;

    iget-object v0, v0, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;->onMessageChannelReady:Lo/stopScrollersInternal$onNavigationEvent;

    iget-object v0, v0, Lo/stopScrollersInternal$onNavigationEvent;->onNavigationEvent:Lo/stopScrollersInternal;

    .line 1033
    iget-object v0, v0, Lo/stopScrollersInternal;->getInterfaceDescriptor:Lo/getServerTime;

    if-eqz v0, :cond_0

    .line 250
    invoke-interface {v0}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    .line 251
    :cond_0
    iget-object v0, p0, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady$extraCallback;->onPostMessage:Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;

    iget-object v0, v0, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;->onMessageChannelReady:Lo/stopScrollersInternal$onNavigationEvent;

    iget-object v0, v0, Lo/stopScrollersInternal$onNavigationEvent;->onPostMessage:Lo/toDebugString$ICustomTabsCallback;

    iget-object v0, v0, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v0, Lo/releaseGlows;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/releaseGlows;->onMessageChannelReady()V

    .line 252
    :cond_1
    iget-object v0, p0, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady$extraCallback;->onPostMessage:Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;

    iget-object v0, v0, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;->onMessageChannelReady:Lo/stopScrollersInternal$onNavigationEvent;

    iget-object v0, v0, Lo/stopScrollersInternal$onNavigationEvent;->onNavigationEvent:Lo/stopScrollersInternal;

    .line 2033
    iget-object v0, v0, Lo/stopScrollersInternal;->newSession:Lo/rerunTransactionQueue;

    if-eqz v0, :cond_3

    .line 252
    iget-object v1, p0, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady$extraCallback;->onNavigationEvent:Lo/getScrapOrHiddenOrCachedHolderForPosition;

    check-cast v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 3009
    iget-object v1, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    if-nez v1, :cond_2

    .line 252
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    iget-object v2, p0, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady$extraCallback;->onPostMessage:Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;

    iget-object v2, v2, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;->onMessageChannelReady:Lo/stopScrollersInternal$onNavigationEvent;

    iget-object v2, v2, Lo/stopScrollersInternal$onNavigationEvent;->onNavigationEvent:Lo/stopScrollersInternal;

    .line 3033
    iget-object v2, v2, Lo/stopScrollersInternal;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v3, 0x0

    .line 252
    invoke-interface {v0, v1, v2, v3}, Lo/rerunTransactionQueue;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method
