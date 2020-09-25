.class public interface abstract Lo/processNativeSessions;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract beginTransaction()V
.end method

.method public abstract close()V
.end method

.method public abstract deleteTrackedQuery(J)V
.end method

.method public abstract endTransaction()V
.end method

.method public abstract loadTrackedQueries()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/parse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract loadTrackedQueryKeys(J)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Set<",
            "Lo/LogFileManager;",
            ">;"
        }
    .end annotation
.end method

.method public abstract loadTrackedQueryKeys(Ljava/util/Set;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Set<",
            "Lo/LogFileManager;",
            ">;"
        }
    .end annotation
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

.method public abstract mergeIntoServerCache(Lo/ExecutorUtils$2;Lo/ExecutorUtils$1$1;)V
.end method

.method public abstract mergeIntoServerCache(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)V
.end method

.method public abstract overwriteServerCache(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)V
.end method

.method public abstract pruneCache(Lo/ExecutorUtils$2;Lo/ResponseParser;)V
.end method

.method public abstract removeAllUserWrites()V
.end method

.method public abstract removeUserWrite(J)V
.end method

.method public abstract resetPreviouslyActiveTrackedQueries(J)V
.end method

.method public abstract saveTrackedQuery(Lo/parse;)V
.end method

.method public abstract saveTrackedQueryKeys(JLjava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Set<",
            "Lo/LogFileManager;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract saveUserMerge(Lo/ExecutorUtils$2;Lo/ExecutorUtils$1$1;J)V
.end method

.method public abstract saveUserOverwrite(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;J)V
.end method

.method public abstract serverCache(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;
.end method

.method public abstract serverCacheEstimatedSizeInBytes()J
.end method

.method public abstract setTransactionSuccessful()V
.end method

.method public abstract updateTrackedQueryKeys(JLjava/util/Set;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Set<",
            "Lo/LogFileManager;",
            ">;",
            "Ljava/util/Set<",
            "Lo/LogFileManager;",
            ">;)V"
        }
    .end annotation
.end method
