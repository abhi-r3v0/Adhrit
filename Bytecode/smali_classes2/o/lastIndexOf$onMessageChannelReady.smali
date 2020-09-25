.class public final enum Lo/lastIndexOf$onMessageChannelReady;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/lastIndexOf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/lastIndexOf$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lo/lastIndexOf$onMessageChannelReady;

.field public static final enum DEBUG:Lo/lastIndexOf$onMessageChannelReady;

.field public static final enum NONE:Lo/lastIndexOf$onMessageChannelReady;

.field public static final enum WARN:Lo/lastIndexOf$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 24
    new-instance v0, Lo/lastIndexOf$onMessageChannelReady;

    const/4 v1, 0x0

    const-string v2, "DEBUG"

    invoke-direct {v0, v2, v1}, Lo/lastIndexOf$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/lastIndexOf$onMessageChannelReady;->DEBUG:Lo/lastIndexOf$onMessageChannelReady;

    .line 25
    new-instance v0, Lo/lastIndexOf$onMessageChannelReady;

    const/4 v2, 0x1

    const-string v3, "WARN"

    invoke-direct {v0, v3, v2}, Lo/lastIndexOf$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/lastIndexOf$onMessageChannelReady;->WARN:Lo/lastIndexOf$onMessageChannelReady;

    .line 26
    new-instance v0, Lo/lastIndexOf$onMessageChannelReady;

    const/4 v3, 0x2

    const-string v4, "NONE"

    invoke-direct {v0, v4, v3}, Lo/lastIndexOf$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/lastIndexOf$onMessageChannelReady;->NONE:Lo/lastIndexOf$onMessageChannelReady;

    const/4 v4, 0x3

    new-array v4, v4, [Lo/lastIndexOf$onMessageChannelReady;

    .line 23
    sget-object v5, Lo/lastIndexOf$onMessageChannelReady;->DEBUG:Lo/lastIndexOf$onMessageChannelReady;

    aput-object v5, v4, v1

    sget-object v1, Lo/lastIndexOf$onMessageChannelReady;->WARN:Lo/lastIndexOf$onMessageChannelReady;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lo/lastIndexOf$onMessageChannelReady;->$VALUES:[Lo/lastIndexOf$onMessageChannelReady;

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

.method public static valueOf(Ljava/lang/String;)Lo/lastIndexOf$onMessageChannelReady;
    .locals 1

    .line 23
    const-class v0, Lo/lastIndexOf$onMessageChannelReady;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/lastIndexOf$onMessageChannelReady;

    return-object p0
.end method

.method public static values()[Lo/lastIndexOf$onMessageChannelReady;
    .locals 1

    .line 23
    sget-object v0, Lo/lastIndexOf$onMessageChannelReady;->$VALUES:[Lo/lastIndexOf$onMessageChannelReady;

    invoke-virtual {v0}, [Lo/lastIndexOf$onMessageChannelReady;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/lastIndexOf$onMessageChannelReady;

    return-object v0
.end method
