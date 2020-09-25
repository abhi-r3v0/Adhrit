.class final Lo/setExitTransition$asBinder;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setExitTransition;
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
.field final synthetic ICustomTabsCallback:Lo/setExitTransition;


# direct methods
.method constructor <init>(Lo/setExitTransition;)V
    .locals 0

    iput-object p1, p0, Lo/setExitTransition$asBinder;->ICustomTabsCallback:Lo/setExitTransition;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 44
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1185
    iget-object p1, p0, Lo/setExitTransition$asBinder;->ICustomTabsCallback:Lo/setExitTransition;

    invoke-static {p1}, Lo/setExitTransition;->onNavigationEvent(Lo/setExitTransition;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    const-string v0, "add_debit_card_screen_pay_now_click"

    .line 1186
    invoke-static {v0, p1}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 1187
    iget-object v0, p0, Lo/setExitTransition$asBinder;->ICustomTabsCallback:Lo/setExitTransition;

    invoke-static {v0}, Lo/setExitTransition;->onMessageChannelReady(Lo/setExitTransition;)Lo/addWrite;

    move-result-object v0

    .line 2000
    iget-object v1, v0, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 1187
    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .line 3000
    iget-object v0, v0, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 1187
    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 1188
    iget-object v0, p0, Lo/setExitTransition$asBinder;->ICustomTabsCallback:Lo/setExitTransition;

    sget v1, Lo/onItemHoverEnter$onNavigationEvent;->creditCardEditText:I

    invoke-virtual {v0, v1}, Lo/setExitTransition;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/recycleFromStart;

    const-string v1, "creditCardEditText"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, " "

    const-string v3, ""

    .line 3075
    invoke-static {v0, v2, v3, v1}, Lo/childWrites;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 1189
    iget-object v0, p0, Lo/setExitTransition$asBinder;->ICustomTabsCallback:Lo/setExitTransition;

    sget v1, Lo/onItemHoverEnter$onNavigationEvent;->etCvv:I

    invoke-virtual {v0, v1}, Lo/setExitTransition;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, "etCvv"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1190
    iget-object v0, p0, Lo/setExitTransition$asBinder;->ICustomTabsCallback:Lo/setExitTransition;

    invoke-static {v0}, Lo/setExitTransition;->asInterface(Lo/setExitTransition;)Lo/setWidth;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4031
    iget-object v0, v0, Lo/setWidth;->onPostMessage:Lo/setActive;

    if-eqz v0, :cond_1

    .line 4320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 4321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 1190
    :goto_0
    check-cast v0, Lo/setWidth$onMessageChannelReady;

    if-eqz v0, :cond_1

    .line 5241
    iget-object p1, v0, Lo/setWidth$onMessageChannelReady;->ICustomTabsCallback:Lcom/cred/pay/repository/models/CardBinDetails;

    :cond_1
    move-object v8, p1

    if-nez v8, :cond_2

    .line 1190
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 1191
    :cond_2
    iget-object p1, p0, Lo/setExitTransition$asBinder;->ICustomTabsCallback:Lo/setExitTransition;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lo/isCurrent$onMessageChannelReady;->extraCallback(Landroid/app/Activity;)V

    .line 1192
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lo/setExitTransition$asBinder$3;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lo/setExitTransition$asBinder$3;-><init>(Lo/setExitTransition$asBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cred/pay/repository/models/CardBinDetails;)V

    check-cast v0, Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 1196
    :cond_3
    iget-object p1, p0, Lo/setExitTransition$asBinder;->ICustomTabsCallback:Lo/setExitTransition;

    invoke-static {p1}, Lo/setExitTransition;->onRelationshipValidationResult(Lo/setExitTransition;)V

    .line 44
    :goto_1
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
