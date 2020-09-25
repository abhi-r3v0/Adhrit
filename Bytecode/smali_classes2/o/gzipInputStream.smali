.class public final Lo/gzipInputStream;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/NativeSessionFileGzipper;


# static fields
.field private static final TAG:Ljava/lang/String; = "NoopPersistenceManager"


# instance fields
.field private insideTransaction:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lo/gzipInputStream;->insideTransaction:Z

    return-void
.end method

.method private verifyInsideTransaction()V
    .locals 2

    .line 138
    iget-boolean v0, p0, Lo/gzipInputStream;->insideTransaction:Z

    const-string v1, "Transaction expected to already be in progress."

    invoke-static {v0, v1}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final applyUserWriteToServerCache(Lo/ExecutorUtils$2;Lo/ExecutorUtils$1$1;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lo/gzipInputStream;->verifyInsideTransaction()V

    return-void
.end method

.method public final applyUserWriteToServerCache(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lo/gzipInputStream;->verifyInsideTransaction()V

    return-void
.end method

.method public final loadUserWrites()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/loadInstallerPackageName;",
            ">;"
        }
    .end annotation

    .line 72
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final removeAllUserWrites()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lo/gzipInputStream;->verifyInsideTransaction()V

    return-void
.end method

.method public final removeUserWrite(J)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lo/gzipInputStream;->verifyInsideTransaction()V

    return-void
.end method

.method public final runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 121
    iget-boolean v0, p0, Lo/gzipInputStream;->insideTransaction:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "runInTransaction called when an existing transaction is already in progress."

    invoke-static {v0, v2}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(ZLjava/lang/String;)V

    .line 124
    iput-boolean v1, p0, Lo/gzipInputStream;->insideTransaction:Z

    const/4 v0, 0x0

    .line 126
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    iput-boolean v0, p0, Lo/gzipInputStream;->insideTransaction:Z

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    const-string v1, "NoopPersistenceManager"

    const-string v2, "Caught Throwable."

    .line 130
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 133
    iput-boolean v0, p0, Lo/gzipInputStream;->insideTransaction:Z

    .line 134
    throw p1
.end method

.method public final saveUserMerge(Lo/ExecutorUtils$2;Lo/ExecutorUtils$1$1;J)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lo/gzipInputStream;->verifyInsideTransaction()V

    return-void
.end method

.method public final saveUserOverwrite(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;J)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lo/gzipInputStream;->verifyInsideTransaction()V

    return-void
.end method

.method public final serverCache(Lo/lambda$awaitEvenIfOnMainThread$0;)Lo/lambda$getSortedCustomAttributes$0;
    .locals 2

    .line 77
    new-instance v0, Lo/lambda$getSortedCustomAttributes$0;

    .line 78
    invoke-static {}, Lo/LogFileManager$1;->Empty()Lo/LogFileManager$1;

    move-result-object v1

    invoke-virtual {p1}, Lo/lambda$awaitEvenIfOnMainThread$0;->getIndex()Lo/setLogFile;

    move-result-object p1

    invoke-static {v1, p1}, Lo/discardOldLogFiles;->from(Lo/LogFileManager$DirectoryProvider;Lo/setLogFile;)Lo/discardOldLogFiles;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lo/lambda$getSortedCustomAttributes$0;-><init>(Lo/discardOldLogFiles;ZZ)V

    return-object v0
.end method

.method public final setQueryActive(Lo/lambda$awaitEvenIfOnMainThread$0;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lo/gzipInputStream;->verifyInsideTransaction()V

    return-void
.end method

.method public final setQueryComplete(Lo/lambda$awaitEvenIfOnMainThread$0;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Lo/gzipInputStream;->verifyInsideTransaction()V

    return-void
.end method

.method public final setQueryInactive(Lo/lambda$awaitEvenIfOnMainThread$0;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lo/gzipInputStream;->verifyInsideTransaction()V

    return-void
.end method

.method public final setTrackedQueryKeys(Lo/lambda$awaitEvenIfOnMainThread$0;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/lambda$awaitEvenIfOnMainThread$0;",
            "Ljava/util/Set<",
            "Lo/LogFileManager;",
            ">;)V"
        }
    .end annotation

    .line 110
    invoke-direct {p0}, Lo/gzipInputStream;->verifyInsideTransaction()V

    return-void
.end method

.method public final updateServerCache(Lo/ExecutorUtils$2;Lo/ExecutorUtils$1$1;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lo/gzipInputStream;->verifyInsideTransaction()V

    return-void
.end method

.method public final updateServerCache(Lo/lambda$awaitEvenIfOnMainThread$0;Lo/LogFileManager$DirectoryProvider;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lo/gzipInputStream;->verifyInsideTransaction()V

    return-void
.end method

.method public final updateTrackedQueryKeys(Lo/lambda$awaitEvenIfOnMainThread$0;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/lambda$awaitEvenIfOnMainThread$0;",
            "Ljava/util/Set<",
            "Lo/LogFileManager;",
            ">;",
            "Ljava/util/Set<",
            "Lo/LogFileManager;",
            ">;)V"
        }
    .end annotation

    .line 115
    invoke-direct {p0}, Lo/gzipInputStream;->verifyInsideTransaction()V

    return-void
.end method
