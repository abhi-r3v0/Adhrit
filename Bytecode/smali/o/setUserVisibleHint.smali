.class public final Lo/setUserVisibleHint;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setUserVisibleHint$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\n\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0002J\u001c\u0010\n\u001a\u00020\u000c2\u0014\u0010\r\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0012\u0004\u0012\u00020\u000c0\u000eJ\n\u0010\u000f\u001a\u0004\u0018\u00010\u000bH\u0002J\n\u0010\u0010\u001a\u0004\u0018\u00010\u000bH\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0002J\u0014\u0010\u0013\u001a\u00020\u000c2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0014J\u0008\u0010\u0015\u001a\u00020\u0012H\u0002J\u0008\u0010\u0016\u001a\u00020\u000cH\u0002J\u0008\u0010\u0017\u001a\u00020\u0018H\u0002R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0004R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/helper/sms/ServiceSmsHelper;",
        "",
        "activity",
        "Landroidx/fragment/app/FragmentActivity;",
        "(Landroidx/fragment/app/FragmentActivity;)V",
        "getActivity",
        "()Landroidx/fragment/app/FragmentActivity;",
        "setActivity",
        "lifecycleObserver",
        "Landroidx/lifecycle/LifecycleObserver;",
        "getIntent",
        "Landroid/content/Intent;",
        "",
        "block",
        "Lkotlin/Function1;",
        "getLowerMiUiVersionIntent",
        "getMiUi8Intent",
        "hasSmsPermission",
        "",
        "ifServiceSms",
        "Lkotlin/Function0;",
        "isXiaomi",
        "removeObserver",
        "smsCount",
        "",
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
.field private final onMessageChannelReady:Lo/MediaControllerCompatApi21$TransportControls;

.field private onPostMessage:Lo/onSessionEvent;


# direct methods
.method public constructor <init>(Lo/onSessionEvent;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lo/setUserVisibleHint;->onPostMessage:Lo/onSessionEvent;

    .line 22
    new-instance v0, Lcom/dreamplug/fabrik/helper/sms/ServiceSmsHelper$lifecycleObserver$1;

    invoke-direct {v0, p0}, Lcom/dreamplug/fabrik/helper/sms/ServiceSmsHelper$lifecycleObserver$1;-><init>(Lo/setUserVisibleHint;)V

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    iput-object v0, p0, Lo/setUserVisibleHint;->onMessageChannelReady:Lo/MediaControllerCompatApi21$TransportControls;

    .line 29
    invoke-virtual {p1}, Lo/getMediaDescription;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p1

    iget-object v0, p0, Lo/setUserVisibleHint;->onMessageChannelReady:Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    return-void
.end method

.method public static final synthetic onPostMessage(Lo/setUserVisibleHint;)V
    .locals 2

    .line 2061
    iget-object v0, p0, Lo/setUserVisibleHint;->onPostMessage:Lo/onSessionEvent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/getMediaDescription;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lo/setUserVisibleHint;->onMessageChannelReady:Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v0, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    :cond_0
    const/4 v0, 0x0

    .line 2062
    iput-object v0, p0, Lo/setUserVisibleHint;->onPostMessage:Lo/onSessionEvent;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/onDisconnectSetValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onDisconnectSetValue<",
            "-",
            "Landroid/content/Intent;",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1058
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v1, "xiaomi"

    .line 2056
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lo/addAll;->ICustomTabsCallback:Lo/addAll;

    new-instance v1, Lo/setUserVisibleHint$onMessageChannelReady;

    invoke-direct {v1, p0, p1}, Lo/setUserVisibleHint$onMessageChannelReady;-><init>(Lo/setUserVisibleHint;Lo/onDisconnectSetValue;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 54
    invoke-interface {p1, v0}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
