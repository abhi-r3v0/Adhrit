.class final Lo/logDataCollectionState$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/logDataCollectionState$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/logDataCollectionState;->sendOnDisconnect(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lo/getDataCollectionValueFromManifest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lo/logDataCollectionState;

.field final synthetic val$onComplete:Lo/getDataCollectionValueFromManifest;


# direct methods
.method constructor <init>(Lo/logDataCollectionState;Lo/getDataCollectionValueFromManifest;)V
    .locals 0

    .line 684
    iput-object p1, p0, Lo/logDataCollectionState$4;->this$0:Lo/logDataCollectionState;

    iput-object p2, p0, Lo/logDataCollectionState$4;->val$onComplete:Lo/getDataCollectionValueFromManifest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/util/Map;)V
    .locals 3
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

    .line 687
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "ok"

    .line 690
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "d"

    .line 692
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 694
    :goto_0
    iget-object p1, p0, Lo/logDataCollectionState$4;->val$onComplete:Lo/getDataCollectionValueFromManifest;

    if-eqz p1, :cond_1

    .line 695
    invoke-interface {p1, v0, v2}, Lo/getDataCollectionValueFromManifest;->onRequestResult(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
