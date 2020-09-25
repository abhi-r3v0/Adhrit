.class public abstract Lo/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;
.super Lo/ImmLeaksCleaner;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/ImmLeaksCleaner<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final onMessageChannelReady:Ljava/lang/String;


# instance fields
.field private final ICustomTabsCallback:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "BrdcstRcvrCnstrntTrckr"

    .line 37
    invoke-static {v0}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->onMessageChannelReady:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/supportShouldUpRecreateTask;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lo/ImmLeaksCleaner;-><init>(Landroid/content/Context;Lo/supportShouldUpRecreateTask;)V

    .line 39
    new-instance p1, Lo/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable$4;

    invoke-direct {p1, p0}, Lo/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable$4;-><init>(Lo/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;)V

    iput-object p1, p0, Lo/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->ICustomTabsCallback:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback()Landroid/content/IntentFilter;
.end method

.method public final extraCallback()V
    .locals 5

    .line 70
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v1, Lo/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->onMessageChannelReady:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%s: registering receiver"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Throwable;

    .line 70
    invoke-virtual {v0, v1, v2, v3}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 73
    iget-object v0, p0, Lo/ImmLeaksCleaner;->onPostMessage:Landroid/content/Context;

    iget-object v1, p0, Lo/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->ICustomTabsCallback:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lo/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->ICustomTabsCallback()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public abstract onMessageChannelReady(Landroid/content/Intent;)V
.end method

.method public final onNavigationEvent()V
    .locals 5

    .line 78
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v1, Lo/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->onMessageChannelReady:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%s: unregistering receiver"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Throwable;

    .line 78
    invoke-virtual {v0, v1, v2, v3}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 81
    iget-object v0, p0, Lo/ImmLeaksCleaner;->onPostMessage:Landroid/content/Context;

    iget-object v1, p0, Lo/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->ICustomTabsCallback:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
