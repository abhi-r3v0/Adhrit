.class final Lo/getAccessibilityNodeProvider$asBinder$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getAccessibilityNodeProvider$asBinder;->onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
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
.field private synthetic onMessageChannelReady:Lo/getAccessibilityNodeProvider$asBinder;


# direct methods
.method constructor <init>(Lo/getAccessibilityNodeProvider$asBinder;)V
    .locals 0

    iput-object p1, p0, Lo/getAccessibilityNodeProvider$asBinder$onNavigationEvent;->onMessageChannelReady:Lo/getAccessibilityNodeProvider$asBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 83
    sget-object v0, Lo/getAccessibilityNodeProvider;->ICustomTabsCallback:Lo/getAccessibilityNodeProvider;

    invoke-static {v0}, Lo/getAccessibilityNodeProvider;->ICustomTabsCallback(Lo/getAccessibilityNodeProvider;)Lo/sendAccessibilityEventUnchecked;

    move-result-object v0

    iget-object v1, p0, Lo/getAccessibilityNodeProvider$asBinder$onNavigationEvent;->onMessageChannelReady:Lo/getAccessibilityNodeProvider$asBinder;

    iget-object v1, v1, Lo/getAccessibilityNodeProvider$asBinder;->onPostMessage:Ljava/util/List;

    const-string v2, "requests"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1086
    iget-object v0, v0, Lo/sendAccessibilityEventUnchecked;->onMessageChannelReady:Lcom/dreamplug/batcher/database/BatcherDataBase;

    invoke-virtual {v0}, Lcom/dreamplug/batcher/database/BatcherDataBase;->onTransact()Lo/performAccessibilityAction;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/performAccessibilityAction;->onNavigationEvent(Ljava/util/List;)V

    return-void
.end method
