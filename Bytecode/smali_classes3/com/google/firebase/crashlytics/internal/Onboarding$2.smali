.class Lcom/google/firebase/crashlytics/internal/Onboarding$2;
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
        "Ljava/lang/Void;",
        "Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/crashlytics/internal/Onboarding;

.field final synthetic val$settingsDataController:Lcom/google/firebase/crashlytics/internal/settings/SettingsController;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/Onboarding;Lcom/google/firebase/crashlytics/internal/settings/SettingsController;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/Onboarding$2;->this$0:Lcom/google/firebase/crashlytics/internal/Onboarding;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/Onboarding$2;->val$settingsDataController:Lcom/google/firebase/crashlytics/internal/settings/SettingsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 107
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/Onboarding$2;->then(Ljava/lang/Void;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public then(Ljava/lang/Void;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Void;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 112
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/Onboarding$2;->val$settingsDataController:Lcom/google/firebase/crashlytics/internal/settings/SettingsController;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->getAppSettings()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
