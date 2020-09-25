.class public final enum Lo/setType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/setType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/setType;

.field private static enum asInterface:Lo/setType;

.field public static final enum extraCallback:Lo/setType;

.field public static final enum onMessageChannelReady:Lo/setType;

.field public static final enum onNavigationEvent:Lo/setType;

.field public static final enum onPostMessage:Lo/setType;

.field private static final synthetic onTransact:[Lo/setType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 4
    new-instance v0, Lo/setType;

    const/4 v1, 0x0

    const-string v2, "BINARY"

    invoke-direct {v0, v2, v1}, Lo/setType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setType;->onMessageChannelReady:Lo/setType;

    new-instance v0, Lo/setType;

    const/4 v2, 0x1

    const-string v3, "NUMERIC"

    invoke-direct {v0, v3, v2}, Lo/setType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setType;->onPostMessage:Lo/setType;

    new-instance v0, Lo/setType;

    const/4 v3, 0x2

    const-string v4, "TEXT"

    invoke-direct {v0, v4, v3}, Lo/setType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setType;->ICustomTabsCallback:Lo/setType;

    new-instance v0, Lo/setType;

    const/4 v4, 0x3

    const-string v5, "MIXED"

    invoke-direct {v0, v5, v4}, Lo/setType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setType;->onNavigationEvent:Lo/setType;

    new-instance v0, Lo/setType;

    const/4 v5, 0x4

    const-string v6, "DOL"

    invoke-direct {v0, v6, v5}, Lo/setType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setType;->extraCallback:Lo/setType;

    new-instance v0, Lo/setType;

    const/4 v6, 0x5

    const-string v7, "TEMPLATE"

    invoke-direct {v0, v7, v6}, Lo/setType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setType;->asInterface:Lo/setType;

    const/4 v7, 0x6

    new-array v7, v7, [Lo/setType;

    .line 3
    sget-object v8, Lo/setType;->onMessageChannelReady:Lo/setType;

    aput-object v8, v7, v1

    sget-object v1, Lo/setType;->onPostMessage:Lo/setType;

    aput-object v1, v7, v2

    sget-object v1, Lo/setType;->ICustomTabsCallback:Lo/setType;

    aput-object v1, v7, v3

    sget-object v1, Lo/setType;->onNavigationEvent:Lo/setType;

    aput-object v1, v7, v4

    sget-object v1, Lo/setType;->extraCallback:Lo/setType;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lo/setType;->onTransact:[Lo/setType;

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

.method public static valueOf(Ljava/lang/String;)Lo/setType;
    .locals 1

    .line 3
    const-class v0, Lo/setType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/setType;

    return-object p0
.end method

.method public static values()[Lo/setType;
    .locals 1

    .line 3
    sget-object v0, Lo/setType;->onTransact:[Lo/setType;

    invoke-virtual {v0}, [Lo/setType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/setType;

    return-object v0
.end method
