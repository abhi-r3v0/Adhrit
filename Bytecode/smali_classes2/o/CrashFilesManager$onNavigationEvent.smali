.class final Lo/CrashFilesManager$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Lo/BreakpadController$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashFilesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/CrashFilesManager$extraCallback;

.field private final onMessageChannelReady:Lo/BreakpadController;

.field private synthetic onNavigationEvent:Lo/CrashFilesManager;


# direct methods
.method public constructor <init>(Lo/CrashFilesManager;)V
    .locals 1

    .line 197
    iput-object p1, p0, Lo/CrashFilesManager$onNavigationEvent;->onNavigationEvent:Lo/CrashFilesManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    new-instance v0, Lo/BreakpadController;

    invoke-direct {v0, p0}, Lo/BreakpadController;-><init>(Lo/BreakpadController$extraCallback;)V

    iput-object v0, p0, Lo/CrashFilesManager$onNavigationEvent;->onMessageChannelReady:Lo/BreakpadController;

    .line 199
    new-instance v0, Lo/CrashFilesManager$extraCallback;

    invoke-direct {v0, p1}, Lo/CrashFilesManager$extraCallback;-><init>(Lo/CrashFilesManager;)V

    iput-object v0, p0, Lo/CrashFilesManager$onNavigationEvent;->ICustomTabsCallback:Lo/CrashFilesManager$extraCallback;

    return-void
.end method

.method private static onPostMessage()Z
    .locals 4

    .line 261
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "goldfish"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ranchu"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 265
    :cond_0
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "generic"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "google"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 269
    :cond_1
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 273
    :cond_2
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "sdk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 277
    :cond_3
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 225
    iget-object v0, p0, Lo/CrashFilesManager$onNavigationEvent;->onNavigationEvent:Lo/CrashFilesManager;

    invoke-static {v0}, Lo/CrashFilesManager;->onNavigationEvent(Lo/CrashFilesManager;)Lo/ResourceUnityVersionProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/ResourceUnityVersionProvider;->onNavigationEvent(Landroid/app/Activity;)V

    .line 3252
    invoke-static {}, Lo/CrashFilesManager$onNavigationEvent;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/CrashFilesManager$onNavigationEvent;->onNavigationEvent:Lo/CrashFilesManager;

    invoke-static {v0}, Lo/CrashFilesManager;->extraCallback(Lo/CrashFilesManager;)Lo/SessionSettingsData;

    move-result-object v0

    .line 3355
    iget-boolean v0, v0, Lo/SessionSettingsData;->asInterface:Z

    if-nez v0, :cond_0

    .line 3253
    iget-object p1, p0, Lo/CrashFilesManager$onNavigationEvent;->ICustomTabsCallback:Lo/CrashFilesManager$extraCallback;

    const/4 v0, 0x1

    .line 4188
    iput-boolean v0, p1, Lo/CrashFilesManager$extraCallback;->ICustomTabsCallback:Z

    .line 4189
    iget-object v0, p1, Lo/CrashFilesManager$extraCallback;->onPostMessage:Lo/CrashFilesManager;

    invoke-static {v0}, Lo/CrashFilesManager;->onPostMessage(Lo/CrashFilesManager;)Lo/CrashFilesManager$ICustomTabsCallback$Stub;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    .line 3254
    :cond_0
    iget-object v0, p0, Lo/CrashFilesManager$onNavigationEvent;->onNavigationEvent:Lo/CrashFilesManager;

    invoke-static {v0}, Lo/CrashFilesManager;->extraCallback(Lo/CrashFilesManager;)Lo/SessionSettingsData;

    move-result-object v0

    .line 4351
    iget-boolean v0, v0, Lo/SessionSettingsData;->ICustomTabsCallback$Stub:Z

    if-nez v0, :cond_1

    const-string v0, "sensor"

    .line 3255
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    .line 3256
    iget-object v0, p0, Lo/CrashFilesManager$onNavigationEvent;->onMessageChannelReady:Lo/BreakpadController;

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_1
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 4

    .line 1242
    invoke-static {}, Lo/CrashFilesManager$onNavigationEvent;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/CrashFilesManager$onNavigationEvent;->onNavigationEvent:Lo/CrashFilesManager;

    invoke-static {v0}, Lo/CrashFilesManager;->extraCallback(Lo/CrashFilesManager;)Lo/SessionSettingsData;

    move-result-object v0

    .line 1355
    iget-boolean v0, v0, Lo/SessionSettingsData;->asInterface:Z

    if-nez v0, :cond_0

    .line 1243
    iget-object v0, p0, Lo/CrashFilesManager$onNavigationEvent;->ICustomTabsCallback:Lo/CrashFilesManager$extraCallback;

    const/4 v1, 0x0

    .line 2183
    iput-boolean v1, v0, Lo/CrashFilesManager$extraCallback;->ICustomTabsCallback:Z

    .line 2184
    iget-object v1, v0, Lo/CrashFilesManager$extraCallback;->onPostMessage:Lo/CrashFilesManager;

    invoke-static {v1}, Lo/CrashFilesManager;->onPostMessage(Lo/CrashFilesManager;)Lo/CrashFilesManager$ICustomTabsCallback$Stub;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1244
    :cond_0
    iget-object v0, p0, Lo/CrashFilesManager$onNavigationEvent;->onNavigationEvent:Lo/CrashFilesManager;

    invoke-static {v0}, Lo/CrashFilesManager;->extraCallback(Lo/CrashFilesManager;)Lo/SessionSettingsData;

    move-result-object v0

    .line 2351
    iget-boolean v0, v0, Lo/SessionSettingsData;->ICustomTabsCallback$Stub:Z

    if-nez v0, :cond_1

    const-string v0, "sensor"

    .line 1245
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    .line 1246
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 1247
    iget-object v2, p0, Lo/CrashFilesManager$onNavigationEvent;->onMessageChannelReady:Lo/BreakpadController;

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 220
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/CrashFilesManager$onNavigationEvent;->onNavigationEvent:Lo/CrashFilesManager;

    invoke-static {v0}, Lo/CrashFilesManager;->onNavigationEvent(Lo/CrashFilesManager;)Lo/ResourceUnityVersionProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/ResourceUnityVersionProvider;->onPostMessage(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 2

    .line 204
    iget-object v0, p0, Lo/CrashFilesManager$onNavigationEvent;->onNavigationEvent:Lo/CrashFilesManager;

    invoke-static {v0}, Lo/CrashFilesManager;->ICustomTabsCallback(Lo/CrashFilesManager;)Lo/Settings;

    move-result-object v0

    const-string v1, "$ab_gesture3"

    invoke-virtual {v0, v1}, Lo/Settings;->onPostMessage(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lo/CrashFilesManager$onNavigationEvent;->onNavigationEvent:Lo/CrashFilesManager;

    invoke-static {v0}, Lo/CrashFilesManager;->onPostMessage(Lo/CrashFilesManager;)Lo/CrashFilesManager$ICustomTabsCallback$Stub;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lo/CrashFilesManager$onNavigationEvent;->onNavigationEvent:Lo/CrashFilesManager;

    invoke-static {v1}, Lo/CrashFilesManager;->onPostMessage(Lo/CrashFilesManager;)Lo/CrashFilesManager$ICustomTabsCallback$Stub;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
