.class public final Lo/getViewPosition;
.super Landroidx/fragment/app/Fragment;
.source ""

# interfaces
.implements Lo/createScroller;
.implements Lo/removeItemAt;
.implements Lo/getChangeDuration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getViewPosition$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u0000 P2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001PB\u0005\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-H\u0002J\u0008\u0010.\u001a\u0004\u0018\u00010/J\u000e\u00100\u001a\n\u0012\u0004\u0012\u000202\u0018\u000101J\u0008\u00103\u001a\u0004\u0018\u00010/J\u0014\u00103\u001a\u0004\u0018\u00010/2\u0008\u00104\u001a\u0004\u0018\u00010/H\u0002J\u0010\u00105\u001a\u00020+2\u0006\u0010,\u001a\u00020-H\u0002J\u0015\u00106\u001a\u0004\u0018\u00010\u00172\u0006\u00107\u001a\u00020/\u00a2\u0006\u0002\u00108J\u0012\u00109\u001a\u00020\u00172\u0008\u0010,\u001a\u0004\u0018\u00010-H\u0002J\u0008\u0010:\u001a\u00020\u0017H\u0016J\u0012\u0010;\u001a\u00020+2\u0008\u0010<\u001a\u0004\u0018\u00010=H\u0016J&\u0010>\u001a\u0004\u0018\u00010?2\u0006\u0010@\u001a\u00020A2\u0008\u0010B\u001a\u0004\u0018\u00010C2\u0008\u0010<\u001a\u0004\u0018\u00010=H\u0016J\u0016\u0010D\u001a\u00020+2\u0006\u0010E\u001a\u0002022\u0006\u0010F\u001a\u00020/J!\u0010G\u001a\u00020+2\u0008\u0010H\u001a\u0004\u0018\u00010\u00172\u0008\u0010I\u001a\u0004\u0018\u00010\u0017H\u0002\u00a2\u0006\u0002\u0010JJ\u0008\u0010K\u001a\u00020+H\u0016J\u001a\u0010L\u001a\u00020+2\u0006\u0010M\u001a\u00020?2\u0008\u0010<\u001a\u0004\u0018\u00010=H\u0016J\u0008\u0010N\u001a\u0004\u0018\u00010/J\u0008\u0010O\u001a\u00020+H\u0002R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\tR\u001b\u0010\u000c\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u000b\u001a\u0004\u0008\u000e\u0010\u000fR\u001b\u0010\u0011\u001a\u00020\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u000b\u001a\u0004\u0008\u0013\u0010\u0014R\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0018R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u001b\u001a\u00020\u001c8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010\u000b\u001a\u0004\u0008\u001d\u0010\u001eR\u001d\u0010 \u001a\u0004\u0018\u00010!8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008$\u0010\u000b\u001a\u0004\u0008\"\u0010#R\u001b\u0010%\u001a\u00020&8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008)\u0010\u000b\u001a\u0004\u0008\'\u0010(\u00a8\u0006Q"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/tabholder/TabHolderFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/dreamplug/androidapp/helper/BackKeyHandler;",
        "Lcom/dreamplug/utils/ScrollBackHandler;",
        "Lcom/dreamplug/fabrik/ui/main/navigation/NavigatorParent;",
        "()V",
        "bottomBarViewModel",
        "Lcom/dreamplug/fabrik/ui/main/BottomBarViewModel;",
        "getBottomBarViewModel",
        "()Lcom/dreamplug/fabrik/ui/main/BottomBarViewModel;",
        "bottomBarViewModel$delegate",
        "Lkotlin/Lazy;",
        "fabMenuViewModel",
        "Lcom/dreamplug/fabrik/ui/main/FabMenuViewModel;",
        "getFabMenuViewModel",
        "()Lcom/dreamplug/fabrik/ui/main/FabMenuViewModel;",
        "fabMenuViewModel$delegate",
        "interstitialViewModel",
        "Lcom/dreamplug/fabrik/ui/interstitial/InterstitialViewModel;",
        "getInterstitialViewModel",
        "()Lcom/dreamplug/fabrik/ui/interstitial/InterstitialViewModel;",
        "interstitialViewModel$delegate",
        "lastInternetState",
        "",
        "Ljava/lang/Boolean;",
        "navigationManager",
        "Lcom/dreamplug/fabrik/ui/main/navigation/NavigationManager;",
        "navigator",
        "Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "getNavigator",
        "()Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "navigator$delegate",
        "tabHolderExtra",
        "Lcom/dreamplug/fabrik/ui/FabrikFragmentExtraData$TabHolderExtra;",
        "getTabHolderExtra",
        "()Lcom/dreamplug/fabrik/ui/FabrikFragmentExtraData$TabHolderExtra;",
        "tabHolderExtra$delegate",
        "tabHolderViewModel",
        "Lcom/dreamplug/fabrik/ui/tabholder/TabHolderViewModel;",
        "getTabHolderViewModel",
        "()Lcom/dreamplug/fabrik/ui/tabholder/TabHolderViewModel;",
        "tabHolderViewModel$delegate",
        "executeTarget",
        "",
        "deepLinkData",
        "Lcom/dreamplug/androidapp/deeplink/DeepLinkData;",
        "getNavigationTag",
        "",
        "getTabListItems",
        "",
        "Lcom/dreamplug/widget/navigation/TabItem;",
        "getTabTag",
        "target",
        "handleDeeplinkSubmenu",
        "isFragmentStack",
        "tag",
        "(Ljava/lang/String;)Ljava/lang/Boolean;",
        "isTabSwitchRequired",
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
        "onNetworkChanged",
        "haveInternet",
        "lastState",
        "(Ljava/lang/Boolean;Ljava/lang/Boolean;)V",
        "onScrollBackToTop",
        "onViewCreated",
        "view",
        "selectedSubMenu",
        "updateBottomBarVisibility",
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
.field public static final extraCallback:Lo/getViewPosition$onPostMessage;


# instance fields
.field public final ICustomTabsCallback:Lo/isSameListener;

.field private final ICustomTabsCallback$Stub:Lo/isSameListener;

.field private final asBinder:Lo/isSameListener;

.field private asInterface:Ljava/lang/Boolean;

.field private onMessageChannelReady:Lo/getAddDuration;

.field final onNavigationEvent:Lo/isSameListener;

.field private final onPostMessage:Lo/isSameListener;

