.class public final Lo/SessionSettingsData;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static INotificationSideChannel$Default:Lo/SessionSettingsData; = null

.field private static final INotificationSideChannel$Stub:Ljava/lang/Object;

.field public static onPostMessage:Z = false


# instance fields
.field final ICustomTabsCallback:I

.field public final ICustomTabsCallback$Stub:Z

.field final ICustomTabsCallback$Stub$Proxy:Z

.field ICustomTabsService:Ljava/lang/String;

.field final ICustomTabsService$Stub:I

.field final ICustomTabsService$Stub$Proxy:Z

.field private final INotificationSideChannel:Z

.field public final IPostMessageService:I

.field public final IPostMessageService$Stub:Z

.field final IPostMessageService$Stub$Proxy:I

.field final asBinder:Z

.field public final asInterface:Z

.field final cancel:Ljava/lang/String;

.field final cancelAll:Ljava/lang/String;

.field final extraCallback:Z

.field public final extraCommand:Ljava/lang/String;

.field private getDefaultImpl:Ljavax/net/ssl/SSLSocketFactory;

.field getInterfaceDescriptor:Ljava/lang/String;

.field mayLaunchUrl:Ljava/lang/String;

.field final newSession:[Ljava/lang/String;

.field private final notify:I

.field final onMessageChannelReady:I

.field final onNavigationEvent:J

.field final onRelationshipValidationResult:Z

.field final onTransact:I

.field final postMessage:Z

.field public final requestPostMessageChannel:Ljava/lang/String;

.field updateVisuals:Ljava/lang/String;

.field final validateRelationship:I

.field final warmup:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 588
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/SessionSettingsData;->INotificationSideChannel$Stub:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 7

    const-string v0, "MixpanelAPI.Conf"

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "TLS"

    .line 216
    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .line 217
    invoke-virtual {v2, v1, v1, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 218
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "System has no SSL support. Built-in events editor will not be available"

    .line 220
    invoke-static {v0, v3, v2}, Lo/TrimmedThrowableData;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    :goto_0
    iput-object v1, p0, Lo/SessionSettingsData;->getDefaultImpl:Ljavax/net/ssl/SSLSocketFactory;

    const/4 v1, 0x0

    const-string v2, "com.mixpanel.android.MPConfig.EnableDebugLogging"

    .line 225
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 226
    sput-boolean v2, Lo/SessionSettingsData;->onPostMessage:Z

    if-eqz v2, :cond_0

    .line 227
    invoke-static {}, Lo/TrimmedThrowableData;->onPostMessage()V

    :cond_0
    const-string v2, "com.mixpanel.android.MPConfig.DebugFlushInterval"

    .line 230
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "We do not support com.mixpanel.android.MPConfig.DebugFlushInterval anymore. There will only be one flush interval. Please, update your AndroidManifest.xml."

    .line 231
    invoke-static {v0, v2}, Lo/TrimmedThrowableData;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/16 v2, 0x28

    const-string v3, "com.mixpanel.android.MPConfig.BulkUploadLimit"

    .line 234
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lo/SessionSettingsData;->ICustomTabsCallback:I

    const v2, 0xea60

    const-string v3, "com.mixpanel.android.MPConfig.FlushInterval"

    .line 235
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lo/SessionSettingsData;->onMessageChannelReady:I

    const/4 v2, 0x1

    const-string v3, "com.mixpanel.android.MPConfig.FlushOnBackground"

    .line 236
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lo/SessionSettingsData;->extraCallback:Z

    const/high16 v3, 0x1400000

    const-string v4, "com.mixpanel.android.MPConfig.MinimumDatabaseLimit"

    .line 237
    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lo/SessionSettingsData;->onTransact:I

    const-string v3, "com.mixpanel.android.MPConfig.ResourcePackageName"

    .line 238
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lo/SessionSettingsData;->extraCommand:Ljava/lang/String;

    const-string v3, "com.mixpanel.android.MPConfig.DisableGestureBindingUI"

    .line 239
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lo/SessionSettingsData;->ICustomTabsCallback$Stub:Z

    const-string v3, "com.mixpanel.android.MPConfig.DisableEmulatorBindingUI"

    .line 240
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lo/SessionSettingsData;->asInterface:Z

    const-string v3, "com.mixpanel.android.MPConfig.DisableAppOpenEvent"

    .line 241
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lo/SessionSettingsData;->asBinder:Z

    const-string v3, "com.mixpanel.android.MPConfig.DisableViewCrawler"

    .line 242
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lo/SessionSettingsData;->warmup:Z

    const-string v3, "com.mixpanel.android.MPConfig.DisableDecideChecker"

    .line 243
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lo/SessionSettingsData;->ICustomTabsService$Stub$Proxy:Z

    const-string v3, "com.mixpanel.android.MPConfig.DisableExceptionHandler"

    .line 244
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lo/SessionSettingsData;->ICustomTabsCallback$Stub$Proxy:Z

    const/16 v3, 0xa

    const-string v4, "com.mixpanel.android.MPConfig.ImageCacheMaxMemoryFactor"

    .line 245
    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lo/SessionSettingsData;->IPostMessageService:I

    const-string v3, "com.mixpanel.android.MPConfig.IgnoreInvisibleViewsVisualEditor"

    .line 246
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lo/SessionSettingsData;->IPostMessageService$Stub:Z

    const-string v3, "com.mixpanel.android.MPConfig.AutoShowMixpanelUpdates"

    .line 247
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lo/SessionSettingsData;->postMessage:Z

    const-string v3, "com.mixpanel.android.MPConfig.NotificationDefaults"

    .line 248
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lo/SessionSettingsData;->ICustomTabsService$Stub:I

    const/16 v3, 0x2710

    const-string v4, "com.mixpanel.android.MPConfig.MinimumSessionDuration"

    .line 249
    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lo/SessionSettingsData;->validateRelationship:I

    const v3, 0x7fffffff

    const-string v4, "com.mixpanel.android.MPConfig.SessionTimeoutDuration"

    .line 250
    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lo/SessionSettingsData;->IPostMessageService$Stub$Proxy:I

    const-string v3, "com.mixpanel.android.MPConfig.UseIpAddressForGeolocation"

    .line 251
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lo/SessionSettingsData;->INotificationSideChannel:Z

    const-string v2, "com.mixpanel.android.MPConfig.TestMode"

    .line 252
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lo/SessionSettingsData;->onRelationshipValidationResult:Z

    const/4 v2, 0x3

    const-string v3, "com.mixpanel.android.MPConfig.NotificationChannelImportance"

    .line 253
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lo/SessionSettingsData;->notify:I

    const-string v2, "com.mixpanel.android.MPConfig.DataExpiration"

    .line 255
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-wide/32 v3, 0x19bfcc00

    if-eqz v2, :cond_4

    .line 259
    :try_start_1
    instance-of v5, v2, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 260
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    int-to-long v3, v2

    goto :goto_1

    .line 261
    :cond_2
    instance-of v5, v2, Ljava/lang/Float;

    if-eqz v5, :cond_3

    .line 262
    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    float-to-long v3, v2

    goto :goto_1

    .line 264
    :cond_3
    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not a number."

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v2

    const-string v5, "Error parsing com.mixpanel.android.MPConfig.DataExpiration meta-data value"

    .line 267
    invoke-static {v0, v5, v2}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 270
    :cond_4
    :goto_1
    iput-wide v3, p0, Lo/SessionSettingsData;->onNavigationEvent:J

    const-string v2, "com.mixpanel.android.MPConfig.NotificationChannelId"

    .line 272
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    const-string v2, "mp"

    .line 276
    :cond_5
    iput-object v2, p0, Lo/SessionSettingsData;->cancel:Ljava/lang/String;

    const-string v2, "com.mixpanel.android.MPConfig.NotificationChannelName"

    .line 278
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    .line 280
    invoke-static {p2}, Lo/getQueryParamsFor;->onMessageChannelReady(Landroid/content/Context;)Lo/getQueryParamsFor;

    move-result-object v2

    .line 1099
    iget-object v2, v2, Lo/getQueryParamsFor;->asBinder:Ljava/lang/String;

    .line 282
    :cond_6
    iput-object v2, p0, Lo/SessionSettingsData;->cancelAll:Ljava/lang/String;

    const-string v2, "com.mixpanel.android.MPConfig.EventsEndpoint"

    .line 284
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    const-string v4, "0"

    if-eqz v2, :cond_7

    .line 1382
    iput-object v2, p0, Lo/SessionSettingsData;->getInterfaceDescriptor:Ljava/lang/String;

    goto :goto_3

    .line 2378
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "https://api.mixpanel.com/track?ip="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2471
    iget-boolean v5, p0, Lo/SessionSettingsData;->INotificationSideChannel:Z

    if-eqz v5, :cond_8

    move-object v5, v3

    goto :goto_2

    :cond_8
    move-object v5, v4

    .line 2378
    :goto_2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3382
    iput-object v2, p0, Lo/SessionSettingsData;->getInterfaceDescriptor:Ljava/lang/String;

    :goto_3
    const-string v2, "com.mixpanel.android.MPConfig.PeopleEndpoint"

    .line 291
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 3395
    iput-object v2, p0, Lo/SessionSettingsData;->ICustomTabsService:Ljava/lang/String;

    goto :goto_5

    .line 4391
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "https://api.mixpanel.com/engage?ip="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4471
    iget-boolean v5, p0, Lo/SessionSettingsData;->INotificationSideChannel:Z

    if-eqz v5, :cond_a

    goto :goto_4

    :cond_a
    move-object v3, v4

    .line 4391
    :goto_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5395
    iput-object v2, p0, Lo/SessionSettingsData;->ICustomTabsService:Ljava/lang/String;

    :goto_5
    const-string v2, "com.mixpanel.android.MPConfig.GroupsEndpoint"

    .line 298
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 5408
    iput-object v2, p0, Lo/SessionSettingsData;->updateVisuals:Ljava/lang/String;

    goto :goto_6

    :cond_b
    const-string v2, "https://api.mixpanel.com/groups"

    .line 6408
    iput-object v2, p0, Lo/SessionSettingsData;->updateVisuals:Ljava/lang/String;

    :goto_6
    const-string v2, "com.mixpanel.android.MPConfig.DecideEndpoint"

    .line 305
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 6421
    iput-object v2, p0, Lo/SessionSettingsData;->mayLaunchUrl:Ljava/lang/String;

    goto :goto_7

    :cond_c
    const-string v2, "https://decide.mixpanel.com/decide"

    .line 7421
    iput-object v2, p0, Lo/SessionSettingsData;->mayLaunchUrl:Ljava/lang/String;

    :goto_7
    const-string v2, "com.mixpanel.android.MPConfig.EditorUrl"

    .line 312
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_d

    const-string v2, "wss://switchboard.mixpanel.com/connect/"

    .line 316
    :cond_d
    iput-object v2, p0, Lo/SessionSettingsData;->requestPostMessageChannel:Ljava/lang/String;

    const/4 v2, -0x1

    const-string v3, "com.mixpanel.android.MPConfig.DisableViewCrawlerForProjects"

    .line 318
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v2, :cond_e

    .line 320
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/SessionSettingsData;->newSession:[Ljava/lang/String;

    goto :goto_8

    :cond_e
    new-array p1, v1, [Ljava/lang/String;

    .line 322
    iput-object p1, p0, Lo/SessionSettingsData;->newSession:[Ljava/lang/String;

    .line 325
    :goto_8
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lo/TrimmedThrowableData;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static ICustomTabsCallback(Landroid/content/Context;)Lo/SessionSettingsData;
    .locals 2

    .line 148
    sget-object v0, Lo/SessionSettingsData;->INotificationSideChannel$Stub:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_0
    sget-object v1, Lo/SessionSettingsData;->INotificationSideChannel$Default:Lo/SessionSettingsData;

    if-nez v1, :cond_0

    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 151
    invoke-static {p0}, Lo/SessionSettingsData;->onNavigationEvent(Landroid/content/Context;)Lo/SessionSettingsData;

    move-result-object p0

    sput-object p0, Lo/SessionSettingsData;->INotificationSideChannel$Default:Lo/SessionSettingsData;

    .line 153
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    sget-object p0, Lo/SessionSettingsData;->INotificationSideChannel$Default:Lo/SessionSettingsData;

    return-object p0

    :catchall_0
    move-exception p0

    .line 153
    monitor-exit v0

    throw p0
.end method

.method private static onNavigationEvent(Landroid/content/Context;)Lo/SessionSettingsData;
    .locals 3

    .line 509
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 511
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 512
    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 514
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 516
    :cond_0
    new-instance v2, Lo/SessionSettingsData;

    invoke-direct {v2, v1, p0}, Lo/SessionSettingsData;-><init>(Landroid/os/Bundle;Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    .line 518
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Can\'t configure Mixpanel with package name "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final declared-synchronized extraCallback()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    monitor-enter p0

    .line 492
    :try_start_0
    iget-object v0, p0, Lo/SessionSettingsData;->getDefaultImpl:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onPostMessage()Lo/onPostMessage$extraCallback;
    .locals 1

    monitor-enter p0

    .line 497
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Mixpanel (5.8.4) configured with:\n    AutoShowMixpanelUpdates "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7426
    iget-boolean v1, p0, Lo/SessionSettingsData;->postMessage:Z

    .line 525
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n    BulkUploadLimit "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8330
    iget v1, p0, Lo/SessionSettingsData;->ICustomTabsCallback:I

    .line 526
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n    FlushInterval "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8335
    iget v1, p0, Lo/SessionSettingsData;->onMessageChannelReady:I

    .line 527
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n    DataExpiration "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8345
    iget-wide v1, p0, Lo/SessionSettingsData;->onNavigationEvent:J

    .line 528
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n    MinimumDatabaseLimit "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8348
    iget v1, p0, Lo/SessionSettingsData;->onTransact:I

    .line 529
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n    DisableAppOpenEvent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8359
    iget-boolean v1, p0, Lo/SessionSettingsData;->asBinder:Z

    .line 530
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n    DisableViewCrawler "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8363
    iget-boolean v1, p0, Lo/SessionSettingsData;->warmup:Z

    .line 531
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n    DisableGestureBindingUI "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9351
    iget-boolean v1, p0, Lo/SessionSettingsData;->ICustomTabsCallback$Stub:Z

    .line 532
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n    DisableEmulatorBindingUI "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9355
    iget-boolean v1, p0, Lo/SessionSettingsData;->asInterface:Z

    .line 533
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n    EnableDebugLogging "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lo/SessionSettingsData;->onPostMessage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n    TestMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9369
    iget-boolean v1, p0, Lo/SessionSettingsData;->onRelationshipValidationResult:Z

    .line 535
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n    EventsEndpoint "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9374
    iget-object v1, p0, Lo/SessionSettingsData;->getInterfaceDescriptor:Ljava/lang/String;

    .line 536
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    PeopleEndpoint "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9387
    iget-object v1, p0, Lo/SessionSettingsData;->ICustomTabsService:Ljava/lang/String;

    .line 537
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    DecideEndpoint "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9413
    iget-object v1, p0, Lo/SessionSettingsData;->mayLaunchUrl:Ljava/lang/String;

    .line 538
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    EditorUrl "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9431
    iget-object v1, p0, Lo/SessionSettingsData;->requestPostMessageChannel:Ljava/lang/String;

    .line 539
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    ImageCacheMaxMemoryFactor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9502
    iget v1, p0, Lo/SessionSettingsData;->IPostMessageService:I

    .line 540
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n    DisableDecideChecker "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10435
    iget-boolean v1, p0, Lo/SessionSettingsData;->ICustomTabsService$Stub$Proxy:Z

    .line 541
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n    IgnoreInvisibleViewsEditor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10439
    iget-boolean v1, p0, Lo/SessionSettingsData;->IPostMessageService$Stub:Z

    .line 542
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n    NotificationDefaults "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10443
    iget v1, p0, Lo/SessionSettingsData;->ICustomTabsService$Stub:I

    .line 543
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n    MinimumSessionDuration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10447
    iget v1, p0, Lo/SessionSettingsData;->validateRelationship:I

    .line 544
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n    SessionTimeoutDuration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10451
    iget v1, p0, Lo/SessionSettingsData;->IPostMessageService$Stub$Proxy:I

    .line 545
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n    DisableExceptionHandler: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10455
    iget-boolean v1, p0, Lo/SessionSettingsData;->ICustomTabsCallback$Stub$Proxy:Z

    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n    NotificationChannelId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10459
    iget-object v1, p0, Lo/SessionSettingsData;->cancel:Ljava/lang/String;

    .line 547
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    NotificationChannelName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10463
    iget-object v1, p0, Lo/SessionSettingsData;->cancelAll:Ljava/lang/String;

    .line 548
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    NotificationChannelImportance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10467
    iget v1, p0, Lo/SessionSettingsData;->notify:I

    .line 549
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n    FlushOnBackground: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11340
    iget-boolean v1, p0, Lo/SessionSettingsData;->extraCallback:Z

    .line 550
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
