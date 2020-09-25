.class final Lo/ItemTouchHelper$SimpleCallback$onRelationshipValidationResult;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ItemTouchHelper$SimpleCallback;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field private synthetic onMessageChannelReady:Lo/ItemTouchHelper$SimpleCallback;


# direct methods
.method constructor <init>(Lo/ItemTouchHelper$SimpleCallback;)V
    .locals 0

    iput-object p1, p0, Lo/ItemTouchHelper$SimpleCallback$onRelationshipValidationResult;->onMessageChannelReady:Lo/ItemTouchHelper$SimpleCallback;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 46
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1185
    iget-object p1, p0, Lo/ItemTouchHelper$SimpleCallback$onRelationshipValidationResult;->onMessageChannelReady:Lo/ItemTouchHelper$SimpleCallback;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of v0, p1, Lo/cachePreLayoutSpanMapping;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    :cond_0
    check-cast p1, Lo/cachePreLayoutSpanMapping;

    if-eqz p1, :cond_1

    .line 2006
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    const-string/jumbo v2, "stash_okyc_captcha_click_proceed"

    invoke-interface {p1, v2, v0}, Lo/cachePreLayoutSpanMapping;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    .line 1186
    :cond_1
    iget-object p1, p0, Lo/ItemTouchHelper$SimpleCallback$onRelationshipValidationResult;->onMessageChannelReady:Lo/ItemTouchHelper$SimpleCallback;

    .line 2052
    iget-object p1, p1, Lo/ItemTouchHelper$SimpleCallback;->onPostMessage:Landroid/widget/EditText;

    const-string v0, "captcha"

    if-nez p1, :cond_2

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1186
    :cond_2
    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lo/isCurrent$onMessageChannelReady;->onMessageChannelReady(Landroid/view/View;)V

    .line 1187
    iget-object p1, p0, Lo/ItemTouchHelper$SimpleCallback$onRelationshipValidationResult;->onMessageChannelReady:Lo/ItemTouchHelper$SimpleCallback;

    .line 3047
    iget-object p1, p1, Lo/ItemTouchHelper$SimpleCallback;->extraCallback:Lo/recycleFromEnd;

    if-nez p1, :cond_3

    const-string v2, "primaryButton"

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1187
    :cond_3
    sget-object v2, Lo/findLastCompletelyVisibleItemPositions;->extraCallback:Lo/findLastCompletelyVisibleItemPositions;

    invoke-virtual {p1, v2}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    .line 1188
    iget-object p1, p0, Lo/ItemTouchHelper$SimpleCallback$onRelationshipValidationResult;->onMessageChannelReady:Lo/ItemTouchHelper$SimpleCallback;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of v2, p1, Lo/cachePreLayoutSpanMapping;

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    move-object v1, p1

    :goto_0
    check-cast v1, Lo/cachePreLayoutSpanMapping;

    if-eqz v1, :cond_b

    new-instance p1, Lcom/dreamplug/fabrik/ui/lending/WorkFlowUpdateRequest;

    const/4 v2, 0x2

    new-array v2, v2, [Lo/addWrite;

    const/4 v3, 0x0

    .line 4043
    new-instance v4, Lo/addWrite;

    const-string v5, "consent"

    const-string v6, "PROCEED"

    invoke-direct {v4, v5, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 1190
    iget-object v4, p0, Lo/ItemTouchHelper$SimpleCallback$onRelationshipValidationResult;->onMessageChannelReady:Lo/ItemTouchHelper$SimpleCallback;

    .line 4052
    iget-object v4, v4, Lo/ItemTouchHelper$SimpleCallback;->onPostMessage:Landroid/widget/EditText;

    if-nez v4, :cond_5

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1190
    :cond_5
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5043
    new-instance v5, Lo/addWrite;

    invoke-direct {v5, v0, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v2, v3

    .line 1189
    invoke-static {v2}, Lo/lambda$onError$1;->onMessageChannelReady([Lo/addWrite;)Ljava/util/Map;

    move-result-object v0

    .line 1191
    iget-object v2, p0, Lo/ItemTouchHelper$SimpleCallback$onRelationshipValidationResult;->onMessageChannelReady:Lo/ItemTouchHelper$SimpleCallback;

    invoke-static {v2}, Lo/ItemTouchHelper$SimpleCallback;->onMessageChannelReady(Lo/ItemTouchHelper$SimpleCallback;)Lo/setRecycleChildrenOnDetach;

    move-result-object v2

    if-nez v2, :cond_6

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 5061
    :cond_6
    iget-object v3, v2, Lo/setRecycleChildrenOnDetach;->getInterfaceDescriptor:Ljava/lang/String;

    if-nez v3, :cond_7

    iget-object v3, v2, Lo/setRecycleChildrenOnDetach;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    :cond_7
    const-string v2, ""

    if-nez v3, :cond_8

    move-object v3, v2

    .line 1192
    :cond_8
    iget-object v4, p0, Lo/ItemTouchHelper$SimpleCallback$onRelationshipValidationResult;->onMessageChannelReady:Lo/ItemTouchHelper$SimpleCallback;

    invoke-static {v4}, Lo/ItemTouchHelper$SimpleCallback;->onMessageChannelReady(Lo/ItemTouchHelper$SimpleCallback;)Lo/setRecycleChildrenOnDetach;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lo/setRecycleChildrenOnDetach;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    goto :goto_1

    :cond_9
    move-object v2, v4

    .line 1188
    :cond_a
    :goto_1
    invoke-direct {p1, v0, v3, v2}, Lcom/dreamplug/fabrik/ui/lending/WorkFlowUpdateRequest;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, p1}, Lo/cachePreLayoutSpanMapping;->onNavigationEvent(Lcom/dreamplug/fabrik/ui/lending/WorkFlowUpdateRequest;)V

    .line 46
    :cond_b
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
