.class public Lcom/google/firebase/crashlytics/internal/settings/SettingsController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;


# static fields
.field private static final PREFS_BUILD_INSTANCE_IDENTIFIER:Ljava/lang/String; = "existing_instance_identifier"

.field private static final SETTINGS_URL_FORMAT:Ljava/lang/String; = "https://firebase-settings.crashlytics.com/spi/v2/platforms/android/gmp/%s/settings"


# instance fields
.field private final appSettingsData:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lo/removeBackgroundStateChangeListener<",
            "Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;",
            ">;>;"
        }
    .end annotation
.end field

.field private final cachedSettingsIo:Lcom/google/firebase/crashlytics/internal/settings/CachedSettingsIo;

.field private final context:Landroid/content/Context;

.field private final currentTimeProvider:Lcom/google/firebase/crashlytics/internal/common/CurrentTimeProvider;

.field private final dataCollectionArbiter:Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;

.field private final settings:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/firebase/crashlytics/internal/settings/model/Settings;",
            ">;"
        }
    .end annotation
.end field

.field private final settingsJsonParser:Lcom/google/firebase/crashlytics/internal/settings/SettingsJsonParser;

.field private final settingsRequest:Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;

.field private final settingsSpiCall:Lcom/google/firebase/crashlytics/internal/settings/network/SettingsSpiCall;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;Lcom/google/firebase/crashlytics/internal/common/CurrentTimeProvider;Lcom/google/firebase/crashlytics/internal/settings/SettingsJsonParser;Lcom/google/firebase/crashlytics/internal/settings/CachedSettingsIo;Lcom/google/firebase/crashlytics/internal/settings/network/SettingsSpiCall;Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;)V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->settings:Ljava/util/concurrent/atomic/AtomicReference;

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lo/removeBackgroundStateChangeListener;

    invoke-direct {v1}, Lo/removeBackgroundStateChangeListener;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->appSettingsData:Ljava/util/concurrent/atomic/AtomicReference;

    .line 75
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->context:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->settingsRequest:Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;

    .line 77
    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->currentTimeProvider:Lcom/google/firebase/crashlytics/internal/common/CurrentTimeProvider;

    .line 78
    iput-object p4, p0, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->settingsJsonParser:Lcom/google/firebase/crashlytics/internal/settings/SettingsJsonParser;

    .line 79
    iput-object p5, p0, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->cachedSettingsIo:Lcom/google/firebase/crashlytics/internal/settings/CachedSettingsIo;

    .line 80
    iput-object p6, p0, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->settingsSpiCall:Lcom/google/firebase/crashlytics/internal/settings/network/SettingsSpiCall;

    .line 81
    iput-object p7, p0, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->dataCollectionArbiter:Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;

    .line 83
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->settings:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p3}, Lcom/google/firebase/crashlytics/internal/settings/DefaultSettingsJsonTransform;->defaultSettings(Lcom/google/firebase/crashlytics/internal/common/CurrentTimeProvider;)Lcom/google/firebase/crashlytics/internal/settings/model/Settings;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/crashlytics/internal/settings/SettingsController;)Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->settingsRequest:Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/firebase/crashlytics/internal/settings/SettingsController;)Lcom/google/firebase/crashlytics/internal/settings/network/SettingsSpiCall;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->settingsSpiCall:Lcom/google/firebase/crashlytics/internal/settings/network/SettingsSpiCall;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/firebase/crashlytics/internal/settings/SettingsController;)Lcom/google/firebase/crashlytics/internal/settings/SettingsJsonParser;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->settingsJsonParser:Lcom/google/firebase/crashlytics/internal/settings/SettingsJsonParser;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/firebase/crashlytics/internal/settings/SettingsController;)Lcom/google/firebase/crashlytics/internal/settings/CachedSettingsIo;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->cachedSettingsIo:Lcom/google/firebase/crashlytics/internal/settings/CachedSettingsIo;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/firebase/crashlytics/internal/settings/SettingsController;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->logSettings(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firebase/crashlytics/internal/settings/SettingsController;Ljava/lang/String;)Z
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->setStoredBuildInstanceIdentifier(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/google/firebase/crashlytics/internal/settings/SettingsController;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->settings:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic access$700(Lcom/google/firebase/crashlytics/internal/settings/SettingsController;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->appSettingsData:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/common/IdManager;Lcom/google/firebase/crashlytics/internal/network/HttpRequestFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;)Lcom/google/firebase/crashlytics/internal/settings/SettingsController;
    .locals 16

    .line 96
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/crashlytics/internal/common/IdManager;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v0

    .line 97
    new-instance v10, Lcom/google/firebase/crashlytics/internal/common/SystemCurrentTimeProvider;

    invoke-direct {v10}, Lcom/google/firebase/crashlytics/internal/common/SystemCurrentTimeProvider;-><init>()V

    .line 98
    new-instance v11, Lcom/google/firebase/crashlytics/internal/settings/SettingsJsonParser;

    invoke-direct {v11, v10}, Lcom/google/firebase/crashlytics/internal/settings/SettingsJsonParser;-><init>(Lcom/google/firebase/crashlytics/internal/common/CurrentTimeProvider;)V

    .line 99
    new-instance v12, Lcom/google/firebase/crashlytics/internal/settings/CachedSettingsIo;

    move-object/from16 v13, p0

    invoke-direct {v12, v13}, Lcom/google/firebase/crashlytics/internal/settings/CachedSettingsIo;-><init>(Landroid/content/Context;)V

    .line 100
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string v5, "https://firebase-settings.crashlytics.com/spi/v2/platforms/android/gmp/%s/settings"

    invoke-static {v1, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 101
    new-instance v14, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;

    move-object/from16 v3, p3

    move-object/from16 v5, p6

    invoke-direct {v14, v5, v1, v3}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/network/HttpRequestFactory;)V

    .line 104
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/crashlytics/internal/common/IdManager;->getModelName()Ljava/lang/String;

    move-result-object v3

    .line 105
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/crashlytics/internal/common/IdManager;->getOsBuildVersionString()Ljava/lang/String;

    move-result-object v5

    .line 106
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/crashlytics/internal/common/IdManager;->getOsDisplayVersionString()Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    .line 109
    invoke-static/range {p0 .. p0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->getMappingFileId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v4

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p5, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    .line 108
    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->createInstanceIdFrom([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 110
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;->determineFrom(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;->getId()I

    move-result v9

    .line 112
    new-instance v15, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;

    move-object v0, v15

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v3, v5

    move-object v4, v6

    move-object/from16 v5, p2

    move-object v6, v7

    move-object/from16 v7, p5

    move-object/from16 v8, p4

    invoke-direct/range {v0 .. v9}, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/common/InstallIdProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 124
    new-instance v0, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v3, v15

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    move-object v7, v14

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;-><init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;Lcom/google/firebase/crashlytics/internal/common/CurrentTimeProvider;Lcom/google/firebase/crashlytics/internal/settings/SettingsJsonParser;Lcom/google/firebase/crashlytics/internal/settings/CachedSettingsIo;Lcom/google/firebase/crashlytics/internal/settings/network/SettingsSpiCall;Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;)V

    return-object v0
.end method

.method private getCachedSettingsData(Lcom/google/firebase/crashlytics/internal/settings/SettingsCacheBehavior;)Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;
    .locals 5

    const/4 v0, 0x0

    .line 233
    :try_start_0
    sget-object v1, Lcom/google/firebase/crashlytics/internal/settings/SettingsCacheBehavior;->SKIP_CACHE_LOOKUP:Lcom/google/firebase/crashlytics/internal/settings/SettingsCacheBehavior;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 234
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->cachedSettingsIo:Lcom/google/firebase/crashlytics/internal/settings/CachedSettingsIo;

    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/internal/settings/CachedSettingsIo;->readCachedSettings()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 237
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->settingsJsonParser:Lcom/google/firebase/crashlytics/internal/settings/SettingsJsonParser;

    invoke-virtual {v2, v1}, Lcom/google/firebase/crashlytics/internal/settings/SettingsJsonParser;->parseSettingsJson(Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "Loaded cached settings: "

    .line 240
    invoke-direct {p0, v1, v3}, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->logSettings(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 242
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->currentTimeProvider:Lcom/google/firebase/crashlytics/internal/common/CurrentTimeProvider;

    invoke-interface {v1}, Lcom/google/firebase/crashlytics/internal/common/CurrentTimeProvider;->getCurrentTimeMillis()J

    move-result-wide v3

    .line 244
    sget-object v1, Lcom/google/firebase/crashlytics/internal/settings/SettingsCacheBehavior;->IGNORE_CACHE_EXPIRATION:Lcom/google/firebase/crashlytics/internal/settings/SettingsCacheBehavior;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 245
    invoke-virtual {v2, v3, v4}, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->isExpired(J)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 249
    :cond_0
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object p1

    const-string v1, "Cached settings have expired."

    invoke-virtual {p1, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 247
    :cond_1
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object p1

    const-string v0, "Returning cached settings."

    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v2

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v0, v2

    goto :goto_1

    .line 252
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object p1

    const-string v1, "Failed to parse cached settings data."

    invoke-virtual {p1, v1, v0}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 255
    :cond_3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object p1

    const-string v1, "No cached settings data found."

    invoke-virtual {p1, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 259
    :goto_1
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v1

    const-string v2, "Failed to get cached settings"

    invoke-virtual {v1, v2, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return-object v0
.end method

.method private getStoredBuildInstanceIdentifier()Ljava/lang/String;
    .locals 3

    .line 270
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "existing_instance_identifier"

    const-string v2, ""

    .line 271
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private logSettings(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 266
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    return-void
.end method

.method private setStoredBuildInstanceIdentifier(Ljava/lang/String;)Z
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 277
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "existing_instance_identifier"

    .line 278
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 279
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method buildInstanceIdentifierChanged()Z
    .locals 2

    .line 284
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->getStoredBuildInstanceIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->settingsRequest:Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;

    iget-object v1, v1, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;->instanceId:Ljava/lang/String;

    .line 286
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAppSettings()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;",
            ">;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->appSettingsData:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/removeBackgroundStateChangeListener;

    .line 1014
    iget-object v0, v0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    return-object v0
.end method

.method public getSettings()Lcom/google/firebase/crashlytics/internal/settings/model/Settings;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->settings:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/crashlytics/internal/settings/model/Settings;

    return-object v0
.end method

.method public loadSettingsData(Lcom/google/firebase/crashlytics/internal/settings/SettingsCacheBehavior;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/internal/settings/SettingsCacheBehavior;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 167
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->buildInstanceIdentifierChanged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->getCachedSettingsData(Lcom/google/firebase/crashlytics/internal/settings/SettingsCacheBehavior;)Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 170
    iget-object p2, p0, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->settings:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 171
    iget-object p2, p0, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->appSettingsData:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/removeBackgroundStateChangeListener;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->getAppSettingsData()Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;

    move-result-object p1

    .line 2010
    iget-object p2, p2, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {p2, p1}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Object;)Z

    .line 3001
    new-instance p1, Lo/getProjectId;

    invoke-direct {p1}, Lo/getProjectId;-><init>()V

    const/4 p2, 0x0

    .line 3002
    invoke-virtual {p1, p2}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    return-object p1

    .line 181
    :cond_0
    sget-object p1, Lcom/google/firebase/crashlytics/internal/settings/SettingsCacheBehavior;->IGNORE_CACHE_EXPIRATION:Lcom/google/firebase/crashlytics/internal/settings/SettingsCacheBehavior;

    .line 182
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->getCachedSettingsData(Lcom/google/firebase/crashlytics/internal/settings/SettingsCacheBehavior;)Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 184
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->settings:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 185
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->appSettingsData:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/removeBackgroundStateChangeListener;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->getAppSettingsData()Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;

    move-result-object p1

    .line 3010
    iget-object v0, v0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {v0, p1}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Object;)Z

    .line 189
    :cond_1
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->dataCollectionArbiter:Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;

    .line 190
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->waitForDataCollectionPermission()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/google/firebase/crashlytics/internal/settings/SettingsController$1;

    invoke-direct {v0, p0}, Lcom/google/firebase/crashlytics/internal/settings/SettingsController$1;-><init>(Lcom/google/firebase/crashlytics/internal/settings/SettingsController;)V

    .line 191
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/tasks/Task;->onNavigationEvent(Ljava/util/concurrent/Executor;Lo/getPersistenceKey;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public loadSettingsData(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 153
    sget-object v0, Lcom/google/firebase/crashlytics/internal/settings/SettingsCacheBehavior;->USE_CACHE:Lcom/google/firebase/crashlytics/internal/settings/SettingsCacheBehavior;

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->loadSettingsData(Lcom/google/firebase/crashlytics/internal/settings/SettingsCacheBehavior;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
