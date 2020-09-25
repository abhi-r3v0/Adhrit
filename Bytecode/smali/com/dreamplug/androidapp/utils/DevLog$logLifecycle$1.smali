.class public final Lcom/dreamplug/androidapp/utils/DevLog$logLifecycle$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getMaxCardElevation;->ICustomTabsCallback(Ljava/lang/String;Lo/MediaControllerCompatApi21$CallbackProxy;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/dreamplug/androidapp/utils/DevLog$logLifecycle$1",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "onCreate",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "onDestroy",
        "onPause",
        "onResume",
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
.field private synthetic extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

.field private synthetic onMessageChannelReady:Z

.field private synthetic onNavigationEvent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLo/MediaControllerCompatApi21$CallbackProxy;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/dreamplug/androidapp/utils/DevLog$logLifecycle$1;->onNavigationEvent:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/dreamplug/androidapp/utils/DevLog$logLifecycle$1;->onMessageChannelReady:Z

    iput-object p3, p0, Lcom/dreamplug/androidapp/utils/DevLog$logLifecycle$1;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/toLegacyStreamType;)V
    .locals 2

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object v0, Lo/getMaxCardElevation;->extraCallback:Lo/getMaxCardElevation;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/dreamplug/androidapp/utils/DevLog$logLifecycle$1;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " create(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/getMaxCardElevation;->ICustomTabsCallback(Ljava/lang/String;)V

    return-void
.end method

.method public final asInterface(Lo/toLegacyStreamType;)V
    .locals 2

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget-object v0, Lo/getMaxCardElevation;->extraCallback:Lo/getMaxCardElevation;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/dreamplug/androidapp/utils/DevLog$logLifecycle$1;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " destroy(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/getMaxCardElevation;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 49
    iget-object p1, p0, Lcom/dreamplug/androidapp/utils/DevLog$logLifecycle$1;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    return-void
.end method

.method public final extraCallback(Lo/toLegacyStreamType;)V
    .locals 2

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    sget-object v0, Lo/getMaxCardElevation;->extraCallback:Lo/getMaxCardElevation;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/dreamplug/androidapp/utils/DevLog$logLifecycle$1;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pause(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/getMaxCardElevation;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 42
    iget-boolean p1, p0, Lcom/dreamplug/androidapp/utils/DevLog$logLifecycle$1;->onMessageChannelReady:Z

    if-eqz p1, :cond_0

    .line 43
    sget-object p1, Lo/willCreateInTime;->onMessageChannelReady:Lo/willCreateInTime;

    iget-object p1, p0, Lcom/dreamplug/androidapp/utils/DevLog$logLifecycle$1;->onNavigationEvent:Ljava/lang/String;

    invoke-static {p1}, Lo/willCreateInTime;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onNavigationEvent(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Lo/toLegacyStreamType;)V
    .locals 2

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lo/getMaxCardElevation;->extraCallback:Lo/getMaxCardElevation;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/dreamplug/androidapp/utils/DevLog$logLifecycle$1;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " resume(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/getMaxCardElevation;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 35
    iget-boolean p1, p0, Lcom/dreamplug/androidapp/utils/DevLog$logLifecycle$1;->onMessageChannelReady:Z

    if-eqz p1, :cond_0

    .line 36
    sget-object p1, Lo/willCreateInTime;->onMessageChannelReady:Lo/willCreateInTime;

    iget-object p1, p0, Lcom/dreamplug/androidapp/utils/DevLog$logLifecycle$1;->onNavigationEvent:Ljava/lang/String;

    invoke-static {p1}, Lo/willCreateInTime;->extraCallback(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
