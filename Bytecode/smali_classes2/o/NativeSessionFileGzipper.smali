.class public interface abstract Lo/NativeSessionFileGzipper;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract applyUserWriteToServerCache(Lo/ExecutorUtils$2;Lo/ExecutorUtils$1$1;)V
.end method

.method public abstract applyUserWriteToServerCache(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)V
.end method

.method public abstract loadUserWrites()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/loadInstallerPackageName;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeAllUserWrites()V
.end method

.method public abstract removeUserWrite(J)V
.end method

.method public abstract runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract saveUserMerge(Lo/ExecutorUtils$2;Lo/ExecutorUtils$1$1;J)V
.end method

.method public abstract saveUserOverwrite(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;J)V
.end method

.method public abstract serverCache(Lo/lambda$awaitEvenIfOnMainThread$0;)Lo/lambda$getSortedCustomAttributes$0;
.end method

.method public abstract setQueryActive(Lo/lambda$awaitEvenIfOnMainThread$0;)V
.end method

.method public abstract setQueryComplete(Lo/lambda$awaitEvenIfOnMainThread$0;)V
.end method

.method public abstract setQueryInactive(Lo/lambda$awaitEvenIfOnMainThread$0;)V
.end method

.method public abstract setTrackedQueryKeys(Lo/lambda$awaitEvenIfOnMainThread$0;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/lambda$awaitEvenIfOnMainThread$0;",
            "Ljava/util/Set<",
            "Lo/LogFileManager;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateServerCache(Lo/ExecutorUtils$2;Lo/ExecutorUtils$1$1;)V
.end method

.method public abstract updateServerCache(Lo/lambda$awaitEvenIfOnMainThread$0;Lo/LogFileManager$DirectoryProvider;)V
.end method

.method public abstract updateTrackedQueryKeys(Lo/lambda$awaitEvenIfOnMainThread$0;Ljava/util/Set;Ljava/util/Set;)V
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
.end method
