.class final Lo/clearSelection$ICustomTabsService;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/clearSelection;
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
.field final synthetic onPostMessage:Lo/clearSelection;


# direct methods
.method constructor <init>(Lo/clearSelection;)V
    .locals 0

    iput-object p1, p0, Lo/clearSelection$ICustomTabsService;->onPostMessage:Lo/clearSelection;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 61
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1206
    iget-object p1, p0, Lo/clearSelection$ICustomTabsService;->onPostMessage:Lo/clearSelection;

    invoke-static {p1}, Lo/clearSelection;->onPostMessage(Lo/clearSelection;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1207
    iget-object p1, p0, Lo/clearSelection$ICustomTabsService;->onPostMessage:Lo/clearSelection;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lo/isCurrent$onMessageChannelReady;->extraCallback(Landroid/app/Activity;)V

    .line 1208
    iget-object p1, p0, Lo/clearSelection$ICustomTabsService;->onPostMessage:Lo/clearSelection;

    .line 2079
    iget-object v0, p1, Lo/clearSelection;->ICustomTabsCallback:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    .line 1208
    :cond_0
    iget-object v2, p0, Lo/clearSelection$ICustomTabsService;->onPostMessage:Lo/clearSelection;

    invoke-static {v2}, Lo/clearSelection;->onMessageChannelReady(Lo/clearSelection;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "eligible"

    goto :goto_0

    :cond_1
    const-string v2, "not_eligible"

    :goto_0
    const-string v3, "$this$payCtaEvent"

    invoke-static {p1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "source"

    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "cardVscStatus"

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4000
    iget-object p1, p1, Lo/clearSelection;->extraCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/inflate;

    .line 3013
    invoke-virtual {p1}, Lo/inflate;->onRelationshipValidationResult()Lcom/cred/pay/repository/models/SurchargeDetails;

    move-result-object p1

    const/4 v3, 0x4

    new-array v4, v3, [Lo/addWrite;

    .line 4043
    new-instance v5, Lo/addWrite;

    const-string/jumbo v6, "source_screen"

    invoke-direct {v5, v6, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    aput-object v5, v4, v0

    .line 5043
    new-instance v5, Lo/addWrite;

    const-string v6, "card_vsc_status"

    invoke-direct {v5, v6, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    aput-object v5, v4, v2

    const/4 v5, 0x2

    if-eqz p1, :cond_2

    .line 6035
    iget-object v6, p1, Lcom/cred/pay/repository/models/SurchargeDetails;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 6043
    :goto_1
    new-instance v7, Lo/addWrite;

    const-string/jumbo v8, "surcharge_id"

    invoke-direct {v7, v8, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v4, v5

    const/4 v5, 0x3

    const-wide/16 v6, 0x0

    if-eqz p1, :cond_3

    .line 7031
    iget-object p1, p1, Lcom/cred/pay/repository/models/SurchargeDetails;->onNavigationEvent:Ljava/lang/Double;

    if-eqz p1, :cond_3

    .line 3018
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    goto :goto_2

    :cond_3
    move-wide v8, v6

    :goto_2
    cmpg-double p1, v8, v6

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 7043
    new-instance v2, Lo/addWrite;

    const-string/jumbo v6, "surcharge_applied"

    invoke-direct {v2, v6, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v4, v5

    const-string p1, "pairs"

    .line 3014
    invoke-static {v4, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7088
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-static {v3}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v2

    invoke-direct {p1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast p1, Ljava/util/Map;

    invoke-static {p1, v4}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v2, "add_card_bottom_sheet_proceed_to_pay_click"

    .line 3014
    invoke-static {v2, p1}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 1209
    iget-object p1, p0, Lo/clearSelection$ICustomTabsService;->onPostMessage:Lo/clearSelection;

    invoke-static {p1}, Lo/clearSelection;->onRelationshipValidationResult(Lo/clearSelection;)Lo/addWrite;

    move-result-object p1

    .line 8000
    iget-object v2, p1, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 1209
    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    .line 9000
    iget-object p1, p1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 1209
    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    .line 1210
    iget-object p1, p0, Lo/clearSelection$ICustomTabsService;->onPostMessage:Lo/clearSelection;

    sget v2, Lo/onItemHoverEnter$onNavigationEvent;->creditCardEditText:I

    invoke-virtual {p1, v2}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/recycleFromStart;

    const-string v2, "creditCardEditText"

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string p1, " "

    .line 9075
    invoke-static {v10, p1, v1, v0}, Lo/childWrites;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 1212
    iget-object p1, p0, Lo/clearSelection$ICustomTabsService;->onPostMessage:Lo/clearSelection;

    sget v1, Lo/onItemHoverEnter$onNavigationEvent;->etCvv:I

    invoke-virtual {p1, v1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const-string v1, "etCvv"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1213
    iget-object p1, p0, Lo/clearSelection$ICustomTabsService;->onPostMessage:Lo/clearSelection;

    sget v1, Lo/onItemHoverEnter$onNavigationEvent;->nameEditText:I

    invoke-virtual {p1, v1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const-string v1, "nameEditText"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lo/childWrites;->onMessageChannelReady(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1214
    new-instance p1, Lo/clearSelection$ICustomTabsService$1;

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v3 .. v10}, Lo/clearSelection$ICustomTabsService$1;-><init>(Lo/clearSelection$ICustomTabsService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    iget-object v1, p0, Lo/clearSelection$ICustomTabsService;->onPostMessage:Lo/clearSelection;

    invoke-static {v1}, Lo/clearSelection;->onMessageChannelReady(Lo/clearSelection;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1274
    iget-object v0, p0, Lo/clearSelection$ICustomTabsService;->onPostMessage:Lo/clearSelection;

    new-instance v1, Lo/clearSelection$ICustomTabsService$5;

    invoke-direct {v1, p1}, Lo/clearSelection$ICustomTabsService$5;-><init>(Lo/clearSelection$ICustomTabsService$1;)V

    check-cast v1, Lo/onDisconnectSetValue;

    invoke-static {v0, v1}, Lo/clearSelection;->extraCallback(Lo/clearSelection;Lo/onDisconnectSetValue;)V

    goto :goto_4

    .line 1278
    :cond_5
    invoke-virtual {p1, v0}, Lo/clearSelection$ICustomTabsService$1;->onPostMessage(Z)V

    goto :goto_4

    .line 1213
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1281
    :cond_7
    iget-object p1, p0, Lo/clearSelection$ICustomTabsService;->onPostMessage:Lo/clearSelection;

    invoke-static {p1}, Lo/clearSelection;->ICustomTabsCallback$Stub(Lo/clearSelection;)V

    .line 61
    :goto_4
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
