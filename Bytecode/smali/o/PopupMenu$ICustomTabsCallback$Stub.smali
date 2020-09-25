.class final Lo/PopupMenu$ICustomTabsCallback$Stub;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/PopupMenu;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field private synthetic ICustomTabsCallback:Z

.field final synthetic extraCallback:Lo/PopupMenu;

.field private synthetic onMessageChannelReady:Z


# direct methods
.method constructor <init>(Lo/PopupMenu;ZZ)V
    .locals 0

    iput-object p1, p0, Lo/PopupMenu$ICustomTabsCallback$Stub;->extraCallback:Lo/PopupMenu;

    iput-boolean p2, p0, Lo/PopupMenu$ICustomTabsCallback$Stub;->ICustomTabsCallback:Z

    iput-boolean p3, p0, Lo/PopupMenu$ICustomTabsCallback$Stub;->onMessageChannelReady:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 52
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1101
    iget-object p1, p0, Lo/PopupMenu$ICustomTabsCallback$Stub;->extraCallback:Lo/PopupMenu;

    invoke-static {p1}, Lo/PopupMenu;->extraCallback(Lo/PopupMenu;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1102
    iget-object p1, p0, Lo/PopupMenu$ICustomTabsCallback$Stub;->extraCallback:Lo/PopupMenu;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lo/isCurrent$onMessageChannelReady;->extraCallback(Landroid/app/Activity;)V

    .line 1103
    iget-object p1, p0, Lo/PopupMenu$ICustomTabsCallback$Stub;->extraCallback:Lo/PopupMenu;

    invoke-static {p1}, Lo/PopupMenu;->onPostMessage(Lo/PopupMenu;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1104
    iget-object p1, p0, Lo/PopupMenu$ICustomTabsCallback$Stub;->extraCallback:Lo/PopupMenu;

    invoke-static {p1}, Lo/PopupMenu;->onNavigationEvent(Lo/PopupMenu;)Lo/addWrite;

    move-result-object p1

    goto :goto_0

    .line 2043
    :cond_0
    new-instance p1, Lo/addWrite;

    invoke-direct {p1, v0, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3000
    :goto_0
    iget-object v1, p1, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 1103
    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 4000
    iget-object p1, p1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 1103
    move-object v6, p1

    check-cast v6, Ljava/lang/String;

    .line 1106
    iget-boolean p1, p0, Lo/PopupMenu$ICustomTabsCallback$Stub;->ICustomTabsCallback:Z

    const/4 v1, 0x1

    const-string/jumbo v8, "visaCheckBox"

    const/4 v9, 0x2

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lo/PopupMenu$ICustomTabsCallback$Stub;->onMessageChannelReady:Z

    if-nez p1, :cond_1

    .line 1107
    sget-object p1, Lo/setOnItemSelectedListener;->extraCallback:Lo/setOnItemSelectedListener;

    .line 5000
    sget-object p1, Lo/setOnItemSelectedListener;->onMessageChannelReady:Lo/SortedList$Callback;

    sget-object v2, Lo/setOnItemSelectedListener;->ICustomTabsCallback:[Lo/applyUserOverwrite;

    aget-object v2, v2, v9

    invoke-virtual {p1, v2}, Lo/SortedListAdapterCallback;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    add-int/2addr p1, v1

    .line 6000
    sget-object v2, Lo/setOnItemSelectedListener;->onMessageChannelReady:Lo/SortedList$Callback;

    sget-object v3, Lo/setOnItemSelectedListener;->ICustomTabsCallback:[Lo/applyUserOverwrite;

    aget-object v3, v3, v9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lo/SortedListAdapterCallback;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1108
    iget-object p1, p0, Lo/PopupMenu$ICustomTabsCallback$Stub;->extraCallback:Lo/PopupMenu;

    new-instance v2, Lo/PopupMenu$ICustomTabsCallback$Stub$3;

    invoke-direct {v2, p0, v5, v6}, Lo/PopupMenu$ICustomTabsCallback$Stub$3;-><init>(Lo/PopupMenu$ICustomTabsCallback$Stub;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lo/onDisconnectSetValue;

    invoke-static {p1, v2}, Lo/PopupMenu;->ICustomTabsCallback(Lo/PopupMenu;Lo/onDisconnectSetValue;)V

    goto :goto_1

    .line 1112
    :cond_1
    iget-object p1, p0, Lo/PopupMenu$ICustomTabsCallback$Stub;->extraCallback:Lo/PopupMenu;

    .line 7000
    iget-object p1, p1, Lo/PopupMenu;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lo/inflate;

    .line 1112
    iget-object p1, p0, Lo/PopupMenu$ICustomTabsCallback$Stub;->extraCallback:Lo/PopupMenu;

    invoke-static {p1}, Lo/PopupMenu;->onMessageChannelReady(Lo/PopupMenu;)Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;

    move-result-object v3

    iget-object p1, p0, Lo/PopupMenu$ICustomTabsCallback$Stub;->extraCallback:Lo/PopupMenu;

    sget v4, Lo/onItemHoverEnter$onNavigationEvent;->etCvv:I

    invoke-virtual {p1, v4}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const-string v4, "etCvv"

    invoke-static {p1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lo/PopupMenu$ICustomTabsCallback$Stub;->extraCallback:Lo/PopupMenu;

    sget v7, Lo/onItemHoverEnter$onNavigationEvent;->visaCheckBox:I

    invoke-virtual {p1, v7}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-static {p1, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v7

    invoke-virtual/range {v2 .. v7}, Lo/inflate;->ICustomTabsCallback(Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1114
    :goto_1
    iget-object p1, p0, Lo/PopupMenu$ICustomTabsCallback$Stub;->extraCallback:Lo/PopupMenu;

    invoke-static {p1}, Lo/PopupMenu;->onMessageChannelReady(Lo/PopupMenu;)Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;

    move-result-object v2

    iget-object v3, p0, Lo/PopupMenu$ICustomTabsCallback$Stub;->extraCallback:Lo/PopupMenu;

    sget v4, Lo/onItemHoverEnter$onNavigationEvent;->visaCheckBox:I

    invoke-virtual {v3, v4}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-static {v3, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    const-string v4, "$this$payCtaEvent"

    invoke-static {p1, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "instrument"

    invoke-static {v2, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x5

    new-array v5, v4, [Lo/addWrite;

    const/4 v6, 0x0

    .line 7168
    iget-object v7, v2, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->extraCallback:Ljava/lang/String;

    .line 8043
    new-instance v8, Lo/addWrite;

    const-string v10, "payment_sub_method"

    invoke-direct {v8, v10, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v5, v6

    .line 8166
    iget-object v6, v2, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->ICustomTabsCallback:Ljava/lang/String;

    .line 9043
    new-instance v7, Lo/addWrite;

    const-string v8, "payment_method"

    invoke-direct {v7, v8, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v5, v1

    .line 10000
    iget-object p1, p1, Lo/PopupMenu;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/inflate;

    .line 10172
    iget-object v1, v2, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->onPostMessage:Lcom/cred/pay/repository/models/checkout/InstrumentData;

    if-eqz v1, :cond_2

    .line 10226
    iget-object v1, v1, Lcom/cred/pay/repository/models/checkout/InstrumentData;->onNavigationEvent:Lcom/cred/pay/repository/models/checkout/CardDetails;

    if-eqz v1, :cond_2

    .line 10234
    iget-object v1, v1, Lcom/cred/pay/repository/models/checkout/CardDetails;->onPostMessage:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v1, v0

    .line 10795
    :goto_2
    invoke-static {p1, v1}, Lo/inflate;->extraCallback(Lo/inflate;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string p1, "enrolled"

    goto :goto_3

    .line 10796
    :cond_3
    invoke-virtual {p1, v1}, Lo/inflate;->ICustomTabsCallback(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "eligible"

    goto :goto_3

    :cond_4
    const-string p1, "not_eligible"

    .line 11043
    :goto_3
    new-instance v1, Lo/addWrite;

    const-string v6, "card_vsc_status"

    invoke-direct {v1, v6, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v5, v9

    const/4 p1, 0x3

    .line 11172
    iget-object v1, v2, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->onPostMessage:Lcom/cred/pay/repository/models/checkout/InstrumentData;

    if-eqz v1, :cond_5

    .line 11226
    iget-object v1, v1, Lcom/cred/pay/repository/models/checkout/InstrumentData;->onNavigationEvent:Lcom/cred/pay/repository/models/checkout/CardDetails;

    if-eqz v1, :cond_5

    .line 11233
    iget-object v0, v1, Lcom/cred/pay/repository/models/checkout/CardDetails;->onMessageChannelReady:Ljava/lang/String;

    .line 12043
    :cond_5
    new-instance v1, Lo/addWrite;

    const-string v2, "bin"

    invoke-direct {v1, v2, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v5, p1

    const/4 p1, 0x4

    .line 7022
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 13043
    new-instance v1, Lo/addWrite;

    const-string/jumbo v2, "vsc_opted_in"

    invoke-direct {v1, v2, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v5, p1

    const-string p1, "pairs"

    .line 7017
    invoke-static {v5, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13088
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-static {v4}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast p1, Ljava/util/Map;

    invoke-static {p1, v5}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v0, "cvv_entry_bottom_sheet_proceed_to_pay_click"

    .line 7017
    invoke-static {v0, p1}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 52
    :cond_6
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
