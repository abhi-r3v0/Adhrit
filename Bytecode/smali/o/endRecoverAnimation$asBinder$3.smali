.class final Lo/endRecoverAnimation$asBinder$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/endRecoverAnimation$asBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/LoanManagementResponse;

.field private synthetic onNavigationEvent:Lo/endRecoverAnimation$asBinder;


# direct methods
.method constructor <init>(Lo/endRecoverAnimation$asBinder;Lcom/dreamplug/fabrik/ui/lending/model/LoanManagementResponse;)V
    .locals 0

    iput-object p1, p0, Lo/endRecoverAnimation$asBinder$3;->onNavigationEvent:Lo/endRecoverAnimation$asBinder;

    iput-object p2, p0, Lo/endRecoverAnimation$asBinder$3;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/LoanManagementResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 115
    iget-object v0, p0, Lo/endRecoverAnimation$asBinder$3;->onNavigationEvent:Lo/endRecoverAnimation$asBinder;

    iget-object v0, v0, Lo/endRecoverAnimation$asBinder;->onPostMessage:Lo/endRecoverAnimation;

    invoke-virtual {v0}, Lo/onAudioInfoChanged;->m_()V

    .line 116
    iget-object v0, p0, Lo/endRecoverAnimation$asBinder$3;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/LoanManagementResponse;

    if-eqz v0, :cond_4

    .line 1013
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanManagementResponse;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;

    if-eqz v0, :cond_4

    .line 1025
    iget-object v7, v0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Details;

    if-eqz v7, :cond_4

    .line 117
    iget-object v0, p0, Lo/endRecoverAnimation$asBinder$3;->onNavigationEvent:Lo/endRecoverAnimation$asBinder;

    iget-object v0, v0, Lo/endRecoverAnimation$asBinder;->onPostMessage:Lo/endRecoverAnimation;

    .line 2000
    iget-object v0, v0, Lo/endRecoverAnimation;->extraCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lo/getMoveDuration;

    .line 117
    iget-object v0, p0, Lo/endRecoverAnimation$asBinder$3;->onNavigationEvent:Lo/endRecoverAnimation$asBinder;

    iget-object v0, v0, Lo/endRecoverAnimation$asBinder;->onPostMessage:Lo/endRecoverAnimation;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    const-string v2, "NA"

    const-string/jumbo v3, "source_id"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "arguments!!.getString(SOURCE_ID, \"NA\")"

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iget-object v3, p0, Lo/endRecoverAnimation$asBinder$3;->onNavigationEvent:Lo/endRecoverAnimation$asBinder;

    iget-object v3, v3, Lo/endRecoverAnimation$asBinder;->onPostMessage:Lo/endRecoverAnimation;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    const-string v4, "loan_id"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "arguments!!.getString(LOAN_ID, \"NA\")"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object v4, p0, Lo/endRecoverAnimation$asBinder$3;->onNavigationEvent:Lo/endRecoverAnimation$asBinder;

    iget-object v4, v4, Lo/endRecoverAnimation$asBinder;->onPostMessage:Lo/endRecoverAnimation;

    invoke-static {v4}, Lo/endRecoverAnimation;->onPostMessage(Lo/endRecoverAnimation;)Landroid/widget/EditText;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lo/endRecoverAnimation;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 120
    iget-object v6, p0, Lo/endRecoverAnimation$asBinder$3;->onNavigationEvent:Lo/endRecoverAnimation$asBinder;

    iget-object v6, v6, Lo/endRecoverAnimation$asBinder;->onPostMessage:Lo/endRecoverAnimation;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    if-nez v6, :cond_3

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_3
    const-string v8, "context"

    invoke-virtual {v6, v8, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "arguments!!.getString(CONTEXT, \"NA\")"

    invoke-static {v6, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    .line 117
    invoke-virtual/range {v1 .. v7}, Lo/getMoveDuration;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Details;)V

    :cond_4
    return-void
.end method
