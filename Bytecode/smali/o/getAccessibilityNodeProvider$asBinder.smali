.class public final Lo/getAccessibilityNodeProvider$asBinder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getAccessibilityNodeProvider;
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
        "com/dreamplug/batcher/BatcherInternals$sendImmediateRequests$1",
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
.field private synthetic extraCallback:Ljava/lang/String;

.field final synthetic onPostMessage:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lo/getAccessibilityNodeProvider$asBinder;->onPostMessage:Ljava/util/List;

    iput-object p2, p0, Lo/getAccessibilityNodeProvider$asBinder;->extraCallback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 1
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

    .line 81
    instance-of p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz p1, :cond_0

    .line 82
    sget-object p1, Lo/getAccessibilityNodeProvider;->ICustomTabsCallback:Lo/getAccessibilityNodeProvider;

    .line 1000
    sget-object p1, Lo/getAccessibilityNodeProvider;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    .line 82
    new-instance v0, Lo/getAccessibilityNodeProvider$asBinder$onNavigationEvent;

    invoke-direct {v0, p0}, Lo/getAccessibilityNodeProvider$asBinder$onNavigationEvent;-><init>(Lo/getAccessibilityNodeProvider$asBinder;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 86
    :cond_0
    sget-object p1, Lo/getAccessibilityNodeProvider;->ICustomTabsCallback:Lo/getAccessibilityNodeProvider;

    iget-object v0, p0, Lo/getAccessibilityNodeProvider$asBinder;->extraCallback:Ljava/lang/String;

    invoke-static {p1, v0}, Lo/getAccessibilityNodeProvider;->onNavigationEvent(Lo/getAccessibilityNodeProvider;Ljava/lang/String;)V

    return-void
.end method
