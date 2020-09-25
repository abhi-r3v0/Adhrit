.class final Lo/ensureMenuView$onPostMessage;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ensureMenuView;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic extraCallback:Lo/ensureMenuView;


# direct methods
.method constructor <init>(Lo/ensureMenuView;)V
    .locals 0

    iput-object p1, p0, Lo/ensureMenuView$onPostMessage;->extraCallback:Lo/ensureMenuView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 35
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1150
    iget-object p1, p0, Lo/ensureMenuView$onPostMessage;->extraCallback:Lo/ensureMenuView;

    .line 2037
    iget-object p1, p1, Lo/ensureMenuView;->onMessageChannelReady:Lo/getContentInsetStart;

    const-string/jumbo v0, "viewModel"

    if-nez p1, :cond_0

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 2071
    :cond_0
    iget-object p1, p1, Lo/getContentInsetStart;->extraCallback:Lo/setActive;

    .line 2320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v2

    :goto_0
    if-nez p1, :cond_2

    .line 1150
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    check-cast p1, Lo/setContentInsetsRelative;

    .line 3019
    iget-object p1, p1, Lo/setContentInsetsRelative;->onMessageChannelReady:Ljava/lang/String;

    const-string/jumbo v1, "submit"

    .line 1150
    invoke-static {p1, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    if-nez p1, :cond_1a

    .line 1154
    iget-object p1, p0, Lo/ensureMenuView$onPostMessage;->extraCallback:Lo/ensureMenuView;

    .line 3037
    iget-object p1, p1, Lo/ensureMenuView;->onMessageChannelReady:Lo/getContentInsetStart;

    if-nez p1, :cond_3

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 3069
    :cond_3
    iget-object p1, p1, Lo/getContentInsetStart;->onNavigationEvent:Lo/setActive;

    .line 3320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 3321
    sget-object v3, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq p1, v3, :cond_4

    goto :goto_1

    :cond_4
    move-object p1, v2

    :goto_1
    if-nez p1, :cond_5

    .line 1154
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_5
    check-cast p1, Lcom/dreamplug/androidapp/login/LoginUiModel;

    invoke-virtual {p1}, Lcom/dreamplug/androidapp/login/LoginUiModel;->getState()Ljava/lang/String;

    move-result-object p1

    const-string v3, "phone"

    invoke-static {p1, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lo/ensureMenuView$onPostMessage;->extraCallback:Lo/ensureMenuView;

    invoke-static {p1}, Lo/ensureMenuView;->onPostMessage(Lo/ensureMenuView;)Lo/ensureMenu;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 4039
    iget-boolean p1, p1, Lo/ensureMenu;->onPostMessage:Z

    if-eq p1, v1, :cond_8

    .line 1155
    :cond_6
    iget-object p1, p0, Lo/ensureMenuView$onPostMessage;->extraCallback:Lo/ensureMenuView;

    invoke-static {p1}, Lo/ensureMenuView;->onPostMessage(Lo/ensureMenuView;)Lo/ensureMenu;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 4162
    iget-object p1, v0, Lo/ensureMenu;->extraCallback:Landroid/widget/TextView;

    if-eqz p1, :cond_7

    iget-object v1, v0, Lo/ensureMenu;->ICustomTabsCallback:Landroid/view/animation/Animation;

    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_7
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xd

    .line 4158
    invoke-static/range {v0 .. v5}, Lo/ensureMenu;->onPostMessage(Lo/ensureMenu;ZZLjava/lang/CharSequence;II)V

    goto/16 :goto_3

    .line 1156
    :cond_8
    iget-object p1, p0, Lo/ensureMenuView$onPostMessage;->extraCallback:Lo/ensureMenuView;

    .line 5037
    iget-object p1, p1, Lo/ensureMenuView;->onMessageChannelReady:Lo/getContentInsetStart;

    if-nez p1, :cond_9

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 5069
    :cond_9
    iget-object p1, p1, Lo/getContentInsetStart;->onNavigationEvent:Lo/setActive;

    .line 5320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 5321
    sget-object v3, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq p1, v3, :cond_a

    goto :goto_2

    :cond_a
    move-object p1, v2

    :goto_2
    if-nez p1, :cond_b

    .line 1156
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_b
    check-cast p1, Lcom/dreamplug/androidapp/login/LoginUiModel;

    invoke-virtual {p1}, Lcom/dreamplug/androidapp/login/LoginUiModel;->getState()Ljava/lang/String;

    move-result-object p1

    const-string v3, "email"

    invoke-static {p1, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v3, 0x0

    if-eqz p1, :cond_15

    const-string p1, "onboard_email_proceed"

    .line 1157
    invoke-static {p1}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 1158
    iget-object p1, p0, Lo/ensureMenuView$onPostMessage;->extraCallback:Lo/ensureMenuView;

    invoke-static {p1}, Lo/ensureMenuView;->extraCallback(Lo/ensureMenuView;)Lo/ensureMenu;

    move-result-object p1

    if-nez p1, :cond_c

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 6039
    :cond_c
    iget-boolean p1, p1, Lo/ensureMenu;->onPostMessage:Z

    if-eqz p1, :cond_12

    .line 1159
    iget-object p1, p0, Lo/ensureMenuView$onPostMessage;->extraCallback:Lo/ensureMenuView;

    .line 7037
    iget-object p1, p1, Lo/ensureMenuView;->onMessageChannelReady:Lo/getContentInsetStart;

    if-nez p1, :cond_d

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1159
    :cond_d
    iget-object v1, p0, Lo/ensureMenuView$onPostMessage;->extraCallback:Lo/ensureMenuView;

    invoke-static {v1}, Lo/ensureMenuView;->onMessageChannelReady(Lo/ensureMenuView;)Lo/getContentInsetEnd;

    move-result-object v1

    iget-object v3, p0, Lo/ensureMenuView$onPostMessage;->extraCallback:Lo/ensureMenuView;

    .line 8037
    iget-object v3, v3, Lo/ensureMenuView;->onMessageChannelReady:Lo/getContentInsetStart;

    if-nez v3, :cond_e

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 8069
    :cond_e
    iget-object v0, v3, Lo/getContentInsetStart;->onNavigationEvent:Lo/setActive;

    .line 8320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 8321
    sget-object v3, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v3, :cond_f

    move-object v2, v0

    :cond_f
    if-nez v2, :cond_10

    .line 1159
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_10
    check-cast v2, Lcom/dreamplug/androidapp/login/LoginUiModel;

    invoke-virtual {v2}, Lcom/dreamplug/androidapp/login/LoginUiModel;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lo/getContentInsetEnd;->extraCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/ensureMenuView$onPostMessage;->extraCallback:Lo/ensureMenuView;

    invoke-static {v1}, Lo/ensureMenuView;->extraCallback(Lo/ensureMenuView;)Lo/ensureMenu;

    move-result-object v1

    if-nez v1, :cond_11

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 9039
    :cond_11
    iget-boolean v1, v1, Lo/ensureMenu;->onPostMessage:Z

    .line 1159
    invoke-virtual {p1, v0, v1}, Lo/getContentInsetStart;->onMessageChannelReady(Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 1161
    :cond_12
    iget-object p1, p0, Lo/ensureMenuView$onPostMessage;->extraCallback:Lo/ensureMenuView;

    invoke-static {p1}, Lo/ensureMenuView;->extraCallback(Lo/ensureMenuView;)Lo/ensureMenu;

    move-result-object p1

    if-nez p1, :cond_13

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 9162
    :cond_13
    iget-object v0, p1, Lo/ensureMenu;->extraCallback:Landroid/widget/TextView;

    if-eqz v0, :cond_14

    iget-object p1, p1, Lo/ensureMenu;->ICustomTabsCallback:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1162
    :cond_14
    iget-object p1, p0, Lo/ensureMenuView$onPostMessage;->extraCallback:Lo/ensureMenuView;

    invoke-static {p1}, Lo/ensureMenuView;->extraCallback(Lo/ensureMenuView;)Lo/ensureMenu;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 1164
    sget-object v0, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v0, 0x7f13042e

    invoke-static {v0}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 1162
    invoke-virtual {p1, v1, v1, v0, v3}, Lo/ensureMenu;->onNavigationEvent(ZZLjava/lang/CharSequence;I)V

    goto :goto_3

    .line 1168
    :cond_15
    iget-object p1, p0, Lo/ensureMenuView$onPostMessage;->extraCallback:Lo/ensureMenuView;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->consent:I

    invoke-virtual {p1, v1}, Lo/ensureMenuView;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    const-string v1, "consent"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lo/createFullSpanItemFromEnd;->setEnabled(Z)V

    .line 1169
    iget-object p1, p0, Lo/ensureMenuView$onPostMessage;->extraCallback:Lo/ensureMenuView;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->consent:I

    invoke-virtual {p1, v1}, Lo/ensureMenuView;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    new-instance v1, Lo/ensureMenuView$onPostMessage$5;

    invoke-direct {v1, p0}, Lo/ensureMenuView$onPostMessage$5;-><init>(Lo/ensureMenuView$onPostMessage;)V

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v4, 0x320

    invoke-virtual {p1, v1, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1170
    iget-object p1, p0, Lo/ensureMenuView$onPostMessage;->extraCallback:Lo/ensureMenuView;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->whatsappConsent:I

    invoke-virtual {p1, v1}, Lo/ensureMenuView;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string/jumbo v1, "whatsappConsent"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1171
    iget-object p1, p0, Lo/ensureMenuView$onPostMessage;->extraCallback:Lo/ensureMenuView;

    .line 10037
    iget-object p1, p1, Lo/ensureMenuView;->onMessageChannelReady:Lo/getContentInsetStart;

    if-nez p1, :cond_16

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1171
    :cond_16
    iget-object v1, p0, Lo/ensureMenuView$onPostMessage;->extraCallback:Lo/ensureMenuView;

    invoke-static {v1}, Lo/ensureMenuView;->onMessageChannelReady(Lo/ensureMenuView;)Lo/getContentInsetEnd;

    move-result-object v1

    iget-object v3, p0, Lo/ensureMenuView$onPostMessage;->extraCallback:Lo/ensureMenuView;

    .line 11037
    iget-object v3, v3, Lo/ensureMenuView;->onMessageChannelReady:Lo/getContentInsetStart;

    if-nez v3, :cond_17

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 11069
    :cond_17
    iget-object v0, v3, Lo/getContentInsetStart;->onNavigationEvent:Lo/setActive;

    .line 11320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 11321
    sget-object v3, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v3, :cond_18

    move-object v2, v0

    :cond_18
    if-nez v2, :cond_19

    .line 1171
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_19
    check-cast v2, Lcom/dreamplug/androidapp/login/LoginUiModel;

    invoke-virtual {v2}, Lcom/dreamplug/androidapp/login/LoginUiModel;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lo/getContentInsetEnd;->extraCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lo/getContentInsetStart;->onPostMessage(Lo/getContentInsetStart;Ljava/lang/String;)V

    .line 35
    :cond_1a
    :goto_3
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
