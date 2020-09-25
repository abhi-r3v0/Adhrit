.class Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->finishInitSynchronously(Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;

.field final synthetic val$settingsDataProvider:Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore$2;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore$2;->val$settingsDataProvider:Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore$2;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore$2;->val$settingsDataProvider:Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;

    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->access$000(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
