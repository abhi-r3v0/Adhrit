.class public final enum Lo/getQueryHint;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/getQueryHint;",
        ">;"
    }
.end annotation


# static fields
.field private static enum ICustomTabsCallback:Lo/getQueryHint;

.field private static enum extraCallback:Lo/getQueryHint;

.field private static final synthetic onMessageChannelReady:[Lo/getQueryHint;

.field public static final enum onNavigationEvent:Lo/getQueryHint;

.field private static enum onPostMessage:Lo/getQueryHint;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 4
    new-instance v0, Lo/getQueryHint;

    const/4 v1, 0x0

    const-string v2, "ALPHANUM18"

    invoke-direct {v0, v2, v1}, Lo/getQueryHint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getQueryHint;->extraCallback:Lo/getQueryHint;

    .line 5
    new-instance v0, Lo/getQueryHint;

    const/4 v2, 0x1

    const-string v3, "BEACON"

    invoke-direct {v0, v3, v2}, Lo/getQueryHint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getQueryHint;->onPostMessage:Lo/getQueryHint;

    .line 6
    new-instance v0, Lo/getQueryHint;

    const/4 v3, 0x2

    const-string v4, "HBEACON"

    invoke-direct {v0, v4, v3}, Lo/getQueryHint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getQueryHint;->ICustomTabsCallback:Lo/getQueryHint;

    .line 7
    new-instance v0, Lo/getQueryHint;

    const/4 v4, 0x3

    const-string v5, "GENERIC"

    invoke-direct {v0, v5, v4}, Lo/getQueryHint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getQueryHint;->onNavigationEvent:Lo/getQueryHint;

    const/4 v5, 0x4

    new-array v5, v5, [Lo/getQueryHint;

    .line 3
    sget-object v6, Lo/getQueryHint;->extraCallback:Lo/getQueryHint;

    aput-object v6, v5, v1

    sget-object v1, Lo/getQueryHint;->onPostMessage:Lo/getQueryHint;

    aput-object v1, v5, v2

    sget-object v1, Lo/getQueryHint;->ICustomTabsCallback:Lo/getQueryHint;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lo/getQueryHint;->onMessageChannelReady:[Lo/getQueryHint;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/getQueryHint;
    .locals 1

    .line 3
    const-class v0, Lo/getQueryHint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/getQueryHint;

    return-object p0
.end method

.method public static values()[Lo/getQueryHint;
    .locals 1

    .line 3
    sget-object v0, Lo/getQueryHint;->onMessageChannelReady:[Lo/getQueryHint;

    invoke-virtual {v0}, [Lo/getQueryHint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/getQueryHint;

    return-object v0
.end method
