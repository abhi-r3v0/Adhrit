.class final Lo/removeForwardSlashesIn$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/removeForwardSlashesIn;->applyServerOverwrite(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)Ljava/util/List;
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

.field final synthetic val$newData:Lo/LogFileManager$DirectoryProvider;

.field final synthetic val$path:Lo/ExecutorUtils$2;


# direct methods
.method constructor <init>(Lo/removeForwardSlashesIn;Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lo/removeForwardSlashesIn$9;->this$0:Lo/removeForwardSlashesIn;

    iput-object p2, p0, Lo/removeForwardSlashesIn$9;->val$path:Lo/ExecutorUtils$2;

    iput-object p3, p0, Lo/removeForwardSlashesIn$9;->val$newData:Lo/LogFileManager$DirectoryProvider;

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

    .line 299
    invoke-virtual {p0}, Lo/removeForwardSlashesIn$9;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final call()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lo/Utils;",
            ">;"
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lo/removeForwardSlashesIn$9;->this$0:Lo/removeForwardSlashesIn;

    invoke-static {v0}, Lo/removeForwardSlashesIn;->access$200(Lo/removeForwardSlashesIn;)Lo/NativeSessionFileGzipper;

    move-result-object v0

    iget-object v1, p0, Lo/removeForwardSlashesIn$9;->val$path:Lo/ExecutorUtils$2;

    invoke-static {v1}, Lo/lambda$awaitEvenIfOnMainThread$0;->defaultQueryAtPath(Lo/ExecutorUtils$2;)Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object v1

    iget-object v2, p0, Lo/removeForwardSlashesIn$9;->val$newData:Lo/LogFileManager$DirectoryProvider;

    invoke-interface {v0, v1, v2}, Lo/NativeSessionFileGzipper;->updateServerCache(Lo/lambda$awaitEvenIfOnMainThread$0;Lo/LogFileManager$DirectoryProvider;)V

    .line 303
    iget-object v0, p0, Lo/removeForwardSlashesIn$9;->this$0:Lo/removeForwardSlashesIn;

    new-instance v1, Lo/keysDataToJson;

    sget-object v2, Lo/valueOrNull;->SERVER:Lo/valueOrNull;

    iget-object v3, p0, Lo/removeForwardSlashesIn$9;->val$path:Lo/ExecutorUtils$2;

    iget-object v4, p0, Lo/removeForwardSlashesIn$9;->val$newData:Lo/LogFileManager$DirectoryProvider;

    invoke-direct {v1, v2, v3, v4}, Lo/keysDataToJson;-><init>(Lo/valueOrNull;Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)V

    invoke-static {v0, v1}, Lo/removeForwardSlashesIn;->access$400(Lo/removeForwardSlashesIn;Lo/getKeysFileForSession;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
