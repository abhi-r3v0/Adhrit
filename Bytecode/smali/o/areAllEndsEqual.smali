.class public final enum Lo/areAllEndsEqual;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/areAllEndsEqual;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/dreamplug/widget/Mode;",
        "",
        "(Ljava/lang/String;I)V",
        "DARK",
        "LIGHT",
        "widget_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final synthetic onMessageChannelReady:[Lo/areAllEndsEqual;

.field public static final enum onNavigationEvent:Lo/areAllEndsEqual;

.field public static final enum onPostMessage:Lo/areAllEndsEqual;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lo/areAllEndsEqual;

    new-instance v1, Lo/areAllEndsEqual;

    const/4 v2, 0x0

    const-string v3, "DARK"

    invoke-direct {v1, v3, v2}, Lo/areAllEndsEqual;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lo/areAllEndsEqual;->onNavigationEvent:Lo/areAllEndsEqual;

    aput-object v1, v0, v2

    new-instance v1, Lo/areAllEndsEqual;

    const/4 v2, 0x1

    const-string v3, "LIGHT"

    invoke-direct {v1, v3, v2}, Lo/areAllEndsEqual;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lo/areAllEndsEqual;->onPostMessage:Lo/areAllEndsEqual;

    aput-object v1, v0, v2

    sput-object v0, Lo/areAllEndsEqual;->onMessageChannelReady:[Lo/areAllEndsEqual;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 180
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/areAllEndsEqual;
    .locals 1

    const-class v0, Lo/areAllEndsEqual;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/areAllEndsEqual;

    return-object p0
.end method

.method public static values()[Lo/areAllEndsEqual;
    .locals 1

    sget-object v0, Lo/areAllEndsEqual;->onMessageChannelReady:[Lo/areAllEndsEqual;

    invoke-virtual {v0}, [Lo/areAllEndsEqual;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/areAllEndsEqual;

    return-object v0
.end method