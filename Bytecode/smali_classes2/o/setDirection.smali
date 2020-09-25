.class final enum Lo/setDirection;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/setDirection;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/setDirection;

.field private static final synthetic asInterface:[Lo/setDirection;

.field public static final enum onMessageChannelReady:Lo/setDirection;

.field public static final enum onNavigationEvent:Lo/setDirection;

.field public static final enum onPostMessage:Lo/setDirection;


# instance fields
.field private final extraCallback:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 5
    new-instance v0, Lo/setDirection;

    const/4 v1, 0x0

    const-string v2, "SCALAR"

    invoke-direct {v0, v2, v1, v1}, Lo/setDirection;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lo/setDirection;->onNavigationEvent:Lo/setDirection;

    .line 6
    new-instance v0, Lo/setDirection;

    const/4 v2, 0x1

    const-string v3, "VECTOR"

    invoke-direct {v0, v3, v2, v2}, Lo/setDirection;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lo/setDirection;->onMessageChannelReady:Lo/setDirection;

    .line 7
    new-instance v0, Lo/setDirection;

    const/4 v3, 0x2

    const-string v4, "PACKED_VECTOR"

    invoke-direct {v0, v4, v3, v2}, Lo/setDirection;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lo/setDirection;->ICustomTabsCallback:Lo/setDirection;

    .line 8
    new-instance v0, Lo/setDirection;

    const/4 v4, 0x3

    const-string v5, "MAP"

    invoke-direct {v0, v5, v4, v1}, Lo/setDirection;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lo/setDirection;->onPostMessage:Lo/setDirection;

    const/4 v5, 0x4

    new-array v5, v5, [Lo/setDirection;

    .line 9
    sget-object v6, Lo/setDirection;->onNavigationEvent:Lo/setDirection;

    aput-object v6, v5, v1

    sget-object v1, Lo/setDirection;->onMessageChannelReady:Lo/setDirection;

    aput-object v1, v5, v2

    sget-object v1, Lo/setDirection;->ICustomTabsCallback:Lo/setDirection;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lo/setDirection;->asInterface:[Lo/setDirection;

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
    iput-boolean p3, p0, Lo/setDirection;->extraCallback:Z

    return-void
.end method

.method public static values()[Lo/setDirection;
    .locals 1

    .line 1
    sget-object v0, Lo/setDirection;->asInterface:[Lo/setDirection;

    invoke-virtual {v0}, [Lo/setDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/setDirection;

    return-object v0
.end method
