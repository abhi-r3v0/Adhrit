.class public final enum Lo/onRequestResult;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/onRequestResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ICustomTabsCallback:[Lo/onRequestResult;

.field private static enum extraCallback:Lo/onRequestResult;

.field private static enum onMessageChannelReady:Lo/onRequestResult;

.field private static enum onNavigationEvent:Lo/onRequestResult;

.field public static final enum onPostMessage:Lo/onRequestResult;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 23
    new-instance v0, Lo/onRequestResult;

    const/4 v1, 0x0

    const-string v2, "SPDY_SYN_STREAM"

    invoke-direct {v0, v2, v1}, Lo/onRequestResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/onRequestResult;->extraCallback:Lo/onRequestResult;

    .line 24
    new-instance v0, Lo/onRequestResult;

    const/4 v2, 0x1

    const-string v3, "SPDY_REPLY"

    invoke-direct {v0, v3, v2}, Lo/onRequestResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/onRequestResult;->onNavigationEvent:Lo/onRequestResult;

    .line 25
    new-instance v0, Lo/onRequestResult;

    const/4 v3, 0x2

    const-string v4, "SPDY_HEADERS"

    invoke-direct {v0, v4, v3}, Lo/onRequestResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/onRequestResult;->onMessageChannelReady:Lo/onRequestResult;

    .line 26
    new-instance v0, Lo/onRequestResult;

    const/4 v4, 0x3

    const-string v5, "HTTP_20_HEADERS"

    invoke-direct {v0, v5, v4}, Lo/onRequestResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/onRequestResult;->onPostMessage:Lo/onRequestResult;

    const/4 v5, 0x4

    new-array v5, v5, [Lo/onRequestResult;

    .line 22
    sget-object v6, Lo/onRequestResult;->extraCallback:Lo/onRequestResult;

    aput-object v6, v5, v1

    sget-object v1, Lo/onRequestResult;->onNavigationEvent:Lo/onRequestResult;

    aput-object v1, v5, v2

    sget-object v1, Lo/onRequestResult;->onMessageChannelReady:Lo/onRequestResult;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lo/onRequestResult;->ICustomTabsCallback:[Lo/onRequestResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/onRequestResult;
    .locals 1

    .line 22
    const-class v0, Lo/onRequestResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/onRequestResult;

    return-object p0
.end method

.method public static values()[Lo/onRequestResult;
    .locals 1

    .line 22
    sget-object v0, Lo/onRequestResult;->ICustomTabsCallback:[Lo/onRequestResult;

    invoke-virtual {v0}, [Lo/onRequestResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/onRequestResult;

    return-object v0
.end method
