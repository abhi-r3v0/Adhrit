.class public final Lo/overridesItemVisibility$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/overridesItemVisibility;->ICustomTabsCallback(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001J\u001c\u0010\u0003\u001a\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/dreamplug/batcher/sync/RequestDispatcher$pickBatch$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Ljava/lang/Void;",
        "onResponse",
        "",
        "result",
        "Lcom/dreamplug/network/internals/call/CallResult;",
        "batcher_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/overridesItemVisibility;

.field private synthetic extraCallback:Ljava/util/List;

.field private synthetic onNavigationEvent:Ljava/util/List;


# direct methods
.method constructor <init>(Lo/overridesItemVisibility;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List;",
            "Ljava/util/List;",
            ")V"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lo/overridesItemVisibility$onNavigationEvent;->ICustomTabsCallback:Lo/overridesItemVisibility;

    iput-object p2, p0, Lo/overridesItemVisibility$onNavigationEvent;->onNavigationEvent:Ljava/util/List;

    iput-object p3, p0, Lo/overridesItemVisibility$onNavigationEvent;->extraCallback:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lo/overridesItemVisibility$onNavigationEvent;->ICustomTabsCallback:Lo/overridesItemVisibility;

    invoke-static {v0}, Lo/overridesItemVisibility;->onNavigationEvent(Lo/overridesItemVisibility;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 101
    instance-of p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz p1, :cond_0

    .line 102
    sget-object p1, Lo/getAccessibilityNodeProvider;->ICustomTabsCallback:Lo/getAccessibilityNodeProvider;

    iget-object p1, p0, Lo/overridesItemVisibility$onNavigationEvent;->onNavigationEvent:Ljava/util/List;

    const-string v0, "requests"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2000
    sget-object v1, Lo/getAccessibilityNodeProvider;->extraCallback:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/sendAccessibilityEventUnchecked;

    .line 1102
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2086
    iget-object v0, v1, Lo/sendAccessibilityEventUnchecked;->onMessageChannelReady:Lcom/dreamplug/batcher/database/BatcherDataBase;

    invoke-virtual {v0}, Lcom/dreamplug/batcher/database/BatcherDataBase;->onTransact()Lo/performAccessibilityAction;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/performAccessibilityAction;->onNavigationEvent(Ljava/util/List;)V

    .line 112
    :cond_0
    iget-object p1, p0, Lo/overridesItemVisibility$onNavigationEvent;->ICustomTabsCallback:Lo/overridesItemVisibility;

    iget-object v0, p0, Lo/overridesItemVisibility$onNavigationEvent;->extraCallback:Ljava/util/List;

    invoke-static {p1, v0}, Lo/overridesItemVisibility;->onMessageChannelReady(Lo/overridesItemVisibility;Ljava/util/List;)V

    return-void
.end method
