.class public abstract Lo/updateAnchorFromChildren;
.super Landroidx/fragment/app/Fragment;
.source ""

# interfaces
.implements Lo/startActivityForResult$onNavigationEvent;
.implements Lo/hasGapsToFix$onMessageChannelReady;


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00b6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008&\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010F\u001a\u00020G2\u0006\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u00020\u001eH\u0016J\u0008\u0010K\u001a\u000200H\u0016J\u0008\u0010L\u001a\u00020GH&J\u0008\u0010M\u001a\u00020NH&J\u0008\u0010O\u001a\u00020PH&J\n\u0010Q\u001a\u0004\u0018\u00010RH&J\u0018\u0010S\u001a\u00020I2\u0006\u0010J\u001a\u00020\u001e2\u0006\u0010T\u001a\u00020UH\u0016J\u0010\u0010V\u001a\u00020\u001e2\u0006\u0010W\u001a\u00020\u001eH\u0016J\n\u0010X\u001a\u0004\u0018\u00010YH&J\n\u0010Z\u001a\u0004\u0018\u00010UH&J\u0018\u0010[\u001a\u00020G2\u0006\u0010\\\u001a\u00020N2\u0006\u0010]\u001a\u00020^H\u0016J\u0006\u0010_\u001a\u00020GJ\u0010\u0010`\u001a\u0002002\u0006\u0010a\u001a\u00020\u001eH\u0016J\"\u0010b\u001a\u00020G2\u0006\u0010c\u001a\u00020N2\u0006\u0010d\u001a\u0002042\u0008\u0010H\u001a\u0004\u0018\u00010IH\u0016J\u001a\u0010e\u001a\u00020G2\u0006\u0010f\u001a\u00020g2\u0008\u0010h\u001a\u0004\u0018\u00010iH\u0016J\u0018\u0010j\u001a\u00020G2\u0006\u0010k\u001a\u00020^2\u0006\u0010l\u001a\u00020NH\u0002J\u001a\u0010m\u001a\u00020G2\u0006\u0010l\u001a\u00020N2\u0008\u0010n\u001a\u0004\u0018\u00010NH\u0002J\u0018\u0010o\u001a\u00020G2\u0006\u0010d\u001a\u00020^2\u0006\u0010p\u001a\u00020\u001eH\u0002J\u000e\u0010q\u001a\u00020G2\u0006\u0010r\u001a\u00020UJ\u0012\u0010s\u001a\u00020G2\u0008\u0010t\u001a\u0004\u0018\u00010NH\u0002J\u0006\u0010u\u001a\u00020GJ\u0006\u0010v\u001a\u00020GR\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u001b\u0010\u000b\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\n\u001a\u0004\u0008\r\u0010\u000eR\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001b\u0010\u0018\u001a\u00020\u00198FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\n\u001a\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u001d\u001a\u00020\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u001a\u0010#\u001a\u00020\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010 \"\u0004\u0008%\u0010\"R\u001a\u0010&\u001a\u00020\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010 \"\u0004\u0008(\u0010\"R\u001a\u0010)\u001a\u00020\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010 \"\u0004\u0008+\u0010\"R\u001a\u0010,\u001a\u00020\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010 \"\u0004\u0008.\u0010\"R\u000e\u0010/\u001a\u000200X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u00101\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002040302X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u00105\u001a\u000206X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u00108\"\u0004\u00089\u0010:R\u001d\u0010;\u001a\u0004\u0018\u00010<8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008?\u0010\n\u001a\u0004\u0008=\u0010>R#\u0010@\u001a\n B*\u0004\u0018\u00010A0A8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008E\u0010\n\u001a\u0004\u0008C\u0010D\u00a8\u0006w"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/LifeStyleClaimBaseFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/dreamplug/fabrik/helper/ui/StickHeaderItemDecoration$StickyHeaderInterface;",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "()V",
        "audioFocusManager",
        "Lcom/dreamplug/fabrik/helper/soundprox/SoundProxAudioFocusManager;",
        "getAudioFocusManager",
        "()Lcom/dreamplug/fabrik/helper/soundprox/SoundProxAudioFocusManager;",
        "audioFocusManager$delegate",
        "Lkotlin/Lazy;",
        "audioManager",
        "Landroid/media/AudioManager;",
        "getAudioManager",
        "()Landroid/media/AudioManager;",
        "audioManager$delegate",
        "cancellable",
        "Lcom/dreamplug/utils/helpers/Cancellable;",
        "claimedRewardAdapter",
        "Lcom/dreamplug/utils/list/VerticalAdapter;",
        "getClaimedRewardAdapter",
        "()Lcom/dreamplug/utils/list/VerticalAdapter;",
        "setClaimedRewardAdapter",
        "(Lcom/dreamplug/utils/list/VerticalAdapter;)V",
        "claimedViewModel",
        "Lcom/dreamplug/fabrik/ui/lifestyle/LifeStyleClaimedViewModel;",
        "getClaimedViewModel",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/LifeStyleClaimedViewModel;",
        "claimedViewModel$delegate",
        "currentVolume",
        "",
        "getCurrentVolume",
        "()I",
        "setCurrentVolume",
        "(I)V",
        "dp15",
        "getDp15",
        "setDp15",
        "dp25",
        "getDp25",
        "setDp25",
        "dp42",
        "getDp42",
        "setDp42",
        "dp8",
        "getDp8",
        "setDp8",
        "isSharingReward",
        "",
        "lifestyleListObserver",
        "Landroidx/lifecycle/Observer;",
        "",
        "Lcom/dreamplug/utils/list/ListItem;",
        "linearLayoutManager",
        "Landroidx/recyclerview/widget/LinearLayoutManager;",
        "getLinearLayoutManager",
        "()Landroidx/recyclerview/widget/LinearLayoutManager;",
        "setLinearLayoutManager",
        "(Landroidx/recyclerview/widget/LinearLayoutManager;)V",
        "navigator",
        "Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "getNavigator",
        "()Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "navigator$delegate",
        "publisher",
        "Lcom/cred/sproxlib/share/medium/sound/SoundPublisher;",
        "kotlin.jvm.PlatformType",
        "getPublisher",
        "()Lcom/cred/sproxlib/share/medium/sound/SoundPublisher;",
        "publisher$delegate",
        "bindHeaderData",
        "",
        "holder",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "headerPosition",
        "disableScroll",
        "emptyCtaClicked",
        "getClaimedRewardType",
        "",
        "getEmptyScreenData",
        "Lcom/dreamplug/fabrik/helper/ui/widget/EmptyScreenView$EmptyScreenData;",
        "getEmptyView",
        "Lcom/dreamplug/fabrik/helper/ui/widget/EmptyScreenView;",
        "getHeaderHolder",
        "parent",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "getHeaderPositionForItem",
        "pos",
        "getLoaderView",
        "Lcom/dreamplug/fabrik/helper/ui/widget/FabrikLoaderView;",
        "getRecyclerView",
        "handleCta",
        "cta",
        "lifestyleListItem",
        "Lcom/dreamplug/fabrik/ui/lifestyle/LifestyleClaimedItem;",
        "hideLoader",
        "isHeader",
        "itemPosition",
        "onClick",
        "type",
        "data",
        "onViewCreated",
        "view",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "senBroadcastEvent",
        "item",
        "status",
        "sendSoundBroadcastResult",
        "code",
        "setItemBroadcastAnimationState",
        "state",
        "setRecyclerViewScrollListener",
        "recyclerView",
        "shareCurrentCard",
        "shareMsg",
        "showLoader",
        "showLoaderWithDelay",
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
.field public ICustomTabsCallback:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private ICustomTabsCallback$Stub:Z

.field private ICustomTabsCallback$Stub$Proxy:Ljava/util/HashMap;

.field private final ICustomTabsService:Lo/isSameListener;

.field private asBinder:Lo/updateDxDy$onMessageChannelReady;

.field private final asInterface:Lo/isSameListener;

.field final extraCallback:Lo/isSameListener;

.field onMessageChannelReady:I

.field final onNavigationEvent:Lo/isSameListener;

.field public onPostMessage:Lo/repositionToWrapContentIfNecessary;

.field private onRelationshipValidationResult:I

.field private final onTransact:Lo/setPlaybackToRemote;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPlaybackToRemote<",
            "Ljava/util/List<",
            "Lo/StaggeredGridLayoutManager;",
            ">;>;"
        }
    .end annotation
.end field

.field private final warmup:Lo/isSameListener;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 64
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 550
    new-instance v0, Lo/updateAnchorFromChildren$onNavigationEvent;

    invoke-direct {v0, p0}, Lo/updateAnchorFromChildren$onNavigationEvent;-><init>(Lo/removeOnActiveChangeListener;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50251
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 550
    iput-object v2, p0, Lo/updateAnchorFromChildren;->onNavigationEvent:Lo/isSameListener;

    .line 50252
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "Resources.getSystem()"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v3, 0x1

    const/high16 v4, 0x41000000    # 8.0f

    .line 50253
    invoke-static {v3, v4, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 50254
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v4, 0x41700000    # 15.0f

    .line 50255
    invoke-static {v3, v4, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 50256
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v4, 0x41c80000    # 25.0f

    .line 50257
    invoke-static {v3, v4, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 50258
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v2, 0x42280000    # 42.0f

    .line 50259
    invoke-static {v3, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 93
    iput v0, p0, Lo/updateAnchorFromChildren;->onRelationshipValidationResult:I

    const-string v0, "$this$lazySafeNavigator"

    .line 125
    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50260
    new-instance v0, Lo/setAddDuration$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/setAddDuration$ICustomTabsCallback;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50261
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 125
    iput-object v2, p0, Lo/updateAnchorFromChildren;->extraCallback:Lo/isSameListener;

    .line 143
    new-instance v0, Lo/updateAnchorFromChildren$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/updateAnchorFromChildren$ICustomTabsCallback;-><init>(Lo/updateAnchorFromChildren;)V

    check-cast v0, Lo/setPlaybackToRemote;

    iput-object v0, p0, Lo/updateAnchorFromChildren;->onTransact:Lo/setPlaybackToRemote;

    .line 531
    new-instance v0, Lo/updateAnchorFromChildren$extraCallback;

    invoke-direct {v0, p0}, Lo/updateAnchorFromChildren$extraCallback;-><init>(Lo/updateAnchorFromChildren;)V

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50262
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 531
    iput-object v2, p0, Lo/updateAnchorFromChildren;->asInterface:Lo/isSameListener;

    .line 535
    new-instance v0, Lo/updateAnchorFromChildren$onTransact;

    invoke-direct {v0, p0}, Lo/updateAnchorFromChildren$onTransact;-><init>(Lo/updateAnchorFromChildren;)V

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50263
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 535
    iput-object v2, p0, Lo/updateAnchorFromChildren;->ICustomTabsService:Lo/isSameListener;

    .line 540
    new-instance v0, Lo/updateAnchorFromChildren$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/updateAnchorFromChildren$onMessageChannelReady;-><init>(Lo/updateAnchorFromChildren;)V

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50264
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 540
    iput-object v1, p0, Lo/updateAnchorFromChildren;->warmup:Lo/isSameListener;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/updateAnchorFromChildren;)Landroid/media/AudioManager;
    .locals 0

    .line 50266
    iget-object p0, p0, Lo/updateAnchorFromChildren;->asInterface:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    return-object p0
.end method

.method public static final synthetic ICustomTabsCallback(Lo/updateAnchorFromChildren;Lo/updateAnchorInfoForLayout;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lo/updateAnchorFromChildren;->onMessageChannelReady(Lo/updateAnchorInfoForLayout;I)V

    return-void
.end method

.method private final onMessageChannelReady(Lo/updateAnchorInfoForLayout;I)V
    .locals 5

    .line 457
    iget-object v0, p0, Lo/updateAnchorFromChildren;->onPostMessage:Lo/repositionToWrapContentIfNecessary;

    const-string v1, "claimedRewardAdapter"

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 50206
    :cond_0
    iget-object v0, v0, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/checkSpanForGap;

    .line 50207
    iget-object v0, v0, Lo/checkSpanForGap;->ICustomTabsCallback:Ljava/util/List;

    .line 457
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/StaggeredGridLayoutManager;

    .line 458
    instance-of v3, v2, Lo/updateAnchorInfoForLayout;

    if-eqz v3, :cond_1

    check-cast v2, Lo/updateAnchorInfoForLayout;

    .line 50208
    iget-object v3, v2, Lo/updateAnchorInfoForLayout;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedResponse;

    .line 50209
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedResponse;->onPostMessage:Ljava/lang/String;

    .line 50210
    iget-object v4, p1, Lo/updateAnchorInfoForLayout;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedResponse;

    .line 50211
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedResponse;->onPostMessage:Ljava/lang/String;

    .line 458
    invoke-static {v3, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 50212
    iput p2, v2, Lo/updateAnchorInfoForLayout;->extraCallback:I

    .line 464
    iget-object p1, p0, Lo/updateAnchorFromChildren;->onPostMessage:Lo/repositionToWrapContentIfNecessary;

    if-nez p1, :cond_2

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method private static onMessageChannelReady(Lo/updateAnchorInfoForLayout;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x3

    new-array v1, v0, [Lo/addWrite;

    .line 50199
    iget-object p0, p0, Lo/updateAnchorInfoForLayout;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedResponse;

    .line 50200
    iget-object p0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedResponse;->onPostMessage:Ljava/lang/String;

    .line 50201
    new-instance v2, Lo/addWrite;

    const-string/jumbo v3, "reward_ID"

    invoke-direct {v2, v3, p0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    aput-object v2, v1, p0

    .line 50202
    new-instance p0, Lo/addWrite;

    const-string/jumbo v2, "status"

    invoke-direct {p0, v2, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x1

    aput-object p0, v1, p1

    .line 50203
    new-instance p0, Lo/addWrite;

    const-string/jumbo p1, "source"

    const-string v2, "claimed_reward_list"

    invoke-direct {p0, p1, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x2

    aput-object p0, v1, p1

    const-string p0, "pairs"

    .line 449
    invoke-static {v1, p0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50204
    new-instance p0, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(I)V

    check-cast p0, Ljava/util/Map;

    invoke-static {p0, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "cta_sound_broadcast"

    .line 448
    invoke-static {p1, p0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void
.end method

.method public static final synthetic onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x5

    new-array v1, v0, [Lo/addWrite;

    .line 50274
    new-instance v2, Lo/addWrite;

    const-string v3, "broadcast_data"

    invoke-direct {v2, v3, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    aput-object v2, v1, p1

    .line 50268
    sget-object p1, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    invoke-static {}, Lo/isInLayout;->onRelationshipValidationResult()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 50275
    new-instance v2, Lo/addWrite;

    const-string v3, "broadcast_volume"

    invoke-direct {v2, v3, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x1

    aput-object v2, v1, p1

    .line 50269
    sget-object p1, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    invoke-static {}, Lo/isInLayout;->ICustomTabsCallback$Stub()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 50276
    new-instance v2, Lo/addWrite;

    const-string v3, "broadcast_loopitr"

    invoke-direct {v2, v3, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x2

    aput-object v2, v1, p1

    .line 50270
    sget-object p1, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    invoke-static {}, Lo/isInLayout;->onTransact()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 50277
    new-instance v2, Lo/addWrite;

    const-string v3, "broadcast_band"

    invoke-direct {v2, v3, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x3

    aput-object v2, v1, p1

    .line 50278
    new-instance p1, Lo/addWrite;

    const-string v2, "broadcast_result"

    invoke-direct {p1, v2, p0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x4

    aput-object p1, v1, p0

    const-string p0, "pairs"

    .line 50267
    invoke-static {v1, p0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50279
    new-instance p0, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(I)V

    check-cast p0, Ljava/util/Map;

    invoke-static {p0, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo p1, "sound_published"

    .line 50267
    invoke-static {p1, p0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void
.end method

.method public static final synthetic onPostMessage(Lo/updateAnchorFromChildren;)Lo/setMenuVisibility;
    .locals 0

    .line 50265
    iget-object p0, p0, Lo/updateAnchorFromChildren;->warmup:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/setMenuVisibility;

    return-object p0
.end method

.method private final onPostMessage(Ljava/lang/String;)V
    .locals 3

    .line 416
    invoke-virtual {p0}, Lo/updateAnchorFromChildren;->asInterface()V

    const/4 v0, 0x0

    .line 417
    iput-boolean v0, p0, Lo/updateAnchorFromChildren;->ICustomTabsCallback$Stub:Z

    .line 418
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v1

    const-string v2, "lifecycle"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 545
    invoke-virtual {v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    sget-object v2, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 50198
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    .line 419
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->backGroundView:I

    invoke-virtual {p0, v0}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    const-string v1, "backGroundView"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->shareCardStub:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-nez v0, :cond_1

    .line 420
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->rewardShareCard:I

    invoke-virtual {p0, v0}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    new-instance v1, Lo/updateAnchorFromChildren$ICustomTabsCallback$Stub$Proxy;

    invoke-direct {v1, p0, p1}, Lo/updateAnchorFromChildren$ICustomTabsCallback$Stub$Proxy;-><init>(Lo/updateAnchorFromChildren;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public static final synthetic onPostMessage(Lo/updateAnchorFromChildren;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lo/updateAnchorFromChildren;->onPostMessage(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic onPostMessage(Lo/updateAnchorFromChildren;Lo/updateDxDy$onMessageChannelReady;)V
    .locals 0

    const/4 p1, 0x0

    .line 64
    iput-object p1, p0, Lo/updateAnchorFromChildren;->asBinder:Lo/updateDxDy$onMessageChannelReady;

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback()Lo/onViewStateRestored;
.end method

.method public ICustomTabsCallback(Ljava/lang/String;Lo/updateAnchorInfoForLayout;)V
    .locals 11

    const-string v0, "cta"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifestyleListItem"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v1, v0, [Lo/addWrite;

    .line 473
    sget-object v2, Lo/LinearLayoutManager;->onPostMessage:Lo/LinearLayoutManager;

    invoke-static {}, Lo/LinearLayoutManager;->onMessageChannelReady()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p0}, Lo/updateAnchorFromChildren;->extraCallback()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 474
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 50213
    new-instance v4, Lo/addWrite;

    const-string/jumbo v5, "section count"

    invoke-direct {v4, v5, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v3

    const/4 v2, 0x1

    .line 50214
    new-instance v4, Lo/addWrite;

    const-string v5, "cta_type"

    invoke-direct {v4, v5, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    const-string v2, "pairs"

    .line 472
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50215
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v0, "claimed_rewards_cta_click"

    .line 472
    invoke-static {v0, v2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 477
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v0, "certificate"

    .line 496
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 50235
    iget-object p1, p2, Lo/updateAnchorInfoForLayout;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedResponse;

    .line 50236
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedResponse;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;

    if-eqz p1, :cond_1

    .line 50237
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    if-eqz p1, :cond_1

    .line 50238
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;

    if-eqz p1, :cond_1

    .line 50239
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;->ICustomTabsCallback:Ljava/lang/String;

    :cond_1
    if-eqz v1, :cond_8

    .line 50240
    iget-object p1, p0, Lo/updateAnchorFromChildren;->extraCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMoveDuration;

    if-eqz p1, :cond_2

    const-string/jumbo p2, "rewardId"

    .line 499
    invoke-static {v1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50241
    new-instance p2, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;

    invoke-direct {p2, v1}, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;-><init>(Ljava/lang/String;)V

    check-cast p2, Lo/getRemoveDuration;

    invoke-virtual {p1, p2}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    :cond_2
    return-void

    :sswitch_1
    const-string v0, "deeplink"

    .line 490
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 50230
    iget-object p1, p2, Lo/updateAnchorInfoForLayout;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedResponse;

    .line 50231
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedResponse;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;

    if-eqz p1, :cond_3

    .line 50232
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    if-eqz p1, :cond_3

    .line 50233
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;

    if-eqz p1, :cond_3

    .line 50234
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;->ICustomTabsCallback:Ljava/lang/String;

    :cond_3
    if-eqz v1, :cond_8

    .line 493
    sget-object p1, Lo/length;->extraCallback:Lo/length;

    invoke-virtual {p1, v1}, Lo/length;->onNavigationEvent(Ljava/lang/String;)V

    return-void

    :sswitch_2
    const-string v0, "game"

    .line 502
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 50243
    iget-object p1, p2, Lo/updateAnchorInfoForLayout;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedResponse;

    .line 50244
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedResponse;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;

    if-eqz p1, :cond_4

    .line 50245
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    if-eqz p1, :cond_4

    .line 50246
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;

    if-eqz p1, :cond_4

    .line 50247
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;->ICustomTabsCallback:Ljava/lang/String;

    :cond_4
    if-eqz v1, :cond_8

    .line 50248
    iget-object p1, p0, Lo/updateAnchorFromChildren;->extraCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMoveDuration;

    if-eqz p1, :cond_8

    .line 50249
    new-instance p2, Lo/onGetChildDrawingOrder$INotificationSideChannel$Stub$Proxy;

    new-instance v0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$extraCallback;

    invoke-direct {v0, v1}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$extraCallback;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v0}, Lo/onGetChildDrawingOrder$INotificationSideChannel$Stub$Proxy;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$extraCallback;)V

    check-cast p2, Lo/getRemoveDuration;

    invoke-virtual {p1, p2}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    return-void

    :sswitch_3
    const-string/jumbo v0, "web"

    .line 478
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 50216
    iget-object p1, p2, Lo/updateAnchorInfoForLayout;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedResponse;

    .line 50217
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedResponse;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;

    if-eqz p1, :cond_5

    .line 50218
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    if-eqz p1, :cond_5

    .line 50219
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;

    if-eqz p1, :cond_5

    .line 50220
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;->ICustomTabsCallback:Ljava/lang/String;

    goto :goto_1

    :cond_5
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_8

    .line 50221
    iget-object p2, p0, Lo/updateAnchorFromChildren;->extraCallback:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/getMoveDuration;

    if-eqz p2, :cond_6

    const/4 v0, 0x6

    .line 481
    invoke-static {p2, p1, v3, v1, v0}, Lo/getMoveDuration;->extraCallback(Lo/getMoveDuration;Ljava/lang/String;ZLjava/lang/Boolean;I)V

    :cond_6
    return-void

    :sswitch_4
    const-string/jumbo v0, "web_video"

    .line 484
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 50222
    iget-object p1, p2, Lo/updateAnchorInfoForLayout;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedResponse;

    .line 50223
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedResponse;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;

    if-eqz p1, :cond_7

    .line 50224
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    if-eqz p1, :cond_7

    .line 50225
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;

    if-eqz p1, :cond_7

    .line 50226
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;->ICustomTabsCallback:Ljava/lang/String;

    :cond_7
    move-object v5, v1

    if-eqz v5, :cond_8

    .line 50227
    iget-object p1, p0, Lo/updateAnchorFromChildren;->extraCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMoveDuration;

    if-eqz p1, :cond_8

    .line 487
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 50228
    new-instance p2, Lo/onGetChildDrawingOrder$onLoadChildren;

    new-instance v0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1a

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;ZI)V

    invoke-direct {p2, v0, v3}, Lo/onGetChildDrawingOrder$onLoadChildren;-><init>(Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback;Z)V

    check-cast p2, Lo/getRemoveDuration;

    invoke-virtual {p1, p2}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    :cond_8
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2f6a8c30 -> :sswitch_4
        0x1cb54 -> :sswitch_3
        0x304bf2 -> :sswitch_2
        0x258156e6 -> :sswitch_1
        0x745f4197 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ICustomTabsCallback(I)Z
    .locals 2

    .line 121
    iget-object v0, p0, Lo/updateAnchorFromChildren;->onPostMessage:Lo/repositionToWrapContentIfNecessary;

    const-string v1, "claimedRewardAdapter"

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 6000
    :cond_0
    iget-object v0, v0, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/checkSpanForGap;

    .line 6151
    iget-object v0, v0, Lo/checkSpanForGap;->ICustomTabsCallback:Ljava/util/List;

    .line 121
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_2

    if-ltz p1, :cond_2

    iget-object v0, p0, Lo/updateAnchorFromChildren;->onPostMessage:Lo/repositionToWrapContentIfNecessary;

    if-nez v0, :cond_1

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 8000
    :cond_1
    iget-object v0, v0, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/checkSpanForGap;

    .line 8151
    iget-object v0, v0, Lo/checkSpanForGap;->ICustomTabsCallback:Ljava/util/List;

    .line 121
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lo/invalidateSpanAssignments;

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public asBinder()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final asInterface()V
    .locals 1

    .line 525
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->loaderView:I

    invoke-virtual {p0, v0}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onDestroyView;

    if-eqz v0, :cond_0

    .line 526
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->loaderView:I

    invoke-virtual {p0, v0}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onDestroyView;

    invoke-virtual {v0}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    .line 527
    iget-object v0, p0, Lo/updateAnchorFromChildren;->asBinder:Lo/updateDxDy$onMessageChannelReady;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/updateDxDy$onMessageChannelReady;->ICustomTabsCallback()V

    :cond_0
    return-void
.end method

.method public abstract extraCallback()Ljava/lang/String;
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Lo/updateAnchorFromChildren;->onPostMessage()V

    return-void
.end method

.method public abstract onMessageChannelReady()Lo/onViewStateRestored$onNavigationEvent;
.end method

.method public final onNavigationEvent(I)I
    .locals 1

    .line 100
    :cond_0
    invoke-virtual {p0, p1}, Lo/updateAnchorFromChildren;->ICustomTabsCallback(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract onNavigationEvent()Landroidx/recyclerview/widget/RecyclerView;
.end method

.method public onPostMessage(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/updateAnchorFromChildren;->ICustomTabsCallback$Stub$Proxy:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/updateAnchorFromChildren;->ICustomTabsCallback$Stub$Proxy:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/updateAnchorFromChildren;->ICustomTabsCallback$Stub$Proxy:Ljava/util/HashMap;

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

    iget-object v1, p0, Lo/updateAnchorFromChildren;->ICustomTabsCallback$Stub$Proxy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final onPostMessage(Landroidx/recyclerview/widget/RecyclerView;)Lo/createOrientationHelpers;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    new-instance v0, Lo/RecyclerView;

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lo/RecyclerView;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast v0, Lo/createOrientationHelpers;

    return-object v0
.end method

.method public onPostMessage()V
    .locals 1

    iget-object v0, p0, Lo/updateAnchorFromChildren;->ICustomTabsCallback$Stub$Proxy:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
    .locals 22

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "failed"

    const-string/jumbo v3, "type"

    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "data"

    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const-string/jumbo v4, "rewardUsageId"

    const-string v5, "pairs"

    const-string/jumbo v6, "usage_id"

    const-string/jumbo v8, "section count"

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_20

    :sswitch_0
    const-string v2, "details"

    .line 182
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 183
    instance-of v0, v1, Lo/updateAnchorInfoForLayout;

    if-eqz v0, :cond_38

    .line 14000
    iget-object v0, v7, Lo/updateAnchorFromChildren;->extraCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getMoveDuration;

    if-eqz v0, :cond_0

    .line 184
    check-cast v1, Lo/updateAnchorInfoForLayout;

    .line 14074
    iget-object v1, v1, Lo/updateAnchorInfoForLayout;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedResponse;

    .line 15021
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedResponse;->onPostMessage:Ljava/lang/String;

    .line 184
    invoke-static {v1, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15218
    new-instance v2, Lo/onGetChildDrawingOrder$IPostMessageService;

    new-instance v3, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$Extra;

    invoke-direct {v3, v1}, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$Extra;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lo/onGetChildDrawingOrder$IPostMessageService;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$Extra;)V

    check-cast v2, Lo/getRemoveDuration;

    invoke-virtual {v0, v2}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    .line 184
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    :cond_0
    return-void

    :sswitch_1
    const-string/jumbo v2, "unarchive"

    .line 206
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 207
    instance-of v0, v1, Lo/updateAnchorInfoForLayout;

    if-eqz v0, :cond_38

    .line 23000
    iget-object v0, v7, Lo/updateAnchorFromChildren;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/updateAnchorFromPendingData;

    .line 208
    check-cast v1, Lo/updateAnchorInfoForLayout;

    .line 23074
    iget-object v2, v1, Lo/updateAnchorInfoForLayout;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedResponse;

    .line 24021
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedResponse;->onPostMessage:Ljava/lang/String;

    .line 208
    invoke-static {v2, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25204
    iget-object v3, v0, Lo/updateAnchorFromPendingData;->onRelationshipValidationResult:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 25205
    invoke-virtual {v0}, Lo/updateAnchorFromPendingData;->onPostMessage()V

    .line 26000
    iget-object v0, v0, Lo/updateAnchorFromPendingData;->asInterface:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/computeHorizontalScrollExtent;

    .line 24224
    invoke-interface {v0, v2}, Lo/computeHorizontalScrollExtent;->extraCallback(Ljava/lang/String;)Lo/clearScrap;

    move-result-object v0

    .line 24225
    new-instance v2, Lo/updateAnchorFromPendingData$ICustomTabsCallback$Stub;

    invoke-direct {v2}, Lo/updateAnchorFromPendingData$ICustomTabsCallback$Stub;-><init>()V

    check-cast v2, Lo/getScrapOrCachedViewForId;

    invoke-interface {v0, v2}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    new-array v0, v10, [Lo/addWrite;

    .line 210
    sget-object v2, Lo/LinearLayoutManager;->onPostMessage:Lo/LinearLayoutManager;

    invoke-static {}, Lo/LinearLayoutManager;->onMessageChannelReady()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lo/updateAnchorFromChildren;->extraCallback()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 211
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 26043
    new-instance v3, Lo/addWrite;

    invoke-direct {v3, v8, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v11

    .line 26074
    iget-object v1, v1, Lo/updateAnchorInfoForLayout;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedResponse;

    .line 27021
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedResponse;->onPostMessage:Ljava/lang/String;

    .line 27043
    new-instance v2, Lo/addWrite;

    invoke-direct {v2, v6, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v12

    .line 209
    invoke-static {v0, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27088
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {v10}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo v0, "your_reward_unarchive"

    .line 209
    invoke-static {v0, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void

    :sswitch_2
    const-string v3, "broadcast_code"

    .line 230
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 231
    instance-of v0, v1, Lo/updateAnchorInfoForLayout;

    if-eqz v0, :cond_38

    .line 232
    move-object v3, v1

    check-cast v3, Lo/updateAnchorInfoForLayout;

    .line 32074
    iget-object v0, v3, Lo/updateAnchorInfoForLayout;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedResponse;

    .line 33023
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedResponse;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;

    if-eqz v0, :cond_2

    .line 33033
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    if-eqz v0, :cond_2

    .line 33078
    iget-object v13, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->onNavigationEvent:Ljava/lang/String;

    .line 233
    :cond_2
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-static {}, Lo/setTrackTintMode;->getInterfaceDescriptor()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 234
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v1, 0x7f1304ec

    invoke-static {v1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 34000
    :cond_3
    iget-object v0, v7, Lo/updateAnchorFromChildren;->ICustomTabsService:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setIconifiedByDefault;

    .line 34161
    iget-object v4, v0, Lo/setIconifiedByDefault;->onNavigationEvent:Lo/getSuggestionsAdapter;

    if-eqz v4, :cond_4

    .line 34162
    iget-object v4, v0, Lo/setIconifiedByDefault;->onNavigationEvent:Lo/getSuggestionsAdapter;

    invoke-interface {v4}, Lo/getSuggestionsAdapter;->onNavigationEvent()V

    .line 34163
    :cond_4
    sget-object v4, Lo/setIconifiedByDefault$onNavigationEvent;->extraCallback:Lo/setIconifiedByDefault$onNavigationEvent;

    iput-object v4, v0, Lo/setIconifiedByDefault;->extraCallback:Lo/setIconifiedByDefault$onNavigationEvent;

    .line 35000
    :try_start_0
    iget-object v0, v7, Lo/updateAnchorFromChildren;->asInterface:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 239
    invoke-virtual {v0, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, v7, Lo/updateAnchorFromChildren;->onMessageChannelReady:I

    .line 36000
    iget-object v0, v7, Lo/updateAnchorFromChildren;->asInterface:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 240
    invoke-virtual {v0, v9}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 37000
    iget-object v4, v7, Lo/updateAnchorFromChildren;->asInterface:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    .line 241
    sget-object v5, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    invoke-static {}, Lo/isInLayout;->onRelationshipValidationResult()I

    move-result v5

    mul-int v0, v0, v5

    div-int/lit8 v0, v0, 0x64

    invoke-virtual {v4, v9, v0, v11}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 38000
    iget-object v0, v7, Lo/updateAnchorFromChildren;->ICustomTabsService:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setIconifiedByDefault;

    .line 242
    new-instance v4, Lo/updateAnchorFromChildren$onPostMessage;

    invoke-direct {v4, v13, v7, v1}, Lo/updateAnchorFromChildren$onPostMessage;-><init>(Ljava/lang/String;Lo/updateAnchorFromChildren;Lo/StaggeredGridLayoutManager;)V

    check-cast v4, Lo/setQueryRefinementEnabled;

    .line 267
    sget-object v5, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    invoke-static {}, Lo/isInLayout;->ICustomTabsCallback$Stub()I

    move-result v5

    .line 242
    invoke-virtual {v0, v13, v4, v5}, Lo/setIconifiedByDefault;->onNavigationEvent(Ljava/lang/String;Lo/setQueryRefinementEnabled;I)I

    move-result v0

    .line 39000
    iget-object v4, v7, Lo/updateAnchorFromChildren;->warmup:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/setMenuVisibility;

    .line 268
    invoke-virtual {v4}, Lo/setMenuVisibility;->extraCallback()V

    if-eq v0, v12, :cond_7

    if-eq v0, v9, :cond_6

    const/4 v4, 0x4

    if-eq v0, v4, :cond_5

    goto/16 :goto_1

    .line 276
    :cond_5
    move-object v0, v1

    check-cast v0, Lo/updateAnchorInfoForLayout;

    const-string v1, "headset_on"

    invoke-static {v0, v1}, Lo/updateAnchorFromChildren;->onMessageChannelReady(Lo/updateAnchorInfoForLayout;Ljava/lang/String;)V

    .line 277
    sget-object v13, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    sget-object v0, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v0, 0x7f13027d

    invoke-static {v0}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1e

    invoke-static/range {v13 .. v19}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    goto :goto_1

    .line 280
    :cond_6
    move-object v0, v1

    check-cast v0, Lo/updateAnchorInfoForLayout;

    invoke-static {v0, v2}, Lo/updateAnchorFromChildren;->onMessageChannelReady(Lo/updateAnchorInfoForLayout;Ljava/lang/String;)V

    .line 281
    sget-object v13, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    sget-object v0, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v0, 0x7f130413

    invoke-static {v0}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1e

    invoke-static/range {v13 .. v19}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    goto :goto_1

    .line 271
    :cond_7
    move-object v0, v1

    check-cast v0, Lo/updateAnchorInfoForLayout;

    const-string/jumbo v4, "success"

    invoke-static {v0, v4}, Lo/updateAnchorFromChildren;->onMessageChannelReady(Lo/updateAnchorInfoForLayout;Ljava/lang/String;)V

    .line 272
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-static {v12}, Lo/setTrackTintMode;->onNavigationEvent(Z)V

    .line 273
    move-object v0, v1

    check-cast v0, Lo/updateAnchorInfoForLayout;

    invoke-direct {v7, v0, v12}, Lo/updateAnchorFromChildren;->onMessageChannelReady(Lo/updateAnchorInfoForLayout;I)V
    :try_end_0
    .catch Lcom/cred/sproxlib/share/medium/sound/modulate/PublisherException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 286
    invoke-static {v3, v2}, Lo/updateAnchorFromChildren;->onMessageChannelReady(Lo/updateAnchorInfoForLayout;Ljava/lang/String;)V

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PublisherException: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    .line 39010
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 39011
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2, v12}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 39012
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 39013
    invoke-virtual {v2}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LifeStyle"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :goto_1
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-void

    :sswitch_3
    const-string/jumbo v2, "share"

    .line 293
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 294
    instance-of v0, v1, Lo/updateAnchorInfoForLayout;

    if-eqz v0, :cond_38

    iget-boolean v0, v7, Lo/updateAnchorFromChildren;->ICustomTabsCallback$Stub:Z

    if-nez v0, :cond_38

    .line 295
    iput-boolean v12, v7, Lo/updateAnchorFromChildren;->ICustomTabsCallback$Stub:Z

    .line 39522
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->loaderView:I

    invoke-virtual {v7, v0}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onDestroyView;

    invoke-static {v0}, Lo/prependViewToAllSpans;->onNavigationEvent(Lo/prependViewToAllSpans;)V

    .line 297
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->backGroundView:I

    invoke-virtual {v7, v0}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    const-string v2, "backGroundView"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->shareCardStub:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_8

    .line 298
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->backGroundView:I

    invoke-virtual {v7, v0}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->shareCardStub:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_8
    new-array v0, v10, [Lo/addWrite;

    .line 302
    sget-object v2, Lo/LinearLayoutManager;->onPostMessage:Lo/LinearLayoutManager;

    invoke-static {}, Lo/LinearLayoutManager;->onMessageChannelReady()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lo/updateAnchorFromChildren;->extraCallback()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    goto :goto_2

    :cond_9
    const/4 v2, 0x0

    .line 303
    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 40043
    new-instance v3, Lo/addWrite;

    invoke-direct {v3, v8, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v11

    .line 304
    move-object v8, v1

    check-cast v8, Lo/updateAnchorInfoForLayout;

    .line 40074
    iget-object v1, v8, Lo/updateAnchorInfoForLayout;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedResponse;

    .line 41021
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedResponse;->onPostMessage:Ljava/lang/String;

    .line 41043
    new-instance v2, Lo/addWrite;

    invoke-direct {v2, v6, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v12

    .line 301
    invoke-static {v0, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41088
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {v10}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo v0, "your_rewards_shared"

    .line 301
    invoke-static {v0, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 307
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->rewardShareCard:I

    invoke-virtual {v7, v0}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    const-string/jumbo v1, "rewardShareCard"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v14, v0

    check-cast v14, Landroid/view/View;

    .line 42009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "Resources.getSystem()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v2, 0x41b00000    # 22.0f

    .line 42010
    invoke-static {v12, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v16

    .line 43009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v3, 0x3f000000    # 0.5f

    .line 43010
    invoke-static {v12, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 307
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x70

    const-string v15, "#000000"

    const-string v17, "#2Bffffff"

    invoke-static/range {v14 .. v21}, Lo/missCount;->onNavigationEvent(Landroid/view/View;Ljava/lang/String;FLjava/lang/String;Ljava/lang/Float;[FLjava/lang/Integer;I)V

    .line 308
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->merchantCard:I

    invoke-virtual {v7, v0}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/setSpeed;

    const-string v3, "merchantCard"

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43116
    iget-object v0, v0, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 43216
    iget-object v0, v0, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    if-eqz v0, :cond_2f

    check-cast v0, Lo/setMaxFrame;

    .line 308
    check-cast v0, Lo/getComposition;

    .line 45078
    iget-object v4, v8, Lo/updateAnchorInfoForLayout;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;

    if-eqz v4, :cond_a

    .line 46029
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;

    if-eqz v4, :cond_a

    .line 46349
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;->onNavigationEvent:Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;

    goto :goto_3

    :cond_a
    move-object v4, v13

    .line 47009
    :goto_3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 47010
    invoke-static {v12, v2, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    .line 308
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x5

    invoke-static {v4, v13, v5, v13, v6}, Lo/extraCallback;->onPostMessage(Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;Ljava/lang/String;Ljava/lang/Float;[FI)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 47564
    invoke-virtual {v0, v11, v4}, Lo/getComposition;->extraCallback(ILandroid/graphics/drawable/Drawable;)V

    .line 309
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->merchantTitle:I

    invoke-virtual {v7, v0}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v4, "merchantTitle"

    invoke-static {v0, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48078
    iget-object v5, v8, Lo/updateAnchorInfoForLayout;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;

    if-eqz v5, :cond_b

    .line 49042
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;->asBinder:Lo/getTargetScrollPosition;

    if-eqz v5, :cond_b

    .line 50000
    iget-object v5, v5, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v5}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    goto :goto_4

    :cond_b
    move-object v5, v13

    .line 309
    :goto_4
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->offerText:I

    invoke-virtual {v7, v0}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v5, "offerText"

    invoke-static {v0, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50078
    iget-object v14, v8, Lo/updateAnchorInfoForLayout;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;

    if-eqz v14, :cond_c

    .line 50079
    iget-object v14, v14, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;->asInterface:Lo/getTargetScrollPosition;

    if-eqz v14, :cond_c

    .line 50080
    iget-object v14, v14, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v14}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    goto :goto_5

    :cond_c
    move-object v14, v13

    .line 310
    :goto_5
    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50081
    iget-object v0, v8, Lo/updateAnchorInfoForLayout;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;

    if-eqz v0, :cond_d

    .line 50082
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;

    if-eqz v0, :cond_d

    .line 50083
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;->onMessageChannelReady:Ljava/lang/String;

    if-nez v0, :cond_e

    :cond_d
    const-string v0, "dark"

    :cond_e
    const-string v14, "dark"

    .line 315
    invoke-static {v0, v14}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 316
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->merchantTitle:I

    invoke-virtual {v7, v0}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v14, Lo/getSwitchMinWidth$onPostMessage;->merchantTitle:I

    invoke-virtual {v7, v14}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    invoke-static {v14, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v14, 0x7f060220

    invoke-static {v4, v14}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 317
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->offerText:I

    invoke-virtual {v7, v0}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->offerText:I

    invoke-virtual {v7, v4}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v4, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f060220

    invoke-static {v4, v5}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6

    .line 319
    :cond_f
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->merchantTitle:I

    invoke-virtual {v7, v0}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v14, Lo/getSwitchMinWidth$onPostMessage;->merchantTitle:I

    invoke-virtual {v7, v14}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    invoke-static {v14, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v14, 0x7f0600c6

    invoke-static {v4, v14}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 320
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->offerText:I

    invoke-virtual {v7, v0}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->offerText:I

    invoke-virtual {v7, v4}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v4, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0600c6

    invoke-static {v4, v5}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 322
    :goto_6
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->merchantCard:I

    invoke-virtual {v7, v0}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/setSpeed;

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50084
    iget-object v0, v0, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 50085
    iget-object v0, v0, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    if-eqz v0, :cond_2e

    check-cast v0, Lo/setMaxFrame;

    .line 322
    check-cast v0, Lo/getComposition;

    const-string v4, "merchantCard.hierarchy"

    invoke-static {v0, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lo/onRequestPermissionsResult;->onMessageChannelReady:Lo/onRequestPermissionsResult;

    invoke-static {}, Lo/onRequestPermissionsResult;->ICustomTabsCallback()Lo/setFailureListener$extraCallback;

    move-result-object v4

    if-eqz v4, :cond_2d

    .line 50097
    invoke-virtual {v0, v10}, Lo/getComposition;->onPostMessage(I)Lo/LottieAnimationView;

    move-result-object v0

    .line 50098
    instance-of v5, v0, Lo/fromAssets;

    if-eqz v5, :cond_10

    .line 50099
    check-cast v0, Lo/fromAssets;

    goto :goto_7

    .line 50101
    :cond_10
    sget-object v5, Lo/setFailureListener$extraCallback;->onTransact:Lo/setFailureListener$extraCallback;

    invoke-static {v0, v5}, Lo/playAnimation;->onMessageChannelReady(Lo/LottieAnimationView;Lo/setFailureListener$extraCallback;)Lo/fromAssets;

    move-result-object v0

    .line 50102
    :goto_7
    iget-object v5, v0, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    if-eq v5, v4, :cond_12

    if-eqz v5, :cond_11

    .line 50111
    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    goto :goto_8

    :cond_11
    const/4 v5, 0x0

    goto :goto_9

    :cond_12
    :goto_8
    const/4 v5, 0x1

    :goto_9
    if-nez v5, :cond_13

    .line 50106
    iput-object v4, v0, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    .line 50107
    iput-object v13, v0, Lo/fromAssets;->extraCallback:Ljava/lang/Object;

    .line 50108
    invoke-virtual {v0}, Lo/fromAssets;->ICustomTabsCallback()V

    .line 50109
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 323
    :cond_13
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->merchantLogo:I

    invoke-virtual {v7, v0}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/setSpeed;

    const-string v4, "merchantLogo"

    invoke-static {v0, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50112
    iget-object v0, v0, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 50113
    iget-object v0, v0, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    if-eqz v0, :cond_2c

    check-cast v0, Lo/setMaxFrame;

    .line 323
    check-cast v0, Lo/getComposition;

    const-string v4, "merchantLogo.hierarchy"

    invoke-static {v0, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lo/onRequestPermissionsResult;->onMessageChannelReady:Lo/onRequestPermissionsResult;

    invoke-static {}, Lo/onRequestPermissionsResult;->onNavigationEvent()Lo/setFailureListener$extraCallback;

    move-result-object v4

    if-eqz v4, :cond_2b

    .line 50125
    invoke-virtual {v0, v10}, Lo/getComposition;->onPostMessage(I)Lo/LottieAnimationView;

    move-result-object v0

    .line 50126
    instance-of v5, v0, Lo/fromAssets;

    if-eqz v5, :cond_14

    .line 50127
    check-cast v0, Lo/fromAssets;

    goto :goto_a

    .line 50129
    :cond_14
    sget-object v5, Lo/setFailureListener$extraCallback;->onTransact:Lo/setFailureListener$extraCallback;

    invoke-static {v0, v5}, Lo/playAnimation;->onMessageChannelReady(Lo/LottieAnimationView;Lo/setFailureListener$extraCallback;)Lo/fromAssets;

    move-result-object v0

    .line 50130
    :goto_a
    iget-object v5, v0, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    if-eq v5, v4, :cond_16

    if-eqz v5, :cond_15

    .line 50139
    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    goto :goto_b

    :cond_15
    const/4 v5, 0x0

    goto :goto_c

    :cond_16
    :goto_b
    const/4 v5, 0x1

    :goto_c
    if-nez v5, :cond_17

    .line 50134
    iput-object v4, v0, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    .line 50135
    iput-object v13, v0, Lo/fromAssets;->extraCallback:Ljava/lang/Object;

    .line 50136
    invoke-virtual {v0}, Lo/fromAssets;->ICustomTabsCallback()V

    .line 50137
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 50140
    :cond_17
    iget-object v0, v8, Lo/updateAnchorInfoForLayout;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;

    const-string/jumbo v4, "video"

    if-eqz v0, :cond_18

    .line 50141
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;

    if-eqz v0, :cond_18

    .line 50142
    iget-object v5, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;->onPostMessage:Ljava/lang/String;

    invoke-static {v5, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v12

    if-eqz v5, :cond_18

    .line 50143
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;->extraCallback:Ljava/lang/String;

    goto :goto_d

    :cond_18
    move-object v0, v13

    :goto_d
    if-eqz v0, :cond_1a

    .line 326
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->merchantCard:I

    invoke-virtual {v7, v0}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lo/setSpeed;

    invoke-static {v14, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50147
    iget-object v0, v8, Lo/updateAnchorInfoForLayout;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;

    .line 50148
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;

    .line 50149
    iget-object v5, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;->onPostMessage:Ljava/lang/String;

    invoke-static {v5, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v12

    if-eqz v5, :cond_19

    .line 50150
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;->extraCallback:Ljava/lang/String;

    move-object v15, v0

    goto :goto_e

    :cond_19
    move-object v15, v13

    :goto_e
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x3e

    .line 326
    invoke-static/range {v14 .. v21}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    goto :goto_10

    .line 50154
    :cond_1a
    iget-object v0, v8, Lo/updateAnchorInfoForLayout;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;

    if-eqz v0, :cond_1b

    .line 50155
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;

    if-eqz v0, :cond_1b

    .line 50156
    iget-object v5, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;->onPostMessage:Ljava/lang/String;

    invoke-static {v5, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 50157
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;->extraCallback:Ljava/lang/String;

    goto :goto_f

    :cond_1b
    move-object v0, v13

    :goto_f
    if-eqz v0, :cond_1c

    .line 328
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->merchantCard:I

    invoke-virtual {v7, v0}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lo/setSpeed;

    invoke-static {v14, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50161
    iget-object v0, v8, Lo/updateAnchorInfoForLayout;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;

    .line 50162
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;

    .line 50163
    iget-object v15, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;->ICustomTabsCallback:Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x3e

    .line 328
    invoke-static/range {v14 .. v21}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 50164
    :cond_1c
    :goto_10
    iget-object v0, v8, Lo/updateAnchorInfoForLayout;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;

    if-eqz v0, :cond_1d

    .line 50165
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;->onTransact:Ljava/lang/String;

    goto :goto_11

    :cond_1d
    move-object v0, v13

    .line 50166
    :goto_11
    iget-object v5, v8, Lo/updateAnchorInfoForLayout;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;

    if-eqz v5, :cond_1e

    .line 50167
    iget v5, v5, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;->getInterfaceDescriptor:I

    .line 331
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_12

    :cond_1e
    move-object v5, v13

    :goto_12
    const-string/jumbo v14, "shimSolid"

    const-string/jumbo v13, "shimGradient"

    if-eqz v5, :cond_21

    .line 333
    sget v6, Lo/getSwitchMinWidth$onPostMessage;->shimGradient:I

    invoke-virtual {v7, v6}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 334
    sget v6, Lo/getSwitchMinWidth$onPostMessage;->shimSolid:I

    invoke-virtual {v7, v6}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v14}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 335
    sget-object v6, Lcom/dreamplug/utils/helpers/MoshiColorAdapter;->onNavigationEvent:Lcom/dreamplug/utils/helpers/MoshiColorAdapter;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-static {v5, v12}, Lcom/dreamplug/utils/helpers/MoshiColorAdapter;->onNavigationEvent(IZ)Ljava/lang/String;

    move-result-object v5

    .line 336
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "#FF"

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v5, :cond_20

    invoke-virtual {v5, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const-string v15, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v9, v15}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    .line 337
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v15, "#00"

    invoke-direct {v9, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v5, :cond_1f

    invoke-virtual {v5, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v15, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v5, v15}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    .line 338
    new-instance v9, Landroid/graphics/drawable/GradientDrawable;

    sget-object v15, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v10, [I

    aput v6, v2, v11

    aput v5, v2, v12

    invoke-direct {v9, v15, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 340
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 50168
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v5, 0x41b00000    # 22.0f

    .line 50169
    invoke-static {v12, v5, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 342
    new-instance v5, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v15, 0x8

    new-array v15, v15, [F

    const/16 v17, 0x0

    aput v17, v15, v11

    aput v17, v15, v12

    aput v17, v15, v10

    const/4 v10, 0x3

    aput v17, v15, v10

    const/4 v10, 0x4

    aput v1, v15, v10

    const/4 v10, 0x5

    aput v1, v15, v10

    const/4 v10, 0x6

    aput v1, v15, v10

    const/4 v10, 0x7

    aput v1, v15, v10

    const/4 v1, 0x0

    invoke-direct {v5, v15, v1, v1}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    check-cast v5, Landroid/graphics/drawable/shapes/Shape;

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 344
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const-string/jumbo v5, "solidColorDrawable.paint"

    invoke-static {v1, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 346
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->shimGradient:I

    invoke-virtual {v7, v1}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 347
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->shimSolid:I

    invoke-virtual {v7, v1}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v14}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_13

    .line 337
    :cond_1f
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_20
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_21
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->shimGradient:I

    invoke-virtual {v7, v1}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 350
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->shimSolid:I

    invoke-virtual {v7, v1}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v14}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 353
    :goto_13
    new-instance v9, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v9}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    iput-boolean v11, v9, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 50170
    iget-object v1, v8, Lo/updateAnchorInfoForLayout;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;

    if-eqz v1, :cond_22

    .line 50171
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;

    if-eqz v1, :cond_22

    .line 50172
    iget-object v2, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;->onPostMessage:Ljava/lang/String;

    invoke-static {v2, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v12

    if-eqz v2, :cond_22

    .line 50173
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;->extraCallback:Ljava/lang/String;

    goto :goto_14

    :cond_22
    const/4 v1, 0x0

    :goto_14
    if-eqz v1, :cond_24

    .line 50177
    iget-object v1, v8, Lo/updateAnchorInfoForLayout;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;

    .line 50178
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;

    .line 50179
    iget-object v2, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;->onPostMessage:Ljava/lang/String;

    invoke-static {v2, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v12

    if-eqz v2, :cond_23

    .line 50180
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;->extraCallback:Ljava/lang/String;

    :goto_15
    move-object v14, v1

    goto :goto_17

    :cond_23
    const/4 v14, 0x0

    goto :goto_17

    .line 50184
    :cond_24
    iget-object v1, v8, Lo/updateAnchorInfoForLayout;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;

    if-eqz v1, :cond_25

    .line 50185
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;

    if-eqz v1, :cond_25

    .line 50186
    iget-object v2, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;->onPostMessage:Ljava/lang/String;

    invoke-static {v2, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 50187
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;->extraCallback:Ljava/lang/String;

    goto :goto_16

    :cond_25
    const/4 v1, 0x0

    :goto_16
    if-eqz v1, :cond_23

    .line 50191
    iget-object v1, v8, Lo/updateAnchorInfoForLayout;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;

    .line 50192
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;

    .line 50193
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;->ICustomTabsCallback:Ljava/lang/String;

    goto :goto_15

    .line 362
    :goto_17
    new-instance v10, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v10}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    iput-boolean v11, v10, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 363
    new-instance v15, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v15}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    iput-boolean v11, v15, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    if-eqz v14, :cond_26

    .line 365
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->merchantCard:I

    invoke-virtual {v7, v1}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lo/setSpeed;

    invoke-static {v13, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    new-instance v19, Lo/updateAnchorFromChildren$ICustomTabsCallback$Stub;

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    move-object v3, v10

    move-object v4, v9

    move-object v5, v15

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lo/updateAnchorFromChildren$ICustomTabsCallback$Stub;-><init>(Lo/updateAnchorFromChildren;Lo/toDebugString$onMessageChannelReady;Lo/toDebugString$onMessageChannelReady;Lo/toDebugString$onMessageChannelReady;Ljava/lang/String;)V

    check-cast v19, Lo/onDisconnectSetValue;

    const/16 v20, 0x1e

    move-object v6, v15

    move v15, v11

    invoke-static/range {v13 .. v20}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    goto :goto_18

    :cond_26
    move-object v6, v15

    .line 375
    iput-boolean v12, v10, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 50194
    :goto_18
    iget-object v1, v8, Lo/updateAnchorInfoForLayout;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;

    if-eqz v1, :cond_27

    .line 50195
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;->ICustomTabsCallback:Ljava/lang/String;

    goto :goto_19

    :cond_27
    const/4 v1, 0x0

    :goto_19
    if-eqz v1, :cond_29

    .line 379
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->merchantLogo:I

    invoke-virtual {v7, v1}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lo/setSpeed;

    const-string v1, "merchantLogo"

    invoke-static {v13, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50196
    iget-object v1, v8, Lo/updateAnchorInfoForLayout;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;

    if-eqz v1, :cond_28

    .line 50197
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;->ICustomTabsCallback:Ljava/lang/String;

    move-object v14, v1

    goto :goto_1a

    :cond_28
    const/4 v14, 0x0

    :goto_1a
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 379
    new-instance v8, Lo/updateAnchorFromChildren$asInterface;

    move-object v1, v8

    move-object/from16 v2, p0

    move-object v3, v6

    move-object v4, v9

    move-object v5, v10

    move-object v11, v6

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lo/updateAnchorFromChildren$asInterface;-><init>(Lo/updateAnchorFromChildren;Lo/toDebugString$onMessageChannelReady;Lo/toDebugString$onMessageChannelReady;Lo/toDebugString$onMessageChannelReady;Ljava/lang/String;)V

    move-object/from16 v19, v8

    check-cast v19, Lo/onDisconnectSetValue;

    const/16 v20, 0x1e

    invoke-static/range {v13 .. v20}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    goto :goto_1b

    :cond_29
    move-object v11, v6

    .line 389
    iput-boolean v12, v11, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 392
    :goto_1b
    iget-boolean v1, v10, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    if-eqz v1, :cond_2a

    iget-boolean v1, v11, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    if-eqz v1, :cond_2a

    .line 393
    invoke-direct {v7, v0}, Lo/updateAnchorFromChildren;->onPostMessage(Ljava/lang/String;)V

    .line 394
    iput-boolean v12, v9, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void

    .line 396
    :cond_2a
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lo/updateAnchorFromChildren$asBinder;

    invoke-direct {v2, v7, v9, v0}, Lo/updateAnchorFromChildren$asBinder;-><init>(Lo/updateAnchorFromChildren;Lo/toDebugString$onMessageChannelReady;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Runnable;

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_20

    :cond_2b
    move-object v2, v13

    .line 50122
    throw v2

    :cond_2c
    move-object v2, v13

    .line 50115
    throw v2

    :cond_2d
    move-object v2, v13

    .line 50094
    throw v2

    :cond_2e
    move-object v2, v13

    .line 50087
    throw v2

    :cond_2f
    move-object v2, v13

    .line 44215
    throw v2

    :sswitch_4
    move-object v2, v13

    const-string v3, "cta"

    .line 188
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 189
    instance-of v0, v1, Lo/updateAnchorInfoForLayout;

    if-eqz v0, :cond_38

    .line 190
    move-object v0, v1

    check-cast v0, Lo/updateAnchorInfoForLayout;

    .line 16074
    iget-object v1, v0, Lo/updateAnchorInfoForLayout;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedResponse;

    .line 17023
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedResponse;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;

    if-eqz v1, :cond_30

    .line 17033
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    if-eqz v1, :cond_30

    .line 17076
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;

    if-eqz v1, :cond_30

    .line 17090
    iget-object v13, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;->extraCallback:Ljava/lang/String;

    goto :goto_1c

    :cond_30
    move-object v13, v2

    :goto_1c
    if-eqz v13, :cond_32

    .line 191
    move-object v1, v13

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_31

    const/4 v11, 0x1

    :cond_31
    if-ne v11, v12, :cond_38

    .line 192
    invoke-virtual {v7, v13, v0}, Lo/updateAnchorFromChildren;->ICustomTabsCallback(Ljava/lang/String;Lo/updateAnchorInfoForLayout;)V

    :cond_32
    return-void

    :sswitch_5
    const-string v2, "archive"

    .line 196
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 197
    instance-of v0, v1, Lo/updateAnchorInfoForLayout;

    if-eqz v0, :cond_38

    .line 18000
    iget-object v0, v7, Lo/updateAnchorFromChildren;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/updateAnchorFromPendingData;

    .line 198
    check-cast v1, Lo/updateAnchorInfoForLayout;

    .line 18074
    iget-object v2, v1, Lo/updateAnchorInfoForLayout;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedResponse;

    .line 19021
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedResponse;->onPostMessage:Ljava/lang/String;

    .line 198
    invoke-static {v2, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20204
    iget-object v3, v0, Lo/updateAnchorFromPendingData;->onRelationshipValidationResult:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 20205
    invoke-virtual {v0}, Lo/updateAnchorFromPendingData;->onPostMessage()V

    .line 21000
    iget-object v0, v0, Lo/updateAnchorFromPendingData;->asInterface:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/computeHorizontalScrollExtent;

    .line 19210
    invoke-interface {v0, v2}, Lo/computeHorizontalScrollExtent;->ICustomTabsCallback(Ljava/lang/String;)Lo/clearScrap;

    move-result-object v0

    .line 19211
    new-instance v2, Lo/updateAnchorFromPendingData$onNavigationEvent;

    invoke-direct {v2}, Lo/updateAnchorFromPendingData$onNavigationEvent;-><init>()V

    check-cast v2, Lo/getScrapOrCachedViewForId;

    invoke-interface {v0, v2}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    new-array v0, v10, [Lo/addWrite;

    .line 200
    sget-object v2, Lo/LinearLayoutManager;->onPostMessage:Lo/LinearLayoutManager;

    invoke-static {}, Lo/LinearLayoutManager;->onMessageChannelReady()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lo/updateAnchorFromChildren;->extraCallback()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_33

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    goto :goto_1d

    :cond_33
    const/4 v2, 0x0

    .line 201
    :goto_1d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 21043
    new-instance v3, Lo/addWrite;

    invoke-direct {v3, v8, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v11

    .line 21074
    iget-object v1, v1, Lo/updateAnchorInfoForLayout;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedResponse;

    .line 22021
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedResponse;->onPostMessage:Ljava/lang/String;

    .line 22043
    new-instance v2, Lo/addWrite;

    invoke-direct {v2, v6, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v12

    .line 199
    invoke-static {v0, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22088
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {v10}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo v0, "your_rewards_archived"

    .line 199
    invoke-static {v0, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void

    :sswitch_6
    move-object v2, v13

    const-string/jumbo v3, "support"

    .line 216
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 217
    instance-of v0, v1, Lo/updateAnchorInfoForLayout;

    if-eqz v0, :cond_38

    .line 218
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v0, v3, :cond_35

    .line 219
    sget-object v0, Lo/length;->extraCallback:Lo/length;

    const/4 v13, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_34

    const v2, 0x7f1304ef

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_34
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "support/yoda?flow=club&context=my_rewards&reward_usage_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v1

    check-cast v4, Lo/updateAnchorInfoForLayout;

    .line 28074
    iget-object v4, v4, Lo/updateAnchorInfoForLayout;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedResponse;

    .line 29021
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedResponse;->onPostMessage:Ljava/lang/String;

    .line 219
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x3f5

    const-string/jumbo v14, "web"

    invoke-static/range {v13 .. v21}, Lo/length;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/length;->onNavigationEvent(Ljava/lang/String;)V

    goto :goto_1e

    .line 30000
    :cond_35
    iget-object v0, v7, Lo/updateAnchorFromChildren;->extraCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lo/getMoveDuration;

    if-eqz v13, :cond_36

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0xe

    const-string/jumbo v14, "support"

    .line 221
    invoke-static/range {v13 .. v18}, Lo/getMoveDuration;->extraCallback(Lo/getMoveDuration;Ljava/lang/String;Ljava/lang/String;ZZI)V

    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    :cond_36
    :goto_1e
    new-array v0, v10, [Lo/addWrite;

    .line 224
    sget-object v2, Lo/LinearLayoutManager;->onPostMessage:Lo/LinearLayoutManager;

    invoke-static {}, Lo/LinearLayoutManager;->onMessageChannelReady()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lo/updateAnchorFromChildren;->extraCallback()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_37

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    goto :goto_1f

    :cond_37
    const/4 v2, 0x0

    .line 225
    :goto_1f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 30043
    new-instance v3, Lo/addWrite;

    invoke-direct {v3, v8, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v11

    .line 226
    check-cast v1, Lo/updateAnchorInfoForLayout;

    .line 30074
    iget-object v1, v1, Lo/updateAnchorInfoForLayout;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedResponse;

    .line 31021
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedResponse;->onPostMessage:Ljava/lang/String;

    .line 31043
    new-instance v2, Lo/addWrite;

    invoke-direct {v2, v6, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v12

    .line 223
    invoke-static {v0, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31088
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {v10}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo v0, "your_reward_card_get_support"

    .line 223
    invoke-static {v0, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    :cond_38
    :goto_20
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6e8d8031 -> :sswitch_6
        -0x2c971f3e -> :sswitch_5
        0x18210 -> :sswitch_4
        0x6854fdf -> :sswitch_3
        0x1c2fceab -> :sswitch_2
        0x3970e409 -> :sswitch_1
        0x5cd8f242 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onPostMessage(Lo/createOrientationHelpers;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lo/updateAnchorFromChildren;->onPostMessage:Lo/repositionToWrapContentIfNecessary;

    const-string v1, "claimedRewardAdapter"

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 2000
    :cond_0
    iget-object v0, v0, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/checkSpanForGap;

    .line 2151
    iget-object v0, v0, Lo/checkSpanForGap;->ICustomTabsCallback:Ljava/util/List;

    .line 115
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lo/setInitialPrefetchItemCount;

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lo/updateAnchorFromChildren;->onPostMessage:Lo/repositionToWrapContentIfNecessary;

    if-nez v0, :cond_1

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 4000
    :cond_1
    iget-object v0, v0, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/checkSpanForGap;

    .line 4151
    iget-object v0, v0, Lo/checkSpanForGap;->ICustomTabsCallback:Ljava/util/List;

    .line 116
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/StaggeredGridLayoutManager;

    invoke-virtual {p1, p2}, Lo/createOrientationHelpers;->ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V

    :cond_2
    return-void
.end method

.method public final onTransact()I
    .locals 1

    .line 93
    iget v0, p0, Lo/updateAnchorFromChildren;->onRelationshipValidationResult:I

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 8517
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->loaderView:I

    invoke-virtual {p0, p1}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onDestroyView;

    const-string p2, "loaderView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p2

    const-string v0, "lifecycle"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8549
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    new-instance v1, Lo/updateAnchorFromChildren$warmup;

    invoke-direct {v1, p1, p0}, Lo/updateAnchorFromChildren$warmup;-><init>(Lo/onDestroyView;Lo/updateAnchorFromChildren;)V

    check-cast v1, Lo/getServerTime;

    const-wide/16 v2, 0x12c

    invoke-static {v0, p2, v2, v3, v1}, Lo/getTextOn;->ICustomTabsCallback(Landroid/view/View;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    move-result-object p1

    iput-object p1, p0, Lo/updateAnchorFromChildren;->asBinder:Lo/updateDxDy$onMessageChannelReady;

    .line 131
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p1, p2, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object p1, p0, Lo/updateAnchorFromChildren;->ICustomTabsCallback:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 132
    new-instance p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    invoke-direct {p1}, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;-><init>()V

    .line 133
    new-instance p2, Lo/recycleViewsFromStart;

    move-object v0, p0

    check-cast v0, Lo/hasGapsToFix$onMessageChannelReady;

    invoke-virtual {p0}, Lo/updateAnchorFromChildren;->asBinder()Z

    move-result v2

    invoke-direct {p2, v0, v2}, Lo/recycleViewsFromStart;-><init>(Lo/hasGapsToFix$onMessageChannelReady;Z)V

    check-cast p2, Lo/checkForGaps;

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9036
    check-cast p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    iget-object v2, p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    new-instance p2, Lo/performGetLayoutInflater;

    invoke-direct {p2, v1}, Lo/performGetLayoutInflater;-><init>(B)V

    check-cast p2, Lo/checkForGaps;

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10036
    check-cast p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    iget-object v0, p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10043
    new-instance p2, Lo/repositionToWrapContentIfNecessary;

    iget-object p1, p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-direct {p2, p1, v1}, Lo/repositionToWrapContentIfNecessary;-><init>(Ljava/util/List;B)V

    .line 135
    iput-object p2, p0, Lo/updateAnchorFromChildren;->onPostMessage:Lo/repositionToWrapContentIfNecessary;

    .line 11000
    iget-object p1, p0, Lo/updateAnchorFromChildren;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/updateAnchorFromPendingData;

    .line 11026
    iget-object p1, p1, Lo/updateAnchorFromPendingData;->onNavigationEvent:Lo/setActive;

    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 136
    iget-object p2, p0, Lo/updateAnchorFromChildren;->onTransact:Lo/setPlaybackToRemote;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    .line 12000
    iget-object p1, p0, Lo/updateAnchorFromChildren;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/updateAnchorFromPendingData;

    .line 12026
    iget-object p1, p1, Lo/updateAnchorFromPendingData;->onNavigationEvent:Lo/setActive;

    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 137
    move-object p2, p0

    check-cast p2, Lo/toLegacyStreamType;

    iget-object v0, p0, Lo/updateAnchorFromChildren;->onTransact:Lo/setPlaybackToRemote;

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 13000
    iget-object p1, p0, Lo/updateAnchorFromChildren;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/updateAnchorFromPendingData;

    .line 139
    invoke-virtual {p0}, Lo/updateAnchorFromChildren;->extraCallback()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "type"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13062
    sget-object v0, Lo/LinearLayoutManager;->onPostMessage:Lo/LinearLayoutManager;

    invoke-static {}, Lo/LinearLayoutManager;->ICustomTabsCallback()Lo/setActive;

    move-result-object v0

    new-instance v1, Lo/updateAnchorFromPendingData$onMessageChannelReady;

    invoke-direct {v1, p1, p2}, Lo/updateAnchorFromPendingData$onMessageChannelReady;-><init>(Lo/updateAnchorFromPendingData;Ljava/lang/String;)V

    check-cast v1, Lo/setPlaybackToRemote;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onNavigationEvent(Lo/setPlaybackToRemote;)V

    return-void
.end method
