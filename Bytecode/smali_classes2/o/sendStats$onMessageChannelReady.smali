.class final enum Lo/sendStats$onMessageChannelReady;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/sendStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/sendStats$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum onMessageChannelReady:Lo/sendStats$onMessageChannelReady;

.field public static final enum onNavigationEvent:Lo/sendStats$onMessageChannelReady;

.field private static final synthetic onPostMessage:[Lo/sendStats$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 65
    new-instance v0, Lo/sendStats$onMessageChannelReady;

    const/4 v1, 0x0

    const-string v2, "TLS"

    invoke-direct {v0, v2, v1}, Lo/sendStats$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/sendStats$onMessageChannelReady;->onNavigationEvent:Lo/sendStats$onMessageChannelReady;

    .line 71
    new-instance v0, Lo/sendStats$onMessageChannelReady;

    const/4 v2, 0x1

    const-string v3, "PLAINTEXT"

    invoke-direct {v0, v3, v2}, Lo/sendStats$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/sendStats$onMessageChannelReady;->onMessageChannelReady:Lo/sendStats$onMessageChannelReady;

    const/4 v3, 0x2

    new-array v3, v3, [Lo/sendStats$onMessageChannelReady;

    .line 63
    sget-object v4, Lo/sendStats$onMessageChannelReady;->onNavigationEvent:Lo/sendStats$onMessageChannelReady;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lo/sendStats$onMessageChannelReady;->onPostMessage:[Lo/sendStats$onMessageChannelReady;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/sendStats$onMessageChannelReady;
    .locals 1

    .line 63
    const-class v0, Lo/sendStats$onMessageChannelReady;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/sendStats$onMessageChannelReady;

    return-object p0
.end method

.method public static values()[Lo/sendStats$onMessageChannelReady;
    .locals 1

    .line 63
    sget-object v0, Lo/sendStats$onMessageChannelReady;->onPostMessage:[Lo/sendStats$onMessageChannelReady;

    invoke-virtual {v0}, [Lo/sendStats$onMessageChannelReady;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/sendStats$onMessageChannelReady;

    return-object v0
.end method
