.class final Lo/capFileCount$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/capFileCount;->raiseEvents(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lo/capFileCount;

.field final synthetic val$eventsClone:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lo/capFileCount;Ljava/util/ArrayList;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lo/capFileCount$4;->this$0:Lo/capFileCount;

    iput-object p2, p0, Lo/capFileCount$4;->val$eventsClone:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 51
    iget-object v0, p0, Lo/capFileCount$4;->val$eventsClone:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Utils;

    .line 52
    iget-object v2, p0, Lo/capFileCount$4;->this$0:Lo/capFileCount;

    invoke-static {v2}, Lo/capFileCount;->access$000(Lo/capFileCount;)Lo/FileLogStore;

    move-result-object v2

    invoke-virtual {v2}, Lo/FileLogStore;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    iget-object v2, p0, Lo/capFileCount$4;->this$0:Lo/capFileCount;

    invoke-static {v2}, Lo/capFileCount;->access$000(Lo/capFileCount;)Lo/FileLogStore;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Raising "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lo/Utils;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    :cond_0
    invoke-interface {v1}, Lo/Utils;->fire()V

    goto :goto_0

    :cond_1
    return-void
.end method
