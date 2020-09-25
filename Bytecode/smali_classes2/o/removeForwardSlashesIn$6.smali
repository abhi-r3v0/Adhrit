.class final Lo/removeForwardSlashesIn$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/removeForwardSlashesIn;->applyUserMerge(Lo/ExecutorUtils$2;Lo/ExecutorUtils$1$1;Lo/ExecutorUtils$1$1;JZ)Ljava/util/List;
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

.field final synthetic val$children:Lo/ExecutorUtils$1$1;

.field final synthetic val$path:Lo/ExecutorUtils$2;

.field final synthetic val$persist:Z

.field final synthetic val$unresolvedChildren:Lo/ExecutorUtils$1$1;

.field final synthetic val$writeId:J


# direct methods
.method constructor <init>(Lo/removeForwardSlashesIn;ZLo/ExecutorUtils$2;Lo/ExecutorUtils$1$1;JLo/ExecutorUtils$1$1;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lo/removeForwardSlashesIn$6;->this$0:Lo/removeForwardSlashesIn;

    iput-boolean p2, p0, Lo/removeForwardSlashesIn$6;->val$persist:Z

    iput-object p3, p0, Lo/removeForwardSlashesIn$6;->val$path:Lo/ExecutorUtils$2;

    iput-object p4, p0, Lo/removeForwardSlashesIn$6;->val$unresolvedChildren:Lo/ExecutorUtils$1$1;

    iput-wide p5, p0, Lo/removeForwardSlashesIn$6;->val$writeId:J

    iput-object p7, p0, Lo/removeForwardSlashesIn$6;->val$children:Lo/ExecutorUtils$1$1;

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

    .line 214
    invoke-virtual {p0}, Lo/removeForwardSlashesIn$6;->call()Ljava/util/List;

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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 217
    iget-boolean v0, p0, Lo/removeForwardSlashesIn$6;->val$persist:Z

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lo/removeForwardSlashesIn$6;->this$0:Lo/removeForwardSlashesIn;

    invoke-static {v0}, Lo/removeForwardSlashesIn;->access$200(Lo/removeForwardSlashesIn;)Lo/NativeSessionFileGzipper;

    move-result-object v0

    iget-object v1, p0, Lo/removeForwardSlashesIn$6;->val$path:Lo/ExecutorUtils$2;

    iget-object v2, p0, Lo/removeForwardSlashesIn$6;->val$unresolvedChildren:Lo/ExecutorUtils$1$1;

    iget-wide v3, p0, Lo/removeForwardSlashesIn$6;->val$writeId:J

    invoke-interface {v0, v1, v2, v3, v4}, Lo/NativeSessionFileGzipper;->saveUserMerge(Lo/ExecutorUtils$2;Lo/ExecutorUtils$1$1;J)V

    .line 220
    :cond_0
    iget-object v0, p0, Lo/removeForwardSlashesIn$6;->this$0:Lo/removeForwardSlashesIn;

    invoke-static {v0}, Lo/removeForwardSlashesIn;->access$300(Lo/removeForwardSlashesIn;)Lo/writeUserData;

    move-result-object v0

    iget-object v1, p0, Lo/removeForwardSlashesIn$6;->val$path:Lo/ExecutorUtils$2;

    iget-object v2, p0, Lo/removeForwardSlashesIn$6;->val$children:Lo/ExecutorUtils$1$1;

    iget-wide v3, p0, Lo/removeForwardSlashesIn$6;->val$writeId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lo/writeUserData;->addMerge(Lo/ExecutorUtils$2;Lo/ExecutorUtils$1$1;Ljava/lang/Long;)V

    .line 222
    iget-object v0, p0, Lo/removeForwardSlashesIn$6;->this$0:Lo/removeForwardSlashesIn;

    new-instance v1, Lo/readKeyData;

    sget-object v2, Lo/valueOrNull;->USER:Lo/valueOrNull;

    iget-object v3, p0, Lo/removeForwardSlashesIn$6;->val$path:Lo/ExecutorUtils$2;

    iget-object v4, p0, Lo/removeForwardSlashesIn$6;->val$children:Lo/ExecutorUtils$1$1;

    invoke-direct {v1, v2, v3, v4}, Lo/readKeyData;-><init>(Lo/valueOrNull;Lo/ExecutorUtils$2;Lo/ExecutorUtils$1$1;)V

    invoke-static {v0, v1}, Lo/removeForwardSlashesIn;->access$400(Lo/removeForwardSlashesIn;Lo/getKeysFileForSession;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
