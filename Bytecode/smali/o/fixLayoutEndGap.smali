.class public final Lo/fixLayoutEndGap;
.super Lo/updateAnchorFromChildren;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/fixLayoutEndGap$ICustomTabsCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 ,2\u00020\u0001:\u0001,B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\n\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\n\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\n\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J\u0018\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\"\u0010\u001b\u001a\u00020\u000c2\u0006\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\u0012\u0010!\u001a\u00020\u000c2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0016J&\u0010$\u001a\u0004\u0018\u00010%2\u0006\u0010&\u001a\u00020\'2\u0008\u0010(\u001a\u0004\u0018\u00010)2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0016J\u001a\u0010*\u001a\u00020\u000c2\u0006\u0010+\u001a\u00020%2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0016R\u001d\u0010\u0003\u001a\u0004\u0018\u00010\u00048FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006-"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/LifeStyleClaimedRewardFragment;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/LifeStyleClaimBaseFragment;",
        "()V",
        "claimedExtra",
        "Lcom/dreamplug/fabrik/ui/FabrikFragmentExtraData$ClaimedRewardExtra;",
        "getClaimedExtra",
        "()Lcom/dreamplug/fabrik/ui/FabrikFragmentExtraData$ClaimedRewardExtra;",
        "claimedExtra$delegate",
        "Lkotlin/Lazy;",
        "disableScroll",
        "",
        "emptyCtaClicked",
        "",
        "getClaimedRewardType",
        "",
        "getEmptyScreenData",
        "Lcom/dreamplug/fabrik/helper/ui/widget/EmptyScreenView$EmptyScreenData;",
        "getEmptyView",
        "Lcom/dreamplug/fabrik/helper/ui/widget/EmptyScreenView;",
        "getLoaderView",
        "Lcom/dreamplug/fabrik/helper/ui/widget/FabrikLoaderView;",
        "getRecyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "handleCta",
        "cta",
        "lifestyleListItem",
        "Lcom/dreamplug/fabrik/ui/lifestyle/LifestyleClaimedItem;",
        "onClick",
        "type",
        "data",
        "Lcom/dreamplug/utils/list/ListItem;",
        "holder",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
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
.field private final asBinder:Lo/isSameListener;

