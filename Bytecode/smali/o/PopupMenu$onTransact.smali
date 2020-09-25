.class public final Lo/PopupMenu$onTransact;
.super Landroid/text/style/ClickableSpan;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/PopupMenu;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/cred/pay/ui/checkout/card/cvv/CheckoutCvvFragment$onViewCreated$7",
        "Landroid/text/style/ClickableSpan;",
        "onClick",
        "",
        "widget",
        "Landroid/view/View;",
        "credpayui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/PopupMenu;


# direct methods
.method constructor <init>(Lo/PopupMenu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 145
    iput-object p1, p0, Lo/PopupMenu$onTransact;->onMessageChannelReady:Lo/PopupMenu;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    const-string/jumbo v0, "widget"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iget-object p1, p0, Lo/PopupMenu$onTransact;->onMessageChannelReady:Lo/PopupMenu;

    invoke-static {p1}, Lo/PopupMenu;->asBinder(Lo/PopupMenu;)V

    .line 148
    iget-object p1, p0, Lo/PopupMenu$onTransact;->onMessageChannelReady:Lo/PopupMenu;

    invoke-static {p1}, Lo/PopupMenu;->onMessageChannelReady(Lo/PopupMenu;)Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;

    move-result-object v0

    const-string v1, "$this$knowMoreEvent"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "instrument"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x4

    new-array v2, v1, [Lo/addWrite;

    .line 1168
    iget-object v3, v0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->extraCallback:Ljava/lang/String;

    .line 2043
    new-instance v4, Lo/addWrite;

    const-string v5, "payment_sub_method"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v4, v2, v3

    .line 2166
    iget-object v3, v0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->ICustomTabsCallback:Ljava/lang/String;

    .line 3043
    new-instance v4, Lo/addWrite;

    const-string v5, "payment_method"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    aput-object v4, v2, v3

    .line 4000
    iget-object p1, p1, Lo/PopupMenu;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/inflate;

    .line 4172
    iget-object v3, v0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->onPostMessage:Lcom/cred/pay/repository/models/checkout/InstrumentData;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 4226
    iget-object v3, v3, Lcom/cred/pay/repository/models/checkout/InstrumentData;->onNavigationEvent:Lcom/cred/pay/repository/models/checkout/CardDetails;

    if-eqz v3, :cond_0

    .line 4234
    iget-object v3, v3, Lcom/cred/pay/repository/models/checkout/CardDetails;->onPostMessage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v3, v4

    .line 4795
    :goto_0
    invoke-static {p1, v3}, Lo/inflate;->extraCallback(Lo/inflate;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string p1, "enrolled"

    goto :goto_1

    .line 4796
    :cond_1
    invoke-virtual {p1, v3}, Lo/inflate;->ICustomTabsCallback(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "eligible"

    goto :goto_1

    :cond_2
    const-string p1, "not_eligible"

    .line 5043
    :goto_1
    new-instance v3, Lo/addWrite;

    const-string v5, "card_vsc_status"

    invoke-direct {v3, v5, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x2

    aput-object v3, v2, p1

    const/4 p1, 0x3

    .line 5172
    iget-object v0, v0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->onPostMessage:Lcom/cred/pay/repository/models/checkout/InstrumentData;

    if-eqz v0, :cond_3

    .line 5226
    iget-object v0, v0, Lcom/cred/pay/repository/models/checkout/InstrumentData;->onNavigationEvent:Lcom/cred/pay/repository/models/checkout/CardDetails;

    if-eqz v0, :cond_3

    .line 5233
    iget-object v4, v0, Lcom/cred/pay/repository/models/checkout/CardDetails;->onMessageChannelReady:Ljava/lang/String;

    .line 6043
    :cond_3
    new-instance v0, Lo/addWrite;

    const-string v3, "bin"

    invoke-direct {v0, v3, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, v2, p1

    const-string p1, "pairs"

    .line 1027
    invoke-static {v2, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6088
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-static {v1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast p1, Ljava/util/Map;

    invoke-static {p1, v2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v0, "cvv_entry_bottom_sheet_vsc_know_more_click"

    .line 1027
    invoke-static {v0, p1}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
