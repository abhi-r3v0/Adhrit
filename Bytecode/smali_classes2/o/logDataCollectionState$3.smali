.class final Lo/logDataCollectionState$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/logDataCollectionState$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/logDataCollectionState;->sendPut(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lo/logDataCollectionState;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$onComplete:Lo/getDataCollectionValueFromManifest;

.field final synthetic val$put:Lo/logDataCollectionState$asInterface;

.field final synthetic val$putId:J


# direct methods
.method constructor <init>(Lo/logDataCollectionState;Ljava/lang/String;JLo/logDataCollectionState$asInterface;Lo/getDataCollectionValueFromManifest;)V
    .locals 0

    .line 1024
    iput-object p1, p0, Lo/logDataCollectionState$3;->this$0:Lo/logDataCollectionState;

    iput-object p2, p0, Lo/logDataCollectionState$3;->val$action:Ljava/lang/String;

    iput-wide p3, p0, Lo/logDataCollectionState$3;->val$putId:J

    iput-object p5, p0, Lo/logDataCollectionState$3;->val$put:Lo/logDataCollectionState$asInterface;

    iput-object p6, p0, Lo/logDataCollectionState$3;->val$onComplete:Lo/getDataCollectionValueFromManifest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1027
    iget-object v0, p0, Lo/logDataCollectionState$3;->this$0:Lo/logDataCollectionState;

    invoke-static {v0}, Lo/logDataCollectionState;->access$400(Lo/logDataCollectionState;)Lo/FileLogStore;

    move-result-object v0

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/logDataCollectionState$3;->this$0:Lo/logDataCollectionState;

    invoke-static {v0}, Lo/logDataCollectionState;->access$400(Lo/logDataCollectionState;)Lo/FileLogStore;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lo/logDataCollectionState$3;->val$action:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1029
    :cond_0
    iget-object v0, p0, Lo/logDataCollectionState$3;->this$0:Lo/logDataCollectionState;

    invoke-static {v0}, Lo/logDataCollectionState;->access$2100(Lo/logDataCollectionState;)Ljava/util/Map;

    move-result-object v0

    iget-wide v2, p0, Lo/logDataCollectionState$3;->val$putId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/logDataCollectionState$asInterface;

    .line 1030
    iget-object v2, p0, Lo/logDataCollectionState$3;->val$put:Lo/logDataCollectionState$asInterface;

    if-ne v0, v2, :cond_2

    .line 1031
    iget-object v0, p0, Lo/logDataCollectionState$3;->this$0:Lo/logDataCollectionState;

    invoke-static {v0}, Lo/logDataCollectionState;->access$2100(Lo/logDataCollectionState;)Ljava/util/Map;

    move-result-object v0

    iget-wide v1, p0, Lo/logDataCollectionState$3;->val$putId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    iget-object v0, p0, Lo/logDataCollectionState$3;->val$onComplete:Lo/getDataCollectionValueFromManifest;

    if-eqz v0, :cond_3

    const-string v0, "s"

    .line 1034
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "ok"

    .line 1035
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1036
    iget-object p1, p0, Lo/logDataCollectionState$3;->val$onComplete:Lo/getDataCollectionValueFromManifest;

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0}, Lo/getDataCollectionValueFromManifest;->onRequestResult(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "d"

    .line 1038
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1039
    iget-object v1, p0, Lo/logDataCollectionState$3;->val$onComplete:Lo/getDataCollectionValueFromManifest;

    invoke-interface {v1, v0, p1}, Lo/getDataCollectionValueFromManifest;->onRequestResult(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1043
    :cond_2
    iget-object p1, p0, Lo/logDataCollectionState$3;->this$0:Lo/logDataCollectionState;

    invoke-static {p1}, Lo/logDataCollectionState;->access$400(Lo/logDataCollectionState;)Lo/FileLogStore;

    move-result-object p1

    invoke-virtual {p1}, Lo/FileLogStore;->logsDebug()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1044
    iget-object p1, p0, Lo/logDataCollectionState$3;->this$0:Lo/logDataCollectionState;

    invoke-static {p1}, Lo/logDataCollectionState;->access$400(Lo/logDataCollectionState;)Lo/FileLogStore;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Ignoring on complete for put "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lo/logDataCollectionState$3;->val$putId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " because it was removed already."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1047
    :cond_3
    :goto_0
    iget-object p1, p0, Lo/logDataCollectionState$3;->this$0:Lo/logDataCollectionState;

    invoke-static {p1}, Lo/logDataCollectionState;->access$2200(Lo/logDataCollectionState;)V

    return-void
.end method
