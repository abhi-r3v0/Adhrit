.class public final enum Lo/getCurrentTimeMillis$onMessageChannelReady;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCurrentTimeMillis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/getCurrentTimeMillis$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lo/getCurrentTimeMillis$onMessageChannelReady;

.field public static final enum BLACK:Lo/getCurrentTimeMillis$onMessageChannelReady;

.field public static final enum RED:Lo/getCurrentTimeMillis$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 37
    new-instance v0, Lo/getCurrentTimeMillis$onMessageChannelReady;

    const/4 v1, 0x0

    const-string v2, "RED"

    invoke-direct {v0, v2, v1}, Lo/getCurrentTimeMillis$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getCurrentTimeMillis$onMessageChannelReady;->RED:Lo/getCurrentTimeMillis$onMessageChannelReady;

    .line 38
    new-instance v0, Lo/getCurrentTimeMillis$onMessageChannelReady;

    const/4 v2, 0x1

    const-string v3, "BLACK"

    invoke-direct {v0, v3, v2}, Lo/getCurrentTimeMillis$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getCurrentTimeMillis$onMessageChannelReady;->BLACK:Lo/getCurrentTimeMillis$onMessageChannelReady;

    const/4 v3, 0x2

    new-array v3, v3, [Lo/getCurrentTimeMillis$onMessageChannelReady;

    .line 36
    sget-object v4, Lo/getCurrentTimeMillis$onMessageChannelReady;->RED:Lo/getCurrentTimeMillis$onMessageChannelReady;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lo/getCurrentTimeMillis$onMessageChannelReady;->$VALUES:[Lo/getCurrentTimeMillis$onMessageChannelReady;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/getCurrentTimeMillis$onMessageChannelReady;
    .locals 1

    .line 36
    const-class v0, Lo/getCurrentTimeMillis$onMessageChannelReady;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/getCurrentTimeMillis$onMessageChannelReady;

    return-object p0
.end method

.method public static values()[Lo/getCurrentTimeMillis$onMessageChannelReady;
    .locals 1

    .line 36
    sget-object v0, Lo/getCurrentTimeMillis$onMessageChannelReady;->$VALUES:[Lo/getCurrentTimeMillis$onMessageChannelReady;

    invoke-virtual {v0}, [Lo/getCurrentTimeMillis$onMessageChannelReady;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/getCurrentTimeMillis$onMessageChannelReady;

    return-object v0
.end method
