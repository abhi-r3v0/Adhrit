.class final Lo/DefaultItemAnimator$onTransact$onPostMessage;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DefaultItemAnimator$onTransact;->extraCallback(I)V
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
.field private synthetic extraCallback:Lo/DefaultItemAnimator$onTransact;

.field private synthetic onPostMessage:I


# direct methods
.method constructor <init>(Lo/DefaultItemAnimator$onTransact;I)V
    .locals 0

    iput-object p1, p0, Lo/DefaultItemAnimator$onTransact$onPostMessage;->extraCallback:Lo/DefaultItemAnimator$onTransact;

    iput p2, p0, Lo/DefaultItemAnimator$onTransact$onPostMessage;->onPostMessage:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 5

    .line 1295
    iget-object v0, p0, Lo/DefaultItemAnimator$onTransact$onPostMessage;->extraCallback:Lo/DefaultItemAnimator$onTransact;

    iget-object v0, v0, Lo/DefaultItemAnimator$onTransact;->onPostMessage:Lo/DefaultItemAnimator;

    invoke-static {v0}, Lo/DefaultItemAnimator;->onRelationshipValidationResult(Lo/DefaultItemAnimator;)Lo/isSmoothScrolling;

    move-result-object v0

    iget v1, p0, Lo/DefaultItemAnimator$onTransact$onPostMessage;->onPostMessage:I

    .line 2072
    iget-object v2, v0, Lo/isSmoothScrolling;->ICustomTabsCallback:Lo/setActive;

    .line 2320
    iget-object v2, v2, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object v3, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v4

    .line 2072
    :goto_0
    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_1

    check-cast v2, Ljava/util/Collection;

    const-string v3, "$this$toMutableList"

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3246
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v4, v3

    check-cast v4, Ljava/util/List;

    :cond_1
    if-nez v4, :cond_2

    .line 2072
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 2073
    :cond_2
    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2074
    iget-object v0, v0, Lo/isSmoothScrolling;->ICustomTabsCallback:Lo/setActive;

    invoke-virtual {v0, v4}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 291
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
