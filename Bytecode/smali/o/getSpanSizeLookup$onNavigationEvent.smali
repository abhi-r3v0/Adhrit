.class final Lo/getSpanSizeLookup$onNavigationEvent;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getSpanSizeLookup;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field private synthetic onMessageChannelReady:Lo/getSpanSizeLookup;


# direct methods
.method constructor <init>(Lo/getSpanSizeLookup;)V
    .locals 0

    iput-object p1, p0, Lo/getSpanSizeLookup$onNavigationEvent;->onMessageChannelReady:Lo/getSpanSizeLookup;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 46
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "stash_confirm_mandate_details_click_proceed"

    .line 1096
    invoke-static {p1}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 1098
    iget-object p1, p0, Lo/getSpanSizeLookup$onNavigationEvent;->onMessageChannelReady:Lo/getSpanSizeLookup;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Lo/getSpanGroupIndex;

    .line 1099
    new-instance v0, Lcom/dreamplug/fabrik/ui/lending/WorkFlowUpdateRequest;

    iget-object v1, p0, Lo/getSpanSizeLookup$onNavigationEvent;->onMessageChannelReady:Lo/getSpanSizeLookup;

    invoke-static {v1}, Lo/getSpanSizeLookup;->ICustomTabsCallback(Lo/getSpanSizeLookup;)Lo/setSpanSizeLookup;

    move-result-object v1

    .line 2010
    iget v1, v1, Lo/setSpanSizeLookup;->onPostMessage:I

    .line 1099
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2043
    new-instance v2, Lo/addWrite;

    const-string/jumbo v3, "user_selected_day"

    invoke-direct {v2, v3, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "pair"

    .line 1099
    invoke-static {v2, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4027
    iget-object v1, v2, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 4028
    iget-object v2, v2, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 3027
    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "java.util.Collections.si\u2026(pair.first, pair.second)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1099
    iget-object v2, p0, Lo/getSpanSizeLookup$onNavigationEvent;->onMessageChannelReady:Lo/getSpanSizeLookup;

    invoke-static {v2}, Lo/getSpanSizeLookup;->extraCallback(Lo/getSpanSizeLookup;)Lo/onDetach$write;

    move-result-object v2

    .line 4131
    iget-object v2, v2, Lo/onDetach$write;->ICustomTabsCallback:Ljava/lang/String;

    .line 1099
    iget-object v3, p0, Lo/getSpanSizeLookup$onNavigationEvent;->onMessageChannelReady:Lo/getSpanSizeLookup;

    invoke-static {v3}, Lo/getSpanSizeLookup;->onMessageChannelReady(Lo/getSpanSizeLookup;)Lo/setRecycleChildrenOnDetach;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lo/setRecycleChildrenOnDetach;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    const-string v3, ""

    :cond_1
    invoke-direct {v0, v1, v2, v3}, Lcom/dreamplug/fabrik/ui/lending/WorkFlowUpdateRequest;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    invoke-virtual {p1, v0}, Lo/getSpanGroupIndex;->onNavigationEvent(Lcom/dreamplug/fabrik/ui/lending/WorkFlowUpdateRequest;)V

    .line 46
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1

    .line 1098
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.dreamplug.fabrik.ui.lending.LendingWithdrawalFragment"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
