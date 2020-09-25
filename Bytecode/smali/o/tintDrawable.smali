.class public final enum Lo/tintDrawable;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/tintDrawable;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/tintDrawable;

.field private static enum onMessageChannelReady:Lo/tintDrawable;

.field private static final synthetic onNavigationEvent:[Lo/tintDrawable;

.field private static enum onPostMessage:Lo/tintDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 8
    new-instance v0, Lo/tintDrawable;

    const/4 v1, 0x0

    const-string v2, "LOW"

    invoke-direct {v0, v2, v1}, Lo/tintDrawable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/tintDrawable;->onMessageChannelReady:Lo/tintDrawable;

    .line 10
    new-instance v0, Lo/tintDrawable;

    const/4 v2, 0x1

    const-string v3, "NORMAL"

    invoke-direct {v0, v3, v2}, Lo/tintDrawable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/tintDrawable;->ICustomTabsCallback:Lo/tintDrawable;

    .line 15
    new-instance v0, Lo/tintDrawable;

    const/4 v3, 0x2

    const-string v4, "HIGH"

    invoke-direct {v0, v4, v3}, Lo/tintDrawable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/tintDrawable;->onPostMessage:Lo/tintDrawable;

    const/4 v4, 0x3

    new-array v4, v4, [Lo/tintDrawable;

    .line 4
    sget-object v5, Lo/tintDrawable;->onMessageChannelReady:Lo/tintDrawable;

    aput-object v5, v4, v1

    sget-object v1, Lo/tintDrawable;->ICustomTabsCallback:Lo/tintDrawable;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lo/tintDrawable;->onNavigationEvent:[Lo/tintDrawable;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/tintDrawable;
    .locals 1

    .line 4
    const-class v0, Lo/tintDrawable;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/tintDrawable;

    return-object p0
.end method

.method public static values()[Lo/tintDrawable;
    .locals 1

    .line 4
    sget-object v0, Lo/tintDrawable;->onNavigationEvent:[Lo/tintDrawable;

    invoke-virtual {v0}, [Lo/tintDrawable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/tintDrawable;

    return-object v0
.end method
