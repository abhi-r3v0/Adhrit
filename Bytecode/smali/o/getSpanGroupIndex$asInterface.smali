.class final Lo/getSpanGroupIndex$asInterface;
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
        "Lo/getAnimationDuration;",
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
        "Lcom/dreamplug/fabrik/ui/lending/model/BankScreenData;",
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
.field private synthetic ICustomTabsCallback:Lo/getSpanGroupIndex;


# direct methods
.method constructor <init>(Lo/getSpanGroupIndex;)V
    .locals 0

    iput-object p1, p0, Lo/getSpanGroupIndex$asInterface;->ICustomTabsCallback:Lo/getSpanGroupIndex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 8

    .line 79
    check-cast p1, Lo/getAnimationDuration;

    if-eqz p1, :cond_4

    .line 1356
    iget-object v0, p0, Lo/getSpanGroupIndex$asInterface;->ICustomTabsCallback:Lo/getSpanGroupIndex;

    invoke-static {v0}, Lo/getSpanGroupIndex;->onPostMessage(Lo/getSpanGroupIndex;)Lo/getSpanIndex;

    move-result-object v0

    .line 2072
    iget-object v0, v0, Lo/getSpanIndex;->IPostMessageService:Lo/setActive;

    .line 2320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 1356
    :goto_0
    check-cast v0, Lo/onAnchorReady;

    sget-object v1, Lo/onAnchorReady$onPostMessage;->onNavigationEvent:Lo/onAnchorReady$onPostMessage;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_4

    .line 1357
    iget-object v0, p0, Lo/getSpanGroupIndex$asInterface;->ICustomTabsCallback:Lo/getSpanGroupIndex;

    invoke-static {v0}, Lo/getSpanGroupIndex;->onPostMessage(Lo/getSpanGroupIndex;)Lo/getSpanIndex;

    move-result-object v0

    .line 3051
    iget-boolean v0, v0, Lo/getSpanIndex;->onTransact:Z

    if-eqz v0, :cond_3

    .line 1358
    iget-object v0, p0, Lo/getSpanGroupIndex$asInterface;->ICustomTabsCallback:Lo/getSpanGroupIndex;

    invoke-static {v0}, Lo/getSpanGroupIndex;->ICustomTabsCallback$Stub$Proxy(Lo/getSpanGroupIndex;)Lo/onDetach$IPostMessageService$Stub;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4042
    iget-object v2, v3, Lo/onDetach$IPostMessageService$Stub;->onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/PrefilledData;

    :cond_1
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 1358
    :goto_1
    invoke-static {v0, p1, v2}, Lo/getSpanGroupIndex;->extraCallback(Lo/getSpanGroupIndex;Lo/getAnimationDuration;Z)V

    .line 1359
    iget-object v0, p0, Lo/getSpanGroupIndex$asInterface;->ICustomTabsCallback:Lo/getSpanGroupIndex;

    const/4 v2, 0x2

    new-array v4, v2, [Lo/addWrite;

    .line 5014
    iget-object v5, p1, Lo/getAnimationDuration;->onPostMessage:Ljava/lang/String;

    .line 5043
    new-instance v6, Lo/addWrite;

    const-string/jumbo v7, "suggested_bank"

    invoke-direct {v6, v7, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v4, v3

    .line 6013
    iget-object p1, p1, Lo/getAnimationDuration;->onMessageChannelReady:Ljava/util/List;

    .line 1359
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 6043
    new-instance v3, Lo/addWrite;

    const-string v5, "count"

    invoke-direct {v3, v5, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v4, v1

    const-string p1, "pairs"

    .line 1359
    invoke-static {v4, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6105
    new-instance p1, Ljava/util/HashMap;

    invoke-static {v2}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/HashMap;-><init>(I)V

    check-cast p1, Ljava/util/Map;

    invoke-static {p1, v4}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo v1, "stash_withdrawal_credit_account_screen_load"

    .line 1359
    invoke-virtual {v0, v1, p1}, Lo/getSpanGroupIndex;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    .line 1360
    iget-object p1, p0, Lo/getSpanGroupIndex$asInterface;->ICustomTabsCallback:Lo/getSpanGroupIndex;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->loaderView:I

    invoke-virtual {p1, v0}, Lo/getSpanGroupIndex;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onDestroyView;

    invoke-virtual {p1}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    return-void

    .line 1363
    :cond_3
    iget-object p1, p0, Lo/getSpanGroupIndex$asInterface;->ICustomTabsCallback:Lo/getSpanGroupIndex;

    invoke-static {p1}, Lo/getSpanGroupIndex;->newSession(Lo/getSpanGroupIndex;)Lo/setMeasuredDimension;

    move-result-object p1

    invoke-virtual {p1}, Lo/setMeasuredDimension;->onMessageChannelReady()V

    :cond_4
    return-void
.end method
