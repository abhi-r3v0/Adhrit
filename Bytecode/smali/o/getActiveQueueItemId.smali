.class public final enum Lo/getActiveQueueItemId;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/getActiveQueueItemId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ICustomTabsCallback:[Lo/getActiveQueueItemId;

.field public static final enum onMessageChannelReady:Lo/getActiveQueueItemId;

.field private static enum onNavigationEvent:Lo/getActiveQueueItemId;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 30
    new-instance v0, Lo/getActiveQueueItemId;

    const/4 v1, 0x0

    const-string v2, "REPLACE"

    invoke-direct {v0, v2, v1}, Lo/getActiveQueueItemId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getActiveQueueItemId;->onNavigationEvent:Lo/getActiveQueueItemId;

    .line 36
    new-instance v0, Lo/getActiveQueueItemId;

    const/4 v2, 0x1

    const-string v3, "KEEP"

    invoke-direct {v0, v3, v2}, Lo/getActiveQueueItemId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getActiveQueueItemId;->onMessageChannelReady:Lo/getActiveQueueItemId;

    const/4 v3, 0x2

    new-array v3, v3, [Lo/getActiveQueueItemId;

    .line 24
    sget-object v4, Lo/getActiveQueueItemId;->onNavigationEvent:Lo/getActiveQueueItemId;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lo/getActiveQueueItemId;->ICustomTabsCallback:[Lo/getActiveQueueItemId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/getActiveQueueItemId;
    .locals 1

    .line 24
    const-class v0, Lo/getActiveQueueItemId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/getActiveQueueItemId;

    return-object p0
.end method

.method public static values()[Lo/getActiveQueueItemId;
    .locals 1

    .line 24
    sget-object v0, Lo/getActiveQueueItemId;->ICustomTabsCallback:[Lo/getActiveQueueItemId;

    invoke-virtual {v0}, [Lo/getActiveQueueItemId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/getActiveQueueItemId;

    return-object v0
.end method
