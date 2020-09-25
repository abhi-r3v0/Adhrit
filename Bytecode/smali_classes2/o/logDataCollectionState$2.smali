.class final Lo/logDataCollectionState$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/logDataCollectionState$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/logDataCollectionState;->sendListen(Lo/logDataCollectionState$extraCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lo/logDataCollectionState;

.field final synthetic val$listen:Lo/logDataCollectionState$extraCallback;


# direct methods
.method constructor <init>(Lo/logDataCollectionState;Lo/logDataCollectionState$extraCallback;)V
    .locals 0

    .line 1081
    iput-object p1, p0, Lo/logDataCollectionState$2;->this$0:Lo/logDataCollectionState;

    iput-object p2, p0, Lo/logDataCollectionState$2;->val$listen:Lo/logDataCollectionState$extraCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "s"

    .line 1085
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "ok"

    .line 1087
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "d"

    if-eqz v2, :cond_0

    .line 1090
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v4, "w"

    .line 1091
    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1093
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1094
    iget-object v4, p0, Lo/logDataCollectionState$2;->this$0:Lo/logDataCollectionState;

    iget-object v5, p0, Lo/logDataCollectionState$2;->val$listen:Lo/logDataCollectionState$extraCallback;

    invoke-static {v5}, Lo/logDataCollectionState$extraCallback;->access$900(Lo/logDataCollectionState$extraCallback;)Lo/logDataCollectionState$onPostMessage;

    move-result-object v5

    invoke-static {v4, v2, v5}, Lo/logDataCollectionState;->access$2300(Lo/logDataCollectionState;Ljava/util/List;Lo/logDataCollectionState$onPostMessage;)V

    .line 1098
    :cond_0
    iget-object v2, p0, Lo/logDataCollectionState$2;->this$0:Lo/logDataCollectionState;

    invoke-static {v2}, Lo/logDataCollectionState;->access$2400(Lo/logDataCollectionState;)Ljava/util/Map;

    move-result-object v2

    iget-object v4, p0, Lo/logDataCollectionState$2;->val$listen:Lo/logDataCollectionState$extraCallback;

    invoke-virtual {v4}, Lo/logDataCollectionState$extraCallback;->getQuery()Lo/logDataCollectionState$onPostMessage;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/logDataCollectionState$extraCallback;

    .line 1100
    iget-object v4, p0, Lo/logDataCollectionState$2;->val$listen:Lo/logDataCollectionState$extraCallback;

    if-ne v2, v4, :cond_2

    .line 1101
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1102
    iget-object v1, p0, Lo/logDataCollectionState$2;->this$0:Lo/logDataCollectionState;

    iget-object v2, p0, Lo/logDataCollectionState$2;->val$listen:Lo/logDataCollectionState$extraCallback;

    invoke-virtual {v2}, Lo/logDataCollectionState$extraCallback;->getQuery()Lo/logDataCollectionState$onPostMessage;

    move-result-object v2

    invoke-static {v1, v2}, Lo/logDataCollectionState;->access$2500(Lo/logDataCollectionState;Lo/logDataCollectionState$onPostMessage;)Lo/logDataCollectionState$extraCallback;

    .line 1103
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1104
    iget-object v1, p0, Lo/logDataCollectionState$2;->val$listen:Lo/logDataCollectionState$extraCallback;

    invoke-static {v1}, Lo/logDataCollectionState$extraCallback;->access$1200(Lo/logDataCollectionState$extraCallback;)Lo/getDataCollectionValueFromManifest;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lo/getDataCollectionValueFromManifest;->onRequestResult(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1106
    :cond_1
    iget-object p1, p0, Lo/logDataCollectionState$2;->val$listen:Lo/logDataCollectionState$extraCallback;

    invoke-static {p1}, Lo/logDataCollectionState$extraCallback;->access$1200(Lo/logDataCollectionState$extraCallback;)Lo/getDataCollectionValueFromManifest;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0}, Lo/getDataCollectionValueFromManifest;->onRequestResult(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
