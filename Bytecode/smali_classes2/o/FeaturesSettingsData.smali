.class final Lo/FeaturesSettingsData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Ljava/lang/Runnable;


# static fields
.field private static onTransact:Ljava/lang/Double;


# instance fields
.field private ICustomTabsCallback:Z

.field private ICustomTabsCallback$Stub:Lo/SessionSettingsData;

.field private asInterface:Lo/Settings;

.field extraCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private onMessageChannelReady:Ljava/lang/Runnable;

.field onNavigationEvent:Z

.field private onPostMessage:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lo/Settings;Lo/SessionSettingsData;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lo/FeaturesSettingsData;->onPostMessage:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lo/FeaturesSettingsData;->onNavigationEvent:Z

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lo/FeaturesSettingsData;->ICustomTabsCallback:Z

    .line 34
    iput-object p1, p0, Lo/FeaturesSettingsData;->asInterface:Lo/Settings;

    .line 35
    iput-object p2, p0, Lo/FeaturesSettingsData;->ICustomTabsCallback$Stub:Lo/SessionSettingsData;

    .line 36
    sget-object p1, Lo/FeaturesSettingsData;->onTransact:Ljava/lang/Double;

    if-nez p1, :cond_0

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    long-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    sput-object p1, Lo/FeaturesSettingsData;->onTransact:Ljava/lang/Double;

    :cond_0
    return-void
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
    .locals 2

    const/4 p1, 0x1

    .line 56
    iput-boolean p1, p0, Lo/FeaturesSettingsData;->ICustomTabsCallback:Z

    .line 58
    iget-object p1, p0, Lo/FeaturesSettingsData;->onMessageChannelReady:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 59
    iget-object v0, p0, Lo/FeaturesSettingsData;->onPostMessage:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Lo/FeaturesSettingsData;->extraCallback:Ljava/lang/ref/WeakReference;

    .line 63
    iget-object p1, p0, Lo/FeaturesSettingsData;->onPostMessage:Landroid/os/Handler;

    iput-object p0, p0, Lo/FeaturesSettingsData;->onMessageChannelReady:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lo/FeaturesSettingsData;->ICustomTabsCallback$Stub:Lo/SessionSettingsData;

    .line 5426
    iget-boolean v0, v0, Lo/SessionSettingsData;->postMessage:Z

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lo/FeaturesSettingsData;->asInterface:Lo/Settings;

    .line 6206
    iget-object v0, v0, Lo/Settings;->ICustomTabsCallback:Lo/Settings$extraCallback;

    .line 97
    invoke-interface {v0}, Lo/Settings$onMessageChannelReady;->onTransact()V

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/FeaturesSettingsData;->extraCallback:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x0

    .line 102
    iput-boolean p1, p0, Lo/FeaturesSettingsData;->ICustomTabsCallback:Z

    .line 103
    iget-boolean p1, p0, Lo/FeaturesSettingsData;->onNavigationEvent:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    .line 104
    iput-boolean v0, p0, Lo/FeaturesSettingsData;->onNavigationEvent:Z

    .line 106
    iget-object v0, p0, Lo/FeaturesSettingsData;->onMessageChannelReady:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 107
    iget-object v1, p0, Lo/FeaturesSettingsData;->onPostMessage:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    sput-object p1, Lo/FeaturesSettingsData;->onTransact:Ljava/lang/Double;

    .line 113
    iget-object p1, p0, Lo/FeaturesSettingsData;->asInterface:Lo/Settings;

    .line 6984
    iget-object p1, p1, Lo/Settings;->ICustomTabsService:Lo/onAuthRevoked;

    invoke-virtual {p1}, Lo/onAuthRevoked;->onMessageChannelReady()V

    :cond_2
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 3

    .line 43
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "mp_campaign_id"

    .line 3132
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "mp_message_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3133
    iget-object v1, p0, Lo/FeaturesSettingsData;->asInterface:Lo/Settings;

    .line 3987
    iget-object v1, v1, Lo/Settings;->extraCallback:Landroid/content/Context;

    const-string v2, "$app_open"

    .line 3133
    invoke-static {v1, v0, v2}, Lo/Settings;->onNavigationEvent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 45
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lo/FeaturesSettingsData;->ICustomTabsCallback$Stub:Lo/SessionSettingsData;

    .line 4426
    iget-boolean v0, v0, Lo/SessionSettingsData;->postMessage:Z

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lo/FeaturesSettingsData;->asInterface:Lo/Settings;

    .line 5206
    iget-object v0, v0, Lo/Settings;->ICustomTabsCallback:Lo/Settings$extraCallback;

    .line 46
    invoke-interface {v0, p1}, Lo/Settings$onMessageChannelReady;->onNavigationEvent(Landroid/app/Activity;)V

    .line 48
    :cond_1
    new-instance v0, Lo/getUnityVersion;

    iget-object v1, p0, Lo/FeaturesSettingsData;->asInterface:Lo/Settings;

    invoke-direct {v0, v1, p1}, Lo/getUnityVersion;-><init>(Lo/Settings;Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final run()V
    .locals 7

    .line 8025
    iget-boolean v0, p0, Lo/FeaturesSettingsData;->onNavigationEvent:Z

    if-eqz v0, :cond_2

    .line 9025
    iget-boolean v0, p0, Lo/FeaturesSettingsData;->ICustomTabsCallback:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 10025
    iput-boolean v0, p0, Lo/FeaturesSettingsData;->onNavigationEvent:Z

    .line 7069
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    .line 11025
    sget-object v2, Lo/FeaturesSettingsData;->onTransact:Ljava/lang/Double;

    .line 7069
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 12025
    iget-object v2, p0, Lo/FeaturesSettingsData;->ICustomTabsCallback$Stub:Lo/SessionSettingsData;

    .line 12447
    iget v2, v2, Lo/SessionSettingsData;->validateRelationship:I

    int-to-double v2, v2

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_0

    .line 13025
    iget-object v2, p0, Lo/FeaturesSettingsData;->ICustomTabsCallback$Stub:Lo/SessionSettingsData;

    .line 13451
    iget v2, v2, Lo/SessionSettingsData;->IPostMessageService$Stub$Proxy:I

    int-to-double v2, v2

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double v0, v0, v2

    .line 7072
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v2

    .line 7073
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "$ae_session_length"

    .line 7074
    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 14025
    iget-object v3, p0, Lo/FeaturesSettingsData;->asInterface:Lo/Settings;

    .line 14206
    iget-object v3, v3, Lo/Settings;->ICustomTabsCallback:Lo/Settings$extraCallback;

    const-string v4, "$ae_total_app_sessions"

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 7075
    invoke-interface {v3, v4, v5, v6}, Lo/Settings$onMessageChannelReady;->ICustomTabsCallback(Ljava/lang/String;D)V

    .line 15025
    iget-object v3, p0, Lo/FeaturesSettingsData;->asInterface:Lo/Settings;

    .line 15206
    iget-object v3, v3, Lo/Settings;->ICustomTabsCallback:Lo/Settings$extraCallback;

    const-string v4, "$ae_total_app_session_length"

    .line 7076
    invoke-interface {v3, v4, v0, v1}, Lo/Settings$onMessageChannelReady;->ICustomTabsCallback(Ljava/lang/String;D)V

    .line 16025
    iget-object v0, p0, Lo/FeaturesSettingsData;->asInterface:Lo/Settings;

    const-string v1, "$ae_session"

    const/4 v3, 0x1

    .line 7077
    invoke-virtual {v0, v1, v2, v3}, Lo/Settings;->onMessageChannelReady(Ljava/lang/String;Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7080
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17025
    :cond_0
    :goto_0
    iget-object v0, p0, Lo/FeaturesSettingsData;->asInterface:Lo/Settings;

    .line 17977
    iget-object v1, v0, Lo/Settings;->onMessageChannelReady:Lo/SessionSettingsData;

    .line 18340
    iget-boolean v1, v1, Lo/SessionSettingsData;->extraCallback:Z

    if-eqz v1, :cond_1

    .line 19350
    iget-object v1, v0, Lo/Settings;->asInterface:Lo/AppSpiCall;

    iget-object v2, v0, Lo/Settings;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lo/AppSpiCall;->newSession(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 18894
    iget-object v1, v0, Lo/Settings;->onNavigationEvent:Lo/buildInstanceIdentifierChanged;

    new-instance v2, Lo/buildInstanceIdentifierChanged$extraCallback;

    iget-object v3, v0, Lo/Settings;->onPostMessage:Ljava/lang/String;

    invoke-direct {v2, v3}, Lo/buildInstanceIdentifierChanged$extraCallback;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lo/buildInstanceIdentifierChanged;->onNavigationEvent(Lo/buildInstanceIdentifierChanged$extraCallback;)V

    .line 17980
    :cond_1
    iget-object v0, v0, Lo/Settings;->ICustomTabsCallback$Stub:Lo/getSingleFileWithExtension;

    invoke-interface {v0}, Lo/getSingleFileWithExtension;->ICustomTabsCallback()V

    :cond_2
    return-void
.end method
