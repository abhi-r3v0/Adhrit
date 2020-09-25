.class final Lo/findAnimation$onMessageChannelReady;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/findAnimation;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/View;",
        "Lo/addWrites;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/findAnimation;


# direct methods
.method constructor <init>(Lo/findAnimation;)V
    .locals 0

    iput-object p1, p0, Lo/findAnimation$onMessageChannelReady;->onMessageChannelReady:Lo/findAnimation;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 43
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1165
    iget-object p1, p0, Lo/findAnimation$onMessageChannelReady;->onMessageChannelReady:Lo/findAnimation;

    invoke-static {p1}, Lo/findAnimation;->ICustomTabsCallback(Lo/findAnimation;)Lo/recycleFromEnd;

    move-result-object p1

    .line 1251
    iget-object p1, p1, Lo/recycleFromEnd;->extraCallback:Lo/findLastCompletelyVisibleItemPositions;

    .line 1165
    sget-object v0, Lo/findLastCompletelyVisibleItemPositions;->onNavigationEvent:Lo/findLastCompletelyVisibleItemPositions;

    if-ne p1, v0, :cond_7

    .line 1166
    iget-object p1, p0, Lo/findAnimation$onMessageChannelReady;->onMessageChannelReady:Lo/findAnimation;

    invoke-static {p1}, Lo/findAnimation;->ICustomTabsCallback(Lo/findAnimation;)Lo/recycleFromEnd;

    move-result-object p1

    sget-object v0, Lo/findLastCompletelyVisibleItemPositions;->extraCallback:Lo/findLastCompletelyVisibleItemPositions;

    invoke-virtual {p1, v0}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    .line 1167
    iget-object p1, p0, Lo/findAnimation$onMessageChannelReady;->onMessageChannelReady:Lo/findAnimation;

    invoke-static {p1}, Lo/findAnimation;->onNavigationEvent(Lo/findAnimation;)V

    .line 1168
    iget-object p1, p0, Lo/findAnimation$onMessageChannelReady;->onMessageChannelReady:Lo/findAnimation;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of v0, p1, Lo/cachePreLayoutSpanMapping;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lo/cachePreLayoutSpanMapping;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    new-array v2, v1, [Lo/addWrite;

    iget-object v3, p0, Lo/findAnimation$onMessageChannelReady;->onMessageChannelReady:Lo/findAnimation;

    invoke-static {v3}, Lo/findAnimation;->extraCallback(Lo/findAnimation;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "auto_fill"

    goto :goto_0

    :cond_1
    const-string v3, "manual"

    .line 2043
    :goto_0
    new-instance v4, Lo/addWrite;

    const-string/jumbo v5, "type"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v2, v0

    const-string v3, "pairs"

    .line 1168
    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2105
    new-instance v3, Ljava/util/HashMap;

    invoke-static {v1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    check-cast v3, Ljava/util/Map;

    invoke-static {v3, v2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo v2, "stash_otp_click_proceed"

    .line 1168
    invoke-interface {p1, v2, v3}, Lo/cachePreLayoutSpanMapping;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    .line 1169
    :cond_2
    iget-object p1, p0, Lo/findAnimation$onMessageChannelReady;->onMessageChannelReady:Lo/findAnimation;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_6

    check-cast p1, Lo/getSpanGroupIndex;

    new-instance v2, Lcom/dreamplug/fabrik/ui/lending/WorkFlowUpdateRequest;

    const/4 v3, 0x3

    new-array v3, v3, [Lo/addWrite;

    .line 1170
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 3043
    new-instance v5, Lo/addWrite;

    const-string/jumbo v6, "resend"

    invoke-direct {v5, v6, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v3, v0

    .line 1170
    iget-object v0, p0, Lo/findAnimation$onMessageChannelReady;->onMessageChannelReady:Lo/findAnimation;

    invoke-static {v0}, Lo/findAnimation;->onMessageChannelReady(Lo/findAnimation;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4043
    new-instance v4, Lo/addWrite;

    const-string v5, "otp"

    invoke-direct {v4, v5, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v3, v1

    const/4 v0, 0x2

    .line 1170
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 5043
    new-instance v4, Lo/addWrite;

    const-string/jumbo v5, "reset"

    invoke-direct {v4, v5, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v3, v0

    .line 1170
    invoke-static {v3}, Lo/lambda$onError$1;->onMessageChannelReady([Lo/addWrite;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lo/findAnimation$onMessageChannelReady;->onMessageChannelReady:Lo/findAnimation;

    invoke-static {v1}, Lo/findAnimation;->asInterface(Lo/findAnimation;)Lo/onDetach$write;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 5131
    :cond_3
    iget-object v1, v1, Lo/onDetach$write;->ICustomTabsCallback:Ljava/lang/String;

    .line 1170
    iget-object v3, p0, Lo/findAnimation$onMessageChannelReady;->onMessageChannelReady:Lo/findAnimation;

    invoke-static {v3}, Lo/findAnimation;->onTransact(Lo/findAnimation;)Lo/setRecycleChildrenOnDetach;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lo/setRecycleChildrenOnDetach;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    :cond_4
    const-string v3, ""

    .line 1169
    :cond_5
    invoke-direct {v2, v0, v1, v3}, Lcom/dreamplug/fabrik/ui/lending/WorkFlowUpdateRequest;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lo/getSpanGroupIndex;->onNavigationEvent(Lcom/dreamplug/fabrik/ui/lending/WorkFlowUpdateRequest;)V

    goto :goto_1

    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.dreamplug.fabrik.ui.lending.LendingWithdrawalFragment"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :cond_7
    :goto_1
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
