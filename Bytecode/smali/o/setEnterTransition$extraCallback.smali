.class final Lo/setEnterTransition$extraCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setEnterTransition;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field private synthetic ICustomTabsCallback:Lo/setEnterTransition;


# direct methods
.method constructor <init>(Lo/setEnterTransition;)V
    .locals 0

    iput-object p1, p0, Lo/setEnterTransition$extraCallback;->ICustomTabsCallback:Lo/setEnterTransition;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    move-object/from16 v0, p0

    .line 45
    move-object/from16 v1, p1

    check-cast v1, Landroid/view/View;

    const-string v2, "it"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1094
    iget-object v1, v0, Lo/setEnterTransition$extraCallback;->ICustomTabsCallback:Lo/setEnterTransition;

    invoke-static {v1}, Lo/setEnterTransition;->ICustomTabsCallback(Lo/setEnterTransition;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    const-string v2, "debit_card_cvv_screen_pay_now_click"

    .line 1095
    invoke-static {v2, v1}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 1096
    iget-object v2, v0, Lo/setEnterTransition$extraCallback;->ICustomTabsCallback:Lo/setEnterTransition;

    invoke-static {v2}, Lo/setEnterTransition;->onPostMessage(Lo/setEnterTransition;)Z

    move-result v2

    const-string v3, "etCvv"

    if-eqz v2, :cond_2

    .line 1097
    iget-object v2, v0, Lo/setEnterTransition$extraCallback;->ICustomTabsCallback:Lo/setEnterTransition;

    invoke-static {v2}, Lo/setEnterTransition;->onNavigationEvent(Lo/setEnterTransition;)Lo/addWrite;

    move-result-object v2

    .line 2000
    iget-object v4, v2, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 1097
    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    .line 3000
    iget-object v2, v2, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 1097
    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    .line 1098
    iget-object v2, v0, Lo/setEnterTransition$extraCallback;->ICustomTabsCallback:Lo/setEnterTransition;

    invoke-static {v2}, Lo/setEnterTransition;->extraCallback(Lo/setEnterTransition;)Lo/MenuItemHoverListener;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v4, v0, Lo/setEnterTransition$extraCallback;->ICustomTabsCallback:Lo/setEnterTransition;

    invoke-static {v4}, Lo/setEnterTransition;->extraCallback(Lo/setEnterTransition;)Lo/MenuItemHoverListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3040
    iget-object v1, v4, Lo/MenuItemHoverListener;->asBinder:Lcom/cred/pay/repository/models/CardInstrument;

    :cond_0
    move-object v5, v1

    if-nez v5, :cond_1

    .line 1098
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const v26, 0xffff3

    invoke-static/range {v5 .. v26}, Lcom/cred/pay/repository/models/CardInstrument;->onMessageChannelReady(Lcom/cred/pay/repository/models/CardInstrument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cred/pay/repository/models/Status;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;I)Lcom/cred/pay/repository/models/CardInstrument;

    move-result-object v1

    check-cast v1, Lo/isInputMethodNotNeeded;

    iget-object v4, v0, Lo/setEnterTransition$extraCallback;->ICustomTabsCallback:Lo/setEnterTransition;

    sget v5, Lo/onItemHoverEnter$onNavigationEvent;->etCvv:I

    invoke-virtual {v4, v5}, Lo/setEnterTransition;->extraCallback(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-static {v4, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lo/MenuItemHoverListener;->extraCallback(Lo/isInputMethodNotNeeded;Ljava/lang/String;)V

    goto :goto_0

    .line 1100
    :cond_2
    iget-object v2, v0, Lo/setEnterTransition$extraCallback;->ICustomTabsCallback:Lo/setEnterTransition;

    invoke-static {v2}, Lo/setEnterTransition;->extraCallback(Lo/setEnterTransition;)Lo/MenuItemHoverListener;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v4, v0, Lo/setEnterTransition$extraCallback;->ICustomTabsCallback:Lo/setEnterTransition;

    invoke-static {v4}, Lo/setEnterTransition;->extraCallback(Lo/setEnterTransition;)Lo/MenuItemHoverListener;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 4040
    iget-object v1, v4, Lo/MenuItemHoverListener;->asBinder:Lcom/cred/pay/repository/models/CardInstrument;

    :cond_3
    if-nez v1, :cond_4

    .line 1100
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_4
    check-cast v1, Lo/isInputMethodNotNeeded;

    iget-object v4, v0, Lo/setEnterTransition$extraCallback;->ICustomTabsCallback:Lo/setEnterTransition;

    sget v5, Lo/onItemHoverEnter$onNavigationEvent;->etCvv:I

    invoke-virtual {v4, v5}, Lo/setEnterTransition;->extraCallback(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-static {v4, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lo/MenuItemHoverListener;->extraCallback(Lo/isInputMethodNotNeeded;Ljava/lang/String;)V

    .line 45
    :cond_5
    :goto_0
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v1
.end method
