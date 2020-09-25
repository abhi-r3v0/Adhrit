.class public final Lcom/dreamplug/fabrik/ui/cm/benefits/BenefitsFragment$onViewCreated$$inlined$apply$lambda$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setAnimator$asInterface;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007\u00b8\u0006\u0008"
    }
    d2 = {
        "com/dreamplug/utils/LifecycleUtils$executeOnResume$1",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "onDestroy",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "onResume",
        "utils_release",
        "com/dreamplug/fabrik/ui/cm/benefits/BenefitsFragment$onViewCreated$1$1$onScrollStateChanged$$inlined$executeOnResume$1"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:I

.field private synthetic extraCallback:Lo/toDebugString$onMessageChannelReady;

.field private synthetic onMessageChannelReady:Lo/setAnimator$asInterface;

.field private synthetic onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/setAnimator$asInterface;I)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/benefits/BenefitsFragment$onViewCreated$$inlined$apply$lambda$1$1;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/cm/benefits/BenefitsFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/cm/benefits/BenefitsFragment$onViewCreated$$inlined$apply$lambda$1$1;->onMessageChannelReady:Lo/setAnimator$asInterface;

    iput p4, p0, Lcom/dreamplug/fabrik/ui/cm/benefits/BenefitsFragment$onViewCreated$$inlined$apply$lambda$1$1;->ICustomTabsCallback:I

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final asInterface(Lo/toLegacyStreamType;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/benefits/BenefitsFragment$onViewCreated$$inlined$apply$lambda$1$1;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/benefits/BenefitsFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/toDebugString$onMessageChannelReady;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method

.method public final extraCallback(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onNavigationEvent(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Lo/toLegacyStreamType;)V
    .locals 7

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget p1, p0, Lcom/dreamplug/fabrik/ui/cm/benefits/BenefitsFragment$onViewCreated$$inlined$apply$lambda$1$1;->ICustomTabsCallback:I

    const/4 v0, 0x1

    if-nez p1, :cond_6

    .line 54
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/benefits/BenefitsFragment$onViewCreated$$inlined$apply$lambda$1$1;->onMessageChannelReady:Lo/setAnimator$asInterface;

    iget-object p1, p1, Lo/setAnimator$asInterface;->extraCallback:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 55
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 56
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    if-eqz v1, :cond_2

    .line 55
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result p1

    goto :goto_2

    .line 57
    :cond_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    .line 59
    :goto_2
    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/cm/benefits/BenefitsFragment$onViewCreated$$inlined$apply$lambda$1$1;->onMessageChannelReady:Lo/setAnimator$asInterface;

    iget-object v1, v1, Lo/setAnimator$asInterface;->onPostMessage:Lo/setAnimator;

    new-array v2, v0, [Lo/addWrite;

    .line 61
    iget-object v5, p0, Lcom/dreamplug/fabrik/ui/cm/benefits/BenefitsFragment$onViewCreated$$inlined$apply$lambda$1$1;->onMessageChannelReady:Lo/setAnimator$asInterface;

    iget-object v5, v5, Lo/setAnimator$asInterface;->onPostMessage:Lo/setAnimator;

    invoke-static {v5}, Lo/setAnimator;->ICustomTabsCallback(Lo/setAnimator;)Lo/repositionToWrapContentIfNecessary;

    move-result-object v5

    .line 2000
    iget-object v5, v5, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v5}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/checkSpanForGap;

    .line 2151
    iget-object v5, v5, Lo/checkSpanForGap;->ICustomTabsCallback:Ljava/util/List;

    const-string v6, "$this$getOrNull"

    .line 61
    invoke-static {v5, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_3

    const-string v6, "$this$lastIndex"

    .line 2266
    invoke-static {v5, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3210
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v0

    if-gt p1, v6, :cond_3

    .line 2266
    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    :cond_3
    move-object p1, v3

    .line 61
    :goto_3
    instance-of v5, p1, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    if-nez v5, :cond_4

    move-object p1, v3

    :cond_4
    check-cast p1, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    if-eqz p1, :cond_5

    .line 4023
    iget-object v3, p1, Lcom/dreamplug/fabrik/ui/cm/models/Template;->onPostMessage:Ljava/lang/String;

    .line 4043
    :cond_5
    new-instance p1, Lo/addWrite;

    const-string/jumbo v5, "template_name"

    invoke-direct {p1, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p1, v2, v4

    const-string p1, "pairs"

    .line 61
    invoke-static {v2, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4105
    new-instance p1, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v3

    invoke-direct {p1, v3}, Ljava/util/HashMap;-><init>(I)V

    check-cast p1, Ljava/util/Map;

    invoke-static {p1, v2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v2, "cm_card_benefit_farm_scrolled_template"

    .line 59
    invoke-virtual {v1, v2, p1}, Lo/setAnimator;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    .line 63
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/benefits/BenefitsFragment$onViewCreated$$inlined$apply$lambda$1$1;->onMessageChannelReady:Lo/setAnimator$asInterface;

    iget-object p1, p1, Lo/setAnimator$asInterface;->onMessageChannelReady:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_6

    .line 64
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/benefits/BenefitsFragment$onViewCreated$$inlined$apply$lambda$1$1;->onMessageChannelReady:Lo/setAnimator$asInterface;

    iget-object p1, p1, Lo/setAnimator$asInterface;->onPostMessage:Lo/setAnimator;

    const-string v1, "cm_benefit_farm_scrolled_to_last"

    invoke-static {p1, v1}, Lo/setAnimator;->onMessageChannelReady(Lo/setAnimator;Ljava/lang/String;)V

    .line 27
    :cond_6
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/benefits/BenefitsFragment$onViewCreated$$inlined$apply$lambda$1$1;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v1, p0

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/benefits/BenefitsFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/toDebugString$onMessageChannelReady;

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
