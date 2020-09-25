.class public final Lo/Settings;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Settings$onNavigationEvent;,
        Lo/Settings$onPostMessage;,
        Lo/Settings$onTransact;,
        Lo/Settings$asInterface;,
        Lo/Settings$extraCallback;,
        Lo/Settings$ICustomTabsCallback;,
        Lo/Settings$onMessageChannelReady;
    }
.end annotation


# static fields
.field private static final extraCommand:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Landroid/content/Context;",
            "Lo/Settings;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final mayLaunchUrl:Lo/UpdateAppSpiCall;

.field private static final requestPostMessageChannel:Lo/DefaultSettingsSpiCall;

.field private static updateVisuals:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ICustomTabsCallback:Lo/Settings$extraCallback;

.field public final ICustomTabsCallback$Stub:Lo/getSingleFileWithExtension;

.field private final ICustomTabsCallback$Stub$Proxy:Lo/getSessionFileDirectory;

.field final ICustomTabsService:Lo/onAuthRevoked;

.field public final asBinder:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final asInterface:Lo/AppSpiCall;

.field public final extraCallback:Landroid/content/Context;

.field private final getInterfaceDescriptor:Lo/Settings$asInterface;

.field private final newSession:Lo/parseSettingsJson;

.field final onMessageChannelReady:Lo/SessionSettingsData;

.field public final onNavigationEvent:Lo/buildInstanceIdentifierChanged;

.field public final onPostMessage:Ljava/lang/String;

.field public final onRelationshipValidationResult:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final onTransact:Lo/SettingsJsonParser;

