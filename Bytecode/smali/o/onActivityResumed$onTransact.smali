.class final Lo/onActivityResumed$onTransact;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onActivityResumed;-><init>()V
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
.field private synthetic extraCallback:Lo/onActivityResumed;


# direct methods
.method constructor <init>(Lo/onActivityResumed;)V
    .locals 0

    iput-object p1, p0, Lo/onActivityResumed$onTransact;->extraCallback:Lo/onActivityResumed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 5

    .line 45
    check-cast p1, Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCampaignResponse;

    .line 1285
    iget-object v0, p0, Lo/onActivityResumed$onTransact;->extraCallback:Lo/onActivityResumed;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->loader:I

    invoke-virtual {v0, v1}, Lo/onActivityResumed;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onDestroyView;

    const-string v1, "loader"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1287
    iget-object v0, p0, Lo/onActivityResumed$onTransact;->extraCallback:Lo/onActivityResumed;

    invoke-static {v0, p1}, Lo/onActivityResumed;->onMessageChannelReady(Lo/onActivityResumed;Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCampaignResponse;)V

    if-eqz p1, :cond_2

    .line 1289
    iget-object v0, p0, Lo/onActivityResumed$onTransact;->extraCallback:Lo/onActivityResumed;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->subTitle:I

    invoke-virtual {v0, v1}, Lo/onActivityResumed;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    const-string/jumbo v1, "subTitle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1290
    iget-object v0, p0, Lo/onActivityResumed$onTransact;->extraCallback:Lo/onActivityResumed;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->faqCta:I

    invoke-virtual {v0, v3}, Lo/onActivityResumed;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    const-string v3, "faqCta"

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1292
    iget-object v0, p0, Lo/onActivityResumed$onTransact;->extraCallback:Lo/onActivityResumed;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->subTitle:I

    invoke-virtual {v0, v3}, Lo/onActivityResumed;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2025
    iget v3, p1, Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCampaignResponse;->onPostMessage:I

    .line 2031
    iget v4, p1, Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCampaignResponse;->onTransact:I

    sub-int/2addr v3, v4

    .line 1292
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3025
    iget v3, p1, Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCampaignResponse;->onPostMessage:I

    .line 1292
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " gifts left"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3031
    iget v0, p1, Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCampaignResponse;->onTransact:I

    if-lez v0, :cond_1

    .line 1295
    iget-object v0, p0, Lo/onActivityResumed$onTransact;->extraCallback:Lo/onActivityResumed;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->campaignCta:I

    invoke-virtual {v0, v1}, Lo/onActivityResumed;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "campaignCta"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1296
    iget-object v0, p0, Lo/onActivityResumed$onTransact;->extraCallback:Lo/onActivityResumed;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->campaignCta:I

    invoke-virtual {v0, v2}, Lo/onActivityResumed;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4031
    iget v2, p1, Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCampaignResponse;->onTransact:I

    .line 1296
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5031
    iget p1, p1, Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCampaignResponse;->onTransact:I

    const/4 v2, 0x1

    if-le p1, v2, :cond_0

    const-string p1, "gifts"

    goto :goto_0

    :cond_0
    const-string p1, "gift"

    .line 1296
    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " sent"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1298
    :cond_1
    iget-object p1, p0, Lo/onActivityResumed$onTransact;->extraCallback:Lo/onActivityResumed;

    .line 6000
    iget-object p1, p1, Lo/onActivityResumed;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/onActivityPaused;

    .line 6114
    sget-object v0, Lo/onActivityPostCreated;->extraCallback:Lo/onActivityPostCreated;

    iget-object p1, p1, Lo/onActivityPaused;->asBinder:Lo/onActivityPaused$onNavigationEvent;

    check-cast p1, Lo/setChildInsets;

    invoke-static {p1}, Lo/onActivityPostCreated;->onMessageChannelReady(Lo/setChildInsets;)V

    return-void

    .line 1300
    :cond_2
    iget-object p1, p0, Lo/onActivityResumed$onTransact;->extraCallback:Lo/onActivityResumed;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_3
    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method
