.class public final Lo/takeContentChanged;
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
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u001c\u001a\u00020\u001dJ\u001a\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020\u00142\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u0014R\u0019\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0019\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\tR\u001b\u0010\r\u001a\u00020\u000e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0016\"\u0004\u0008\u001b\u0010\u0018\u00a8\u0006!"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/control/addcard/AddVerifyCardSuccessViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "application",
        "Landroid/app/Application;",
        "(Landroid/app/Application;)V",
        "amexLoginStatus",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/dreamplug/fabrik/ui/control/AmexLoginStatus;",
        "getAmexLoginStatus",
        "()Landroidx/lifecycle/MutableLiveData;",
        "cardDetails",
        "Lcom/dreamplug/fabrik/ui/control/ControlAggregatorResponse;",
        "getCardDetails",
        "controlService",
        "Lcom/dreamplug/fabrik/ui/control/helper/ControlService;",
        "getControlService",
        "()Lcom/dreamplug/fabrik/ui/control/helper/ControlService;",
        "controlService$delegate",
        "Lkotlin/Lazy;",
        "instrumentId",
        "",
        "getInstrumentId",
        "()Ljava/lang/String;",
        "setInstrumentId",
        "(Ljava/lang/String;)V",
        "issuer",
        "getIssuer",
        "setIssuer",
        "fetchAmexLoginStatus",
        "",
        "fetchDetails",
        "id",
        "metaData",
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
.field final ICustomTabsCallback:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lcom/dreamplug/fabrik/ui/control/AmexLoginStatus;",
            ">;"
        }
    .end annotation
.end field

.field asInterface:Ljava/lang/String;

.field final extraCallback:Lo/isSameListener;

.field onMessageChannelReady:Ljava/lang/String;

.field final onNavigationEvent:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lcom/dreamplug/fabrik/ui/control/ControlAggregatorResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1}, Lo/MediaControllerCompat$TransportControlsApi24;-><init>(Landroid/app/Application;)V

    .line 16
    sget-object p1, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    .line 50
    sget-object p1, Lo/takeContentChanged$onPostMessage;->ICustomTabsCallback:Lo/takeContentChanged$onPostMessage;

    check-cast p1, Lo/getServerTime;

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    new-instance v0, Lo/fromChildMerge;

    invoke-direct {v0, p1}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v0, Lo/isSameListener;

    .line 50
    iput-object v0, p0, Lo/takeContentChanged;->extraCallback:Lo/isSameListener;

    .line 17
    new-instance p1, Lo/setActive;

    invoke-direct {p1}, Lo/setActive;-><init>()V

    iput-object p1, p0, Lo/takeContentChanged;->onNavigationEvent:Lo/setActive;

    .line 18
    new-instance p1, Lo/setActive;

    invoke-direct {p1}, Lo/setActive;-><init>()V

    iput-object p1, p0, Lo/takeContentChanged;->ICustomTabsCallback:Lo/setActive;

    const-string p1, ""

    .line 19
    iput-object p1, p0, Lo/takeContentChanged;->onMessageChannelReady:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lo/takeContentChanged;->asInterface:Ljava/lang/String;

    return-void
.end method

.method public static synthetic onPostMessage(Lo/takeContentChanged;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, p1, v0}, Lo/takeContentChanged;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1000
    iget-object v0, p0, Lo/takeContentChanged;->extraCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getMainThreadExecutor;

    .line 23
    invoke-interface {v0, p1, p2}, Lo/getMainThreadExecutor;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)Lo/clearScrap;

    move-result-object p1

    .line 24
    new-instance p2, Lo/takeContentChanged$onNavigationEvent;

    invoke-direct {p2, p0}, Lo/takeContentChanged$onNavigationEvent;-><init>(Lo/takeContentChanged;)V

    check-cast p2, Lo/getScrapOrCachedViewForId;

    invoke-interface {p1, p2}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    return-void
.end method
