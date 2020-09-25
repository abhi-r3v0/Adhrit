.class public Lo/generateBinaryImagesJsonString;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DATA_COLLECTION_DEFAULT_ENABLED:Ljava/lang/String; = "firebase_data_collection_default_enabled"

.field private static final FIREBASE_APP_PREFS:Ljava/lang/String; = "com.google.firebase.common.prefs:"


# instance fields
.field private dataCollectionDefaultEnabled:Z

.field private final deviceProtectedContext:Landroid/content/Context;

.field private final publisher:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationOrganizationEncoder;

.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationOrganizationEncoder;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Lo/generateBinaryImagesJsonString;->directBootSafe(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lo/generateBinaryImagesJsonString;->deviceProtectedContext:Landroid/content/Context;

    .line 44
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.google.firebase.common.prefs:"

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lo/generateBinaryImagesJsonString;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 47
    iput-object p3, p0, Lo/generateBinaryImagesJsonString;->publisher:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationOrganizationEncoder;

    .line 48
    invoke-direct {p0}, Lo/generateBinaryImagesJsonString;->readAutoDataCollectionEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lo/generateBinaryImagesJsonString;->dataCollectionDefaultEnabled:Z

    return-void
.end method

.method private static directBootSafe(Landroid/content/Context;)Landroid/content/Context;
    .locals 2

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    return-object p0

    .line 55
    :cond_0
    invoke-static {p0}, Lo/fromParcel;->onNavigationEvent(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private readAutoDataCollectionEnabled()Z
    .locals 3

    .line 102
    iget-object v0, p0, Lo/generateBinaryImagesJsonString;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "firebase_data_collection_default_enabled"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lo/generateBinaryImagesJsonString;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 105
    :cond_0
    invoke-direct {p0}, Lo/generateBinaryImagesJsonString;->readManifestDataCollectionEnabled()Z

    move-result v0

    return v0
.end method

.method private readManifestDataCollectionEnabled()Z
    .locals 4

    const-string v0, "firebase_data_collection_default_enabled"

    .line 84
    :try_start_0
    iget-object v1, p0, Lo/generateBinaryImagesJsonString;->deviceProtectedContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 86
    iget-object v2, p0, Lo/generateBinaryImagesJsonString;->deviceProtectedContext:Landroid/content/Context;

    .line 88
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    .line 87
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v2, v1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 91
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private declared-synchronized updateDataCollectionDefaultEnabled(Z)V
    .locals 4

    monitor-enter p0

    .line 63
    :try_start_0
    iget-boolean v0, p0, Lo/generateBinaryImagesJsonString;->dataCollectionDefaultEnabled:Z

    if-eq v0, p1, :cond_0

    .line 64
    iput-boolean p1, p0, Lo/generateBinaryImagesJsonString;->dataCollectionDefaultEnabled:Z

    .line 65
    iget-object v0, p0, Lo/generateBinaryImagesJsonString;->publisher:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationOrganizationEncoder;

    new-instance v1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadEncoder;

    const-class v2, Lo/isPowerConnected;

    new-instance v3, Lo/isPowerConnected;

    invoke-direct {v3, p1}, Lo/isPowerConnected;-><init>(Z)V

    invoke-direct {v1, v2, v3}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadEncoder;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationOrganizationEncoder;->publish(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadEncoder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized isEnabled()Z
    .locals 1

    monitor-enter p0

    .line 59
    :try_start_0
    iget-boolean v0, p0, Lo/generateBinaryImagesJsonString;->dataCollectionDefaultEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setEnabled(Ljava/lang/Boolean;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    .line 72
    :try_start_0
    iget-object p1, p0, Lo/generateBinaryImagesJsonString;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "firebase_data_collection_default_enabled"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 73
    invoke-direct {p0}, Lo/generateBinaryImagesJsonString;->readManifestDataCollectionEnabled()Z

    move-result p1

    invoke-direct {p0, p1}, Lo/generateBinaryImagesJsonString;->updateDataCollectionDefaultEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 76
    :cond_0
    :try_start_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 77
    iget-object v0, p0, Lo/generateBinaryImagesJsonString;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "firebase_data_collection_default_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 78
    invoke-direct {p0, p1}, Lo/generateBinaryImagesJsonString;->updateDataCollectionDefaultEnabled(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
