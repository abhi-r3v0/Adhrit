.class Lcom/google/firebase/crashlytics/internal/settings/SettingsV3JsonTransform;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/settings/SettingsJsonTransform;


# static fields
.field private static final CRASHLYTICS_APP_URL:Ljava/lang/String; = "https://update.crashlytics.com/spi/v1/platforms/android/apps"

.field private static final CRASHLYTICS_APP_URL_FORMAT:Ljava/lang/String; = "https://update.crashlytics.com/spi/v1/platforms/android/apps/%s"

.field private static final NDK_REPORTS_URL_FORMAT:Ljava/lang/String; = "https://reports.crashlytics.com/sdk-api/v1/platforms/android/apps/%s/minidumps"

.field private static final REPORTS_URL_FORMAT:Ljava/lang/String; = "https://reports.crashlytics.com/spi/v1/platforms/android/apps/%s/reports"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildAppDataFrom(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "status"

    .line 75
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "new"

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "bundle_id"

    .line 78
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "org_id"

    .line 80
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 p0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "https://update.crashlytics.com/spi/v1/platforms/android/apps"

    goto :goto_0

    .line 85
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, p0, [Ljava/lang/Object;

    aput-object v6, v3, v1

    const-string v4, "https://update.crashlytics.com/spi/v1/platforms/android/apps/%s"

    invoke-static {v0, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v3, v0

    .line 86
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, p0, [Ljava/lang/Object;

    aput-object v6, v4, v1

    const-string v5, "https://reports.crashlytics.com/spi/v1/platforms/android/apps/%s/reports"

    invoke-static {v0, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 87
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array p0, p0, [Ljava/lang/Object;

    aput-object v6, p0, v1

    const-string v5, "https://reports.crashlytics.com/sdk-api/v1/platforms/android/apps/%s/minidumps"

    invoke-static {v0, v5, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string p0, "update_required"

    .line 90
    invoke-virtual {p1, p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    const-string p0, "report_upload_variant"

    .line 95
    invoke-virtual {p1, p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    const-string p0, "native_report_upload_variant"

    .line 100
    invoke-virtual {p1, p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    .line 104
    new-instance p0, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    return-object p0
.end method

.method private static buildFeaturesSessionDataFrom(Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;
    .locals 2

    const-string v0, "collect_reports"

    const/4 v1, 0x1

    .line 118
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 124
    new-instance v0, Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;

    invoke-direct {v0, p0}, Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;-><init>(Z)V

    return-object v0
.end method

.method private static defaultSessionData()Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;
    .locals 3

    .line 133
    new-instance v0, Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;

    const/16 v1, 0x8

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;-><init>(II)V

    return-object v0
.end method

.method private static getExpiresAtFrom(Lcom/google/firebase/crashlytics/internal/common/CurrentTimeProvider;JLorg/json/JSONObject;)J
    .locals 4

    const-string v0, "expires_at"

    .line 167
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p0

    goto :goto_0

    .line 173
    :cond_0
    invoke-interface {p0}, Lcom/google/firebase/crashlytics/internal/common/CurrentTimeProvider;->getCurrentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long p1, p1, v2

    add-long p0, v0, p1

    :goto_0
    return-wide p0
.end method

.method private toAppJson(Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 146
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->status:Ljava/lang/String;

    const-string v2, "status"

    .line 148
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-boolean v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->updateRequired:Z

    const-string v2, "update_required"

    .line 149
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    iget v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->reportUploadVariant:I

    const-string v2, "report_upload_variant"

    .line 150
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    iget p1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->nativeReportUploadVariant:I

    const-string v1, "native_report_upload_variant"

    .line 151
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method private toFabricJson(Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 137
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->bundleId:Ljava/lang/String;

    const-string v2, "bundle_id"

    .line 139
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object p1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->organizationId:Ljava/lang/String;

    const-string v1, "org_id"

    .line 140
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method private toFeaturesJson(Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 159
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-boolean p1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;->collectReports:Z

    const-string v1, "collect_reports"

    .line 160
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public buildFromJson(Lcom/google/firebase/crashlytics/internal/common/CurrentTimeProvider;Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "settings_version"

    const/4 v1, 0x0

    .line 41
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    const-string v0, "cache_duration"

    const/16 v1, 0xe10

    .line 44
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    const-string v0, "fabric"

    .line 50
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "app"

    .line 51
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 49
    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/internal/settings/SettingsV3JsonTransform;->buildAppDataFrom(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;

    move-result-object v5

    .line 52
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/settings/SettingsV3JsonTransform;->defaultSessionData()Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;

    move-result-object v6

    const-string v0, "features"

    .line 54
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/settings/SettingsV3JsonTransform;->buildFeaturesSessionDataFrom(Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;

    move-result-object v7

    int-to-long v0, v9

    .line 56
    invoke-static {p1, v0, v1, p2}, Lcom/google/firebase/crashlytics/internal/settings/SettingsV3JsonTransform;->getExpiresAtFrom(Lcom/google/firebase/crashlytics/internal/common/CurrentTimeProvider;JLorg/json/JSONObject;)J

    move-result-wide v3

    .line 58
    new-instance p1, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;-><init>(JLcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;II)V

    return-object p1
.end method

.method public toJson(Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 64
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-wide v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->expiresAtMillis:J

    const-string v3, "expires_at"

    .line 65
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    iget v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->cacheDuration:I

    const-string v2, "cache_duration"

    .line 66
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    iget v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->settingsVersion:I

    const-string v2, "settings_version"

    .line 67
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->featuresData:Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;

    .line 68
    invoke-direct {p0, v1}, Lcom/google/firebase/crashlytics/internal/settings/SettingsV3JsonTransform;->toFeaturesJson(Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "features"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->appData:Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;

    .line 69
    invoke-direct {p0, v1}, Lcom/google/firebase/crashlytics/internal/settings/SettingsV3JsonTransform;->toAppJson(Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "app"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object p1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->appData:Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;

    .line 70
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/settings/SettingsV3JsonTransform;->toFabricJson(Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "fabric"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
