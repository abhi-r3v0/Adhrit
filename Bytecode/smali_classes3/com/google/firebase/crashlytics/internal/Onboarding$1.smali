.class Lcom/google/firebase/crashlytics/internal/Onboarding$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getPersistenceKey;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/Onboarding;->doOnboarding(Ljava/util/concurrent/Executor;Lcom/google/firebase/crashlytics/internal/settings/SettingsController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getPersistenceKey<",
        "Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/crashlytics/internal/Onboarding;

.field final synthetic val$backgroundExecutor:Ljava/util/concurrent/Executor;

.field final synthetic val$googleAppId:Ljava/lang/String;

.field final synthetic val$settingsDataController:Lcom/google/firebase/crashlytics/internal/settings/SettingsController;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/Onboarding;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/settings/SettingsController;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/Onboarding$1;->this$0:Lcom/google/firebase/crashlytics/internal/Onboarding;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/Onboarding$1;->val$googleAppId:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/Onboarding$1;->val$settingsDataController:Lcom/google/firebase/crashlytics/internal/settings/SettingsController;

    iput-object p4, p0, Lcom/google/firebase/crashlytics/internal/Onboarding$1;->val$backgroundExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;)Lcom/google/android/gms/tasks/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/Onboarding$1;->this$0:Lcom/google/firebase/crashlytics/internal/Onboarding;

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/Onboarding$1;->val$googleAppId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/Onboarding$1;->val$settingsDataController:Lcom/google/firebase/crashlytics/internal/settings/SettingsController;

    iget-object v4, p0, Lcom/google/firebase/crashlytics/internal/Onboarding$1;->val$backgroundExecutor:Ljava/util/concurrent/Executor;

    const/4 v5, 0x1

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/google/firebase/crashlytics/internal/Onboarding;->access$000(Lcom/google/firebase/crashlytics/internal/Onboarding;Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/settings/SettingsController;Ljava/util/concurrent/Executor;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 131
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v0

    const-string v1, "Error performing auto configuration."

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    throw p1
.end method

.method public bridge synthetic then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 117
    check-cast p1, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;

    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/Onboarding$1;->then(Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
