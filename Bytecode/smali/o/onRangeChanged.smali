.class public final Lo/onRangeChanged;
.super Lo/MediaControllerCompat$TransportControlsApi24;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$J\u000e\u0010%\u001a\u00020\"2\u0006\u0010#\u001a\u00020$J\u0006\u0010&\u001a\u00020\"J\u0010\u0010\'\u001a\u00020\"2\u0008\u0010(\u001a\u0004\u0018\u00010\u000fR\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR \u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000b\"\u0004\u0008\u0011\u0010\rR\u001b\u0010\u0012\u001a\u00020\u00138BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0014\u0010\u0015R&\u0010\u0018\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001a0\u00190\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u000b\"\u0004\u0008\u001c\u0010\rR\u0017\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u001e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010 \u00a8\u0006)"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/control/payments/ControlPaymentsViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "application",
        "Landroid/app/Application;",
        "(Landroid/app/Application;)V",
        "_userSegmentsResponse",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/dreamplug/fabrik/ui/control/UserSegmentResponse;",
        "cardValidationData",
        "Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;",
        "getCardValidationData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "setCardValidationData",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "controlPayment",
        "Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;",
        "getControlPayment",
        "setControlPayment",
        "controlService",
        "Lcom/dreamplug/fabrik/ui/control/helper/ControlService;",
        "getControlService",
        "()Lcom/dreamplug/fabrik/ui/control/helper/ControlService;",
        "controlService$delegate",
        "Lkotlin/Lazy;",
        "dismissBottomSheet",
        "Lcom/dreamplug/utils/Event;",
        "",
        "getDismissBottomSheet",
        "setDismissBottomSheet",
        "userSegmentsResponse",
        "Landroidx/lifecycle/LiveData;",
        "getUserSegmentsResponse",
        "()Landroidx/lifecycle/LiveData;",
        "fetchCardValidationData",
        "",
        "id",
        "",
        "fetchDetails",
        "fetchUserSegmentData",
        "update",
        "payment",
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
.field ICustomTabsCallback:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;",
            ">;"
        }
    .end annotation
.end field

.field final ICustomTabsCallback$Stub:Lo/isSameListener;

.field extraCallback:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lo/throwIfInMutationOperation<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field final onMessageChannelReady:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lcom/dreamplug/fabrik/ui/control/UserSegmentResponse;",
            ">;"
        }
    .end annotation
.end field

.field onNavigationEvent:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1}, Lo/MediaControllerCompat$TransportControlsApi24;-><init>(Landroid/app/Application;)V

    .line 27
    new-instance p1, Lo/setActive;

    invoke-direct {p1}, Lo/setActive;-><init>()V

    iput-object p1, p0, Lo/onRangeChanged;->onNavigationEvent:Lo/setActive;

    .line 29
    new-instance p1, Lo/setActive;

    invoke-direct {p1}, Lo/setActive;-><init>()V

    iput-object p1, p0, Lo/onRangeChanged;->ICustomTabsCallback:Lo/setActive;

    .line 31
    new-instance p1, Lo/setActive;

    invoke-direct {p1}, Lo/setActive;-><init>()V

    iput-object p1, p0, Lo/onRangeChanged;->extraCallback:Lo/setActive;

    .line 35
    new-instance p1, Lo/setActive;

    invoke-direct {p1}, Lo/setActive;-><init>()V

    iput-object p1, p0, Lo/onRangeChanged;->onMessageChannelReady:Lo/setActive;

    .line 37
    sget-object p1, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    .line 96
    sget-object p1, Lo/onRangeChanged$onPostMessage;->onPostMessage:Lo/onRangeChanged$onPostMessage;

    check-cast p1, Lo/getServerTime;

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2021
    new-instance v0, Lo/fromChildMerge;

    invoke-direct {v0, p1}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v0, Lo/isSameListener;

    .line 96
    iput-object v0, p0, Lo/onRangeChanged;->ICustomTabsCallback$Stub:Lo/isSameListener;

    return-void
.end method

.method public static final synthetic extraCallback(Lo/onRangeChanged;)Lo/setActive;
    .locals 0

    .line 25
    iget-object p0, p0, Lo/onRangeChanged;->onMessageChannelReady:Lo/setActive;

    return-object p0
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2000
    iget-object v0, p0, Lo/onRangeChanged;->ICustomTabsCallback$Stub:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getMainThreadExecutor;

    .line 69
    invoke-interface {v0, p1}, Lo/getMainThreadExecutor;->extraCallback(Ljava/lang/String;)Lo/clearScrap;

    move-result-object p1

    .line 70
    new-instance v0, Lo/onRangeChanged$extraCallback;

    invoke-direct {v0, p0}, Lo/onRangeChanged$extraCallback;-><init>(Lo/onRangeChanged;)V

    check-cast v0, Lo/getScrapOrCachedViewForId;

    invoke-interface {p1, v0}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)V
    .locals 2

    const-string v0, "id"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1000
    iget-object v0, p0, Lo/onRangeChanged;->ICustomTabsCallback$Stub:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getMainThreadExecutor;

    const/4 v1, 0x0

    .line 1025
    invoke-interface {v0, p1, v1}, Lo/getMainThreadExecutor;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)Lo/clearScrap;

    move-result-object p1

    .line 45
    new-instance v0, Lo/onRangeChanged$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/onRangeChanged$ICustomTabsCallback;-><init>(Lo/onRangeChanged;)V

    check-cast v0, Lo/getScrapOrCachedViewForId;

    invoke-interface {p1, v0}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    return-void
.end method
