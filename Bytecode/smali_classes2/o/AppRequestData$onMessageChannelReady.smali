.class public enum Lo/AppRequestData$onMessageChannelReady;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AppRequestData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/AppRequestData$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ICustomTabsCallback:[Lo/AppRequestData$onMessageChannelReady;

.field private static enum extraCallback:Lo/AppRequestData$onMessageChannelReady;

.field public static final enum onMessageChannelReady:Lo/AppRequestData$onMessageChannelReady;

.field public static final enum onPostMessage:Lo/AppRequestData$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 99
    new-instance v0, Lo/AppRequestData$onMessageChannelReady$1;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1}, Lo/AppRequestData$onMessageChannelReady$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/AppRequestData$onMessageChannelReady;->extraCallback:Lo/AppRequestData$onMessageChannelReady;

    .line 105
    new-instance v0, Lo/AppRequestData$onMessageChannelReady$4;

    const-string v1, "MINI"

    invoke-direct {v0, v1}, Lo/AppRequestData$onMessageChannelReady$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/AppRequestData$onMessageChannelReady;->onPostMessage:Lo/AppRequestData$onMessageChannelReady;

    .line 111
    new-instance v0, Lo/AppRequestData$onMessageChannelReady$3;

    const-string v1, "TAKEOVER"

    invoke-direct {v0, v1}, Lo/AppRequestData$onMessageChannelReady$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/AppRequestData$onMessageChannelReady;->onMessageChannelReady:Lo/AppRequestData$onMessageChannelReady;

    const/4 v1, 0x3

    new-array v1, v1, [Lo/AppRequestData$onMessageChannelReady;

    .line 98
    sget-object v2, Lo/AppRequestData$onMessageChannelReady;->extraCallback:Lo/AppRequestData$onMessageChannelReady;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lo/AppRequestData$onMessageChannelReady;->onPostMessage:Lo/AppRequestData$onMessageChannelReady;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lo/AppRequestData$onMessageChannelReady;->ICustomTabsCallback:[Lo/AppRequestData$onMessageChannelReady;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2}, Lo/AppRequestData$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/AppRequestData$onMessageChannelReady;
    .locals 1

    .line 98
    const-class v0, Lo/AppRequestData$onMessageChannelReady;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/AppRequestData$onMessageChannelReady;

    return-object p0
.end method

.method public static values()[Lo/AppRequestData$onMessageChannelReady;
    .locals 1

    .line 98
    sget-object v0, Lo/AppRequestData$onMessageChannelReady;->ICustomTabsCallback:[Lo/AppRequestData$onMessageChannelReady;

    invoke-virtual {v0}, [Lo/AppRequestData$onMessageChannelReady;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/AppRequestData$onMessageChannelReady;

    return-object v0
.end method
