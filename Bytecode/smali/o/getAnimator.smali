.class public final Lo/getAnimator;
.super Lo/setQueue;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u001d\u001a\u00020\u001e2\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u001e0 H\u0002J\u0008\u0010!\u001a\u00020\u001eH\u0002J\u0008\u0010\"\u001a\u0004\u0018\u00010#J\u0014\u0010$\u001a\u00020\u001e2\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010&H\u0002J\u0006\u0010\'\u001a\u00020\u001eR\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\tR(\u0010\u000c\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u0017\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u001a\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006("
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/cm/benefits/BenefitsViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "()V",
        "_state",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/dreamplug/fabrik/ui/cm/CMResponseState;",
        "controlService",
        "Lcom/dreamplug/fabrik/ui/control/helper/ControlService;",
        "getControlService",
        "()Lcom/dreamplug/fabrik/ui/control/helper/ControlService;",
        "controlService$delegate",
        "Lkotlin/Lazy;",
        "instrumentMap",
        "",
        "",
        "",
        "getInstrumentMap",
        "()Ljava/util/Map;",
        "setInstrumentMap",
        "(Ljava/util/Map;)V",
        "isCacheAvailable",
        "",
        "()Z",
        "setCacheAvailable",
        "(Z)V",
        "state",
        "Landroidx/lifecycle/LiveData;",
        "getState",
        "()Landroidx/lifecycle/LiveData;",
        "doesCacheExists",
        "",
        "result",
        "Lkotlin/Function1;",
        "fetchBenefits",
        "getHeathApiStatus",
        "Lcom/dreamplug/utils/health/Health$Status;",
        "postErrorIfApplicable",
        "error",
        "Lcom/dreamplug/fabrik/ui/cm/CMResponseState$ErrorStateData;",
        "refresh",
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
.field private final ICustomTabsCallback:Lo/isSameListener;

.field private final extraCallback:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lo/getAllowReturnTransitionOverlap;",
            ">;"
        }
    .end annotation
.end field

.field final onMessageChannelReady:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lo/getAllowReturnTransitionOverlap;",
            ">;"
        }
    .end annotation
.end field

.field onNavigationEvent:Z

.field onPostMessage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 25
    invoke-direct {p0}, Lo/setQueue;-><init>()V

    .line 27
    sget-object v0, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    .line 88
    sget-object v0, Lo/getAnimator$extraCallback;->onNavigationEvent:Lo/getAnimator$extraCallback;

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 88
    iput-object v1, p0, Lo/getAnimator;->ICustomTabsCallback:Lo/isSameListener;

    .line 28
    new-instance v0, Lo/setActive;

    invoke-direct {v0}, Lo/setActive;-><init>()V

    iput-object v0, p0, Lo/getAnimator;->extraCallback:Lo/setActive;

    .line 29
    check-cast v0, Landroidx/lifecycle/LiveData;

    iput-object v0, p0, Lo/getAnimator;->onMessageChannelReady:Landroidx/lifecycle/LiveData;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lo/getAnimator;->onPostMessage:Ljava/util/Map;

    .line 36
    invoke-static {}, Lo/setTrackedQueryKeys;->onPostMessage()Lo/zombifyForRemove;

    move-result-object v0

    check-cast v0, Lo/isZombied;

    invoke-static {v0}, Lo/extraCallback;->onNavigationEvent(Lo/isZombied;)Lo/isFromUser;

    move-result-object v0

    new-instance v1, Lo/getAnimator$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lo/getAnimator$2;-><init>(Lo/getAnimator;Lo/setSessionPersistenceKey;)V

    check-cast v1, Lo/nextTransactionOrder;

    const/4 v3, 0x3

    .line 4001
    invoke-static {v0, v2, v2, v1, v3}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(Lo/isFromUser;Lo/isZombied;Lo/getQueryParams;Lo/nextTransactionOrder;I)Lo/assertValidTrackedQuery;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/getAnimator;Lo/getAllowReturnTransitionOverlap$onMessageChannelReady;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lo/getAnimator;->onPostMessage(Lo/getAllowReturnTransitionOverlap$onMessageChannelReady;)V

    return-void
.end method

.method public static extraCallback()Lcom/dreamplug/utils/health/Health$onNavigationEvent;
    .locals 3

    .line 33
    sget-object v0, Lcom/dreamplug/utils/health/Health;->onMessageChannelReady:Lcom/dreamplug/utils/health/Health;

    sget-object v0, Lcom/dreamplug/utils/health/Health$onPostMessage;->onRelationshipValidationResult:Lcom/dreamplug/utils/health/Health$onPostMessage;

    invoke-static {v0}, Lcom/dreamplug/utils/health/Health;->onMessageChannelReady(Lcom/dreamplug/utils/health/Health$onPostMessage;)Lo/setActive;

    move-result-object v0

    .line 1320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 1321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 33
    :goto_0
    check-cast v0, Lcom/dreamplug/utils/health/Health$ServiceStatus;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/dreamplug/utils/health/Health$ServiceStatus;->getQos()Lcom/dreamplug/utils/health/Health$onNavigationEvent;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v2
