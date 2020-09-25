.class public final Lo/onLayoutComplete;
.super Lo/computeDistancePerChild;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0017\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/OnCreateEvent;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GamePlayerViewEvent;",
        "gameId",
        "",
        "dataModel",
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GamePlayerDataModel;",
        "(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GamePlayerDataModel;)V",
        "getDataModel",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GamePlayerDataModel;",
        "getGameId",
        "()Ljava/lang/String;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final extraCallback:Lo/estimateNextPositionDiffForFling;

.field final onPostMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/estimateNextPositionDiffForFling;)V
    .locals 1

    const-string v0, "dataModel"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lo/computeDistancePerChild;-><init>(B)V

    iput-object p1, p0, Lo/onLayoutComplete;->onPostMessage:Ljava/lang/String;

    iput-object p2, p0, Lo/onLayoutComplete;->extraCallback:Lo/estimateNextPositionDiffForFling;

    return-void
.end method
