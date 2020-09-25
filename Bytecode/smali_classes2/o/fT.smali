.class final enum Lo/fT;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/fT;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/fT;

.field public static final enum extraCallback:Lo/fT;

.field public static final enum onMessageChannelReady:Lo/fT;

.field public static final enum onPostMessage:Lo/fT;

.field private static final synthetic onRelationshipValidationResult:[Lo/fT;


# instance fields
.field private final onNavigationEvent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 5
    new-instance v0, Lo/fT;

    const/4 v1, 0x0

    const-string v2, "SCALAR"

    invoke-direct {v0, v2, v1, v1}, Lo/fT;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lo/fT;->ICustomTabsCallback:Lo/fT;

    .line 6
    new-instance v0, Lo/fT;

    const/4 v2, 0x1

    const-string v3, "VECTOR"

    invoke-direct {v0, v3, v2, v2}, Lo/fT;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lo/fT;->extraCallback:Lo/fT;

    .line 7
    new-instance v0, Lo/fT;

    const/4 v3, 0x2

    const-string v4, "PACKED_VECTOR"

    invoke-direct {v0, v4, v3, v2}, Lo/fT;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lo/fT;->onPostMessage:Lo/fT;

    .line 8
    new-instance v0, Lo/fT;

    const/4 v4, 0x3

    const-string v5, "MAP"

    invoke-direct {v0, v5, v4, v1}, Lo/fT;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lo/fT;->onMessageChannelReady:Lo/fT;

    const/4 v5, 0x4

    new-array v5, v5, [Lo/fT;

    .line 9
    sget-object v6, Lo/fT;->ICustomTabsCallback:Lo/fT;

    aput-object v6, v5, v1

    sget-object v1, Lo/fT;->extraCallback:Lo/fT;

    aput-object v1, v5, v2

    sget-object v1, Lo/fT;->onPostMessage:Lo/fT;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lo/fT;->onRelationshipValidationResult:[Lo/fT;

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
    iput-boolean p3, p0, Lo/fT;->onNavigationEvent:Z

    return-void
.end method

.method public static values()[Lo/fT;
    .locals 1

    .line 1
    sget-object v0, Lo/fT;->onRelationshipValidationResult:[Lo/fT;

    invoke-virtual {v0}, [Lo/fT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/fT;

    return-object v0
.end method
