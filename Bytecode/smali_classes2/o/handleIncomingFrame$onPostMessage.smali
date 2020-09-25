.class final enum Lo/handleIncomingFrame$onPostMessage;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/handleIncomingFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/handleIncomingFrame$onPostMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static enum ICustomTabsCallback:Lo/handleIncomingFrame$onPostMessage;

.field public static final enum extraCallback:Lo/handleIncomingFrame$onPostMessage;

.field private static enum onMessageChannelReady:Lo/handleIncomingFrame$onPostMessage;

.field private static final synthetic onNavigationEvent:[Lo/handleIncomingFrame$onPostMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 711
    new-instance v0, Lo/handleIncomingFrame$onPostMessage;

    const/4 v1, 0x0

    const-string v2, "BLOCKING"

    invoke-direct {v0, v2, v1}, Lo/handleIncomingFrame$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/handleIncomingFrame$onPostMessage;->ICustomTabsCallback:Lo/handleIncomingFrame$onPostMessage;

    new-instance v0, Lo/handleIncomingFrame$onPostMessage;

    const/4 v2, 0x1

    const-string v3, "FUTURE"

    invoke-direct {v0, v3, v2}, Lo/handleIncomingFrame$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/handleIncomingFrame$onPostMessage;->onMessageChannelReady:Lo/handleIncomingFrame$onPostMessage;

    new-instance v0, Lo/handleIncomingFrame$onPostMessage;

    const/4 v3, 0x2

    const-string v4, "ASYNC"

    invoke-direct {v0, v4, v3}, Lo/handleIncomingFrame$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/handleIncomingFrame$onPostMessage;->extraCallback:Lo/handleIncomingFrame$onPostMessage;

    const/4 v4, 0x3

    new-array v4, v4, [Lo/handleIncomingFrame$onPostMessage;

    .line 710
    sget-object v5, Lo/handleIncomingFrame$onPostMessage;->ICustomTabsCallback:Lo/handleIncomingFrame$onPostMessage;

    aput-object v5, v4, v1

    sget-object v1, Lo/handleIncomingFrame$onPostMessage;->onMessageChannelReady:Lo/handleIncomingFrame$onPostMessage;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lo/handleIncomingFrame$onPostMessage;->onNavigationEvent:[Lo/handleIncomingFrame$onPostMessage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 710
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/handleIncomingFrame$onPostMessage;
    .locals 1

    .line 710
    const-class v0, Lo/handleIncomingFrame$onPostMessage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/handleIncomingFrame$onPostMessage;

    return-object p0
.end method

.method public static values()[Lo/handleIncomingFrame$onPostMessage;
    .locals 1

    .line 710
    sget-object v0, Lo/handleIncomingFrame$onPostMessage;->onNavigationEvent:[Lo/handleIncomingFrame$onPostMessage;

    invoke-virtual {v0}, [Lo/handleIncomingFrame$onPostMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/handleIncomingFrame$onPostMessage;

    return-object v0
.end method
