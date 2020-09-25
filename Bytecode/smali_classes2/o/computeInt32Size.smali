.class public abstract enum Lo/computeInt32Size;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/computeInt32Size;",
        ">;"
    }
.end annotation


# static fields
.field private static enum extraCallback:Lo/computeInt32Size;

.field private static final synthetic onMessageChannelReady:[Lo/computeInt32Size;

.field public static final enum onPostMessage:Lo/computeInt32Size;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 34
    new-instance v0, Lo/computeInt32Size$3;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1}, Lo/computeInt32Size$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/computeInt32Size;->onPostMessage:Lo/computeInt32Size;

    .line 45
    new-instance v0, Lo/computeInt32Size$5;

    const-string v1, "STRING"

    invoke-direct {v0, v1}, Lo/computeInt32Size$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/computeInt32Size;->extraCallback:Lo/computeInt32Size;

    const/4 v1, 0x2

    new-array v1, v1, [Lo/computeInt32Size;

    .line 27
    sget-object v2, Lo/computeInt32Size;->onPostMessage:Lo/computeInt32Size;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lo/computeInt32Size;->onMessageChannelReady:[Lo/computeInt32Size;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lo/computeInt32Size;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/computeInt32Size;
    .locals 1

    .line 27
    const-class v0, Lo/computeInt32Size;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/computeInt32Size;

    return-object p0
.end method

.method public static values()[Lo/computeInt32Size;
    .locals 1

    .line 27
    sget-object v0, Lo/computeInt32Size;->onMessageChannelReady:[Lo/computeInt32Size;

    invoke-virtual {v0}, [Lo/computeInt32Size;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/computeInt32Size;

    return-object v0
.end method
