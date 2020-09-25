.class final Lo/allocateRequestIndex$warmup;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/allocateRequestIndex;->onMessageChannelReady(Lo/getAllowReturnTransitionOverlap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/addWrites;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/allocateRequestIndex;


# direct methods
.method constructor <init>(Lo/allocateRequestIndex;)V
    .locals 0

    iput-object p1, p0, Lo/allocateRequestIndex$warmup;->onMessageChannelReady:Lo/allocateRequestIndex;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 6

    .line 1191
    iget-object v0, p0, Lo/allocateRequestIndex$warmup;->onMessageChannelReady:Lo/allocateRequestIndex;

    const/4 v1, 0x1

    new-array v2, v1, [Lo/addWrite;

    .line 2043
    new-instance v3, Lo/addWrite;

    const-string v4, "action"

    const-string v5, "permission"

    invoke-direct {v3, v4, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "pairs"

    .line 1191
    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2105
    new-instance v3, Ljava/util/HashMap;

    invoke-static {v1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v3, Ljava/util/Map;

    invoke-static {v3, v2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v1, "cm_unbilled_farm_cta_click"

    .line 1191
    invoke-virtual {v0, v1, v3}, Lo/allocateRequestIndex;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1193
    iget-object v0, p0, Lo/allocateRequestIndex$warmup;->onMessageChannelReady:Lo/allocateRequestIndex;

    invoke-static {v0}, Lo/allocateRequestIndex;->onTransact(Lo/allocateRequestIndex;)V

    .line 53
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
