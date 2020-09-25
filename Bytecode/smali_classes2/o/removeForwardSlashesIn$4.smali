.class final Lo/removeForwardSlashesIn$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/removeForwardSlashesIn;->applyUserOverwrite(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;Lo/LogFileManager$DirectoryProvider;JZZ)Ljava/util/List;
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

.field final synthetic val$newDataUnresolved:Lo/LogFileManager$DirectoryProvider;

.field final synthetic val$path:Lo/ExecutorUtils$2;

.field final synthetic val$persist:Z

.field final synthetic val$visible:Z

.field final synthetic val$writeId:J


# direct methods
.method constructor <init>(Lo/removeForwardSlashesIn;ZLo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;JLo/LogFileManager$DirectoryProvider;Z)V
    .locals 0

    .line 189
    iput-object p1, p0, Lo/removeForwardSlashesIn$4;->this$0:Lo/removeForwardSlashesIn;

    iput-boolean p2, p0, Lo/removeForwardSlashesIn$4;->val$persist:Z

    iput-object p3, p0, Lo/removeForwardSlashesIn$4;->val$path:Lo/ExecutorUtils$2;

    iput-object p4, p0, Lo/removeForwardSlashesIn$4;->val$newDataUnresolved:Lo/LogFileManager$DirectoryProvider;

    iput-wide p5, p0, Lo/removeForwardSlashesIn$4;->val$writeId:J

    iput-object p7, p0, Lo/removeForwardSlashesIn$4;->val$newData:Lo/LogFileManager$DirectoryProvider;

    iput-boolean p8, p0, Lo/removeForwardSlashesIn$4;->val$visible:Z

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

    .line 189
    invoke-virtual {p0}, Lo/removeForwardSlashesIn$4;->call()Ljava/util/List;

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

    .line 192
    iget-boolean v0, p0, Lo/removeForwardSlashesIn$4;->val$persist:Z

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lo/removeForwardSlashesIn$4;->this$0:Lo/removeForwardSlashesIn;

    invoke-static {v0}, Lo/removeForwardSlashesIn;->access$200(Lo/removeForwardSlashesIn;)Lo/NativeSessionFileGzipper;

    move-result-object v0

    iget-object v1, p0, Lo/removeForwardSlashesIn$4;->val$path:Lo/ExecutorUtils$2;

    iget-object v2, p0, Lo/removeForwardSlashesIn$4;->val$newDataUnresolved:Lo/LogFileManager$DirectoryProvider;

    iget-wide v3, p0, Lo/removeForwardSlashesIn$4;->val$writeId:J

    invoke-interface {v0, v1, v2, v3, v4}, Lo/NativeSessionFileGzipper;->saveUserOverwrite(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;J)V

    .line 196
    :cond_0
    iget-object v0, p0, Lo/removeForwardSlashesIn$4;->this$0:Lo/removeForwardSlashesIn;

    invoke-static {v0}, Lo/removeForwardSlashesIn;->access$300(Lo/removeForwardSlashesIn;)Lo/writeUserData;

    move-result-object v0

    iget-object v1, p0, Lo/removeForwardSlashesIn$4;->val$path:Lo/ExecutorUtils$2;

    iget-object v2, p0, Lo/removeForwardSlashesIn$4;->val$newData:Lo/LogFileManager$DirectoryProvider;

    iget-wide v3, p0, Lo/removeForwardSlashesIn$4;->val$writeId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-boolean v4, p0, Lo/removeForwardSlashesIn$4;->val$visible:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lo/writeUserData;->addOverwrite(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;Ljava/lang/Long;Z)V

    .line 197
    iget-boolean v0, p0, Lo/removeForwardSlashesIn$4;->val$visible:Z

    if-nez v0, :cond_1

    .line 198
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 200
    :cond_1
    iget-object v0, p0, Lo/removeForwardSlashesIn$4;->this$0:Lo/removeForwardSlashesIn;

    new-instance v1, Lo/keysDataToJson;

    sget-object v2, Lo/valueOrNull;->USER:Lo/valueOrNull;

    iget-object v3, p0, Lo/removeForwardSlashesIn$4;->val$path:Lo/ExecutorUtils$2;

    iget-object v4, p0, Lo/removeForwardSlashesIn$4;->val$newData:Lo/LogFileManager$DirectoryProvider;

    invoke-direct {v1, v2, v3, v4}, Lo/keysDataToJson;-><init>(Lo/valueOrNull;Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)V

    invoke-static {v0, v1}, Lo/removeForwardSlashesIn;->access$400(Lo/removeForwardSlashesIn;Lo/getKeysFileForSession;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
