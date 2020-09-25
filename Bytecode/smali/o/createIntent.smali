.class public final Lo/createIntent;
.super Landroid/content/BroadcastReceiver;
.source ""

# interfaces
.implements Lo/launchQuerySearch;


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J\u0010\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u001a\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u0010\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0018\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0010\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\rH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/datadog/android/core/internal/system/BroadcastReceiverSystemInfoProvider;",
        "Landroid/content/BroadcastReceiver;",
        "Lcom/datadog/android/core/internal/system/SystemInfoProvider;",
        "()V",
        "systemInfo",
        "Lcom/datadog/android/core/internal/system/SystemInfo;",
        "getLatestSystemInfo",
        "handleBatteryIntent",
        "",
        "intent",
        "Landroid/content/Intent;",
        "handlePowerSaveIntent",
        "context",
        "Landroid/content/Context;",
        "onReceive",
        "register",
        "registerIntentFilter",
        "action",
        "",
        "unregister",
        "dd-sdk-android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private extraCallback:Lo/launchIntent;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 21
    new-instance v0, Lo/launchIntent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/launchIntent;-><init>(B)V

    iput-object v0, p0, Lo/createIntent;->extraCallback:Lo/launchIntent;

    return-void
.end method


# virtual methods
.method public final extraCallback()Lo/launchIntent;
    .locals 1

    .line 56
    iget-object v0, p0, Lo/createIntent;->extraCallback:Lo/launchIntent;

    return-object v0
.end method

.method public final onMessageChannelReady(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    move-object v0, p0

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final onNavigationEvent(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3064
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 3065
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3066
    move-object v1, p0

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 3067
    invoke-virtual {p0, p1, v0}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 4064
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    .line 4065
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4066
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 4067
    invoke-virtual {p0, p1, v0}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 27
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const v3, -0x5bb23923

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eq v2, v3, :cond_6

    const p2, 0x6a0dd473

    if-eq v2, p2, :cond_2

    goto/16 :goto_3

    :cond_2
    const-string p2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    .line 32
    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 33
    invoke-static {}, Lo/createIntentFromSuggestion;->extraCallback()Lo/onQueryTextChange;

    move-result-object p2

    const-string v1, "received power save mode update"

    invoke-static {p2, v1}, Lo/onQueryTextChange;->onPostMessage(Lo/onQueryTextChange;Ljava/lang/String;)V

    .line 2085
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p2, v1, :cond_5

    const-string p2, "power"

    .line 2086
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Landroid/os/PowerManager;

    if-nez p2, :cond_3

    move-object p1, v0

    :cond_3
    check-cast p1, Landroid/os/PowerManager;

    if-eqz p1, :cond_4

    .line 2087
    invoke-virtual {p1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 2088
    :goto_1
    iget-object p2, p0, Lo/createIntent;->extraCallback:Lo/launchIntent;

    invoke-static {p2, v0, v5, p1, v4}, Lo/launchIntent;->onMessageChannelReady(Lo/launchIntent;Lo/launchIntent$onPostMessage;IZI)Lo/launchIntent;

    move-result-object p1

    iput-object p1, p0, Lo/createIntent;->extraCallback:Lo/launchIntent;

    :cond_5
    return-void

    :cond_6
    const-string p1, "android.intent.action.BATTERY_CHANGED"

    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 29
    invoke-static {}, Lo/createIntentFromSuggestion;->extraCallback()Lo/onQueryTextChange;

    move-result-object p1

    const-string v0, "received battery update"

    invoke-static {p1, v0}, Lo/onQueryTextChange;->onPostMessage(Lo/onQueryTextChange;Ljava/lang/String;)V

    const/4 p1, 0x1

    const-string/jumbo v0, "status"

    .line 1071
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, -0x1

    const-string v1, "level"

    .line 1075
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x64

    const-string/jumbo v2, "scale"

    .line 1076
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 1078
    iget-object v2, p0, Lo/createIntent;->extraCallback:Lo/launchIntent;

    .line 1079
    sget-object v3, Lo/launchIntent$onPostMessage;->asInterface:Lo/launchIntent$onPostMessage$onNavigationEvent;

    const/4 v3, 0x2

    const/4 v6, 0x4

    if-eq p1, v3, :cond_a

    if-eq p1, v4, :cond_9

    if-eq p1, v6, :cond_8

    const/4 v3, 0x5

    if-eq p1, v3, :cond_7

    .line 2032
    sget-object p1, Lo/launchIntent$onPostMessage;->onNavigationEvent:Lo/launchIntent$onPostMessage;

    goto :goto_2

    .line 2028
    :cond_7
    sget-object p1, Lo/launchIntent$onPostMessage;->onPostMessage:Lo/launchIntent$onPostMessage;

    goto :goto_2

    .line 2029
    :cond_8
    sget-object p1, Lo/launchIntent$onPostMessage;->onMessageChannelReady:Lo/launchIntent$onPostMessage;

    goto :goto_2

    .line 2030
    :cond_9
    sget-object p1, Lo/launchIntent$onPostMessage;->ICustomTabsCallback:Lo/launchIntent$onPostMessage;

    goto :goto_2

    .line 2031
    :cond_a
    sget-object p1, Lo/launchIntent$onPostMessage;->extraCallback:Lo/launchIntent$onPostMessage;

    :goto_2
    mul-int/lit8 v0, v0, 0x64

    .line 1080
    div-int/2addr v0, p2

    .line 1078
    invoke-static {v2, p1, v0, v5, v6}, Lo/launchIntent;->onMessageChannelReady(Lo/launchIntent;Lo/launchIntent$onPostMessage;IZI)Lo/launchIntent;

    move-result-object p1

    iput-object p1, p0, Lo/createIntent;->extraCallback:Lo/launchIntent;

    return-void

    .line 36
    :cond_b
    :goto_3
    invoke-static {}, Lo/createIntentFromSuggestion;->extraCallback()Lo/onQueryTextChange;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "received unknown update "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lo/onQueryTextChange;->onPostMessage(Lo/onQueryTextChange;Ljava/lang/String;)V

    return-void
.end method
