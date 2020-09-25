.class final Lo/removeForwardSlashesIn$14;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/removeForwardSlashesIn;->applyTaggedListenComplete(Lo/InstallerPackageNameProvider;)Ljava/util/List;
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

.field final synthetic val$tag:Lo/InstallerPackageNameProvider;


# direct methods
.method constructor <init>(Lo/removeForwardSlashesIn;Lo/InstallerPackageNameProvider;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lo/removeForwardSlashesIn$14;->this$0:Lo/removeForwardSlashesIn;

    iput-object p2, p0, Lo/removeForwardSlashesIn$14;->val$tag:Lo/InstallerPackageNameProvider;

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

    .line 382
    invoke-virtual {p0}, Lo/removeForwardSlashesIn$14;->call()Ljava/util/List;

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

    .line 385
    iget-object v0, p0, Lo/removeForwardSlashesIn$14;->this$0:Lo/removeForwardSlashesIn;

    iget-object v1, p0, Lo/removeForwardSlashesIn$14;->val$tag:Lo/InstallerPackageNameProvider;

    invoke-static {v0, v1}, Lo/removeForwardSlashesIn;->access$500(Lo/removeForwardSlashesIn;Lo/InstallerPackageNameProvider;)Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v1, p0, Lo/removeForwardSlashesIn$14;->this$0:Lo/removeForwardSlashesIn;

    invoke-static {v1}, Lo/removeForwardSlashesIn;->access$200(Lo/removeForwardSlashesIn;)Lo/NativeSessionFileGzipper;

    move-result-object v1

    invoke-interface {v1, v0}, Lo/NativeSessionFileGzipper;->setQueryComplete(Lo/lambda$awaitEvenIfOnMainThread$0;)V

    .line 388
    new-instance v1, Lo/jsonToUserData;

    .line 390
    invoke-virtual {v0}, Lo/lambda$awaitEvenIfOnMainThread$0;->getParams()Lo/recursiveDelete;

    move-result-object v2

    invoke-static {v2}, Lo/valueOrNull;->forServerTaggedQuery(Lo/recursiveDelete;)Lo/valueOrNull;

    move-result-object v2

    invoke-static {}, Lo/ExecutorUtils$2;->getEmptyPath()Lo/ExecutorUtils$2;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lo/jsonToUserData;-><init>(Lo/valueOrNull;Lo/ExecutorUtils$2;)V

    .line 391
    iget-object v2, p0, Lo/removeForwardSlashesIn$14;->this$0:Lo/removeForwardSlashesIn;

    invoke-static {v2, v0, v1}, Lo/removeForwardSlashesIn;->access$600(Lo/removeForwardSlashesIn;Lo/lambda$awaitEvenIfOnMainThread$0;Lo/getKeysFileForSession;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 394
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
