.class public final Lo/onOptionsItemSelected;
.super Landroidx/fragment/app/Fragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onOptionsItemSelected$onMessageChannelReady;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001\u0014B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J&\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u001a\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\r2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016R \u0010\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/asympote/campaign/CampaignIntroFragment;",
        "Landroidx/fragment/app/Fragment;",
        "()V",
        "campaignObserver",
        "Landroidx/lifecycle/Observer;",
        "Lcom/dreamplug/network/internals/call/CallResult;",
        "Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
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
        "CampaignIntroCallback",
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
.field private onMessageChannelReady:Ljava/util/HashMap;

.field private final onPostMessage:Lo/setPlaybackToRemote;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPlaybackToRemote<",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 71
    new-instance v0, Lo/onOptionsItemSelected$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/onOptionsItemSelected$ICustomTabsCallback;-><init>(Lo/onOptionsItemSelected;)V

    check-cast v0, Lo/setPlaybackToRemote;

    iput-object v0, p0, Lo/onOptionsItemSelected;->onPostMessage:Lo/setPlaybackToRemote;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/onOptionsItemSelected;->onMessageChannelReady:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/onOptionsItemSelected;->onMessageChannelReady:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/onOptionsItemSelected;->onMessageChannelReady:Ljava/util/HashMap;

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

    iget-object v1, p0, Lo/onOptionsItemSelected;->onMessageChannelReady:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 33
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 34
    sget-object p1, Lo/getMaxCardElevation;->extraCallback:Lo/getMaxCardElevation;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "CampaignIntroFragment"

    const/4 v2, 0x0

    .line 1029
    invoke-interface {p1, v1, v0, v2}, Lo/findSameItem;->ICustomTabsCallback(Ljava/lang/String;Lo/MediaControllerCompatApi21$CallbackProxy;Z)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object p3, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    invoke-virtual {p3}, Lo/onDestroyOptionsMenu;->extraCallback()V

    const-string p3, "onboard_qr_intro_screen_load"

    .line 39
    invoke-static {p3}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    const p3, 0x7f0e0094

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 13000
    iget-object v0, p0, Lo/onOptionsItemSelected;->onMessageChannelReady:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 45
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->backgroundView:I

    invoke-virtual {p0, p1}, Lo/onOptionsItemSelected;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    const-string p2, "backgroundView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1116
    iget-object p1, p1, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 1216
    iget-object p1, p1, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    const/4 p2, 0x0

    if-eqz p1, :cond_f

    check-cast p1, Lo/setMaxFrame;

    .line 45
    check-cast p1, Lo/getComposition;

    const-string v0, "backgroundView.hierarchy"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lo/onRequestPermissionsResult;->onMessageChannelReady:Lo/onRequestPermissionsResult;

    invoke-static {}, Lo/onRequestPermissionsResult;->onMessageChannelReady()Lo/setFailureListener$extraCallback;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v1, 0x2

    .line 3369
    invoke-virtual {p1, v1}, Lo/getComposition;->onPostMessage(I)Lo/LottieAnimationView;

    move-result-object p1

    .line 3370
    instance-of v2, p1, Lo/fromAssets;

    if-eqz v2, :cond_0

    .line 3371
    check-cast p1, Lo/fromAssets;

    goto :goto_0

    .line 3373
    :cond_0
    sget-object v2, Lo/setFailureListener$extraCallback;->onTransact:Lo/setFailureListener$extraCallback;

    invoke-static {p1, v2}, Lo/playAnimation;->onMessageChannelReady(Lo/LottieAnimationView;Lo/setFailureListener$extraCallback;)Lo/fromAssets;

    move-result-object p1

    .line 4094
    :goto_0
    iget-object v2, p1, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v0, :cond_2

    if-eqz v2, :cond_1

    .line 5053
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-nez v2, :cond_3

    .line 4098
    iput-object v0, p1, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    .line 4099
    iput-object p2, p1, Lo/fromAssets;->extraCallback:Ljava/lang/Object;

    .line 4100
    invoke-virtual {p1}, Lo/fromAssets;->ICustomTabsCallback()V

    .line 4101
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 46
    :cond_3
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->iconView:I

    invoke-virtual {p0, p1}, Lo/onOptionsItemSelected;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    const-string v0, "iconView"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5116
    iget-object p1, p1, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 5216
    iget-object p1, p1, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    if-eqz p1, :cond_d

    check-cast p1, Lo/setMaxFrame;

    .line 46
    check-cast p1, Lo/getComposition;

    const-string v0, "iconView.hierarchy"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lo/onRequestPermissionsResult;->onMessageChannelReady:Lo/onRequestPermissionsResult;

    invoke-static {}, Lo/onRequestPermissionsResult;->onNavigationEvent()Lo/setFailureListener$extraCallback;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 7369
    invoke-virtual {p1, v1}, Lo/getComposition;->onPostMessage(I)Lo/LottieAnimationView;

    move-result-object p1

    .line 7370
    instance-of v1, p1, Lo/fromAssets;

    if-eqz v1, :cond_4

    .line 7371
    check-cast p1, Lo/fromAssets;

    goto :goto_3

    .line 7373
    :cond_4
    sget-object v1, Lo/setFailureListener$extraCallback;->onTransact:Lo/setFailureListener$extraCallback;

    invoke-static {p1, v1}, Lo/playAnimation;->onMessageChannelReady(Lo/LottieAnimationView;Lo/setFailureListener$extraCallback;)Lo/fromAssets;

    move-result-object p1

    .line 8094
    :goto_3
    iget-object v1, p1, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    if-eq v1, v0, :cond_6

    if-eqz v1, :cond_5

    .line 9053
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :cond_6
    :goto_4
    if-nez v3, :cond_7

    .line 8098
    iput-object v0, p1, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    .line 8099
    iput-object p2, p1, Lo/fromAssets;->extraCallback:Ljava/lang/Object;

    .line 8100
    invoke-virtual {p1}, Lo/fromAssets;->ICustomTabsCallback()V

    .line 8101
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 47
    :cond_7
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->loaderView:I

    invoke-virtual {p0, p1}, Lo/onOptionsItemSelected;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onDestroyView;

    invoke-static {p1}, Lo/prependViewToAllSpans;->onNavigationEvent(Lo/prependViewToAllSpans;)V

    .line 48
    sget-object p1, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    invoke-static {}, Lo/onDestroyOptionsMenu;->onPostMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9

    sget-object p1, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    .line 10000
    sget-object p1, Lo/onDestroyOptionsMenu;->ICustomTabsCallback:Lo/setSubtitleTextColor;

    sget-object v0, Lo/onDestroyOptionsMenu;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v0, v0, v4

    invoke-virtual {p1, v0}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_9

    .line 48
    sget-object p1, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    invoke-static {}, Lo/onDestroyOptionsMenu;->onNavigationEvent()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    goto :goto_5

    .line 52
    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 53
    instance-of v0, p1, Lo/onOptionsItemSelected$onMessageChannelReady;

    if-eqz v0, :cond_a

    .line 54
    check-cast p1, Lo/onOptionsItemSelected$onMessageChannelReady;

    invoke-interface {p1, p2}, Lo/onOptionsItemSelected$onMessageChannelReady;->extraCallback(Ljava/lang/String;)V

    goto :goto_6

    .line 49
    :cond_9
    :goto_5
    sget-object p1, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    .line 11000
    sget-object p1, Lo/onDestroyOptionsMenu;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setActive;

    .line 49
    iget-object p2, p0, Lo/onOptionsItemSelected;->onPostMessage:Lo/setPlaybackToRemote;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    .line 50
    sget-object p1, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    .line 12000
    sget-object p1, Lo/onDestroyOptionsMenu;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setActive;

    .line 50
    move-object p2, p0

    check-cast p2, Lo/toLegacyStreamType;

    iget-object v0, p0, Lo/onOptionsItemSelected;->onPostMessage:Lo/setPlaybackToRemote;

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 57
    :cond_a
    :goto_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 58
    instance-of p2, p1, Lo/onOptionsItemSelected$onMessageChannelReady;

    if-eqz p2, :cond_b

    .line 59
    move-object p2, p1

    check-cast p2, Lo/onOptionsItemSelected$onMessageChannelReady;

    invoke-interface {p2}, Lo/onOptionsItemSelected$onMessageChannelReady;->onNavigationEvent()V

    .line 60
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->ctaTextView:I

    invoke-virtual {p0, p2}, Lo/onOptionsItemSelected;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const-string v0, "ctaTextView"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    new-instance v0, Lo/onOptionsItemSelected$onNavigationEvent;

    invoke-direct {v0, p1}, Lo/onOptionsItemSelected$onNavigationEvent;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v0, Lo/onDisconnectSetValue;

    invoke-static {p2, v0}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 64
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->skip:I

    invoke-virtual {p0, p2}, Lo/onOptionsItemSelected;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const-string/jumbo v0, "skip"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    new-instance v0, Lo/onOptionsItemSelected$extraCallback;

    invoke-direct {v0, p1}, Lo/onOptionsItemSelected$extraCallback;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v0, Lo/onDisconnectSetValue;

    invoke-static {p2, v0}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    :cond_b
    return-void

    .line 7215
    :cond_c
    throw p2

    .line 6215
    :cond_d
    throw p2

    .line 3215
    :cond_e
    throw p2

    .line 2215
    :cond_f
    throw p2
.end method
