.class final Lo/removeForwardSlashesIn$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/removeForwardSlashesIn;->applyTaggedQueryMerge(Lo/ExecutorUtils$2;Ljava/util/Map;Lo/InstallerPackageNameProvider;)Ljava/util/List;
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

.field final synthetic val$changedChildren:Ljava/util/Map;

.field final synthetic val$path:Lo/ExecutorUtils$2;

.field final synthetic val$tag:Lo/InstallerPackageNameProvider;


# direct methods
.method constructor <init>(Lo/removeForwardSlashesIn;Lo/InstallerPackageNameProvider;Lo/ExecutorUtils$2;Ljava/util/Map;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lo/removeForwardSlashesIn$3;->this$0:Lo/removeForwardSlashesIn;

    iput-object p2, p0, Lo/removeForwardSlashesIn$3;->val$tag:Lo/InstallerPackageNameProvider;

    iput-object p3, p0, Lo/removeForwardSlashesIn$3;->val$path:Lo/ExecutorUtils$2;

    iput-object p4, p0, Lo/removeForwardSlashesIn$3;->val$changedChildren:Ljava/util/Map;

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

    .line 437
    invoke-virtual {p0}, Lo/removeForwardSlashesIn$3;->call()Ljava/util/List;

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

    .line 440
    iget-object v0, p0, Lo/removeForwardSlashesIn$3;->this$0:Lo/removeForwardSlashesIn;

    iget-object v1, p0, Lo/removeForwardSlashesIn$3;->val$tag:Lo/InstallerPackageNameProvider;

    invoke-static {v0, v1}, Lo/removeForwardSlashesIn;->access$500(Lo/removeForwardSlashesIn;Lo/InstallerPackageNameProvider;)Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {v0}, Lo/lambda$awaitEvenIfOnMainThread$0;->getPath()Lo/ExecutorUtils$2;

    move-result-object v1

    iget-object v2, p0, Lo/removeForwardSlashesIn$3;->val$path:Lo/ExecutorUtils$2;

    invoke-static {v1, v2}, Lo/ExecutorUtils$2;->getRelative(Lo/ExecutorUtils$2;Lo/ExecutorUtils$2;)Lo/ExecutorUtils$2;

    move-result-object v1

    .line 443
    iget-object v2, p0, Lo/removeForwardSlashesIn$3;->val$changedChildren:Ljava/util/Map;

    invoke-static {v2}, Lo/ExecutorUtils$1$1;->fromPathMerge(Ljava/util/Map;)Lo/ExecutorUtils$1$1;

    move-result-object v2

    .line 444
    iget-object v3, p0, Lo/removeForwardSlashesIn$3;->this$0:Lo/removeForwardSlashesIn;

    invoke-static {v3}, Lo/removeForwardSlashesIn;->access$200(Lo/removeForwardSlashesIn;)Lo/NativeSessionFileGzipper;

    move-result-object v3

    iget-object v4, p0, Lo/removeForwardSlashesIn$3;->val$path:Lo/ExecutorUtils$2;

    invoke-interface {v3, v4, v2}, Lo/NativeSessionFileGzipper;->updateServerCache(Lo/ExecutorUtils$2;Lo/ExecutorUtils$1$1;)V

    .line 445
    new-instance v3, Lo/readKeyData;

    .line 447
    invoke-virtual {v0}, Lo/lambda$awaitEvenIfOnMainThread$0;->getParams()Lo/recursiveDelete;

    move-result-object v4

    invoke-static {v4}, Lo/valueOrNull;->forServerTaggedQuery(Lo/recursiveDelete;)Lo/valueOrNull;

    move-result-object v4

    invoke-direct {v3, v4, v1, v2}, Lo/readKeyData;-><init>(Lo/valueOrNull;Lo/ExecutorUtils$2;Lo/ExecutorUtils$1$1;)V

    .line 448
    iget-object v1, p0, Lo/removeForwardSlashesIn$3;->this$0:Lo/removeForwardSlashesIn;

    invoke-static {v1, v0, v3}, Lo/removeForwardSlashesIn;->access$600(Lo/removeForwardSlashesIn;Lo/lambda$awaitEvenIfOnMainThread$0;Lo/getKeysFileForSession;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 451
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
