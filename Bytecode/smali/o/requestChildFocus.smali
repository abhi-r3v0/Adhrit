.class public final Lo/requestChildFocus;
.super Lo/getSplitTrack;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/requestChildFocus$onMessageChannelReady;
    }
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
.field ICustomTabsCallback:Ljava/lang/String;

.field private final ICustomTabsCallback$Stub:Ljava/lang/String;

.field private final asBinder:Lo/setPlaybackToRemote;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPlaybackToRemote<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private asInterface:Ljava/io/Closeable;

.field extraCallback:Landroid/os/Handler;

.field final onMessageChannelReady:Lo/requestChildOnScreen$ICustomTabsCallback;

.field onPostMessage:I

.field private onRelationshipValidationResult:Lo/evictionCount;

.field private final onTransact:Lo/isSameListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/requestChildOnScreen$ICustomTabsCallback;)V
    .locals 1

    const-string v0, "orderId"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Lo/getSplitTrack;-><init>()V

    iput-object p1, p0, Lo/requestChildFocus;->ICustomTabsCallback$Stub:Ljava/lang/String;

    iput-object p2, p0, Lo/requestChildFocus;->onMessageChannelReady:Lo/requestChildOnScreen$ICustomTabsCallback;

    .line 25
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lo/requestChildFocus;->extraCallback:Landroid/os/Handler;

    .line 26
    new-instance p1, Lo/requestChildFocus$onPostMessage;

    invoke-direct {p1, p0}, Lo/requestChildFocus$onPostMessage;-><init>(Lo/requestChildFocus;)V

    check-cast p1, Lo/setPlaybackToRemote;

    iput-object p1, p0, Lo/requestChildFocus;->asBinder:Lo/setPlaybackToRemote;

    const-string p1, "START"

    .line 37
    iput-object p1, p0, Lo/requestChildFocus;->ICustomTabsCallback:Ljava/lang/String;

    .line 41
    sget-object p1, Lo/requestChildFocus$onNavigationEvent;->onNavigationEvent:Lo/requestChildFocus$onNavigationEvent;

    check-cast p1, Lo/getServerTime;

    const-string p2, "initializer"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2021
    new-instance p2, Lo/fromChildMerge;

    invoke-direct {p2, p1}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast p2, Lo/isSameListener;

    .line 41
    iput-object p2, p0, Lo/requestChildFocus;->onTransact:Lo/isSameListener;

    return-void
.end method

.method public static final synthetic extraCallback(Lo/requestChildFocus;)V
    .locals 3

    .line 2070
    iget v0, p0, Lo/requestChildFocus;->onPostMessage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/requestChildFocus;->onPostMessage:I

    .line 3000
    iget-object v0, p0, Lo/requestChildFocus;->onTransact:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getCurrentContentInsetEnd;

    .line 2072
    iget-object v1, p0, Lo/requestChildFocus;->ICustomTabsCallback$Stub:Ljava/lang/String;

    invoke-interface {v0, v1}, Lo/getCurrentContentInsetEnd;->onNavigationEvent(Ljava/lang/String;)Lo/tryBindViewHolderByDeadline;

    move-result-object v0

    .line 2073
    new-instance v1, Lo/requestChildFocus$ICustomTabsCallback;

    invoke-direct {v1, p0}, Lo/requestChildFocus$ICustomTabsCallback;-><init>(Lo/requestChildFocus;)V

    check-cast v1, Lo/RecyclerView$Recycler;

    const-string p0, "OrderStatus"

    const-string/jumbo v2, "tag"

    invoke-static {p0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "callback"

    invoke-static {v1, p0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5044
    iget-object p0, v0, Lo/tryBindViewHolderByDeadline;->onMessageChannelReady:Lo/clearScrap;

    new-instance v0, Lo/tryBindViewHolderByDeadline$ICustomTabsCallback;

    invoke-direct {v0, v1}, Lo/tryBindViewHolderByDeadline$ICustomTabsCallback;-><init>(Lo/RecyclerView$Recycler;)V

    check-cast v0, Lo/getScrapOrCachedViewForId;

    invoke-interface {p0, v0}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 4

    .line 47
    new-instance v0, Lo/evictionCount;

    invoke-direct {v0}, Lo/evictionCount;-><init>()V

    iput-object v0, p0, Lo/requestChildFocus;->onRelationshipValidationResult:Lo/evictionCount;

    if-nez v0, :cond_0

    const-string v1, "loaderSeenTimeTracker"

    .line 48
    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lo/evictionCount;->onPostMessage()V

    .line 49
    sget-object v0, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    sget-object v0, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    invoke-static {}, Lo/isInLayout;->ICustomTabsCallback()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    sget-object v2, Lo/requestChildFocus$extraCallback;->onPostMessage:Lo/requestChildFocus$extraCallback;

    check-cast v2, Lo/getServerTime;

    const-string v3, "command"

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1018
    new-instance v3, Lo/updateItemAt$extraCallback;

    invoke-direct {v3, v2}, Lo/updateItemAt$extraCallback;-><init>(Lo/getServerTime;)V

    check-cast v3, Ljava/lang/Runnable;

    invoke-static {v0, v1, v3}, Lo/updateItemAt;->onPostMessage(JLjava/lang/Runnable;)Ljava/io/Closeable;

    move-result-object v0

    .line 49
    iput-object v0, p0, Lo/requestChildFocus;->asInterface:Ljava/io/Closeable;

    .line 52
    sget-object v0, Lo/resize;->extraCallback:Lo/resize;

    invoke-static {}, Lo/resize;->ICustomTabsCallback()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lo/requestChildFocus;->asBinder:Lo/setPlaybackToRemote;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onNavigationEvent(Lo/setPlaybackToRemote;)V

    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 2

    .line 56
    sget-object v0, Lo/resize;->extraCallback:Lo/resize;

    invoke-static {}, Lo/resize;->ICustomTabsCallback()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lo/requestChildFocus;->asBinder:Lo/setPlaybackToRemote;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    .line 57
    iget-object v0, p0, Lo/requestChildFocus;->asInterface:Ljava/io/Closeable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 1062
    :cond_0
    iget-object v0, p0, Lo/requestChildFocus;->extraCallback:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final onPostMessage()V
    .locals 1

    .line 122
    sget-object v0, Lo/getTextOff;->onNavigationEvent:Lo/getTextOff;

    invoke-static {}, Lo/getTextOff;->ICustomTabsCallback()V

    .line 123
    invoke-super {p0}, Lo/getSplitTrack;->onPostMessage()V

    return-void
.end method

.method public final run()V
    .locals 0

    .line 5066
    invoke-static {p0}, Lo/requestChildFocus;->extraCallback(Lo/requestChildFocus;)V

    return-void
.end method
