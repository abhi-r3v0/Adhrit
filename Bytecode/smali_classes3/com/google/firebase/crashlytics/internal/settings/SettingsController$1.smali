.class Lcom/google/firebase/crashlytics/internal/settings/SettingsController$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getPersistenceKey;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->loadSettingsData(Lcom/google/firebase/crashlytics/internal/settings/SettingsCacheBehavior;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/Task;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/crashlytics/internal/settings/SettingsController;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/settings/SettingsController;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/settings/SettingsController$1;->this$0:Lcom/google/firebase/crashlytics/internal/settings/SettingsController;

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

    .line 193
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/settings/SettingsController$1;->then(Ljava/lang/Void;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public then(Ljava/lang/Void;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Void;",
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

    .line 199
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/settings/SettingsController$1;->this$0:Lcom/google/firebase/crashlytics/internal/settings/SettingsController;

    .line 200
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->access$100(Lcom/google/firebase/crashlytics/internal/settings/SettingsController;)Lcom/google/firebase/crashlytics/internal/settings/network/SettingsSpiCall;

    move-result-object p1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/settings/SettingsController$1;->this$0:Lcom/google/firebase/crashlytics/internal/settings/SettingsController;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->access$000(Lcom/google/firebase/crashlytics/internal/settings/SettingsController;)Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/crashlytics/internal/settings/network/SettingsSpiCall;->invoke(Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;Z)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/settings/SettingsController$1;->this$0:Lcom/google/firebase/crashlytics/internal/settings/SettingsController;

    .line 204
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->access$200(Lcom/google/firebase/crashlytics/internal/settings/SettingsController;)Lcom/google/firebase/crashlytics/internal/settings/SettingsJsonParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/settings/SettingsJsonParser;->parseSettingsJson(Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/settings/SettingsController$1;->this$0:Lcom/google/firebase/crashlytics/internal/settings/SettingsController;

    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->access$300(Lcom/google/firebase/crashlytics/internal/settings/SettingsController;)Lcom/google/firebase/crashlytics/internal/settings/CachedSettingsIo;

    move-result-object v1

    .line 206
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->getExpiresAtMillis()J

    move-result-wide v2

    .line 205
    invoke-virtual {v1, v2, v3, p1}, Lcom/google/firebase/crashlytics/internal/settings/CachedSettingsIo;->writeCachedSettings(JLorg/json/JSONObject;)V

    .line 207
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/settings/SettingsController$1;->this$0:Lcom/google/firebase/crashlytics/internal/settings/SettingsController;

    const-string v2, "Loaded settings: "

    invoke-static {v1, p1, v2}, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->access$400(Lcom/google/firebase/crashlytics/internal/settings/SettingsController;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 209
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/settings/SettingsController$1;->this$0:Lcom/google/firebase/crashlytics/internal/settings/SettingsController;

    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->access$000(Lcom/google/firebase/crashlytics/internal/settings/SettingsController;)Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;

    move-result-object v1

    iget-object v1, v1, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;->instanceId:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->access$500(Lcom/google/firebase/crashlytics/internal/settings/SettingsController;Ljava/lang/String;)Z

    .line 212
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/settings/SettingsController$1;->this$0:Lcom/google/firebase/crashlytics/internal/settings/SettingsController;

    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->access$600(Lcom/google/firebase/crashlytics/internal/settings/SettingsController;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 217
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/settings/SettingsController$1;->this$0:Lcom/google/firebase/crashlytics/internal/settings/SettingsController;

    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->access$700(Lcom/google/firebase/crashlytics/internal/settings/SettingsController;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/removeBackgroundStateChangeListener;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->getAppSettingsData()Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;

    move-result-object v1

    .line 1010
    iget-object p1, p1, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {p1, v1}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Object;)Z

    .line 218
    new-instance p1, Lo/removeBackgroundStateChangeListener;

    invoke-direct {p1}, Lo/removeBackgroundStateChangeListener;-><init>()V

    .line 220
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->getAppSettingsData()Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;

    move-result-object v0

    .line 2010
    iget-object v1, p1, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {v1, v0}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Object;)Z

    .line 221
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/settings/SettingsController$1;->this$0:Lcom/google/firebase/crashlytics/internal/settings/SettingsController;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->access$700(Lcom/google/firebase/crashlytics/internal/settings/SettingsController;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 3001
    :cond_0
    new-instance p1, Lo/getProjectId;

    invoke-direct {p1}, Lo/getProjectId;-><init>()V

    const/4 v0, 0x0

    .line 3002
    invoke-virtual {p1, v0}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    return-object p1
.end method
