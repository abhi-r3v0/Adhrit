.class public final Lo/getViewLayoutPosition;
.super Landroidx/fragment/app/Fragment;
.source ""

# interfaces
.implements Lo/createScroller;
.implements Lo/removeItemAt;
.implements Lo/viewNeedsUpdate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getViewLayoutPosition$ICustomTabsCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0007*\u0002\u0015$\u0018\u0000 K2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001KB\u0005\u00a2\u0006\u0002\u0010\u0005J\u000e\u0010&\u001a\n\u0012\u0004\u0012\u00020(\u0018\u00010\'J\u0008\u0010)\u001a\u0004\u0018\u00010\tJ\u0008\u0010*\u001a\u00020+H\u0002J\u0008\u0010,\u001a\u00020+H\u0002J\u0008\u0010-\u001a\u00020+H\u0002J\u0006\u0010.\u001a\u00020\u0013J\u0008\u0010/\u001a\u00020\u0013H\u0016J\u0008\u00100\u001a\u00020\u0013H\u0002J\u0006\u00101\u001a\u00020\u0013J\u0008\u00102\u001a\u00020\u0013H\u0016J\u0012\u00103\u001a\u00020+2\u0008\u00104\u001a\u0004\u0018\u000105H\u0016J&\u00106\u001a\u0004\u0018\u0001072\u0006\u00108\u001a\u0002092\u0008\u0010:\u001a\u0004\u0018\u00010;2\u0008\u00104\u001a\u0004\u0018\u000105H\u0016J\u0016\u0010<\u001a\u00020+2\u0006\u0010=\u001a\u00020(2\u0006\u0010>\u001a\u00020\tJ\u0008\u0010?\u001a\u00020+H\u0016J\u001a\u0010@\u001a\u00020+2\u0006\u0010A\u001a\u0002072\u0008\u00104\u001a\u0004\u0018\u000105H\u0016J\u0008\u0010B\u001a\u0004\u0018\u00010\tJ\u0010\u0010C\u001a\u00020+2\u0006\u0010D\u001a\u00020EH\u0002J\u0012\u0010F\u001a\u00020+2\u0008\u0010G\u001a\u0004\u0018\u00010\tH\u0002J\u0010\u0010H\u001a\u00020+2\u0008\u0010I\u001a\u0004\u0018\u00010\tJ\u0006\u0010J\u001a\u00020+R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000c\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0016R\u001b\u0010\u0017\u001a\u00020\u00188BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u0011\u001a\u0004\u0008\u0019\u0010\u001aR\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u001e\u001a\u0004\u0018\u00010\u001f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010\u0011\u001a\u0004\u0008 \u0010!R\u0010\u0010#\u001a\u00020$X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010%\u00a8\u0006L"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/tabholder/TabFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/dreamplug/utils/BackKeyHandler;",
        "Lcom/dreamplug/utils/ScrollBackHandler;",
        "Lcom/dreamplug/fabrik/ui/tabholder/BottomBarSupportInterface;",
        "()V",
        "bottomInset",
        "",
        "currentResumedChildFragmentTag",
        "",
        "currentSelectedSubmenu",
        "defaultSelectedSubmenu",
        "fabMenuViewModel",
        "Lcom/dreamplug/fabrik/ui/main/FabMenuViewModel;",
        "getFabMenuViewModel",
        "()Lcom/dreamplug/fabrik/ui/main/FabMenuViewModel;",
        "fabMenuViewModel$delegate",
        "Lkotlin/Lazy;",
        "isTabAnimationEnabled",
        "",
        "navigationViewAdapter",
        "com/dreamplug/fabrik/ui/tabholder/TabFragment$navigationViewAdapter$1",
        "Lcom/dreamplug/fabrik/ui/tabholder/TabFragment$navigationViewAdapter$1;",
        "navigator",
        "Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "getNavigator",
        "()Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "navigator$delegate",
        "tabBarOffsetListener",
        "Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;",
        "tabExtra",
        "Lcom/dreamplug/fabrik/ui/FabrikFragmentExtraData$TabHolderExtra;",
        "getTabExtra",
        "()Lcom/dreamplug/fabrik/ui/FabrikFragmentExtraData$TabHolderExtra;",
        "tabExtra$delegate",
        "viewTreeObserver",
        "com/dreamplug/fabrik/ui/tabholder/TabFragment$viewTreeObserver$1",
        "Lcom/dreamplug/fabrik/ui/tabholder/TabFragment$viewTreeObserver$1;",
        "getTabListItems",
        "",
        "Lcom/dreamplug/widget/navigation/TabItem;",
        "getTabTag",
        "handleBottomBarHeight",
        "",
        "handleCoachMark",
        "handleLockedScreen",
        "hasMenu",
        "isBottomBarSupported",
        "isCoachEligibleTab",
        "isCoachMarkVisible",
        "onBackPressed",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onMenuSelected",
        "item",
        "source",
        "onScrollBackToTop",
        "onViewCreated",
        "view",
        "selectedSubMenu",
        "setNotificationBadges",
        "badgeData",
        "Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeNotificationsResponse;",
        "switchToSubmenu",
        "submenu",
        "updateChildResume",
        "fragmentTag",
        "updateFabMenu",
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


# static fields
.field public static final onPostMessage:Lo/getViewLayoutPosition$ICustomTabsCallback;


# instance fields
.field public final ICustomTabsCallback:Lo/isSameListener;

.field private ICustomTabsCallback$Stub:Ljava/lang/String;

.field private final asBinder:Lcom/google/android/material/appbar/AppBarLayout$onNavigationEvent;

.field private final asInterface:Lo/isSameListener;

.field public final extraCallback:Lo/getViewLayoutPosition$ICustomTabsCallback$Stub;

.field private getInterfaceDescriptor:Ljava/util/HashMap;

.field private final newSession:Lo/getViewLayoutPosition$warmup;

.field public onMessageChannelReady:Ljava/lang/String;

.field public onNavigationEvent:Ljava/lang/String;

.field private final onRelationshipValidationResult:Z

.field private final onTransact:Lo/isSameListener;

.field private warmup:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/getViewLayoutPosition$ICustomTabsCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/getViewLayoutPosition$ICustomTabsCallback;-><init>(B)V

    sput-object v0, Lo/getViewLayoutPosition;->onPostMessage:Lo/getViewLayoutPosition$ICustomTabsCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 63
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 65
    new-instance v0, Lo/getViewLayoutPosition$ICustomTabsService;

    invoke-direct {v0, p0}, Lo/getViewLayoutPosition$ICustomTabsService;-><init>(Lo/getViewLayoutPosition;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 65
    iput-object v2, p0, Lo/getViewLayoutPosition;->ICustomTabsCallback:Lo/isSameListener;

    .line 70
    sget-object v0, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 32000
    sget-object v0, Lo/isInLayout;->MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$2:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 70
    iput-boolean v0, p0, Lo/getViewLayoutPosition;->onRelationshipValidationResult:Z

    .line 72
    invoke-static {p0}, Lo/setAddDuration;->onNavigationEvent(Landroidx/fragment/app/Fragment;)Lo/isSameListener;

    move-result-object v0

    iput-object v0, p0, Lo/getViewLayoutPosition;->asInterface:Lo/isSameListener;

    .line 73
    new-instance v0, Lo/getViewLayoutPosition$extraCallback;

    invoke-direct {v0, p0}, Lo/getViewLayoutPosition$extraCallback;-><init>(Lo/getViewLayoutPosition;)V

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 73
    iput-object v1, p0, Lo/getViewLayoutPosition;->onTransact:Lo/isSameListener;

    .line 110
    new-instance v0, Lo/getViewLayoutPosition$ICustomTabsCallback$Stub;

    invoke-direct {v0, p0}, Lo/getViewLayoutPosition$ICustomTabsCallback$Stub;-><init>(Lo/getViewLayoutPosition;)V

    iput-object v0, p0, Lo/getViewLayoutPosition;->extraCallback:Lo/getViewLayoutPosition$ICustomTabsCallback$Stub;

    .line 227
    sget-object v0, Lo/getViewLayoutPosition$ICustomTabsCallback$Stub$Proxy;->onNavigationEvent:Lo/getViewLayoutPosition$ICustomTabsCallback$Stub$Proxy;

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$onNavigationEvent;

    iput-object v0, p0, Lo/getViewLayoutPosition;->asBinder:Lcom/google/android/material/appbar/AppBarLayout$onNavigationEvent;

    .line 362
    new-instance v0, Lo/getViewLayoutPosition$warmup;

    invoke-direct {v0, p0}, Lo/getViewLayoutPosition$warmup;-><init>(Lo/getViewLayoutPosition;)V

    iput-object v0, p0, Lo/getViewLayoutPosition;->newSession:Lo/getViewLayoutPosition$warmup;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/getViewLayoutPosition;)Lo/getViewLayoutPosition$ICustomTabsCallback$Stub;
    .locals 0

    .line 63
    iget-object p0, p0, Lo/getViewLayoutPosition;->extraCallback:Lo/getViewLayoutPosition$ICustomTabsCallback$Stub;

    return-object p0
.end method

.method public static final synthetic ICustomTabsCallback(Lo/getViewLayoutPosition;Ljava/lang/String;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lo/getViewLayoutPosition;->onPostMessage(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic asInterface(Lo/getViewLayoutPosition;)Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lo/getViewLayoutPosition;->onNavigationEvent:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic extraCallback(Lo/getViewLayoutPosition;)Lo/onDetach$RemoteActionCompatParcelizer;
    .locals 0

    .line 33000
    iget-object p0, p0, Lo/getViewLayoutPosition;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/onDetach$RemoteActionCompatParcelizer;

    return-object p0
.end method

.method public static final synthetic onMessageChannelReady(Lo/getViewLayoutPosition;)Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lo/getViewLayoutPosition;->ICustomTabsCallback$Stub:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic onMessageChannelReady(Lo/getViewLayoutPosition;I)V
    .locals 0

    .line 63
    iput p1, p0, Lo/getViewLayoutPosition;->warmup:I

    return-void
.end method

.method public static final synthetic onMessageChannelReady(Lo/getViewLayoutPosition;Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lo/getViewLayoutPosition;->onNavigationEvent:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic onNavigationEvent(Lo/getViewLayoutPosition;)I
    .locals 0

    .line 63
    iget p0, p0, Lo/getViewLayoutPosition;->warmup:I

    return p0
.end method

.method public static final synthetic onNavigationEvent(Lo/getViewLayoutPosition;Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeNotificationsResponse;)V
    .locals 14

    .line 33437
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->navigationView:I

    invoke-virtual {p0, v0}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/StaggeredGridLayoutManager$SavedState;

    .line 34037
    iget-object v0, v0, Lo/StaggeredGridLayoutManager$SavedState;->onMessageChannelReady:Ljava/util/List;

    .line 33438
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 33439
    check-cast v0, Ljava/lang/Iterable;

    .line 33499
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lo/isFullSpan;

    .line 35009
    iget-object v2, p1, Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeNotificationsResponse;->onMessageChannelReady:Ljava/util/List;

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 33440
    check-cast v2, Ljava/lang/Iterable;

    .line 33500
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/dreamplug/fabrik/ui/notificationCentre/Badges;

    .line 35019
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/notificationCentre/Badges;->onNavigationEvent:Ljava/lang/String;

    .line 36010
    iget-object v7, v3, Lo/isFullSpan;->onNavigationEvent:Ljava/lang/String;

    .line 33441
    invoke-static {v6, v7}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_1
    move-object v5, v4

    .line 33501
    :goto_1
    check-cast v5, Lcom/dreamplug/fabrik/ui/notificationCentre/Badges;

    goto :goto_2

    :cond_2
    move-object v5, v4

    :goto_2
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v5, :cond_3

    .line 36015
    iget-object v4, v5, Lcom/dreamplug/fabrik/ui/notificationCentre/Badges;->extraCallback:Ljava/lang/String;

    :cond_3
    move-object v11, v4

    const/4 v12, 0x0

    const/16 v13, 0xbf

    move-object v4, v2

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move v9, v10

    move-object v10, v11

    move-object v11, v12

    move v12, v13

    .line 33443
    invoke-static/range {v3 .. v12}, Lo/isFullSpan;->ICustomTabsCallback(Lo/isFullSpan;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Boolean;I)Lo/isFullSpan;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 33445
    :cond_4
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->navigationView:I

    invoke-virtual {p0, p1}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lo/StaggeredGridLayoutManager$SavedState;

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, v1}, Lo/StaggeredGridLayoutManager$SavedState;->onPostMessage(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic onPostMessage(Lo/getViewLayoutPosition;)Lo/getMoveDuration;
    .locals 0

    .line 37000
    iget-object p0, p0, Lo/getViewLayoutPosition;->asInterface:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/getMoveDuration;

    return-object p0
.end method

.method private final onPostMessage(Ljava/lang/String;)V
    .locals 5

    .line 372
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->navigationView:I

    invoke-virtual {p0, v0}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/StaggeredGridLayoutManager$SavedState;

    const-string v1, "navigationView"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v1

    const-string v2, "lifecycle"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lo/getViewLayoutPosition$newSession;

    invoke-direct {v2, p0, p1}, Lo/getViewLayoutPosition$newSession;-><init>(Lo/getViewLayoutPosition;Ljava/lang/String;)V

    check-cast v2, Lo/getServerTime;

    const-wide/16 v3, 0x12c

    invoke-static {v0, v1, v3, v4, v2}, Lo/getTextOn;->ICustomTabsCallback(Landroid/view/View;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    return-void
.end method

.method public static final synthetic onPostMessage(Lo/getViewLayoutPosition;Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lo/getViewLayoutPosition;->ICustomTabsCallback$Stub:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic onTransact(Lo/getViewLayoutPosition;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lo/getViewLayoutPosition;->onRelationshipValidationResult:Z

    return p0
.end method


# virtual methods
.method public final ICustomTabsCallback()Z
    .locals 2

    .line 449
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->navigationView:I

    invoke-virtual {p0, v0}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/StaggeredGridLayoutManager$SavedState;

    iget-object v1, p0, Lo/getViewLayoutPosition;->onMessageChannelReady:Ljava/lang/String;

    .line 25129
    iget-object v0, v0, Lo/StaggeredGridLayoutManager$SavedState;->onPostMessage:Lo/StaggeredGridLayoutManager$SavedState$onNavigationEvent;

    if-eqz v0, :cond_0

    .line 25207
    iget-object v0, v0, Lo/StaggeredGridLayoutManager$SavedState$onNavigationEvent;->asInterface:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/requestExtraBinder;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 450
    :goto_0
    instance-of v1, v0, Lo/createScroller;

    if-eqz v1, :cond_1

    check-cast v0, Lo/createScroller;

    invoke-interface {v0}, Lo/createScroller;->ICustomTabsCallback()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 78
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    sget-object p1, Lo/recordPreLayoutInformation;->onTransact:Lo/recordPreLayoutInformation;

    move-object v0, p0

    check-cast v0, Lo/toLegacyStreamType;

    new-instance v1, Lo/getViewLayoutPosition$onRelationshipValidationResult;

    invoke-direct {v1, p0}, Lo/getViewLayoutPosition$onRelationshipValidationResult;-><init>(Lo/getViewLayoutPosition;)V

    check-cast v1, Lo/setPlaybackToRemote;

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    sget-object p3, Lo/setTrackResource;->ICustomTabsCallback:Lo/setTrackResource;

    invoke-static {}, Lo/setTrackResource;->ICustomTabsCallback()Lo/setActive;

    move-result-object p3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lo/toLegacyStreamType;

    move-result-object v0

    new-instance v1, Lo/getViewLayoutPosition$onTransact;

    invoke-direct {v1, p0}, Lo/getViewLayoutPosition$onTransact;-><init>(Lo/getViewLayoutPosition;)V

    check-cast v1, Lo/setPlaybackToRemote;

    invoke-virtual {p3, v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    const p3, 0x7f0e00d9

    const/4 v0, 0x0

    .line 103
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 38000
    iget-object v0, p0, Lo/getViewLayoutPosition;->getInterfaceDescriptor:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 3

    .line 454
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->navigationView:I

    invoke-virtual {p0, v0}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/StaggeredGridLayoutManager$SavedState;

    iget-object v1, p0, Lo/getViewLayoutPosition;->onMessageChannelReady:Ljava/lang/String;

    .line 26129
    iget-object v0, v0, Lo/StaggeredGridLayoutManager$SavedState;->onPostMessage:Lo/StaggeredGridLayoutManager$SavedState$onNavigationEvent;

    if-eqz v0, :cond_0

    .line 26207
    iget-object v0, v0, Lo/StaggeredGridLayoutManager$SavedState$onNavigationEvent;->asInterface:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/requestExtraBinder;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 455
    :goto_0
    instance-of v1, v0, Lo/removeItemAt;

    if-eqz v1, :cond_1

    .line 456
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->navigationView:I

    invoke-virtual {p0, v1}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/StaggeredGridLayoutManager$SavedState;

    .line 27098
    sget v2, Lo/preferLastSpan$ICustomTabsCallback;->appBar:I

    invoke-virtual {v1, v2}, Lo/StaggeredGridLayoutManager$SavedState;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    .line 457
    check-cast v0, Lo/removeItemAt;

    invoke-interface {v0}, Lo/removeItemAt;->onMessageChannelReady()V

    :cond_1
    return-void
.end method

.method public final onNavigationEvent(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/getViewLayoutPosition;->getInterfaceDescriptor:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/getViewLayoutPosition;->getInterfaceDescriptor:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/getViewLayoutPosition;->getInterfaceDescriptor:Ljava/util/HashMap;

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

    iget-object v1, p0, Lo/getViewLayoutPosition;->getInterfaceDescriptor:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final onNavigationEvent()V
    .locals 6

    .line 28000
    iget-object v0, p0, Lo/getViewLayoutPosition;->onTransact:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/notifyItemInserted;

    .line 29000
    iget-object v1, p0, Lo/getViewLayoutPosition;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/onDetach$RemoteActionCompatParcelizer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 29019
    iget-object v1, v1, Lo/onDetach$RemoteActionCompatParcelizer;->extraCallback:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v3, "home"

    .line 28358
    invoke-static {v1, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 29462
    iget-object v1, p0, Lo/getViewLayoutPosition;->extraCallback:Lo/getViewLayoutPosition$ICustomTabsCallback$Stub;

    invoke-virtual {v1}, Lo/getViewLayoutPosition$ICustomTabsCallback$Stub;->onMessageChannelReady()Ljava/util/List;

    move-result-object v1

    .line 28353
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_4

    .line 28355
    sget-object v1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 30000
    iget-object v5, p0, Lo/getViewLayoutPosition;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v5}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/onDetach$RemoteActionCompatParcelizer;

    if-eqz v5, :cond_1

    .line 30019
    iget-object v2, v5, Lo/onDetach$RemoteActionCompatParcelizer;->extraCallback:Ljava/lang/String;

    .line 28355
    :cond_1
    invoke-virtual {v1, v2}, Lo/setTrackTintMode;->extraCallback(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->tabCoachLayout:I

    invoke-virtual {p0, v1}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/onChildrenLoaded;

    if-eqz v1, :cond_5

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->tabCoachLayout:I

    invoke-virtual {p0, v1}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/onChildrenLoaded;

    const-string/jumbo v2, "tabCoachLayout"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    .line 28498
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_5

    :cond_3
    sget-object v1, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 31000
    sget-object v1, Lo/isInLayout;->MediaBrowserCompat$MediaBrowserImplApi26:Lo/isAdded;

    sget-object v2, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v5, 0x5f

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 478
    :cond_5
    :goto_2
    invoke-virtual {v0, v3}, Lo/notifyItemInserted;->onMessageChannelReady(Z)V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 13

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 317
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->navigationView:I

    invoke-virtual {p0, p1}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/StaggeredGridLayoutManager$SavedState;

    .line 2042
    iget-object p1, p1, Lo/StaggeredGridLayoutManager$SavedState;->ICustomTabsCallback:Landroid/view/View;

    .line 317
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p2, p0, Lo/getViewLayoutPosition;->newSession:Lo/getViewLayoutPosition$warmup;

    check-cast p2, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 318
    sget-object p1, Lo/sortAndDedup;->onPostMessage:Lo/sortAndDedup;

    invoke-static {}, Lo/sortAndDedup;->onNavigationEvent()Lo/setActive;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lo/toLegacyStreamType;

    move-result-object p2

    new-instance v0, Lo/getViewLayoutPosition$asInterface;

    invoke-direct {v0, p0}, Lo/getViewLayoutPosition$asInterface;-><init>(Lo/getViewLayoutPosition;)V

    check-cast v0, Lo/setPlaybackToRemote;

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 323
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->navigationView:I

    invoke-virtual {p0, p1}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/StaggeredGridLayoutManager$SavedState;

    move-object p2, p0

    check-cast p2, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, p2}, Lo/StaggeredGridLayoutManager$SavedState;->setParentFragment(Landroidx/fragment/app/Fragment;)V

    .line 324
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->navigationView:I

    invoke-virtual {p0, p1}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/StaggeredGridLayoutManager$SavedState;

    iget-object p2, p0, Lo/getViewLayoutPosition;->extraCallback:Lo/getViewLayoutPosition$ICustomTabsCallback$Stub;

    check-cast p2, Lo/StaggeredGridLayoutManager$SavedState$ICustomTabsCallback;

    invoke-virtual {p1, p2}, Lo/StaggeredGridLayoutManager$SavedState;->setAdapter(Lo/StaggeredGridLayoutManager$SavedState$ICustomTabsCallback;)V

    .line 325
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->navigationView:I

    invoke-virtual {p0, p1}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/StaggeredGridLayoutManager$SavedState;

    iget-object p2, p0, Lo/getViewLayoutPosition;->asBinder:Lcom/google/android/material/appbar/AppBarLayout$onNavigationEvent;

    invoke-virtual {p1, p2}, Lo/StaggeredGridLayoutManager$SavedState;->setTabBarOffsetListener(Lcom/google/android/material/appbar/AppBarLayout$onNavigationEvent;)V

    .line 3000
    iget-object p1, p0, Lo/getViewLayoutPosition;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/onDetach$RemoteActionCompatParcelizer;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 3019
    iget-object p1, p1, Lo/onDetach$RemoteActionCompatParcelizer;->extraCallback:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    const-string v0, "home"

    .line 326
    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 327
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->navigationView:I

    invoke-virtual {p0, p1}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/StaggeredGridLayoutManager$SavedState;

    .line 3188
    sget v2, Lo/preferLastSpan$ICustomTabsCallback;->tabList:I

    invoke-virtual {p1, v2}, Lo/StaggeredGridLayoutManager$SavedState;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    const-string/jumbo v3, "tabList"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3189
    sget v2, Lo/preferLastSpan$ICustomTabsCallback;->menuTabHorizontalLayout:I

    invoke-virtual {p1, v2}, Lo/StaggeredGridLayoutManager$SavedState;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/HorizontalScrollView;

    const-string v3, "menuTabHorizontalLayout"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3190
    sget v2, Lo/preferLastSpan$ICustomTabsCallback;->appBar:I

    invoke-virtual {p1, v2}, Lo/StaggeredGridLayoutManager$SavedState;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout;

    const-string v3, "appBar"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3191
    sget v2, Lo/preferLastSpan$ICustomTabsCallback;->tabFragmentList:I

    invoke-virtual {p1, v2}, Lo/StaggeredGridLayoutManager$SavedState;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/getCustomActions;

    const-string/jumbo v2, "tabFragmentList"

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lo/getCustomActions;->setUserInputEnabled(Z)V

    .line 4000
    :cond_1
    iget-object p1, p0, Lo/getViewLayoutPosition;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/onDetach$RemoteActionCompatParcelizer;

    if-eqz p1, :cond_2

    .line 4019
    iget-object p1, p1, Lo/onDetach$RemoteActionCompatParcelizer;->extraCallback:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object p1, p2

    .line 331
    :goto_1
    sget-object v2, Lo/setTrackResource;->ICustomTabsCallback:Lo/setTrackResource;

    iget-object v2, p0, Lo/getViewLayoutPosition;->onNavigationEvent:Ljava/lang/String;

    invoke-static {v2}, Lo/setTrackResource;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-nez p1, :cond_4

    if-nez v2, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    goto :goto_2

    .line 4056
    :cond_4
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    .line 5000
    :goto_2
    iget-object v2, p0, Lo/getViewLayoutPosition;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/onDetach$RemoteActionCompatParcelizer;

    if-eqz v2, :cond_5

    .line 5019
    iget-object v2, v2, Lo/onDetach$RemoteActionCompatParcelizer;->extraCallback:Ljava/lang/String;

    goto :goto_3

    :cond_5
    move-object v2, p2

    .line 335
    :goto_3
    sget-object v4, Lo/setTrackResource;->ICustomTabsCallback:Lo/setTrackResource;

    iget-object v4, p0, Lo/getViewLayoutPosition;->onNavigationEvent:Ljava/lang/String;

    invoke-static {v4}, Lo/setTrackResource;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v2, :cond_7

    if-nez v4, :cond_6

    const/4 v2, 0x1

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    goto :goto_4

    .line 5056
    :cond_7
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    :goto_4
    if-nez p1, :cond_8

    if-eqz v2, :cond_8

    .line 338
    iget-object p1, p0, Lo/getViewLayoutPosition;->ICustomTabsCallback$Stub:Ljava/lang/String;

    invoke-direct {p0, p1}, Lo/getViewLayoutPosition;->onPostMessage(Ljava/lang/String;)V

    .line 5378
    :cond_8
    sget-object p1, Lo/setTrackResource;->ICustomTabsCallback:Lo/setTrackResource;

    .line 6000
    iget-object p1, p0, Lo/getViewLayoutPosition;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/onDetach$RemoteActionCompatParcelizer;

    if-eqz p1, :cond_9

    .line 6019
    iget-object p1, p1, Lo/onDetach$RemoteActionCompatParcelizer;->extraCallback:Ljava/lang/String;

    goto :goto_5

    :cond_9
    move-object p1, p2

    .line 5378
    :goto_5
    invoke-static {p1}, Lo/setTrackResource;->onPostMessage(Ljava/lang/String;)Lcom/dreamplug/fabrik/ui/tabholder/BottomBarItem;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 6023
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/tabholder/BottomBarItem;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/tabholder/LockConfig;

    if-eqz p1, :cond_a

    .line 6033
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/tabholder/LockConfig;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/tabholder/LockConfigData;

    goto :goto_6

    :cond_a
    move-object p1, p2

    :goto_6
    const-string v2, "lockedScreen"

    if-eqz p1, :cond_1c

    .line 5381
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->lockedScreen:I

    invoke-virtual {p0, v0}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const-string v4, "$this$visible"

    invoke-static {v0, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7009
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5382
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->titleOnboarding:I

    invoke-virtual {p0, v0}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    const-string/jumbo v5, "titleOnboarding"

    invoke-static {v0, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7051
    iget-object v5, p1, Lcom/dreamplug/fabrik/ui/tabholder/LockConfigData;->onNavigationEvent:Ljava/lang/String;

    .line 5382
    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5383
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->contentOnboarding:I

    invoke-virtual {p0, v0}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    const-string v5, "contentOnboarding"

    invoke-static {v0, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7053
    iget-object v5, p1, Lcom/dreamplug/fabrik/ui/tabholder/LockConfigData;->onMessageChannelReady:Ljava/lang/String;

    .line 5383
    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7055
    iget-object v0, p1, Lcom/dreamplug/fabrik/ui/tabholder/LockConfigData;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;

    if-eqz v0, :cond_b

    .line 7083
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;->extraCallback:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 5384
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 5385
    sget v5, Lo/getSwitchMinWidth$onPostMessage;->titleOnboarding:I

    invoke-virtual {p0, v5}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lo/createFullSpanItemFromEnd;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5386
    sget v5, Lo/getSwitchMinWidth$onPostMessage;->contentOnboarding:I

    invoke-virtual {p0, v5}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lo/createFullSpanItemFromEnd;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8055
    :cond_b
    iget-object v0, p1, Lcom/dreamplug/fabrik/ui/tabholder/LockConfigData;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;

    if-eqz v0, :cond_e

    .line 8078
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;->onMessageChannelReady:Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;

    if-eqz v0, :cond_e

    .line 9039
    iget-object v0, v0, Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;->ICustomTabsCallback:Ljava/util/List;

    if-eqz v0, :cond_e

    .line 5390
    move-object v5, v0

    check-cast v5, Ljava/util/Collection;

    if-eqz v5, :cond_d

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_7

    :cond_c
    const/4 v5, 0x0

    goto :goto_8

    :cond_d
    :goto_7
    const/4 v5, 0x1

    :goto_8
    if-nez v5, :cond_e

    .line 5391
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 5392
    sget-object v5, Lo/isPreLayout;->onPostMessage:Lo/isPreLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Lo/isPreLayout;->onMessageChannelReady(I)Ljava/lang/String;

    move-result-object v6

    .line 5393
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->lockedScreen:I

    invoke-virtual {p0, v0}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v0

    check-cast v5, Landroid/view/View;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x7e

    invoke-static/range {v5 .. v12}, Lo/missCount;->onNavigationEvent(Landroid/view/View;Ljava/lang/String;FLjava/lang/String;Ljava/lang/Float;[FLjava/lang/Integer;I)V

    .line 9055
    :cond_e
    iget-object v0, p1, Lcom/dreamplug/fabrik/ui/tabholder/LockConfigData;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;

    if-eqz v0, :cond_f

    .line 9076
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Asset;

    goto :goto_9

    :cond_f
    move-object v0, p2

    :goto_9
    if-eqz v0, :cond_10

    .line 9096
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Asset;->onPostMessage:Ljava/lang/String;

    goto :goto_a

    :cond_10
    move-object v2, p2

    .line 5399
    :goto_a
    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_12

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_11

    goto :goto_b

    :cond_11
    const/4 v2, 0x0

    goto :goto_c

    :cond_12
    :goto_b
    const/4 v2, 0x1

    :goto_c
    const-string v5, "imageView2"

    if-eqz v2, :cond_13

    .line 5400
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->imageView2:I

    invoke-virtual {p0, v0}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10009
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_e

    :cond_13
    if-eqz v0, :cond_14

    .line 10094
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Asset;->onNavigationEvent:Ljava/lang/String;

    goto :goto_d

    :cond_14
    move-object v2, p2

    :goto_d
    if-nez v2, :cond_15

    goto/16 :goto_e

    .line 5402
    :cond_15
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    const v7, -0x4161f061

    const/4 v8, 0x4

    const-string v9, "$this$invisible"

    const-string v10, "lottie"

    if-eq v6, v7, :cond_18

    const v7, 0x5faa95b

    if-eq v6, v7, :cond_16

    goto/16 :goto_e

    :cond_16
    const-string v6, "image"

    .line 5403
    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 5404
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->imageView2:I

    invoke-virtual {p0, v2}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v2, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11009
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5405
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->imageView2:I

    invoke-virtual {p0, v2}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v2, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11096
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Asset;->onPostMessage:Ljava/lang/String;

    if-nez v0, :cond_17

    .line 5405
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_17
    invoke-static {v2, v0}, Lo/setInflatedId;->onNavigationEvent(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 5406
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->lottie:I

    invoke-virtual {p0, v0}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/setMinimumHeight;

    invoke-static {v0, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12013
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_e

    .line 5408
    :cond_18
    invoke-virtual {v2, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 5409
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->lottie:I

    invoke-virtual {p0, v2}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/setMinimumHeight;

    invoke-static {v2, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    .line 12096
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Asset;->onPostMessage:Ljava/lang/String;

    if-nez v0, :cond_19

    .line 5409
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_19
    invoke-static {v2, v0}, Lo/extraCallback;->ICustomTabsCallback(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)Lo/setMaxWidth$onNavigationEvent;

    .line 5410
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->lottie:I

    invoke-virtual {p0, v0}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/setMinimumHeight;

    invoke-static {v0, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13009
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5411
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->imageView2:I

    invoke-virtual {p0, v0}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13013
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 5419
    :cond_1a
    :goto_e
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->cta:I

    invoke-virtual {p0, v0}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "cta"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14009
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5420
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->cta:I

    invoke-virtual {p0, v0}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14057
    iget-object v4, p1, Lcom/dreamplug/fabrik/ui/tabholder/LockConfigData;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    if-eqz v4, :cond_1b

    .line 15052
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;->onPostMessage:Ljava/lang/String;

    goto :goto_f

    :cond_1b
    move-object v4, p2

    .line 5420
    :goto_f
    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5421
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->cta:I

    invoke-virtual {p0, v0}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v2, Lo/getViewLayoutPosition$asBinder;

    invoke-direct {v2, p0, p1}, Lo/getViewLayoutPosition$asBinder;-><init>(Lo/getViewLayoutPosition;Lcom/dreamplug/fabrik/ui/tabholder/LockConfigData;)V

    check-cast v2, Lo/onDisconnectSetValue;

    invoke-static {v0, v2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    goto :goto_10

    .line 5432
    :cond_1c
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->lockedScreen:I

    invoke-virtual {p0, p1}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const-string v2, "$this$gone"

    invoke-static {p1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16017
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 16220
    :goto_10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Lo/onSessionEvent;

    move-result-object p1

    const-string v0, "requireActivity()"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/removeOnActiveChangeListener;

    .line 16489
    new-instance v0, Lo/setMetadata;

    invoke-direct {v0, p1}, Lo/setMetadata;-><init>(Lo/removeOnActiveChangeListener;)V

    const-class p1, Lo/hasObservers;

    invoke-virtual {v0, p1}, Lo/setMetadata;->onPostMessage(Ljava/lang/Class;)Lo/setQueue;

    move-result-object p1

    const-string v0, "ViewModelProvider(this).get(T::class.java)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/hasObservers;

    .line 17012
    iget-object p1, p1, Lo/hasObservers;->onMessageChannelReady:Lo/setActive;

    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 16220
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lo/toLegacyStreamType;

    move-result-object v0

    new-instance v2, Lo/getViewLayoutPosition$onPostMessage;

    invoke-direct {v2, p0}, Lo/getViewLayoutPosition$onPostMessage;-><init>(Lo/getViewLayoutPosition;)V

    check-cast v2, Lo/setPlaybackToRemote;

    invoke-virtual {p1, v0, v2}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 17236
    sget-object p1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 18000
    iget-object v0, p0, Lo/getViewLayoutPosition;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/onDetach$RemoteActionCompatParcelizer;

    if-eqz v0, :cond_1d

    .line 18019
    iget-object v0, v0, Lo/onDetach$RemoteActionCompatParcelizer;->extraCallback:Ljava/lang/String;

    goto :goto_11

    :cond_1d
    move-object v0, p2

    .line 17236
    :goto_11
    invoke-virtual {p1, v0}, Lo/setTrackTintMode;->extraCallback(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v3

    if-eqz p1, :cond_29

    .line 18092
    sget-object p1, Lo/setTrackResource;->ICustomTabsCallback:Lo/setTrackResource;

    .line 19000
    iget-object p1, p0, Lo/getViewLayoutPosition;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/onDetach$RemoteActionCompatParcelizer;

    if-eqz p1, :cond_1e

    .line 19019
    iget-object p1, p1, Lo/onDetach$RemoteActionCompatParcelizer;->extraCallback:Ljava/lang/String;

    goto :goto_12

    :cond_1e
    move-object p1, p2

    .line 18092
    :goto_12
    invoke-static {p1}, Lo/setTrackResource;->onPostMessage(Ljava/lang/String;)Lcom/dreamplug/fabrik/ui/tabholder/BottomBarItem;

    move-result-object p1

    .line 19462
    iget-object v0, p0, Lo/getViewLayoutPosition;->extraCallback:Lo/getViewLayoutPosition$ICustomTabsCallback$Stub;

    invoke-virtual {v0}, Lo/getViewLayoutPosition$ICustomTabsCallback$Stub;->onMessageChannelReady()Ljava/util/List;

    move-result-object v0

    .line 18093
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_20

    if-eqz p1, :cond_1f

    .line 20023
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/tabholder/BottomBarItem;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/tabholder/LockConfig;

    goto :goto_13

    :cond_1f
    move-object p1, p2

    :goto_13
    if-nez p1, :cond_20

    const/4 p1, 0x1

    goto :goto_14

    :cond_20
    const/4 p1, 0x0

    :goto_14
    if-eqz p1, :cond_29

    .line 17236
    sget-object p1, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 21000
    sget-object p1, Lo/isInLayout;->MediaBrowserCompat$MediaBrowserImplApi26:Lo/isAdded;

    sget-object v0, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v2, 0x5f

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 22000
    iget-object p1, p0, Lo/getViewLayoutPosition;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/onDetach$RemoteActionCompatParcelizer;

    if-eqz p1, :cond_25

    .line 22019
    iget-object p1, p1, Lo/onDetach$RemoteActionCompatParcelizer;->extraCallback:Ljava/lang/String;

    if-eqz p1, :cond_25

    .line 17237
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    const-string/jumbo v0, "tabId"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23000
    sget-object v0, Lo/setTrackTintMode;->onError:Lo/setNavigationOnClickListener;

    sget-object v2, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v4, 0x44

    aget-object v2, v2, v4

    invoke-virtual {v0, v2}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_22

    .line 22332
    check-cast v0, Ljava/lang/Iterable;

    const-string v2, "$this$toMutableSet"

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23509
    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_21

    new-instance v2, Ljava/util/LinkedHashSet;

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v2, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    check-cast v2, Ljava/util/Set;

    goto :goto_15

    .line 23510
    :cond_21
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v2, Ljava/util/Collection;

    invoke-static {v0, v2}, Lo/getSessionPersistenceKey;->onNavigationEvent(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/Set;

    goto :goto_15

    :cond_22
    move-object v2, p2

    :goto_15
    if-eqz v2, :cond_23

    .line 22333
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_23
    if-eqz v2, :cond_24

    .line 22334
    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lo/getSessionPersistenceKey;->onPostMessage(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    goto :goto_16

    :cond_24
    move-object p1, p2

    .line 24000
    :goto_16
    sget-object v0, Lo/setTrackTintMode;->onError:Lo/setNavigationOnClickListener;

    sget-object v2, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v2, v2, v4

    invoke-virtual {v0, v2, p1}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    :cond_25
    new-array p1, v3, [Lo/addWrite;

    .line 25000
    iget-object v0, p0, Lo/getViewLayoutPosition;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/onDetach$RemoteActionCompatParcelizer;

    if-eqz v0, :cond_26

    .line 25019
    iget-object p2, v0, Lo/onDetach$RemoteActionCompatParcelizer;->extraCallback:Ljava/lang/String;

    .line 25043
    :cond_26
    new-instance v0, Lo/addWrite;

    const-string/jumbo v2, "section"

    invoke-direct {v0, v2, p2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, p1, v1

    const-string p2, "pairs"

    .line 17239
    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25105
    new-instance p2, Ljava/util/HashMap;

    invoke-static {v3}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(I)V

    check-cast p2, Ljava/util/Map;

    invoke-static {p2, p1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "menu_help_viewed"

    .line 17238
    invoke-static {p1, p2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 17243
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->coachMarkStub:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 17244
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->tabCoachLayout:I

    invoke-virtual {p0, p1}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onChildrenLoaded;

    if-eqz p1, :cond_27

    check-cast p1, Landroid/view/View;

    iget p2, p0, Lo/getViewLayoutPosition;->warmup:I

    .line 17491
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 17492
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 17493
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 17496
    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 17245
    :cond_27
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->tabCoachLayout:I

    invoke-virtual {p0, p1}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onChildrenLoaded;

    if-eqz p1, :cond_28

    check-cast p1, Landroid/view/View;

    new-instance p2, Lo/getViewLayoutPosition$onNavigationEvent;

    invoke-direct {p2, p0}, Lo/getViewLayoutPosition$onNavigationEvent;-><init>(Lo/getViewLayoutPosition;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 17286
    :cond_28
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->coachDone:I

    invoke-virtual {p0, p1}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    const-string p2, "coachDone"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance p2, Lo/getViewLayoutPosition$onMessageChannelReady;

    invoke-direct {p2, p0}, Lo/getViewLayoutPosition$onMessageChannelReady;-><init>(Lo/getViewLayoutPosition;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 344
    :cond_29
    sget-object p1, Lo/getPaddingStart;->extraCallback:Lo/getPaddingStart;

    invoke-static {}, Lo/getPaddingStart;->extraCallback()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lo/toLegacyStreamType;

    move-result-object p2

    new-instance v0, Lo/getViewLayoutPosition$getInterfaceDescriptor;

    invoke-direct {v0, p0}, Lo/getViewLayoutPosition$getInterfaceDescriptor;-><init>(Lo/getViewLayoutPosition;)V

    check-cast v0, Lo/setPlaybackToRemote;

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    return-void
.end method
