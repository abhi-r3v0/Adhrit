.class final Lo/removeForwardSlashesIn$15;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/removeForwardSlashesIn;->applyServerMerge(Lo/ExecutorUtils$2;Ljava/util/Map;)Ljava/util/List;
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


# direct methods
.method constructor <init>(Lo/removeForwardSlashesIn;Ljava/util/Map;Lo/ExecutorUtils$2;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lo/removeForwardSlashesIn$15;->this$0:Lo/removeForwardSlashesIn;

    iput-object p2, p0, Lo/removeForwardSlashesIn$15;->val$changedChildren:Ljava/util/Map;

    iput-object p3, p0, Lo/removeForwardSlashesIn$15;->val$path:Lo/ExecutorUtils$2;

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

    .line 312
    invoke-virtual {p0}, Lo/removeForwardSlashesIn$15;->call()Ljava/util/List;

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

    .line 315
    iget-object v0, p0, Lo/removeForwardSlashesIn$15;->val$changedChildren:Ljava/util/Map;

    invoke-static {v0}, Lo/ExecutorUtils$1$1;->fromPathMerge(Ljava/util/Map;)Lo/ExecutorUtils$1$1;

    move-result-object v0

    .line 316
    iget-object v1, p0, Lo/removeForwardSlashesIn$15;->this$0:Lo/removeForwardSlashesIn;

    invoke-static {v1}, Lo/removeForwardSlashesIn;->access$200(Lo/removeForwardSlashesIn;)Lo/NativeSessionFileGzipper;

    move-result-object v1

    iget-object v2, p0, Lo/removeForwardSlashesIn$15;->val$path:Lo/ExecutorUtils$2;

    invoke-interface {v1, v2, v0}, Lo/NativeSessionFileGzipper;->updateServerCache(Lo/ExecutorUtils$2;Lo/ExecutorUtils$1$1;)V

    .line 317
    iget-object v1, p0, Lo/removeForwardSlashesIn$15;->this$0:Lo/removeForwardSlashesIn;

    new-instance v2, Lo/readKeyData;

    sget-object v3, Lo/valueOrNull;->SERVER:Lo/valueOrNull;

    iget-object v4, p0, Lo/removeForwardSlashesIn$15;->val$path:Lo/ExecutorUtils$2;

    invoke-direct {v2, v3, v4, v0}, Lo/readKeyData;-><init>(Lo/valueOrNull;Lo/ExecutorUtils$2;Lo/ExecutorUtils$1$1;)V

    invoke-static {v1, v2}, Lo/removeForwardSlashesIn;->access$400(Lo/removeForwardSlashesIn;Lo/getKeysFileForSession;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
