.class final enum Lo/onComplete;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/onComplete;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum extraCallback:Lo/onComplete;

.field public static final enum onMessageChannelReady:Lo/onComplete;

.field public static final enum onNavigationEvent:Lo/onComplete;

.field public static final enum onPostMessage:Lo/onComplete;

.field private static final synthetic onRelationshipValidationResult:[Lo/onComplete;


# instance fields
.field private final ICustomTabsCallback:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lo/onComplete;

    const/4 v1, 0x0

    const-string v2, "SCALAR"

    invoke-direct {v0, v2, v1, v1}, Lo/onComplete;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lo/onComplete;->onMessageChannelReady:Lo/onComplete;

    new-instance v0, Lo/onComplete;

    const/4 v2, 0x1

    const-string v3, "VECTOR"

    invoke-direct {v0, v3, v2, v2}, Lo/onComplete;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lo/onComplete;->onPostMessage:Lo/onComplete;

    new-instance v0, Lo/onComplete;

    const/4 v3, 0x2

    const-string v4, "PACKED_VECTOR"

    invoke-direct {v0, v4, v3, v2}, Lo/onComplete;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lo/onComplete;->extraCallback:Lo/onComplete;

    new-instance v0, Lo/onComplete;

    const/4 v4, 0x3

    const-string v5, "MAP"

    invoke-direct {v0, v5, v4, v1}, Lo/onComplete;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lo/onComplete;->onNavigationEvent:Lo/onComplete;

    const/4 v5, 0x4

    new-array v5, v5, [Lo/onComplete;

    sget-object v6, Lo/onComplete;->onMessageChannelReady:Lo/onComplete;

    aput-object v6, v5, v1

    sget-object v1, Lo/onComplete;->onPostMessage:Lo/onComplete;

    aput-object v1, v5, v2

    sget-object v1, Lo/onComplete;->extraCallback:Lo/onComplete;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lo/onComplete;->onRelationshipValidationResult:[Lo/onComplete;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lo/onComplete;->ICustomTabsCallback:Z

    return-void
.end method

.method public static values()[Lo/onComplete;
    .locals 1

    sget-object v0, Lo/onComplete;->onRelationshipValidationResult:[Lo/onComplete;

    invoke-virtual {v0}, [Lo/onComplete;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/onComplete;

    return-object v0
.end method
