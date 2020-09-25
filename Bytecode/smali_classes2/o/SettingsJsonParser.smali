.class public final Lo/SettingsJsonParser;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public ICustomTabsCallback:Ljava/lang/String;

.field public onMessageChannelReady:I

.field onNavigationEvent:Landroid/content/Context;

.field final onPostMessage:Lo/Settings;


# direct methods
.method public constructor <init>(Lo/Settings;Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lo/SettingsJsonParser;->onPostMessage:Lo/Settings;

    .line 22
    iput-object p2, p0, Lo/SettingsJsonParser;->onNavigationEvent:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method final onPostMessage()V
    .locals 7

    const-string v0, "method invocation failed"

    const-string v1, "MixpanelAPI.CnctInts"

    const-string v2, "com.urbanairship.UAirship"

    .line 43
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "shared"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    .line 44
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 45
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "getPushManager"

    new-array v6, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 46
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "getChannelId"

    new-array v6, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 47
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 48
    iput v4, p0, Lo/SettingsJsonParser;->onMessageChannelReady:I

    .line 49
    iget-object v3, p0, Lo/SettingsJsonParser;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lo/SettingsJsonParser;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 50
    :cond_0
    iget-object v3, p0, Lo/SettingsJsonParser;->onPostMessage:Lo/Settings;

    .line 2206
    iget-object v3, v3, Lo/Settings;->ICustomTabsCallback:Lo/Settings$extraCallback;

    const-string v4, "$android_urban_airship_channel_id"

    .line 50
    invoke-interface {v3, v4, v2}, Lo/Settings$onMessageChannelReady;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    iput-object v2, p0, Lo/SettingsJsonParser;->ICustomTabsCallback:Ljava/lang/String;

    return-void

    .line 54
    :cond_1
    iget v2, p0, Lo/SettingsJsonParser;->onMessageChannelReady:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lo/SettingsJsonParser;->onMessageChannelReady:I

    const/4 v3, 0x3

    if-gt v2, v3, :cond_2

    .line 56
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-wide/16 v3, 0x7d0

    .line 57
    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    const-string v2, "Error setting Airship people property"

    .line 74
    invoke-static {v1, v2, v0}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception v2

    .line 72
    invoke-static {v1, v0, v2}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_2
    move-exception v2

    .line 70
    invoke-static {v1, v0, v2}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_3
    move-exception v0

    const-string v2, "Airship SDK class exists but methods do not"

    .line 68
    invoke-static {v1, v2, v0}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_4
    move-exception v0

    const-string v2, "Airship SDK not found but Urban Airship is integrated on Mixpanel"

    .line 66
    invoke-static {v1, v2, v0}, Lo/TrimmedThrowableData;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final run()V
    .locals 0

    .line 4011
    invoke-virtual {p0}, Lo/SettingsJsonParser;->onPostMessage()V

    return-void
.end method
