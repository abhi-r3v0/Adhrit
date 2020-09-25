.class final Lo/removeForwardSlashesIn$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/removeForwardSlashesIn;->ackUserWrite(JZZLo/finalizeSessionWithNativeEvent;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "+",
        "Lo/Utils;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lo/removeForwardSlashesIn;

.field final synthetic val$persist:Z

.field final synthetic val$revert:Z

.field final synthetic val$serverClock:Lo/finalizeSessionWithNativeEvent;

.field final synthetic val$writeId:J


# direct methods
.method constructor <init>(Lo/removeForwardSlashesIn;ZJZLo/finalizeSessionWithNativeEvent;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lo/removeForwardSlashesIn$7;->this$0:Lo/removeForwardSlashesIn;

    iput-boolean p2, p0, Lo/removeForwardSlashesIn$7;->val$persist:Z

    iput-wide p3, p0, Lo/removeForwardSlashesIn$7;->val$writeId:J

    iput-boolean p5, p0, Lo/removeForwardSlashesIn$7;->val$revert:Z

    iput-object p6, p0, Lo/removeForwardSlashesIn$7;->val$serverClock:Lo/finalizeSessionWithNativeEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 235
    invoke-virtual {p0}, Lo/removeForwardSlashesIn$7;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final call()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lo/Utils;",
            ">;"
        }
    .end annotation

    .line 238
    iget-boolean v0, p0, Lo/removeForwardSlashesIn$7;->val$persist:Z

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lo/removeForwardSlashesIn$7;->this$0:Lo/removeForwardSlashesIn;

    invoke-static {v0}, Lo/removeForwardSlashesIn;->access$200(Lo/removeForwardSlashesIn;)Lo/NativeSessionFileGzipper;

    move-result-object v0

    iget-wide v1, p0, Lo/removeForwardSlashesIn$7;->val$writeId:J

    invoke-interface {v0, v1, v2}, Lo/NativeSessionFileGzipper;->removeUserWrite(J)V

    .line 241
    :cond_0
    iget-object v0, p0, Lo/removeForwardSlashesIn$7;->this$0:Lo/removeForwardSlashesIn;

    invoke-static {v0}, Lo/removeForwardSlashesIn;->access$300(Lo/removeForwardSlashesIn;)Lo/writeUserData;

    move-result-object v0

    iget-wide v1, p0, Lo/removeForwardSlashesIn$7;->val$writeId:J

    invoke-virtual {v0, v1, v2}, Lo/writeUserData;->getWrite(J)Lo/loadInstallerPackageName;

    move-result-object v0

    .line 242
    iget-object v1, p0, Lo/removeForwardSlashesIn$7;->this$0:Lo/removeForwardSlashesIn;

    invoke-static {v1}, Lo/removeForwardSlashesIn;->access$300(Lo/removeForwardSlashesIn;)Lo/writeUserData;

    move-result-object v1

    iget-wide v2, p0, Lo/removeForwardSlashesIn$7;->val$writeId:J

    invoke-virtual {v1, v2, v3}, Lo/writeUserData;->removeWrite(J)Z

    move-result v1

    .line 243
    invoke-virtual {v0}, Lo/loadInstallerPackageName;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 244
    iget-boolean v2, p0, Lo/removeForwardSlashesIn$7;->val$revert:Z

    if-nez v2, :cond_2

    .line 245
    iget-object v2, p0, Lo/removeForwardSlashesIn$7;->val$serverClock:Lo/finalizeSessionWithNativeEvent;

    invoke-static {v2}, Lo/getOsBuildVersionString;->generateServerValues(Lo/finalizeSessionWithNativeEvent;)Ljava/util/Map;

    move-result-object v2

    .line 246
    invoke-virtual {v0}, Lo/loadInstallerPackageName;->isOverwrite()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 249
    invoke-virtual {v0}, Lo/loadInstallerPackageName;->getOverwrite()Lo/LogFileManager$DirectoryProvider;

    move-result-object v3

    iget-object v4, p0, Lo/removeForwardSlashesIn$7;->this$0:Lo/removeForwardSlashesIn;

    invoke-virtual {v0}, Lo/loadInstallerPackageName;->getPath()Lo/ExecutorUtils$2;

    move-result-object v5

    .line 248
    invoke-static {v3, v4, v5, v2}, Lo/getOsBuildVersionString;->resolveDeferredValueSnapshot(Lo/LogFileManager$DirectoryProvider;Lo/removeForwardSlashesIn;Lo/ExecutorUtils$2;Ljava/util/Map;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v2

    .line 250
    iget-object v3, p0, Lo/removeForwardSlashesIn$7;->this$0:Lo/removeForwardSlashesIn;

    invoke-static {v3}, Lo/removeForwardSlashesIn;->access$200(Lo/removeForwardSlashesIn;)Lo/NativeSessionFileGzipper;

    move-result-object v3

    invoke-virtual {v0}, Lo/loadInstallerPackageName;->getPath()Lo/ExecutorUtils$2;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lo/NativeSessionFileGzipper;->applyUserWriteToServerCache(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)V

    goto :goto_0

    .line 254
    :cond_1
    invoke-virtual {v0}, Lo/loadInstallerPackageName;->getMerge()Lo/ExecutorUtils$1$1;

    move-result-object v3

    iget-object v4, p0, Lo/removeForwardSlashesIn$7;->this$0:Lo/removeForwardSlashesIn;

    invoke-virtual {v0}, Lo/loadInstallerPackageName;->getPath()Lo/ExecutorUtils$2;

    move-result-object v5

    .line 253
    invoke-static {v3, v4, v5, v2}, Lo/getOsBuildVersionString;->resolveDeferredValueMerge(Lo/ExecutorUtils$1$1;Lo/removeForwardSlashesIn;Lo/ExecutorUtils$2;Ljava/util/Map;)Lo/ExecutorUtils$1$1;

    move-result-object v2

    .line 255
    iget-object v3, p0, Lo/removeForwardSlashesIn$7;->this$0:Lo/removeForwardSlashesIn;

    invoke-static {v3}, Lo/removeForwardSlashesIn;->access$200(Lo/removeForwardSlashesIn;)Lo/NativeSessionFileGzipper;

    move-result-object v3

    invoke-virtual {v0}, Lo/loadInstallerPackageName;->getPath()Lo/ExecutorUtils$2;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lo/NativeSessionFileGzipper;->applyUserWriteToServerCache(Lo/ExecutorUtils$2;Lo/ExecutorUtils$1$1;)V

    :cond_2
    :goto_0
    if-nez v1, :cond_3

    .line 260
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 262
    :cond_3
    invoke-static {}, Lo/persistFatalEvent;->emptyInstance()Lo/persistFatalEvent;

    move-result-object v1

    .line 263
    invoke-virtual {v0}, Lo/loadInstallerPackageName;->isOverwrite()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 264
    invoke-static {}, Lo/ExecutorUtils$2;->getEmptyPath()Lo/ExecutorUtils$2;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lo/persistFatalEvent;->set(Lo/ExecutorUtils$2;Ljava/lang/Object;)Lo/persistFatalEvent;

    move-result-object v1

    goto :goto_2

    .line 266
    :cond_4
    invoke-virtual {v0}, Lo/loadInstallerPackageName;->getMerge()Lo/ExecutorUtils$1$1;

    move-result-object v2

    invoke-virtual {v2}, Lo/ExecutorUtils$1$1;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 267
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/ExecutorUtils$2;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4}, Lo/persistFatalEvent;->set(Lo/ExecutorUtils$2;Ljava/lang/Object;)Lo/persistFatalEvent;

    move-result-object v1

    goto :goto_1

    .line 270
    :cond_5
    :goto_2
    iget-object v2, p0, Lo/removeForwardSlashesIn$7;->this$0:Lo/removeForwardSlashesIn;

    new-instance v3, Lo/getUserDataFileForSession;

    .line 271
    invoke-virtual {v0}, Lo/loadInstallerPackageName;->getPath()Lo/ExecutorUtils$2;

    move-result-object v0

    iget-boolean v4, p0, Lo/removeForwardSlashesIn$7;->val$revert:Z

    invoke-direct {v3, v0, v1, v4}, Lo/getUserDataFileForSession;-><init>(Lo/ExecutorUtils$2;Lo/persistFatalEvent;Z)V

    .line 270
    invoke-static {v2, v3}, Lo/removeForwardSlashesIn;->access$400(Lo/removeForwardSlashesIn;Lo/getKeysFileForSession;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
