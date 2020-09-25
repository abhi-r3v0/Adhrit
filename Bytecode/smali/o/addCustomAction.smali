.class public final enum Lo/addCustomAction;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/addCustomAction;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/addCustomAction;

.field private static final synthetic ICustomTabsCallback$Stub:[Lo/addCustomAction;

.field public static final enum extraCallback:Lo/addCustomAction;

.field public static final enum onMessageChannelReady:Lo/addCustomAction;

.field public static final enum onNavigationEvent:Lo/addCustomAction;

.field public static final enum onPostMessage:Lo/addCustomAction;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 28
    new-instance v0, Lo/addCustomAction;

    const/4 v1, 0x0

    const-string v2, "NOT_REQUIRED"

    invoke-direct {v0, v2, v1}, Lo/addCustomAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/addCustomAction;->onNavigationEvent:Lo/addCustomAction;

    .line 33
    new-instance v0, Lo/addCustomAction;

    const/4 v2, 0x1

    const-string v3, "CONNECTED"

    invoke-direct {v0, v3, v2}, Lo/addCustomAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/addCustomAction;->onPostMessage:Lo/addCustomAction;

    .line 38
    new-instance v0, Lo/addCustomAction;

    const/4 v3, 0x2

    const-string v4, "UNMETERED"

    invoke-direct {v0, v4, v3}, Lo/addCustomAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/addCustomAction;->extraCallback:Lo/addCustomAction;

    .line 43
    new-instance v0, Lo/addCustomAction;

    const/4 v4, 0x3

    const-string v5, "NOT_ROAMING"

    invoke-direct {v0, v5, v4}, Lo/addCustomAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/addCustomAction;->onMessageChannelReady:Lo/addCustomAction;

    .line 48
    new-instance v0, Lo/addCustomAction;

    const/4 v5, 0x4

    const-string v6, "METERED"

    invoke-direct {v0, v6, v5}, Lo/addCustomAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/addCustomAction;->ICustomTabsCallback:Lo/addCustomAction;

    const/4 v6, 0x5

    new-array v6, v6, [Lo/addCustomAction;

    .line 23
    sget-object v7, Lo/addCustomAction;->onNavigationEvent:Lo/addCustomAction;

    aput-object v7, v6, v1

    sget-object v1, Lo/addCustomAction;->onPostMessage:Lo/addCustomAction;

    aput-object v1, v6, v2

    sget-object v1, Lo/addCustomAction;->extraCallback:Lo/addCustomAction;

    aput-object v1, v6, v3

    sget-object v1, Lo/addCustomAction;->onMessageChannelReady:Lo/addCustomAction;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lo/addCustomAction;->ICustomTabsCallback$Stub:[Lo/addCustomAction;

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

.method public static valueOf(Ljava/lang/String;)Lo/addCustomAction;
    .locals 1

    .line 23
    const-class v0, Lo/addCustomAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/addCustomAction;

    return-object p0
.end method

.method public static values()[Lo/addCustomAction;
    .locals 1

    .line 23
    sget-object v0, Lo/addCustomAction;->ICustomTabsCallback$Stub:[Lo/addCustomAction;

    invoke-virtual {v0}, [Lo/addCustomAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/addCustomAction;

    return-object v0
.end method
