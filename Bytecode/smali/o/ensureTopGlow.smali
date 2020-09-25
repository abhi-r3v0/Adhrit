.class public final Lo/ensureTopGlow;
.super Lo/zzc;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016J\u0012\u0010\u001a\u001a\u00020\u00192\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J&\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\"2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u001a\u0010#\u001a\u00020\u00192\u0006\u0010$\u001a\u00020\u001e2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0008\u001a\u00020\t8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/referal/FabrikReferralIntroDialogFragment;",
        "Lcom/dreamplug/androidapp/ui/widget/FullScreenDialogFragment;",
        "()V",
        "bottomSheetBehavior",
        "Lcom/google/android/material/bottomsheet/BottomSheetBehavior;",
        "Landroid/widget/FrameLayout;",
        "extra",
        "Lcom/dreamplug/fabrik/ui/FabrikFragmentExtraData$SourceExtra;",
        "navigator",
        "Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "getNavigator",
        "()Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "navigator$delegate",
        "Lkotlin/Lazy;",
        "pagerAdapter",
        "Lcom/dreamplug/fabrik/ui/lifestyle/referal/FabrikReferalIntroPagerAdapter;",
        "getPagerAdapter",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/referal/FabrikReferalIntroPagerAdapter;",
        "setPagerAdapter",
        "(Lcom/dreamplug/fabrik/ui/lifestyle/referal/FabrikReferalIntroPagerAdapter;)V",
        "source",
        "",
        "viewPager",
        "Landroidx/viewpager/widget/ViewPager;",
        "onBackPressed",
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
.field private ICustomTabsCallback:Lo/onDetach$getDefaultImpl;

.field private ICustomTabsCallback$Stub:Ljava/util/HashMap;

.field private extraCallback:Ljava/lang/String;

.field private onMessageChannelReady:Lo/PlaybackStateCompat;

.field final onNavigationEvent:Lo/isSameListener;

.field public onPostMessage:Lo/ensureBottomGlow;

