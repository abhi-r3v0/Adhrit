.class public final enum Lo/LendingTriggerResponse;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/LendingTriggerResponse;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/LendingTriggerResponse;

.field private static final synthetic onMessageChannelReady:[Lo/LendingTriggerResponse;

.field public static final enum onNavigationEvent:Lo/LendingTriggerResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lo/LendingTriggerResponse;

    const/4 v1, 0x0

    const-string v2, "UNCOMPRESSED"

    invoke-direct {v0, v2, v1}, Lo/LendingTriggerResponse;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/LendingTriggerResponse;->ICustomTabsCallback:Lo/LendingTriggerResponse;

    new-instance v0, Lo/LendingTriggerResponse;

    const/4 v2, 0x1

    const-string v3, "COMPRESSED"

    invoke-direct {v0, v3, v2}, Lo/LendingTriggerResponse;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/LendingTriggerResponse;->onNavigationEvent:Lo/LendingTriggerResponse;

    const/4 v3, 0x2

    new-array v3, v3, [Lo/LendingTriggerResponse;

    sget-object v4, Lo/LendingTriggerResponse;->ICustomTabsCallback:Lo/LendingTriggerResponse;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lo/LendingTriggerResponse;->onMessageChannelReady:[Lo/LendingTriggerResponse;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lo/LendingTriggerResponse;
    .locals 1

    sget-object v0, Lo/LendingTriggerResponse;->onMessageChannelReady:[Lo/LendingTriggerResponse;

    invoke-virtual {v0}, [Lo/LendingTriggerResponse;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/LendingTriggerResponse;

    return-object v0
.end method
