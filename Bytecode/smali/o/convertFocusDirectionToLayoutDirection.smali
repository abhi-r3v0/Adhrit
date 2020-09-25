.class public final Lo/convertFocusDirectionToLayoutDirection;
.super Landroidx/fragment/app/Fragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/convertFocusDirectionToLayoutDirection$onMessageChannelReady;,
        Lo/convertFocusDirectionToLayoutDirection$ICustomTabsCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 !2\u00020\u0001:\u0002!\"B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J&\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u0008\u0010\u001e\u001a\u00020\u0015H\u0016J\u001a\u0010\u001f\u001a\u00020\u00152\u0006\u0010 \u001a\u00020\u00192\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016R\u001a\u0010\u0003\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u001b\u0010\r\u001a\u00020\u000e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u000c\u001a\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/certificate/RewardCertificateFragment;",
        "Landroidx/fragment/app/Fragment;",
        "()V",
        "actionObserver",
        "Landroidx/lifecycle/Observer;",
        "Lcom/dreamplug/androidapp/core/Event;",
        "",
        "certificateViewModel",
        "Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateViewModel;",
        "getCertificateViewModel",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateViewModel;",
        "certificateViewModel$delegate",
        "Lkotlin/Lazy;",
        "navigator",
        "Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "getNavigator",
        "()Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "navigator$delegate",
        "observer",
        "Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModel;",
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
        "onDestroyView",
        "onViewCreated",
        "view",
        "Companion",
        "Extra",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lo/convertFocusDirectionToLayoutDirection$ICustomTabsCallback;


# instance fields
.field private asInterface:Ljava/util/HashMap;

.field private final extraCallback:Lo/setPlaybackToRemote;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPlaybackToRemote<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModel;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Lo/isSameListener;

.field private final onNavigationEvent:Lo/isSameListener;

