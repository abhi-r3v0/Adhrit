.class public final Lo/CommonUtils$Architecture;
.super Lo/resolveUnityEditorVersion;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/resolveUnityEditorVersion<",
        "Lo/writeSessionPartFile;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lo/writeSessionPartFile;

.field private final zzc:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lo/getAppIconResourceId<",
            "Lo/writeSessionPartFile;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lo/writeSessionPartFile;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/resolveUnityEditorVersion;-><init>()V

    .line 2
    iput-object p1, p0, Lo/CommonUtils$Architecture;->zza:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lo/CommonUtils$Architecture;->zzb:Lo/writeSessionPartFile;

    .line 4
    invoke-virtual {p0}, Lo/resolveUnityEditorVersion;->zza()Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lo/CommonUtils$Architecture;->zzc:Ljava/util/concurrent/Future;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/tasks/Task;Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Task<",
            "TResultT;>;",
            "Lo/openKeyboard<",
            "Lo/finalizePreviousNativeSession;",
            "TResultT;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TResultT;>;"
        }
    .end annotation

    .line 343
    new-instance v0, Lo/submit;

    invoke-direct {v0, p0, p2}, Lo/submit;-><init>(Lo/CommonUtils$Architecture;Lo/openKeyboard;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->ICustomTabsCallback(Lo/isDefaultApp;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method static zza(Lcom/google/firebase/FirebaseApp;Lo/getColumnName;)Lo/CrashlyticsController$$Lambda$1;
    .locals 6

    const-string v0, "null reference"

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    .line 325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 326
    new-instance v1, Lo/access$2400;

    const-string v2, "firebase"

    invoke-direct {v1, p1, v2}, Lo/access$2400;-><init>(Lo/getColumnName;Ljava/lang/String;)V

    .line 327
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    invoke-virtual {p1}, Lo/getColumnName;->ICustomTabsCallback$Stub()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 329
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 330
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 331
    new-instance v3, Lo/access$2400;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/Conversation;

    invoke-direct {v3, v4}, Lo/access$2400;-><init>(Lo/Conversation;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 333
    :cond_0
    new-instance v1, Lo/CrashlyticsController$$Lambda$1;

    invoke-direct {v1, p0, v0}, Lo/CrashlyticsController$$Lambda$1;-><init>(Lcom/google/firebase/FirebaseApp;Ljava/util/List;)V

    .line 334
    new-instance p0, Lo/CrashlyticsController$11;

    .line 335
    invoke-virtual {p1}, Lo/getColumnName;->asBinder()J

    move-result-wide v2

    invoke-virtual {p1}, Lo/getColumnName;->onTransact()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lo/CrashlyticsController$11;-><init>(JJ)V

    .line 336
    invoke-virtual {v1, p0}, Lo/CrashlyticsController$$Lambda$1;->zza(Lo/CrashlyticsController$11;)V

    .line 337
    invoke-virtual {p1}, Lo/getColumnName;->onRelationshipValidationResult()Z

    move-result p0

    invoke-virtual {v1, p0}, Lo/CrashlyticsController$$Lambda$1;->zza(Z)V

    .line 338
    invoke-virtual {p1}, Lo/getColumnName;->newSession()Lo/CrashlyticsController$4;

    move-result-object p0

    invoke-virtual {v1, p0}, Lo/CrashlyticsController$$Lambda$1;->zza(Lo/CrashlyticsController$4;)V

    .line 340
    invoke-virtual {p1}, Lo/getColumnName;->ICustomTabsService()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lo/extraCallback;->zza(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 341
    invoke-virtual {v1, p0}, Lo/isRooted;->zzb(Ljava/util/List;)V

    return-object v1

    .line 13002
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12002
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 158
    new-instance v0, Lo/newContinuation;

    invoke-direct {v0, p2, p3}, Lo/newContinuation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0, p1}, Lo/writeSessionOS;->zza(Lcom/google/firebase/FirebaseApp;)Lo/writeSessionOS;

    move-result-object p1

    check-cast p1, Lo/newContinuation;

    .line 161
    invoke-virtual {p0, p1}, Lo/resolveUnityEditorVersion;->zza(Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 162
    invoke-direct {p0, p2, p1}, Lo/CommonUtils$Architecture;->zza(Lcom/google/android/gms/tasks/Task;Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 191
    new-instance v0, Lo/CrashlyticsBackgroundWorker;

    invoke-direct {v0, p2, p3, p4}, Lo/CrashlyticsBackgroundWorker;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0, p1}, Lo/writeSessionOS;->zza(Lcom/google/firebase/FirebaseApp;)Lo/writeSessionOS;

    move-result-object p1

    check-cast p1, Lo/CrashlyticsBackgroundWorker;

    .line 194
    invoke-virtual {p0, p1}, Lo/resolveUnityEditorVersion;->zzb(Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 195
    invoke-direct {p0, p2, p1}, Lo/CommonUtils$Architecture;->zza(Lcom/google/android/gms/tasks/Task;Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/access$1100;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lo/access$1100;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/isLoggingEnabled;",
            ">;"
        }
    .end annotation

    .line 86
    new-instance v0, Lo/getExecutor;

    invoke-direct {v0, p2, p3, p4}, Lo/getExecutor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0, p1}, Lo/writeSessionOS;->zza(Lcom/google/firebase/FirebaseApp;)Lo/writeSessionOS;

    move-result-object p1

    .line 88
    invoke-virtual {p1, p5}, Lo/writeSessionOS;->zza(Ljava/lang/Object;)Lo/writeSessionOS;

    move-result-object p1

    check-cast p1, Lo/getExecutor;

    .line 90
    invoke-virtual {p0, p1}, Lo/resolveUnityEditorVersion;->zzb(Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 91
    invoke-direct {p0, p2, p1}, Lo/CommonUtils$Architecture;->zza(Lcom/google/android/gms/tasks/Task;Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;Lo/access$1100;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lo/access$1100;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/isLoggingEnabled;",
            ">;"
        }
    .end annotation

    .line 21
    new-instance v0, Lo/closeOpenSessions;

    invoke-direct {v0, p2, p3}, Lo/closeOpenSessions;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, p1}, Lo/writeSessionOS;->zza(Lcom/google/firebase/FirebaseApp;)Lo/writeSessionOS;

    move-result-object p1

    .line 23
    invoke-virtual {p1, p4}, Lo/writeSessionOS;->zza(Ljava/lang/Object;)Lo/writeSessionOS;

    move-result-object p1

    check-cast p1, Lo/closeOpenSessions;

    .line 25
    invoke-virtual {p0, p1}, Lo/resolveUnityEditorVersion;->zzb(Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 26
    invoke-direct {p0, p2, p1}, Lo/CommonUtils$Architecture;->zza(Lcom/google/android/gms/tasks/Task;Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Lo/calculateFreeRamInBytes;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            "Lo/calculateFreeRamInBytes;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 163
    sget-object v0, Lo/getReadUpto;->extraCallback:Lo/getReadUpto;

    invoke-virtual {p3, v0}, Lo/calculateFreeRamInBytes;->zza(Lo/getReadUpto;)V

    .line 164
    new-instance v0, Lo/getPreviousSessionId;

    const-string v1, "sendPasswordResetEmail"

    invoke-direct {v0, p2, p3, p4, v1}, Lo/getPreviousSessionId;-><init>(Ljava/lang/String;Lo/calculateFreeRamInBytes;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0, p1}, Lo/writeSessionOS;->zza(Lcom/google/firebase/FirebaseApp;)Lo/writeSessionOS;

    move-result-object p1

    check-cast p1, Lo/getPreviousSessionId;

    .line 167
    invoke-virtual {p0, p1}, Lo/resolveUnityEditorVersion;->zzb(Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 168
    invoke-direct {p0, p2, p1}, Lo/CommonUtils$Architecture;->zza(Lcom/google/android/gms/tasks/Task;Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lo/access$1100;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lo/access$1100;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/isLoggingEnabled;",
            ">;"
        }
    .end annotation

    .line 49
    new-instance v0, Lo/doOpenSession;

    invoke-direct {v0, p3}, Lo/doOpenSession;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0, p1}, Lo/writeSessionOS;->zza(Lcom/google/firebase/FirebaseApp;)Lo/writeSessionOS;

    move-result-object p1

    .line 51
    invoke-virtual {p1, p2}, Lo/writeSessionOS;->zza(Ljava/lang/Object;)Lo/writeSessionOS;

    move-result-object p1

    check-cast p1, Lo/doOpenSession;

    .line 53
    invoke-virtual {p0, p1}, Lo/resolveUnityEditorVersion;->zzb(Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 54
    invoke-direct {p0, p2, p1}, Lo/CommonUtils$Architecture;->zza(Lcom/google/android/gms/tasks/Task;Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lo/calculateFreeRamInBytes;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lo/calculateFreeRamInBytes;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 175
    new-instance v0, Lo/getCurrentSessionId;

    invoke-direct {v0, p3, p2}, Lo/getCurrentSessionId;-><init>(Ljava/lang/String;Lo/calculateFreeRamInBytes;)V

    .line 176
    invoke-virtual {v0, p1}, Lo/writeSessionOS;->zza(Lcom/google/firebase/FirebaseApp;)Lo/writeSessionOS;

    move-result-object p1

    check-cast p1, Lo/getCurrentSessionId;

    .line 178
    invoke-virtual {p0, p1}, Lo/resolveUnityEditorVersion;->zzb(Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 179
    invoke-direct {p0, p2, p1}, Lo/CommonUtils$Architecture;->zza(Lcom/google/android/gms/tasks/Task;Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lo/calculateUsedDiskSpaceInBytes;Ljava/lang/String;Lo/access$1100;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lo/calculateUsedDiskSpaceInBytes;",
            "Ljava/lang/String;",
            "Lo/access$1100;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/isLoggingEnabled;",
            ">;"
        }
    .end annotation

    .line 27
    new-instance v0, Lo/finalizeSessions;

    invoke-direct {v0, p2, p3}, Lo/finalizeSessions;-><init>(Lo/calculateUsedDiskSpaceInBytes;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0, p1}, Lo/writeSessionOS;->zza(Lcom/google/firebase/FirebaseApp;)Lo/writeSessionOS;

    move-result-object p1

    .line 29
    invoke-virtual {p1, p4}, Lo/writeSessionOS;->zza(Ljava/lang/Object;)Lo/writeSessionOS;

    move-result-object p1

    check-cast p1, Lo/finalizeSessions;

    .line 31
    invoke-virtual {p0, p1}, Lo/resolveUnityEditorVersion;->zzb(Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 32
    invoke-direct {p0, p2, p1}, Lo/CommonUtils$Architecture;->zza(Lcom/google/android/gms/tasks/Task;Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lo/flushOrLog;Ljava/lang/String;Lo/access$1100;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lo/flushOrLog;",
            "Ljava/lang/String;",
            "Lo/access$1100;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/isLoggingEnabled;",
            ">;"
        }
    .end annotation

    .line 136
    new-instance v0, Lo/closeWithoutRenamingOrLog;

    invoke-direct {v0, p2, p3}, Lo/closeWithoutRenamingOrLog;-><init>(Lo/flushOrLog;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0, p1}, Lo/writeSessionOS;->zza(Lcom/google/firebase/FirebaseApp;)Lo/writeSessionOS;

    move-result-object p1

    .line 138
    invoke-virtual {p1, p4}, Lo/writeSessionOS;->zza(Ljava/lang/Object;)Lo/writeSessionOS;

    move-result-object p1

    check-cast p1, Lo/closeWithoutRenamingOrLog;

    .line 140
    invoke-virtual {p0, p1}, Lo/resolveUnityEditorVersion;->zzb(Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 141
    invoke-direct {p0, p2, p1}, Lo/CommonUtils$Architecture;->zza(Lcom/google/android/gms/tasks/Task;Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lo/isRooted;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/access$1700;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lo/isRooted;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lo/access$1700;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 104
    new-instance v0, Lo/waitForReportAction;

    invoke-direct {v0, p3, p4, p5}, Lo/waitForReportAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0, p1}, Lo/writeSessionOS;->zza(Lcom/google/firebase/FirebaseApp;)Lo/writeSessionOS;

    move-result-object p1

    .line 106
    invoke-virtual {p1, p2}, Lo/writeSessionOS;->zza(Lo/isRooted;)Lo/writeSessionOS;

    move-result-object p1

    .line 107
    invoke-virtual {p1, p6}, Lo/writeSessionOS;->zza(Ljava/lang/Object;)Lo/writeSessionOS;

    move-result-object p1

    .line 108
    invoke-virtual {p1, p6}, Lo/writeSessionOS;->zza(Lo/logAnalyticsAppExceptionEvent;)Lo/writeSessionOS;

    move-result-object p1

    check-cast p1, Lo/waitForReportAction;

    .line 110
    invoke-virtual {p0, p1}, Lo/resolveUnityEditorVersion;->zzb(Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 111
    invoke-direct {p0, p2, p1}, Lo/CommonUtils$Architecture;->zza(Lcom/google/android/gms/tasks/Task;Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lo/isRooted;Ljava/lang/String;Lo/access$1700;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lo/isRooted;",
            "Ljava/lang/String;",
            "Lo/access$1700;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/isClsTrace;",
            ">;"
        }
    .end annotation

    .line 15
    new-instance v0, Lo/ignoreResult;

    invoke-direct {v0, p3}, Lo/ignoreResult;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Lo/writeSessionOS;->zza(Lcom/google/firebase/FirebaseApp;)Lo/writeSessionOS;

    move-result-object p1

    .line 17
    invoke-virtual {p1, p2}, Lo/writeSessionOS;->zza(Lo/isRooted;)Lo/writeSessionOS;

    move-result-object p1

    .line 18
    invoke-virtual {p1, p4}, Lo/writeSessionOS;->zza(Ljava/lang/Object;)Lo/writeSessionOS;

    move-result-object p1

    .line 19
    invoke-virtual {p1, p4}, Lo/writeSessionOS;->zza(Lo/logAnalyticsAppExceptionEvent;)Lo/writeSessionOS;

    move-result-object p1

    check-cast p1, Lo/ignoreResult;

    .line 20
    invoke-virtual {p0, p1}, Lo/resolveUnityEditorVersion;->zza(Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lo/CommonUtils$Architecture;->zza(Lcom/google/android/gms/tasks/Task;Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lo/isRooted;Lo/access$1700;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lo/isRooted;",
            "Lo/access$1700;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 282
    new-instance v0, Lo/getSessionIdFromSessionFile;

    invoke-direct {v0}, Lo/getSessionIdFromSessionFile;-><init>()V

    .line 283
    invoke-virtual {v0, p1}, Lo/writeSessionOS;->zza(Lcom/google/firebase/FirebaseApp;)Lo/writeSessionOS;

    move-result-object p1

    .line 284
    invoke-virtual {p1, p2}, Lo/writeSessionOS;->zza(Lo/isRooted;)Lo/writeSessionOS;

    move-result-object p1

    .line 285
    invoke-virtual {p1, p3}, Lo/writeSessionOS;->zza(Ljava/lang/Object;)Lo/writeSessionOS;

    move-result-object p1

    .line 286
    invoke-virtual {p1, p3}, Lo/writeSessionOS;->zza(Lo/logAnalyticsAppExceptionEvent;)Lo/writeSessionOS;

    move-result-object p1

    check-cast p1, Lo/getSessionIdFromSessionFile;

    .line 287
    invoke-virtual {p0, p1}, Lo/resolveUnityEditorVersion;->zza(Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lo/CommonUtils$Architecture;->zza(Lcom/google/android/gms/tasks/Task;Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lo/isRooted;Lo/calculateUsedDiskSpaceInBytes;Ljava/lang/String;Lo/access$1700;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lo/isRooted;",
            "Lo/calculateUsedDiskSpaceInBytes;",
            "Ljava/lang/String;",
            "Lo/access$1700;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance v0, Lo/CrashlyticsBackgroundWorker$4;

    invoke-direct {v0, p3, p4}, Lo/CrashlyticsBackgroundWorker$4;-><init>(Lo/calculateUsedDiskSpaceInBytes;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0, p1}, Lo/writeSessionOS;->zza(Lcom/google/firebase/FirebaseApp;)Lo/writeSessionOS;

    move-result-object p1

    .line 35
    invoke-virtual {p1, p2}, Lo/writeSessionOS;->zza(Lo/isRooted;)Lo/writeSessionOS;

    move-result-object p1

    .line 36
    invoke-virtual {p1, p5}, Lo/writeSessionOS;->zza(Ljava/lang/Object;)Lo/writeSessionOS;

    move-result-object p1

    .line 37
    invoke-virtual {p1, p5}, Lo/writeSessionOS;->zza(Lo/logAnalyticsAppExceptionEvent;)Lo/writeSessionOS;

    move-result-object p1

    check-cast p1, Lo/CrashlyticsBackgroundWorker$4;

    .line 39
    invoke-virtual {p0, p1}, Lo/resolveUnityEditorVersion;->zzb(Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 40
    invoke-direct {p0, p2, p1}, Lo/CommonUtils$Architecture;->zza(Lcom/google/android/gms/tasks/Task;Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lo/isRooted;Lo/calculateUsedDiskSpaceInBytes;Lo/access$1700;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lo/isRooted;",
            "Lo/calculateUsedDiskSpaceInBytes;",
            "Lo/access$1700;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/isLoggingEnabled;",
            ">;"
        }
    .end annotation

    const-string v0, "null reference"

    if-eqz p1, :cond_b

    if-eqz p3, :cond_a

    if-eqz p2, :cond_9

    if-eqz p4, :cond_8

    .line 200
    invoke-virtual {p2}, Lo/isRooted;->zza()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 201
    invoke-virtual {p3}, Lo/calculateUsedDiskSpaceInBytes;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p2, 0x4277

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 203
    invoke-static {p1}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onNavigationEvent;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    .line 4004
    new-instance p2, Lo/getProjectId;

    invoke-direct {p2}, Lo/getProjectId;-><init>()V

    .line 4005
    invoke-virtual {p2, p1}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-object p2

    .line 205
    :cond_0
    instance-of v1, p3, Lo/logControlledError;

    if-eqz v1, :cond_2

    .line 206
    check-cast p3, Lo/logControlledError;

    invoke-virtual {p3}, Lo/logControlledError;->zzg()Z

    move-result v0

    if-nez v0, :cond_1

    .line 208
    new-instance v0, Lo/handleUncaughtException;

    invoke-direct {v0, p3}, Lo/handleUncaughtException;-><init>(Lo/logControlledError;)V

    .line 209
    invoke-virtual {v0, p1}, Lo/writeSessionOS;->zza(Lcom/google/firebase/FirebaseApp;)Lo/writeSessionOS;

    move-result-object p1

    .line 210
    invoke-virtual {p1, p2}, Lo/writeSessionOS;->zza(Lo/isRooted;)Lo/writeSessionOS;

    move-result-object p1

    .line 211
    invoke-virtual {p1, p4}, Lo/writeSessionOS;->zza(Ljava/lang/Object;)Lo/writeSessionOS;

    move-result-object p1

    .line 212
    invoke-virtual {p1, p4}, Lo/writeSessionOS;->zza(Lo/logAnalyticsAppExceptionEvent;)Lo/writeSessionOS;

    move-result-object p1

    check-cast p1, Lo/handleUncaughtException;

    .line 214
    invoke-virtual {p0, p1}, Lo/resolveUnityEditorVersion;->zzb(Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 215
    invoke-direct {p0, p2, p1}, Lo/CommonUtils$Architecture;->zza(Lcom/google/android/gms/tasks/Task;Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 218
    :cond_1
    new-instance v0, Lo/CrashlyticsController;

    invoke-direct {v0, p3}, Lo/CrashlyticsController;-><init>(Lo/logControlledError;)V

    .line 219
    invoke-virtual {v0, p1}, Lo/writeSessionOS;->zza(Lcom/google/firebase/FirebaseApp;)Lo/writeSessionOS;

    move-result-object p1

    .line 220
    invoke-virtual {p1, p2}, Lo/writeSessionOS;->zza(Lo/isRooted;)Lo/writeSessionOS;

    move-result-object p1

    .line 221
    invoke-virtual {p1, p4}, Lo/writeSessionOS;->zza(Ljava/lang/Object;)Lo/writeSessionOS;

    move-result-object p1

    .line 222
    invoke-virtual {p1, p4}, Lo/writeSessionOS;->zza(Lo/logAnalyticsAppExceptionEvent;)Lo/writeSessionOS;

    move-result-object p1

    check-cast p1, Lo/CrashlyticsController;

    .line 224
    invoke-virtual {p0, p1}, Lo/resolveUnityEditorVersion;->zzb(Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 225
    invoke-direct {p0, p2, p1}, Lo/CommonUtils$Architecture;->zza(Lcom/google/android/gms/tasks/Task;Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 227
    :cond_2
    instance-of v1, p3, Lo/flushOrLog;

    if-eqz v1, :cond_3

    .line 228
    check-cast p3, Lo/flushOrLog;

    .line 229
    new-instance v0, Lo/enableExceptionHandling;

    invoke-direct {v0, p3}, Lo/enableExceptionHandling;-><init>(Lo/flushOrLog;)V

    .line 230
    invoke-virtual {v0, p1}, Lo/writeSessionOS;->zza(Lcom/google/firebase/FirebaseApp;)Lo/writeSessionOS;

    move-result-object p1

    .line 231
    invoke-virtual {p1, p2}, Lo/writeSessionOS;->zza(Lo/isRooted;)Lo/writeSessionOS;

    move-result-object p1

    .line 232
    invoke-virtual {p1, p4}, Lo/writeSessionOS;->zza(Ljava/lang/Object;)Lo/writeSessionOS;

    move-result-object p1

    .line 233
    invoke-virtual {p1, p4}, Lo/writeSessionOS;->zza(Lo/logAnalyticsAppExceptionEvent;)Lo/writeSessionOS;

    move-result-object p1

    check-cast p1, Lo/enableExceptionHandling;

    .line 235
    invoke-virtual {p0, p1}, Lo/resolveUnityEditorVersion;->zzb(Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 236
    invoke-direct {p0, p2, p1}, Lo/CommonUtils$Architecture;->zza(Lcom/google/android/gms/tasks/Task;Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_3
    if-eqz p1, :cond_7

    if-eqz p3, :cond_6

    if-eqz p2, :cond_5

    if-eqz p4, :cond_4

    .line 243
    new-instance v0, Lo/CrashlyticsBackgroundWorker$3;

    invoke-direct {v0, p3}, Lo/CrashlyticsBackgroundWorker$3;-><init>(Lo/calculateUsedDiskSpaceInBytes;)V

    .line 244
    invoke-virtual {v0, p1}, Lo/writeSessionOS;->zza(Lcom/google/firebase/FirebaseApp;)Lo/writeSessionOS;

    move-result-object p1

    .line 245
    invoke-virtual {p1, p2}, Lo/writeSessionOS;->zza(Lo/isRooted;)Lo/writeSessionOS;

    move-result-object p1

    .line 246
    invoke-virtual {p1, p4}, Lo/writeSessionOS;->zza(Ljava/lang/Object;)Lo/writeSessionOS;

    move-result-object p1

    .line 247
    invoke-virtual {p1, p4}, Lo/writeSessionOS;->zza(Lo/logAnalyticsAppExceptionEvent;)Lo/writeSessionOS;

    move-result-object p1

    check-cast p1, Lo/CrashlyticsBackgroundWorker$3;

    .line 249
    invoke-virtual {p0, p1}, Lo/resolveUnityEditorVersion;->zzb(Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 250
    invoke-direct {p0, p2, p1}, Lo/CommonUtils$Architecture;->zza(Lcom/google/android/gms/tasks/Task;Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 8002
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7002
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6002
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5002
    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4002
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3002
    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2002
    :cond_a
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1002
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lo/isRooted;Lo/flushOrLog;Ljava/lang/String;Lo/access$1700;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lo/isRooted;",
            "Lo/flushOrLog;",
            "Ljava/lang/String;",
            "Lo/access$1700;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 142
    new-instance v0, Lo/cacheUserData;

    invoke-direct {v0, p3, p4}, Lo/cacheUserData;-><init>(Lo/flushOrLog;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0, p1}, Lo/writeSessionOS;->zza(Lcom/google/firebase/FirebaseApp;)Lo/writeSessionOS;

    move-result-object p1

    .line 144
    invoke-virtual {p1, p2}, Lo/writeSessionOS;->zza(Lo/isRooted;)Lo/writeSessionOS;

    move-result-object p1

    .line 145
    invoke-virtual {p1, p5}, Lo/writeSessionOS;->zza(Ljava/lang/Object;)Lo/writeSessionOS;

    move-result-object p1

    .line 146
    invoke-virtual {p1, p5}, Lo/writeSessionOS;->zza(Lo/logAnalyticsAppExceptionEvent;)Lo/writeSessionOS;

    move-result-object p1

    check-cast p1, Lo/cacheUserData;

    .line 148
    invoke-virtual {p0, p1}, Lo/resolveUnityEditorVersion;->zzb(Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 149
    invoke-direct {p0, p2, p1}, Lo/CommonUtils$Architecture;->zza(Lcom/google/android/gms/tasks/Task;Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lo/isRooted;Lo/flushOrLog;Lo/access$1700;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lo/isRooted;",
            "Lo/flushOrLog;",
            "Lo/access$1700;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance v0, Lo/listSortedSessionBeginFiles;

    invoke-direct {v0, p3}, Lo/listSortedSessionBeginFiles;-><init>(Lo/flushOrLog;)V

    .line 79
    invoke-virtual {v0, p1}, Lo/writeSessionOS;->zza(Lcom/google/firebase/FirebaseApp;)Lo/writeSessionOS;

    move-result-object p1

    .line 80
    invoke-virtual {p1, p2}, Lo/writeSessionOS;->zza(Lo/isRooted;)Lo/writeSessionOS;

    move-result-object p1

    .line 81
    invoke-virtual {p1, p4}, Lo/writeSessionOS;->zza(Ljava/lang/Object;)Lo/writeSessionOS;

    move-result-object p1

    .line 82
    invoke-virtual {p1, p4}, Lo/writeSessionOS;->zza(Lo/logAnalyticsAppExceptionEvent;)Lo/writeSessionOS;

    move-result-object p1

    check-cast p1, Lo/listSortedSessionBeginFiles;

    .line 84
    invoke-virtual {p0, p1}, Lo/resolveUnityEditorVersion;->zzb(Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 85
    invoke-direct {p0, p2, p1}, Lo/CommonUtils$Architecture;->zza(Lcom/google/android/gms/tasks/Task;Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lo/isRooted;Lo/getAppIconHashOrNull;Lo/access$1700;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lo/isRooted;",
            "Lo/getAppIconHashOrNull;",
            "Lo/access$1700;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 60
    new-instance v0, Lo/getTrimmedNonFatalFiles;

    invoke-direct {v0, p3}, Lo/getTrimmedNonFatalFiles;-><init>(Lo/getAppIconHashOrNull;)V

    .line 61
    invoke-virtual {v0, p1}, Lo/writeSessionOS;->zza(Lcom/google/firebase/FirebaseApp;)Lo/writeSessionOS;

    move-result-object p1

    .line 62
    invoke-virtual {p1, p2}, Lo/writeSessionOS;->zza(Lo/isRooted;)Lo/writeSessionOS;

    move-result-object p1

    .line 63
    invoke-virtual {p1, p4}, Lo/writeSessionOS;->zza(Ljava/lang/Object;)Lo/writeSessionOS;

    move-result-object p1

    .line 64
    invoke-virtual {p1, p4}, Lo/writeSessionOS;->zza(Lo/logAnalyticsAppExceptionEvent;)Lo/writeSessionOS;

    move-result-object p1

    check-cast p1, Lo/getTrimmedNonFatalFiles;

    .line 65
    invoke-virtual {p0, p1}, Lo/resolveUnityEditorVersion;->zzb(Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lo/CommonUtils$Architecture;->zza(Lcom/google/android/gms/tasks/Task;Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lo/isRooted;Lo/logControlledError;Lo/access$1700;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lo/isRooted;",
            "Lo/logControlledError;",
            "Lo/access$1700;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 120
    new-instance v0, Lo/defaultReportUploader;

    invoke-direct {v0, p3}, Lo/defaultReportUploader;-><init>(Lo/logControlledError;)V

    .line 121
    invoke-virtual {v0, p1}, Lo/writeSessionOS;->zza(Lcom/google/firebase/FirebaseApp;)Lo/writeSessionOS;

    move-result-object p1

    .line 122
    invoke-virtual {p1, p2}, Lo/writeSessionOS;->zza(Lo/isRooted;)Lo/writeSessionOS;

    move-result-object p1

    .line 123
    invoke-virtual {p1, p4}, Lo/writeSessionOS;->zza(Ljava/lang/Object;)Lo/writeSessionOS;

    move-result-object p1

    .line 124
    invoke-virtual {p1, p4}, Lo/writeSessionOS;->zza(Lo/logAnalyticsAppExceptionEvent;)Lo/writeSessionOS;

    move-result-object p1

    check-cast p1, Lo/defaultReportUploader;

    .line 126
    invoke-virtual {p0, p1}, Lo/resolveUnityEditorVersion;->zzb(Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 127
    invoke-direct {p0, p2, p1}, Lo/CommonUtils$Architecture;->zza(Lcom/google/android/gms/tasks/Task;Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lo/isRooted;Lo/logPriorityToString;Ljava/lang/String;Lo/access$1100;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lo/isRooted;",
            "Lo/logPriorityToString;",
            "Ljava/lang/String;",
            "Lo/access$1100;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/isLoggingEnabled;",
            ">;"
        }
    .end annotation

    .line 308
    new-instance v0, Lo/CrashlyticsBackgroundWorker$2;

    invoke-direct {v0, p3, p4}, Lo/CrashlyticsBackgroundWorker$2;-><init>(Lo/logPriorityToString;Ljava/lang/String;)V

    .line 309
    invoke-virtual {v0, p1}, Lo/writeSessionOS;->zza(Lcom/google/firebase/FirebaseApp;)Lo/writeSessionOS;

    move-result-object p1

    invoke-virtual {p1, p5}, Lo/writeSessionOS;->zza(Ljava/lang/Object;)Lo/writeSessionOS;

    if-eqz p2, :cond_0

    .line 311
    invoke-virtual {v0, p2}, Lo/writeSessionOS;->zza(Lo/isRooted;)Lo/writeSessionOS;

    .line 312
    :cond_0
    invoke-virtual {p0, v0}, Lo/resolveUnityEditorVersion;->zzb(Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lo/logControlledError;Lo/access$1100;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lo/logControlledError;",
            "Lo/access$1100;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/isLoggingEnabled;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance v0, Lo/listCompleteSessionFiles;

    invoke-direct {v0, p2}, Lo/listCompleteSessionFiles;-><init>(Lo/logControlledError;)V

    .line 99
    invoke-virtual {v0, p1}, Lo/writeSessionOS;->zza(Lcom/google/firebase/FirebaseApp;)Lo/writeSessionOS;

    move-result-object p1

    .line 100
    invoke-virtual {p1, p3}, Lo/writeSessionOS;->zza(Ljava/lang/Object;)Lo/writeSessionOS;

    move-result-object p1

    check-cast p1, Lo/listCompleteSessionFiles;

    .line 102
    invoke-virtual {p0, p1}, Lo/resolveUnityEditorVersion;->zzb(Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 103
    invoke-direct {p0, p2, p1}, Lo/CommonUtils$Architecture;->zza(Lcom/google/android/gms/tasks/Task;Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lo/logPriorityToString;Lo/isRooted;Ljava/lang/String;Lo/access$1100;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lo/logPriorityToString;",
            "Lo/isRooted;",
            "Ljava/lang/String;",
            "Lo/access$1100;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 300
    new-instance v0, Lo/CrashlyticsBackgroundWorker$1;

    .line 301
    invoke-virtual {p3}, Lo/isRooted;->zze()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p2, p3, p4}, Lo/CrashlyticsBackgroundWorker$1;-><init>(Lo/logPriorityToString;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-virtual {v0, p1}, Lo/writeSessionOS;->zza(Lcom/google/firebase/FirebaseApp;)Lo/writeSessionOS;

    move-result-object p1

    invoke-virtual {p1, p5}, Lo/writeSessionOS;->zza(Ljava/lang/Object;)Lo/writeSessionOS;

    .line 303
    invoke-virtual {p0, v0}, Lo/resolveUnityEditorVersion;->zzb(Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 293
    new-instance v0, Lo/doCloseSessions;

    invoke-direct {v0, p1}, Lo/doCloseSessions;-><init>(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0, v0}, Lo/resolveUnityEditorVersion;->zzb(Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 296
    invoke-direct {p0, p1, v0}, Lo/CommonUtils$Architecture;->zza(Lcom/google/android/gms/tasks/Task;Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Lo/calculateFreeRamInBytes;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lo/calculateFreeRamInBytes;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 320
    sget-object v0, Lo/getReadUpto;->ICustomTabsCallback$Stub:Lo/getReadUpto;

    invoke-virtual {p3, v0}, Lo/calculateFreeRamInBytes;->zza(Lo/getReadUpto;)V

    .line 321
    new-instance v0, Lo/trimOpenSessions;

    invoke-direct {v0, p1, p2, p3}, Lo/trimOpenSessions;-><init>(Ljava/lang/String;Ljava/lang/String;Lo/calculateFreeRamInBytes;)V

    .line 322
    invoke-virtual {p0, v0}, Lo/resolveUnityEditorVersion;->zzb(Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lo/isRooted;Lo/getCreateReportSpiCall;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isRooted;",
            "Lo/getCreateReportSpiCall;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 288
    new-instance v0, Lo/submitTask;

    invoke-direct {v0}, Lo/submitTask;-><init>()V

    .line 289
    invoke-virtual {v0, p1}, Lo/writeSessionOS;->zza(Lo/isRooted;)Lo/writeSessionOS;

    move-result-object p1

    .line 290
    invoke-virtual {p1, p2}, Lo/writeSessionOS;->zza(Ljava/lang/Object;)Lo/writeSessionOS;

    move-result-object p1

    .line 291
    invoke-virtual {p1, p2}, Lo/writeSessionOS;->zza(Lo/logAnalyticsAppExceptionEvent;)Lo/writeSessionOS;

    move-result-object p1

    check-cast p1, Lo/submitTask;

    .line 292
    invoke-virtual {p0, p1}, Lo/resolveUnityEditorVersion;->zzb(Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lo/CommonUtils$Architecture;->zza(Lcom/google/android/gms/tasks/Task;Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lo/writeTo;Ljava/lang/String;Ljava/lang/String;JZZLo/copyStream$extraCallback;Ljava/util/concurrent/Executor;Landroid/app/Activity;)Lcom/google/android/gms/tasks/Task;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/writeTo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JZZ",
            "Lo/copyStream$extraCallback;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/app/Activity;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 297
    new-instance v8, Lo/listSessionBeginFiles;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lo/listSessionBeginFiles;-><init>(Lo/writeTo;Ljava/lang/String;Ljava/lang/String;JZZ)V

    move-object/from16 v0, p8

    move-object/from16 v1, p9

    move-object/from16 v2, p10

    .line 298
    invoke-virtual {v8, v0, v2, v1}, Lo/writeSessionOS;->zza(Lo/copyStream$extraCallback;Landroid/app/Activity;Ljava/util/concurrent/Executor;)Lo/writeSessionOS;

    move-object v0, p0

    .line 299
    invoke-virtual {p0, v8}, Lo/resolveUnityEditorVersion;->zzb(Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    return-object v1
.end method

.method public final zza(Lo/writeTo;Lo/getResourcePackageName;Ljava/lang/String;JZZLo/copyStream$extraCallback;Ljava/util/concurrent/Executor;Landroid/app/Activity;)Lcom/google/android/gms/tasks/Task;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/writeTo;",
            "Lo/getResourcePackageName;",
            "Ljava/lang/String;",
            "JZZ",
            "Lo/copyStream$extraCallback;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/app/Activity;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 304
    new-instance v8, Lo/listNativeSessionFileDirectories;

    .line 305
    invoke-virtual {p1}, Lo/writeTo;->zzb()Ljava/lang/String;

    move-result-object v2

    move-object v0, v8

    move-object v1, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lo/listNativeSessionFileDirectories;-><init>(Lo/getResourcePackageName;Ljava/lang/String;Ljava/lang/String;JZZ)V

    move-object/from16 v0, p8

    move-object/from16 v1, p9

    move-object/from16 v2, p10

    .line 306
    invoke-virtual {v8, v0, v2, v1}, Lo/writeSessionOS;->zza(Lo/copyStream$extraCallback;Landroid/app/Activity;Ljava/util/concurrent/Executor;)Lo/writeSessionOS;

    move-object v0, p0

    .line 307
    invoke-virtual {p0, v8}, Lo/resolveUnityEditorVersion;->zzb(Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    return-object v1
.end method

.method final zza()Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Lo/getAppIconResourceId<",
            "Lo/writeSessionPartFile;",
            ">;>;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lo/CommonUtils$Architecture;->zzc:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    return-object v0

    .line 8
    :cond_0
    iget-object v0, p0, Lo/CommonUtils$Architecture;->zza:Landroid/content/Context;

    iget-object v1, p0, Lo/CommonUtils$Architecture;->zzb:Lo/writeSessionPartFile;

    .line 10
    new-instance v2, Lo/trimSessionFiles;

    invoke-direct {v2, v1, v0}, Lo/trimSessionFiles;-><init>(Lo/writeSessionPartFile;Landroid/content/Context;)V

    .line 11
    invoke-static {}, Lo/isNullable;->onPostMessage()Lo/setLogId;

    move-result-object v0

    sget v1, Lo/createdMillis;->onPostMessage:I

    .line 12
    invoke-interface {v0, v1}, Lo/setLogId;->ICustomTabsCallback(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 13
    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lo/getCsat;Lo/copyStream$extraCallback;Landroid/app/Activity;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 55
    new-instance v0, Lo/retainSessions;

    invoke-direct {v0, p2}, Lo/retainSessions;-><init>(Lo/getCsat;)V

    .line 56
    invoke-virtual {v0, p1}, Lo/writeSessionOS;->zza(Lcom/google/firebase/FirebaseApp;)Lo/writeSessionOS;

    move-result-object p1

    .line 57
    invoke-virtual {p1, p3, p4, p5}, Lo/writeSessionOS;->zza(Lo/copyStream$extraCallback;Landroid/app/Activity;Ljava/util/concurrent/Executor;)Lo/writeSessionOS;

    move-result-object p1

    check-cast p1, Lo/retainSessions;

    .line 58
    invoke-virtual {p0, p1}, Lo/resolveUnityEditorVersion;->zzb(Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lo/CommonUtils$Architecture;->zza(Lcom/google/android/gms/tasks/Task;Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final zzb(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 180
    new-instance v0, Lo/isRunningOnThread;

    invoke-direct {v0, p2, p3}, Lo/isRunningOnThread;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0, p1}, Lo/writeSessionOS;->zza(Lcom/google/firebase/FirebaseApp;)Lo/writeSessionOS;

    move-result-object p1

    check-cast p1, Lo/isRunningOnThread;

    .line 182
    invoke-virtual {p0, p1}, Lo/resolveUnityEditorVersion;->zzb(Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lo/CommonUtils$Architecture;->zza(Lcom/google/android/gms/tasks/Task;Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/access$1100;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lo/access$1100;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/isLoggingEnabled;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance v0, Lo/hasOpenSession;

    invoke-direct {v0, p2, p3, p4}, Lo/hasOpenSession;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0, p1}, Lo/writeSessionOS;->zza(Lcom/google/firebase/FirebaseApp;)Lo/writeSessionOS;

    move-result-object p1

    .line 94
    invoke-virtual {p1, p5}, Lo/writeSessionOS;->zza(Ljava/lang/Object;)Lo/writeSessionOS;

    move-result-object p1

    check-cast p1, Lo/hasOpenSession;

    .line 96
    invoke-virtual {p0, p1}, Lo/resolveUnityEditorVersion;->zzb(Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 97
    invoke-direct {p0, p2, p1}, Lo/CommonUtils$Architecture;->zza(Lcom/google/android/gms/tasks/Task;Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Lo/calculateFreeRamInBytes;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            "Lo/calculateFreeRamInBytes;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 169
    sget-object v0, Lo/getReadUpto;->onNavigationEvent:Lo/getReadUpto;

    invoke-virtual {p3, v0}, Lo/calculateFreeRamInBytes;->zza(Lo/getReadUpto;)V

    .line 170
    new-instance v0, Lo/getPreviousSessionId;

    const-string v1, "sendSignInLinkToEmail"

    invoke-direct {v0, p2, p3, p4, v1}, Lo/getPreviousSessionId;-><init>(Ljava/lang/String;Lo/calculateFreeRamInBytes;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0, p1}, Lo/writeSessionOS;->zza(Lcom/google/firebase/FirebaseApp;)Lo/writeSessionOS;

    move-result-object p1

    check-cast p1, Lo/getPreviousSessionId;

    .line 173
    invoke-virtual {p0, p1}, Lo/resolveUnityEditorVersion;->zzb(Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 174
    invoke-direct {p0, p2, p1}, Lo/CommonUtils$Architecture;->zza(Lcom/google/android/gms/tasks/Task;Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/firebase/FirebaseApp;Lo/isRooted;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/access$1700;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lo/isRooted;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lo/access$1700;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/isLoggingEnabled;",
            ">;"
        }
    .end annotation

    .line 112
    new-instance v0, Lo/submitAllReports;

    invoke-direct {v0, p3, p4, p5}, Lo/submitAllReports;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0, p1}, Lo/writeSessionOS;->zza(Lcom/google/firebase/FirebaseApp;)Lo/writeSessionOS;

    move-result-object p1

    .line 114
    invoke-virtual {p1, p2}, Lo/writeSessionOS;->zza(Lo/isRooted;)Lo/writeSessionOS;

    move-result-object p1

    .line 115
    invoke-virtual {p1, p6}, Lo/writeSessionOS;->zza(Ljava/lang/Object;)Lo/writeSessionOS;

    move-result-object p1

    .line 116
    invoke-virtual {p1, p6}, Lo/writeSessionOS;->zza(Lo/logAnalyticsAppExceptionEvent;)Lo/writeSessionOS;

    move-result-object p1

    check-cast p1, Lo/submitAllReports;

    .line 118
    invoke-virtual {p0, p1}, Lo/resolveUnityEditorVersion;->zzb(Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 119
    invoke-direct {p0, p2, p1}, Lo/CommonUtils$Architecture;->zza(Lcom/google/android/gms/tasks/Task;Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/firebase/FirebaseApp;Lo/isRooted;Ljava/lang/String;Lo/access$1700;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lo/isRooted;",
            "Ljava/lang/String;",
            "Lo/access$1700;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance v0, Lo/ensureFileArrayNotNull;

    invoke-direct {v0, p3}, Lo/ensureFileArrayNotNull;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0, p1}, Lo/writeSessionOS;->zza(Lcom/google/firebase/FirebaseApp;)Lo/writeSessionOS;

    move-result-object p1

    .line 68
    invoke-virtual {p1, p2}, Lo/writeSessionOS;->zza(Lo/isRooted;)Lo/writeSessionOS;

    move-result-object p1

    .line 69
    invoke-virtual {p1, p4}, Lo/writeSessionOS;->zza(Ljava/lang/Object;)Lo/writeSessionOS;

    move-result-object p1

    .line 70
    invoke-virtual {p1, p4}, Lo/writeSessionOS;->zza(Lo/logAnalyticsAppExceptionEvent;)Lo/writeSessionOS;

    move-result-object p1

    check-cast p1, Lo/ensureFileArrayNotNull;

    .line 71
    invoke-virtual {p0, p1}, Lo/resolveUnityEditorVersion;->zzb(Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lo/CommonUtils$Architecture;->zza(Lcom/google/android/gms/tasks/Task;Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/firebase/FirebaseApp;Lo/isRooted;Lo/calculateUsedDiskSpaceInBytes;Ljava/lang/String;Lo/access$1700;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lo/isRooted;",
            "Lo/calculateUsedDiskSpaceInBytes;",
            "Ljava/lang/String;",
            "Lo/access$1700;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/isLoggingEnabled;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance v0, Lo/writeNonFatalException;

    invoke-direct {v0, p3, p4}, Lo/writeNonFatalException;-><init>(Lo/calculateUsedDiskSpaceInBytes;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0, p1}, Lo/writeSessionOS;->zza(Lcom/google/firebase/FirebaseApp;)Lo/writeSessionOS;

    move-result-object p1

    .line 43
    invoke-virtual {p1, p2}, Lo/writeSessionOS;->zza(Lo/isRooted;)Lo/writeSessionOS;

    move-result-object p1

    .line 44
    invoke-virtual {p1, p5}, Lo/writeSessionOS;->zza(Ljava/lang/Object;)Lo/writeSessionOS;

    move-result-object p1

    .line 45
    invoke-virtual {p1, p5}, Lo/writeSessionOS;->zza(Lo/logAnalyticsAppExceptionEvent;)Lo/writeSessionOS;

    move-result-object p1

    check-cast p1, Lo/writeNonFatalException;

    .line 47
    invoke-virtual {p0, p1}, Lo/resolveUnityEditorVersion;->zzb(Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 48
    invoke-direct {p0, p2, p1}, Lo/CommonUtils$Architecture;->zza(Lcom/google/android/gms/tasks/Task;Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/firebase/FirebaseApp;Lo/isRooted;Lo/flushOrLog;Ljava/lang/String;Lo/access$1700;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lo/isRooted;",
            "Lo/flushOrLog;",
            "Ljava/lang/String;",
            "Lo/access$1700;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/isLoggingEnabled;",
            ">;"
        }
    .end annotation

    .line 150
    new-instance v0, Lo/cacheKeyData;

    invoke-direct {v0, p3, p4}, Lo/cacheKeyData;-><init>(Lo/flushOrLog;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0, p1}, Lo/writeSessionOS;->zza(Lcom/google/firebase/FirebaseApp;)Lo/writeSessionOS;

    move-result-object p1

    .line 152
    invoke-virtual {p1, p2}, Lo/writeSessionOS;->zza(Lo/isRooted;)Lo/writeSessionOS;

    move-result-object p1

    .line 153
    invoke-virtual {p1, p5}, Lo/writeSessionOS;->zza(Ljava/lang/Object;)Lo/writeSessionOS;

    move-result-object p1

    .line 154
    invoke-virtual {p1, p5}, Lo/writeSessionOS;->zza(Lo/logAnalyticsAppExceptionEvent;)Lo/writeSessionOS;

    move-result-object p1

    check-cast p1, Lo/cacheKeyData;

    .line 156
    invoke-virtual {p0, p1}, Lo/resolveUnityEditorVersion;->zzb(Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 157
    invoke-direct {p0, p2, p1}, Lo/CommonUtils$Architecture;->zza(Lcom/google/android/gms/tasks/Task;Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/firebase/FirebaseApp;Lo/isRooted;Lo/logControlledError;Lo/access$1700;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lo/isRooted;",
            "Lo/logControlledError;",
            "Lo/access$1700;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/isLoggingEnabled;",
            ">;"
        }
    .end annotation

    .line 128
    new-instance v0, Lo/writeToLog;

    invoke-direct {v0, p3}, Lo/writeToLog;-><init>(Lo/logControlledError;)V

    .line 129
    invoke-virtual {v0, p1}, Lo/writeSessionOS;->zza(Lcom/google/firebase/FirebaseApp;)Lo/writeSessionOS;

    move-result-object p1

    .line 130
    invoke-virtual {p1, p2}, Lo/writeSessionOS;->zza(Lo/isRooted;)Lo/writeSessionOS;

    move-result-object p1

    .line 131
    invoke-virtual {p1, p4}, Lo/writeSessionOS;->zza(Ljava/lang/Object;)Lo/writeSessionOS;

    move-result-object p1

    .line 132
    invoke-virtual {p1, p4}, Lo/writeSessionOS;->zza(Lo/logAnalyticsAppExceptionEvent;)Lo/writeSessionOS;

    move-result-object p1

    check-cast p1, Lo/writeToLog;

    .line 134
    invoke-virtual {p0, p1}, Lo/resolveUnityEditorVersion;->zzb(Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 135
    invoke-direct {p0, p2, p1}, Lo/CommonUtils$Architecture;->zza(Lcom/google/android/gms/tasks/Task;Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 183
    new-instance v0, Lo/checkRunningOnThread;

    invoke-direct {v0, p2, p3}, Lo/checkRunningOnThread;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0, p1}, Lo/writeSessionOS;->zza(Lcom/google/firebase/FirebaseApp;)Lo/writeSessionOS;

    move-result-object p1

    check-cast p1, Lo/checkRunningOnThread;

    .line 185
    invoke-virtual {p0, p1}, Lo/resolveUnityEditorVersion;->zzb(Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lo/CommonUtils$Architecture;->zza(Lcom/google/android/gms/tasks/Task;Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Lcom/google/firebase/FirebaseApp;Lo/isRooted;Ljava/lang/String;Lo/access$1700;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lo/isRooted;",
            "Ljava/lang/String;",
            "Lo/access$1700;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v0, Lo/trimSessionEventFiles;

    invoke-direct {v0, p3}, Lo/trimSessionEventFiles;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0, p1}, Lo/writeSessionOS;->zza(Lcom/google/firebase/FirebaseApp;)Lo/writeSessionOS;

    move-result-object p1

    .line 74
    invoke-virtual {p1, p2}, Lo/writeSessionOS;->zza(Lo/isRooted;)Lo/writeSessionOS;

    move-result-object p1

    .line 75
    invoke-virtual {p1, p4}, Lo/writeSessionOS;->zza(Ljava/lang/Object;)Lo/writeSessionOS;

    move-result-object p1

    .line 76
    invoke-virtual {p1, p4}, Lo/writeSessionOS;->zza(Lo/logAnalyticsAppExceptionEvent;)Lo/writeSessionOS;

    move-result-object p1

    check-cast p1, Lo/trimSessionEventFiles;

    .line 77
    invoke-virtual {p0, p1}, Lo/resolveUnityEditorVersion;->zzb(Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lo/CommonUtils$Architecture;->zza(Lcom/google/android/gms/tasks/Task;Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 186
    new-instance v0, Lo/cleanInvalidTempFiles;

    invoke-direct {v0, p2, p3}, Lo/cleanInvalidTempFiles;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0, p1}, Lo/writeSessionOS;->zza(Lcom/google/firebase/FirebaseApp;)Lo/writeSessionOS;

    move-result-object p1

    check-cast p1, Lo/cleanInvalidTempFiles;

    .line 189
    invoke-virtual {p0, p1}, Lo/resolveUnityEditorVersion;->zzb(Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 190
    invoke-direct {p0, p2, p1}, Lo/CommonUtils$Architecture;->zza(Lcom/google/android/gms/tasks/Task;Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Lcom/google/firebase/FirebaseApp;Lo/isRooted;Ljava/lang/String;Lo/access$1700;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lo/isRooted;",
            "Ljava/lang/String;",
            "Lo/access$1700;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/isLoggingEnabled;",
            ">;"
        }
    .end annotation

    const-string v0, "null reference"

    if-eqz p1, :cond_9

    .line 9004
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    if-eqz p2, :cond_7

    if-eqz p4, :cond_6

    .line 256
    invoke-virtual {p2}, Lo/isRooted;->zza()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 257
    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Lo/isRooted;->isAnonymous()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 258
    :cond_1
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p2, 0x4278

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 259
    invoke-static {p1}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onNavigationEvent;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    .line 11004
    new-instance p2, Lo/getProjectId;

    invoke-direct {p2}, Lo/getProjectId;-><init>()V

    .line 11005
    invoke-virtual {p2, p1}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-object p2

    :cond_2
    const/4 v0, -0x1

    .line 261
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const v2, 0x4889ba9b

    if-eq v1, v2, :cond_3

    goto :goto_0

    :cond_3
    const-string v1, "password"

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    .line 273
    new-instance v0, Lo/listAppExceptionMarkerFiles;

    invoke-direct {v0, p3}, Lo/listAppExceptionMarkerFiles;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v0, p1}, Lo/writeSessionOS;->zza(Lcom/google/firebase/FirebaseApp;)Lo/writeSessionOS;

    move-result-object p1

    .line 275
    invoke-virtual {p1, p2}, Lo/writeSessionOS;->zza(Lo/isRooted;)Lo/writeSessionOS;

    move-result-object p1

    .line 276
    invoke-virtual {p1, p4}, Lo/writeSessionOS;->zza(Ljava/lang/Object;)Lo/writeSessionOS;

    move-result-object p1

    .line 277
    invoke-virtual {p1, p4}, Lo/writeSessionOS;->zza(Lo/logAnalyticsAppExceptionEvent;)Lo/writeSessionOS;

    move-result-object p1

    check-cast p1, Lo/listAppExceptionMarkerFiles;

    .line 279
    invoke-virtual {p0, p1}, Lo/resolveUnityEditorVersion;->zzb(Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 280
    invoke-direct {p0, p2, p1}, Lo/CommonUtils$Architecture;->zza(Lcom/google/android/gms/tasks/Task;Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 263
    :cond_5
    new-instance p3, Lo/listFilesMatching;

    invoke-direct {p3}, Lo/listFilesMatching;-><init>()V

    .line 264
    invoke-virtual {p3, p1}, Lo/writeSessionOS;->zza(Lcom/google/firebase/FirebaseApp;)Lo/writeSessionOS;

    move-result-object p1

    .line 265
    invoke-virtual {p1, p2}, Lo/writeSessionOS;->zza(Lo/isRooted;)Lo/writeSessionOS;

    move-result-object p1

    .line 266
    invoke-virtual {p1, p4}, Lo/writeSessionOS;->zza(Ljava/lang/Object;)Lo/writeSessionOS;

    move-result-object p1

    .line 267
    invoke-virtual {p1, p4}, Lo/writeSessionOS;->zza(Lo/logAnalyticsAppExceptionEvent;)Lo/writeSessionOS;

    move-result-object p1

    check-cast p1, Lo/listFilesMatching;

    .line 269
    invoke-virtual {p0, p1}, Lo/resolveUnityEditorVersion;->zzb(Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 270
    invoke-direct {p0, p2, p1}, Lo/CommonUtils$Architecture;->zza(Lcom/google/android/gms/tasks/Task;Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 11002
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10002
    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9005
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Given String is empty or null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9002
    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zze(Lcom/google/firebase/FirebaseApp;Lo/isRooted;Ljava/lang/String;Lo/access$1700;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lo/isRooted;",
            "Ljava/lang/String;",
            "Lo/access$1700;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 313
    new-instance v0, Lo/listSessionPartFilesFor;

    .line 314
    invoke-virtual {p2}, Lo/isRooted;->zze()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lo/listSessionPartFilesFor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-virtual {v0, p1}, Lo/writeSessionOS;->zza(Lcom/google/firebase/FirebaseApp;)Lo/writeSessionOS;

    move-result-object p1

    .line 316
    invoke-virtual {p1, p2}, Lo/writeSessionOS;->zza(Lo/isRooted;)Lo/writeSessionOS;

    move-result-object p1

    .line 317
    invoke-virtual {p1, p4}, Lo/writeSessionOS;->zza(Ljava/lang/Object;)Lo/writeSessionOS;

    move-result-object p1

    .line 318
    invoke-virtual {p1, p4}, Lo/writeSessionOS;->zza(Lo/logAnalyticsAppExceptionEvent;)Lo/writeSessionOS;

    move-result-object p1

    check-cast p1, Lo/listSessionPartFilesFor;

    .line 319
    invoke-virtual {p0, p1}, Lo/resolveUnityEditorVersion;->zzb(Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