.field warmup:Lo/FeaturesSettingsData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3008
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lo/Settings;->extraCommand:Ljava/util/Map;

    .line 3009
    new-instance v0, Lo/DefaultSettingsSpiCall;

    invoke-direct {v0}, Lo/DefaultSettingsSpiCall;-><init>()V

    sput-object v0, Lo/Settings;->requestPostMessageChannel:Lo/DefaultSettingsSpiCall;

    .line 3010
    new-instance v0, Lo/UpdateAppSpiCall;

    invoke-direct {v0}, Lo/UpdateAppSpiCall;-><init>()V

    sput-object v0, Lo/Settings;->mayLaunchUrl:Lo/UpdateAppSpiCall;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Future;Ljava/lang/String;Lo/SessionSettingsData;ZLorg/json/JSONObject;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Future<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljava/lang/String;",
            "Lo/SessionSettingsData;",
            "Z",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v8, p3

    move-object/from16 v3, p6

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    iput-object v2, v1, Lo/Settings;->extraCallback:Landroid/content/Context;

    .line 397
    iput-object v8, v1, Lo/Settings;->onPostMessage:Ljava/lang/String;

    .line 398
    new-instance v0, Lo/Settings$extraCallback;

    const/4 v9, 0x0

    invoke-direct {v0, p0, v9}, Lo/Settings$extraCallback;-><init>(Lo/Settings;B)V

    iput-object v0, v1, Lo/Settings;->ICustomTabsCallback:Lo/Settings$extraCallback;

    .line 399
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p4

    .line 400
    iput-object v0, v1, Lo/Settings;->onMessageChannelReady:Lo/SessionSettingsData;

    .line 402
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    const-string v0, "$android_lib_version"

    const-string v4, "5.8.4"

    .line 403
    invoke-interface {v10, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "$android_os"

    const-string v4, "Android"

    .line 404
    invoke-interface {v10, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "UNKNOWN"

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    :goto_0
    const-string v4, "$android_os_version"

    invoke-interface {v10, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "UNKNOWN"

    goto :goto_1

    :cond_1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    :goto_1
    const-string v4, "$android_manufacturer"

    invoke-interface {v10, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "UNKNOWN"

    goto :goto_2

    :cond_2
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    :goto_2
    const-string v4, "$android_brand"

    invoke-interface {v10, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, "UNKNOWN"

    goto :goto_3

    :cond_3
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :goto_3
    const-string v4, "$android_model"

    invoke-interface {v10, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    :try_start_0
    iget-object v0, v1, Lo/Settings;->extraCallback:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 411
    iget-object v4, v1, Lo/Settings;->extraCallback:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const-string v4, "$android_app_version"

    .line 412
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-interface {v10, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "$android_app_version_code"

    .line 413
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v4, "MixpanelAPI.API"

    const-string v5, "Exception getting app version name"

    .line 415
    invoke-static {v4, v5, v0}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 417
    :goto_4
    invoke-static {v10}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v1, Lo/Settings;->asBinder:Ljava/util/Map;

    .line 419
    new-instance v0, Lo/onAuthRevoked;

    invoke-direct {v0}, Lo/onAuthRevoked;-><init>()V

    iput-object v0, v1, Lo/Settings;->ICustomTabsService:Lo/onAuthRevoked;

    .line 6052
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-ge v0, v4, :cond_4

    const-string v0, "MixpanelAPI.API"

    const-string v5, "SDK version is lower than 16. Web Configuration, A/B Testing, and Dynamic Tweaks are disabled."

    .line 6053
    invoke-static {v0, v5}, Lo/TrimmedThrowableData;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 6054
    new-instance v0, Lo/Settings$onNavigationEvent;

    invoke-direct {v0}, Lo/Settings$onNavigationEvent;-><init>()V

    goto :goto_6

    .line 6055
    :cond_4
    iget-object v0, v1, Lo/Settings;->onMessageChannelReady:Lo/SessionSettingsData;

    .line 6363
    iget-boolean v0, v0, Lo/SessionSettingsData;->warmup:Z

    if-nez v0, :cond_6

    .line 6055
    iget-object v0, v1, Lo/Settings;->onMessageChannelReady:Lo/SessionSettingsData;

    .line 6366
    iget-object v0, v0, Lo/SessionSettingsData;->newSession:[Ljava/lang/String;

    .line 6055
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_5

    .line 6059
    :cond_5
    new-instance v0, Lo/CrashFilesManager;

    iget-object v5, v1, Lo/Settings;->extraCallback:Landroid/content/Context;

    iget-object v6, v1, Lo/Settings;->onPostMessage:Ljava/lang/String;

    sget-object v7, Lo/Settings;->mayLaunchUrl:Lo/UpdateAppSpiCall;

    invoke-direct {v0, v5, v6, p0, v7}, Lo/CrashFilesManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lo/Settings;Lo/UpdateAppSpiCall;)V

    goto :goto_6

    :cond_6
    :goto_5
    const-string v0, "MixpanelAPI.API"

    const-string v5, "DisableViewCrawler is set to true. Web Configuration, A/B Testing, and Dynamic Tweaks are disabled."

    .line 6056
    invoke-static {v0, v5}, Lo/TrimmedThrowableData;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 6057
    new-instance v0, Lo/Settings$onNavigationEvent;

    invoke-direct {v0}, Lo/Settings$onNavigationEvent;-><init>()V

    .line 420
    :goto_6
    iput-object v0, v1, Lo/Settings;->ICustomTabsCallback$Stub:Lo/getSingleFileWithExtension;

    .line 7064
    instance-of v5, v0, Lo/CrashFilesManager;

    const/4 v11, 0x0

    if-eqz v5, :cond_7

    .line 7065
    check-cast v0, Lo/getSessionFileDirectory;

    goto :goto_7

    :cond_7
    move-object v0, v11

    .line 421
    :goto_7
    iput-object v0, v1, Lo/Settings;->ICustomTabsCallback$Stub$Proxy:Lo/getSessionFileDirectory;

    .line 8008
    iget-object v0, v1, Lo/Settings;->extraCallback:Landroid/content/Context;

    invoke-static {v0}, Lo/buildInstanceIdentifierChanged;->onPostMessage(Landroid/content/Context;)Lo/buildInstanceIdentifierChanged;

    move-result-object v0

    .line 422
    iput-object v0, v1, Lo/Settings;->onNavigationEvent:Lo/buildInstanceIdentifierChanged;

    .line 8016
    new-instance v0, Lo/Settings$5;

    invoke-direct {v0, p0}, Lo/Settings$5;-><init>(Lo/Settings;)V

    .line 8026
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.mixpanel.android.mpmetrics.MixpanelAPI_"

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 8027
    sget-object v6, Lo/Settings;->requestPostMessageChannel:Lo/DefaultSettingsSpiCall;

    .line 9023
    new-instance v7, Lo/DefaultSettingsSpiCall$ICustomTabsCallback;

    invoke-direct {v7, p1, v5, v0}, Lo/DefaultSettingsSpiCall$ICustomTabsCallback;-><init>(Landroid/content/Context;Ljava/lang/String;Lo/DefaultSettingsSpiCall$onMessageChannelReady;)V

    .line 9024
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, v7}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 9025
    iget-object v5, v6, Lo/DefaultSettingsSpiCall;->onMessageChannelReady:Ljava/util/concurrent/Executor;

    invoke-interface {v5, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 8029
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.mixpanel.android.mpmetrics.MixpanelAPI.TimeEvents_"

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 8030
    sget-object v6, Lo/Settings;->requestPostMessageChannel:Lo/DefaultSettingsSpiCall;

    .line 10023
    new-instance v7, Lo/DefaultSettingsSpiCall$ICustomTabsCallback;

    invoke-direct {v7, p1, v5, v11}, Lo/DefaultSettingsSpiCall$ICustomTabsCallback;-><init>(Landroid/content/Context;Ljava/lang/String;Lo/DefaultSettingsSpiCall$onMessageChannelReady;)V

    .line 10024
    new-instance v5, Ljava/util/concurrent/FutureTask;

    invoke-direct {v5, v7}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 10025
    iget-object v6, v6, Lo/DefaultSettingsSpiCall;->onMessageChannelReady:Ljava/util/concurrent/Executor;

    invoke-interface {v6, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 8033
    sget-object v6, Lo/Settings;->requestPostMessageChannel:Lo/DefaultSettingsSpiCall;

    .line 11023
    new-instance v7, Lo/DefaultSettingsSpiCall$ICustomTabsCallback;

    const-string v12, "com.mixpanel.android.mpmetrics.Mixpanel"

    invoke-direct {v7, p1, v12, v11}, Lo/DefaultSettingsSpiCall$ICustomTabsCallback;-><init>(Landroid/content/Context;Ljava/lang/String;Lo/DefaultSettingsSpiCall$onMessageChannelReady;)V

    .line 11024
    new-instance v2, Ljava/util/concurrent/FutureTask;

    invoke-direct {v2, v7}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 11025
    iget-object v6, v6, Lo/DefaultSettingsSpiCall;->onMessageChannelReady:Ljava/util/concurrent/Executor;

    invoke-interface {v6, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 8035
    new-instance v6, Lo/AppSpiCall;

    move-object v7, p2

    invoke-direct {v6, p2, v0, v5, v2}, Lo/AppSpiCall;-><init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;)V

    .line 423
    iput-object v6, v1, Lo/Settings;->asInterface:Lo/AppSpiCall;

    .line 424
    invoke-virtual {v6}, Lo/AppSpiCall;->onTransact()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v1, Lo/Settings;->onRelationshipValidationResult:Ljava/util/Map;

    if-eqz p5, :cond_a

    .line 11350
    iget-object v0, v1, Lo/Settings;->asInterface:Lo/AppSpiCall;

    iget-object v2, v1, Lo/Settings;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lo/AppSpiCall;->newSession(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 426
    iget-object v0, v1, Lo/Settings;->asInterface:Lo/AppSpiCall;

    invoke-virtual {v0, v8}, Lo/AppSpiCall;->warmup(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 13008
    :cond_8
    iget-object v0, v1, Lo/Settings;->extraCallback:Landroid/content/Context;

    invoke-static {v0}, Lo/buildInstanceIdentifierChanged;->onPostMessage(Landroid/content/Context;)Lo/buildInstanceIdentifierChanged;

    move-result-object v0

    .line 12278
    new-instance v2, Lo/buildInstanceIdentifierChanged$onMessageChannelReady;

    iget-object v5, v1, Lo/Settings;->onPostMessage:Ljava/lang/String;

    invoke-direct {v2, v5}, Lo/buildInstanceIdentifierChanged$onMessageChannelReady;-><init>(Ljava/lang/String;)V

    .line 13137
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    const/4 v6, 0x6

    .line 13138
    iput v6, v5, Landroid/os/Message;->what:I

    .line 13139
    iput-object v2, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 13141
    iget-object v0, v0, Lo/buildInstanceIdentifierChanged;->extraCallback:Lo/buildInstanceIdentifierChanged$onTransact;

    invoke-virtual {v0, v5}, Lo/buildInstanceIdentifierChanged$onTransact;->ICustomTabsCallback(Landroid/os/Message;)V

    .line 13206
    iget-object v0, v1, Lo/Settings;->ICustomTabsCallback:Lo/Settings$extraCallback;

    .line 12279
    invoke-interface {v0}, Lo/Settings$onMessageChannelReady;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 14206
    iget-object v0, v1, Lo/Settings;->ICustomTabsCallback:Lo/Settings$extraCallback;

    .line 12280
    invoke-interface {v0}, Lo/Settings$onMessageChannelReady;->ICustomTabsCallback()V

    .line 15206
    iget-object v0, v1, Lo/Settings;->ICustomTabsCallback:Lo/Settings$extraCallback;

    .line 12281
    invoke-interface {v0}, Lo/Settings$onMessageChannelReady;->extraCallback()V

    .line 12283
    :cond_9
    iget-object v0, v1, Lo/Settings;->asInterface:Lo/AppSpiCall;

    invoke-virtual {v0}, Lo/AppSpiCall;->asInterface()V

    .line 12284
    iget-object v2, v1, Lo/Settings;->onRelationshipValidationResult:Ljava/util/Map;

    monitor-enter v2

    .line 12285
    :try_start_1
    iget-object v0, v1, Lo/Settings;->onRelationshipValidationResult:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 12286
    iget-object v0, v1, Lo/Settings;->asInterface:Lo/AppSpiCall;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 15278
    :try_start_2
    iget-object v0, v0, Lo/AppSpiCall;->onPostMessage:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    .line 15279
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 15280
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 15690
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_8

    :catch_1
    move-exception v0

    .line 15285
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    :catch_2
    move-exception v0

    .line 15283
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12287
    :goto_8
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 12288
    iget-object v0, v1, Lo/Settings;->asInterface:Lo/AppSpiCall;

    .line 16169
    sget-object v2, Lo/AppSpiCall;->extraCallback:Ljava/lang/Object;

    monitor-enter v2

    .line 16171
    :try_start_4
    iget-object v0, v0, Lo/AppSpiCall;->onNavigationEvent:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    .line 16172
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 16173
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 16690
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception v0

    goto :goto_a

    :catch_3
    move-exception v0

    :try_start_5
    const-string v5, "MixpanelAPI.PIdentity"

    const-string v6, "Cannot load referrer properties from shared preferences."

    .line 16178
    invoke-static {v5, v6, v0}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    :catch_4
    move-exception v0

    const-string v5, "MixpanelAPI.PIdentity"

    const-string v6, "Cannot load referrer properties from shared preferences."

    .line 16176
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v5, v6, v0}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16180
    :goto_9
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 12289
    iget-object v0, v1, Lo/Settings;->asInterface:Lo/AppSpiCall;

    iget-object v2, v1, Lo/Settings;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lo/AppSpiCall;->ICustomTabsCallback$Stub(Ljava/lang/String;)V

    goto :goto_b

    .line 16180
    :goto_a
    monitor-exit v2

    throw v0

    :catchall_1
    move-exception v0

    .line 12287
    monitor-exit v2

    throw v0

    :cond_a
    :goto_b
    if-eqz v3, :cond_b

    .line 431
    invoke-virtual {p0, v3}, Lo/Settings;->onNavigationEvent(Lorg/json/JSONObject;)V

    .line 17043
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v4, :cond_c

    const-string v0, "MixpanelAPI.API"

    const-string v2, "Notifications are not supported on this Android OS Version"

    .line 17044
    invoke-static {v0, v2}, Lo/TrimmedThrowableData;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 17045
    new-instance v0, Lo/Settings$onTransact;

    invoke-direct {v0, p0}, Lo/Settings$onTransact;-><init>(Lo/Settings;)V

    goto :goto_c

    .line 17047
    :cond_c
    new-instance v0, Lo/Settings$onPostMessage;

    invoke-direct {v0, p0, v9}, Lo/Settings$onPostMessage;-><init>(Lo/Settings;B)V

    :goto_c
    move-object v5, v0

    .line 433
    iput-object v5, v1, Lo/Settings;->getInterfaceDescriptor:Lo/Settings$asInterface;

    .line 434
    iget-object v6, v1, Lo/Settings;->ICustomTabsCallback$Stub:Lo/getSingleFileWithExtension;

    .line 18039
    new-instance v0, Lo/parseSettingsJson;

    iget-object v3, v1, Lo/Settings;->extraCallback:Landroid/content/Context;

    iget-object v2, v1, Lo/Settings;->asInterface:Lo/AppSpiCall;

    invoke-virtual {v2}, Lo/AppSpiCall;->newSession()Ljava/util/HashSet;

    move-result-object v7

    move-object v2, v0

    move-object/from16 v4, p3

    invoke-direct/range {v2 .. v7}, Lo/parseSettingsJson;-><init>(Landroid/content/Context;Ljava/lang/String;Lo/parseSettingsJson$onMessageChannelReady;Lo/getSingleFileWithExtension;Ljava/util/HashSet;)V

    .line 434
    iput-object v0, v1, Lo/Settings;->newSession:Lo/parseSettingsJson;

    .line 435
    new-instance v0, Lo/SettingsJsonParser;

    iget-object v2, v1, Lo/Settings;->extraCallback:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lo/SettingsJsonParser;-><init>(Lo/Settings;Landroid/content/Context;)V

    iput-object v0, v1, Lo/Settings;->onTransact:Lo/SettingsJsonParser;

    .line 439
    iget-object v0, v1, Lo/Settings;->asInterface:Lo/AppSpiCall;

    invoke-virtual {v0}, Lo/AppSpiCall;->onRelationshipValidationResult()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    .line 441
    iget-object v0, v1, Lo/Settings;->asInterface:Lo/AppSpiCall;

    invoke-virtual {v0}, Lo/AppSpiCall;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v0

    .line 443
    :cond_d
    iget-object v2, v1, Lo/Settings;->newSession:Lo/parseSettingsJson;

    invoke-virtual {v2, v0}, Lo/parseSettingsJson;->onMessageChannelReady(Ljava/lang/String;)V

    .line 445
    iget-object v0, v1, Lo/Settings;->extraCallback:Landroid/content/Context;

    invoke-static {v0}, Lo/getSessionData;->ICustomTabsCallback(Landroid/content/Context;)Lo/getSessionData;

    move-result-object v0

    .line 18679
    iget-object v0, v0, Lo/getSessionData;->onMessageChannelReady:Lo/getSessionData$extraCallback;

    .line 19105
    iget-object v0, v0, Lo/getSessionData$extraCallback;->onMessageChannelReady:Ljava/io/File;

    .line 445
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 19945
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_f

    .line 19946
    iget-object v2, v1, Lo/Settings;->extraCallback:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Application;

    if-eqz v2, :cond_e

    .line 19947
    iget-object v2, v1, Lo/Settings;->extraCallback:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    .line 19948
    new-instance v3, Lo/FeaturesSettingsData;

    iget-object v4, v1, Lo/Settings;->onMessageChannelReady:Lo/SessionSettingsData;

    invoke-direct {v3, p0, v4}, Lo/FeaturesSettingsData;-><init>(Lo/Settings;Lo/SessionSettingsData;)V

    iput-object v3, v1, Lo/Settings;->warmup:Lo/FeaturesSettingsData;

    .line 19949
    invoke-virtual {v2, v3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_d

    :cond_e
    const-string v2, "MixpanelAPI.API"

    const-string v3, "Context is not an Application, Mixpanel will not automatically show in-app notifications or A/B test experiments. We won\'t be able to automatically flush on an app background."

    .line 19951
    invoke-static {v2, v3}, Lo/TrimmedThrowableData;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    :cond_f
    :goto_d
    sget-object v2, Lo/Settings;->updateVisuals:Ljava/util/concurrent/Future;

    invoke-static {v2}, Lo/SettingsJsonTransform;->extraCallback(Ljava/util/concurrent/Future;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 450
    new-instance v2, Lo/SettingsV3JsonTransform;

    .line 19987
    iget-object v3, v1, Lo/Settings;->extraCallback:Landroid/content/Context;

    .line 450
    new-instance v4, Lo/Settings$3;

    invoke-direct {v4, p0}, Lo/Settings$3;-><init>(Lo/Settings;)V

    invoke-direct {v2, v3, v4}, Lo/SettingsV3JsonTransform;-><init>(Landroid/content/Context;Lo/SettingsV3JsonTransform$onNavigationEvent;)V

    .line 456
    invoke-virtual {v2}, Lo/SettingsV3JsonTransform;->onNavigationEvent()V

    .line 459
    :cond_10
    iget-object v2, v1, Lo/Settings;->asInterface:Lo/AppSpiCall;

    iget-object v3, v1, Lo/Settings;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lo/AppSpiCall;->ICustomTabsCallback(ZLjava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    const-string v0, "$ae_first_open"

    .line 460
    invoke-virtual {p0, v0, v11, v2}, Lo/Settings;->onMessageChannelReady(Ljava/lang/String;Lorg/json/JSONObject;Z)V

    .line 461
    iget-object v0, v1, Lo/Settings;->asInterface:Lo/AppSpiCall;

    iget-object v3, v1, Lo/Settings;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lo/AppSpiCall;->asInterface(Ljava/lang/String;)V

    .line 464
    :cond_11
    iget-object v0, v1, Lo/Settings;->onMessageChannelReady:Lo/SessionSettingsData;

    .line 20435
    iget-boolean v0, v0, Lo/SessionSettingsData;->ICustomTabsService$Stub$Proxy:Z

    if-nez v0, :cond_12

    .line 465
    iget-object v0, v1, Lo/Settings;->onNavigationEvent:Lo/buildInstanceIdentifierChanged;

    iget-object v3, v1, Lo/Settings;->newSession:Lo/parseSettingsJson;

    .line 21129
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    const/16 v5, 0xc

    .line 21130
    iput v5, v4, Landroid/os/Message;->what:I

    .line 21131
    iput-object v3, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 21133
    iget-object v0, v0, Lo/buildInstanceIdentifierChanged;->extraCallback:Lo/buildInstanceIdentifierChanged$onTransact;

    invoke-virtual {v0, v4}, Lo/buildInstanceIdentifierChanged$onTransact;->ICustomTabsCallback(Landroid/os/Message;)V

    .line 22072
    :cond_12
    iget-object v0, v1, Lo/Settings;->onMessageChannelReady:Lo/SessionSettingsData;

    .line 22359
    iget-boolean v0, v0, Lo/SessionSettingsData;->asBinder:Z

    xor-int/2addr v0, v2

    if-eqz v0, :cond_13

    const-string v0, "$app_open"

    .line 469
    invoke-virtual {p0, v0, v11}, Lo/Settings;->extraCallback(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 472
    :cond_13
    iget-object v0, v1, Lo/Settings;->asInterface:Lo/AppSpiCall;

    iget-object v3, v1, Lo/Settings;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lo/AppSpiCall;->onTransact(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 474
    :try_start_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "mp_lib"

    const-string v4, "Android"

    .line 475
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "lib"

    const-string v4, "Android"

    .line 476
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "distinct_id"

    .line 477
    invoke-virtual {v0, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "$lib_version"

    const-string v4, "5.8.4"

    .line 478
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "$user_id"

    .line 479
    invoke-virtual {v0, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 480
    new-instance v3, Lo/buildInstanceIdentifierChanged$onPostMessage;

    const-string v4, "Integration"

    const-string v5, "85053bf24bba75239b16a601d9387e17"

    invoke-direct {v3, v4, v0, v5}, Lo/buildInstanceIdentifierChanged$onPostMessage;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 485
    iget-object v0, v1, Lo/Settings;->onNavigationEvent:Lo/buildInstanceIdentifierChanged;

    invoke-virtual {v0, v3}, Lo/buildInstanceIdentifierChanged;->ICustomTabsCallback(Lo/buildInstanceIdentifierChanged$onPostMessage;)V

    .line 486
    iget-object v0, v1, Lo/Settings;->onNavigationEvent:Lo/buildInstanceIdentifierChanged;

    new-instance v3, Lo/buildInstanceIdentifierChanged$extraCallback;

    const-string v4, "85053bf24bba75239b16a601d9387e17"

    invoke-direct {v3, v4, v9}, Lo/buildInstanceIdentifierChanged$extraCallback;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v3}, Lo/buildInstanceIdentifierChanged;->onNavigationEvent(Lo/buildInstanceIdentifierChanged$extraCallback;)V

    .line 488
    iget-object v0, v1, Lo/Settings;->asInterface:Lo/AppSpiCall;

    iget-object v3, v1, Lo/Settings;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lo/AppSpiCall;->asBinder(Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_e

    :catch_5
    nop

    .line 493
    :cond_14
    :goto_e
    iget-object v0, v1, Lo/Settings;->asInterface:Lo/AppSpiCall;

    const-string v3, "$android_app_version_code"

    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lo/AppSpiCall;->onRelationshipValidationResult(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 495
    :try_start_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "$ae_updated_version"

    const-string v4, "$android_app_version"

    .line 496
    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "$ae_updated"

    .line 497
    invoke-virtual {p0, v3, v0, v2}, Lo/Settings;->onMessageChannelReady(Ljava/lang/String;Lorg/json/JSONObject;Z)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_f

    :catch_6
    nop

    .line 502
    :cond_15
    :goto_f
    iget-object v0, v1, Lo/Settings;->ICustomTabsCallback$Stub:Lo/getSingleFileWithExtension;

    invoke-interface {v0}, Lo/getSingleFileWithExtension;->onPostMessage()V

    .line 504
    iget-object v0, v1, Lo/Settings;->onMessageChannelReady:Lo/SessionSettingsData;

    .line 22455
    iget-boolean v0, v0, Lo/SessionSettingsData;->ICustomTabsCallback$Stub$Proxy:Z

    if-nez v0, :cond_16

    .line 505
    invoke-static {}, Lo/toFabricJson;->onMessageChannelReady()V

    :cond_16
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Future;Ljava/lang/String;ZLorg/json/JSONObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Future<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .line 388
    invoke-static {p1}, Lo/SessionSettingsData;->ICustomTabsCallback(Landroid/content/Context;)Lo/SessionSettingsData;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lo/Settings;-><init>(Landroid/content/Context;Ljava/util/concurrent/Future;Ljava/lang/String;Lo/SessionSettingsData;ZLorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/Settings;)Ljava/lang/String;
    .locals 0

    .line 114
    iget-object p0, p0, Lo/Settings;->onPostMessage:Ljava/lang/String;

    return-object p0
.end method

.method private static ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;)Lo/Settings;
    .locals 14

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    if-nez p0, :cond_0

    goto/16 :goto_3

    .line 635
    :cond_0
    sget-object v1, Lo/Settings;->extraCommand:Ljava/util/Map;

    monitor-enter v1

    .line 636
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 638
    sget-object v2, Lo/Settings;->updateVisuals:Ljava/util/concurrent/Future;

    if-nez v2, :cond_1

    .line 639
    sget-object v2, Lo/Settings;->requestPostMessageChannel:Lo/DefaultSettingsSpiCall;

    const-string v3, "com.mixpanel.android.mpmetrics.ReferralInfo"

    .line 23023
    new-instance v4, Lo/DefaultSettingsSpiCall$ICustomTabsCallback;

    invoke-direct {v4, p0, v3, v0}, Lo/DefaultSettingsSpiCall$ICustomTabsCallback;-><init>(Landroid/content/Context;Ljava/lang/String;Lo/DefaultSettingsSpiCall$onMessageChannelReady;)V

    .line 23024
    new-instance v3, Ljava/util/concurrent/FutureTask;

    invoke-direct {v3, v4}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 23025
    iget-object v2, v2, Lo/DefaultSettingsSpiCall;->onMessageChannelReady:Ljava/util/concurrent/Executor;

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 639
    sput-object v3, Lo/Settings;->updateVisuals:Ljava/util/concurrent/Future;

    .line 642
    :cond_1
    sget-object v2, Lo/Settings;->extraCommand:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_2

    .line 644
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 645
    sget-object v3, Lo/Settings;->extraCommand:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v9, v2

    .line 648
    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/Settings;

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-nez v2, :cond_4

    .line 649
    invoke-static {v8}, Lo/SettingsJsonTransform;->onNavigationEvent(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 650
    new-instance v13, Lo/Settings;

    sget-object v4, Lo/Settings;->updateVisuals:Ljava/util/concurrent/Future;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v13

    move-object v3, v8

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Lo/Settings;-><init>(Landroid/content/Context;Ljava/util/concurrent/Future;Ljava/lang/String;ZLorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string p1, "o.fromMediaSession"

    .line 23930
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v2, "ICustomTabsCallback"

    new-array v3, v11, [Ljava/lang/Class;

    .line 23931
    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v12

    invoke-virtual {p1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v3, "registerReceiver"

    new-array v4, v10, [Ljava/lang/Class;

    .line 23932
    const-class v5, Landroid/content/BroadcastReceiver;

    aput-object v5, v4, v12

    const-class v5, Landroid/content/IntentFilter;

    aput-object v5, v4, v11

    invoke-virtual {p1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v3, v11, [Ljava/lang/Object;

    aput-object p0, v3, v12

    .line 23933
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-array v3, v10, [Ljava/lang/Object;

    .line 23934
    new-instance v4, Lo/Settings$4;

    invoke-direct {v4, v13}, Lo/Settings$4;-><init>(Lo/Settings;)V

    aput-object v4, v3, v12

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.parse.bolts.measurement_event"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v11

    invoke-virtual {p1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v2, "MixpanelAPI.AL"

    .line 23958
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "App Links tracking will not be enabled due to this exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v2, "MixpanelAPI.AL"

    .line 23956
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "To enable App Links tracking android.support.v4 must be installed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception p1

    const-string v2, "MixpanelAPI.AL"

    .line 23954
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "To enable App Links tracking android.support.v4 must be installed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_3
    move-exception p1

    const-string v2, "MixpanelAPI.AL"

    const-string v3, "Failed to invoke LocalBroadcastManager.registerReceiver() -- App Links tracking will not be enabled due to this exception"

    .line 23952
    invoke-static {v2, v3, p1}, Lo/TrimmedThrowableData;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 652
    :goto_0
    invoke-interface {v9, v8, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    invoke-static {v8}, Lo/SettingsJsonTransform;->ICustomTabsCallback(Landroid/content/Context;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_3

    .line 655
    :try_start_3
    invoke-static {}, Lo/getCacheDuration;->onNavigationEvent()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_4
    move-exception p1

    :try_start_4
    const-string v2, "MixpanelAPI.API"

    const-string v3, "Push notification could not be initialized"

    .line 657
    invoke-static {v2, v3, p1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    move-object v2, v13

    .line 23966
    :cond_4
    instance-of p1, p0, Landroid/app/Activity;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p1, :cond_5

    :try_start_5
    const-string p1, "bolts.AppLinks"

    .line 23968
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 23969
    move-object v3, p0

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "getTargetUrlFromInboundIntent"

    new-array v5, v10, [Ljava/lang/Class;

    .line 23970
    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v12

    const-class v6, Landroid/content/Intent;

    aput-object v6, v5, v11

    invoke-virtual {p1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v4, v10, [Ljava/lang/Object;

    aput-object p0, v4, v12

    aput-object v3, v4, v11

    .line 23971
    invoke-virtual {p1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_5
    move-exception p0

    :try_start_6
    const-string p1, "MixpanelAPI.AL"

    .line 23979
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Unable to detect inbound App Links: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_6
    move-exception p0

    const-string p1, "MixpanelAPI.AL"

    .line 23977
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Please install the Bolts library >= 1.1.2 to track App Links: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_7
    move-exception p0

    const-string p1, "MixpanelAPI.AL"

    .line 23975
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Please install the Bolts library >= 1.1.2 to track App Links: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_8
    move-exception p0

    const-string p1, "MixpanelAPI.AL"

    const-string v0, "Failed to invoke bolts.AppLinks.getTargetUrlFromInboundIntent() -- Unable to detect inbound App Links"

    .line 23973
    invoke-static {p1, v0, p0}, Lo/TrimmedThrowableData;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    const-string p0, "MixpanelAPI.AL"

    const-string p1, "Context is not an instance of Activity. To detect inbound App Links, pass an instance of an Activity to getInstance."

    .line 23982
    invoke-static {p0, p1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    :goto_2
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return-object v2

    :catchall_0
    move-exception p0

    .line 665
    monitor-exit v1

    throw p0

    :cond_6
    :goto_3
    return-object v0
.end method

.method public static ICustomTabsCallback(Ljava/lang/String;Z)Lo/getJsonObjectFrom;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lo/getJsonObjectFrom<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 145
    sget-object v0, Lo/Settings;->mayLaunchUrl:Lo/UpdateAppSpiCall;

    .line 3450
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lo/UpdateAppSpiCall;->onPostMessage(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 3451
    new-instance p1, Lo/UpdateAppSpiCall$5;

    invoke-direct {p1, v0, p0}, Lo/UpdateAppSpiCall$5;-><init>(Lo/UpdateAppSpiCall;Ljava/lang/String;)V

    return-object p1
.end method

.method static ICustomTabsCallback(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 11

    const-string v0, "mp"

    .line 307
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "mp_campaign_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "mp_message_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 308
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 309
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "mp_canonical_notification_id"

    .line 310
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 311
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v4, p0

    move-object v9, p2

    move-object v10, p3

    invoke-static/range {v4 .. v10}, Lo/Settings;->extraCallback(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 313
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Intent is missing Mixpanel notification metadata, not tracking event: \""

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MixpanelAPI.API"

    invoke-static {p1, p0}, Lo/TrimmedThrowableData;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static ICustomTabsCallback(Lo/Settings$ICustomTabsCallback;)V
    .locals 4

    .line 1994
    sget-object v0, Lo/Settings;->extraCommand:Ljava/util/Map;

    monitor-enter v0

    .line 1995
    :try_start_0
    sget-object v1, Lo/Settings;->extraCommand:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1996
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/Settings;

    .line 1997
    invoke-interface {p0, v3}, Lo/Settings$ICustomTabsCallback;->onNavigationEvent(Lo/Settings;)V

    goto :goto_0

    .line 2000
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic ICustomTabsCallback(Lo/Settings;Ljava/lang/String;)V
    .locals 2

    .line 39924
    iget-object v0, p0, Lo/Settings;->onNavigationEvent:Lo/buildInstanceIdentifierChanged;

    new-instance v1, Lo/buildInstanceIdentifierChanged$asInterface;

    iget-object p0, p0, Lo/Settings;->onPostMessage:Ljava/lang/String;

    invoke-direct {v1, p1, p0}, Lo/buildInstanceIdentifierChanged$asInterface;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40103
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p0

    const/4 p1, 0x4

    .line 40104
    iput p1, p0, Landroid/os/Message;->what:I

    .line 40105
    iput-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 40107
    iget-object p1, v0, Lo/buildInstanceIdentifierChanged;->extraCallback:Lo/buildInstanceIdentifierChanged$onTransact;

    invoke-virtual {p1, p0}, Lo/buildInstanceIdentifierChanged$onTransact;->ICustomTabsCallback(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic ICustomTabsCallback$Stub(Lo/Settings;)Lo/onAuthRevoked;
    .locals 0

    .line 114
    iget-object p0, p0, Lo/Settings;->ICustomTabsService:Lo/onAuthRevoked;

    return-object p0
.end method

.method static synthetic asBinder(Lo/Settings;)Lo/SessionSettingsData;
    .locals 0

    .line 114
    iget-object p0, p0, Lo/Settings;->onMessageChannelReady:Lo/SessionSettingsData;

    return-object p0
.end method

.method static synthetic asInterface(Lo/Settings;)Lo/SettingsJsonParser;
    .locals 0

    .line 114
    iget-object p0, p0, Lo/Settings;->onTransact:Lo/SettingsJsonParser;

    return-object p0
.end method

.method static extraCallback(Landroid/content/Context;Ljava/lang/String;)Lo/Settings;
    .locals 2

    const/4 v0, 0x0

    .line 370
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo p1, "token"

    .line 375
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    .line 5536
    :cond_0
    invoke-static {p0, p1}, Lo/Settings;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;)Lo/Settings;

    move-result-object p0

    return-object p0

    :catch_0
    return-object v0
.end method

.method static synthetic extraCallback(Lo/Settings;)Lo/buildInstanceIdentifierChanged;
    .locals 0

    .line 114
    iget-object p0, p0, Lo/Settings;->onNavigationEvent:Lo/buildInstanceIdentifierChanged;

    return-object p0
.end method

.method public static extraCallback(Ljava/lang/String;D)Lo/getJsonObjectFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D)",
            "Lo/getJsonObjectFrom<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 159
    sget-object v0, Lo/Settings;->mayLaunchUrl:Lo/UpdateAppSpiCall;

    .line 4330
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {v0, p0, p1, p2}, Lo/UpdateAppSpiCall;->onPostMessage(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 4331
    new-instance p1, Lo/UpdateAppSpiCall$3;

    invoke-direct {p1, v0, p0}, Lo/UpdateAppSpiCall$3;-><init>(Lo/UpdateAppSpiCall;Ljava/lang/String;)V

    return-object p1
.end method

.method public static extraCallback(Ljava/lang/String;I)Lo/getJsonObjectFrom;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lo/getJsonObjectFrom<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 249
    sget-object v0, Lo/Settings;->mayLaunchUrl:Lo/UpdateAppSpiCall;

    .line 4402
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {v0, p0, p1, v1}, Lo/UpdateAppSpiCall;->onPostMessage(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 4403
    new-instance p1, Lo/UpdateAppSpiCall$4;

    invoke-direct {p1, v0, p0}, Lo/UpdateAppSpiCall$4;-><init>(Lo/UpdateAppSpiCall;Ljava/lang/String;)V

    return-object p1
.end method

.method static extraCallback(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6

    const-string v0, "\""

    const-string v1, "MixpanelAPI.API"

    .line 323
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const-string/jumbo v3, "token"

    .line 329
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 331
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "\"token\" not found in mp payload, not tracking event: \""

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lo/TrimmedThrowableData;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 334
    :cond_0
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v3, "distinct_id"

    .line 336
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 338
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "\"distinct_id\" not found in mp payload, not tracking event: \""

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lo/TrimmedThrowableData;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 341
    :cond_1
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 346
    :try_start_1
    invoke-virtual {p6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 347
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 348
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 349
    invoke-virtual {p6, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_2
    const-string p6, "message_id"

    .line 351
    invoke-virtual {v2, p6, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "campaign_id"

    .line 352
    invoke-virtual {v2, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "$android_notification_id"

    .line 353
    invoke-virtual {v2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "Error setting tracking JSON properties."

    .line 355
    invoke-static {v1, p2, p1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 358
    :goto_1
    invoke-static {p0, p4}, Lo/Settings;->extraCallback(Landroid/content/Context;Ljava/lang/String;)Lo/Settings;

    move-result-object p0

    if-nez p0, :cond_3

    .line 360
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Got null instance, not tracking \""

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lo/TrimmedThrowableData;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 362
    :cond_3
    invoke-virtual {p0, p5, v2}, Lo/Settings;->extraCallback(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 5350
    iget-object p1, p0, Lo/Settings;->asInterface:Lo/AppSpiCall;

    iget-object p2, p0, Lo/Settings;->onPostMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lo/AppSpiCall;->newSession(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 4832
    iget-object p1, p0, Lo/Settings;->onNavigationEvent:Lo/buildInstanceIdentifierChanged;

    new-instance p2, Lo/buildInstanceIdentifierChanged$extraCallback;

    iget-object p0, p0, Lo/Settings;->onPostMessage:Ljava/lang/String;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lo/buildInstanceIdentifierChanged$extraCallback;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p1, p2}, Lo/buildInstanceIdentifierChanged;->onNavigationEvent(Lo/buildInstanceIdentifierChanged$extraCallback;)V

    :cond_4
    return-void

    :catch_1
    move-exception p0

    .line 325
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Exception parsing mp payload from intent extras, not tracking event: \""

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/Settings;)Lo/AppSpiCall;
    .locals 0

    .line 114
    iget-object p0, p0, Lo/Settings;->asInterface:Lo/AppSpiCall;

    return-object p0
.end method

.method static synthetic onNavigationEvent(Lo/Settings;)Ljava/util/Map;
    .locals 0

    .line 114
    iget-object p0, p0, Lo/Settings;->asBinder:Ljava/util/Map;

    return-object p0
.end method

.method static onNavigationEvent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    .line 300
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lo/Settings;->ICustomTabsCallback(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/Settings;Lorg/json/JSONObject;)V
    .locals 2

    .line 41350
    iget-object v0, p0, Lo/Settings;->asInterface:Lo/AppSpiCall;

    iget-object v1, p0, Lo/Settings;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/AppSpiCall;->newSession(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40911
    iget-object v0, p0, Lo/Settings;->onNavigationEvent:Lo/buildInstanceIdentifierChanged;

    new-instance v1, Lo/buildInstanceIdentifierChanged$onRelationshipValidationResult;

    iget-object p0, p0, Lo/Settings;->onPostMessage:Ljava/lang/String;

    invoke-direct {v1, p1, p0}, Lo/buildInstanceIdentifierChanged$onRelationshipValidationResult;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 42085
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p0

    const/4 p1, 0x0

    .line 42086
    iput p1, p0, Landroid/os/Message;->what:I

    .line 42087
    iput-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 42089
    iget-object p1, v0, Lo/buildInstanceIdentifierChanged;->extraCallback:Lo/buildInstanceIdentifierChanged$onTransact;

    invoke-virtual {p1, p0}, Lo/buildInstanceIdentifierChanged$onTransact;->ICustomTabsCallback(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public static onPostMessage(Landroid/content/Context;Ljava/lang/String;)Lo/Settings;
    .locals 0

    .line 536
    invoke-static {p0, p1}, Lo/Settings;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;)Lo/Settings;

    move-result-object p0

    return-object p0
.end method

.method static synthetic onPostMessage(Lo/Settings;)Lo/parseSettingsJson;
    .locals 0

    .line 114
    iget-object p0, p0, Lo/Settings;->newSession:Lo/parseSettingsJson;

    return-object p0
.end method

.method static synthetic onRelationshipValidationResult(Lo/Settings;)Lo/getSingleFileWithExtension;
    .locals 0

    .line 114
    iget-object p0, p0, Lo/Settings;->ICustomTabsCallback$Stub:Lo/getSingleFileWithExtension;

    return-object p0
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 28350
    iget-object v0, p0, Lo/Settings;->asInterface:Lo/AppSpiCall;

    iget-object v1, p0, Lo/Settings;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/AppSpiCall;->newSession(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 868
    invoke-virtual {p0, p1, p2, v0}, Lo/Settings;->onMessageChannelReady(Ljava/lang/String;Lorg/json/JSONObject;Z)V

    return-void
.end method

.method protected final onMessageChannelReady(Ljava/lang/String;Lorg/json/JSONObject;Z)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v0, p2

    .line 34350
    iget-object v2, v1, Lo/Settings;->asInterface:Lo/AppSpiCall;

    iget-object v3, v1, Lo/Settings;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lo/AppSpiCall;->newSession(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    const/4 v2, 0x1

    if-eqz p3, :cond_1

    .line 2836
    iget-object v3, v1, Lo/Settings;->newSession:Lo/parseSettingsJson;

    .line 36231
    iget-object v4, v3, Lo/parseSettingsJson;->onNavigationEvent:Ljava/lang/Boolean;

    if-nez v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 37231
    :cond_0
    iget-object v3, v3, Lo/parseSettingsJson;->onNavigationEvent:Ljava/lang/Boolean;

    .line 35235
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :goto_0
    if-nez v3, :cond_1

    goto/16 :goto_4

    .line 2841
    :cond_1
    iget-object v3, v1, Lo/Settings;->onRelationshipValidationResult:Ljava/util/Map;

    monitor-enter v3

    .line 2842
    :try_start_0
    iget-object v4, v1, Lo/Settings;->onRelationshipValidationResult:Ljava/util/Map;

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 2843
    iget-object v5, v1, Lo/Settings;->onRelationshipValidationResult:Ljava/util/Map;

    invoke-interface {v5, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2844
    iget-object v5, v1, Lo/Settings;->asInterface:Lo/AppSpiCall;

    invoke-virtual {v5, v8}, Lo/AppSpiCall;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 2845
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2848
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 2850
    iget-object v3, v1, Lo/Settings;->asInterface:Lo/AppSpiCall;

    invoke-virtual {v3}, Lo/AppSpiCall;->ICustomTabsCallback()Ljava/util/Map;

    move-result-object v3

    .line 2851
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 2852
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2853
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2854
    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 2857
    :cond_2
    iget-object v3, v1, Lo/Settings;->asInterface:Lo/AppSpiCall;

    invoke-virtual {v3, v5}, Lo/AppSpiCall;->onMessageChannelReady(Lorg/json/JSONObject;)V

    .line 2861
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-double v6, v6

    const-wide v9, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v9

    double-to-long v11, v6

    .line 37926
    iget-object v3, v1, Lo/Settings;->asInterface:Lo/AppSpiCall;

    invoke-virtual {v3}, Lo/AppSpiCall;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v3

    .line 37937
    iget-object v13, v1, Lo/Settings;->asInterface:Lo/AppSpiCall;

    invoke-virtual {v13}, Lo/AppSpiCall;->extraCallback()Ljava/lang/String;

    move-result-object v13

    .line 37947
    iget-object v14, v1, Lo/Settings;->asInterface:Lo/AppSpiCall;

    invoke-virtual {v14}, Lo/AppSpiCall;->onPostMessage()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "time"

    .line 2866
    invoke-virtual {v5, v15, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v11, "distinct_id"

    .line 2867
    invoke-virtual {v5, v11, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "$had_persisted_distinct_id"

    .line 2868
    iget-object v11, v1, Lo/Settings;->asInterface:Lo/AppSpiCall;

    invoke-virtual {v11}, Lo/AppSpiCall;->onNavigationEvent()Z

    move-result v11

    invoke-virtual {v5, v3, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-eqz v13, :cond_3

    const-string v3, "$device_id"

    .line 2870
    invoke-virtual {v5, v3, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    if-eqz v14, :cond_4

    const-string v3, "$user_id"

    .line 2873
    invoke-virtual {v5, v3, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    if-eqz v4, :cond_5

    .line 2877
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v3, v9

    sub-double/2addr v6, v3

    const-string v3, "$duration"

    .line 2879
    invoke-virtual {v5, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_5
    if-eqz v0, :cond_7

    .line 2883
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 2884
    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2885
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2886
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 2887
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 2892
    :cond_7
    new-instance v0, Lo/buildInstanceIdentifierChanged$onPostMessage;

    iget-object v6, v1, Lo/Settings;->onPostMessage:Ljava/lang/String;

    iget-object v3, v1, Lo/Settings;->ICustomTabsService:Lo/onAuthRevoked;

    .line 38030
    invoke-virtual {v3, v2}, Lo/onAuthRevoked;->onPostMessage(Z)Lorg/json/JSONObject;

    move-result-object v7

    move-object v2, v0

    move-object/from16 v3, p1

    move-object v4, v5

    move-object v5, v6

    move/from16 v6, p3

    .line 2894
    invoke-direct/range {v2 .. v7}, Lo/buildInstanceIdentifierChanged$onPostMessage;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;ZLorg/json/JSONObject;)V

    .line 2895
    iget-object v2, v1, Lo/Settings;->onNavigationEvent:Lo/buildInstanceIdentifierChanged;

    invoke-virtual {v2, v0}, Lo/buildInstanceIdentifierChanged;->ICustomTabsCallback(Lo/buildInstanceIdentifierChanged$onPostMessage;)V

    .line 2897
    iget-object v2, v1, Lo/Settings;->warmup:Lo/FeaturesSettingsData;

    .line 38125
    iget-object v3, v2, Lo/FeaturesSettingsData;->extraCallback:Ljava/lang/ref/WeakReference;

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    iget-object v2, v2, Lo/FeaturesSettingsData;->extraCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    goto :goto_3

    :cond_8
    move-object v2, v4

    :goto_3
    if-eqz v2, :cond_a

    .line 38206
    iget-object v2, v1, Lo/Settings;->ICustomTabsCallback:Lo/Settings$extraCallback;

    .line 2898
    iget-object v3, v1, Lo/Settings;->newSession:Lo/parseSettingsJson;

    iget-object v5, v1, Lo/Settings;->onMessageChannelReady:Lo/SessionSettingsData;

    .line 38369
    iget-boolean v5, v5, Lo/SessionSettingsData;->onRelationshipValidationResult:Z

    .line 2898
    invoke-virtual {v3, v0, v5}, Lo/parseSettingsJson;->ICustomTabsCallback(Lo/buildInstanceIdentifierChanged$onPostMessage;Z)Lo/AppRequestData;

    move-result-object v0

    iget-object v3, v1, Lo/Settings;->warmup:Lo/FeaturesSettingsData;

    .line 39125
    iget-object v5, v3, Lo/FeaturesSettingsData;->extraCallback:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_9

    iget-object v3, v3, Lo/FeaturesSettingsData;->extraCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/app/Activity;

    .line 2898
    :cond_9
    invoke-interface {v2, v0, v4}, Lo/Settings$onMessageChannelReady;->onPostMessage(Lo/AppRequestData;Landroid/app/Activity;)V

    .line 2901
    :cond_a
    iget-object v0, v1, Lo/Settings;->ICustomTabsCallback$Stub$Proxy:Lo/getSessionFileDirectory;

    if-eqz v0, :cond_b

    .line 2902
    iget-object v0, v1, Lo/Settings;->ICustomTabsCallback$Stub$Proxy:Lo/getSessionFileDirectory;

    invoke-interface {v0, v8}, Lo/getSessionFileDirectory;->onMessageChannelReady(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_b
    return-void

    :catch_0
    move-exception v0

    .line 2905
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Exception tracking event "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "MixpanelAPI.API"

    invoke-static {v3, v2, v0}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception v0

    .line 2845
    monitor-exit v3

    throw v0

    :cond_c
    :goto_4
    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/String;Z)V
    .locals 3

    .line 27350
    iget-object v0, p0, Lo/Settings;->asInterface:Lo/AppSpiCall;

    iget-object v1, p0, Lo/Settings;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/AppSpiCall;->newSession(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "MixpanelAPI.API"

    const-string p2, "Can\'t identify with null distinct_id."

    .line 730
    invoke-static {p1, p2}, Lo/TrimmedThrowableData;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 733
    :cond_1
    iget-object v0, p0, Lo/Settings;->asInterface:Lo/AppSpiCall;

    monitor-enter v0

    .line 734
    :try_start_0
    iget-object v1, p0, Lo/Settings;->asInterface:Lo/AppSpiCall;

    invoke-virtual {v1}, Lo/AppSpiCall;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v1

    .line 735
    iget-object v2, p0, Lo/Settings;->asInterface:Lo/AppSpiCall;

    invoke-virtual {v2, v1}, Lo/AppSpiCall;->onNavigationEvent(Ljava/lang/String;)V

    .line 736
    iget-object v2, p0, Lo/Settings;->asInterface:Lo/AppSpiCall;

    invoke-virtual {v2, p1}, Lo/AppSpiCall;->extraCallback(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 738
    iget-object p2, p0, Lo/Settings;->asInterface:Lo/AppSpiCall;

    invoke-virtual {p2}, Lo/AppSpiCall;->asBinder()V

    .line 740
    :cond_2
    iget-object p2, p0, Lo/Settings;->asInterface:Lo/AppSpiCall;

    invoke-virtual {p2}, Lo/AppSpiCall;->onRelationshipValidationResult()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    .line 742
    iget-object p2, p0, Lo/Settings;->asInterface:Lo/AppSpiCall;

    invoke-virtual {p2}, Lo/AppSpiCall;->onMessageChannelReady()Ljava/lang/String;

    move-result-object p2

    .line 744
    :cond_3
    iget-object v2, p0, Lo/Settings;->newSession:Lo/parseSettingsJson;

    invoke-virtual {v2, p2}, Lo/parseSettingsJson;->onMessageChannelReady(Ljava/lang/String;)V

    .line 746
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_4

    .line 748
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "$anon_distinct_id"

    .line 749
    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "$identify"

    .line 750
    invoke-virtual {p0, p2, p1}, Lo/Settings;->extraCallback(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string p1, "MixpanelAPI.API"

    const-string p2, "Could not track $identify event"

    .line 752
    invoke-static {p1, p2}, Lo/TrimmedThrowableData;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    :cond_4
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final onMessageChannelReady(Lo/applyNonNullHeader;)V
    .locals 7

    .line 32350
    iget-object v0, p0, Lo/Settings;->asInterface:Lo/AppSpiCall;

    iget-object v1, p0, Lo/Settings;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/AppSpiCall;->newSession(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1082
    :cond_0
    iget-object v0, p0, Lo/Settings;->asInterface:Lo/AppSpiCall;

    .line 33079
    iget-object v1, v0, Lo/AppSpiCall;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v1

    .line 33080
    :try_start_0
    invoke-virtual {v0}, Lo/AppSpiCall;->getInterfaceDescriptor()Lorg/json/JSONObject;

    move-result-object v2

    .line 33081
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33084
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 33085
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 33086
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 33087
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 33088
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 33095
    :cond_1
    :try_start_2
    invoke-interface {p1, v3}, Lo/applyNonNullHeader;->onNavigationEvent(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "MixpanelAPI.PIdentity"

    const-string v0, "An update to Mixpanel\'s super properties returned null, and will have no effect."

    .line 33097
    invoke-static {p1, v0}, Lo/TrimmedThrowableData;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 33098
    monitor-exit v1

    return-void

    .line 33101
    :cond_2
    iput-object p1, v0, Lo/AppSpiCall;->onMessageChannelReady:Lorg/json/JSONObject;

    .line 33102
    invoke-virtual {v0}, Lo/AppSpiCall;->ICustomTabsCallback$Stub$Proxy()V

    .line 33103
    monitor-exit v1

    return-void

    :catch_0
    move-exception p1

    const-string v0, "MixpanelAPI.PIdentity"

    const-string v2, "Can\'t copy from one JSONObject to another"

    .line 33091
    invoke-static {v0, v2, p1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33092
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 33103
    monitor-exit v1

    throw p1
.end method

.method public final onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 24350
    iget-object v0, p0, Lo/Settings;->asInterface:Lo/AppSpiCall;

    iget-object v1, p0, Lo/Settings;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/AppSpiCall;->newSession(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 24926
    iget-object p2, p0, Lo/Settings;->asInterface:Lo/AppSpiCall;

    invoke-virtual {p2}, Lo/AppSpiCall;->onMessageChannelReady()Ljava/lang/String;

    move-result-object p2

    .line 684
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "MixpanelAPI.API"

    if-eqz v0, :cond_2

    .line 685
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Attempted to alias identical distinct_ids "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Alias message will not be sent."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lo/TrimmedThrowableData;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 689
    :cond_2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "alias"

    .line 690
    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "original"

    .line 691
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "$create_alias"

    .line 692
    invoke-virtual {p0, p1, v0}, Lo/Settings;->extraCallback(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Failed to alias"

    .line 694
    invoke-static {v1, p2, p1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26350
    :goto_0
    iget-object p1, p0, Lo/Settings;->asInterface:Lo/AppSpiCall;

    iget-object p2, p0, Lo/Settings;->onPostMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lo/AppSpiCall;->newSession(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 25894
    iget-object p1, p0, Lo/Settings;->onNavigationEvent:Lo/buildInstanceIdentifierChanged;

    new-instance p2, Lo/buildInstanceIdentifierChanged$extraCallback;

    iget-object v0, p0, Lo/Settings;->onPostMessage:Ljava/lang/String;

    invoke-direct {p2, v0}, Lo/buildInstanceIdentifierChanged$extraCallback;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lo/buildInstanceIdentifierChanged;->onNavigationEvent(Lo/buildInstanceIdentifierChanged$extraCallback;)V

    :cond_3
    return-void
.end method

.method public final onNavigationEvent(Lorg/json/JSONObject;)V
    .locals 2

    .line 31350
    iget-object v0, p0, Lo/Settings;->asInterface:Lo/AppSpiCall;

    iget-object v1, p0, Lo/Settings;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/AppSpiCall;->newSession(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1001
    :cond_0
    iget-object v0, p0, Lo/Settings;->asInterface:Lo/AppSpiCall;

    invoke-virtual {v0, p1}, Lo/AppSpiCall;->onNavigationEvent(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected final onPostMessage()V
    .locals 4

    .line 33350
    iget-object v0, p0, Lo/Settings;->asInterface:Lo/AppSpiCall;

    iget-object v1, p0, Lo/Settings;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/AppSpiCall;->newSession(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2832
    :cond_0
    iget-object v0, p0, Lo/Settings;->onNavigationEvent:Lo/buildInstanceIdentifierChanged;

    new-instance v1, Lo/buildInstanceIdentifierChanged$extraCallback;

    iget-object v2, p0, Lo/Settings;->onPostMessage:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lo/buildInstanceIdentifierChanged$extraCallback;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lo/buildInstanceIdentifierChanged;->onNavigationEvent(Lo/buildInstanceIdentifierChanged$extraCallback;)V

    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;)V
    .locals 2

    .line 29350
    iget-object v0, p0, Lo/Settings;->asInterface:Lo/AppSpiCall;

    iget-object v1, p0, Lo/Settings;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/AppSpiCall;->newSession(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 30350
    :cond_0
    iget-object v0, p0, Lo/Settings;->asInterface:Lo/AppSpiCall;

    iget-object v1, p0, Lo/Settings;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/AppSpiCall;->newSession(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 29868
    invoke-virtual {p0, p1, v0, v1}, Lo/Settings;->onMessageChannelReady(Ljava/lang/String;Lorg/json/JSONObject;Z)V

    :cond_1
    return-void
.end method
