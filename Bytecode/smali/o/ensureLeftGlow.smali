.class public final Lo/ensureLeftGlow;
.super Landroidx/fragment/app/Fragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ensureLeftGlow$extraCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010%\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001$B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J&\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u001a\u0010\u001c\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u00172\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J&\u0010\u001e\u001a\u00020\u00132\u0006\u0010\u001f\u001a\u00020 2\u0016\u0008\u0002\u0010!\u001a\u0010\u0012\u0004\u0012\u00020 \u0012\u0006\u0012\u0004\u0018\u00010#0\"R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000c\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006%"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/referal/ReferViaWhatsappFragment;",
        "Landroidx/fragment/app/Fragment;",
        "()V",
        "campaignObserver",
        "Landroidx/lifecycle/Observer;",
        "Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;",
        "extra",
        "Lcom/dreamplug/fabrik/ui/lifestyle/referal/ReferViaWhatsappFragment$Data;",
        "fileToShare",
        "Ljava/io/File;",
        "shareImage",
        "Lcom/facebook/drawee/view/SimpleDraweeView;",
        "shareReferralViewModel",
        "Lcom/dreamplug/androidapp/ui/main/gem/referral/share/ShareReferralViewModel;",
        "getShareReferralViewModel",
        "()Lcom/dreamplug/androidapp/ui/main/gem/referral/share/ShareReferralViewModel;",
        "shareReferralViewModel$delegate",
        "Lkotlin/Lazy;",
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
        "tagEvent",
        "event",
        "",
        "attributes",
        "",
        "",
        "Data",
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
.field private ICustomTabsCallback:Lo/setSpeed;

.field private final extraCallback:Lo/setPlaybackToRemote;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPlaybackToRemote<",
            "Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;",
            ">;"
        }
    .end annotation
.end field

.field private onMessageChannelReady:Ljava/io/File;

.field private final onNavigationEvent:Lo/isSameListener;

.field private onPostMessage:Lo/ensureLeftGlow$extraCallback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 100
    new-instance v0, Lo/ensureLeftGlow$onNavigationEvent;

    invoke-direct {v0, p0}, Lo/ensureLeftGlow$onNavigationEvent;-><init>(Lo/removeOnActiveChangeListener;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 100
    iput-object v1, p0, Lo/ensureLeftGlow;->onNavigationEvent:Lo/isSameListener;

    .line 72
    new-instance v0, Lo/ensureLeftGlow$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/ensureLeftGlow$ICustomTabsCallback;-><init>(Lo/ensureLeftGlow;)V

    check-cast v0, Lo/setPlaybackToRemote;

    iput-object v0, p0, Lo/ensureLeftGlow;->extraCallback:Lo/setPlaybackToRemote;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/ensureLeftGlow;)Ljava/io/File;
    .locals 0

    .line 28
    iget-object p0, p0, Lo/ensureLeftGlow;->onMessageChannelReady:Ljava/io/File;

    return-object p0
.end method

.method public static final synthetic extraCallback(Lo/ensureLeftGlow;)Lo/ensureLeftGlow$extraCallback;
    .locals 0

    .line 28
    iget-object p0, p0, Lo/ensureLeftGlow;->onPostMessage:Lo/ensureLeftGlow$extraCallback;

    return-object p0
.end method

.method public static final synthetic extraCallback(Lo/ensureLeftGlow;Ljava/io/File;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lo/ensureLeftGlow;->onMessageChannelReady:Ljava/io/File;

    return-void
.end method

.method public static final synthetic onMessageChannelReady(Lo/ensureLeftGlow;)Lo/setCompatVectorFromResourcesEnabled;
    .locals 0

    .line 5000
    iget-object p0, p0, Lo/ensureLeftGlow;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/setCompatVectorFromResourcesEnabled;

    return-object p0
.end method

.method public static final synthetic onNavigationEvent(Lo/ensureLeftGlow;)Lo/setSpeed;
    .locals 1

    .line 28
    iget-object p0, p0, Lo/ensureLeftGlow;->ICustomTabsCallback:Lo/setSpeed;

    if-nez p0, :cond_0

    const-string/jumbo v0, "shareImage"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 37
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    sget-object p1, Lo/getMaxCardElevation;->extraCallback:Lo/getMaxCardElevation;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "ShareViaWhatsappFragment"

    const/4 v2, 0x0

    .line 1029
    invoke-interface {p1, v1, v0, v2}, Lo/findSameItem;->ICustomTabsCallback(Ljava/lang/String;Lo/MediaControllerCompatApi21$CallbackProxy;Z)V

    .line 39
    invoke-static {p0}, Lo/extraCallback;->ICustomTabsCallback(Landroidx/fragment/app/Fragment;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lo/ensureLeftGlow$extraCallback;

    iput-object p1, p0, Lo/ensureLeftGlow;->onPostMessage:Lo/ensureLeftGlow$extraCallback;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0e026d

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0b0778

    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo p2, "view.findViewById(R.id.shareImage)"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/setSpeed;

    iput-object p1, p0, Lo/ensureLeftGlow;->ICustomTabsCallback:Lo/setSpeed;

    .line 51
    sget-object p1, Lo/getShowText;->ICustomTabsCallback:Lo/getShowText;

    invoke-static {}, Lo/getShowText;->ICustomTabsCallback()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object p2, p0, Lo/ensureLeftGlow;->extraCallback:Lo/setPlaybackToRemote;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    .line 52
    sget-object p1, Lo/getShowText;->ICustomTabsCallback:Lo/getShowText;

    invoke-static {}, Lo/getShowText;->ICustomTabsCallback()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lo/toLegacyStreamType;

    move-result-object p2

    iget-object v0, p0, Lo/ensureLeftGlow;->extraCallback:Lo/setPlaybackToRemote;

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    const/4 p1, 0x1

    new-array p2, p1, [Lo/addWrite;

    .line 54
    iget-object v0, p0, Lo/ensureLeftGlow;->onPostMessage:Lo/ensureLeftGlow$extraCallback;

    if-eqz v0, :cond_0

    .line 1097
    iget-object v0, v0, Lo/ensureLeftGlow$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2043
    :goto_0
    new-instance v1, Lo/addWrite;

    const-string/jumbo v2, "source"

    invoke-direct {v1, v2, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    aput-object v1, p2, v0

    const-string v0, "pairs"

    .line 54
    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2088
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "refer_via_whatsapp_open"

    .line 54
    invoke-static {p1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 3000
    iget-object p1, p0, Lo/ensureLeftGlow;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setCompatVectorFromResourcesEnabled;

    .line 3025
    iget-object p1, p1, Lo/setCompatVectorFromResourcesEnabled;->onMessageChannelReady:Lo/setActive;

    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lo/toLegacyStreamType;

    move-result-object p2

    new-instance v0, Lo/ensureLeftGlow$onPostMessage;

    invoke-direct {v0, p0}, Lo/ensureLeftGlow$onPostMessage;-><init>(Lo/ensureLeftGlow;)V

    check-cast v0, Lo/setPlaybackToRemote;

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    return-void
.end method
