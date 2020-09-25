.class public final Lo/LifecycleController$observer$1;
.super Landroidx/fragment/app/Fragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/LifecycleController$observer$1$ICustomTabsCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u0001,B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u0012\u0010\u001f\u001a\u00020\u001b2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0016J&\u0010\"\u001a\u0004\u0018\u00010#2\u0006\u0010$\u001a\u00020%2\u0008\u0010&\u001a\u0004\u0018\u00010\'2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0016J\u001a\u0010(\u001a\u00020\u001b2\u0006\u0010)\u001a\u00020#2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0016J\u0010\u0010*\u001a\u00020\u001b2\u0006\u0010+\u001a\u00020\rH\u0002R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0006\u001a\u0004\u0018\u00010\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000e\u001a\u00020\u000f8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u000b\u001a\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u0013\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0015\u001a\u00020\u00168FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u000b\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006-"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCustomiseFragment;",
        "Landroidx/fragment/app/Fragment;",
        "()V",
        "editModeObserver",
        "Landroidx/lifecycle/Observer;",
        "",
        "extra",
        "Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCustomiseFragment$GreetingCustomiseExtra;",
        "getExtra",
        "()Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCustomiseFragment$GreetingCustomiseExtra;",
        "extra$delegate",
        "Lkotlin/Lazy;",
        "maxLength",
        "",
        "navigator",
        "Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "getNavigator",
        "()Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "navigator$delegate",
        "oneLinkObserver",
        "Lcom/dreamplug/fabrik/ui/contacts/festives/ReferralLinkData;",
        "viewModel",
        "Lcom/dreamplug/fabrik/ui/contacts/festives/FestiveGreetingsViewModel;",
        "getViewModel",
        "()Lcom/dreamplug/fabrik/ui/contacts/festives/FestiveGreetingsViewModel;",
        "viewModel$delegate",
        "generateReferralLink",
        "",
        "data",
        "message",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onViewCreated",
        "view",
        "updateCharCount",
        "length",
        "GreetingCustomiseExtra",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/setPlaybackToRemote;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPlaybackToRemote<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final ICustomTabsCallback$Stub:Lo/setPlaybackToRemote;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPlaybackToRemote<",
            "Lo/onActivityStopped;",
            ">;"
        }
    .end annotation
.end field

.field private asBinder:Ljava/util/HashMap;

.field public final extraCallback:Lo/isSameListener;

.field private final onMessageChannelReady:I

.field private final onNavigationEvent:Lo/isSameListener;

.field final onPostMessage:Lo/isSameListener;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 30
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 195
    new-instance v0, Lo/LifecycleController$observer$1$onPostMessage;

    invoke-direct {v0, p0}, Lo/LifecycleController$observer$1$onPostMessage;-><init>(Lo/removeOnActiveChangeListener;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 195
    iput-object v2, p0, Lo/LifecycleController$observer$1;->onPostMessage:Lo/isSameListener;

    .line 33
    sget-object v0, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 20000
    sget-object v0, Lo/isInLayout;->asInterface:Lo/isHidden;

    sget-object v2, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v3, 0xf

    aget-object v2, v2, v3

    const-string v3, "property"

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21000
    iget-object v0, v0, Lo/hasOptionsMenu;->onPostMessage:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getJsonObjectFrom;

    .line 20020
    invoke-interface {v0}, Lo/getJsonObjectFrom;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0

    .line 20000
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 33
    iput v0, p0, Lo/LifecycleController$observer$1;->onMessageChannelReady:I

    .line 34
    new-instance v0, Lo/LifecycleController$observer$1$onNavigationEvent;

    invoke-direct {v0, p0}, Lo/LifecycleController$observer$1$onNavigationEvent;-><init>(Lo/LifecycleController$observer$1;)V

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 34
    iput-object v2, p0, Lo/LifecycleController$observer$1;->onNavigationEvent:Lo/isSameListener;

    const-string v0, "$this$lazyNavigator"

    .line 37
    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21072
    new-instance v0, Lo/setAddDuration$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/setAddDuration$onMessageChannelReady;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 37
    iput-object v1, p0, Lo/LifecycleController$observer$1;->extraCallback:Lo/isSameListener;

    .line 141
    new-instance v0, Lo/LifecycleController$observer$1$extraCallback;

    invoke-direct {v0, p0}, Lo/LifecycleController$observer$1$extraCallback;-><init>(Lo/LifecycleController$observer$1;)V

    check-cast v0, Lo/setPlaybackToRemote;

    iput-object v0, p0, Lo/LifecycleController$observer$1;->ICustomTabsCallback:Lo/setPlaybackToRemote;

    .line 158
    new-instance v0, Lo/LifecycleController$observer$1$getInterfaceDescriptor;

    invoke-direct {v0, p0}, Lo/LifecycleController$observer$1$getInterfaceDescriptor;-><init>(Lo/LifecycleController$observer$1;)V

    check-cast v0, Lo/setPlaybackToRemote;

    iput-object v0, p0, Lo/LifecycleController$observer$1;->ICustomTabsCallback$Stub:Lo/setPlaybackToRemote;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/LifecycleController$observer$1;)Lo/LifecycleController$observer$1$ICustomTabsCallback;
    .locals 0

    .line 28000
    iget-object p0, p0, Lo/LifecycleController$observer$1;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/LifecycleController$observer$1$ICustomTabsCallback;

    return-object p0
