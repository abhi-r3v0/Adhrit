.class public final Lo/newTopicsSyncTriggerExecutor;
.super Lo/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "BatteryNotLowTracker"

    .line 35
    invoke-static {v0}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/newTopicsSyncTriggerExecutor;->ICustomTabsCallback:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/supportShouldUpRecreateTask;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lo/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;-><init>(Landroid/content/Context;Lo/supportShouldUpRecreateTask;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Landroid/content/IntentFilter;
    .locals 2

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_OKAY"

    .line 80
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_LOW"

    .line 81
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method public final onMessageChannelReady(Landroid/content/Intent;)V
    .locals 6

    .line 87
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v1, Lo/newTopicsSyncTriggerExecutor;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "Received %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v3, v4}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 93
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const v3, -0x7606c095    # -6.0004207E-33f

    if-eq v1, v3, :cond_2

    const v3, 0x1d398bfd

    if-eq v1, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const-string v1, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v5, -0x1

    :goto_1
    if-eqz v5, :cond_5

    if-eq v5, v2, :cond_4

    goto :goto_2

    .line 99
    :cond_4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lo/ImmLeaksCleaner;->onPostMessage(Ljava/lang/Object;)V

    :goto_2
    return-void

    .line 95
    :cond_5
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lo/ImmLeaksCleaner;->onPostMessage(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic onPostMessage()Ljava/lang/Object;
    .locals 6

    .line 1059
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1060
    iget-object v1, p0, Lo/ImmLeaksCleaner;->onPostMessage:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1062
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v3, Lo/newTopicsSyncTriggerExecutor;->ICustomTabsCallback:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Throwable;

    const-string v4, "getInitialState - null intent received"

    invoke-virtual {v0, v3, v4, v1}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-object v2

    :cond_0
    const/4 v2, -0x1

    const-string/jumbo v3, "status"

    .line 1066
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "level"

    .line 1067
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v5, "scale"

    .line 1068
    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-float v2, v4

    int-to-float v0, v0

    div-float/2addr v2, v0

    const/4 v0, 0x1

    if-eq v3, v0, :cond_1

    const v3, 0x3e19999a    # 0.15f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 1073
    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
