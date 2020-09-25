.class public Lcom/google/firebase/crashlytics/internal/Onboarding;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final CRASHLYTICS_API_ENDPOINT:Ljava/lang/String; = "com.crashlytics.ApiEndpoint"


# instance fields
.field private final app:Lcom/google/firebase/FirebaseApp;

.field private applicationLabel:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private dataCollectionArbiter:Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;

.field private idManager:Lcom/google/firebase/crashlytics/internal/common/IdManager;

.field private installerPackageName:Ljava/lang/String;

.field private packageInfo:Landroid/content/pm/PackageInfo;

.field private packageManager:Landroid/content/pm/PackageManager;

.field private packageName:Ljava/lang/String;

.field private final requestFactory:Lcom/google/firebase/crashlytics/internal/network/HttpRequestFactory;

.field private targetAndroidSdkVersion:Ljava/lang/String;

.field private versionCode:Ljava/lang/String;

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/firebase/FirebaseApp;Landroid/content/Context;Lcom/google/firebase/crashlytics/internal/common/IdManager;Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/google/firebase/crashlytics/internal/network/HttpRequestFactory;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/internal/network/HttpRequestFactory;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/Onboarding;->requestFactory:Lcom/google/firebase/crashlytics/internal/network/HttpRequestFactory;

    .line 64
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/Onboarding;->app:Lcom/google/firebase/FirebaseApp;

    .line 65
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/Onboarding;->context:Landroid/content/Context;

    .line 66
    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/Onboarding;->idManager:Lcom/google/firebase/crashlytics/internal/common/IdManager;

    .line 67
    iput-object p4, p0, Lcom/google/firebase/crashlytics/internal/Onboarding;->dataCollectionArbiter:Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;

    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/crashlytics/internal/Onboarding;Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/settings/SettingsController;Ljava/util/concurrent/Executor;Z)V
    .locals 0

    .line 40
    invoke-direct/range {p0 .. p5}, Lcom/google/firebase/crashlytics/internal/Onboarding;->performAutoConfigure(Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/settings/SettingsController;Ljava/util/concurrent/Executor;Z)V

    return-void
.end method

