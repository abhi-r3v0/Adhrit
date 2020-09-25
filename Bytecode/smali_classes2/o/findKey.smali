.class public final enum Lo/findKey;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/findKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic extraCallback:[Lo/findKey;

.field public static final enum onMessageChannelReady:Lo/findKey;

.field private static enum onNavigationEvent:Lo/findKey;

.field public static final enum onPostMessage:Lo/findKey;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 27
    new-instance v0, Lo/findKey;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lo/findKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/findKey;->onPostMessage:Lo/findKey;

    .line 32
    new-instance v0, Lo/findKey;

    const/4 v2, 0x1

    const-string v3, "INTEGRITY"

    invoke-direct {v0, v3, v2}, Lo/findKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/findKey;->onNavigationEvent:Lo/findKey;

    .line 38
    new-instance v0, Lo/findKey;

    const/4 v3, 0x2

    const-string v4, "PRIVACY_AND_INTEGRITY"

    invoke-direct {v0, v4, v3}, Lo/findKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/findKey;->onMessageChannelReady:Lo/findKey;

    const/4 v4, 0x3

    new-array v4, v4, [Lo/findKey;

    .line 22
    sget-object v5, Lo/findKey;->onPostMessage:Lo/findKey;

    aput-object v5, v4, v1

    sget-object v1, Lo/findKey;->onNavigationEvent:Lo/findKey;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lo/findKey;->extraCallback:[Lo/findKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/findKey;
    .locals 1

    .line 22
    const-class v0, Lo/findKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/findKey;

    return-object p0
.end method

.method public static values()[Lo/findKey;
    .locals 1

    .line 22
    sget-object v0, Lo/findKey;->extraCallback:[Lo/findKey;

    invoke-virtual {v0}, [Lo/findKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/findKey;

    return-object v0
.end method
