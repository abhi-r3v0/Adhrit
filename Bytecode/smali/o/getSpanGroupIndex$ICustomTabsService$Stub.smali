.class final Lo/getSpanGroupIndex$ICustomTabsService$Stub;
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
        "Lo/throwIfInMutationOperation<",
        "+",
        "Lo/addWrite<",
        "+",
        "Ljava/lang/String;",
        "+",
        "Lo/onAnchorReady;",
        ">;>;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u000126\u0010\u0002\u001a2\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004 \u0007*\u0018\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/utils/Event;",
        "Lkotlin/Pair;",
        "",
        "Lcom/dreamplug/fabrik/ui/lending/LendingSetupStates;",
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
.field private synthetic extraCallback:Lo/getSpanGroupIndex;


# direct methods
.method constructor <init>(Lo/getSpanGroupIndex;)V
    .locals 0

    iput-object p1, p0, Lo/getSpanGroupIndex$ICustomTabsService$Stub;->extraCallback:Lo/getSpanGroupIndex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 9

    .line 79
    check-cast p1, Lo/throwIfInMutationOperation;

    .line 2011
    iget-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2015
    iput-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    .line 2016
    iget-object p1, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 1251
    :goto_0
    check-cast p1, Lo/addWrite;

    if-eqz p1, :cond_3

    .line 1252
    iget-object v0, p0, Lo/getSpanGroupIndex$ICustomTabsService$Stub;->extraCallback:Lo/getSpanGroupIndex;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->loaderView:I

    invoke-virtual {v0, v2}, Lo/getSpanGroupIndex;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onDestroyView;

    invoke-virtual {v0}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    .line 1253
    iget-object v0, p0, Lo/getSpanGroupIndex$ICustomTabsService$Stub;->extraCallback:Lo/getSpanGroupIndex;

    invoke-static {v0}, Lo/getSpanGroupIndex;->onTransact(Lo/getSpanGroupIndex;)Lo/setReenterTransition$onPostMessage;

    move-result-object v2

    iget-object v0, p0, Lo/getSpanGroupIndex$ICustomTabsService$Stub;->extraCallback:Lo/getSpanGroupIndex;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string v0, "requireContext()"

    invoke-static {v3, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2027
    iget-object v0, p1, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 1253
    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x10

    invoke-static/range {v2 .. v8}, Lo/setReenterTransition$onPostMessage;->onMessageChannelReady(Lo/setReenterTransition$onPostMessage;Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Integer;I)V

    .line 2028
    iget-object p1, p1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 1254
    check-cast p1, Lo/onAnchorReady;

    if-eqz p1, :cond_3

    .line 1255
    sget-object v0, Lo/onAnchorReady$ICustomTabsCallback;->extraCallback:Lo/onAnchorReady$ICustomTabsCallback;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/getSpanGroupIndex$ICustomTabsService$Stub;->extraCallback:Lo/getSpanGroupIndex;

    invoke-static {v0}, Lo/getSpanGroupIndex;->onPostMessage(Lo/getSpanGroupIndex;)Lo/getSpanIndex;

    move-result-object v0

    .line 2072
    iget-object v0, v0, Lo/getSpanIndex;->IPostMessageService:Lo/setActive;

    .line 2320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object v2, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v2, :cond_1

    move-object v1, v0

    .line 1255
    :cond_1
    check-cast v1, Lo/onAnchorReady;

    invoke-static {p1, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1256
    iget-object p1, p0, Lo/getSpanGroupIndex$ICustomTabsService$Stub;->extraCallback:Lo/getSpanGroupIndex;

    invoke-static {p1}, Lo/getSpanGroupIndex;->onMessageChannelReady(Lo/getSpanGroupIndex;)Lo/setRecycleChildrenOnDetach;

    move-result-object p1

    .line 3045
    iget-object p1, p1, Lo/setRecycleChildrenOnDetach;->ICustomTabsCallback$Stub:Lo/setActive;

    .line 1256
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    return-void

    .line 1258
    :cond_2
    iget-object v0, p0, Lo/getSpanGroupIndex$ICustomTabsService$Stub;->extraCallback:Lo/getSpanGroupIndex;

    invoke-static {v0}, Lo/getSpanGroupIndex;->onPostMessage(Lo/getSpanGroupIndex;)Lo/getSpanIndex;

    move-result-object v0

    .line 3072
    iget-object v0, v0, Lo/getSpanIndex;->IPostMessageService:Lo/setActive;

    .line 1258
    invoke-virtual {v0, p1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method
