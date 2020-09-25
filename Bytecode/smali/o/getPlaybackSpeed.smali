.class public final enum Lo/getPlaybackSpeed;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/getPlaybackSpeed;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic extraCallback:[Lo/getPlaybackSpeed;

.field public static final enum onNavigationEvent:Lo/getPlaybackSpeed;

.field public static final enum onPostMessage:Lo/getPlaybackSpeed;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 34
    new-instance v0, Lo/getPlaybackSpeed;

    const/4 v1, 0x0

    const-string v2, "EXPONENTIAL"

    invoke-direct {v0, v2, v1}, Lo/getPlaybackSpeed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getPlaybackSpeed;->onNavigationEvent:Lo/getPlaybackSpeed;

    .line 39
    new-instance v0, Lo/getPlaybackSpeed;

    const/4 v2, 0x1

    const-string v3, "LINEAR"

    invoke-direct {v0, v3, v2}, Lo/getPlaybackSpeed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getPlaybackSpeed;->onPostMessage:Lo/getPlaybackSpeed;

    const/4 v3, 0x2

    new-array v3, v3, [Lo/getPlaybackSpeed;

    .line 29
    sget-object v4, Lo/getPlaybackSpeed;->onNavigationEvent:Lo/getPlaybackSpeed;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lo/getPlaybackSpeed;->extraCallback:[Lo/getPlaybackSpeed;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/getPlaybackSpeed;
    .locals 1

    .line 29
    const-class v0, Lo/getPlaybackSpeed;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/getPlaybackSpeed;

    return-object p0
.end method

.method public static values()[Lo/getPlaybackSpeed;
    .locals 1

    .line 29
    sget-object v0, Lo/getPlaybackSpeed;->extraCallback:[Lo/getPlaybackSpeed;

    invoke-virtual {v0}, [Lo/getPlaybackSpeed;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/getPlaybackSpeed;

    return-object v0
.end method
