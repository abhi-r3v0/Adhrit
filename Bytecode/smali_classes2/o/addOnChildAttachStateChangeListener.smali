.class public final Lo/addOnChildAttachStateChangeListener;
.super Landroidx/fragment/app/Fragment;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J&\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u001a\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u00132\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R\u001a\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\r\u001a\u00020\u000e8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0008\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/landing/LifestyleLandingFragment;",
        "Landroidx/fragment/app/Fragment;",
        "()V",
        "bottomBarViewModel",
        "Lcom/dreamplug/fabrik/ui/main/BottomBarViewModel;",
        "getBottomBarViewModel",
        "()Lcom/dreamplug/fabrik/ui/main/BottomBarViewModel;",
        "bottomBarViewModel$delegate",
        "Lkotlin/Lazy;",
        "lifestyleCommand",
        "Landroidx/lifecycle/Observer;",
        "Lcom/dreamplug/utils/Event;",
        "Lcom/dreamplug/fabrik/ui/main/navigation/PageCommand;",
        "navigator",
        "Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "getNavigator",
        "()Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "navigator$delegate",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onViewCreated",
        "",
        "view",
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
.field private extraCallback:Ljava/util/HashMap;

.field private final onMessageChannelReady:Lo/isSameListener;

.field final onNavigationEvent:Lo/isSameListener;

.field private final onPostMessage:Lo/setPlaybackToRemote;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPlaybackToRemote<",
            "Lo/throwIfInMutationOperation<",
            "Lo/setRemoveDuration;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 24
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const-string v0, "$this$lazyNavigator"

    .line 31
    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2072
    new-instance v0, Lo/setAddDuration$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/setAddDuration$onMessageChannelReady;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 31
    iput-object v2, p0, Lo/addOnChildAttachStateChangeListener;->onNavigationEvent:Lo/isSameListener;

    .line 32
    new-instance v0, Lo/addOnChildAttachStateChangeListener$onPostMessage;

    invoke-direct {v0, p0}, Lo/addOnChildAttachStateChangeListener$onPostMessage;-><init>(Lo/addOnChildAttachStateChangeListener;)V

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 32
    iput-object v1, p0, Lo/addOnChildAttachStateChangeListener;->onMessageChannelReady:Lo/isSameListener;

    .line 62
    new-instance v0, Lo/addOnChildAttachStateChangeListener$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/addOnChildAttachStateChangeListener$ICustomTabsCallback;-><init>(Lo/addOnChildAttachStateChangeListener;)V

    check-cast v0, Lo/setPlaybackToRemote;

    iput-object v0, p0, Lo/addOnChildAttachStateChangeListener;->onPostMessage:Lo/setPlaybackToRemote;

    return-void
.end method


# virtual methods
.method public final extraCallback(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/addOnChildAttachStateChangeListener;->extraCallback:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/addOnChildAttachStateChangeListener;->extraCallback:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/addOnChildAttachStateChangeListener;->extraCallback:Ljava/util/HashMap;

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

    iget-object v1, p0, Lo/addOnChildAttachStateChangeListener;->extraCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0e00b6

    const/4 v0, 0x0

    .line 28
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 5000
    iget-object v0, p0, Lo/addOnChildAttachStateChangeListener;->extraCallback:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string p1, "lifestyle_entry_screen_load"

    .line 36
    invoke-static {p1}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 37
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->winPit:I

    invoke-virtual {p0, p1}, Lo/addOnChildAttachStateChangeListener;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/isScrap;

    const-string p2, "winPit"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance p2, Lo/addOnChildAttachStateChangeListener$onMessageChannelReady;

    invoke-direct {p2, p0}, Lo/addOnChildAttachStateChangeListener$onMessageChannelReady;-><init>(Lo/addOnChildAttachStateChangeListener;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 41
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->lifestylePit:I

    invoke-virtual {p0, p1}, Lo/addOnChildAttachStateChangeListener;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/isScrap;

    const-string p2, "lifestylePit"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance p2, Lo/addOnChildAttachStateChangeListener$extraCallback;

    invoke-direct {p2, p0}, Lo/addOnChildAttachStateChangeListener$extraCallback;-><init>(Lo/addOnChildAttachStateChangeListener;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 1000
    iget-object p1, p0, Lo/addOnChildAttachStateChangeListener;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/hasObservers;

    .line 1012
    iget-object p1, p1, Lo/hasObservers;->onMessageChannelReady:Lo/setActive;

    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 45
    move-object p2, p0

    check-cast p2, Lo/toLegacyStreamType;

    new-instance v0, Lo/addOnChildAttachStateChangeListener$onNavigationEvent;

    invoke-direct {v0, p0}, Lo/addOnChildAttachStateChangeListener$onNavigationEvent;-><init>(Lo/addOnChildAttachStateChangeListener;)V

    check-cast v0, Lo/setPlaybackToRemote;

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 48
    sget-object p1, Lo/setChangeDuration;->asInterface:Lo/setChangeDuration;

    iget-object v0, p0, Lo/addOnChildAttachStateChangeListener;->onPostMessage:Lo/setPlaybackToRemote;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    .line 49
    sget-object p1, Lo/setChangeDuration;->asInterface:Lo/setChangeDuration;

    iget-object v0, p0, Lo/addOnChildAttachStateChangeListener;->onPostMessage:Lo/setPlaybackToRemote;

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 51
    sget-object p1, Lo/getShowText;->ICustomTabsCallback:Lo/getShowText;

    .line 1046
    sget-object p2, Lo/getShowText;->onPostMessage:Lo/getShowText$extraCallback;

    .line 1320
    iget-object p2, p2, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 1321
    sget-object v0, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    .line 1047
    invoke-virtual {p1}, Lo/getShowText;->onNavigationEvent()V

    .line 53
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x18

    if-eq p1, p2, :cond_3

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x19

    if-ne p1, p2, :cond_2

    goto :goto_1

    .line 57
    :cond_2
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->winAnimation:I

    invoke-virtual {p0, p1}, Lo/addOnChildAttachStateChangeListener;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    const p2, 0x7f120051

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 58
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->discoverAnimation:I

    invoke-virtual {p0, p1}, Lo/addOnChildAttachStateChangeListener;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    const p2, 0x7f120011

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    return-void

    .line 54
    :cond_3
    :goto_1
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->winImage:I

    invoke-virtual {p0, p1}, Lo/addOnChildAttachStateChangeListener;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    const p2, 0x7f0804ec

    invoke-virtual {p1, p2}, Lo/setSpeed;->setActualImageResource(I)V

    .line 55
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->lifestyleImage:I

    invoke-virtual {p0, p1}, Lo/addOnChildAttachStateChangeListener;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    const p2, 0x7f0801f5

    invoke-virtual {p1, p2}, Lo/setSpeed;->setActualImageResource(I)V

    return-void
.end method
