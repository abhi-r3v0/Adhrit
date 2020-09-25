.class final Lo/computeScrollRange$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/computeScrollRange;-><init>()V
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
        "Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;",
        "kotlin.jvm.PlatformType",
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
.field private synthetic ICustomTabsCallback:Lo/computeScrollRange;


# direct methods
.method constructor <init>(Lo/computeScrollRange;)V
    .locals 0

    iput-object p1, p0, Lo/computeScrollRange$onPostMessage;->ICustomTabsCallback:Lo/computeScrollRange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 4

    .line 1508
    sget-object p1, Lo/getShowText;->ICustomTabsCallback:Lo/getShowText;

    invoke-static {}, Lo/getShowText;->onPostMessage()Z

    move-result p1

    const-string v0, "questionMarkView"

    const-string v1, "inviteCta"

    if-eqz p1, :cond_2

    iget-object p1, p0, Lo/computeScrollRange$onPostMessage;->ICustomTabsCallback:Lo/computeScrollRange;

    invoke-static {p1}, Lo/computeScrollRange;->onNavigationEvent(Lo/computeScrollRange;)Lo/updateLayoutState;

    move-result-object p1

    .line 2039
    iget-object p1, p1, Lo/updateLayoutState;->asInterface:Lo/setActive;

    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 2320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object v2, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v3, 0x0

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v3

    .line 1508
    :goto_0
    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmDetailsResponse;

    if-eqz p1, :cond_1

    .line 3014
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmDetailsResponse;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmDetailsAttributes;

    if-eqz p1, :cond_1

    .line 3021
    iget-object v3, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmDetailsAttributes;->onPostMessage:Ljava/lang/Boolean;

    .line 1508
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1509
    iget-object p1, p0, Lo/computeScrollRange$onPostMessage;->ICustomTabsCallback:Lo/computeScrollRange;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->inviteCta:I

    invoke-virtual {p1, v2}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1510
    iget-object p1, p0, Lo/computeScrollRange$onPostMessage;->ICustomTabsCallback:Lo/computeScrollRange;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->questionMarkView:I

    invoke-virtual {p1, v2}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1511
    iget-object p1, p0, Lo/computeScrollRange$onPostMessage;->ICustomTabsCallback:Lo/computeScrollRange;

    invoke-static {p1}, Lo/computeScrollRange;->asBinder(Lo/computeScrollRange;)V

    return-void

    .line 1513
    :cond_2
    iget-object p1, p0, Lo/computeScrollRange$onPostMessage;->ICustomTabsCallback:Lo/computeScrollRange;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->inviteCta:I

    invoke-virtual {p1, v2}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1514
    iget-object p1, p0, Lo/computeScrollRange$onPostMessage;->ICustomTabsCallback:Lo/computeScrollRange;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->questionMarkView:I

    invoke-virtual {p1, v2}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
