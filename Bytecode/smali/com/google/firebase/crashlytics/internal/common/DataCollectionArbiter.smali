.class public Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final FIREBASE_CRASHLYTICS_COLLECTION_ENABLED:Ljava/lang/String; = "firebase_crashlytics_collection_enabled"


# instance fields
.field private crashlyticsDataCollectionEnabled:Ljava/lang/Boolean;

.field dataCollectionEnabledTask:Lo/removeBackgroundStateChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/removeBackgroundStateChangeListener<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private dataCollectionExplicitlyApproved:Lo/removeBackgroundStateChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/removeBackgroundStateChangeListener<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final firebaseApp:Lcom/google/firebase/FirebaseApp;

.field private setInManifest:Z

.field private final sharedPreferences:Landroid/content/SharedPreferences;

.field private final taskLock:Ljava/lang/Object;

.field taskResolved:Z


# direct methods
.method public constructor <init>(Lcom/google/firebase/FirebaseApp;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->taskLock:Ljava/lang/Object;

    .line 38
    new-instance v0, Lo/removeBackgroundStateChangeListener;

    invoke-direct {v0}, Lo/removeBackgroundStateChangeListener;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->dataCollectionEnabledTask:Lo/removeBackgroundStateChangeListener;

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->taskResolved:Z

    .line 41
    iput-boolean v0, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->setInManifest:Z

    .line 49
    new-instance v0, Lo/removeBackgroundStateChangeListener;

    invoke-direct {v0}, Lo/removeBackgroundStateChangeListener;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->dataCollectionExplicitlyApproved:Lo/removeBackgroundStateChangeListener;

    .line 53
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 55
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 56
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 58
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->getDataCollectionValueFromSharedPreferences()Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_0

    .line 60
    invoke-direct {p0, v0}, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->getDataCollectionValueFromManifest(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    .line 63
    :cond_0
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->crashlyticsDataCollectionEnabled:Ljava/lang/Boolean;

    .line 65
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->taskLock:Ljava/lang/Object;

    monitor-enter p1

    .line 66
    :try_start_0
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->isAutomaticDataCollectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->dataCollectionEnabledTask:Lo/removeBackgroundStateChangeListener;

    .line 1010
    iget-object v0, v0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->taskResolved:Z

    .line 70
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method private getDataCollectionValueFromManifest(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 1

    .line 158
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->readCrashlyticsDataCollectionEnabledFromManifest(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 160
    iput-boolean p1, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->setInManifest:Z

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x1

    .line 163
    iput-boolean v0, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->setInManifest:Z

    .line 164
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private getDataCollectionValueFromSharedPreferences()Ljava/lang/Boolean;
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "firebase_crashlytics_collection_enabled"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->setInManifest:Z

    .line 150
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private logDataCollectionState(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const-string p1, "ENABLED"

    goto :goto_0

    :cond_0
    const-string p1, "DISABLED"

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->crashlyticsDataCollectionEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    const-string v0, "global Firebase setting"

    goto :goto_1

    .line 139
    :cond_1
    iget-boolean v0, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->setInManifest:Z

    if-eqz v0, :cond_2

    const-string v0, "firebase_crashlytics_collection_enabled manifest flag"

    goto :goto_1

    :cond_2
    const-string v0, "API"

    .line 140
    :goto_1
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    const-string p1, "Crashlytics automatic data collection %s by %s."

    .line 142
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 141
    invoke-virtual {v1, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    return-void
.end method

.method private static readCrashlyticsDataCollectionEnabledFromManifest(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 2

    .line 171
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    .line 174
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 176
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "firebase_crashlytics_collection_enabled"

    .line 178
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object p0, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 185
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v0

    const-string v1, "Unable to get PackageManager. Falling through"

    invoke-virtual {v0, v1, p0}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static storeDataCollectionValueInSharedPreferences(Landroid/content/SharedPreferences;Ljava/lang/Boolean;)V
    .locals 1

    .line 193
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "firebase_crashlytics_collection_enabled"

    if-eqz p1, :cond_0

    .line 195
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 197
    :cond_0
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 199
    :goto_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public grantDataCollectionPermission(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 131
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->dataCollectionExplicitlyApproved:Lo/removeBackgroundStateChangeListener;

    .line 4010
    iget-object p1, p1, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Object;)Z

    return-void

    .line 129
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "An invalid data collection token was used."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized isAutomaticDataCollectionEnabled()Z
    .locals 1

    monitor-enter p0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->crashlyticsDataCollectionEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->crashlyticsDataCollectionEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->isDataCollectionDefaultEnabled()Z

    move-result v0

    .line 78
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->logDataCollectionState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCrashlyticsDataCollectionEnabled(Ljava/lang/Boolean;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    .line 86
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->getDataCollectionValueFromManifest(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->crashlyticsDataCollectionEnabled:Ljava/lang/Boolean;

    .line 87
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->storeDataCollectionValueInSharedPreferences(Landroid/content/SharedPreferences;Ljava/lang/Boolean;)V

    .line 89
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->taskLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 90
    :try_start_1
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->isAutomaticDataCollectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iget-boolean v0, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->taskResolved:Z

    if-nez v0, :cond_2

    .line 92
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->dataCollectionEnabledTask:Lo/removeBackgroundStateChangeListener;

    .line 2010
    iget-object v0, v0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->taskResolved:Z

    goto :goto_1

    .line 96
    :cond_1
    iget-boolean v0, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->taskResolved:Z

    if-eqz v0, :cond_2

    .line 97
    new-instance v0, Lo/removeBackgroundStateChangeListener;

    invoke-direct {v0}, Lo/removeBackgroundStateChangeListener;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->dataCollectionEnabledTask:Lo/removeBackgroundStateChangeListener;

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->taskResolved:Z

    .line 101
    :cond_2
    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p1

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public waitForAutomaticDataCollectionEnabled()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->taskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->dataCollectionEnabledTask:Lo/removeBackgroundStateChangeListener;

    .line 2014
    iget-object v1, v1, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    .line 106
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    .line 107
    monitor-exit v0

    throw v1
.end method

.method public waitForDataCollectionPermission()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->dataCollectionExplicitlyApproved:Lo/removeBackgroundStateChangeListener;

    .line 3014
    iget-object v0, v0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    .line 116
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->waitForAutomaticDataCollectionEnabled()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    .line 115
    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/Utils;->race(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