.field private asInterface:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Lo/updateAnchorFromChildren;-><init>()V

    .line 33
    new-instance v0, Lo/fixLayoutEndGap$onPostMessage;

    invoke-direct {v0, p0}, Lo/fixLayoutEndGap$onPostMessage;-><init>(Lo/fixLayoutEndGap;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 33
    iput-object v1, p0, Lo/fixLayoutEndGap;->asBinder:Lo/isSameListener;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/onViewStateRestored;
    .locals 1

    .line 97
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->emptyCardLayout:I

    invoke-virtual {p0, v0}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onViewStateRestored;

    return-object v0
.end method

.method public final ICustomTabsCallback(Ljava/lang/String;Lo/updateAnchorInfoForLayout;)V
    .locals 7

    const-string v0, "cta"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifestyleListItem"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10000
    iget-object v0, p0, Lo/fixLayoutEndGap;->asBinder:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/onDetach$warmup;

    if-eqz v0, :cond_4

    .line 10033
    iget-boolean v0, v0, Lo/onDetach$warmup;->ICustomTabsCallback:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 142
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v2, 0x1cb54

    if-eq v0, v2, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "web"

    .line 143
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    new-array v2, v0, [Lo/addWrite;

    .line 145
    sget-object v3, Lo/LinearLayoutManager;->onPostMessage:Lo/LinearLayoutManager;

    invoke-static {}, Lo/LinearLayoutManager;->onMessageChannelReady()Ljava/util/HashMap;

    move-result-object v3

    const-string/jumbo v4, "rewardUsage"

    invoke-virtual {v3, v4}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 146
    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 11043
    new-instance v5, Lo/addWrite;

    const-string/jumbo v6, "section count"

    invoke-direct {v5, v6, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v2, v4

    .line 12043
    new-instance v3, Lo/addWrite;

    const-string v4, "cta_type"

    invoke-direct {v3, v4, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v2, v1

    const-string p1, "pairs"

    .line 144
    invoke-static {v2, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12088
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast p1, Ljava/util/Map;

    invoke-static {p1, v2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v0, "claimed_rewards_cta_click"

    .line 144
    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 13074
    iget-object p1, p2, Lo/updateAnchorInfoForLayout;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedResponse;

    .line 14023
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedResponse;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;

    if-eqz p1, :cond_2

    .line 14033
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    if-eqz p1, :cond_2

    .line 14076
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;

    if-eqz p1, :cond_2

    .line 14087
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;->ICustomTabsCallback:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_5

    .line 151
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p2, p1}, Lo/setInflatedId;->onPostMessage(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_3
    return-void

    .line 156
    :cond_4
    invoke-super {p0, p1, p2}, Lo/updateAnchorFromChildren;->ICustomTabsCallback(Ljava/lang/String;Lo/updateAnchorInfoForLayout;)V

    :cond_5
    return-void
.end method

.method public final asBinder()Z
    .locals 1

    .line 1000
    iget-object v0, p0, Lo/fixLayoutEndGap;->asBinder:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/onDetach$warmup;

    if-eqz v0, :cond_0

    .line 1033
    iget-boolean v0, v0, Lo/onDetach$warmup;->ICustomTabsCallback:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final extraCallback()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "rewardUsage"

    return-object v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 48
    invoke-super {p0, p1}, Lo/updateAnchorFromChildren;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget-object p1, Lo/getMaxCardElevation;->extraCallback:Lo/getMaxCardElevation;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "lifestyle_claimed_reward_screen"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Lo/getMaxCardElevation;->ICustomTabsCallback(Ljava/lang/String;Lo/MediaControllerCompatApi21$CallbackProxy;Z)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0e01f5

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Lo/updateAnchorFromChildren;->onDestroyView()V

    .line 16000
    iget-object v0, p0, Lo/fixLayoutEndGap;->asInterface:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady()Lo/onViewStateRestored$onNavigationEvent;
    .locals 17

    .line 109
    new-instance v6, Lo/onViewStateRestored$onNavigationEvent;

    sget-object v0, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v0, 0x7f13019d

    invoke-static {v0}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v1

    .line 110
    sget-object v0, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v0, 0x7f13019c

    invoke-static {v0}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v2

    .line 111
    sget-object v0, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v0, 0x7f13019b

    invoke-static {v0}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v7, p0

    .line 6000
    iget-object v0, v7, Lo/fixLayoutEndGap;->asBinder:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/onDetach$warmup;

    if-eqz v0, :cond_0

    .line 6033
    iget-boolean v0, v0, Lo/onDetach$warmup;->ICustomTabsCallback:Z

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 116
    :cond_0
    sget-object v0, Lo/length;->extraCallback:Lo/length;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x3fe

    const-string v8, "lifestyle"

    invoke-static/range {v8 .. v16}, Lo/length;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v4, v0

    const v5, 0x7f080433

    move-object v0, v6

    .line 109
    invoke-direct/range {v0 .. v5}, Lo/onViewStateRestored$onNavigationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v6
.end method

.method public final onNavigationEvent()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 101
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->recyclerView:I

    invoke-virtual {p0, v0}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public final onPostMessage(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/fixLayoutEndGap;->asInterface:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/fixLayoutEndGap;->asInterface:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/fixLayoutEndGap;->asInterface:Ljava/util/HashMap;

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

    iget-object v1, p0, Lo/fixLayoutEndGap;->asInterface:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final onPostMessage()V
    .locals 1

    iget-object v0, p0, Lo/fixLayoutEndGap;->asInterface:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
    .locals 2

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7000
    iget-object v0, p0, Lo/fixLayoutEndGap;->asBinder:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/onDetach$warmup;

    if-eqz v0, :cond_2

    .line 7033
    iget-boolean v0, v0, Lo/onDetach$warmup;->ICustomTabsCallback:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 123
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0x18210

    if-eq v0, v1, :cond_1

    const p3, 0x5cd8f242

    if-eq v0, p3, :cond_0

    return-void

    :cond_0
    const-string p3, "details"

    .line 124
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 125
    instance-of p1, p2, Lo/updateAnchorInfoForLayout;

    if-eqz p1, :cond_3

    .line 126
    new-instance p1, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;

    invoke-direct {p1}, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;-><init>()V

    .line 127
    move-object p3, p1

    check-cast p3, Landroidx/fragment/app/Fragment;

    new-instance v0, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$Extra;

    check-cast p2, Lo/updateAnchorInfoForLayout;

    .line 7074
    iget-object p2, p2, Lo/updateAnchorInfoForLayout;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedResponse;

    .line 8021
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedResponse;->onPostMessage:Ljava/lang/String;

    .line 127
    invoke-direct {v0, p2}, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$Extra;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lo/getMaxName;->onNavigationEvent(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object p2

    const-string v0, "extra"

    .line 9016
    invoke-static {p3, p2, v0}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object p2

    const-string p3, "ClaimedRewardDetailsFragment"

    invoke-virtual {p1, p2, p3}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "cta"

    .line 131
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 132
    invoke-super {p0, p1, p2, p3}, Lo/updateAnchorFromChildren;->onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V

    return-void

    .line 136
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lo/updateAnchorFromChildren;->onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V

    :cond_3
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-super {p0, p1, p2}, Lo/updateAnchorFromChildren;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 58
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->recyclerView:I

    invoke-virtual {p0, p1}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 59
    new-instance p2, Lo/startActivityForResult;

    move-object v0, p0

    check-cast v0, Lo/startActivityForResult$onNavigationEvent;

    invoke-direct {p2, v0}, Lo/startActivityForResult;-><init>(Lo/startActivityForResult$onNavigationEvent;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 61
    new-instance p2, Lo/setGapStrategy;

    .line 63
    new-instance v3, Lo/getGapStrategy;

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v6, v6}, Lo/getGapStrategy;-><init>(IIII)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xa

    move-object v0, p2

    .line 61
    invoke-direct/range {v0 .. v5}, Lo/setGapStrategy;-><init>(IILo/getGapStrategy;Lo/getGapStrategy;I)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 60
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 1081
    iget-object p2, p0, Lo/updateAnchorFromChildren;->ICustomTabsCallback:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez p2, :cond_0

    const-string v0, "linearLayoutManager"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 66
    :cond_0
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1082
    iget-object p2, p0, Lo/updateAnchorFromChildren;->onPostMessage:Lo/repositionToWrapContentIfNecessary;

    if-nez p2, :cond_1

    const-string v0, "claimedRewardAdapter"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 67
    :cond_1
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 69
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->recyclerView:I

    invoke-virtual {p0, p1}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    const-string p2, "recyclerView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1167
    new-instance p2, Lo/updateAnchorFromChildren$onRelationshipValidationResult;

    invoke-direct {p2, p0}, Lo/updateAnchorFromChildren$onRelationshipValidationResult;-><init>(Lo/updateAnchorFromChildren;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 70
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->title:I

    invoke-virtual {p0, p1}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    const-string/jumbo p2, "title"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance p2, Lo/fixLayoutEndGap$onNavigationEvent;

    invoke-direct {p2, p0}, Lo/fixLayoutEndGap$onNavigationEvent;-><init>(Lo/fixLayoutEndGap;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 73
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->back:I

    invoke-virtual {p0, p1}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/offsetPosition;

    const-string p2, "back"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance p2, Lo/fixLayoutEndGap$extraCallback;

    invoke-direct {p2, p0}, Lo/fixLayoutEndGap$extraCallback;-><init>(Lo/fixLayoutEndGap;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 76
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->archivedReward:I

    invoke-virtual {p0, p1}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/offsetPosition;

    const-string p2, "archivedReward"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance v0, Lo/fixLayoutEndGap$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/fixLayoutEndGap$onMessageChannelReady;-><init>(Lo/fixLayoutEndGap;)V

    check-cast v0, Lo/onDisconnectSetValue;

    invoke-static {p1, v0}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 79
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->mysteryReward:I

    invoke-virtual {p0, p1}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/offsetPosition;

    const-string v0, "mysteryReward"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance v1, Lo/fixLayoutEndGap$asInterface;

    invoke-direct {v1, p0}, Lo/fixLayoutEndGap$asInterface;-><init>(Lo/fixLayoutEndGap;)V

    check-cast v1, Lo/onDisconnectSetValue;

    invoke-static {p1, v1}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    const/4 p1, 0x2

    new-array v1, p1, [Lo/addWrite;

    .line 83
    sget-object v2, Lo/LinearLayoutManager;->onPostMessage:Lo/LinearLayoutManager;

    invoke-static {}, Lo/LinearLayoutManager;->onMessageChannelReady()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v3, "rewardUsage"

    invoke-virtual {v2, v3}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 84
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3043
    new-instance v3, Lo/addWrite;

    const-string/jumbo v4, "section count"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v6

    .line 4000
    iget-object v2, p0, Lo/fixLayoutEndGap;->asBinder:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/onDetach$warmup;

    if-eqz v2, :cond_3

    .line 4032
    iget-object v2, v2, Lo/onDetach$warmup;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 4043
    :goto_1
    new-instance v3, Lo/addWrite;

    const-string/jumbo v4, "source"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const-string v3, "pairs"

    .line 82
    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4088
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v3, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v3, Ljava/util/Map;

    invoke-static {v3, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo p1, "your_rewards_screen_load"

    .line 82
    invoke-static {p1, v3}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 5000
    iget-object p1, p0, Lo/fixLayoutEndGap;->asBinder:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/onDetach$warmup;

    if-eqz p1, :cond_4

    .line 5033
    iget-boolean p1, p1, Lo/onDetach$warmup;->ICustomTabsCallback:Z

    if-ne p1, v2, :cond_4

    .line 87
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->archivedReward:I

    invoke-virtual {p0, p1}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/offsetPosition;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lo/offsetPosition;->setVisibility(I)V

    .line 88
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->mysteryReward:I

    invoke-virtual {p0, p1}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/offsetPosition;

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lo/offsetPosition;->setVisibility(I)V

    :cond_4
    return-void
.end method
