.class public final Lo/FullLifecycleObserverAdapter;
.super Landroidx/fragment/app/Fragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/FullLifecycleObserverAdapter$onNavigationEvent;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 (2\u00020\u0001:\u0001(B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J&\u0010 \u001a\u0004\u0018\u00010!2\u0006\u0010\"\u001a\u00020#2\u0008\u0010$\u001a\u0004\u0018\u00010%2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J\u001a\u0010&\u001a\u00020\u001d2\u0006\u0010\'\u001a\u00020!2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016R\u0016\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0008\u001a\u0004\u0018\u00010\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0010\u001a\u00020\u00118FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\r\u001a\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0017\u001a\u00020\u00188FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\r\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006)"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCarousalFragment;",
        "Landroidx/fragment/app/Fragment;",
        "()V",
        "creativesObserver",
        "Landroidx/lifecycle/Observer;",
        "Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCampaignResponse;",
        "dp30",
        "",
        "extra",
        "Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingsCampaignData;",
        "getExtra",
        "()Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingsCampaignData;",
        "extra$delegate",
        "Lkotlin/Lazy;",
        "listItemClickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "navigator",
        "Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "getNavigator",
        "()Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "navigator$delegate",
        "pagerAdapter",
        "Lcom/dreamplug/fabrik/ui/contacts/festives/creatives/CreativesPagerAdapter;",
        "viewModel",
        "Lcom/dreamplug/fabrik/ui/contacts/festives/FestiveGreetingsViewModel;",
        "getViewModel",
        "()Lcom/dreamplug/fabrik/ui/contacts/festives/FestiveGreetingsViewModel;",
        "viewModel$delegate",
        "onCreate",
        "",
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
        "Companion",
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
.field private final ICustomTabsCallback:Lo/isSameListener;

.field private final asBinder:Lo/hasGapsToFix$onMessageChannelReady;

.field final extraCallback:Lo/isSameListener;

.field private onMessageChannelReady:Lo/onActivityPostStarted;

.field private final onNavigationEvent:I

.field private final onPostMessage:Lo/setPlaybackToRemote;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPlaybackToRemote<",
            "Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCampaignResponse;",
            ">;"
        }
    .end annotation
.end field

.field private onRelationshipValidationResult:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 30
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 164
    new-instance v0, Lo/FullLifecycleObserverAdapter$extraCallback;

    invoke-direct {v0, p0}, Lo/FullLifecycleObserverAdapter$extraCallback;-><init>(Lo/removeOnActiveChangeListener;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    .line 34
    new-instance v0, Lo/FullLifecycleObserverAdapter$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/FullLifecycleObserverAdapter$ICustomTabsCallback;-><init>(Lo/FullLifecycleObserverAdapter;)V

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 34
    iput-object v2, p0, Lo/FullLifecycleObserverAdapter;->ICustomTabsCallback:Lo/isSameListener;

    const-string v0, "$this$lazyNavigator"

    .line 37
    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6072
    new-instance v0, Lo/setAddDuration$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/setAddDuration$onMessageChannelReady;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 37
    iput-object v1, p0, Lo/FullLifecycleObserverAdapter;->extraCallback:Lo/isSameListener;

    .line 8009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "Resources.getSystem()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x41f00000    # 30.0f

    .line 8010
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 39
    iput v0, p0, Lo/FullLifecycleObserverAdapter;->onNavigationEvent:I

    .line 129
    new-instance v0, Lo/FullLifecycleObserverAdapter$onPostMessage;

    invoke-direct {v0, p0}, Lo/FullLifecycleObserverAdapter$onPostMessage;-><init>(Lo/FullLifecycleObserverAdapter;)V

    check-cast v0, Lo/setPlaybackToRemote;

    iput-object v0, p0, Lo/FullLifecycleObserverAdapter;->onPostMessage:Lo/setPlaybackToRemote;

    .line 144
    new-instance v0, Lo/FullLifecycleObserverAdapter$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/FullLifecycleObserverAdapter$onMessageChannelReady;-><init>(Lo/FullLifecycleObserverAdapter;)V

    check-cast v0, Lo/hasGapsToFix$onMessageChannelReady;

    iput-object v0, p0, Lo/FullLifecycleObserverAdapter;->asBinder:Lo/hasGapsToFix$onMessageChannelReady;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/FullLifecycleObserverAdapter;)Lo/onActivityPostStarted;
    .locals 1

    .line 30
    iget-object p0, p0, Lo/FullLifecycleObserverAdapter;->onMessageChannelReady:Lo/onActivityPostStarted;

    if-nez p0, :cond_0

    const-string v0, "pagerAdapter"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic onPostMessage(Lo/FullLifecycleObserverAdapter;)Lo/onActivityDestroyed;
    .locals 0

    .line 9000
    iget-object p0, p0, Lo/FullLifecycleObserverAdapter;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/onActivityDestroyed;

    return-object p0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 42
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    sget-object p1, Lo/getMaxCardElevation;->extraCallback:Lo/getMaxCardElevation;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "GreetingCarousalFragment"

    const/4 v2, 0x0

    .line 1029
    invoke-interface {p1, v1, v0, v2}, Lo/findSameItem;->ICustomTabsCallback(Ljava/lang/String;Lo/MediaControllerCompatApi21$CallbackProxy;Z)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0e00aa

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 10000
    iget-object v0, p0, Lo/FullLifecycleObserverAdapter;->onRelationshipValidationResult:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/FullLifecycleObserverAdapter;->onRelationshipValidationResult:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/FullLifecycleObserverAdapter;->onRelationshipValidationResult:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/FullLifecycleObserverAdapter;->onRelationshipValidationResult:Ljava/util/HashMap;

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

    iget-object v1, p0, Lo/FullLifecycleObserverAdapter;->onRelationshipValidationResult:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2000
    iget-object p1, p0, Lo/FullLifecycleObserverAdapter;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/onActivityDestroyed;

    if-eqz p1, :cond_5

    const-string p1, "greeting_carousel_load"

    .line 54
    invoke-static {p1}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 55
    new-instance p1, Lo/onActivityPostStarted;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    const-string v0, "context!!"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->creativeList:I

    invoke-virtual {p0, v0}, Lo/FullLifecycleObserverAdapter;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/getUseCompatPadding;

    const-string v1, "creativeList"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/PlaybackStateCompat;

    iget-object v2, p0, Lo/FullLifecycleObserverAdapter;->asBinder:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p1, p2, v0, v2}, Lo/onActivityPostStarted;-><init>(Landroid/content/Context;Lo/PlaybackStateCompat;Lo/hasGapsToFix$onMessageChannelReady;)V

    iput-object p1, p0, Lo/FullLifecycleObserverAdapter;->onMessageChannelReady:Lo/onActivityPostStarted;

    .line 56
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->creativeList:I

    invoke-virtual {p0, p1}, Lo/FullLifecycleObserverAdapter;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/getUseCompatPadding;

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lo/FullLifecycleObserverAdapter;->onMessageChannelReady:Lo/onActivityPostStarted;

    if-nez p2, :cond_1

    const-string v0, "pagerAdapter"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    check-cast p2, Lo/toKeyCode;

    invoke-virtual {p1, p2}, Lo/PlaybackStateCompat;->setAdapter(Lo/toKeyCode;)V

    .line 58
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->creativeList:I

    invoke-virtual {p0, p1}, Lo/FullLifecycleObserverAdapter;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/getUseCompatPadding;

    new-instance p2, Lo/FullLifecycleObserverAdapter$ICustomTabsCallback$Stub;

    invoke-direct {p2, p0}, Lo/FullLifecycleObserverAdapter$ICustomTabsCallback$Stub;-><init>(Lo/FullLifecycleObserverAdapter;)V

    const/4 v0, 0x0

    .line 89
    invoke-virtual {p2, v0}, Lo/FullLifecycleObserverAdapter$ICustomTabsCallback$Stub;->onMessageChannelReady(I)V

    .line 88
    check-cast p2, Lo/PlaybackStateCompat$onPostMessage;

    .line 2723
    iget-object v0, p1, Lo/PlaybackStateCompat;->extraCallback:Ljava/util/List;

    if-nez v0, :cond_2

    .line 2724
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lo/PlaybackStateCompat;->extraCallback:Ljava/util/List;

    .line 2726
    :cond_2
    iget-object p1, p1, Lo/PlaybackStateCompat;->extraCallback:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->pageIndicator:I

    invoke-virtual {p0, p1}, Lo/FullLifecycleObserverAdapter;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/makeOptionalFitsSystemWindows;

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->creativeList:I

    invoke-virtual {p0, p2}, Lo/FullLifecycleObserverAdapter;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/getUseCompatPadding;

    invoke-virtual {p1, p2}, Lo/makeOptionalFitsSystemWindows;->setViewPager(Lo/PlaybackStateCompat;)V

    .line 93
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->pageIndicator:I

    invoke-virtual {p0, p1}, Lo/FullLifecycleObserverAdapter;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/makeOptionalFitsSystemWindows;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lo/makeOptionalFitsSystemWindows;->setDotsClickable(Z)V

    .line 94
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->pageIndicator:I

    invoke-virtual {p0, p1}, Lo/FullLifecycleObserverAdapter;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/makeOptionalFitsSystemWindows;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_3

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_3
    const v0, 0x7f060220

    invoke-static {p2, v0}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Lo/makeOptionalFitsSystemWindows;->setSelectedPointColor(I)V

    .line 96
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->creativeList:I

    invoke-virtual {p0, p1}, Lo/FullLifecycleObserverAdapter;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/getUseCompatPadding;

    new-instance p2, Lo/FullLifecycleObserverAdapter$onTransact;

    invoke-direct {p2, p0}, Lo/FullLifecycleObserverAdapter$onTransact;-><init>(Lo/FullLifecycleObserverAdapter;)V

    check-cast p2, Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {p1, p2, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 102
    sget-object p1, Lo/sortAndDedup;->onPostMessage:Lo/sortAndDedup;

    .line 4000
    sget-object p1, Lo/sortAndDedup;->extraCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/sortAndDedup$ICustomTabsCallback;

    .line 4043
    iget p1, p1, Lo/sortAndDedup$ICustomTabsCallback;->ICustomTabsCallback:I

    int-to-double v2, p1

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    mul-double v2, v2, v4

    .line 103
    invoke-static {v2, v3}, Lo/resolveComplexDeferredValue;->onPostMessage(D)I

    move-result p2

    sub-int/2addr p1, p2

    .line 104
    div-int/lit8 p1, p1, 0x2

    .line 105
    div-int/lit8 p2, p1, 0x2

    iget v0, p0, Lo/FullLifecycleObserverAdapter;->onNavigationEvent:I

    if-le p2, v0, :cond_4

    move p2, v0

    :cond_4
    sub-int p2, p1, p2

    .line 107
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->creativeList:I

    invoke-virtual {p0, v0}, Lo/FullLifecycleObserverAdapter;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/getUseCompatPadding;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lo/PlaybackStateCompat;->setPageMargin(I)V

    .line 108
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->creativeList:I

    invoke-virtual {p0, p2}, Lo/FullLifecycleObserverAdapter;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/getUseCompatPadding;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->creativeList:I

    invoke-virtual {p0, v0}, Lo/FullLifecycleObserverAdapter;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/getUseCompatPadding;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->creativeList:I

    invoke-virtual {p0, v2}, Lo/FullLifecycleObserverAdapter;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/getUseCompatPadding;

    invoke-static {v2, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p2, p1, v0, p1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 110
    sget-object p1, Lo/onActivitySaveInstanceState$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/onActivitySaveInstanceState$ICustomTabsCallback;

    iget-object p2, p0, Lo/FullLifecycleObserverAdapter;->onPostMessage:Lo/setPlaybackToRemote;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    .line 111
    sget-object p1, Lo/onActivitySaveInstanceState$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/onActivitySaveInstanceState$ICustomTabsCallback;

    move-object p2, p0

    check-cast p2, Lo/toLegacyStreamType;

    iget-object v0, p0, Lo/FullLifecycleObserverAdapter;->onPostMessage:Lo/setPlaybackToRemote;

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 114
    :cond_5
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->back_button:I

    invoke-virtual {p0, p1}, Lo/FullLifecycleObserverAdapter;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const-string p2, "back_button"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance p2, Lo/FullLifecycleObserverAdapter$asBinder;

    invoke-direct {p2, p0}, Lo/FullLifecycleObserverAdapter$asBinder;-><init>(Lo/FullLifecycleObserverAdapter;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 118
    sget-object p1, Lo/sortAndDedup;->onPostMessage:Lo/sortAndDedup;

    invoke-static {}, Lo/sortAndDedup;->onNavigationEvent()Lo/setActive;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Lo/toLegacyStreamType;

    new-instance v0, Lo/FullLifecycleObserverAdapter$asInterface;

    invoke-direct {v0, p0}, Lo/FullLifecycleObserverAdapter$asInterface;-><init>(Lo/FullLifecycleObserverAdapter;)V

    check-cast v0, Lo/setPlaybackToRemote;

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    return-void
.end method