.end method

.method private final ICustomTabsCallback(I)V
    .locals 3

    .line 138
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->charLimit:I

    invoke-virtual {p0, v0}, Lo/LifecycleController$observer$1;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "charLimit"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lo/LifecycleController$observer$1;->onMessageChannelReady:I

    sub-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " characters left"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static final synthetic onMessageChannelReady(Lo/LifecycleController$observer$1;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lo/LifecycleController$observer$1;->ICustomTabsCallback(I)V

    return-void
.end method

.method public static final synthetic onNavigationEvent(Lo/LifecycleController$observer$1;Lo/LifecycleController$observer$1$ICustomTabsCallback;Ljava/lang/String;)V
    .locals 7

    .line 22133
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->loader:I

    invoke-virtual {p0, v0}, Lo/LifecycleController$observer$1;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onDestroyView;

    const-string v1, "loader"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23000
    iget-object p0, p0, Lo/LifecycleController$observer$1;->onPostMessage:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/onActivitySaveInstanceState;

    const-string v0, "data"

    .line 22134
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23059
    new-instance v0, Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCampaignCodeRequest;

    .line 23190
    iget-object v1, p1, Lo/LifecycleController$observer$1$ICustomTabsCallback;->onMessageChannelReady:Lo/onActivityDestroyed;

    .line 24079
    iget-object v3, v1, Lo/onActivityDestroyed;->onMessageChannelReady:Ljava/lang/String;

    .line 24190
    iget-object v1, p1, Lo/LifecycleController$observer$1$ICustomTabsCallback;->onMessageChannelReady:Lo/onActivityDestroyed;

    .line 25078
    iget-object v2, v1, Lo/onActivityDestroyed;->ICustomTabsCallback:Ljava/lang/String;

    .line 25190
    iget-object v1, p1, Lo/LifecycleController$observer$1$ICustomTabsCallback;->onMessageChannelReady:Lo/onActivityDestroyed;

    .line 26077
    iget-object v4, v1, Lo/onActivityDestroyed;->onPostMessage:Ljava/lang/String;

    .line 26191
    iget-object v5, p1, Lo/LifecycleController$observer$1$ICustomTabsCallback;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCardCreative;

    move-object v1, v0

    move-object v6, p2

    .line 23059
    invoke-direct/range {v1 .. v6}, Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCampaignCodeRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCardCreative;Ljava/lang/String;)V

    .line 27000
    iget-object p2, p0, Lo/onActivitySaveInstanceState;->extraCallback:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/CompositeGeneratedAdaptersObserver;

    .line 23067
    invoke-interface {p2, v0}, Lo/CompositeGeneratedAdaptersObserver;->onMessageChannelReady(Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCampaignCodeRequest;)Lo/clearScrap;

    move-result-object p2

    new-instance v0, Lo/onActivitySaveInstanceState$onPostMessage;

    invoke-direct {v0, p0, p1}, Lo/onActivitySaveInstanceState$onPostMessage;-><init>(Lo/onActivitySaveInstanceState;Lo/LifecycleController$observer$1$ICustomTabsCallback;)V

    check-cast v0, Lo/getScrapOrCachedViewForId;

    invoke-interface {p2, v0}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 40
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    sget-object p1, Lo/getMaxCardElevation;->extraCallback:Lo/getMaxCardElevation;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "GreetingCustomiseFragment"

    const/4 v2, 0x0

    .line 1029
    invoke-interface {p1, v1, v0, v2}, Lo/findSameItem;->ICustomTabsCallback(Ljava/lang/String;Lo/MediaControllerCompatApi21$CallbackProxy;Z)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p3

    if-eqz p3, :cond_0

    const/16 v0, 0x20

    invoke-virtual {p3, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    const p3, 0x7f0e00ab

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 29000
    iget-object v0, p0, Lo/LifecycleController$observer$1;->asBinder:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/LifecycleController$observer$1;->asBinder:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/LifecycleController$observer$1;->asBinder:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/LifecycleController$observer$1;->asBinder:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/LifecycleController$observer$1;->asBinder:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2000
    iget-object p1, p0, Lo/LifecycleController$observer$1;->onPostMessage:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/onActivitySaveInstanceState;

    .line 2050
    iget-object p1, p1, Lo/onActivitySaveInstanceState;->onNavigationEvent:Lo/setActive;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 3000
    iget-object p1, p0, Lo/LifecycleController$observer$1;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/LifecycleController$observer$1$ICustomTabsCallback;

    if-eqz p1, :cond_1

    .line 54
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->background:I

    invoke-virtual {p0, p2}, Lo/LifecycleController$observer$1;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lo/setSpeed;

    const-string p2, "background"

    invoke-static {v0, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3191
    iget-object p2, p1, Lo/LifecycleController$observer$1$ICustomTabsCallback;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCardCreative;

    .line 4057
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCardCreative;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e

    .line 54
    invoke-static/range {v0 .. v7}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 55
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->parentLayout:I

    invoke-virtual {p0, p2}, Lo/LifecycleController$observer$1;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/onChildrenLoaded;

    const-string v0, "parentLayout"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p2

    check-cast v1, Landroid/view/View;

    .line 4191
    iget-object p2, p1, Lo/LifecycleController$observer$1$ICustomTabsCallback;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCardCreative;

    .line 5063
    iget-object v2, p2, Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCardCreative;->extraCallback:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7e

    .line 55
    invoke-static/range {v1 .. v8}, Lo/missCount;->onNavigationEvent(Landroid/view/View;Ljava/lang/String;FLjava/lang/String;Ljava/lang/Float;[FLjava/lang/Integer;I)V

    .line 56
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->message:I

    invoke-virtual {p0, p2}, Lo/LifecycleController$observer$1;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    .line 5191
    iget-object v0, p1, Lo/LifecycleController$observer$1$ICustomTabsCallback;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCardCreative;

    .line 6059
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCardCreative;->onNavigationEvent:Ljava/lang/String;

    .line 56
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->message:I

    invoke-virtual {p0, p2}, Lo/LifecycleController$observer$1;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    .line 6191
    iget-object v0, p1, Lo/LifecycleController$observer$1$ICustomTabsCallback;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCardCreative;

    .line 7061
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCardCreative;->onPostMessage:Ljava/lang/String;

    .line 57
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 58
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->charLimit:I

    invoke-virtual {p0, p2}, Lo/LifecycleController$observer$1;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 7191
    iget-object v0, p1, Lo/LifecycleController$observer$1$ICustomTabsCallback;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCardCreative;

    .line 8059
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCardCreative;->onNavigationEvent:Ljava/lang/String;

    .line 58
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->cta:I

    invoke-virtual {p0, p2}, Lo/LifecycleController$observer$1;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 8191
    iget-object v0, p1, Lo/LifecycleController$observer$1$ICustomTabsCallback;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCardCreative;

    .line 9065
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCardCreative;->onMessageChannelReady:Ljava/lang/String;

    .line 59
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->cta:I

    invoke-virtual {p0, p2}, Lo/LifecycleController$observer$1;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const-string v0, "cta"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p2

    check-cast v1, Landroid/view/View;

    .line 9191
    iget-object p2, p1, Lo/LifecycleController$observer$1$ICustomTabsCallback;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCardCreative;

    .line 10067
    iget-object v2, p2, Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCardCreative;->asBinder:Ljava/lang/String;

    .line 11009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    const-string v3, "Resources.getSystem()"

    invoke-static {p2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/high16 v3, 0x41800000    # 16.0f

    const/4 v9, 0x1

    .line 11010
    invoke-static {v9, v3, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    const/16 v8, 0x7c

    .line 60
    invoke-static/range {v1 .. v8}, Lo/missCount;->onNavigationEvent(Landroid/view/View;Ljava/lang/String;FLjava/lang/String;Ljava/lang/Float;[FLjava/lang/Integer;I)V

    .line 11191
    iget-object p2, p1, Lo/LifecycleController$observer$1$ICustomTabsCallback;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCardCreative;

    .line 12069
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCardCreative;->asInterface:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 62
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->cta:I

    invoke-virtual {p0, v1}, Lo/LifecycleController$observer$1;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    :cond_0
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->fixedMessage:I

    invoke-virtual {p0, p2}, Lo/LifecycleController$observer$1;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const-string v1, "fixedMessage"

    invoke-static {p2, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12191
    iget-object v1, p1, Lo/LifecycleController$observer$1$ICustomTabsCallback;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCardCreative;

    .line 13071
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCardCreative;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 64
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->fixedMessage:I

    invoke-virtual {p0, p2}, Lo/LifecycleController$observer$1;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 13191
    iget-object v1, p1, Lo/LifecycleController$observer$1$ICustomTabsCallback;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCardCreative;

    .line 14059
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCardCreative;->onNavigationEvent:Ljava/lang/String;

    .line 65
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->message:I

    invoke-virtual {p0, p2}, Lo/LifecycleController$observer$1;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    const-string v1, "message"

    invoke-static {p2, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v2, v9, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    iget v5, p0, Lo/LifecycleController$observer$1;->onMessageChannelReady:I

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    check-cast v4, Landroid/text/InputFilter;

    aput-object v4, v2, v3

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 68
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->message:I

    invoke-virtual {p0, p2}, Lo/LifecycleController$observer$1;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    new-instance v2, Lo/LifecycleController$observer$1$onMessageChannelReady;

    invoke-direct {v2, p0}, Lo/LifecycleController$observer$1$onMessageChannelReady;-><init>(Lo/LifecycleController$observer$1;)V

    check-cast v2, Landroid/text/TextWatcher;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 80
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->message:I

    invoke-virtual {p0, p2}, Lo/LifecycleController$observer$1;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    sget-object v2, Lo/LifecycleController$observer$1$asInterface;->extraCallback:Lo/LifecycleController$observer$1$asInterface;

    check-cast v2, Landroid/view/View$OnKeyListener;

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 88
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->message:I

    invoke-virtual {p0, p2}, Lo/LifecycleController$observer$1;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    invoke-static {p2, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-direct {p0, p2}, Lo/LifecycleController$observer$1;->ICustomTabsCallback(I)V

    .line 15000
    iget-object p2, p0, Lo/LifecycleController$observer$1;->onPostMessage:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/onActivitySaveInstanceState;

    .line 15025
    iget-object p2, p2, Lo/onActivitySaveInstanceState;->onNavigationEvent:Lo/setActive;

    check-cast p2, Landroidx/lifecycle/LiveData;

    .line 90
    iget-object v2, p0, Lo/LifecycleController$observer$1;->ICustomTabsCallback:Lo/setPlaybackToRemote;

    invoke-virtual {p2, v2}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    .line 16000
    iget-object p2, p0, Lo/LifecycleController$observer$1;->onPostMessage:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/onActivitySaveInstanceState;

    .line 16025
    iget-object p2, p2, Lo/onActivitySaveInstanceState;->onNavigationEvent:Lo/setActive;

    check-cast p2, Landroidx/lifecycle/LiveData;

    .line 91
    move-object v2, p0

    check-cast v2, Lo/toLegacyStreamType;

    iget-object v3, p0, Lo/LifecycleController$observer$1;->ICustomTabsCallback:Lo/setPlaybackToRemote;

    invoke-virtual {p2, v2, v3}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 17000
    iget-object p2, p0, Lo/LifecycleController$observer$1;->onPostMessage:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/onActivitySaveInstanceState;

    .line 17029
    iget-object p2, p2, Lo/onActivitySaveInstanceState;->ICustomTabsCallback:Lo/setActive;

    check-cast p2, Landroidx/lifecycle/LiveData;

    .line 93
    iget-object v3, p0, Lo/LifecycleController$observer$1;->ICustomTabsCallback$Stub:Lo/setPlaybackToRemote;

    invoke-virtual {p2, v3}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    .line 18000
    iget-object p2, p0, Lo/LifecycleController$observer$1;->onPostMessage:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/onActivitySaveInstanceState;

    .line 18029
    iget-object p2, p2, Lo/onActivitySaveInstanceState;->ICustomTabsCallback:Lo/setActive;

    check-cast p2, Landroidx/lifecycle/LiveData;

    .line 94
    iget-object v3, p0, Lo/LifecycleController$observer$1;->ICustomTabsCallback$Stub:Lo/setPlaybackToRemote;

    invoke-virtual {p2, v2, v3}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 96
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->message:I

    invoke-virtual {p0, p2}, Lo/LifecycleController$observer$1;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    new-instance v2, Lo/LifecycleController$observer$1$onTransact;

    invoke-direct {v2, p0}, Lo/LifecycleController$observer$1$onTransact;-><init>(Lo/LifecycleController$observer$1;)V

    check-cast v2, Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 100
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->message:I

    invoke-virtual {p0, p2}, Lo/LifecycleController$observer$1;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    invoke-static {p2, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    new-instance v1, Lo/LifecycleController$observer$1$asBinder;

    invoke-direct {v1, p0}, Lo/LifecycleController$observer$1$asBinder;-><init>(Lo/LifecycleController$observer$1;)V

    check-cast v1, Lo/onDisconnectSetValue;

    invoke-static {p2, v1}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 104
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->customiseCta:I

    invoke-virtual {p0, p2}, Lo/LifecycleController$observer$1;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const-string v1, "customiseCta"

    invoke-static {p2, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    new-instance v1, Lo/LifecycleController$observer$1$ICustomTabsCallback$Stub;

    invoke-direct {v1, p0}, Lo/LifecycleController$observer$1$ICustomTabsCallback$Stub;-><init>(Lo/LifecycleController$observer$1;)V

    check-cast v1, Lo/onDisconnectSetValue;

    invoke-static {p2, v1}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 108
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->cta:I

    invoke-virtual {p0, p2}, Lo/LifecycleController$observer$1;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    new-instance v0, Lo/LifecycleController$observer$1$onRelationshipValidationResult;

    invoke-direct {v0, p1, p0}, Lo/LifecycleController$observer$1$onRelationshipValidationResult;-><init>(Lo/LifecycleController$observer$1$ICustomTabsCallback;Lo/LifecycleController$observer$1;)V

    check-cast v0, Lo/onDisconnectSetValue;

    invoke-static {p2, v0}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 116
    :cond_1
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->back_button:I

    invoke-virtual {p0, p1}, Lo/LifecycleController$observer$1;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const-string p2, "back_button"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance p2, Lo/LifecycleController$observer$1$ICustomTabsCallback$Stub$Proxy;

    invoke-direct {p2, p0}, Lo/LifecycleController$observer$1$ICustomTabsCallback$Stub$Proxy;-><init>(Lo/LifecycleController$observer$1;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 121
    sget-object p1, Lo/sortAndDedup;->onPostMessage:Lo/sortAndDedup;

    invoke-static {}, Lo/sortAndDedup;->onNavigationEvent()Lo/setActive;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Lo/toLegacyStreamType;

    new-instance v0, Lo/LifecycleController$observer$1$warmup;

    invoke-direct {v0, p0}, Lo/LifecycleController$observer$1$warmup;-><init>(Lo/LifecycleController$observer$1;)V

    check-cast v0, Lo/setPlaybackToRemote;

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    return-void
.end method