.field private final onPostMessage:Lo/setPlaybackToRemote;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPlaybackToRemote<",
            "Lo/getThumbTintList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/convertFocusDirectionToLayoutDirection$ICustomTabsCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/convertFocusDirectionToLayoutDirection$ICustomTabsCallback;-><init>(B)V

    sput-object v0, Lo/convertFocusDirectionToLayoutDirection;->ICustomTabsCallback:Lo/convertFocusDirectionToLayoutDirection$ICustomTabsCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 28
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 104
    new-instance v0, Lo/convertFocusDirectionToLayoutDirection$onPostMessage;

    invoke-direct {v0, p0}, Lo/convertFocusDirectionToLayoutDirection$onPostMessage;-><init>(Lo/removeOnActiveChangeListener;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 104
    iput-object v2, p0, Lo/convertFocusDirectionToLayoutDirection;->onNavigationEvent:Lo/isSameListener;

    const-string v0, "$this$lazyNavigator"

    .line 31
    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8072
    new-instance v0, Lo/setAddDuration$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/setAddDuration$onMessageChannelReady;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 31
    iput-object v1, p0, Lo/convertFocusDirectionToLayoutDirection;->onMessageChannelReady:Lo/isSameListener;

    .line 39
    new-instance v0, Lo/convertFocusDirectionToLayoutDirection$extraCallback;

    invoke-direct {v0, p0}, Lo/convertFocusDirectionToLayoutDirection$extraCallback;-><init>(Lo/convertFocusDirectionToLayoutDirection;)V

    check-cast v0, Lo/setPlaybackToRemote;

    iput-object v0, p0, Lo/convertFocusDirectionToLayoutDirection;->extraCallback:Lo/setPlaybackToRemote;

    .line 57
    new-instance v0, Lo/convertFocusDirectionToLayoutDirection$onNavigationEvent;

    invoke-direct {v0, p0}, Lo/convertFocusDirectionToLayoutDirection$onNavigationEvent;-><init>(Lo/convertFocusDirectionToLayoutDirection;)V

    check-cast v0, Lo/setPlaybackToRemote;

    iput-object v0, p0, Lo/convertFocusDirectionToLayoutDirection;->onPostMessage:Lo/setPlaybackToRemote;

    return-void
.end method

.method public static final synthetic onMessageChannelReady(Lo/convertFocusDirectionToLayoutDirection;)Lo/getMoveDuration;
    .locals 0

    .line 11000
    iget-object p0, p0, Lo/convertFocusDirectionToLayoutDirection;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/getMoveDuration;

    return-object p0
.end method

.method public static final synthetic onNavigationEvent(Lo/convertFocusDirectionToLayoutDirection;)Lo/recycleByLayoutState;
    .locals 0

    .line 10000
    iget-object p0, p0, Lo/convertFocusDirectionToLayoutDirection;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/recycleByLayoutState;

    return-object p0
.end method


# virtual methods
.method public final extraCallback(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/convertFocusDirectionToLayoutDirection;->asInterface:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/convertFocusDirectionToLayoutDirection;->asInterface:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/convertFocusDirectionToLayoutDirection;->asInterface:Ljava/util/HashMap;

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

    iget-object v1, p0, Lo/convertFocusDirectionToLayoutDirection;->asInterface:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 33
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-static {p0}, Lo/extraCallback;->ICustomTabsCallback(Landroidx/fragment/app/Fragment;)Landroid/os/Parcelable;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    check-cast p1, Lo/convertFocusDirectionToLayoutDirection$onMessageChannelReady;

    .line 35
    sget-object v0, Lo/getMaxCardElevation;->extraCallback:Lo/getMaxCardElevation;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v1

    const-string v2, "lifecycle"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const-string v3, "RewardCertificateFragment"

    .line 1029
    invoke-interface {v0, v3, v1, v2}, Lo/findSameItem;->ICustomTabsCallback(Ljava/lang/String;Lo/MediaControllerCompatApi21$CallbackProxy;Z)V

    .line 2000
    iget-object v0, p0, Lo/convertFocusDirectionToLayoutDirection;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/recycleByLayoutState;

    .line 2093
    iget-object p1, p1, Lo/convertFocusDirectionToLayoutDirection$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/String;

    .line 3022
    iput-object p1, v0, Lo/recycleByLayoutState;->onNavigationEvent:Ljava/lang/String;

    .line 3023
    invoke-virtual {v0}, Lo/recycleByLayoutState;->onPostMessage()V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4000
    iget-object p3, p0, Lo/convertFocusDirectionToLayoutDirection;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/recycleByLayoutState;

    .line 4047
    iget-object p3, p3, Lo/recycleByLayoutState;->ICustomTabsCallback:Lo/setActive;

    .line 68
    move-object v0, p0

    check-cast v0, Lo/toLegacyStreamType;

    iget-object v1, p0, Lo/convertFocusDirectionToLayoutDirection;->extraCallback:Lo/setPlaybackToRemote;

    invoke-virtual {p3, v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 5000
    iget-object p3, p0, Lo/convertFocusDirectionToLayoutDirection;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/recycleByLayoutState;

    .line 5046
    iget-object p3, p3, Lo/recycleByLayoutState;->onMessageChannelReady:Lo/setActive;

    .line 69
    iget-object v1, p0, Lo/convertFocusDirectionToLayoutDirection;->onPostMessage:Lo/setPlaybackToRemote;

    invoke-virtual {p3, v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    const p3, 0x7f0e00cf

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onDestroyView()V
    .locals 2

    .line 74
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 6000
    iget-object v0, p0, Lo/convertFocusDirectionToLayoutDirection;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/recycleByLayoutState;

    .line 6047
    iget-object v0, v0, Lo/recycleByLayoutState;->ICustomTabsCallback:Lo/setActive;

    .line 75
    iget-object v1, p0, Lo/convertFocusDirectionToLayoutDirection;->extraCallback:Lo/setPlaybackToRemote;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    .line 7000
    iget-object v0, p0, Lo/convertFocusDirectionToLayoutDirection;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/recycleByLayoutState;

    .line 7046
    iget-object v0, v0, Lo/recycleByLayoutState;->onMessageChannelReady:Lo/setActive;

    .line 76
    iget-object v1, p0, Lo/convertFocusDirectionToLayoutDirection;->onPostMessage:Lo/setPlaybackToRemote;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    .line 8000
    iget-object v0, p0, Lo/convertFocusDirectionToLayoutDirection;->asInterface:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 80
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->shareCta:I

    invoke-virtual {p0, p1}, Lo/convertFocusDirectionToLayoutDirection;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const-string/jumbo p2, "shareCta"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance p2, Lo/convertFocusDirectionToLayoutDirection$asBinder;

    invoke-direct {p2, p0}, Lo/convertFocusDirectionToLayoutDirection$asBinder;-><init>(Lo/convertFocusDirectionToLayoutDirection;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 86
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->closeButton:I

    invoke-virtual {p0, p1}, Lo/convertFocusDirectionToLayoutDirection;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/getRemainingScrollVertical;

    const-string p2, "closeButton"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance p2, Lo/convertFocusDirectionToLayoutDirection$asInterface;

    invoke-direct {p2, p0}, Lo/convertFocusDirectionToLayoutDirection$asInterface;-><init>(Lo/convertFocusDirectionToLayoutDirection;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 89
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->loaderView:I

    invoke-virtual {p0, p1}, Lo/convertFocusDirectionToLayoutDirection;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onDestroyView;

    invoke-static {p1}, Lo/prependViewToAllSpans;->onNavigationEvent(Lo/prependViewToAllSpans;)V

    return-void
.end method
