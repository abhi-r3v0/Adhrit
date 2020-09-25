.class public Lo/captureReportData;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private path:Lo/ExecutorUtils$2;

.field private repo:Lo/getCrashlyticsInstallId;


# direct methods
.method constructor <init>(Lo/getCrashlyticsInstallId;Lo/ExecutorUtils$2;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lo/captureReportData;->repo:Lo/getCrashlyticsInstallId;

    .line 49
    iput-object p2, p0, Lo/captureReportData;->path:Lo/ExecutorUtils$2;

    return-void
.end method

.method static synthetic access$000(Lo/captureReportData;)Lo/ExecutorUtils$2;
    .locals 0

    .line 42
    iget-object p0, p0, Lo/captureReportData;->path:Lo/ExecutorUtils$2;

    return-object p0
.end method

.method static synthetic access$100(Lo/captureReportData;)Lo/getCrashlyticsInstallId;
    .locals 0

    .line 42
    iget-object p0, p0, Lo/captureReportData;->repo:Lo/getCrashlyticsInstallId;

    return-object p0
.end method

.method private cancelInternal(Lo/isPresent$onPostMessage;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isPresent$onPostMessage;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 262
    invoke-static {p1}, Lo/SessionReportingCoordinator$$Lambda$2;->wrapOnComplete(Lo/isPresent$onPostMessage;)Lo/getSortedCustomAttributes;

    move-result-object p1

    .line 263
    iget-object v0, p0, Lo/captureReportData;->repo:Lo/getCrashlyticsInstallId;

    new-instance v1, Lo/captureReportData$2;

    invoke-direct {v1, p0, p1}, Lo/captureReportData$2;-><init>(Lo/captureReportData;Lo/getSortedCustomAttributes;)V

    invoke-virtual {v0, v1}, Lo/getCrashlyticsInstallId;->scheduleNow(Ljava/lang/Runnable;)V

    .line 270
    invoke-virtual {p1}, Lo/getSortedCustomAttributes;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/tasks/Task;

    return-object p1
.end method

.method private onDisconnectSetInternal(Ljava/lang/Object;Lo/LogFileManager$DirectoryProvider;Lo/isPresent$onPostMessage;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lo/LogFileManager$DirectoryProvider;",
            "Lo/isPresent$onPostMessage;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lo/captureReportData;->path:Lo/ExecutorUtils$2;

    invoke-static {v0}, Lo/UserMetadata;->validateWritablePath(Lo/ExecutorUtils$2;)V

    .line 166
    iget-object v0, p0, Lo/captureReportData;->path:Lo/ExecutorUtils$2;

    invoke-static {v0, p1}, Lo/getRightDecorationWidth$onPostMessage;->validateWithObject(Lo/ExecutorUtils$2;Ljava/lang/Object;)V

    .line 167
    invoke-static {p1}, Lo/SystemCurrentTimeProvider;->convertToPlainJavaTypes(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 168
    invoke-static {p1}, Lo/UserMetadata;->validateWritableObject(Ljava/lang/Object;)V

    .line 169
    invoke-static {p1, p2}, Lo/LogFileManager$NoopLogStore;->NodeFromJSON(Ljava/lang/Object;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    .line 170
    invoke-static {p3}, Lo/SessionReportingCoordinator$$Lambda$2;->wrapOnComplete(Lo/isPresent$onPostMessage;)Lo/getSortedCustomAttributes;

    move-result-object p2

    .line 171
    iget-object p3, p0, Lo/captureReportData;->repo:Lo/getCrashlyticsInstallId;

    new-instance v0, Lo/captureReportData$4;

    invoke-direct {v0, p0, p1, p2}, Lo/captureReportData$4;-><init>(Lo/captureReportData;Lo/LogFileManager$DirectoryProvider;Lo/getSortedCustomAttributes;)V

    invoke-virtual {p3, v0}, Lo/getCrashlyticsInstallId;->scheduleNow(Ljava/lang/Runnable;)V

    .line 178
    invoke-virtual {p2}, Lo/getSortedCustomAttributes;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/tasks/Task;

    return-object p1
.end method

.method private updateChildrenInternal(Ljava/util/Map;Lo/isPresent$onPostMessage;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lo/isPresent$onPostMessage;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lo/captureReportData;->path:Lo/ExecutorUtils$2;

    invoke-static {v0, p1}, Lo/UserMetadata;->parseAndValidateUpdate(Lo/ExecutorUtils$2;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 208
    invoke-static {p2}, Lo/SessionReportingCoordinator$$Lambda$2;->wrapOnComplete(Lo/isPresent$onPostMessage;)Lo/getSortedCustomAttributes;

    move-result-object p2

    .line 209
    iget-object v1, p0, Lo/captureReportData;->repo:Lo/getCrashlyticsInstallId;

    new-instance v2, Lo/captureReportData$5;

    invoke-direct {v2, p0, v0, p2, p1}, Lo/captureReportData$5;-><init>(Lo/captureReportData;Ljava/util/Map;Lo/getSortedCustomAttributes;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lo/getCrashlyticsInstallId;->scheduleNow(Ljava/lang/Runnable;)V

    .line 216
    invoke-virtual {p2}, Lo/getSortedCustomAttributes;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/tasks/Task;

    return-object p1
.end method


# virtual methods
.method public cancel()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 249
    invoke-direct {p0, v0}, Lo/captureReportData;->cancelInternal(Lo/isPresent$onPostMessage;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public cancel(Lo/isPresent$onPostMessage;)V
    .locals 0

    .line 258
    invoke-direct {p0, p1}, Lo/captureReportData;->cancelInternal(Lo/isPresent$onPostMessage;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public removeValue()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 228
    invoke-virtual {p0, v0}, Lo/captureReportData;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public removeValue(Lo/isPresent$onPostMessage;)V
    .locals 1

    const/4 v0, 0x0

    .line 237
    invoke-virtual {p0, v0, p1}, Lo/captureReportData;->setValue(Ljava/lang/Object;Lo/isPresent$onPostMessage;)V

    return-void
.end method

.method public setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 64
    invoke-static {}, Lo/toStringMap;->NullPriority()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lo/captureReportData;->onDisconnectSetInternal(Ljava/lang/Object;Lo/LogFileManager$DirectoryProvider;Lo/isPresent$onPostMessage;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Ljava/lang/Object;D)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "D)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lo/captureReportData;->path:Lo/ExecutorUtils$2;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {v0, p2}, Lo/toStringMap;->parsePriority(Lo/ExecutorUtils$2;Ljava/lang/Object;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lo/captureReportData;->onDisconnectSetInternal(Ljava/lang/Object;Lo/LogFileManager$DirectoryProvider;Lo/isPresent$onPostMessage;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lo/captureReportData;->path:Lo/ExecutorUtils$2;

    invoke-static {v0, p2}, Lo/toStringMap;->parsePriority(Lo/ExecutorUtils$2;Ljava/lang/Object;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lo/captureReportData;->onDisconnectSetInternal(Ljava/lang/Object;Lo/LogFileManager$DirectoryProvider;Lo/isPresent$onPostMessage;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Ljava/lang/Object;DLo/isPresent$onPostMessage;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lo/captureReportData;->path:Lo/ExecutorUtils$2;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {v0, p2}, Lo/toStringMap;->parsePriority(Lo/ExecutorUtils$2;Ljava/lang/Object;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p2

    invoke-direct {p0, p1, p2, p4}, Lo/captureReportData;->onDisconnectSetInternal(Ljava/lang/Object;Lo/LogFileManager$DirectoryProvider;Lo/isPresent$onPostMessage;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/String;Lo/isPresent$onPostMessage;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lo/captureReportData;->path:Lo/ExecutorUtils$2;

    invoke-static {v0, p2}, Lo/toStringMap;->parsePriority(Lo/ExecutorUtils$2;Ljava/lang/Object;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lo/captureReportData;->onDisconnectSetInternal(Ljava/lang/Object;Lo/LogFileManager$DirectoryProvider;Lo/isPresent$onPostMessage;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public setValue(Ljava/lang/Object;Ljava/util/Map;Lo/isPresent$onPostMessage;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lo/captureReportData;->path:Lo/ExecutorUtils$2;

    invoke-static {v0, p2}, Lo/toStringMap;->parsePriority(Lo/ExecutorUtils$2;Ljava/lang/Object;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lo/captureReportData;->onDisconnectSetInternal(Ljava/lang/Object;Lo/LogFileManager$DirectoryProvider;Lo/isPresent$onPostMessage;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public setValue(Ljava/lang/Object;Lo/isPresent$onPostMessage;)V
    .locals 1

    .line 111
    invoke-static {}, Lo/toStringMap;->NullPriority()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lo/captureReportData;->onDisconnectSetInternal(Ljava/lang/Object;Lo/LogFileManager$DirectoryProvider;Lo/isPresent$onPostMessage;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public updateChildren(Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 191
    invoke-direct {p0, p1, v0}, Lo/captureReportData;->updateChildrenInternal(Ljava/util/Map;Lo/isPresent$onPostMessage;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public updateChildren(Ljava/util/Map;Lo/isPresent$onPostMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lo/isPresent$onPostMessage;",
            ")V"
        }
    .end annotation

    .line 202
    invoke-direct {p0, p1, p2}, Lo/captureReportData;->updateChildrenInternal(Ljava/util/Map;Lo/isPresent$onPostMessage;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
