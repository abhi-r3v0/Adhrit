.class final enum Lo/eR;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/eR;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/eR;

.field private static final synthetic ICustomTabsCallback$Stub:[Lo/eR;

.field public static final enum onMessageChannelReady:Lo/eR;

.field public static final enum onNavigationEvent:Lo/eR;

.field public static final enum onPostMessage:Lo/eR;


# instance fields
.field private final extraCallback:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 5
    new-instance v0, Lo/eR;

    const/4 v1, 0x0

    const-string v2, "SCALAR"

    invoke-direct {v0, v2, v1, v1}, Lo/eR;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lo/eR;->ICustomTabsCallback:Lo/eR;

    .line 6
    new-instance v0, Lo/eR;

    const/4 v2, 0x1

    const-string v3, "VECTOR"

    invoke-direct {v0, v3, v2, v2}, Lo/eR;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lo/eR;->onPostMessage:Lo/eR;

    .line 7
    new-instance v0, Lo/eR;

    const/4 v3, 0x2

    const-string v4, "PACKED_VECTOR"

    invoke-direct {v0, v4, v3, v2}, Lo/eR;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lo/eR;->onNavigationEvent:Lo/eR;

    .line 8
    new-instance v0, Lo/eR;

    const/4 v4, 0x3

    const-string v5, "MAP"

    invoke-direct {v0, v5, v4, v1}, Lo/eR;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lo/eR;->onMessageChannelReady:Lo/eR;

    const/4 v5, 0x4

    new-array v5, v5, [Lo/eR;

    .line 9
    sget-object v6, Lo/eR;->ICustomTabsCallback:Lo/eR;

    aput-object v6, v5, v1

    sget-object v1, Lo/eR;->onPostMessage:Lo/eR;

    aput-object v1, v5, v2

    sget-object v1, Lo/eR;->onNavigationEvent:Lo/eR;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lo/eR;->ICustomTabsCallback$Stub:[Lo/eR;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-boolean p3, p0, Lo/eR;->extraCallback:Z

    return-void
.end method

.method public static values()[Lo/eR;
    .locals 1

    .line 1
    sget-object v0, Lo/eR;->ICustomTabsCallback$Stub:[Lo/eR;

    invoke-virtual {v0}, [Lo/eR;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/eR;

    return-object v0
.end method
