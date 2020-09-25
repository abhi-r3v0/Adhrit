.class public final Lo/setMeasureSpecs;
.super Lo/setQueue;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setMeasureSpecs$onNavigationEvent;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\r\u0018\u00002\u00020\u0001:\u0001\u0015B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0013\u001a\u00020\u0014R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\tR\u0010\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000eR\u0017\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00108F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/max/MaxLandingViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "()V",
        "_state",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/dreamplug/fabrik/ui/max/MaxLandingViewModel$State;",
        "maxService",
        "Lcom/dreamplug/fabrik/ui/max/MaxService;",
        "getMaxService",
        "()Lcom/dreamplug/fabrik/ui/max/MaxService;",
        "maxService$delegate",
        "Lkotlin/Lazy;",
        "response",
        "com/dreamplug/fabrik/ui/max/MaxLandingViewModel$response$1",
        "Lcom/dreamplug/fabrik/ui/max/MaxLandingViewModel$response$1;",
        "state",
        "Landroidx/lifecycle/LiveData;",
        "getState",
        "()Landroidx/lifecycle/LiveData;",
        "getLandingData",
        "",
        "State",
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
.field final ICustomTabsCallback:Lo/setMeasureSpecs$onMessageChannelReady;

.field final extraCallback:Lo/isSameListener;

.field final onMessageChannelReady:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lo/setMeasureSpecs$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Lo/setQueue;-><init>()V

    .line 17
    new-instance v0, Lo/setActive;

    invoke-direct {v0}, Lo/setActive;-><init>()V

    iput-object v0, p0, Lo/setMeasureSpecs;->onMessageChannelReady:Lo/setActive;

    .line 18
    sget-object v0, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    .line 46
    sget-object v0, Lo/setMeasureSpecs$onPostMessage;->extraCallback:Lo/setMeasureSpecs$onPostMessage;

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 46
    iput-object v1, p0, Lo/setMeasureSpecs;->extraCallback:Lo/isSameListener;

    .line 22
    new-instance v0, Lo/setMeasureSpecs$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/setMeasureSpecs$onMessageChannelReady;-><init>(Lo/setMeasureSpecs;)V

    iput-object v0, p0, Lo/setMeasureSpecs;->ICustomTabsCallback:Lo/setMeasureSpecs$onMessageChannelReady;

    return-void
.end method

.method public static final synthetic onNavigationEvent(Lo/setMeasureSpecs;)Lo/setActive;
    .locals 0

    .line 14
    iget-object p0, p0, Lo/setMeasureSpecs;->onMessageChannelReady:Lo/setActive;

    return-object p0
.end method
