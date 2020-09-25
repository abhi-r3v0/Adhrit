.class final Lo/CrashlyticsController$13;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isDefaultApp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/isDefaultApp<",
        "Lo/isLoggingEnabled;",
        "Lcom/google/android/gms/tasks/Task<",
        "Lo/isLoggingEnabled;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lo/CrashlyticsController$17;


# direct methods
.method constructor <init>(Lo/CrashlyticsController$17;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/CrashlyticsController$13;->zza:Lo/CrashlyticsController$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lo/CrashlyticsController$13;->zza:Lo/CrashlyticsController$17;

    invoke-static {v0}, Lo/CrashlyticsController$17;->zza(Lo/CrashlyticsController$17;)Lo/CrashlyticsController$4;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->extraCallback()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/isLoggingEnabled;

    .line 7
    new-instance v0, Lo/access$2100;

    .line 8
    invoke-interface {p1}, Lo/isLoggingEnabled;->getUser()Lo/isRooted;

    move-result-object v1

    check-cast v1, Lo/CrashlyticsController$$Lambda$1;

    .line 9
    invoke-interface {p1}, Lo/isLoggingEnabled;->getAdditionalUserInfo()Lo/logControlled;

    move-result-object p1

    check-cast p1, Lo/access$1800;

    iget-object v2, p0, Lo/CrashlyticsController$13;->zza:Lo/CrashlyticsController$17;

    .line 10
    invoke-static {v2}, Lo/CrashlyticsController$17;->zza(Lo/CrashlyticsController$17;)Lo/CrashlyticsController$4;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lo/access$2100;-><init>(Lo/CrashlyticsController$$Lambda$1;Lo/access$1800;Lo/CrashlyticsController$4;)V

    .line 1001
    new-instance p1, Lo/getProjectId;

    invoke-direct {p1}, Lo/getProjectId;-><init>()V

    .line 1002
    invoke-virtual {p1, v0}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    return-object p1

    .line 12
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->onNavigationEvent()Ljava/lang/Exception;

    move-result-object p1

    .line 13
    instance-of v0, p1, Lcom/google/firebase/auth/FirebaseAuthUserCollisionException;

    if-eqz v0, :cond_2

    .line 14
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/auth/FirebaseAuthUserCollisionException;

    iget-object v1, p0, Lo/CrashlyticsController$13;->zza:Lo/CrashlyticsController$17;

    .line 15
    invoke-static {v1}, Lo/CrashlyticsController$17;->zza(Lo/CrashlyticsController$17;)Lo/CrashlyticsController$4;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/auth/FirebaseAuthUserCollisionException;->zza(Lo/calculateUsedDiskSpaceInBytes;)Lcom/google/firebase/auth/FirebaseAuthUserCollisionException;

    .line 1004
    :cond_2
    new-instance v0, Lo/getProjectId;

    invoke-direct {v0}, Lo/getProjectId;-><init>()V

    .line 1005
    invoke-virtual {v0, p1}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-object v0
.end method
