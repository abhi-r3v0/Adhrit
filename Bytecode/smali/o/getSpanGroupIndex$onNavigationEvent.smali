.class final Lo/getSpanGroupIndex$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getSpanGroupIndex;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lo/onSelectedChanged;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "response",
        "Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenData;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/getSpanGroupIndex;


# direct methods
.method constructor <init>(Lo/getSpanGroupIndex;)V
    .locals 0

    iput-object p1, p0, Lo/getSpanGroupIndex$onNavigationEvent;->onMessageChannelReady:Lo/getSpanGroupIndex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 2

    .line 79
    check-cast p1, Lo/onSelectedChanged;

    if-eqz p1, :cond_1

    .line 1333
    iget-object v0, p0, Lo/getSpanGroupIndex$onNavigationEvent;->onMessageChannelReady:Lo/getSpanGroupIndex;

    invoke-static {v0}, Lo/getSpanGroupIndex;->onPostMessage(Lo/getSpanGroupIndex;)Lo/getSpanIndex;

    move-result-object v0

    .line 2072
    iget-object v0, v0, Lo/getSpanIndex;->IPostMessageService:Lo/setActive;

    .line 2320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1333
    :goto_0
    check-cast v0, Lo/onAnchorReady;

    sget-object v1, Lo/onAnchorReady$ICustomTabsCallback;->extraCallback:Lo/onAnchorReady$ICustomTabsCallback;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 1335
    iget-object v0, p0, Lo/getSpanGroupIndex$onNavigationEvent;->onMessageChannelReady:Lo/getSpanGroupIndex;

    invoke-static {v0, p1}, Lo/getSpanGroupIndex;->onNavigationEvent(Lo/getSpanGroupIndex;Lo/onSelectedChanged;)V

    .line 1336
    iget-object p1, p0, Lo/getSpanGroupIndex$onNavigationEvent;->onMessageChannelReady:Lo/getSpanGroupIndex;

    .line 3006
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    const-string/jumbo v1, "stash_amount_screen_load"

    invoke-interface {p1, v1, v0}, Lo/cachePreLayoutSpanMapping;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    .line 1337
    iget-object p1, p0, Lo/getSpanGroupIndex$onNavigationEvent;->onMessageChannelReady:Lo/getSpanGroupIndex;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->loaderView:I

    invoke-virtual {p1, v0}, Lo/getSpanGroupIndex;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onDestroyView;

    invoke-virtual {p1}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    .line 1338
    iget-object p1, p0, Lo/getSpanGroupIndex$onNavigationEvent;->onMessageChannelReady:Lo/getSpanGroupIndex;

    invoke-static {p1}, Lo/getSpanGroupIndex;->onMessageChannelReady(Lo/getSpanGroupIndex;)Lo/setRecycleChildrenOnDetach;

    move-result-object p1

    iget-object v0, p0, Lo/getSpanGroupIndex$onNavigationEvent;->onMessageChannelReady:Lo/getSpanGroupIndex;

    invoke-static {v0}, Lo/getSpanGroupIndex;->onPostMessage(Lo/getSpanGroupIndex;)Lo/getSpanIndex;

    move-result-object v0

    .line 3045
    iget-boolean v0, v0, Lo/getSpanIndex;->asBinder:Z

    .line 4039
    iput-boolean v0, p1, Lo/setRecycleChildrenOnDetach;->onTransact:Z

    :cond_1
    return-void
.end method