.end method

.method public static final synthetic extraCallback(Lo/getAnimator;)Lo/setActive;
    .locals 0

    .line 25
    iget-object p0, p0, Lo/getAnimator;->extraCallback:Lo/setActive;

    return-object p0
.end method

.method public static final synthetic onMessageChannelReady(Lo/onDisconnectSetValue;)V
    .locals 3

    .line 4051
    sget-object v0, Lo/recycleView;->onMessageChannelReady:Lo/recycleView;

    const-class v0, Lcom/dreamplug/fabrik/ui/cm/models/MyCardsResponse;

    check-cast v0, Ljava/lang/reflect/Type;

    sget-object v1, Lo/getScrapViewAt;->onMessageChannelReady:Ljava/lang/String;

    new-instance v2, Lo/getAnimator$onPostMessage;

    invoke-direct {v2, p0}, Lo/getAnimator$onPostMessage;-><init>(Lo/onDisconnectSetValue;)V

    check-cast v2, Lo/onDisconnectSetValue;

    const-string p0, "control_service_benefits"

    invoke-static {p0, v0, v1, v2}, Lo/recycleView;->onPostMessage(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/String;Lo/onDisconnectSetValue;)V

    return-void
.end method

.method private final onPostMessage(Lo/getAllowReturnTransitionOverlap$onMessageChannelReady;)V
    .locals 5

    .line 57
    invoke-static {}, Lo/getAnimator;->extraCallback()Lcom/dreamplug/utils/health/Health$onNavigationEvent;

    move-result-object v0

    .line 58
    sget-object v1, Lcom/dreamplug/utils/health/Health$onNavigationEvent;->ICustomTabsCallback:Lcom/dreamplug/utils/health/Health$onNavigationEvent;

    if-ne v0, v1, :cond_0

    .line 59
    iget-object p1, p0, Lo/getAnimator;->extraCallback:Lo/setActive;

    new-instance v0, Lo/getAllowReturnTransitionOverlap$onPostMessage;

    .line 2215
    new-instance v1, Lo/getAllowReturnTransitionOverlap$onMessageChannelReady;

    const v2, 0x7f1300ff

    const v3, 0x7f1300fe

    const v4, 0x7f130100

    invoke-direct {v1, v2, v3, v4}, Lo/getAllowReturnTransitionOverlap$onMessageChannelReady;-><init>(III)V

    .line 59
    invoke-direct {v0, v1}, Lo/getAllowReturnTransitionOverlap$onPostMessage;-><init>(Lo/getAllowReturnTransitionOverlap$onMessageChannelReady;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 61
    iget-object v0, p0, Lo/getAnimator;->extraCallback:Lo/setActive;

    new-instance v1, Lo/getAllowReturnTransitionOverlap$onPostMessage;

    invoke-direct {v1, p1}, Lo/getAllowReturnTransitionOverlap$onPostMessage;-><init>(Lo/getAllowReturnTransitionOverlap$onMessageChannelReady;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method static synthetic onPostMessage(Lo/getAnimator;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, v0}, Lo/getAnimator;->onPostMessage(Lo/getAllowReturnTransitionOverlap$onMessageChannelReady;)V

    return-void
.end method


# virtual methods
.method final onPostMessage()V
    .locals 9

    .line 3000
    iget-object v0, p0, Lo/getAnimator;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getMainThreadExecutor;

    .line 66
    invoke-interface {v0}, Lo/getMainThreadExecutor;->onNavigationEvent()Lo/clearScrap;

    move-result-object v0

    sget-object v1, Lo/validateViewHolderForOffsetPosition;->onNavigationEvent:Lo/validateViewHolderForOffsetPosition$onPostMessage;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/16 v8, 0xf

    invoke-static/range {v2 .. v8}, Lo/validateViewHolderForOffsetPosition$onPostMessage;->onNavigationEvent(IJIJI)Lo/validateViewHolderForOffsetPosition;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/clearScrap;->onMessageChannelReady(Lo/validateViewHolderForOffsetPosition;)V

    .line 67
    new-instance v1, Lo/getAnimator$onNavigationEvent;

    invoke-direct {v1, p0}, Lo/getAnimator$onNavigationEvent;-><init>(Lo/getAnimator;)V

    check-cast v1, Lo/getScrapOrCachedViewForId;

    invoke-interface {v0, v1}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    return-void
.end method
