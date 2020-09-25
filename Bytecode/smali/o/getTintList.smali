.class public final enum Lo/getTintList;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/getTintList;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ICustomTabsCallback:[Lo/getTintList;

.field public static final enum extraCallback:Lo/getTintList;

.field public static final enum onMessageChannelReady:Lo/getTintList;

.field public static final enum onNavigationEvent:Lo/getTintList;

.field public static final enum onPostMessage:Lo/getTintList;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 9
    new-instance v0, Lo/getTintList;

    const/4 v1, 0x0

    const-string v2, "IMMEDIATE"

    invoke-direct {v0, v2, v1}, Lo/getTintList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getTintList;->onMessageChannelReady:Lo/getTintList;

    .line 10
    new-instance v0, Lo/getTintList;

    const/4 v2, 0x1

    const-string v3, "HIGH"

    invoke-direct {v0, v3, v2}, Lo/getTintList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getTintList;->onPostMessage:Lo/getTintList;

    .line 11
    new-instance v0, Lo/getTintList;

    const/4 v3, 0x2

    const-string v4, "NORMAL"

    invoke-direct {v0, v4, v3}, Lo/getTintList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getTintList;->extraCallback:Lo/getTintList;

    .line 12
    new-instance v0, Lo/getTintList;

    const/4 v4, 0x3

    const-string v5, "LOW"

    invoke-direct {v0, v5, v4}, Lo/getTintList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getTintList;->onNavigationEvent:Lo/getTintList;

    const/4 v5, 0x4

    new-array v5, v5, [Lo/getTintList;

    .line 8
    sget-object v6, Lo/getTintList;->onMessageChannelReady:Lo/getTintList;

    aput-object v6, v5, v1

    sget-object v1, Lo/getTintList;->onPostMessage:Lo/getTintList;

    aput-object v1, v5, v2

    sget-object v1, Lo/getTintList;->extraCallback:Lo/getTintList;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lo/getTintList;->ICustomTabsCallback:[Lo/getTintList;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/getTintList;
    .locals 1

    .line 8
    const-class v0, Lo/getTintList;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/getTintList;

    return-object p0
.end method

.method public static values()[Lo/getTintList;
    .locals 1

    .line 8
    sget-object v0, Lo/getTintList;->ICustomTabsCallback:[Lo/getTintList;

    invoke-virtual {v0}, [Lo/getTintList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/getTintList;

    return-object v0
.end method
