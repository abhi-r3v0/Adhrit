.class Lcom/google/firebase/crashlytics/FirebaseCrashlytics$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->init(Lcom/google/firebase/FirebaseApp;Lo/CrashlyticsReportJsonTransform$$Lambda$4;Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;Lo/convertLongToFourByteBuffer;)Lcom/google/firebase/crashlytics/FirebaseCrashlytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$core:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;

.field final synthetic val$finishCoreInBackground:Z

.field final synthetic val$onboarding:Lcom/google/firebase/crashlytics/internal/Onboarding;

.field final synthetic val$settingsController:Lcom/google/firebase/crashlytics/internal/settings/SettingsController;

.field final synthetic val$threadPoolExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/Onboarding;Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/crashlytics/internal/settings/SettingsController;ZLcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics$1;->val$onboarding:Lcom/google/firebase/crashlytics/internal/Onboarding;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics$1;->val$threadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    iput-object p3, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics$1;->val$settingsController:Lcom/google/firebase/crashlytics/internal/settings/SettingsController;

    iput-boolean p4, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics$1;->val$finishCoreInBackground:Z

    iput-object p5, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics$1;->val$core:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 169
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics$1;->val$onboarding:Lcom/google/firebase/crashlytics/internal/Onboarding;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics$1;->val$threadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics$1;->val$settingsController:Lcom/google/firebase/crashlytics/internal/settings/SettingsController;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/crashlytics/internal/Onboarding;->doOnboarding(Ljava/util/concurrent/Executor;Lcom/google/firebase/crashlytics/internal/settings/SettingsController;)V

    .line 173
    iget-boolean v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics$1;->val$finishCoreInBackground:Z

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics$1;->val$core:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics$1;->val$settingsController:Lcom/google/firebase/crashlytics/internal/settings/SettingsController;

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->doBackgroundInitializationAsync(Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;)Lcom/google/android/gms/tasks/Task;

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