.field private final onRelationshipValidationResult:Lo/isSameListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/getViewPosition$onPostMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/getViewPosition$onPostMessage;-><init>(B)V

    sput-object v0, Lo/getViewPosition;->extraCallback:Lo/getViewPosition$onPostMessage;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 56
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 59
    new-instance v0, Lo/getViewPosition$updateVisuals;

    invoke-direct {v0, p0}, Lo/getViewPosition$updateVisuals;-><init>(Lo/getViewPosition;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50336
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 59
    iput-object v2, p0, Lo/getViewPosition;->ICustomTabsCallback:Lo/isSameListener;

    .line 62
    invoke-static {p0}, Lo/setAddDuration;->onNavigationEvent(Landroidx/fragment/app/Fragment;)Lo/isSameListener;

    move-result-object v0

    iput-object v0, p0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    .line 693
    new-instance v0, Lo/getViewPosition$onNavigationEvent;

    invoke-direct {v0, p0}, Lo/getViewPosition$onNavigationEvent;-><init>(Lo/removeOnActiveChangeListener;)V

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50337
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 693
    iput-object v2, p0, Lo/getViewPosition;->onPostMessage:Lo/isSameListener;

    .line 64
    new-instance v0, Lo/getViewPosition$extraCallback;

    invoke-direct {v0, p0}, Lo/getViewPosition$extraCallback;-><init>(Lo/getViewPosition;)V

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50338
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 64
    iput-object v2, p0, Lo/getViewPosition;->ICustomTabsCallback$Stub:Lo/isSameListener;

    .line 68
    new-instance v0, Lo/getViewPosition$onTransact;

    invoke-direct {v0, p0}, Lo/getViewPosition$onTransact;-><init>(Lo/getViewPosition;)V

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50339
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 68
    iput-object v2, p0, Lo/getViewPosition;->onRelationshipValidationResult:Lo/isSameListener;

    .line 71
    new-instance v0, Lo/getViewPosition$ICustomTabsCallback$Stub;

    invoke-direct {v0, p0}, Lo/getViewPosition$ICustomTabsCallback$Stub;-><init>(Lo/getViewPosition;)V

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50340
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 71
    iput-object v1, p0, Lo/getViewPosition;->asBinder:Lo/isSameListener;

    .line 76
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lo/getViewPosition;->asInterface:Ljava/lang/Boolean;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/getViewPosition;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lo/getViewPosition;->extraCallback()V

    return-void
.end method

.method public static final synthetic extraCallback(Lo/getViewPosition;)Lo/onDetach$RemoteActionCompatParcelizer;
    .locals 0

    .line 50918
    iget-object p0, p0, Lo/getViewPosition;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/onDetach$RemoteActionCompatParcelizer;

    return-object p0
.end method

.method private final extraCallback()V
    .locals 4

    .line 604
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    const v1, 0x7f0b0862

    invoke-virtual {v0, v1}, Lo/requestExtraBinder;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 50331
    iget-object v1, p0, Lo/getViewPosition;->ICustomTabsCallback$Stub:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/hasObservers;

    .line 605
    instance-of v2, v0, Lo/viewNeedsUpdate;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    check-cast v2, Lo/viewNeedsUpdate;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 50332
    :goto_1
    iput-boolean v2, v1, Lo/hasObservers;->extraCallback:Z

    .line 50333
    invoke-virtual {v1}, Lo/hasObservers;->onPostMessage()V

    .line 606
    instance-of v1, v0, Lo/getViewLayoutPosition;

    if-eqz v1, :cond_2

    .line 607
    check-cast v0, Lo/getViewLayoutPosition;

    invoke-virtual {v0}, Lo/getViewLayoutPosition;->onNavigationEvent()V

    return-void

    .line 50335
    :cond_2
    iget-object v0, p0, Lo/getViewPosition;->onRelationshipValidationResult:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/notifyItemInserted;

    .line 609
    invoke-virtual {v0, v3}, Lo/notifyItemInserted;->onMessageChannelReady(Z)V

    return-void
.end method

.method public static final synthetic onMessageChannelReady(Lo/getViewPosition;)Ljava/lang/Boolean;
    .locals 0

    .line 56
    iget-object p0, p0, Lo/getViewPosition;->asInterface:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static final synthetic onMessageChannelReady(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    goto :goto_0

    .line 51478
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "money"

    .line 51481
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    :sswitch_1
    const-string v0, "cards"

    .line 51480
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    :sswitch_2
    const-string v0, "home"

    .line 51479
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lo/onGetChildDrawingOrder$onItemLoaded$extraCallback;->onNavigationEvent:Lo/onGetChildDrawingOrder$onItemLoaded$extraCallback;

    return-object v0

    :sswitch_3
    const-string v0, "lifestyle"

    .line 51482
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x112593cb -> :sswitch_3
        0x30f4df -> :sswitch_2
        0x5a0e763 -> :sswitch_1
        0x63420c0 -> :sswitch_0
    .end sparse-switch
.end method

.method private final onMessageChannelReady(Lo/getFont;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3205
    iget-object v2, v1, Lo/getFont;->notify:Ljava/lang/String;

    const-string v3, "null cannot be cast to non-null type java.lang.String"

    const-string v4, "(this as java.lang.String).toLowerCase()"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v2, :cond_2

    .line 289
    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ne v2, v5, :cond_2

    .line 4205
    iget-object v2, v1, Lo/getFont;->notify:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 290
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5178
    :cond_2
    iget-object v2, v1, Lo/getFont;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz v2, :cond_4

    if-eqz v2, :cond_3

    .line 292
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    move-object v2, v7

    .line 5184
    :goto_1
    iget-object v3, v1, Lo/getFont;->asBinder:Ljava/lang/String;

    if-nez v3, :cond_5

    const-string v3, "deeplink"

    :cond_5
    if-nez v2, :cond_6

    return-void

    .line 296
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    const-string v8, "id"

    const-string v9, "link"

    const-string v10, "currency"

    const/4 v11, 0x6

    const-string v12, "childFragmentManager"

    const-string v14, "<set-?>"

    const-string/jumbo v15, "web_game"

    const-string v5, "extra"

    const-string/jumbo v13, "source"

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_b

    :sswitch_0
    const-string v4, "fetch_ticket"

    .line 505
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 50241
    iget-object v2, v1, Lo/getFont;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 50242
    iget-object v4, v0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/getMoveDuration;

    .line 50243
    iget-object v1, v1, Lo/getFont;->ICustomTabsCallback$Stub:Ljava/lang/Boolean;

    .line 507
    invoke-virtual {v4, v2, v3, v1}, Lo/getMoveDuration;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 508
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    :cond_7
    return-void

    :sswitch_1
    const-string v4, "loan_payment"

    .line 448
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 50199
    iget-object v2, v1, Lo/getFont;->updateVisuals:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 50200
    iget-object v2, v1, Lo/getFont;->mayLaunchUrl:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 50201
    iget-object v2, v0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getMoveDuration;

    .line 50202
    iget-object v4, v1, Lo/getFont;->updateVisuals:Ljava/lang/String;

    .line 50203
    iget-object v1, v1, Lo/getFont;->mayLaunchUrl:Ljava/lang/String;

    .line 451
    invoke-static {v3, v13}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "locId"

    invoke-static {v4, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "loanId"

    invoke-static {v1, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50204
    new-instance v5, Lo/onGetChildDrawingOrder$AudioAttributesCompatParcelizer;

    new-instance v6, Lo/onDetach$INotificationSideChannel$Default;

    invoke-direct {v6, v4, v1, v3}, Lo/onDetach$INotificationSideChannel$Default;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lo/onGetChildDrawingOrder$AudioAttributesCompatParcelizer;-><init>(Lo/onDetach$INotificationSideChannel$Default;)V

    check-cast v5, Lo/getRemoveDuration;

    invoke-virtual {v2, v5}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    .line 452
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    :cond_8
    return-void

    :sswitch_2
    const-string v4, "machine_drop"

    .line 487
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 50230
    iget-object v2, v1, Lo/getFont;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 50231
    iget-object v2, v0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getMoveDuration;

    .line 50232
    iget-object v4, v1, Lo/getFont;->onMessageChannelReady:Ljava/lang/String;

    .line 50233
    iget-object v1, v1, Lo/getFont;->ICustomTabsCallback$Stub:Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    .line 492
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 489
    :cond_9
    invoke-virtual {v2, v4, v7, v3, v6}, Lo/getMoveDuration;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 50234
    :cond_a
    iget-object v2, v1, Lo/getFont;->extraCallback:Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 50235
    iget-object v2, v0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getMoveDuration;

    .line 50236
    iget-object v4, v1, Lo/getFont;->extraCallback:Ljava/lang/String;

    .line 50237
    iget-object v1, v1, Lo/getFont;->ICustomTabsCallback$Stub:Ljava/lang/Boolean;

    if-eqz v1, :cond_b

    .line 497
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 494
    :cond_b
    invoke-virtual {v2, v7, v4, v3, v6}, Lo/getMoveDuration;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_c
    return-void

    :sswitch_3
    const-string v1, "coins_detail"

    .line 364
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 29000
    iget-object v1, v0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getMoveDuration;

    const-string v2, "COINS"

    .line 365
    invoke-static {v2, v10}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29226
    new-instance v4, Lo/onGetChildDrawingOrder$validateRelationship;

    new-instance v5, Lo/onDetach$updateVisuals;

    invoke-direct {v5, v3, v2}, Lo/onDetach$updateVisuals;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lo/onGetChildDrawingOrder$validateRelationship;-><init>(Lo/onDetach$updateVisuals;)V

    check-cast v4, Lo/getRemoveDuration;

    invoke-virtual {v1, v4}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    return-void

    :sswitch_4
    const-string v1, "gems_detail"

    .line 370
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 31000
    iget-object v1, v0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getMoveDuration;

    const-string v2, "GEMS"

    .line 371
    invoke-static {v2, v10}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31226
    new-instance v4, Lo/onGetChildDrawingOrder$validateRelationship;

    new-instance v5, Lo/onDetach$updateVisuals;

    invoke-direct {v5, v3, v2}, Lo/onDetach$updateVisuals;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lo/onGetChildDrawingOrder$validateRelationship;-><init>(Lo/onDetach$updateVisuals;)V

    check-cast v4, Lo/getRemoveDuration;

    invoke-virtual {v1, v4}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    return-void

    :sswitch_5
    const-string/jumbo v3, "skill_game"

    .line 520
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 50250
    iget-object v1, v1, Lo/getFont;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 50251
    iget-object v2, v0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getMoveDuration;

    .line 50252
    new-instance v3, Lo/onGetChildDrawingOrder$INotificationSideChannel$Stub$Proxy;

    new-instance v4, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$extraCallback;

    invoke-direct {v4, v1}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$extraCallback;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lo/onGetChildDrawingOrder$INotificationSideChannel$Stub$Proxy;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$extraCallback;)V

    check-cast v3, Lo/getRemoveDuration;

    invoke-virtual {v2, v3}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    .line 523
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    :cond_d
    return-void

    :sswitch_6
    const-string v4, "loan_management"

    .line 441
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 50194
    iget-object v2, v1, Lo/getFont;->updateVisuals:Ljava/lang/String;

    if-eqz v2, :cond_e

    .line 50195
    iget-object v2, v1, Lo/getFont;->mayLaunchUrl:Ljava/lang/String;

    if-eqz v2, :cond_e

    .line 50196
    iget-object v2, v0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getMoveDuration;

    .line 50197
    iget-object v4, v1, Lo/getFont;->updateVisuals:Ljava/lang/String;

    .line 50198
    iget-object v1, v1, Lo/getFont;->mayLaunchUrl:Ljava/lang/String;

    .line 444
    invoke-virtual {v2, v3, v4, v1}, Lo/getMoveDuration;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    :cond_e
    return-void

    :sswitch_7
    const-string v4, "control_details"

    .line 320
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    goto/16 :goto_4

    :sswitch_8
    const-string/jumbo v4, "trophy_room"

    .line 480
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const-string v2, "TROPHY_ROOM"

    const-string/jumbo v4, "tag"

    .line 481
    invoke-static {v2, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50223
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lo/requestExtraBinder;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_f

    const/4 v5, 0x1

    goto :goto_2

    :cond_f
    const/4 v5, 0x0

    :goto_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 481
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4, v5}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 50224
    iget-object v1, v0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getMoveDuration;

    .line 482
    invoke-static {v1, v2, v6, v6, v11}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    return-void

    .line 50225
    :cond_10
    iget-object v2, v0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getMoveDuration;

    .line 50226
    iget-object v4, v1, Lo/getFont;->validateRelationship:Ljava/lang/String;

    .line 50227
    iget-object v1, v1, Lo/getFont;->extraCommand:Ljava/lang/String;

    .line 50228
    new-instance v5, Lo/onGetChildDrawingOrder$MediaBrowserCompat$MediaBrowserImplApi21;

    new-instance v6, Lo/access$200$extraCallback;

    invoke-direct {v6, v3, v4, v1}, Lo/access$200$extraCallback;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lo/onGetChildDrawingOrder$MediaBrowserCompat$MediaBrowserImplApi21;-><init>(Lo/access$200$extraCallback;)V

    check-cast v5, Lo/getRemoveDuration;

    invoke-virtual {v2, v5}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    return-void

    :sswitch_9
    const-string v4, "contact_book"

    .line 421
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 44000
    iget-object v2, v0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getMoveDuration;

    .line 44183
    iget-object v4, v1, Lo/getFont;->onRelationshipValidationResult:Ljava/lang/String;

    .line 45179
    iget-object v1, v1, Lo/getFont;->onPostMessage:Ljava/lang/String;

    .line 45230
    new-instance v5, Lo/onGetChildDrawingOrder$ICustomTabsService$Stub;

    new-instance v7, Lo/onActivityResumed$onNavigationEvent;

    invoke-direct {v7, v3, v6, v4, v1}, Lo/onActivityResumed$onNavigationEvent;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v7}, Lo/onGetChildDrawingOrder$ICustomTabsService$Stub;-><init>(Lo/onActivityResumed$onNavigationEvent;)V

    check-cast v5, Lo/getRemoveDuration;

    invoke-virtual {v2, v5}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    return-void

    :sswitch_a
    const-string/jumbo v4, "win_card_details"

    .line 475
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 50218
    iget-object v2, v1, Lo/getFont;->asInterface:Ljava/lang/String;

    if-eqz v2, :cond_11

    .line 50219
    iget-object v4, v0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/getMoveDuration;

    .line 50220
    iget-object v1, v1, Lo/getFont;->validateRelationship:Ljava/lang/String;

    .line 477
    invoke-static {v2, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50221
    new-instance v5, Lo/onGetChildDrawingOrder$MediaBrowserCompat$MediaBrowserImplApi21$3;

    new-instance v6, Lo/onDetach$IconCompatParcelizer;

    invoke-direct {v6, v1, v2, v3}, Lo/onDetach$IconCompatParcelizer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lo/onGetChildDrawingOrder$MediaBrowserCompat$MediaBrowserImplApi21$3;-><init>(Lo/onDetach$IconCompatParcelizer;)V

    check-cast v5, Lo/getRemoveDuration;

    invoke-virtual {v4, v5}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    .line 478
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    :cond_11
    return-void

    :sswitch_b
    const-string/jumbo v4, "unbilled_details"

    .line 335
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    goto/16 :goto_5

    :sswitch_c
    const-string v4, "bank_offer_details"

    .line 359
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 27179
    iget-object v2, v1, Lo/getFont;->onPostMessage:Ljava/lang/String;

    if-eqz v2, :cond_2e

    .line 27187
    iget-object v2, v1, Lo/getFont;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    if-eqz v2, :cond_2e

    .line 28000
    iget-object v2, v0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getMoveDuration;

    .line 28179
    iget-object v4, v1, Lo/getFont;->onPostMessage:Ljava/lang/String;

    .line 28187
    iget-object v1, v1, Lo/getFont;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 361
    invoke-static {v2, v3, v1, v4}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_d
    const-string v4, "game_help"

    .line 530
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 50266
    iget-object v2, v1, Lo/getFont;->onPostMessage:Ljava/lang/String;

    if-eqz v2, :cond_12

    .line 50267
    iget-object v4, v0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/getMoveDuration;

    .line 50268
    iget-object v1, v1, Lo/getFont;->validateRelationship:Ljava/lang/String;

    .line 532
    invoke-static {v2, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50269
    new-instance v5, Lo/onGetChildDrawingOrder$MediaBrowserCompat$MediaBrowserImplApi21$3;

    new-instance v6, Lo/onDetach$IconCompatParcelizer;

    invoke-direct {v6, v1, v2, v3}, Lo/onDetach$IconCompatParcelizer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lo/onGetChildDrawingOrder$MediaBrowserCompat$MediaBrowserImplApi21$3;-><init>(Lo/onDetach$IconCompatParcelizer;)V

    check-cast v5, Lo/getRemoveDuration;

    invoke-virtual {v4, v5}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    .line 533
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    :cond_12
    return-void

    :sswitch_e
    const-string v4, "lucky_number"

    .line 500
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 50238
    iget-object v2, v1, Lo/getFont;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v2, :cond_14

    .line 50239
    iget-object v4, v0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/getMoveDuration;

    .line 50240
    iget-object v1, v1, Lo/getFont;->ICustomTabsCallback$Stub:Ljava/lang/Boolean;

    if-eqz v1, :cond_13

    .line 502
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    :cond_13
    invoke-virtual {v4, v2, v3, v6}, Lo/getMoveDuration;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 503
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    :cond_14
    return-void

    :sswitch_f
    const-string v4, "compass"

    .line 379
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 36000
    iget-object v2, v0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getMoveDuration;

    .line 36192
    iget-object v1, v1, Lo/getFont;->warmup:Ljava/lang/String;

    const/4 v4, 0x4

    .line 380
    invoke-static {v2, v3, v1, v4}, Lo/getMoveDuration;->ICustomTabsCallback(Lo/getMoveDuration;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :sswitch_10
    const-string v1, "earn_gems"

    .line 404
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 405
    sget-object v1, Lo/getShowText;->ICustomTabsCallback:Lo/getShowText;

    invoke-static {}, Lo/getShowText;->ICustomTabsCallback()Landroidx/lifecycle/LiveData;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Lo/toLegacyStreamType;

    new-instance v4, Lo/getViewPosition$ICustomTabsCallback;

    invoke-direct {v4, v0, v3}, Lo/getViewPosition$ICustomTabsCallback;-><init>(Lo/getViewPosition;Ljava/lang/String;)V

    check-cast v4, Lo/setPlaybackToRemote;

    invoke-virtual {v1, v2, v4}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    return-void

    :sswitch_11
    const-string/jumbo v4, "slot_machine"

    .line 515
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 50247
    iget-object v2, v1, Lo/getFont;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v2, :cond_16

    .line 50248
    iget-object v4, v0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/getMoveDuration;

    .line 50249
    iget-object v1, v1, Lo/getFont;->ICustomTabsCallback$Stub:Ljava/lang/Boolean;

    if-eqz v1, :cond_15

    .line 517
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    :cond_15
    invoke-virtual {v4, v2, v3, v6}, Lo/getMoveDuration;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 518
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    :cond_16
    return-void

    :sswitch_12
    const-string v4, "bank_offer"

    .line 353
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 26000
    iget-object v2, v0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getMoveDuration;

    .line 26179
    iget-object v4, v1, Lo/getFont;->onPostMessage:Ljava/lang/String;

    .line 26187
    iget-object v5, v1, Lo/getFont;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 26206
    iget-object v1, v1, Lo/getFont;->cancel:Ljava/lang/String;

    .line 357
    invoke-static {v2, v3, v4, v5, v1}, Lo/getMoveDuration;->ICustomTabsCallback(Lo/getMoveDuration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_13
    const-string v4, "cred_protect"

    .line 303
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 7206
    iget-object v2, v1, Lo/getFont;->cancel:Ljava/lang/String;

    if-eqz v2, :cond_19

    .line 8000
    iget-object v2, v0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getMoveDuration;

    .line 305
    new-instance v4, Lo/getStateAfterAnimating$onNavigationEvent;

    const-string v6, ""

    if-nez v3, :cond_17

    move-object v3, v6

    .line 8200
    :cond_17
    iget-object v7, v1, Lo/getFont;->IPostMessageService$Stub:Ljava/lang/String;

    if-nez v7, :cond_18

    goto :goto_3

    :cond_18
    move-object v6, v7

    .line 8206
    :goto_3
    iget-object v1, v1, Lo/getFont;->cancel:Ljava/lang/String;

    .line 305
    invoke-direct {v4, v6, v1, v3}, Lo/getStateAfterAnimating$onNavigationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8253
    new-instance v1, Lo/onGetChildDrawingOrder$notify;

    invoke-direct {v1, v4}, Lo/onGetChildDrawingOrder$notify;-><init>(Lo/getStateAfterAnimating$onNavigationEvent;)V

    check-cast v1, Lo/getRemoveDuration;

    invoke-virtual {v2, v1}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    return-void

    .line 9000
    :cond_19
    iget-object v2, v0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getMoveDuration;

    .line 9183
    iget-object v4, v1, Lo/getFont;->onRelationshipValidationResult:Ljava/lang/String;

    .line 9203
    iget-object v5, v1, Lo/getFont;->INotificationSideChannel:Ljava/lang/String;

    .line 10192
    iget-object v1, v1, Lo/getFont;->warmup:Ljava/lang/String;

    .line 309
    invoke-static {v1, v9}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v2, v3, v4, v5, v1}, Lo/getMoveDuration;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :sswitch_14
    const-string v4, "like"

    .line 382
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 37000
    iget-object v2, v0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getMoveDuration;

    .line 37192
    iget-object v1, v1, Lo/getFont;->warmup:Ljava/lang/String;

    .line 383
    invoke-virtual {v2, v3, v1}, Lo/getMoveDuration;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_15
    const-string v4, "farm"

    .line 535
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 50271
    iget-object v9, v1, Lo/getFont;->onTransact:Ljava/lang/String;

    .line 50272
    iget-object v2, v1, Lo/getFont;->asInterface:Ljava/lang/String;

    if-eqz v2, :cond_1a

    .line 537
    new-instance v7, Lo/removeItemDecoration;

    .line 50273
    iget-object v1, v1, Lo/getFont;->extraCommand:Ljava/lang/String;

    .line 537
    invoke-direct {v7, v2, v1}, Lo/removeItemDecoration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    move-object v11, v7

    .line 50274
    iget-object v1, v0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lo/getMoveDuration;

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x12

    move-object v12, v3

    .line 538
    invoke-static/range {v8 .. v14}, Lo/getMoveDuration;->onPostMessage(Lo/getMoveDuration;Ljava/lang/String;Lo/getStackFromEnd;Lo/removeItemDecoration;Ljava/lang/String;ZI)V

    goto/16 :goto_b

    :sswitch_16
    const-string/jumbo v3, "web"

    .line 297
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    goto/16 :goto_6

    :sswitch_17
    const-string v1, "auto_debit"

    .line 350
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 25000
    iget-object v1, v0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getMoveDuration;

    .line 351
    invoke-static {v3, v13}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25355
    new-instance v2, Lo/onGetChildDrawingOrder$onTransact;

    new-instance v4, Lo/onDetach$getDefaultImpl;

    invoke-direct {v4, v3}, Lo/onDetach$getDefaultImpl;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Lo/onGetChildDrawingOrder$onTransact;-><init>(Lo/onDetach$getDefaultImpl;)V

    check-cast v2, Lo/getRemoveDuration;

    invoke-virtual {v1, v2}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    return-void

    :sswitch_18
    const-string/jumbo v4, "smart_statement"

    .line 320
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 14179
    :goto_4
    iget-object v2, v1, Lo/getFont;->onPostMessage:Ljava/lang/String;

    if-eqz v2, :cond_1b

    .line 15000
    iget-object v2, v0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getMoveDuration;

    .line 323
    new-instance v4, Lo/getSupportFragmentManager$onPostMessage;

    .line 15179
    iget-object v9, v1, Lo/getFont;->onPostMessage:Ljava/lang/String;

    .line 15206
    iget-object v12, v1, Lo/getFont;->cancel:Ljava/lang/String;

    .line 15207
    iget-object v13, v1, Lo/getFont;->IPostMessageService$Stub$Proxy:Ljava/lang/String;

    .line 16202
    iget-object v14, v1, Lo/getFont;->ICustomTabsService$Stub:Ljava/lang/String;

    const-string/jumbo v10, "smart_statement_details"

    move-object v8, v4

    move-object v11, v3

    .line 323
    invoke-direct/range {v8 .. v14}, Lo/getSupportFragmentManager$onPostMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16585
    new-instance v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$CustomActionCallback;

    invoke-direct {v1, v4}, Lo/onGetChildDrawingOrder$MediaBrowserCompat$CustomActionCallback;-><init>(Lo/getSupportFragmentManager$onPostMessage;)V

    check-cast v1, Lo/getRemoveDuration;

    invoke-virtual {v2, v1}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    .line 328
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    :cond_1b
    return-void

    :sswitch_19
    const-string v1, "line_management"

    .line 438
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 50000
    iget-object v1, v0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getMoveDuration;

    .line 439
    invoke-static {v1, v3}, Lo/getMoveDuration;->asBinder(Lo/getMoveDuration;Ljava/lang/String;)V

    return-void

    :sswitch_1a
    const-string v4, "rent_pay"

    .line 393
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 39197
    iget-object v2, v1, Lo/getFont;->postMessage:Ljava/lang/String;

    if-eqz v2, :cond_1c

    .line 40196
    iget-object v2, v1, Lo/getFont;->requestPostMessageChannel:Ljava/lang/String;

    if-nez v2, :cond_1d

    .line 40198
    :cond_1c
    iget-object v2, v1, Lo/getFont;->IPostMessageService:Ljava/lang/String;

    if-eqz v2, :cond_2e

    .line 41000
    :cond_1d
    iget-object v2, v0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getMoveDuration;

    .line 41197
    iget-object v4, v1, Lo/getFont;->postMessage:Ljava/lang/String;

    .line 42196
    iget-object v5, v1, Lo/getFont;->requestPostMessageChannel:Ljava/lang/String;

    .line 42198
    iget-object v1, v1, Lo/getFont;->IPostMessageService:Ljava/lang/String;

    .line 396
    invoke-static {v3, v13}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42493
    new-instance v6, Lo/onGetChildDrawingOrder$onConnected;

    new-instance v7, Lo/onDetach$cancel;

    invoke-direct {v7, v3, v4, v5, v1}, Lo/onDetach$cancel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lo/onGetChildDrawingOrder$onConnected;-><init>(Lo/onDetach$cancel;)V

    check-cast v6, Lo/getRemoveDuration;

    invoke-virtual {v2, v6}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    return-void

    :sswitch_1b
    const-string/jumbo v4, "unbilled"

    .line 335
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 19000
    :goto_5
    iget-object v2, v0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getMoveDuration;

    .line 336
    new-instance v4, Lo/getSupportFragmentManager$onPostMessage;

    .line 19179
    iget-object v9, v1, Lo/getFont;->onPostMessage:Ljava/lang/String;

    .line 19206
    iget-object v12, v1, Lo/getFont;->cancel:Ljava/lang/String;

    .line 19207
    iget-object v13, v1, Lo/getFont;->IPostMessageService$Stub$Proxy:Ljava/lang/String;

    .line 20202
    iget-object v14, v1, Lo/getFont;->ICustomTabsService$Stub:Ljava/lang/String;

    const-string/jumbo v10, "unbilled_details"

    move-object v8, v4

    move-object v11, v3

    .line 336
    invoke-direct/range {v8 .. v14}, Lo/getSupportFragmentManager$onPostMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20585
    new-instance v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$CustomActionCallback;

    invoke-direct {v1, v4}, Lo/onGetChildDrawingOrder$MediaBrowserCompat$CustomActionCallback;-><init>(Lo/getSupportFragmentManager$onPostMessage;)V

    check-cast v1, Lo/getRemoveDuration;

    invoke-virtual {v2, v1}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    return-void

    :sswitch_1c
    const-string v4, "card_manage_bs"

    .line 330
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 17179
    iget-object v1, v1, Lo/getFont;->onPostMessage:Ljava/lang/String;

    if-eqz v1, :cond_1e

    .line 18000
    iget-object v2, v0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getMoveDuration;

    .line 332
    new-instance v4, Lo/markFragmentsCreated$onMessageChannelReady;

    invoke-direct {v4, v1, v3}, Lo/markFragmentsCreated$onMessageChannelReady;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18589
    new-instance v1, Lo/onGetChildDrawingOrder$postMessage;

    invoke-direct {v1, v4}, Lo/onGetChildDrawingOrder$postMessage;-><init>(Lo/markFragmentsCreated$onMessageChannelReady;)V

    check-cast v1, Lo/getRemoveDuration;

    invoke-virtual {v2, v1}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    .line 333
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    :cond_1e
    return-void

    .line 297
    :sswitch_1d
    invoke-virtual {v2, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 6183
    :goto_6
    iget-object v9, v1, Lo/getFont;->onRelationshipValidationResult:Ljava/lang/String;

    .line 299
    move-object v1, v9

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_20

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1f

    goto :goto_7

    :cond_1f
    const/4 v5, 0x0

    goto :goto_8

    :cond_20
    :goto_7
    const/4 v5, 0x1

    :goto_8
    if-nez v5, :cond_2e

    invoke-static {v9}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    invoke-static {v9}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 7000
    :cond_21
    iget-object v1, v0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lo/getMoveDuration;

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 300
    invoke-static {v2, v15}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x5

    invoke-static/range {v7 .. v12}, Lo/getMoveDuration;->extraCallback(Lo/getMoveDuration;Ljava/lang/String;Ljava/lang/String;ZZI)V

    return-void

    :sswitch_1e
    const-string v4, "referral"

    .line 412
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 413
    sget-object v2, Lo/getShowText;->ICustomTabsCallback:Lo/getShowText;

    invoke-static {}, Lo/getShowText;->ICustomTabsCallback()Landroidx/lifecycle/LiveData;

    move-result-object v2

    move-object v4, v0

    check-cast v4, Lo/toLegacyStreamType;

    new-instance v5, Lo/getViewPosition$onMessageChannelReady;

    invoke-direct {v5, v0, v1, v3}, Lo/getViewPosition$onMessageChannelReady;-><init>(Lo/getViewPosition;Lo/getFont;Ljava/lang/String;)V

    check-cast v5, Lo/setPlaybackToRemote;

    invoke-virtual {v2, v4, v5}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    return-void

    :sswitch_1f
    const-string v4, "payment"

    .line 388
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 38179
    iget-object v1, v1, Lo/getFont;->onPostMessage:Ljava/lang/String;

    if-eqz v1, :cond_22

    .line 39000
    iget-object v2, v0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getMoveDuration;

    .line 390
    invoke-virtual {v2, v1, v3}, Lo/getMoveDuration;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    :cond_22
    return-void

    :sswitch_20
    const-string/jumbo v1, "stash_withdrawal"

    .line 455
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 50206
    iget-object v1, v0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getMoveDuration;

    .line 456
    new-instance v2, Lo/onDetach$IPostMessageService$Stub;

    invoke-direct {v2, v3, v11}, Lo/onDetach$IPostMessageService$Stub;-><init>(Ljava/lang/String;I)V

    const-string v3, "extraData"

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50207
    new-instance v3, Lo/onGetChildDrawingOrder$MediaBrowserCompat;

    invoke-direct {v3, v2}, Lo/onGetChildDrawingOrder$MediaBrowserCompat;-><init>(Lo/onDetach$IPostMessageService$Stub;)V

    check-cast v3, Lo/getRemoveDuration;

    invoke-virtual {v1, v3}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    return-void

    :sswitch_21
    const-string v4, "mosaic"

    .line 373
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 32000
    iget-object v2, v0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getMoveDuration;

    .line 32192
    iget-object v1, v1, Lo/getFont;->warmup:Ljava/lang/String;

    .line 374
    invoke-static {v3, v13}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32297
    sget-object v5, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    const-string v5, "mosaic_fragment"

    .line 33000
    invoke-static {v5, v14}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lo/setTrackTintMode;->getSessionToken:Lo/getNavigationIcon;

    sget-object v7, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v8, 0x2f

    aget-object v7, v7, v8

    invoke-virtual {v6, v7, v5}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 32298
    invoke-static {v3, v13}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33327
    new-instance v5, Lo/onGetChildDrawingOrder$isConnected;

    new-instance v6, Lo/recycleViewsFromEnd$onNavigationEvent;

    invoke-direct {v6, v3, v1, v4}, Lo/recycleViewsFromEnd$onNavigationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lo/onGetChildDrawingOrder$isConnected;-><init>(Lo/recycleViewsFromEnd$onNavigationEvent;)V

    check-cast v5, Lo/getRemoveDuration;

    invoke-virtual {v2, v5}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    return-void

    :sswitch_22
    const-string v1, "addcard"

    .line 385
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 386
    sget-object v1, Lo/setItemPrefetchEnabled;->onNavigationEvent:Lo/setItemPrefetchEnabled;

    move-object v2, v0

    check-cast v2, Landroidx/fragment/app/Fragment;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v4

    invoke-static {v4, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lo/detachViewInternal;

    new-instance v6, Lcom/dreamplug/fabrik/ui/nba/helper/Meta;

    invoke-direct {v6, v7, v7}, Lcom/dreamplug/fabrik/ui/nba/helper/Meta;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "add_card"

    invoke-direct {v5, v7, v6}, Lo/detachViewInternal;-><init>(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/nba/helper/Meta;)V

    invoke-static {v1, v2, v4, v5, v3}, Lo/setItemPrefetchEnabled;->ICustomTabsCallback(Lo/setItemPrefetchEnabled;Landroidx/fragment/app/Fragment;Lo/requestExtraBinder;Lo/detachViewInternal;Ljava/lang/String;)V

    return-void

    :sswitch_23
    const-string/jumbo v1, "your_reward"

    .line 347
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 24000
    iget-object v1, v0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getMoveDuration;

    .line 24222
    new-instance v2, Lo/onGetChildDrawingOrder$AudioAttributesImplBaseParcelizer;

    new-instance v4, Lo/onDetach$warmup;

    const/4 v5, 0x2

    invoke-direct {v4, v3, v5}, Lo/onDetach$warmup;-><init>(Ljava/lang/String;I)V

    invoke-direct {v2, v4}, Lo/onGetChildDrawingOrder$AudioAttributesImplBaseParcelizer;-><init>(Lo/onDetach$warmup;)V

    check-cast v2, Lo/getRemoveDuration;

    invoke-virtual {v1, v2}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    return-void

    :sswitch_24
    const-string v3, "digest"

    .line 468
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 50217
    iget-object v1, v1, Lo/getFont;->asBinder:Ljava/lang/String;

    if-eqz v1, :cond_24

    .line 470
    invoke-static {v1, v9}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, "digest_app_opens"

    .line 471
    invoke-static {v1}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 473
    :cond_23
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    :cond_24
    return-void

    :sswitch_25
    const-string v1, "cred_protect_or_rewards"

    .line 312
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 313
    sget-object v1, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    .line 11000
    sget-object v1, Lo/onDestroyOptionsMenu;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setActive;

    .line 11320
    iget-object v1, v1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 11321
    sget-object v2, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v1, v2, :cond_25

    goto :goto_9

    :cond_25
    move-object v1, v7

    .line 313
    :goto_9
    check-cast v1, Lo/getScrapOrHiddenOrCachedHolderForPosition;

    .line 314
    sget-object v2, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    .line 12000
    sget-object v2, Lo/onDestroyOptionsMenu;->onTransact:Lo/setTitleTextColor;

    sget-object v4, Lo/onDestroyOptionsMenu;->onPostMessage:[Lo/applyUserOverwrite;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_27

    .line 314
    instance-of v2, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v2, :cond_27

    .line 13000
    iget-object v2, v0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getMoveDuration;

    .line 315
    check-cast v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 13009
    iget-object v1, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 315
    check-cast v1, Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponse;

    if-eqz v1, :cond_26

    .line 13022
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponse;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    if-eqz v1, :cond_26

    .line 13072
    iget-object v3, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;->onNavigationEvent:Ljava/lang/String;

    if-eqz v3, :cond_26

    new-instance v4, Lo/removeItemDecoration;

    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;->ICustomTabsCallback:Ljava/lang/String;

    invoke-direct {v4, v3, v1}, Lo/removeItemDecoration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_26
    move-object v4, v7

    .line 13335
    :goto_a
    new-instance v1, Lo/onGetChildDrawingOrder$unsubscribe;

    new-instance v3, Lo/updateLayoutStateToFillEnd;

    const/16 v5, 0x12

    const-string/jumbo v6, "welcome_screen"

    invoke-direct {v3, v7, v4, v6, v5}, Lo/updateLayoutStateToFillEnd;-><init>(Ljava/lang/String;Lo/removeItemDecoration;Ljava/lang/String;I)V

    invoke-direct {v1, v3}, Lo/onGetChildDrawingOrder$unsubscribe;-><init>(Lo/updateLayoutStateToFillEnd;)V

    check-cast v1, Lo/getRemoveDuration;

    invoke-virtual {v2, v1}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    return-void

    .line 14000
    :cond_27
    iget-object v1, v0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getMoveDuration;

    .line 317
    invoke-static {v1, v3}, Lo/getMoveDuration;->ICustomTabsCallback(Lo/getMoveDuration;Ljava/lang/String;)V

    return-void

    :sswitch_26
    const-string v4, "link_card"

    .line 424
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 46179
    iget-object v2, v1, Lo/getFont;->onPostMessage:Ljava/lang/String;

    if-eqz v2, :cond_2e

    .line 47000
    iget-object v2, v0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lo/getMoveDuration;

    const/4 v10, 0x0

    .line 47179
    iget-object v11, v1, Lo/getFont;->onPostMessage:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x1a

    move-object v9, v3

    .line 426
    invoke-static/range {v8 .. v14}, Lo/getMoveDuration;->onPostMessage(Lo/getMoveDuration;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;Ljava/lang/String;ZZI)V

    return-void

    :sswitch_27
    const-string v4, "farm_with_machine"

    .line 343
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 21186
    iget-object v2, v1, Lo/getFont;->asInterface:Ljava/lang/String;

    if-eqz v2, :cond_28

    .line 344
    new-instance v7, Lo/removeItemDecoration;

    .line 21193
    iget-object v4, v1, Lo/getFont;->extraCommand:Ljava/lang/String;

    .line 344
    invoke-direct {v7, v2, v4}, Lo/removeItemDecoration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22185
    :cond_28
    iget-object v1, v1, Lo/getFont;->onTransact:Ljava/lang/String;

    if-eqz v1, :cond_29

    .line 23000
    iget-object v2, v0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getMoveDuration;

    .line 345
    invoke-virtual {v2, v1, v7, v3}, Lo/getMoveDuration;->ICustomTabsCallback(Ljava/lang/String;Lo/removeItemDecoration;Ljava/lang/String;)V

    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    :cond_29
    return-void

    :sswitch_28
    const-string/jumbo v4, "snake_game"

    .line 429
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 430
    new-instance v2, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "SOURCE"

    .line 431
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48179
    iget-object v1, v1, Lo/getFont;->onPostMessage:Ljava/lang/String;

    const-string v3, "event_id"

    .line 432
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v1

    if-eqz v1, :cond_2a

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    :cond_2a
    return-void

    :sswitch_29
    const-string v4, "leaderboard"

    .line 463
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 50213
    iget-object v1, v1, Lo/getFont;->onPostMessage:Ljava/lang/String;

    if-eqz v1, :cond_2b

    .line 50214
    iget-object v2, v0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getMoveDuration;

    .line 50215
    new-instance v4, Lo/onGetChildDrawingOrder$INotificationSideChannel$Default;

    new-instance v5, Lo/clearOnChildAttachStateChangeListeners$extraCallback;

    invoke-direct {v5, v1, v3}, Lo/clearOnChildAttachStateChangeListeners$extraCallback;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lo/onGetChildDrawingOrder$INotificationSideChannel$Default;-><init>(Lo/clearOnChildAttachStateChangeListeners$extraCallback;)V

    check-cast v4, Lo/getRemoveDuration;

    invoke-virtual {v2, v4}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    .line 466
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    :cond_2b
    return-void

    :sswitch_2a
    const-string v4, "collection"

    .line 376
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 34000
    iget-object v2, v0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getMoveDuration;

    .line 34192
    iget-object v1, v1, Lo/getFont;->warmup:Ljava/lang/String;

    .line 377
    invoke-static {v3, v13}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34317
    sget-object v5, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    const-string v5, "category_fragment"

    .line 35000
    invoke-static {v5, v14}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lo/setTrackTintMode;->getSessionToken:Lo/getNavigationIcon;

    sget-object v7, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v8, 0x2f

    aget-object v7, v7, v8

    invoke-virtual {v6, v7, v5}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 34318
    invoke-static {v3, v13}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35327
    new-instance v5, Lo/onGetChildDrawingOrder$isConnected;

    new-instance v6, Lo/recycleViewsFromEnd$onNavigationEvent;

    invoke-direct {v6, v3, v1, v4}, Lo/recycleViewsFromEnd$onNavigationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lo/onGetChildDrawingOrder$isConnected;-><init>(Lo/recycleViewsFromEnd$onNavigationEvent;)V

    check-cast v5, Lo/getRemoveDuration;

    invoke-virtual {v2, v5}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    return-void

    :sswitch_2b
    const-string v4, "bank_sms"

    .line 525
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 50254
    iget-object v2, v1, Lo/getFont;->IPostMessageService$Stub:Ljava/lang/String;

    if-eqz v2, :cond_2e

    .line 50255
    iget-object v2, v1, Lo/getFont;->ICustomTabsService$Stub$Proxy:Ljava/lang/String;

    if-eqz v2, :cond_2e

    .line 50256
    iget-object v2, v0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getMoveDuration;

    .line 50257
    iget-object v4, v1, Lo/getFont;->IPostMessageService$Stub:Ljava/lang/String;

    .line 50258
    iget-object v5, v1, Lo/getFont;->ICustomTabsService$Stub$Proxy:Ljava/lang/String;

    .line 50259
    iget-object v1, v1, Lo/getFont;->ICustomTabsService$Stub:Ljava/lang/String;

    const-string v6, "instrumentationId"

    .line 527
    invoke-static {v4, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50260
    new-instance v6, Lo/onGetChildDrawingOrder$getInterfaceDescriptor;

    new-instance v7, Lo/getSelectionModeForAccessibility$onMessageChannelReady;

    invoke-direct {v7, v4, v5, v1, v3}, Lo/getSelectionModeForAccessibility$onMessageChannelReady;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lo/onGetChildDrawingOrder$getInterfaceDescriptor;-><init>(Lo/getSelectionModeForAccessibility$onMessageChannelReady;)V

    check-cast v6, Lo/getRemoveDuration;

    invoke-virtual {v2, v6}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    return-void

    :sswitch_2c
    const-string/jumbo v1, "upi_setup"

    .line 367
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 30000
    iget-object v1, v0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getMoveDuration;

    .line 368
    invoke-static {v3, v13}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30238
    new-instance v2, Lo/onGetChildDrawingOrder$onServiceConnected;

    new-instance v4, Lo/onDetach$getDefaultImpl;

    invoke-direct {v4, v3}, Lo/onDetach$getDefaultImpl;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Lo/onGetChildDrawingOrder$onServiceConnected;-><init>(Lo/onDetach$getDefaultImpl;)V

    check-cast v2, Lo/getRemoveDuration;

    invoke-virtual {v1, v2}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    return-void

    :sswitch_2d
    const-string/jumbo v1, "secondary_phone"

    .line 435
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 49000
    iget-object v1, v0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getMoveDuration;

    .line 436
    new-instance v2, Lo/getRecycledView$onPostMessage;

    invoke-direct {v2, v3}, Lo/getRecycledView$onPostMessage;-><init>(Ljava/lang/String;)V

    const-string v3, "data"

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49409
    new-instance v3, Lo/onGetChildDrawingOrder$onResult;

    invoke-direct {v3, v2}, Lo/onGetChildDrawingOrder$onResult;-><init>(Lo/getRecycledView$onPostMessage;)V

    check-cast v3, Lo/getRemoveDuration;

    invoke-virtual {v1, v3}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    return-void

    :sswitch_2e
    const-string/jumbo v4, "verify_card"

    .line 399
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 43179
    iget-object v1, v1, Lo/getFont;->onPostMessage:Ljava/lang/String;

    if-eqz v1, :cond_2c

    .line 401
    sget-object v2, Lo/setItemPrefetchEnabled;->onNavigationEvent:Lo/setItemPrefetchEnabled;

    move-object v5, v0

    check-cast v5, Landroidx/fragment/app/Fragment;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v6

    invoke-static {v6, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Lo/detachViewInternal;

    new-instance v9, Lcom/dreamplug/fabrik/ui/nba/helper/Meta;

    invoke-direct {v9, v1, v7}, Lcom/dreamplug/fabrik/ui/nba/helper/Meta;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-direct {v8, v4, v9}, Lo/detachViewInternal;-><init>(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/nba/helper/Meta;)V

    invoke-static {v2, v5, v6, v8, v3}, Lo/setItemPrefetchEnabled;->ICustomTabsCallback(Lo/setItemPrefetchEnabled;Landroidx/fragment/app/Fragment;Lo/requestExtraBinder;Lo/detachViewInternal;Ljava/lang/String;)V

    .line 402
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    :cond_2c
    return-void

    :sswitch_2f
    const-string/jumbo v4, "spin_the_wheel"

    .line 510
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 50244
    iget-object v2, v1, Lo/getFont;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v2, :cond_2d

    .line 50245
    iget-object v4, v0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/getMoveDuration;

    .line 50246
    iget-object v1, v1, Lo/getFont;->ICustomTabsCallback$Stub:Ljava/lang/Boolean;

    .line 512
    invoke-virtual {v4, v2, v3, v1}, Lo/getMoveDuration;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 513
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    :cond_2d
    return-void

    :sswitch_30
    const-string v4, "invite_manage"

    .line 458
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 50209
    iget-object v1, v1, Lo/getFont;->onPostMessage:Ljava/lang/String;

    if-eqz v1, :cond_2e

    .line 50210
    iget-object v2, v0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getMoveDuration;

    const-string v4, "campaignId"

    .line 460
    invoke-static {v1, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50211
    new-instance v4, Lo/onGetChildDrawingOrder$cancelAll;

    new-instance v5, Lo/onActivityStarted$extraCallback;

    invoke-direct {v5, v3, v1}, Lo/onActivityStarted$extraCallback;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lo/onGetChildDrawingOrder$cancelAll;-><init>(Lo/onActivityStarted$extraCallback;)V

    check-cast v4, Lo/getRemoveDuration;

    invoke-virtual {v2, v4}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    .line 461
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    :cond_2e
    :goto_b
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e8fe0a5 -> :sswitch_30
        -0x7c7cf1b0 -> :sswitch_2f
        -0x7427f0ea -> :sswitch_2e
        -0x72c9d51d -> :sswitch_2d
        -0x6f26b7d4 -> :sswitch_2c
        -0x6eca8b2a -> :sswitch_2b
        -0x67ca5162 -> :sswitch_2a
        -0x65b09883 -> :sswitch_29
        -0x63493c6f -> :sswitch_28
        -0x621270c9 -> :sswitch_27
        -0x60d88fcb -> :sswitch_26
        -0x59519137 -> :sswitch_25
        -0x4f63623c -> :sswitch_24
        -0x44c37345 -> :sswitch_23
        -0x446f44cf -> :sswitch_22
        -0x3fadd376 -> :sswitch_21
        -0x3a3fdd41 -> :sswitch_20
        -0x2ee3cdfa -> :sswitch_1f
        -0x2b118463 -> :sswitch_1e
        -0x2ad8d203 -> :sswitch_1d
        -0x261f8104 -> :sswitch_1c
        -0x1df3bd41 -> :sswitch_1b
        -0x1ca0095e -> :sswitch_1a
        -0x187fa292 -> :sswitch_19
        -0x7a62d87 -> :sswitch_18
        -0x33c69a4 -> :sswitch_17
        0x1cb54 -> :sswitch_16
        0x2fd836 -> :sswitch_15
        0x32af97 -> :sswitch_14
        0xd6408de -> :sswitch_13
        0x196fe699 -> :sswitch_12
        0x1de3f706 -> :sswitch_11
        0x2af8570b -> :sswitch_10
        0x38a73d12 -> :sswitch_f
        0x39afa880 -> :sswitch_e
        0x3ba6e36e -> :sswitch_d
        0x3c78d69c -> :sswitch_c
        0x4321acc2 -> :sswitch_b
        0x46ebc796 -> :sswitch_a
        0x4c2363a8 -> :sswitch_9
        0x4df7d18a -> :sswitch_8
        0x57c75160 -> :sswitch_7
        0x5b4a92f2 -> :sswitch_6
        0x5fcb0520 -> :sswitch_5
        0x66220dec -> :sswitch_4
        0x6c64cb2e -> :sswitch_3
        0x6d8b37e7 -> :sswitch_2
        0x7102adb7 -> :sswitch_1
        0x77933c31 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final synthetic onMessageChannelReady(Lo/getViewPosition;Lo/getFont;)V
    .locals 11

    .line 50919
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 51397
    sget-object v0, Lo/setTrackTintMode;->onResult:Lo/setTitleTextColor;

    sget-object v1, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v2, 0x41

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50919
    sget-object v0, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 51398
    sget-object v0, Lo/isInLayout;->onConnectionSuspended:Lo/isAdded;

    sget-object v1, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v3, 0x45

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51399
    iget-object p0, p0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/getMoveDuration;

    const-string/jumbo p1, "welcome_screen"

    .line 50920
    invoke-static {p0, p1}, Lo/getMoveDuration;->ICustomTabsCallback(Lo/getMoveDuration;Ljava/lang/String;)V

    return-void

    .line 50923
    :cond_0
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 51400
    sget-object v0, Lo/setTrackTintMode;->onResult:Lo/setTitleTextColor;

    sget-object v1, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v1, v1, v2

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 51401
    iget-object v0, p0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getMoveDuration;

    .line 51402
    iget-object v1, v0, Lo/getMoveDuration;->onPostMessage:Ljava/util/List;

    if-nez v1, :cond_1

    .line 51403
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    iput-object v1, v0, Lo/getMoveDuration;->onPostMessage:Ljava/util/List;

    .line 51406
    :cond_1
    iget-boolean v0, p1, Lo/getFont;->ICustomTabsService:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 51407
    iget-object v0, p0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getMoveDuration;

    .line 51408
    iget-object v3, p0, Lo/getViewPosition;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/onDetach$RemoteActionCompatParcelizer;

    if-eqz v3, :cond_2

    .line 51409
    iget-object v3, v3, Lo/onDetach$RemoteActionCompatParcelizer;->extraCallback:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v3, v1

    :goto_0
    const/4 v4, 0x6

    .line 50928
    invoke-static {v0, v3, v2, v2, v4}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    .line 51410
    :cond_3
    iget-object v0, p1, Lo/getFont;->asBinder:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, "deeplink"

    .line 51411
    :cond_4
    iget-object v3, p1, Lo/getFont;->cancelAll:Ljava/lang/String;

    .line 51412
    iget-object v4, p1, Lo/getFont;->notify:Ljava/lang/String;

    .line 50935
    move-object v5, v3

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x1

    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_5

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v5, 0x1

    :goto_2
    if-eqz v5, :cond_b

    .line 51413
    iget-object v5, p1, Lo/getFont;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz v5, :cond_8

    if-eqz v5, :cond_7

    .line 50937
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v7, "(this as java.lang.String).toLowerCase()"

    invoke-static {v5, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    move-object v5, v1

    .line 50938
    :goto_3
    invoke-static {}, Lo/setTrackResource$onPostMessage;->values()[Lo/setTrackResource$onPostMessage;

    move-result-object v7

    .line 51395
    array-length v8, v7

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v8, :cond_a

    aget-object v10, v7, v9

    .line 51414
    iget-object v10, v10, Lo/setTrackResource$onPostMessage;->ICustomTabsService:Ljava/lang/String;

    .line 50938
    invoke-static {v10, v5}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v7, 0x1

    goto :goto_5

    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_a
    const/4 v7, 0x0

    :goto_5
    if-eqz v7, :cond_b

    move-object v3, v5

    .line 50943
    :cond_b
    move-object v5, v3

    check-cast v5, Ljava/lang/CharSequence;

    if-eqz v5, :cond_d

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_c

    goto :goto_6

    :cond_c
    const/4 v5, 0x0

    goto :goto_7

    :cond_d
    :goto_6
    const/4 v5, 0x1

    :goto_7
    if-nez v5, :cond_11

    if-nez v3, :cond_e

    goto/16 :goto_8

    .line 50945
    :cond_e
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    const-string/jumbo v7, "source"

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_8

    :sswitch_0
    const-string v5, "mutual_fund"

    .line 50968
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 51455
    iget-object v3, p0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/getMoveDuration;

    .line 50968
    invoke-static {v0, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51456
    sget-object v0, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback$asBinder;->extraCallback:Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback$asBinder;

    check-cast v0, Lo/getRemoveDuration;

    invoke-virtual {v3, v0}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    goto/16 :goto_8

    :sswitch_1
    const-string/jumbo v5, "unbilled_farm"

    .line 50962
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 51439
    iget-object v3, p0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/getMoveDuration;

    .line 50963
    invoke-static {v0, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51440
    sget-object v5, Lo/setChangeDuration;->asInterface:Lo/setChangeDuration;

    invoke-static {v5, v0}, Lo/setChangeDuration;->ICustomTabsCallback(Lo/setChangeDuration;Ljava/lang/String;)V

    .line 51441
    sget-object v0, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback$ICustomTabsCallback;->ICustomTabsCallback:Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback$ICustomTabsCallback;

    check-cast v0, Lo/getRemoveDuration;

    invoke-virtual {v3, v0}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    goto/16 :goto_8

    :sswitch_2
    const-string v5, "benefits_farm"

    .line 50950
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 51428
    iget-object v3, p0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/getMoveDuration;

    .line 50951
    invoke-static {v0, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51429
    sget-object v5, Lo/setChangeDuration;->asInterface:Lo/setChangeDuration;

    invoke-static {v5, v0}, Lo/setChangeDuration;->ICustomTabsCallback(Lo/setChangeDuration;Ljava/lang/String;)V

    .line 51430
    sget-object v0, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback$extraCallback;->onNavigationEvent:Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback$extraCallback;

    check-cast v0, Lo/getRemoveDuration;

    invoke-virtual {v3, v0}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    goto/16 :goto_8

    :sswitch_3
    const-string v5, "max_farm"

    .line 50954
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 51432
    iget-object v3, p0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/getMoveDuration;

    .line 50955
    invoke-static {v0, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51433
    sget-object v0, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback$onNavigationEvent;->extraCallback:Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback$onNavigationEvent;

    check-cast v0, Lo/getRemoveDuration;

    invoke-virtual {v3, v0}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    goto/16 :goto_8

    :sswitch_4
    const-string v0, "home"

    .line 50946
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 51415
    iget-object v0, p0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getMoveDuration;

    .line 51416
    sget-object v3, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback$ICustomTabsCallback$Stub;

    check-cast v3, Lo/getRemoveDuration;

    invoke-virtual {v0, v3}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    goto/16 :goto_8

    :sswitch_5
    const-string v5, "line_management"

    .line 50967
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 51451
    iget-object v3, p0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/getMoveDuration;

    .line 50967
    invoke-static {v0, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51452
    sget-object v5, Lo/setChangeDuration;->asInterface:Lo/setChangeDuration;

    invoke-static {v5, v0}, Lo/setChangeDuration;->ICustomTabsCallback(Lo/setChangeDuration;Ljava/lang/String;)V

    .line 51453
    new-instance v5, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback$onTransact;

    new-instance v7, Lo/onDetach$getDefaultImpl;

    invoke-direct {v7, v0}, Lo/onDetach$getDefaultImpl;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v7}, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback$onTransact;-><init>(Lo/onDetach$getDefaultImpl;)V

    check-cast v5, Lo/getRemoveDuration;

    invoke-virtual {v3, v5}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    goto/16 :goto_8

    :sswitch_6
    const-string/jumbo v5, "web_farm"

    .line 50975
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 51469
    iget-object v3, p0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/getMoveDuration;

    .line 50976
    invoke-static {v0, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51470
    sget-object v0, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback$ICustomTabsService;->onNavigationEvent:Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback$ICustomTabsService;

    check-cast v0, Lo/getRemoveDuration;

    invoke-virtual {v3, v0}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    goto/16 :goto_8

    :sswitch_7
    const-string v5, "control_manage"

    .line 50958
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 51435
    iget-object v3, p0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/getMoveDuration;

    .line 50959
    invoke-static {v0, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51436
    sget-object v5, Lo/setChangeDuration;->asInterface:Lo/setChangeDuration;

    invoke-static {v5, v0}, Lo/setChangeDuration;->ICustomTabsCallback(Lo/setChangeDuration;Ljava/lang/String;)V

    .line 51437
    sget-object v0, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback$onPostMessage;->onNavigationEvent:Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback$onPostMessage;

    check-cast v0, Lo/getRemoveDuration;

    invoke-virtual {v3, v0}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    goto/16 :goto_8

    :sswitch_8
    const-string/jumbo v5, "win_farm"

    .line 50969
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 51458
    iget-object v3, p0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/getMoveDuration;

    .line 51459
    iget-object v5, p1, Lo/getFont;->asInterface:Ljava/lang/String;

    .line 50970
    invoke-virtual {v3, v0, v5}, Lo/getMoveDuration;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :sswitch_9
    const-string/jumbo v5, "track_bb_details"

    .line 50966
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 51443
    iget-object v3, p0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/getMoveDuration;

    .line 50966
    invoke-static {v0, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51444
    sget-object v5, Lo/setChangeDuration;->asInterface:Lo/setChangeDuration;

    invoke-static {v0, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51447
    new-instance v7, Lo/setRemoveDuration$onMessageChannelReady$onNavigationEvent;

    invoke-direct {v7, v0}, Lo/setRemoveDuration$onMessageChannelReady$onNavigationEvent;-><init>(Ljava/lang/String;)V

    check-cast v7, Lo/setRemoveDuration;

    .line 51449
    new-instance v8, Lo/getThumbTintList;

    invoke-direct {v8, v7}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v8}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 51445
    new-instance v5, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback$asInterface;

    invoke-direct {v5, v0}, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback$asInterface;-><init>(Ljava/lang/String;)V

    check-cast v5, Lo/getRemoveDuration;

    invoke-virtual {v3, v5}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    goto :goto_8

    :sswitch_a
    const-string v5, "control_farm"

    .line 50947
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 51418
    iget-object v3, p0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/getMoveDuration;

    .line 51420
    iget-object v5, p1, Lo/getFont;->newSession:Ljava/lang/String;

    .line 50948
    invoke-static {v0, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51421
    sget-object v8, Lo/setChangeDuration;->asInterface:Lo/setChangeDuration;

    invoke-static {v0, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51424
    new-instance v7, Lo/setRemoveDuration$extraCallback$ICustomTabsCallback;

    invoke-direct {v7, v0, v5}, Lo/setRemoveDuration$extraCallback$ICustomTabsCallback;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v7, Lo/setRemoveDuration;

    .line 51426
    new-instance v0, Lo/getThumbTintList;

    invoke-direct {v0, v7}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v8, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 51422
    new-instance v0, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback$onMessageChannelReady;

    invoke-direct {v0}, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback$onMessageChannelReady;-><init>()V

    check-cast v0, Lo/getRemoveDuration;

    invoke-virtual {v3, v0}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    goto :goto_8

    :sswitch_b
    const-string v5, "discover_farm"

    .line 50972
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 51460
    iget-object v3, p0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/getMoveDuration;

    .line 51461
    iget-object v5, p1, Lo/getFont;->asInterface:Ljava/lang/String;

    .line 50973
    invoke-static {v0, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51462
    sget-object v8, Lo/setChangeDuration;->asInterface:Lo/setChangeDuration;

    invoke-static {v0, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51465
    new-instance v7, Lo/setRemoveDuration$onNavigationEvent$onMessageChannelReady;

    invoke-direct {v7, v5, v0}, Lo/setRemoveDuration$onNavigationEvent$onMessageChannelReady;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v7, Lo/setRemoveDuration;

    .line 51467
    new-instance v0, Lo/getThumbTintList;

    invoke-direct {v0, v7}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v8, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 51463
    sget-object v0, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback$onRelationshipValidationResult;->onNavigationEvent:Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback$onRelationshipValidationResult;

    check-cast v0, Lo/getRemoveDuration;

    invoke-virtual {v3, v0}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    :cond_f
    :goto_8
    if-eqz v4, :cond_12

    .line 50980
    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_10

    const/4 v2, 0x1

    :cond_10
    if-ne v2, v6, :cond_12

    .line 50981
    invoke-direct {p0, p1}, Lo/getViewPosition;->onMessageChannelReady(Lo/getFont;)V

    goto :goto_9

    .line 50986
    :cond_11
    invoke-direct {p0, p1}, Lo/getViewPosition;->onMessageChannelReady(Lo/getFont;)V

    .line 51472
    :cond_12
    :goto_9
    iget-object p0, p0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/getMoveDuration;

    .line 51473
    iget-object p1, p0, Lo/getMoveDuration;->onPostMessage:Ljava/util/List;

    if-eqz p1, :cond_13

    .line 51474
    iput-object v1, p0, Lo/getMoveDuration;->onPostMessage:Ljava/util/List;

    .line 51475
    new-instance v0, Lo/getRemoveDuration$onMessageChannelReady;

    invoke-direct {v0, p1}, Lo/getRemoveDuration$onMessageChannelReady;-><init>(Ljava/util/List;)V

    check-cast v0, Lo/getRemoveDuration;

    invoke-virtual {p0, v0}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    :cond_13
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f925d34 -> :sswitch_b
        -0x60c30228 -> :sswitch_a
        -0x4ca66349 -> :sswitch_9
        -0x42c63147 -> :sswitch_8
        -0x301b1d79 -> :sswitch_7
        -0x2ad945bf -> :sswitch_6
        -0x187fa292 -> :sswitch_5
        0x30f4df -> :sswitch_4
        0x184caa31 -> :sswitch_3
        0x231787d9 -> :sswitch_2
        0x70a52db6 -> :sswitch_1
        0x7ccf5010 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final synthetic onNavigationEvent(Lo/getViewPosition;Lo/getFont;)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 50888
    iget-object v1, p1, Lo/getFont;->cancelAll:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 50363
    :goto_0
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_7

    if-eqz p1, :cond_4

    .line 50889
    iget-object v2, p1, Lo/getFont;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz v2, :cond_4

    if-eqz v2, :cond_3

    .line 50365
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v5, "(this as java.lang.String).toLowerCase()"

    invoke-static {v2, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    move-object v2, v0

    .line 50366
    :goto_3
    invoke-static {}, Lo/setTrackResource$onPostMessage;->values()[Lo/setTrackResource$onPostMessage;

    move-result-object v5

    .line 50886
    array-length v6, v5

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v6, :cond_6

    aget-object v8, v5, v7

    .line 50890
    iget-object v8, v8, Lo/setTrackResource$onPostMessage;->ICustomTabsService:Ljava/lang/String;

    .line 50366
    invoke-static {v8, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v5, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    :goto_5
    if-eqz v5, :cond_7

    move-object v1, v2

    :cond_7
    const-string v2, "money"

    const-string v5, "lifestyle"

    const-string v6, "cards"

    const-string v7, "home"

    if-eqz v1, :cond_11

    .line 50372
    sget-object p1, Lo/setTrackResource;->ICustomTabsCallback:Lo/setTrackResource;

    invoke-static {v1}, Lo/setTrackResource;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 50375
    sget-object v1, Lo/onGetChildDrawingOrder$onItemLoaded$extraCallback;->onNavigationEvent:Lo/onGetChildDrawingOrder$onItemLoaded$extraCallback;

    invoke-static {p1, v7}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 50892
    iget-object v1, p0, Lo/getViewPosition;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/onDetach$RemoteActionCompatParcelizer;

    if-eqz v1, :cond_8

    .line 50893
    iget-object v1, v1, Lo/onDetach$RemoteActionCompatParcelizer;->extraCallback:Ljava/lang/String;

    goto :goto_6

    :cond_8
    move-object v1, v0

    .line 50375
    :goto_6
    invoke-static {v1, v7}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    :cond_9
    invoke-static {p1, v6}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 50894
    iget-object v1, p0, Lo/getViewPosition;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/onDetach$RemoteActionCompatParcelizer;

    if-eqz v1, :cond_a

    .line 50895
    iget-object v1, v1, Lo/onDetach$RemoteActionCompatParcelizer;->extraCallback:Ljava/lang/String;

    goto :goto_7

    :cond_a
    move-object v1, v0

    .line 50375
    :goto_7
    invoke-static {v1, v6}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    :cond_b
    invoke-static {p1, v5}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 50896
    iget-object v1, p0, Lo/getViewPosition;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/onDetach$RemoteActionCompatParcelizer;

    if-eqz v1, :cond_c

    .line 50897
    iget-object v1, v1, Lo/onDetach$RemoteActionCompatParcelizer;->extraCallback:Ljava/lang/String;

    goto :goto_8

    :cond_c
    move-object v1, v0

    .line 50375
    :goto_8
    invoke-static {v1, v5}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    :cond_d
    invoke-static {p1, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 50898
    iget-object p0, p0, Lo/getViewPosition;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/onDetach$RemoteActionCompatParcelizer;

    if-eqz p0, :cond_e

    .line 50899
    iget-object v0, p0, Lo/onDetach$RemoteActionCompatParcelizer;->extraCallback:Ljava/lang/String;

    .line 50375
    :cond_e
    invoke-static {v0, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    :cond_f
    return v4

    :cond_10
    return v3

    :cond_11
    if-eqz p1, :cond_12

    .line 50900
    iget-object v1, p1, Lo/getFont;->onNavigationEvent:Ljava/lang/String;

    goto :goto_9

    :cond_12
    move-object v1, v0

    :goto_9
    if-eqz v1, :cond_1e

    .line 50901
    iget-object v1, p1, Lo/getFont;->onNavigationEvent:Ljava/lang/String;

    const-string v8, "null"

    .line 50405
    invoke-static {v8, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 50902
    iget-object v1, p1, Lo/getFont;->onNavigationEvent:Ljava/lang/String;

    .line 50405
    invoke-static {v1, v7}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 50903
    iget-object v1, p1, Lo/getFont;->onNavigationEvent:Ljava/lang/String;

    const-string v8, "profile"

    .line 50405
    invoke-static {v1, v8}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 50904
    :cond_13
    iget-object v1, p0, Lo/getViewPosition;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/onDetach$RemoteActionCompatParcelizer;

    if-eqz v1, :cond_14

    .line 50905
    iget-object v1, v1, Lo/onDetach$RemoteActionCompatParcelizer;->extraCallback:Ljava/lang/String;

    goto :goto_a

    :cond_14
    move-object v1, v0

    .line 50390
    :goto_a
    sget-object v8, Lo/onGetChildDrawingOrder$onItemLoaded$extraCallback;->onNavigationEvent:Lo/onGetChildDrawingOrder$onItemLoaded$extraCallback;

    invoke-static {v1, v7}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 50907
    :cond_15
    iget-object v1, p1, Lo/getFont;->onNavigationEvent:Ljava/lang/String;

    .line 50390
    invoke-static {v1, v6}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 50908
    iget-object v1, p1, Lo/getFont;->onNavigationEvent:Ljava/lang/String;

    const-string v7, "control"

    .line 50390
    invoke-static {v1, v7}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 50909
    :cond_16
    iget-object v1, p0, Lo/getViewPosition;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/onDetach$RemoteActionCompatParcelizer;

    if-eqz v1, :cond_17

    .line 50910
    iget-object v1, v1, Lo/onDetach$RemoteActionCompatParcelizer;->extraCallback:Ljava/lang/String;

    goto :goto_b

    :cond_17
    move-object v1, v0

    .line 50390
    :goto_b
    invoke-static {v1, v6}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 50911
    :cond_18
    iget-object v1, p1, Lo/getFont;->onNavigationEvent:Ljava/lang/String;

    .line 50390
    invoke-static {v1, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 50912
    iget-object v1, p0, Lo/getViewPosition;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/onDetach$RemoteActionCompatParcelizer;

    if-eqz v1, :cond_19

    .line 50913
    iget-object v1, v1, Lo/onDetach$RemoteActionCompatParcelizer;->extraCallback:Ljava/lang/String;

    goto :goto_c

    :cond_19
    move-object v1, v0

    .line 50390
    :goto_c
    invoke-static {v1, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 50914
    :cond_1a
    iget-object v1, p1, Lo/getFont;->onNavigationEvent:Ljava/lang/String;

    const-string/jumbo v2, "rewards"

    .line 50390
    invoke-static {v1, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 50915
    iget-object p1, p1, Lo/getFont;->onNavigationEvent:Ljava/lang/String;

    .line 50390
    invoke-static {p1, v5}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 50916
    :cond_1b
    iget-object p0, p0, Lo/getViewPosition;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/onDetach$RemoteActionCompatParcelizer;

    if-eqz p0, :cond_1c

    .line 50917
    iget-object v0, p0, Lo/onDetach$RemoteActionCompatParcelizer;->extraCallback:Ljava/lang/String;

    .line 50390
    :cond_1c
    invoke-static {v0, v5}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    :cond_1d
    return v4

    :cond_1e
    return v3
.end method

.method public static final synthetic onPostMessage(Lo/getViewPosition;Ljava/lang/Boolean;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lo/getViewPosition;->asInterface:Ljava/lang/Boolean;

    return-void
.end method

.method public static final synthetic onPostMessage(Lo/getViewPosition;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2

    if-eqz p1, :cond_4

    .line 50342
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    const v1, 0x7f0b0862

    invoke-virtual {v0, v1}, Lo/requestExtraBinder;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 50343
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50344
    invoke-static {p2, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50347
    instance-of p1, v0, Lo/getVerticalMargins;

    if-eqz p1, :cond_4

    .line 50348
    invoke-virtual {p0}, Lo/getViewPosition;->ICustomTabsCallback()Z

    return-void

    .line 50351
    :cond_0
    instance-of p1, v0, Lo/getVerticalMargins;

    if-nez p1, :cond_1

    instance-of v1, v0, Lo/setSubtitleTextAppearance;

    if-eqz v1, :cond_3

    .line 50352
    :cond_1
    instance-of v1, v0, Lo/setSubtitleTextAppearance;

    if-eqz v1, :cond_2

    check-cast v0, Lo/setSubtitleTextAppearance;

    invoke-interface {v0}, Lo/setSubtitleTextAppearance;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    if-nez p1, :cond_4

    .line 50353
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 50359
    :cond_3
    iget-object p0, p0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/getMoveDuration;

    .line 50360
    sget-object p1, Lo/onGetChildDrawingOrder$getExtras;->onPostMessage:Lo/onGetChildDrawingOrder$getExtras;

    check-cast p1, Lo/getRemoveDuration;

    invoke-virtual {p0, p1}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Z
    .locals 2

    .line 665
    iget-object v0, p0, Lo/getViewPosition;->onMessageChannelReady:Lo/getAddDuration;

    if-nez v0, :cond_0

    const-string v1, "navigationManager"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lo/getAddDuration;->ICustomTabsCallback()Z

    move-result v0

    return v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 79
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 1000
    iget-object p1, p0, Lo/getViewPosition;->onPostMessage:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/isViewInvalid;

    .line 1012
    iget-object p1, p1, Lo/isViewInvalid;->onMessageChannelReady:Lo/MediaControllerCompatApi24$TransportControls;

    .line 80
    move-object v0, p0

    check-cast v0, Lo/toLegacyStreamType;

    new-instance v1, Lo/getViewPosition$onRelationshipValidationResult;

    invoke-direct {v1, p0}, Lo/getViewPosition$onRelationshipValidationResult;-><init>(Lo/getViewPosition;)V

    check-cast v1, Lo/setPlaybackToRemote;

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 84
    sget-object p1, Lo/setSplitTrack;->ICustomTabsService:Lo/setSplitTrack;

    .line 2000
    sget-object p1, Lo/setSplitTrack;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setActive;

    .line 84
    new-instance v1, Lo/getViewPosition$asInterface;

    invoke-direct {v1, p0}, Lo/getViewPosition$asInterface;-><init>(Lo/getViewPosition;)V

    check-cast v1, Lo/setPlaybackToRemote;

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 90
    new-instance p1, Lo/getAddDuration;

    invoke-direct {p1, p0}, Lo/getAddDuration;-><init>(Lo/getViewPosition;)V

    iput-object p1, p0, Lo/getViewPosition;->onMessageChannelReady:Lo/getAddDuration;

    .line 91
    sget-object p1, Lo/getFloat;->ICustomTabsCallback$Stub:Lo/getFloat;

    new-instance v1, Lo/getViewPosition$asBinder;

    invoke-direct {v1, p0}, Lo/getViewPosition$asBinder;-><init>(Lo/getViewPosition;)V

    check-cast v1, Lo/setPlaybackToRemote;

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 113
    sget-object p1, Lo/getNonResourceString;->ICustomTabsCallback$Stub:Lo/getNonResourceString;

    new-instance v1, Lo/getViewPosition$newSession;

    invoke-direct {v1, p0}, Lo/getViewPosition$newSession;-><init>(Lo/getViewPosition;)V

    check-cast v1, Lo/setPlaybackToRemote;

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 124
    sget-object p1, Lo/clear;->ICustomTabsCallback$Stub:Lo/clear;

    new-instance v1, Lo/getViewPosition$ICustomTabsService;

    invoke-direct {v1, p0}, Lo/getViewPosition$ICustomTabsService;-><init>(Lo/getViewPosition;)V

    check-cast v1, Lo/setPlaybackToRemote;

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 3000
    iget-object p1, p0, Lo/getViewPosition;->asBinder:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/GridLayoutManager;

    .line 3011
    iget-object p1, p1, Lo/GridLayoutManager;->onMessageChannelReady:Lo/MediaControllerCompatApi24$TransportControls;

    .line 135
    new-instance v1, Lo/getViewPosition$warmup;

    invoke-direct {v1, p0}, Lo/getViewPosition$warmup;-><init>(Lo/getViewPosition;)V

    check-cast v1, Lo/setPlaybackToRemote;

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50275
    iget-object p3, p0, Lo/getViewPosition;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/onDetach$RemoteActionCompatParcelizer;

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 50276
    iget-object p3, p3, Lo/onDetach$RemoteActionCompatParcelizer;->extraCallback:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p3, v0

    .line 551
    :goto_0
    sget-object v1, Lo/onGetChildDrawingOrder$onItemLoaded$extraCallback;->onNavigationEvent:Lo/onGetChildDrawingOrder$onItemLoaded$extraCallback;

    const-string v1, "home"

    invoke-static {p3, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 552
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->postponeEnterTransition()V

    .line 555
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v2

    const-string v4, "childFragmentManager"

    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50278
    iget-object v4, v2, Lo/requestExtraBinder;->onMessageChannelReady:Ljava/util/ArrayList;

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    iget-object v2, v2, Lo/requestExtraBinder;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_7

    if-nez p3, :cond_3

    goto :goto_3

    .line 558
    :cond_3
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string v1, "money"

    .line 559
    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :sswitch_1
    const-string v1, "cards"

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :sswitch_2
    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :sswitch_3
    const-string v1, "lifestyle"

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 563
    :goto_2
    sget-object v0, Lo/getViewLayoutPosition;->onPostMessage:Lo/getViewLayoutPosition$ICustomTabsCallback;

    const-string/jumbo v0, "tag"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50279
    new-instance v0, Lo/getViewLayoutPosition;

    invoke-direct {v0}, Lo/getViewLayoutPosition;-><init>()V

    check-cast v0, Landroidx/fragment/app/Fragment;

    new-instance v1, Lo/onDetach$RemoteActionCompatParcelizer;

    invoke-direct {v1, p3}, Lo/onDetach$RemoteActionCompatParcelizer;-><init>(Ljava/lang/String;)V

    check-cast v1, Landroid/os/Parcelable;

    const-string v2, "extra"

    .line 50280
    invoke-static {v0, v1, v2}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 568
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    .line 50283
    new-instance v2, Lo/binderDied;

    invoke-direct {v2, v1}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    const v1, 0x7f0b0862

    .line 50284
    invoke-virtual {v2, v1, v0, p3, v3}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 50286
    iget-boolean v0, v2, Lo/MediaControllerCompat$MediaControllerImplApi23;->onRelationshipValidationResult:Z

    if-eqz v0, :cond_4

    .line 50290
    iput-boolean v3, v2, Lo/MediaControllerCompat$MediaControllerImplApi23;->asBinder:Z

    .line 50291
    iput-object p3, v2, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 572
    invoke-virtual {v2}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    goto :goto_4

    .line 50287
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 565
    :cond_5
    :goto_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "unknownTab tag received "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50281
    iget-object p3, p0, Lo/getViewPosition;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/onDetach$RemoteActionCompatParcelizer;

    if-eqz p3, :cond_6

    .line 50282
    iget-object v0, p3, Lo/onDetach$RemoteActionCompatParcelizer;->extraCallback:Ljava/lang/String;

    .line 565
    :cond_6
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 50293
    :cond_7
    :goto_4
    iget-object v0, p0, Lo/getViewPosition;->ICustomTabsCallback$Stub:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/hasObservers;

    .line 575
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v1, "tab_"

    invoke-virtual {v1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string p3, "bottomBarTag"

    invoke-static {v10, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50294
    iget-object v6, v0, Lo/hasObservers;->ICustomTabsCallback:Lo/unregisterAdapterDataObserver;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x7

    invoke-static/range {v6 .. v11}, Lo/unregisterAdapterDataObserver;->onNavigationEvent(Lo/unregisterAdapterDataObserver;ZFFLjava/lang/String;I)Lo/unregisterAdapterDataObserver;

    move-result-object p3

    const-string/jumbo v1, "value"

    invoke-static {p3, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50296
    iput-object p3, v0, Lo/hasObservers;->ICustomTabsCallback:Lo/unregisterAdapterDataObserver;

    .line 50297
    iget-object v0, v0, Lo/hasObservers;->onMessageChannelReady:Lo/setActive;

    invoke-virtual {v0, p3}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    const p3, 0x7f0e00da

    .line 576
    invoke-virtual {p1, p3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x112593cb -> :sswitch_3
        0x30f4df -> :sswitch_2
        0x5a0e763 -> :sswitch_1
        0x63420c0 -> :sswitch_0
    .end sparse-switch
.end method

.method public final synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 2

    .line 681
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    const v1, 0x7f0b0862

    invoke-virtual {v0, v1}, Lo/requestExtraBinder;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 682
    instance-of v1, v0, Lo/removeItemAt;

    if-eqz v1, :cond_0

    .line 683
    check-cast v0, Lo/removeItemAt;

    invoke-interface {v0}, Lo/removeItemAt;->onMessageChannelReady()V

    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 580
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 582
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object p2

    new-instance v0, Lo/getViewPosition$getInterfaceDescriptor;

    invoke-direct {v0, p0}, Lo/getViewPosition$getInterfaceDescriptor;-><init>(Lo/getViewPosition;)V

    check-cast v0, Lo/requestExtraBinder$onPostMessage;

    .line 50299
    iget-object v1, p2, Lo/requestExtraBinder;->asInterface:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 50300
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p2, Lo/requestExtraBinder;->asInterface:Ljava/util/ArrayList;

    .line 50302
    :cond_0
    iget-object p2, p2, Lo/requestExtraBinder;->asInterface:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 586
    invoke-direct {p0}, Lo/getViewPosition;->extraCallback()V

    .line 50304
    iget-object p2, p0, Lo/getViewPosition;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/onDetach$RemoteActionCompatParcelizer;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 50305
    iget-object p2, p2, Lo/onDetach$RemoteActionCompatParcelizer;->extraCallback:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object p2, v0

    .line 587
    :goto_0
    sget-object v1, Lo/onGetChildDrawingOrder$onItemLoaded$extraCallback;->onNavigationEvent:Lo/onGetChildDrawingOrder$onItemLoaded$extraCallback;

    const-string v1, "home"

    invoke-static {p2, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_a

    .line 588
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lo/getMediaDescription;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p2

    goto :goto_1

    :cond_2
    move-object p2, v0

    :goto_1
    if-eqz p2, :cond_9

    .line 591
    sget-object v1, Lo/getNonResourceString;->ICustomTabsCallback$Stub:Lo/getNonResourceString;

    .line 50307
    iget-object v1, v1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 50308
    sget-object v2, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v1, v2, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, v0

    .line 591
    :goto_2
    check-cast v1, Lo/getThumbTintList;

    if-eqz v1, :cond_5

    .line 50312
    iget-boolean v2, v1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    if-eqz v2, :cond_4

    move-object v1, v0

    goto :goto_3

    .line 50317
    :cond_4
    iget-object v1, v1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 590
    :goto_3
    check-cast v1, Lo/getFont;

    if-eqz v1, :cond_5

    .line 50318
    iget-object v1, v1, Lo/getFont;->ICustomTabsCallback:Ljava/lang/String;

    goto :goto_4

    :cond_5
    move-object v1, v0

    :goto_4
    if-nez v1, :cond_9

    .line 590
    sget-object v1, Lo/getNonResourceString;->ICustomTabsCallback$Stub:Lo/getNonResourceString;

    .line 50319
    iget-object v1, v1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 50320
    sget-object v2, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v1, v2, :cond_6

    goto :goto_5

    :cond_6
    move-object v1, v0

    .line 590
    :goto_5
    check-cast v1, Lo/getThumbTintList;

    if-eqz v1, :cond_8

    .line 50324
    iget-boolean v2, v1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    if-eqz v2, :cond_7

    move-object v1, v0

    goto :goto_6

    .line 50329
    :cond_7
    iget-object v1, v1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 591
    :goto_6
    check-cast v1, Lo/getFont;

    if-eqz v1, :cond_8

    .line 50330
    iget-object v0, v1, Lo/getFont;->notify:Ljava/lang/String;

    :cond_8
    if-nez v0, :cond_9

    const-wide/16 v0, 0x1e

    .line 594
    new-instance v2, Lo/getViewPosition$ICustomTabsCallback$Stub$Proxy;

    invoke-direct {v2, p0}, Lo/getViewPosition$ICustomTabsCallback$Stub$Proxy;-><init>(Lo/getViewPosition;)V

    check-cast v2, Lo/getServerTime;

    invoke-static {p1, p2, v0, v1, v2}, Lo/getTextOn;->ICustomTabsCallback(Landroid/view/View;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    return-void

    .line 598
    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->startPostponedEnterTransition()V

    :cond_a
    return-void
.end method
