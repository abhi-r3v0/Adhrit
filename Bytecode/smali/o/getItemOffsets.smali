.class public final Lo/getItemOffsets;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0007\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0008\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/interstitial/ui/InterstitialContainer$onTemplateDismissComplete$1",
        "Landroid/animation/Animator$AnimatorListener;",
        "onAnimationCancel",
        "",
        "animation",
        "Landroid/animation/Animator;",
        "onAnimationEnd",
        "onAnimationRepeat",
        "onAnimationStart",
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
.field public final ICustomTabsCallback:Lo/getRowCountForAccessibility$ICustomTabsCallback;

.field private final ICustomTabsCallback$Stub:Z

.field private final asBinder:Lo/getMoveDuration;

.field private asInterface:Z

.field final extraCallback:Lo/getServerTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation
.end field

.field public final onMessageChannelReady:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

.field public final onNavigationEvent:Landroidx/fragment/app/Fragment;

.field public final onPostMessage:Landroid/view/View;

.field private final onTransact:Lo/getSnakes;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroidx/fragment/app/Fragment;Lo/getSnakes;Lo/getRowCountForAccessibility$ICustomTabsCallback;Lo/getMoveDuration;Lo/getServerTime;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroidx/fragment/app/Fragment;",
            "Lo/getSnakes;",
            "Lo/getRowCountForAccessibility$ICustomTabsCallback;",
            "Lo/getMoveDuration;",
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interstitialActonHandler"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interstitialData"

    invoke-static {p4, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dismiss"

    invoke-static {p6, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getItemOffsets;->onPostMessage:Landroid/view/View;

    iput-object p2, p0, Lo/getItemOffsets;->onNavigationEvent:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Lo/getItemOffsets;->onTransact:Lo/getSnakes;

    iput-object p4, p0, Lo/getItemOffsets;->ICustomTabsCallback:Lo/getRowCountForAccessibility$ICustomTabsCallback;

    iput-object p5, p0, Lo/getItemOffsets;->asBinder:Lo/getMoveDuration;

    iput-object p6, p0, Lo/getItemOffsets;->extraCallback:Lo/getServerTime;

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-eqz p5, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 34
    :goto_0
    iput-boolean p3, p0, Lo/getItemOffsets;->ICustomTabsCallback$Stub:Z

    .line 36
    iget-object p3, p0, Lo/getItemOffsets;->ICustomTabsCallback:Lo/getRowCountForAccessibility$ICustomTabsCallback;

    .line 14053
    iget-object p3, p3, Lo/getRowCountForAccessibility$ICustomTabsCallback;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 36
    iput-object p3, p0, Lo/getItemOffsets;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 15023
    iget-object p3, p3, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onMessageChannelReady:Ljava/lang/String;

    .line 39
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p4

    const p5, -0x64f48047

    const/4 p6, 0x0

    if-eq p4, p5, :cond_3

    const p5, -0x15c91d26

    if-eq p4, p5, :cond_2

    const p5, -0x1376d70a

    if-eq p4, p5, :cond_1

    goto :goto_1

    :cond_1
    const-string p4, "interstitial_launch_t1"

    .line 40
    invoke-virtual {p3, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 41
    sget-object p3, Lo/onLayoutChildren;->ICustomTabsCallback:Lo/onLayoutChildren$onMessageChannelReady;

    iget-object p3, p0, Lo/getItemOffsets;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    iget-boolean p4, p0, Lo/getItemOffsets;->ICustomTabsCallback$Stub:Z

    .line 15138
    new-instance p5, Lo/onLayoutChildren;

    invoke-direct {p5}, Lo/onLayoutChildren;-><init>()V

    check-cast p5, Landroidx/fragment/app/Fragment;

    new-instance v0, Lo/onLayoutChildren$onMessageChannelReady$extraCallback;

    invoke-direct {v0, p3, p4}, Lo/onLayoutChildren$onMessageChannelReady$extraCallback;-><init>(Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;Z)V

    check-cast v0, Lo/onDisconnectSetValue;

    invoke-static {p5, v0}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Lo/onDisconnectSetValue;)Landroidx/fragment/app/Fragment;

    move-result-object p3

    check-cast p3, Lo/onLayoutChildren;

    .line 41
    check-cast p3, Landroidx/fragment/app/Fragment;

    goto :goto_2

    :cond_2
    const-string p4, "interstitial_permission_t1"

    .line 43
    invoke-virtual {p3, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 44
    sget-object p3, Lo/onItemsAdded;->onPostMessage:Lo/onItemsAdded$ICustomTabsCallback;

    iget-object p3, p0, Lo/getItemOffsets;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 16099
    new-instance p4, Lo/onItemsAdded;

    invoke-direct {p4}, Lo/onItemsAdded;-><init>()V

    check-cast p4, Landroidx/fragment/app/Fragment;

    new-instance p5, Lo/onItemsAdded$ICustomTabsCallback$onNavigationEvent;

    invoke-direct {p5, p3}, Lo/onItemsAdded$ICustomTabsCallback$onNavigationEvent;-><init>(Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;)V

    check-cast p5, Lo/onDisconnectSetValue;

    invoke-static {p4, p5}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Lo/onDisconnectSetValue;)Landroidx/fragment/app/Fragment;

    move-result-object p3

    check-cast p3, Lo/onItemsAdded;

    .line 44
    check-cast p3, Landroidx/fragment/app/Fragment;

    goto :goto_2

    :cond_3
    const-string p4, "interstitial_card_t1"

    .line 46
    invoke-virtual {p3, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 47
    sget-object p3, Lo/onItemsUpdated;->extraCallback:Lo/onItemsUpdated$ICustomTabsCallback;

    iget-object p3, p0, Lo/getItemOffsets;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    iget-boolean p4, p0, Lo/getItemOffsets;->ICustomTabsCallback$Stub:Z

    .line 16175
    new-instance p5, Lo/onItemsUpdated;

    invoke-direct {p5}, Lo/onItemsUpdated;-><init>()V

    check-cast p5, Landroidx/fragment/app/Fragment;

    new-instance v0, Lo/onItemsUpdated$ICustomTabsCallback$ICustomTabsCallback;

    invoke-direct {v0, p3, p4}, Lo/onItemsUpdated$ICustomTabsCallback$ICustomTabsCallback;-><init>(Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;Z)V

    check-cast v0, Lo/onDisconnectSetValue;

    invoke-static {p5, v0}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Lo/onDisconnectSetValue;)Landroidx/fragment/app/Fragment;

    move-result-object p3

    check-cast p3, Lo/onItemsUpdated;

    .line 47
    check-cast p3, Landroidx/fragment/app/Fragment;

    goto :goto_2

    :cond_4
    :goto_1
    move-object p3, p6

    :goto_2
    if-eqz p3, :cond_9

    .line 53
    iget-object p4, p0, Lo/getItemOffsets;->onNavigationEvent:Landroidx/fragment/app/Fragment;

    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p4

    const-string p5, "fragment.lifecycle"

    invoke-static {p4, p5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    new-instance p5, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {p5}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    iput-boolean p1, p5, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 175
    new-instance v0, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v0}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    iput-object p6, v0, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 176
    invoke-virtual {p4}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object p6

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 16212
    invoke-virtual {p6, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p6

    if-ltz p6, :cond_5

    const/4 p1, 0x1

    :cond_5
    if-eqz p1, :cond_7

    const-string/jumbo p1, "tag"

    .line 17027
    iget-object p6, p0, Lo/getItemOffsets;->onNavigationEvent:Landroidx/fragment/app/Fragment;

    .line 55
    invoke-virtual {p6}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object p6

    invoke-virtual {p6, p1}, Lo/requestExtraBinder;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p6

    if-nez p6, :cond_6

    .line 56
    sget-object p6, Lo/setItemPrefetchEnabled;->onNavigationEvent:Lo/setItemPrefetchEnabled;

    .line 17036
    iget-object v1, p0, Lo/getItemOffsets;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 18021
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->ICustomTabsCallback:Ljava/lang/String;

    .line 56
    invoke-virtual {p6, v1}, Lo/setItemPrefetchEnabled;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 57
    sget-object p6, Lo/openOptionsMenu;->onMessageChannelReady:Lo/openOptionsMenu;

    .line 18029
    iget-object p6, p0, Lo/getItemOffsets;->ICustomTabsCallback:Lo/getRowCountForAccessibility$ICustomTabsCallback;

    .line 18053
    iget-object p6, p6, Lo/getRowCountForAccessibility$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/String;

    .line 57
    invoke-static {p6}, Lo/openOptionsMenu;->extraCallback(Ljava/lang/String;)V

    .line 19026
    invoke-virtual {p0}, Lo/getItemOffsets;->extraCallback()Ljava/util/Map;

    move-result-object p6

    const-string v1, "card_interstitial_load"

    .line 58
    invoke-static {v1, p6}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 19027
    iget-object p6, p0, Lo/getItemOffsets;->onNavigationEvent:Landroidx/fragment/app/Fragment;

    .line 59
    invoke-virtual {p6}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object p6

    .line 19464
    new-instance v1, Lo/binderDied;

    invoke-direct {v1, p6}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    const p6, 0x7f0b01ff

    .line 20234
    invoke-virtual {v1, p6, p3, p1, p2}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 62
    invoke-virtual {v1}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    .line 178
    :cond_6
    iput-boolean p2, p5, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_3

    .line 179
    :cond_7
    invoke-virtual {p4}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object p1

    sget-object p2, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq p1, p2, :cond_8

    .line 180
    new-instance p1, Lcom/dreamplug/fabrik/ui/interstitial/ui/InterstitialContainer$$special$$inlined$executeOnResume$1;

    invoke-direct {p1, p4, p5, p0, p3}, Lcom/dreamplug/fabrik/ui/interstitial/ui/InterstitialContainer$$special$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/getItemOffsets;Landroidx/fragment/app/Fragment;)V

    check-cast p1, Lo/createCallback;

    iput-object p1, v0, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 181
    iget-object p1, v0, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p1, Lo/createCallback;

    check-cast p1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p4, p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 183
    :cond_8
    :goto_3
    new-instance p1, Lo/getItemOffsets$onNavigationEvent;

    invoke-direct {p1, v0, p4}, Lo/getItemOffsets$onNavigationEvent;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    :cond_9
    return-void
.end method


# virtual methods
.method public final extraCallback()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v1, v0, [Lo/addWrite;

    .line 150
    iget-object v2, p0, Lo/getItemOffsets;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 7021
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->ICustomTabsCallback:Ljava/lang/String;

    .line 7043
    new-instance v3, Lo/addWrite;

    const-string/jumbo v4, "template_id"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v3, v1, v2

    .line 151
    iget-object v2, p0, Lo/getItemOffsets;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 8023
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onMessageChannelReady:Ljava/lang/String;

    .line 8043
    new-instance v3, Lo/addWrite;

    const-string v4, "card_type"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    aput-object v3, v1, v2

    .line 152
    iget-object v2, p0, Lo/getItemOffsets;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 9022
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Metadata;

    if-eqz v2, :cond_0

    .line 9127
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/Metadata;->extraCallback:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 152
    :goto_0
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 10043
    new-instance v3, Lo/addWrite;

    const-string v4, "is_dismiss_present"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x2

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 153
    iget-object v3, p0, Lo/getItemOffsets;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 11020
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onPostMessage:Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;

    .line 11138
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;->onPostMessage:Ljava/lang/String;

    .line 12043
    new-instance v4, Lo/addWrite;

    const-string v5, "category"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    const-string v2, "pairs"

    .line 149
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12105
    new-instance v2, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 155
    iget-object v1, p0, Lo/getItemOffsets;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 13024
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 13042
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->ICustomTabsCallback$Stub$Proxy:Ljava/util/Map;

    if-nez v1, :cond_2

    .line 14040
    sget-object v1, Lo/forcePersistenceManager;->extraCallback:Lo/forcePersistenceManager;

    if-eqz v1, :cond_1

    check-cast v1, Ljava/util/Map;

    goto :goto_1

    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.collections.Map<K, V>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_2
    :goto_1
    invoke-virtual {v2, v1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 22026
    iget-object p1, p0, Lo/getItemOffsets;->onPostMessage:Landroid/view/View;

    .line 21124
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->animationContainer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 22027
    iget-object v0, p0, Lo/getItemOffsets;->onNavigationEvent:Landroidx/fragment/app/Fragment;

    .line 21124
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010025

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 21125
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 21160
    new-instance v1, Lo/setDrawerListener$onPostMessage;

    invoke-direct {v1}, Lo/setDrawerListener$onPostMessage;-><init>()V

    .line 21127
    new-instance v2, Lo/setStackFromEnd;

    invoke-direct {v2, p0}, Lo/setStackFromEnd;-><init>(Lo/getItemOffsets;)V

    check-cast v2, Lo/onDisconnectSetValue;

    const-string v3, "func"

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22031
    iput-object v2, v1, Lo/setDrawerListener$onPostMessage;->ICustomTabsCallback:Lo/onDisconnectSetValue;

    .line 21162
    check-cast v1, Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 21124
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 113
    invoke-virtual {p0}, Lo/getItemOffsets;->extraCallback()Ljava/util/Map;

    move-result-object p1

    const-string v0, "card_interstitial_dismissed"

    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 115
    :cond_0
    iget-object p1, p0, Lo/getItemOffsets;->onPostMessage:Landroid/view/View;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    const-string/jumbo v0, "view.container"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const-string v0, "$this$gone"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 7017
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 116
    iget-boolean p1, p0, Lo/getItemOffsets;->asInterface:Z

    if-eqz p1, :cond_1

    .line 117
    iget-object p1, p0, Lo/getItemOffsets;->onPostMessage:Landroid/view/View;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->successAnimation:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 118
    iget-object p1, p0, Lo/getItemOffsets;->onPostMessage:Landroid/view/View;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->successAnimation:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    move-object v0, p0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    .line 144
    :cond_1
    iget-object p1, p0, Lo/getItemOffsets;->extraCallback:Lo/getServerTime;

    invoke-interface {p1}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    return-void
.end method

.method public final onNavigationEvent(ZZZ)V
    .locals 6

    if-nez p2, :cond_2

    .line 88
    sget-object p2, Lo/setAutoMeasureEnabled;->ICustomTabsCallback:Lo/setAutoMeasureEnabled;

    iget-object v0, p0, Lo/getItemOffsets;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    if-eqz v0, :cond_0

    .line 2021
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->ICustomTabsCallback:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    const-string v1, "interstitial"

    .line 88
    invoke-static {p2, v0, v1}, Lo/setAutoMeasureEnabled;->extraCallback(Lo/setAutoMeasureEnabled;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_2
    iput-boolean p1, p0, Lo/getItemOffsets;->asInterface:Z

    if-eqz p3, :cond_a

    .line 91
    iget-object p2, p0, Lo/getItemOffsets;->onNavigationEvent:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p2

    const-string p3, "fragment.lifecycle"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    new-instance p3, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {p3}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p3, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 161
    new-instance v1, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v1}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v2, 0x0

    iput-object v2, v1, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 162
    invoke-virtual {p2}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v3

    sget-object v4, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 2212
    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    const/4 v4, 0x1

    if-ltz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_8

    .line 3027
    iget-object v3, p0, Lo/getItemOffsets;->onNavigationEvent:Landroidx/fragment/app/Fragment;

    .line 92
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v3

    const-string v5, "fragment.childFragmentManager"

    invoke-static {v3, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3896
    iget-object v3, v3, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    invoke-virtual {v3}, Lo/extraCallback$asBinder;->ICustomTabsCallback()Ljava/util/List;

    move-result-object v3

    const-string v5, "fragment.childFragmentManager.fragments"

    .line 92
    invoke-static {v3, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$this$firstOrNull"

    invoke-static {v3, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4243
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v3, v2

    goto :goto_1

    :cond_4
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 92
    :goto_1
    instance-of v5, v3, Lo/getColumnCountForAccessibility;

    if-nez v5, :cond_5

    goto :goto_2

    :cond_5
    move-object v2, v3

    :goto_2
    check-cast v2, Lo/getColumnCountForAccessibility;

    if-eqz v2, :cond_6

    invoke-interface {v2, v0}, Lo/getColumnCountForAccessibility;->ICustomTabsCallback(Z)V

    :cond_6
    if-eqz p1, :cond_7

    .line 5026
    iget-object p1, p0, Lo/getItemOffsets;->onPostMessage:Landroid/view/View;

    .line 95
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->animationContainer:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    const-string/jumbo v2, "view.animationContainer"

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const-string v2, "$this$visible"

    invoke-static {p1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6009
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6026
    iget-object p1, p0, Lo/getItemOffsets;->onPostMessage:Landroid/view/View;

    .line 96
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->animationContainer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 6027
    iget-object v0, p0, Lo/getItemOffsets;->onNavigationEvent:Landroidx/fragment/app/Fragment;

    .line 97
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f010022

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v2, 0xc8

    .line 98
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 164
    new-instance v2, Lo/setDrawerListener$onPostMessage;

    invoke-direct {v2}, Lo/setDrawerListener$onPostMessage;-><init>()V

    .line 100
    sget-object v3, Lo/getItemOffsets$onMessageChannelReady;->onMessageChannelReady:Lo/getItemOffsets$onMessageChannelReady;

    check-cast v3, Lo/onDisconnectSetValue;

    const-string v5, "func"

    invoke-static {v3, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6031
    iput-object v3, v2, Lo/setDrawerListener$onPostMessage;->ICustomTabsCallback:Lo/onDisconnectSetValue;

    .line 166
    check-cast v2, Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 96
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 168
    :cond_7
    iput-boolean v4, p3, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_3

    .line 169
    :cond_8
    invoke-virtual {p2}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v0

    sget-object v2, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v0, v2, :cond_9

    .line 170
    new-instance v0, Lcom/dreamplug/fabrik/ui/interstitial/ui/InterstitialContainer$onActionComplete$$inlined$executeOnResume$1;

    invoke-direct {v0, p2, p3, p0, p1}, Lcom/dreamplug/fabrik/ui/interstitial/ui/InterstitialContainer$onActionComplete$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/getItemOffsets;Z)V

    check-cast v0, Lo/createCallback;

    iput-object v0, v1, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 171
    iget-object p1, v1, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p1, Lo/createCallback;

    check-cast p1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p2, p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 173
    :cond_9
    :goto_3
    new-instance p1, Lo/getItemOffsets$ICustomTabsCallback;

    invoke-direct {p1, v1, p2}, Lo/getItemOffsets$ICustomTabsCallback;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    :cond_a
    return-void
.end method

.method public final onPostMessage(Lcom/dreamplug/fabrik/ui/nba/helper/Cta;Z)V
    .locals 7

    const-string v0, "action"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 71
    invoke-virtual {p0}, Lo/getItemOffsets;->extraCallback()Ljava/util/Map;

    move-result-object v1

    const-string v2, "card_interstitial_CTA"

    invoke-static {v2, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 74
    :cond_0
    new-instance v1, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v1}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 75
    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "deeplink"

    invoke-static {v2, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lo/getItemOffsets;->asBinder:Lo/getMoveDuration;

    if-eqz v2, :cond_1

    const/4 v5, 0x7

    const/4 v6, 0x0

    .line 76
    invoke-static {v2, v4, v6, v6, v5}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    .line 77
    iput-boolean v6, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 79
    :cond_1
    iget-object v2, p0, Lo/getItemOffsets;->onTransact:Lo/getSnakes;

    iget-object v5, p0, Lo/getItemOffsets;->onNavigationEvent:Landroidx/fragment/app/Fragment;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "fragment.requireContext()"

    invoke-static {v5, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lo/getItemOffsets$extraCallback;

    invoke-direct {v6, p0, p2, v1}, Lo/getItemOffsets$extraCallback;-><init>(Lo/getItemOffsets;ZLo/toDebugString$onMessageChannelReady;)V

    check-cast v6, Lo/onDisconnectSetValue;

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "context"

    invoke-static {v5, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "onActionComplete"

    invoke-static {v6, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1028
    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;->getType()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0x30012e

    if-eq v0, v1, :cond_5

    const v1, 0x258156e6

    if-eq v0, v1, :cond_3

    goto/16 :goto_0

    .line 1029
    :cond_3
    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 1030
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v6, p2}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    sget-object p2, Lo/length;->extraCallback:Lo/length;

    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;->getDeeplink()Lcom/dreamplug/fabrik/ui/nba/helper/Deeplink;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/nba/helper/Deeplink;->getLink()Ljava/lang/String;

    move-result-object v4

    :cond_4
    invoke-virtual {p2, v4}, Lo/length;->onNavigationEvent(Ljava/lang/String;)V

    return-void

    :cond_5
    const-string v0, "flow"

    .line 1033
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 1034
    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;->getFlow()Lcom/dreamplug/fabrik/ui/nba/helper/Flow;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/nba/helper/Flow;->getType()Ljava/lang/String;

    move-result-object v4

    :cond_6
    if-nez v4, :cond_7

    return-void

    :cond_7
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo p1, "whatsapp_optin"

    .line 1035
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1036
    sget-object p1, Lo/onCreateOptionsMenu;->onPostMessage:Lo/onCreateOptionsMenu;

    new-instance p2, Lo/getSnakes$onMessageChannelReady;

    invoke-direct {p2, v6}, Lo/getSnakes$onMessageChannelReady;-><init>(Lo/onDisconnectSetValue;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-virtual {p1, p2}, Lo/onCreateOptionsMenu;->onMessageChannelReady(Lo/onDisconnectSetValue;)V

    return-void

    :sswitch_1
    const-string p1, "dismiss"

    .line 1044
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1045
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v6, p1}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :sswitch_2
    const-string p1, "contact_permission"

    .line 1051
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p2, "android.permission.READ_CONTACTS"

    const-string v0, "enable contact permission"

    .line 1052
    invoke-virtual {v2, v5, p2, p1, v0}, Lo/getSnakes;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-virtual {v2, v6}, Lo/getSnakes;->onNavigationEvent(Lo/onDisconnectSetValue;)V

    return-void

    :sswitch_3
    const-string p1, "location_permission"

    .line 1055
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p2, "android.permission.ACCESS_FINE_LOCATION"

    const-string v0, "enable location permission"

    .line 1056
    invoke-virtual {v2, v5, p2, p1, v0}, Lo/getSnakes;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    invoke-virtual {v2, v6}, Lo/getSnakes;->onNavigationEvent(Lo/onDisconnectSetValue;)V

    goto :goto_0

    :sswitch_4
    const-string/jumbo p1, "sms_permission"

    .line 1047
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p2, "android.permission.READ_SMS"

    const-string v0, "enable sms permission"

    .line 1048
    invoke-virtual {v2, v5, p2, p1, v0}, Lo/getSnakes;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    invoke-virtual {v2, v6}, Lo/getSnakes;->onNavigationEvent(Lo/onDisconnectSetValue;)V

    :cond_8
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x64c3438b -> :sswitch_4
        -0x205af767 -> :sswitch_3
        0x1263234e -> :sswitch_2
        0x63a3b28a -> :sswitch_1
        0x6fdab22b -> :sswitch_0
    .end sparse-switch
.end method
