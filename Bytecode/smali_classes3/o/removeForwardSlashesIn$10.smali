.class final Lo/removeForwardSlashesIn$10;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/removeForwardSlashesIn;->removeAllWrites()Ljava/util/List;
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


# direct methods
.method constructor <init>(Lo/removeForwardSlashesIn;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lo/removeForwardSlashesIn$10;->this$0:Lo/removeForwardSlashesIn;

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

    .line 280
    invoke-virtual {p0}, Lo/removeForwardSlashesIn$10;->call()Ljava/util/List;

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

    .line 283
    iget-object v0, p0, Lo/removeForwardSlashesIn$10;->this$0:Lo/removeForwardSlashesIn;

    invoke-static {v0}, Lo/removeForwardSlashesIn;->access$200(Lo/removeForwardSlashesIn;)Lo/NativeSessionFileGzipper;

    move-result-object v0

    invoke-interface {v0}, Lo/NativeSessionFileGzipper;->removeAllUserWrites()V

    .line 284
    iget-object v0, p0, Lo/removeForwardSlashesIn$10;->this$0:Lo/removeForwardSlashesIn;

    invoke-static {v0}, Lo/removeForwardSlashesIn;->access$300(Lo/removeForwardSlashesIn;)Lo/writeUserData;

    move-result-object v0

    invoke-virtual {v0}, Lo/writeUserData;->purgeAllWrites()Ljava/util/List;

    move-result-object v0

    .line 285
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 288
    :cond_0
    new-instance v0, Lo/persistFatalEvent;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lo/persistFatalEvent;-><init>(Ljava/lang/Object;)V

    .line 289
    iget-object v1, p0, Lo/removeForwardSlashesIn$10;->this$0:Lo/removeForwardSlashesIn;

    new-instance v2, Lo/getUserDataFileForSession;

    .line 290
    invoke-static {}, Lo/ExecutorUtils$2;->getEmptyPath()Lo/ExecutorUtils$2;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v0, v4}, Lo/getUserDataFileForSession;-><init>(Lo/ExecutorUtils$2;Lo/persistFatalEvent;Z)V

    .line 289
    invoke-static {v1, v2}, Lo/removeForwardSlashesIn;->access$400(Lo/removeForwardSlashesIn;Lo/getKeysFileForSession;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
