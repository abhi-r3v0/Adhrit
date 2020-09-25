.class final Lo/Settings$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Settings$asInterface;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onPostMessage"
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/Settings;

.field private final onMessageChannelReady:Ljava/util/concurrent/Executor;

.field private final onNavigationEvent:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/onPostMessage$extraCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lo/Settings;)V
    .locals 0

    .line 2747
    iput-object p1, p0, Lo/Settings$onPostMessage;->ICustomTabsCallback:Lo/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2777
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lo/Settings$onPostMessage;->onNavigationEvent:Ljava/util/Set;

    .line 2778
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lo/Settings$onPostMessage;->onMessageChannelReady:Ljava/util/concurrent/Executor;

    return-void
.end method

.method synthetic constructor <init>(Lo/Settings;B)V
    .locals 0

    .line 2747
    invoke-direct {p0, p1}, Lo/Settings$onPostMessage;-><init>(Lo/Settings;)V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()V
    .locals 1

    .line 2750
    iget-object v0, p0, Lo/Settings$onPostMessage;->onMessageChannelReady:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final run()V
    .locals 9

    const-string v0, "method invocation failed"

    const-string v1, "MixpanelAPI.CnctInts"

    .line 2771
    iget-object v2, p0, Lo/Settings$onPostMessage;->onNavigationEvent:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 2774
    :cond_0
    iget-object v2, p0, Lo/Settings$onPostMessage;->ICustomTabsCallback:Lo/Settings;

    invoke-static {v2}, Lo/Settings;->asInterface(Lo/Settings;)Lo/SettingsJsonParser;

    move-result-object v2

    iget-object v3, p0, Lo/Settings$onPostMessage;->ICustomTabsCallback:Lo/Settings;

    invoke-static {v3}, Lo/Settings;->onPostMessage(Lo/Settings;)Lo/parseSettingsJson;

    move-result-object v3

    invoke-virtual {v3}, Lo/parseSettingsJson;->onMessageChannelReady()Ljava/util/Set;

    move-result-object v3

    const-string v4, "urbanairship"

    .line 3031
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3032
    invoke-virtual {v2}, Lo/SettingsJsonParser;->onPostMessage()V

    :cond_1
    const-string v4, "braze"

    .line 3034
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "com.appboy.Appboy"

    .line 3083
    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getInstance"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    .line 3084
    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v2, Lo/SettingsJsonParser;->onNavigationEvent:Landroid/content/Context;

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 3085
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getDeviceId"

    new-array v6, v8, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3087
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getCurrentUser"

    new-array v7, v8, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v2, "Make sure Braze is initialized properly before Mixpanel."

    .line 3089
    invoke-static {v1, v2}, Lo/TrimmedThrowableData;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3092
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getUserId"

    new-array v7, v8, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 3094
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 3095
    iget-object v5, v2, Lo/SettingsJsonParser;->onPostMessage:Lo/Settings;

    iget-object v6, v2, Lo/SettingsJsonParser;->onPostMessage:Lo/Settings;

    .line 3926
    iget-object v6, v6, Lo/Settings;->asInterface:Lo/AppSpiCall;

    invoke-virtual {v6}, Lo/AppSpiCall;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v6

    .line 3095
    invoke-virtual {v5, v4, v6}, Lo/Settings;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 3096
    iget-object v5, v2, Lo/SettingsJsonParser;->onPostMessage:Lo/Settings;

    .line 4206
    iget-object v5, v5, Lo/Settings;->ICustomTabsCallback:Lo/Settings$extraCallback;

    const-string v6, "$braze_device_id"

    .line 3096
    invoke-interface {v5, v6, v4}, Lo/Settings$onMessageChannelReady;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    if-eqz v3, :cond_4

    .line 3098
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 3099
    iget-object v4, v2, Lo/SettingsJsonParser;->onPostMessage:Lo/Settings;

    iget-object v5, v2, Lo/SettingsJsonParser;->onPostMessage:Lo/Settings;

    .line 4926
    iget-object v5, v5, Lo/Settings;->asInterface:Lo/AppSpiCall;

    invoke-virtual {v5}, Lo/AppSpiCall;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v5

    .line 3099
    invoke-virtual {v4, v3, v5}, Lo/Settings;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 3100
    iget-object v2, v2, Lo/SettingsJsonParser;->onPostMessage:Lo/Settings;

    .line 5206
    iget-object v2, v2, Lo/Settings;->ICustomTabsCallback:Lo/Settings$extraCallback;

    const-string v4, "$braze_external_id"

    .line 3100
    invoke-interface {v2, v4, v3}, Lo/Settings$onMessageChannelReady;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception v0

    const-string v2, "Error setting braze people properties"

    .line 3111
    invoke-static {v1, v2, v0}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v2

    .line 3109
    invoke-static {v1, v0, v2}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_2
    move-exception v2

    .line 3107
    invoke-static {v1, v0, v2}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_3
    move-exception v0

    const-string v2, "Braze SDK class exists but methods do not"

    .line 3105
    invoke-static {v1, v2, v0}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_4
    move-exception v0

    const-string v2, "Braze SDK not found but Braze is integrated on Mixpanel"

    .line 3103
    invoke-static {v1, v2, v0}, Lo/TrimmedThrowableData;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    return-void
.end method
