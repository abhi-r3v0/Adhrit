.class public final Lo/component24;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static ICustomTabsCallback:F

.field private static onMessageChannelReady:J

.field private static final onPostMessage:Landroid/content/IntentFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/component24;->onPostMessage:Landroid/content/IntentFilter;

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 32
    sput v0, Lo/component24;->ICustomTabsCallback:F

    return-void
.end method

.method public static declared-synchronized ICustomTabsCallback(Landroid/content/Context;)F
    .locals 6

    const-class v0, Lo/component24;

    monitor-enter v0

    .line 21
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sget-wide v3, Lo/component24;->onMessageChannelReady:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xea60

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    sget v1, Lo/component24;->ICustomTabsCallback:F

    .line 22
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 23
    sget p0, Lo/component24;->ICustomTabsCallback:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    .line 24
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    sget-object v2, Lo/component24;->onPostMessage:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v1, "level"

    const/4 v2, -0x1

    .line 26
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "scale"

    .line 27
    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    int-to-float v1, v1

    int-to-float p0, p0

    div-float/2addr v1, p0

    .line 28
    sput v1, Lo/component24;->ICustomTabsCallback:F

    .line 29
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sput-wide v1, Lo/component24;->onMessageChannelReady:J

    .line 30
    sget p0, Lo/component24;->ICustomTabsCallback:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static onMessageChannelReady(Landroid/content/Context;)I
    .locals 5

    const/4 v0, -0x1

    if-eqz p0, :cond_7

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lo/component24;->onPostMessage:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string v3, "plugged"

    .line 5
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    :goto_0
    const/4 v3, 0x3

    .line 7
    invoke-static {}, Lo/component20;->ICustomTabsCallback()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x7

    :cond_2
    and-int/2addr v1, v3

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    const-string v3, "power"

    .line 11
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    if-nez p0, :cond_4

    return v0

    .line 15
    :cond_4
    invoke-static {}, Lo/component20;->onTransact()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    goto :goto_2

    .line 17
    :cond_5
    invoke-virtual {p0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p0

    :goto_2
    if-eqz p0, :cond_6

    const/4 v2, 0x2

    :cond_6
    or-int p0, v2, v1

    return p0

    :cond_7
    :goto_3
    return v0
.end method