.method private buildAppRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/settings/model/AppRequestData;
    .locals 14

    move-object v0, p0

    .line 221
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/Onboarding;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 222
    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->getMappingFileId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p2, v2, v1

    .line 223
    iget-object v1, v0, Lcom/google/firebase/crashlytics/internal/Onboarding;->versionName:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v1, v2, v3

    iget-object v1, v0, Lcom/google/firebase/crashlytics/internal/Onboarding;->versionCode:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v1, v2, v3

    .line 224
    invoke-static {v2}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->createInstanceIdFrom([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 225
    iget-object v1, v0, Lcom/google/firebase/crashlytics/internal/Onboarding;->installerPackageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;->determineFrom(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;->getId()I

    move-result v11

    .line 226
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/Onboarding;->getIdManager()Lcom/google/firebase/crashlytics/internal/common/IdManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/internal/common/IdManager;->getAppIdentifier()Ljava/lang/String;

    move-result-object v6

    .line 228
    new-instance v1, Lcom/google/firebase/crashlytics/internal/settings/model/AppRequestData;

    iget-object v7, v0, Lcom/google/firebase/crashlytics/internal/Onboarding;->versionName:Ljava/lang/String;

    iget-object v8, v0, Lcom/google/firebase/crashlytics/internal/Onboarding;->versionCode:Ljava/lang/String;

    iget-object v10, v0, Lcom/google/firebase/crashlytics/internal/Onboarding;->applicationLabel:Ljava/lang/String;

    iget-object v12, v0, Lcom/google/firebase/crashlytics/internal/Onboarding;->targetAndroidSdkVersion:Ljava/lang/String;

    const-string v13, "0"

    move-object v3, v1

    move-object v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v3 .. v13}, Lcom/google/firebase/crashlytics/internal/settings/model/AppRequestData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private getIdManager()Lcom/google/firebase/crashlytics/internal/common/IdManager;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/Onboarding;->idManager:Lcom/google/firebase/crashlytics/internal/common/IdManager;

    return-object v0
.end method

.method private static getVersion()Ljava/lang/String;
    .locals 1

    .line 75
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private performAutoConfigure(Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/settings/SettingsController;Ljava/util/concurrent/Executor;Z)V
    .locals 2

    .line 179
    iget-object v0, p1, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->status:Ljava/lang/String;

    const-string v1, "new"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    invoke-direct {p0, p1, p2, p5}, Lcom/google/firebase/crashlytics/internal/Onboarding;->performCreateApp(Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 184
    sget-object p1, Lcom/google/firebase/crashlytics/internal/settings/SettingsCacheBehavior;->SKIP_CACHE_LOOKUP:Lcom/google/firebase/crashlytics/internal/settings/SettingsCacheBehavior;

    invoke-virtual {p3, p1, p4}, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->loadSettingsData(Lcom/google/firebase/crashlytics/internal/settings/SettingsCacheBehavior;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/Task;

    return-void

    .line 188
    :cond_0
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "Failed to create app with Crashlytics service."

    invoke-virtual {p1, p3, p2}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 190
    :cond_1
    iget-object v0, p1, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->status:Ljava/lang/String;

    const-string v1, "configured"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    sget-object p1, Lcom/google/firebase/crashlytics/internal/settings/SettingsCacheBehavior;->SKIP_CACHE_LOOKUP:Lcom/google/firebase/crashlytics/internal/settings/SettingsCacheBehavior;

    invoke-virtual {p3, p1, p4}, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->loadSettingsData(Lcom/google/firebase/crashlytics/internal/settings/SettingsCacheBehavior;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/Task;

    return-void

    .line 194
    :cond_2
    iget-boolean p3, p1, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->updateRequired:Z

    if-eqz p3, :cond_3

    .line 197
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object p3

    const-string p4, "Server says an update is required - forcing a full App update."

    invoke-virtual {p3, p4}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 198
    invoke-direct {p0, p1, p2, p5}, Lcom/google/firebase/crashlytics/internal/Onboarding;->performUpdateApp(Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;Ljava/lang/String;Z)Z

    :cond_3
    return-void
.end method

.method private performCreateApp(Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;Ljava/lang/String;Z)Z
    .locals 4

    .line 205
    iget-object v0, p1, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->organizationId:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/google/firebase/crashlytics/internal/Onboarding;->buildAppRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/settings/model/AppRequestData;

    move-result-object p2

    .line 206
    new-instance v0, Lcom/google/firebase/crashlytics/internal/settings/network/CreateAppSpiCall;

    .line 207
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/Onboarding;->getOverridenSpiEndpoint()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/Onboarding;->requestFactory:Lcom/google/firebase/crashlytics/internal/network/HttpRequestFactory;

    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Onboarding;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/google/firebase/crashlytics/internal/settings/network/CreateAppSpiCall;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/network/HttpRequestFactory;Ljava/lang/String;)V

    .line 208
    invoke-virtual {v0, p2, p3}, Lcom/google/firebase/crashlytics/internal/settings/network/CreateAppSpiCall;->invoke(Lcom/google/firebase/crashlytics/internal/settings/model/AppRequestData;Z)Z

    move-result p1

    return p1
.end method

.method private performUpdateApp(Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;Ljava/lang/String;Z)Z
    .locals 4

    .line 214
    iget-object v0, p1, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->organizationId:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/google/firebase/crashlytics/internal/Onboarding;->buildAppRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/settings/model/AppRequestData;

    move-result-object p2

    .line 215
    new-instance v0, Lcom/google/firebase/crashlytics/internal/settings/network/UpdateAppSpiCall;

    .line 216
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/Onboarding;->getOverridenSpiEndpoint()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/Onboarding;->requestFactory:Lcom/google/firebase/crashlytics/internal/network/HttpRequestFactory;

    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Onboarding;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/google/firebase/crashlytics/internal/settings/network/UpdateAppSpiCall;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/network/HttpRequestFactory;Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0, p2, p3}, Lcom/google/firebase/crashlytics/internal/settings/network/UpdateAppSpiCall;->invoke(Lcom/google/firebase/crashlytics/internal/settings/model/AppRequestData;Z)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public doOnboarding(Ljava/util/concurrent/Executor;Lcom/google/firebase/crashlytics/internal/settings/SettingsController;)V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/Onboarding;->app:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lo/asGzippedBytes;

    move-result-object v0

    invoke-virtual {v0}, Lo/asGzippedBytes;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/Onboarding;->dataCollectionArbiter:Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;

    .line 104
    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->waitForDataCollectionPermission()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/crashlytics/internal/Onboarding$2;

    invoke-direct {v2, p0, p2}, Lcom/google/firebase/crashlytics/internal/Onboarding$2;-><init>(Lcom/google/firebase/crashlytics/internal/Onboarding;Lcom/google/firebase/crashlytics/internal/settings/SettingsController;)V

    .line 105
    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/tasks/Task;->onNavigationEvent(Ljava/util/concurrent/Executor;Lo/getPersistenceKey;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/crashlytics/internal/Onboarding$1;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/google/firebase/crashlytics/internal/Onboarding$1;-><init>(Lcom/google/firebase/crashlytics/internal/Onboarding;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/settings/SettingsController;Ljava/util/concurrent/Executor;)V

    .line 115
    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/tasks/Task;->onNavigationEvent(Ljava/util/concurrent/Executor;Lo/getPersistenceKey;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/Onboarding;->context:Landroid/content/Context;

    return-object v0
.end method

.method getOverridenSpiEndpoint()Ljava/lang/String;
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/Onboarding;->context:Landroid/content/Context;

    const-string v1, "com.crashlytics.ApiEndpoint"

    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->getStringsFileValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onPreExecute()Z
    .locals 4

    const/4 v0, 0x0

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/Onboarding;->idManager:Lcom/google/firebase/crashlytics/internal/common/IdManager;

    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/internal/common/IdManager;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/crashlytics/internal/Onboarding;->installerPackageName:Ljava/lang/String;

    .line 81
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/Onboarding;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/crashlytics/internal/Onboarding;->packageManager:Landroid/content/pm/PackageManager;

    .line 82
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/Onboarding;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/crashlytics/internal/Onboarding;->packageName:Ljava/lang/String;

    .line 83
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/Onboarding;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/crashlytics/internal/Onboarding;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 84
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/crashlytics/internal/Onboarding;->versionCode:Ljava/lang/String;

    .line 86
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/Onboarding;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "0.0"

    goto :goto_0

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/Onboarding;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_0
    iput-object v1, p0, Lcom/google/firebase/crashlytics/internal/Onboarding;->versionName:Ljava/lang/String;

    .line 89
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/Onboarding;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/Onboarding;->context:Landroid/content/Context;

    .line 90
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/crashlytics/internal/Onboarding;->applicationLabel:Ljava/lang/String;

    .line 91
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/Onboarding;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/crashlytics/internal/Onboarding;->targetAndroidSdkVersion:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    .line 95
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v2

    const-string v3, "Failed init"

    invoke-virtual {v2, v3, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public retrieveSettingsData(Landroid/content/Context;Lcom/google/firebase/FirebaseApp;Ljava/util/concurrent/Executor;)Lcom/google/firebase/crashlytics/internal/settings/SettingsController;
    .locals 8

    .line 142
    invoke-virtual {p2}, Lcom/google/firebase/FirebaseApp;->getOptions()Lo/asGzippedBytes;

    move-result-object p2

    invoke-virtual {p2}, Lo/asGzippedBytes;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 144
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/Onboarding;->idManager:Lcom/google/firebase/crashlytics/internal/common/IdManager;

    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/Onboarding;->requestFactory:Lcom/google/firebase/crashlytics/internal/network/HttpRequestFactory;

    iget-object v4, p0, Lcom/google/firebase/crashlytics/internal/Onboarding;->versionCode:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/firebase/crashlytics/internal/Onboarding;->versionName:Ljava/lang/String;

    .line 152
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/Onboarding;->getOverridenSpiEndpoint()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/firebase/crashlytics/internal/Onboarding;->dataCollectionArbiter:Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;

    move-object v0, p1

    .line 145
    invoke-static/range {v0 .. v7}, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->create(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/common/IdManager;Lcom/google/firebase/crashlytics/internal/network/HttpRequestFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;)Lcom/google/firebase/crashlytics/internal/settings/SettingsController;

    move-result-object p1

    .line 157
    invoke-virtual {p1, p3}, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->loadSettingsData(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    new-instance v0, Lcom/google/firebase/crashlytics/internal/Onboarding$3;

    invoke-direct {v0, p0}, Lcom/google/firebase/crashlytics/internal/Onboarding$3;-><init>(Lcom/google/firebase/crashlytics/internal/Onboarding;)V

    .line 158
    invoke-virtual {p2, p3, v0}, Lcom/google/android/gms/tasks/Task;->onPostMessage(Ljava/util/concurrent/Executor;Lo/isDefaultApp;)Lcom/google/android/gms/tasks/Task;

    return-object p1
.end method
