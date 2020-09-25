.class public final Lo/findCenterView;
.super Lo/calculateDistanceToFinalSnap;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/HandleGameCta;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GamePlayerViewEffects;",
        "cta",
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;",
        "(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;)V",
        "getCta",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;",
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
.field public final extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;


# direct methods
.method public constructor <init>(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;)V
    .locals 1

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, v0}, Lo/calculateDistanceToFinalSnap;-><init>(B)V

    iput-object p1, p0, Lo/findCenterView;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;

    return-void
.end method
