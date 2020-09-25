.class public final enum Lo/isRelevant$onMessageChannelReady;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isRelevant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/isRelevant$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lo/isRelevant$onMessageChannelReady;

.field public static final enum BAD_CONFIG:Lo/isRelevant$onMessageChannelReady;

.field public static final enum OK:Lo/isRelevant$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 27
    new-instance v0, Lo/isRelevant$onMessageChannelReady;

    const/4 v1, 0x0

    const-string v2, "OK"

    invoke-direct {v0, v2, v1}, Lo/isRelevant$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/isRelevant$onMessageChannelReady;->OK:Lo/isRelevant$onMessageChannelReady;

    .line 30
    new-instance v0, Lo/isRelevant$onMessageChannelReady;

    const/4 v2, 0x1

    const-string v3, "BAD_CONFIG"

    invoke-direct {v0, v3, v2}, Lo/isRelevant$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/isRelevant$onMessageChannelReady;->BAD_CONFIG:Lo/isRelevant$onMessageChannelReady;

    const/4 v3, 0x2

    new-array v3, v3, [Lo/isRelevant$onMessageChannelReady;

    .line 25
    sget-object v4, Lo/isRelevant$onMessageChannelReady;->OK:Lo/isRelevant$onMessageChannelReady;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lo/isRelevant$onMessageChannelReady;->$VALUES:[Lo/isRelevant$onMessageChannelReady;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/isRelevant$onMessageChannelReady;
    .locals 1

    .line 25
    const-class v0, Lo/isRelevant$onMessageChannelReady;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/isRelevant$onMessageChannelReady;

    return-object p0
.end method

.method public static values()[Lo/isRelevant$onMessageChannelReady;
    .locals 1

    .line 25
    sget-object v0, Lo/isRelevant$onMessageChannelReady;->$VALUES:[Lo/isRelevant$onMessageChannelReady;

    invoke-virtual {v0}, [Lo/isRelevant$onMessageChannelReady;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/isRelevant$onMessageChannelReady;

    return-object v0
.end method
