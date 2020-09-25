.class final Lo/FullLifecycleObserverAdapter$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FullLifecycleObserverAdapter;-><init>()V
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
.field private synthetic extraCallback:Lo/FullLifecycleObserverAdapter;


# direct methods
.method constructor <init>(Lo/FullLifecycleObserverAdapter;)V
    .locals 0

    iput-object p1, p0, Lo/FullLifecycleObserverAdapter$onPostMessage;->extraCallback:Lo/FullLifecycleObserverAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 3

    .line 30
    check-cast p1, Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCampaignResponse;

    if-eqz p1, :cond_3

    .line 2027
    iget-object v0, p1, Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCampaignResponse;->extraCallback:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1132
    iget-object v1, p0, Lo/FullLifecycleObserverAdapter$onPostMessage;->extraCallback:Lo/FullLifecycleObserverAdapter;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->title:I

    invoke-virtual {v1, v2}, Lo/FullLifecycleObserverAdapter;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/createFullSpanItemFromEnd;

    const-string/jumbo v2, "title"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2029
    :cond_0
    iget-object v0, p1, Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCampaignResponse;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1135
    iget-object v1, p0, Lo/FullLifecycleObserverAdapter$onPostMessage;->extraCallback:Lo/FullLifecycleObserverAdapter;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->description:I

    invoke-virtual {v1, v2}, Lo/FullLifecycleObserverAdapter;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "description"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1137
    :cond_1
    iget-object v0, p0, Lo/FullLifecycleObserverAdapter$onPostMessage;->extraCallback:Lo/FullLifecycleObserverAdapter;

    invoke-static {v0}, Lo/FullLifecycleObserverAdapter;->ICustomTabsCallback(Lo/FullLifecycleObserverAdapter;)Lo/onActivityPostStarted;

    move-result-object v0

    .line 2033
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCampaignResponse;->onRelationshipValidationResult:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 1137
    check-cast p1, Ljava/util/ArrayList;

    const-string v1, "rList"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2085
    iput-object p1, v0, Lo/onActivityPostStarted;->onMessageChannelReady:Ljava/util/ArrayList;

    .line 2086
    invoke-virtual {v0}, Lo/toKeyCode;->onNavigationEvent()V

    return-void

    .line 1137
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.ArrayList<com.dreamplug.fabrik.ui.contacts.festives.GreetingCardCreative> /* = java.util.ArrayList<com.dreamplug.fabrik.ui.contacts.festives.GreetingCardCreative> */"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1140
    :cond_3
    iget-object p1, p0, Lo/FullLifecycleObserverAdapter$onPostMessage;->extraCallback:Lo/FullLifecycleObserverAdapter;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_4
    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method
