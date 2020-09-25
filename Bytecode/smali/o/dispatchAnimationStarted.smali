.class public final Lo/dispatchAnimationStarted;
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
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0006H\u0002J\u000e\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\u000cJ\u0012\u0010\u0012\u001a\u00020\u000c2\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014J\u0006\u0010\u0015\u001a\u00020\u000cR\u001a\u0010\u0003\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/main/tabnavigation/TabNavigator;",
        "Landroidx/lifecycle/ViewModel;",
        "()V",
        "fragmentData",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/dreamplug/androidapp/core/Event;",
        "Lcom/dreamplug/fabrik/ui/main/navigation/AppScreens$TabAppScreens;",
        "navigationData",
        "Landroidx/lifecycle/LiveData;",
        "getNavigationData",
        "()Landroidx/lifecycle/LiveData;",
        "post",
        "",
        "screenData",
        "toCards",
        "controlExtra",
        "Lcom/dreamplug/fabrik/ui/FabrikFragmentExtraData$ControlLandingExtra;",
        "toHome",
        "toLifestyle",
        "source",
        "",
        "toMoney",
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
.field public final ICustomTabsCallback:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lo/getThumbTintList<",
            "Lo/onGetChildDrawingOrder$onItemLoaded;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lo/setQueue;-><init>()V

    .line 14
    new-instance v0, Lo/setActive;

    invoke-direct {v0}, Lo/setActive;-><init>()V

    iput-object v0, p0, Lo/dispatchAnimationStarted;->ICustomTabsCallback:Lo/setActive;

    return-void
.end method

.method public static synthetic extraCallback(Lo/dispatchAnimationStarted;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0}, Lo/dispatchAnimationStarted;->ICustomTabsCallback(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 21
    sget-object v0, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 1000
    sget-object v0, Lo/isInLayout;->write:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    sget-object v0, Lo/setChangeDuration;->asInterface:Lo/setChangeDuration;

    invoke-static {v0, p1}, Lo/setChangeDuration;->onMessageChannelReady(Lo/setChangeDuration;Ljava/lang/String;)V

    .line 24
    :cond_0
    sget-object p1, Lo/onGetChildDrawingOrder$onItemLoaded$onPostMessage;->onMessageChannelReady:Lo/onGetChildDrawingOrder$onItemLoaded$onPostMessage;

    check-cast p1, Lo/onGetChildDrawingOrder$onItemLoaded;

    .line 1018
    iget-object v0, p0, Lo/dispatchAnimationStarted;->ICustomTabsCallback:Lo/setActive;

    new-instance v1, Lo/getThumbTintList;

    invoke-direct {v1, p1}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method

.method public final ICustomTabsCallback(Lo/onDetach$ICustomTabsService;)V
    .locals 4

    const-string v0, "controlExtra"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object v0, Lo/setChangeDuration;->asInterface:Lo/setChangeDuration;

    .line 1026
    iget-object v1, p1, Lo/onDetach$ICustomTabsService;->extraCallback:Ljava/lang/String;

    .line 1027
    iget-object v2, p1, Lo/onDetach$ICustomTabsService;->onMessageChannelReady:Ljava/lang/String;

    const-string/jumbo v3, "source"

    .line 28
    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1042
    new-instance v3, Lo/setRemoveDuration$extraCallback$ICustomTabsCallback;

    invoke-direct {v3, v1, v2}, Lo/setRemoveDuration$extraCallback$ICustomTabsCallback;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v3, Lo/setRemoveDuration;

    .line 2010
    new-instance v1, Lo/getThumbTintList;

    invoke-direct {v1, v3}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 29
    new-instance v0, Lo/onGetChildDrawingOrder$onItemLoaded$ICustomTabsCallback;

    invoke-direct {v0, p1}, Lo/onGetChildDrawingOrder$onItemLoaded$ICustomTabsCallback;-><init>(Lo/onDetach$ICustomTabsService;)V

    check-cast v0, Lo/onGetChildDrawingOrder$onItemLoaded;

    .line 2018
    iget-object p1, p0, Lo/dispatchAnimationStarted;->ICustomTabsCallback:Lo/setActive;

    new-instance v1, Lo/getThumbTintList;

    invoke-direct {v1, v0}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method