.field private onRelationshipValidationResult:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Lo/zzc;-><init>()V

    const-string v0, "$this$lazyNavigator"

    .line 32
    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14072
    new-instance v0, Lo/setAddDuration$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/setAddDuration$onMessageChannelReady;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 32
    iput-object v1, p0, Lo/ensureTopGlow;->onNavigationEvent:Lo/isSameListener;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/ensureTopGlow;)Lo/PlaybackStateCompat;
    .locals 1

    .line 26
    iget-object p0, p0, Lo/ensureTopGlow;->onMessageChannelReady:Lo/PlaybackStateCompat;

    if-nez p0, :cond_0

    const-string/jumbo v0, "viewPager"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic extraCallback(Lo/ensureTopGlow;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .locals 1

    .line 26
    iget-object p0, p0, Lo/ensureTopGlow;->onRelationshipValidationResult:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez p0, :cond_0

    const-string v0, "bottomSheetBehavior"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic onPostMessage(Lo/ensureTopGlow;)Ljava/lang/String;
    .locals 1

    .line 26
    iget-object p0, p0, Lo/ensureTopGlow;->extraCallback:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string/jumbo v0, "source"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 37
    invoke-super {p0, p1}, Lo/zzc;->onCreate(Landroid/os/Bundle;)V

    .line 38
    sget-object p1, Lo/getMaxCardElevation;->extraCallback:Lo/getMaxCardElevation;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "GemIntroDialogFragment"

    const/4 v2, 0x0

    .line 1029
    invoke-interface {p1, v1, v0, v2}, Lo/findSameItem;->ICustomTabsCallback(Ljava/lang/String;Lo/MediaControllerCompatApi21$CallbackProxy;Z)V

    .line 39
    invoke-static {p0}, Lo/extraCallback;->ICustomTabsCallback(Landroidx/fragment/app/Fragment;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lo/onDetach$getDefaultImpl;

    iput-object p1, p0, Lo/ensureTopGlow;->ICustomTabsCallback:Lo/onDetach$getDefaultImpl;

    if-eqz p1, :cond_0

    .line 1076
    iget-object p1, p1, Lo/onDetach$getDefaultImpl;->onMessageChannelReady:Ljava/lang/String;

    if-nez p1, :cond_1

    :cond_0
    const-string p1, "NA"

    .line 40
    :cond_1
    iput-object p1, p0, Lo/ensureTopGlow;->extraCallback:Ljava/lang/String;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0e00cc

    .line 45
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const-string/jumbo p2, "view"

    .line 46
    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->viewPager:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/getUseCompatPadding;

    const-string/jumbo p3, "view.viewPager"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lo/PlaybackStateCompat;

    iput-object p2, p0, Lo/ensureTopGlow;->onMessageChannelReady:Lo/PlaybackStateCompat;

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Lo/zzc;->onDestroyView()V

    .line 16000
    iget-object v0, p0, Lo/ensureTopGlow;->ICustomTabsCallback$Stub:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onPostMessage(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/ensureTopGlow;->ICustomTabsCallback$Stub:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/ensureTopGlow;->ICustomTabsCallback$Stub:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/ensureTopGlow;->ICustomTabsCallback$Stub:Ljava/util/HashMap;

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

    iget-object v1, p0, Lo/ensureTopGlow;->ICustomTabsCallback$Stub:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final synthetic onRelationshipValidationResult()Lo/addWrites;
    .locals 1

    .line 13153
    invoke-virtual {p0}, Lo/onAudioInfoChanged;->m_()V

    .line 26
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method

.method public final onTransact()V
    .locals 1

    iget-object v0, p0, Lo/ensureTopGlow;->ICustomTabsCallback$Stub:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-super {p0, p1, p2}, Lo/zzc;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 52
    new-instance p1, Lo/ensureBottomGlow;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    const-string v0, "context!!"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lo/ensureTopGlow;->onMessageChannelReady:Lo/PlaybackStateCompat;

    const-string/jumbo v1, "viewPager"

    if-nez v0, :cond_1

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p1, p2, v0}, Lo/ensureBottomGlow;-><init>(Landroid/content/Context;Lo/PlaybackStateCompat;)V

    iput-object p1, p0, Lo/ensureTopGlow;->onPostMessage:Lo/ensureBottomGlow;

    .line 56
    iget-object p1, p0, Lo/ensureTopGlow;->onMessageChannelReady:Lo/PlaybackStateCompat;

    if-nez p1, :cond_2

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_2
    iget-object p2, p0, Lo/ensureTopGlow;->onPostMessage:Lo/ensureBottomGlow;

    const-string v0, "pagerAdapter"

    if-nez p2, :cond_3

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_3
    check-cast p2, Lo/toKeyCode;

    invoke-virtual {p1, p2}, Lo/PlaybackStateCompat;->setAdapter(Lo/toKeyCode;)V

    .line 57
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    sget-object p2, Lo/getShowText;->ICustomTabsCallback:Lo/getShowText;

    invoke-static {}, Lo/getShowText;->ICustomTabsCallback()Landroidx/lifecycle/LiveData;

    move-result-object p2

    .line 1320
    iget-object p2, p2, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 1321
    sget-object v2, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v3, 0x0

    if-eq p2, v2, :cond_4

    goto :goto_0

    :cond_4
    move-object p2, v3

    .line 58
    :goto_0
    check-cast p2, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-eqz p2, :cond_8

    .line 2042
    iget-object p2, p2, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;->mayLaunchUrl:Ljava/util/List;

    if-eqz p2, :cond_8

    .line 58
    check-cast p2, Ljava/lang/Iterable;

    .line 163
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/dreamplug/androidapp/data/repository/campaign/GemIntroDetails;

    .line 2069
    iget v6, v6, Lcom/dreamplug/androidapp/data/repository/campaign/GemIntroDetails;->onNavigationEvent:I

    if-nez v6, :cond_6

    const/4 v6, 0x1

    goto :goto_1

    :cond_6
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_5

    goto :goto_2

    :cond_7
    move-object v5, v3

    .line 164
    :goto_2
    check-cast v5, Lcom/dreamplug/androidapp/data/repository/campaign/GemIntroDetails;

    goto :goto_3

    :cond_8
    move-object v5, v3

    .line 59
    :goto_3
    sget-object p2, Lo/getShowText;->ICustomTabsCallback:Lo/getShowText;

    invoke-static {}, Lo/getShowText;->ICustomTabsCallback()Landroidx/lifecycle/LiveData;

    move-result-object p2

    .line 2320
    iget-object p2, p2, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object v6, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq p2, v6, :cond_9

    goto :goto_4

    :cond_9
    move-object p2, v3

    .line 59
    :goto_4
    check-cast p2, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;

    if-eqz p2, :cond_d

    .line 3042
    iget-object p2, p2, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;->mayLaunchUrl:Ljava/util/List;

    if-eqz p2, :cond_d

    .line 59
    check-cast p2, Ljava/lang/Iterable;

    .line 165
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/dreamplug/androidapp/data/repository/campaign/GemIntroDetails;

    .line 3069
    iget v7, v7, Lcom/dreamplug/androidapp/data/repository/campaign/GemIntroDetails;->onNavigationEvent:I

    if-ne v7, v4, :cond_b

    const/4 v7, 0x1

    goto :goto_5

    :cond_b
    const/4 v7, 0x0

    :goto_5
    if-eqz v7, :cond_a

    goto :goto_6

    :cond_c
    move-object v6, v3

    .line 166
    :goto_6
    check-cast v6, Lcom/dreamplug/androidapp/data/repository/campaign/GemIntroDetails;

    goto :goto_7

    :cond_d
    move-object v6, v3

    .line 60
    :goto_7
    sget-object p2, Lo/getShowText;->ICustomTabsCallback:Lo/getShowText;

    .line 4060
    invoke-static {}, Lo/getShowText;->ICustomTabsCallback()Landroidx/lifecycle/LiveData;

    move-result-object p2

    .line 4320
    iget-object p2, p2, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 4321
    sget-object v7, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq p2, v7, :cond_e

    goto :goto_8

    :cond_e
    move-object p2, v3

    .line 4060
    :goto_8
    check-cast p2, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;

    if-eqz p2, :cond_f

    .line 5040
    iget-object p2, p2, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;->extraCommand:Lcom/dreamplug/androidapp/data/repository/campaign/CampaignIntroDetails;

    goto :goto_9

    :cond_f
    move-object p2, v3

    :goto_9
    if-eqz p2, :cond_10

    .line 62
    new-instance v7, Lo/ensureBottomGlow$ICustomTabsCallback;

    .line 5059
    iget-object v8, p2, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignIntroDetails;->onPostMessage:Ljava/lang/String;

    .line 63
    check-cast v8, Ljava/lang/CharSequence;

    .line 5061
    iget-object v9, p2, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignIntroDetails;->onNavigationEvent:Ljava/lang/String;

    const v10, 0x7f120036

    .line 62
    invoke-direct {v7, v8, v9, v10}, Lo/ensureBottomGlow$ICustomTabsCallback;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    invoke-virtual {p1, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_10
    new-instance v7, Lo/ensureBottomGlow$ICustomTabsCallback;

    if-eqz v5, :cond_11

    .line 5071
    iget-object v8, v5, Lcom/dreamplug/androidapp/data/repository/campaign/GemIntroDetails;->extraCallback:Ljava/lang/String;

    if-eqz v8, :cond_11

    goto :goto_a

    :cond_11
    const-string v8, "how do you earn gems?"

    .line 69
    :goto_a
    check-cast v8, Ljava/lang/CharSequence;

    if-eqz v5, :cond_12

    .line 5073
    iget-object v5, v5, Lcom/dreamplug/androidapp/data/repository/campaign/GemIntroDetails;->onPostMessage:Ljava/lang/String;

    if-nez v5, :cond_13

    :cond_12
    const-string/jumbo v5, "you earn gems when you refer friends to CRED and make their first payment"

    :cond_13
    const v9, 0x7f120037

    .line 68
    invoke-direct {v7, v8, v5, v9}, Lo/ensureBottomGlow$ICustomTabsCallback;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    invoke-virtual {p1, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v5, Lo/ensureBottomGlow$ICustomTabsCallback;

    if-eqz v6, :cond_14

    .line 6071
    iget-object v7, v6, Lcom/dreamplug/androidapp/data/repository/campaign/GemIntroDetails;->extraCallback:Ljava/lang/String;

    if-eqz v7, :cond_14

    goto :goto_b

    :cond_14
    const-string/jumbo v7, "what can you get from gems?"

    .line 74
    :goto_b
    check-cast v7, Ljava/lang/CharSequence;

    if-eqz v6, :cond_15

    .line 6073
    iget-object v6, v6, Lcom/dreamplug/androidapp/data/repository/campaign/GemIntroDetails;->onPostMessage:Ljava/lang/String;

    if-nez v6, :cond_16

    :cond_15
    const-string v6, "redeem exclusive rewards with gems that only gems can unlock for you"

    :cond_16
    const v8, 0x7f120038

    .line 73
    invoke-direct {v5, v7, v6, v8}, Lo/ensureBottomGlow$ICustomTabsCallback;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    invoke-virtual {p1, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v5, p0, Lo/ensureTopGlow;->onMessageChannelReady:Lo/PlaybackStateCompat;

    if-nez v5, :cond_17

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_17
    new-instance v6, Lo/ensureTopGlow$onMessageChannelReady;

    invoke-direct {v6, p0}, Lo/ensureTopGlow$onMessageChannelReady;-><init>(Lo/ensureTopGlow;)V

    .line 107
    invoke-virtual {v6, v2}, Lo/ensureTopGlow$onMessageChannelReady;->onMessageChannelReady(I)V

    .line 106
    check-cast v6, Lo/PlaybackStateCompat$onPostMessage;

    .line 6723
    iget-object v7, v5, Lo/PlaybackStateCompat;->extraCallback:Ljava/util/List;

    if-nez v7, :cond_18

    .line 6724
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v5, Lo/PlaybackStateCompat;->extraCallback:Ljava/util/List;

    .line 6726
    :cond_18
    iget-object v5, v5, Lo/PlaybackStateCompat;->extraCallback:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v5, p0, Lo/ensureTopGlow;->onPostMessage:Lo/ensureBottomGlow;

    if-nez v5, :cond_19

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_19
    const-string v0, "rList"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7080
    iput-object p1, v5, Lo/ensureBottomGlow;->onNavigationEvent:Ljava/util/ArrayList;

    .line 7081
    invoke-virtual {v5}, Lo/toKeyCode;->onNavigationEvent()V

    .line 110
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->pageIndicator:I

    invoke-virtual {p0, p1}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/makeOptionalFitsSystemWindows;

    iget-object v0, p0, Lo/ensureTopGlow;->onMessageChannelReady:Lo/PlaybackStateCompat;

    if-nez v0, :cond_1a

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1a
    invoke-virtual {p1, v0}, Lo/makeOptionalFitsSystemWindows;->setViewPager(Lo/PlaybackStateCompat;)V

    .line 111
    iget-object p1, p0, Lo/ensureTopGlow;->onMessageChannelReady:Lo/PlaybackStateCompat;

    if-nez p1, :cond_1b

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1b
    new-instance v0, Lo/ensureTopGlow$onNavigationEvent;

    invoke-direct {v0, p0}, Lo/ensureTopGlow$onNavigationEvent;-><init>(Lo/ensureTopGlow;)V

    check-cast v0, Ljava/lang/Runnable;

    const-wide/16 v5, 0xc8

    invoke-virtual {p1, v0, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "Resources.getSystem()"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v5, 0x43980000    # 304.0f

    .line 8010
    invoke-static {v4, v5, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    .line 117
    sget-object v5, Lo/sortAndDedup;->onPostMessage:Lo/sortAndDedup;

    .line 9000
    sget-object v5, Lo/sortAndDedup;->extraCallback:Lo/isSameListener;

    invoke-interface {v5}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/sortAndDedup$ICustomTabsCallback;

    .line 9043
    iget v5, v5, Lo/sortAndDedup$ICustomTabsCallback;->ICustomTabsCallback:I

    sub-int/2addr v5, p1

    const/4 p1, 0x2

    .line 118
    div-int/2addr v5, p1

    .line 10009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v6, 0x41a00000    # 20.0f

    .line 10010
    invoke-static {v4, v6, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 120
    div-int/lit8 v6, v5, 0x2

    if-le v6, v0, :cond_1c

    goto :goto_c

    :cond_1c
    move v0, v6

    :goto_c
    sub-int v0, v5, v0

    .line 122
    iget-object v6, p0, Lo/ensureTopGlow;->onMessageChannelReady:Lo/PlaybackStateCompat;

    if-nez v6, :cond_1d

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1d
    invoke-virtual {v6, v0}, Lo/PlaybackStateCompat;->setPageMargin(I)V

    .line 123
    iget-object v0, p0, Lo/ensureTopGlow;->onMessageChannelReady:Lo/PlaybackStateCompat;

    if-nez v0, :cond_1e

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1e
    iget-object v6, p0, Lo/ensureTopGlow;->onMessageChannelReady:Lo/PlaybackStateCompat;

    if-nez v6, :cond_1f

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1f
    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Lo/ensureTopGlow;->onMessageChannelReady:Lo/PlaybackStateCompat;

    if-nez v7, :cond_20

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_20
    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {v0, v5, v6, v5, v1}, Landroid/view/View;->setPadding(IIII)V

    new-array v0, p1, [Lo/addWrite;

    .line 124
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 10043
    new-instance v5, Lo/addWrite;

    const-string/jumbo v6, "screen_name"

    invoke-direct {v5, v6, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v0, v2

    .line 124
    iget-object v1, p0, Lo/ensureTopGlow;->extraCallback:Ljava/lang/String;

    const-string/jumbo v2, "source"

    if-nez v1, :cond_21

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 11043
    :cond_21
    new-instance v5, Lo/addWrite;

    invoke-direct {v5, v2, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v0, v4

    const-string v1, "pairs"

    .line 124
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11088
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v1, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "booster_coins_intro_load"

    .line 124
    invoke-static {p1, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 126
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->ctaButton:I

    invoke-virtual {p0, p1}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    const-string v0, "ctaButton"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_22

    .line 12063
    iget-object v3, p2, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignIntroDetails;->ICustomTabsCallback:Ljava/lang/String;

    .line 126
    :cond_22
    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->ctaButton:I

    invoke-virtual {p0, p1}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance p2, Lo/ensureTopGlow$extraCallback;

    invoke-direct {p2, p0}, Lo/ensureTopGlow$extraCallback;-><init>(Lo/ensureTopGlow;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 133
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->bottomsheetView:I

    invoke-virtual {p0, p1}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onMessageChannelReady(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    const-string p2, "BottomSheetBehavior.from(bottomsheetView)"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/ensureTopGlow;->onRelationshipValidationResult:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const-string p2, "bottomSheetBehavior"

    if-nez p1, :cond_23

    .line 134
    invoke-static {p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_23
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    .line 135
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->bottomsheetView:I

    invoke-virtual {p0, p1}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    new-instance v0, Lo/ensureTopGlow$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/ensureTopGlow$ICustomTabsCallback;-><init>(Lo/ensureTopGlow;)V

    check-cast v0, Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 139
    iget-object p1, p0, Lo/ensureTopGlow;->onRelationshipValidationResult:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez p1, :cond_24

    invoke-static {p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_24
    new-instance p2, Lo/ensureTopGlow$onPostMessage;

    invoke-direct {p2, p0}, Lo/ensureTopGlow$onPostMessage;-><init>(Lo/ensureTopGlow;)V

    check-cast p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onPostMessage;

    const-string v0, "BottomSheetBehavior"

    const-string v1, "BottomSheetBehavior now supports multiple callbacks. `setBottomSheetCallback()` removes all existing callbacks, including ones set internally by library authors, which may result in unintended behavior. This may change in the future. Please use `addBottomSheetCallback()` and `removeBottomSheetCallback()` instead to set your own callbacks."

    .line 12884
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12891
    iget-object v0, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->postMessage:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 12893
    iget-object p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->postMessage:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
