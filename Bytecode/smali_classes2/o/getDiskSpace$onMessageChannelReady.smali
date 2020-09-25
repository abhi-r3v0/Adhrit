.class public final enum Lo/getDiskSpace$onMessageChannelReady;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getDiskSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/getDiskSpace$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lo/getDiskSpace$onMessageChannelReady;

.field public static final enum LOCAL:Lo/getDiskSpace$onMessageChannelReady;

.field public static final enum NONE:Lo/getDiskSpace$onMessageChannelReady;

.field public static final enum SYNCED:Lo/getDiskSpace$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 29
    new-instance v0, Lo/getDiskSpace$onMessageChannelReady;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lo/getDiskSpace$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getDiskSpace$onMessageChannelReady;->NONE:Lo/getDiskSpace$onMessageChannelReady;

    .line 30
    new-instance v0, Lo/getDiskSpace$onMessageChannelReady;

    const/4 v2, 0x1

    const-string v3, "LOCAL"

    invoke-direct {v0, v3, v2}, Lo/getDiskSpace$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getDiskSpace$onMessageChannelReady;->LOCAL:Lo/getDiskSpace$onMessageChannelReady;

    .line 31
    new-instance v0, Lo/getDiskSpace$onMessageChannelReady;

    const/4 v3, 0x2

    const-string v4, "SYNCED"

    invoke-direct {v0, v4, v3}, Lo/getDiskSpace$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getDiskSpace$onMessageChannelReady;->SYNCED:Lo/getDiskSpace$onMessageChannelReady;

    const/4 v4, 0x3

    new-array v4, v4, [Lo/getDiskSpace$onMessageChannelReady;

    .line 28
    sget-object v5, Lo/getDiskSpace$onMessageChannelReady;->NONE:Lo/getDiskSpace$onMessageChannelReady;

    aput-object v5, v4, v1

    sget-object v1, Lo/getDiskSpace$onMessageChannelReady;->LOCAL:Lo/getDiskSpace$onMessageChannelReady;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lo/getDiskSpace$onMessageChannelReady;->$VALUES:[Lo/getDiskSpace$onMessageChannelReady;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/getDiskSpace$onMessageChannelReady;
    .locals 1

    .line 28
    const-class v0, Lo/getDiskSpace$onMessageChannelReady;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/getDiskSpace$onMessageChannelReady;

    return-object p0
.end method

.method public static values()[Lo/getDiskSpace$onMessageChannelReady;
    .locals 1

    .line 28
    sget-object v0, Lo/getDiskSpace$onMessageChannelReady;->$VALUES:[Lo/getDiskSpace$onMessageChannelReady;

    invoke-virtual {v0}, [Lo/getDiskSpace$onMessageChannelReady;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/getDiskSpace$onMessageChannelReady;

    return-object v0
.end method
