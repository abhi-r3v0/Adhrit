.class public final enum Lo/getProgress$onMessageChannelReady;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/getProgress$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum extraCallback:Lo/getProgress$onMessageChannelReady;

.field private static final synthetic onMessageChannelReady:[Lo/getProgress$onMessageChannelReady;

.field public static final enum onNavigationEvent:Lo/getProgress$onMessageChannelReady;

.field public static final enum onPostMessage:Lo/getProgress$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 21
    new-instance v0, Lo/getProgress$onMessageChannelReady;

    const/4 v1, 0x0

    const-string v2, "DISPOSE_DO_NOT"

    invoke-direct {v0, v2, v1}, Lo/getProgress$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getProgress$onMessageChannelReady;->onNavigationEvent:Lo/getProgress$onMessageChannelReady;

    .line 24
    new-instance v0, Lo/getProgress$onMessageChannelReady;

    const/4 v2, 0x1

    const-string v3, "DISPOSE_TO_BACKGROUND"

    invoke-direct {v0, v3, v2}, Lo/getProgress$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getProgress$onMessageChannelReady;->extraCallback:Lo/getProgress$onMessageChannelReady;

    .line 27
    new-instance v0, Lo/getProgress$onMessageChannelReady;

    const/4 v3, 0x2

    const-string v4, "DISPOSE_TO_PREVIOUS"

    invoke-direct {v0, v4, v3}, Lo/getProgress$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getProgress$onMessageChannelReady;->onPostMessage:Lo/getProgress$onMessageChannelReady;

    const/4 v4, 0x3

    new-array v4, v4, [Lo/getProgress$onMessageChannelReady;

    .line 18
    sget-object v5, Lo/getProgress$onMessageChannelReady;->onNavigationEvent:Lo/getProgress$onMessageChannelReady;

    aput-object v5, v4, v1

    sget-object v1, Lo/getProgress$onMessageChannelReady;->extraCallback:Lo/getProgress$onMessageChannelReady;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lo/getProgress$onMessageChannelReady;->onMessageChannelReady:[Lo/getProgress$onMessageChannelReady;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/getProgress$onMessageChannelReady;
    .locals 1

    .line 18
    const-class v0, Lo/getProgress$onMessageChannelReady;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/getProgress$onMessageChannelReady;

    return-object p0
.end method

.method public static values()[Lo/getProgress$onMessageChannelReady;
    .locals 1

    .line 18
    sget-object v0, Lo/getProgress$onMessageChannelReady;->onMessageChannelReady:[Lo/getProgress$onMessageChannelReady;

    invoke-virtual {v0}, [Lo/getProgress$onMessageChannelReady;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/getProgress$onMessageChannelReady;

    return-object v0
.end method
