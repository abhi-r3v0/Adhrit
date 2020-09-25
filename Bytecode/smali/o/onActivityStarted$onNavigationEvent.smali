.class final Lo/onActivityStarted$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onActivityStarted;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCampaignResponse;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "campaign",
        "Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCampaignResponse;",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/onActivityStarted;


# direct methods
.method constructor <init>(Lo/onActivityStarted;)V
    .locals 0

    iput-object p1, p0, Lo/onActivityStarted$onNavigationEvent;->onNavigationEvent:Lo/onActivityStarted;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 3

    .line 38
    check-cast p1, Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCampaignResponse;

    if-eqz p1, :cond_1

    .line 1165
    iget-object v0, p0, Lo/onActivityStarted$onNavigationEvent;->onNavigationEvent:Lo/onActivityStarted;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->inviteView:I

    invoke-virtual {v0, v1}, Lo/onActivityStarted;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    const-string v1, "inviteView"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2031
    iget v1, p1, Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCampaignResponse;->onTransact:I

    .line 3025
    iget v2, p1, Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCampaignResponse;->onPostMessage:I

    if-ge v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 1165
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1166
    iget-object v0, p0, Lo/onActivityStarted$onNavigationEvent;->onNavigationEvent:Lo/onActivityStarted;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->inviteMessage:I

    invoke-virtual {v0, v1}, Lo/onActivityStarted;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "inviteMessage"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pay the bill for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4025
    iget v2, p1, Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCampaignResponse;->onPostMessage:I

    .line 4031
    iget p1, p1, Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCampaignResponse;->onTransact:I

    sub-int/2addr v2, p1

    .line 1166
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " more of your friends"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1168
    :cond_1
    iget-object p1, p0, Lo/onActivityStarted$onNavigationEvent;->onNavigationEvent:Lo/onActivityStarted;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method
