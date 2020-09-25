.class public final Lo/calculateDxToMakeVisible;
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/EarnCoins;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GamePlayerViewEffects;",
        "()V",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final extraCallback:Lo/calculateDxToMakeVisible;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 103
    new-instance v0, Lo/calculateDxToMakeVisible;

    invoke-direct {v0}, Lo/calculateDxToMakeVisible;-><init>()V

    sput-object v0, Lo/calculateDxToMakeVisible;->extraCallback:Lo/calculateDxToMakeVisible;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, v0}, Lo/calculateDistanceToFinalSnap;-><init>(B)V

    return-void
.end method
