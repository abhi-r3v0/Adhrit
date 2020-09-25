.class public final Lo/endAt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isDefaultApp;


# instance fields
.field private final arg$1:Lo/CrashlyticsReportPersistence$$Lambda$4;

.field private final arg$2:Lcom/google/android/gms/tasks/Task;

.field private final arg$3:Lcom/google/android/gms/tasks/Task;


# direct methods
.method private constructor <init>(Lo/CrashlyticsReportPersistence$$Lambda$4;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/endAt;->arg$1:Lo/CrashlyticsReportPersistence$$Lambda$4;

    iput-object p2, p0, Lo/endAt;->arg$2:Lcom/google/android/gms/tasks/Task;

    iput-object p3, p0, Lo/endAt;->arg$3:Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public static lambdaFactory$(Lo/CrashlyticsReportPersistence$$Lambda$4;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)Lo/isDefaultApp;
    .locals 1

    .line 3000
    new-instance v0, Lo/endAt;

    invoke-direct {v0, p0, p1, p2}, Lo/endAt;-><init>(Lo/CrashlyticsReportPersistence$$Lambda$4;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)V

    return-object v0
.end method

.method public static onPostMessage(Lo/fromCode;)Ljava/lang/String;
    .locals 2

    .line 46
    invoke-virtual {p0}, Lo/fromCode;->onNavigationEvent()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-virtual {p0}, Lo/fromCode;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 3

    .line 2000
    iget-object v0, p0, Lo/endAt;->arg$1:Lo/CrashlyticsReportPersistence$$Lambda$4;

    iget-object v1, p0, Lo/endAt;->arg$2:Lcom/google/android/gms/tasks/Task;

    iget-object v2, p0, Lo/endAt;->arg$3:Lcom/google/android/gms/tasks/Task;

    invoke-static {v0, v1, v2, p1}, Lo/CrashlyticsReportPersistence$$Lambda$4;->lambda$activate$3(Lo/CrashlyticsReportPersistence$$Lambda$4;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
