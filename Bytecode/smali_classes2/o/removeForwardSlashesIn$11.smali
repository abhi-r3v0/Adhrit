.class final Lo/removeForwardSlashesIn$11;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/removeForwardSlashesIn;->applyListenComplete(Lo/ExecutorUtils$2;)Ljava/util/List;
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

.field final synthetic val$path:Lo/ExecutorUtils$2;


# direct methods
.method constructor <init>(Lo/removeForwardSlashesIn;Lo/ExecutorUtils$2;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lo/removeForwardSlashesIn$11;->this$0:Lo/removeForwardSlashesIn;

    iput-object p2, p0, Lo/removeForwardSlashesIn$11;->val$path:Lo/ExecutorUtils$2;

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

    .line 370
    invoke-virtual {p0}, Lo/removeForwardSlashesIn$11;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final call()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lo/Utils;",
            ">;"
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lo/removeForwardSlashesIn$11;->this$0:Lo/removeForwardSlashesIn;

    invoke-static {v0}, Lo/removeForwardSlashesIn;->access$200(Lo/removeForwardSlashesIn;)Lo/NativeSessionFileGzipper;

    move-result-object v0

    iget-object v1, p0, Lo/removeForwardSlashesIn$11;->val$path:Lo/ExecutorUtils$2;

    invoke-static {v1}, Lo/lambda$awaitEvenIfOnMainThread$0;->defaultQueryAtPath(Lo/ExecutorUtils$2;)Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/NativeSessionFileGzipper;->setQueryComplete(Lo/lambda$awaitEvenIfOnMainThread$0;)V

    .line 374
    iget-object v0, p0, Lo/removeForwardSlashesIn$11;->this$0:Lo/removeForwardSlashesIn;

    new-instance v1, Lo/jsonToUserData;

    sget-object v2, Lo/valueOrNull;->SERVER:Lo/valueOrNull;

    iget-object v3, p0, Lo/removeForwardSlashesIn$11;->val$path:Lo/ExecutorUtils$2;

    invoke-direct {v1, v2, v3}, Lo/jsonToUserData;-><init>(Lo/valueOrNull;Lo/ExecutorUtils$2;)V

    invoke-static {v0, v1}, Lo/removeForwardSlashesIn;->access$400(Lo/removeForwardSlashesIn;Lo/getKeysFileForSession;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
