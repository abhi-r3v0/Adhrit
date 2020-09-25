.class public final enum Lo/getFirstChildPosition;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/getFirstChildPosition;",
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
        "Lcom/dreamplug/widget/State;",
        "",
        "(Ljava/lang/String;I)V",
        "COLLAPSED",
        "EXPANDED",
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
.field public static final enum extraCallback:Lo/getFirstChildPosition;

.field private static final synthetic onNavigationEvent:[Lo/getFirstChildPosition;

.field public static final enum onPostMessage:Lo/getFirstChildPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lo/getFirstChildPosition;

    new-instance v1, Lo/getFirstChildPosition;

    const/4 v2, 0x0

    const-string v3, "COLLAPSED"

    invoke-direct {v1, v3, v2}, Lo/getFirstChildPosition;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lo/getFirstChildPosition;->extraCallback:Lo/getFirstChildPosition;

    aput-object v1, v0, v2

    new-instance v1, Lo/getFirstChildPosition;

    const/4 v2, 0x1

    const-string v3, "EXPANDED"

    invoke-direct {v1, v3, v2}, Lo/getFirstChildPosition;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lo/getFirstChildPosition;->onPostMessage:Lo/getFirstChildPosition;

    aput-object v1, v0, v2

    sput-object v0, Lo/getFirstChildPosition;->onNavigationEvent:[Lo/getFirstChildPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 176
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/getFirstChildPosition;
    .locals 1

    const-class v0, Lo/getFirstChildPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/getFirstChildPosition;

    return-object p0
.end method

.method public static values()[Lo/getFirstChildPosition;
    .locals 1

    sget-object v0, Lo/getFirstChildPosition;->onNavigationEvent:[Lo/getFirstChildPosition;

    invoke-virtual {v0}, [Lo/getFirstChildPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/getFirstChildPosition;

    return-object v0
.end method
