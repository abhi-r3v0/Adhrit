.class public final Lcom/dreamplug/fabrik/ui/lending/LendingWithdrawalFragment$ctaClicked$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getSpanGroupIndex;->onMessageChannelReady()V
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
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007\u00b8\u0006\u0000"
    }
    d2 = {
        "com/dreamplug/utils/LifecycleUtils$executeOnResume$1",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "onDestroy",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "onResume",
        "utils_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/getSpanGroupIndex;

.field private synthetic extraCallback:Lo/toDebugString$onMessageChannelReady;

.field private synthetic onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/getSpanGroupIndex;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/LendingWithdrawalFragment$ctaClicked$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/LendingWithdrawalFragment$ctaClicked$$inlined$executeOnResume$1;->extraCallback:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/lending/LendingWithdrawalFragment$ctaClicked$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/getSpanGroupIndex;

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/LendingWithdrawalFragment$ctaClicked$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/LendingWithdrawalFragment$ctaClicked$$inlined$executeOnResume$1;->extraCallback:Lo/toDebugString$onMessageChannelReady;

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
    .locals 10

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/LendingWithdrawalFragment$ctaClicked$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/getSpanGroupIndex;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object p1

    const-string v0, "childFragmentManager"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1896
    iget-object p1, p1, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    invoke-virtual {p1}, Lo/extraCallback$asBinder;->ICustomTabsCallback()Ljava/util/List;

    move-result-object p1

    .line 53
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_e

    .line 54
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/LendingWithdrawalFragment$ctaClicked$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/getSpanGroupIndex;

    invoke-static {p1}, Lo/getSpanGroupIndex;->onPostMessage(Lo/getSpanGroupIndex;)Lo/getSpanIndex;

    move-result-object p1

    .line 2072
    iget-object p1, p1, Lo/getSpanIndex;->IPostMessageService:Lo/setActive;

    .line 2320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v2

    .line 54
    :goto_0
    check-cast p1, Lo/onAnchorReady;

    .line 55
    sget-object v1, Lo/onAnchorReady$ICustomTabsCallback;->extraCallback:Lo/onAnchorReady$ICustomTabsCallback;

    invoke-static {p1, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/LendingWithdrawalFragment$ctaClicked$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/getSpanGroupIndex;

    invoke-static {p1}, Lo/getSpanGroupIndex;->ICustomTabsCallback$Stub(Lo/getSpanGroupIndex;)Lo/updateMeasurements;

    move-result-object p1

    invoke-virtual {p1}, Lo/updateMeasurements;->onPostMessage()V

    goto/16 :goto_4

    .line 58
    :cond_1
    sget-object v1, Lo/onAnchorReady$onNavigationEvent;->extraCallback:Lo/onAnchorReady$onNavigationEvent;

    invoke-static {p1, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 59
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/LendingWithdrawalFragment$ctaClicked$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/getSpanGroupIndex;

    invoke-static {p1}, Lo/getSpanGroupIndex;->onPostMessage(Lo/getSpanGroupIndex;)Lo/getSpanIndex;

    move-result-object p1

    .line 3054
    iget-object p1, p1, Lo/getSpanIndex;->getInterfaceDescriptor:Ljava/lang/Double;

    if-eqz p1, :cond_2

    .line 59
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/LendingWithdrawalFragment$ctaClicked$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/getSpanGroupIndex;

    invoke-static {p1}, Lo/getSpanGroupIndex;->onPostMessage(Lo/getSpanGroupIndex;)Lo/getSpanIndex;

    move-result-object p1

    .line 3058
    iget-object p1, p1, Lo/getSpanIndex;->updateVisuals:Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 60
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/LendingWithdrawalFragment$ctaClicked$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/getSpanGroupIndex;

    invoke-static {p1}, Lo/getSpanGroupIndex;->onPostMessage(Lo/getSpanGroupIndex;)Lo/getSpanIndex;

    move-result-object p1

    .line 3072
    iget-object p1, p1, Lo/getSpanIndex;->IPostMessageService:Lo/setActive;

    .line 60
    sget-object v1, Lo/onAnchorReady$onPostMessage;->onNavigationEvent:Lo/onAnchorReady$onPostMessage;

    invoke-virtual {p1, v1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 62
    :cond_2
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/LendingWithdrawalFragment$ctaClicked$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/getSpanGroupIndex;

    invoke-static {p1}, Lo/getSpanGroupIndex;->onPostMessage(Lo/getSpanGroupIndex;)Lo/getSpanIndex;

    move-result-object p1

    .line 4038
    iget-object p1, p1, Lo/getSpanIndex;->onPostMessage:Lo/setActive;

    .line 62
    new-instance v1, Lo/throwIfInMutationOperation;

    new-instance v3, Lo/addWrite;

    const-string v4, "Kindly select EMI"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v1, v3}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 65
    :cond_3
    sget-object v1, Lo/onAnchorReady$onPostMessage;->onNavigationEvent:Lo/onAnchorReady$onPostMessage;

    invoke-static {p1, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 66
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/LendingWithdrawalFragment$ctaClicked$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/getSpanGroupIndex;

    invoke-static {p1}, Lo/getSpanGroupIndex;->onPostMessage(Lo/getSpanGroupIndex;)Lo/getSpanIndex;

    move-result-object p1

    .line 4043
    iget-object p1, p1, Lo/getSpanIndex;->onRelationshipValidationResult:Ljava/util/List;

    if-eqz p1, :cond_5

    const-string v1, "$this$getOrNull"

    .line 66
    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$this$lastIndex"

    .line 4266
    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5210
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v3, 0x2

    if-gt v3, v1, :cond_4

    .line 4266
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_4
    move-object p1, v2

    .line 66
    :goto_1
    check-cast p1, Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    if-eqz p1, :cond_5

    .line 6019
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/Cta;->onTransact:Lcom/dreamplug/fabrik/ui/lending/model/Cta$Flow;

    if-eqz p1, :cond_5

    .line 6026
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/Cta$Flow;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/Cta$Data;

    if-eqz p1, :cond_5

    .line 6035
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/Cta$Data;->onPostMessage:Ljava/lang/String;

    move-object v5, p1

    goto :goto_2

    :cond_5
    move-object v5, v2

    .line 67
    :goto_2
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/LendingWithdrawalFragment$ctaClicked$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/getSpanGroupIndex;

    invoke-static {p1}, Lo/getSpanGroupIndex;->onMessageChannelReady(Lo/getSpanGroupIndex;)Lo/setRecycleChildrenOnDetach;

    move-result-object p1

    .line 6063
    iput-object v2, p1, Lo/setRecycleChildrenOnDetach;->getInterfaceDescriptor:Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 68
    move-object p1, v5

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_6

    const/4 p1, 0x1

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    :goto_3
    if-ne p1, v0, :cond_7

    .line 69
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/LendingWithdrawalFragment$ctaClicked$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/getSpanGroupIndex;

    invoke-static {p1}, Lo/getSpanGroupIndex;->onTransact(Lo/getSpanGroupIndex;)Lo/setReenterTransition$onPostMessage;

    move-result-object v3

    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/LendingWithdrawalFragment$ctaClicked$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/getSpanGroupIndex;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    const-string p1, "requireContext()"

    invoke-static {v4, p1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x10

    invoke-static/range {v3 .. v9}, Lo/setReenterTransition$onPostMessage;->onMessageChannelReady(Lo/setReenterTransition$onPostMessage;Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Integer;I)V

    goto/16 :goto_4

    .line 70
    :cond_7
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/LendingWithdrawalFragment$ctaClicked$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/getSpanGroupIndex;

    invoke-static {p1}, Lo/getSpanGroupIndex;->onPostMessage(Lo/getSpanGroupIndex;)Lo/getSpanIndex;

    move-result-object p1

    .line 6070
    iget-object p1, p1, Lo/getSpanIndex;->IPostMessageService$Stub:Lo/isSpanGroupIndexCacheEnabled$ICustomTabsCallback;

    if-eqz p1, :cond_8

    .line 6074
    iget-boolean p1, p1, Lo/isSpanGroupIndexCacheEnabled$ICustomTabsCallback;->asBinder:Z

    if-nez p1, :cond_8

    .line 74
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/LendingWithdrawalFragment$ctaClicked$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/getSpanGroupIndex;

    invoke-static {p1}, Lo/getSpanGroupIndex;->onPostMessage(Lo/getSpanGroupIndex;)Lo/getSpanIndex;

    move-result-object p1

    .line 7038
    iget-object p1, p1, Lo/getSpanIndex;->onPostMessage:Lo/setActive;

    .line 74
    new-instance v1, Lo/throwIfInMutationOperation;

    new-instance v3, Lo/addWrite;

    const-string v4, "Kindly select bank account"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v1, v3}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    goto :goto_4

    .line 75
    :cond_8
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/LendingWithdrawalFragment$ctaClicked$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/getSpanGroupIndex;

    invoke-static {p1}, Lo/getSpanGroupIndex;->onPostMessage(Lo/getSpanGroupIndex;)Lo/getSpanIndex;

    move-result-object p1

    .line 7061
    iget-object p1, p1, Lo/getSpanIndex;->requestPostMessageChannel:Lcom/dreamplug/fabrik/ui/lending/model/ResetExtra;

    if-eqz p1, :cond_b

    .line 79
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/LendingWithdrawalFragment$ctaClicked$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/getSpanGroupIndex;

    invoke-static {p1}, Lo/getSpanGroupIndex;->onPostMessage(Lo/getSpanGroupIndex;)Lo/getSpanIndex;

    move-result-object p1

    .line 8061
    iget-object p1, p1, Lo/getSpanIndex;->requestPostMessageChannel:Lcom/dreamplug/fabrik/ui/lending/model/ResetExtra;

    if-nez p1, :cond_9

    .line 79
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 80
    :cond_9
    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/LendingWithdrawalFragment$ctaClicked$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/getSpanGroupIndex;

    new-instance v3, Lcom/dreamplug/fabrik/ui/lending/WorkFlowUpdateRequest;

    .line 8176
    iget-object v4, p1, Lcom/dreamplug/fabrik/ui/lending/model/ResetExtra;->onNavigationEvent:Ljava/util/Map;

    .line 8178
    iget-object v5, p1, Lcom/dreamplug/fabrik/ui/lending/model/ResetExtra;->onMessageChannelReady:Ljava/lang/String;

    .line 9177
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/ResetExtra;->ICustomTabsCallback:Ljava/lang/String;

    if-nez p1, :cond_a

    const-string p1, ""

    .line 80
    :cond_a
    invoke-direct {v3, v4, v5, p1}, Lcom/dreamplug/fabrik/ui/lending/WorkFlowUpdateRequest;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lo/getSpanGroupIndex;->onNavigationEvent(Lcom/dreamplug/fabrik/ui/lending/WorkFlowUpdateRequest;)V

    .line 83
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/LendingWithdrawalFragment$ctaClicked$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/getSpanGroupIndex;

    invoke-static {p1}, Lo/getSpanGroupIndex;->onPostMessage(Lo/getSpanGroupIndex;)Lo/getSpanIndex;

    move-result-object p1

    .line 10061
    iput-object v2, p1, Lo/getSpanIndex;->requestPostMessageChannel:Lcom/dreamplug/fabrik/ui/lending/model/ResetExtra;

    goto :goto_4

    .line 85
    :cond_b
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/LendingWithdrawalFragment$ctaClicked$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/getSpanGroupIndex;

    invoke-static {p1}, Lo/getSpanGroupIndex;->onMessageChannelReady(Lo/getSpanGroupIndex;)Lo/setRecycleChildrenOnDetach;

    move-result-object p1

    .line 11061
    iget-object v1, p1, Lo/setRecycleChildrenOnDetach;->getInterfaceDescriptor:Ljava/lang/String;

    if-nez v1, :cond_c

    iget-object v1, p1, Lo/setRecycleChildrenOnDetach;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    :cond_c
    if-eqz v1, :cond_d

    .line 89
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/LendingWithdrawalFragment$ctaClicked$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/getSpanGroupIndex;

    invoke-static {p1}, Lo/getSpanGroupIndex;->asInterface(Lo/getSpanGroupIndex;)V

    goto :goto_4

    .line 94
    :cond_d
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/LendingWithdrawalFragment$ctaClicked$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/getSpanGroupIndex;

    invoke-static {p1}, Lo/getSpanGroupIndex;->onPostMessage(Lo/getSpanGroupIndex;)Lo/getSpanIndex;

    move-result-object p1

    .line 11070
    iget-object p1, p1, Lo/getSpanIndex;->IPostMessageService$Stub:Lo/isSpanGroupIndexCacheEnabled$ICustomTabsCallback;

    if-eqz p1, :cond_e

    .line 95
    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/LendingWithdrawalFragment$ctaClicked$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/getSpanGroupIndex;

    invoke-static {v1, p1}, Lo/getSpanGroupIndex;->ICustomTabsCallback(Lo/getSpanGroupIndex;Lo/isSpanGroupIndexCacheEnabled$ICustomTabsCallback;)V

    .line 27
    :cond_e
    :goto_4
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/LendingWithdrawalFragment$ctaClicked$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v1, p0

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/LendingWithdrawalFragment$ctaClicked$$inlined$executeOnResume$1;->extraCallback:Lo/toDebugString$onMessageChannelReady;

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
