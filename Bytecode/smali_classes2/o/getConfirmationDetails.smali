.class public final enum Lo/getConfirmationDetails;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/getConfirmationDetails;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/getConfirmationDetails;

.field private static final synthetic onMessageChannelReady:[Lo/getConfirmationDetails;

.field public static final enum onNavigationEvent:Lo/getConfirmationDetails;

.field public static final enum onPostMessage:Lo/getConfirmationDetails;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lo/getConfirmationDetails;

    const/4 v1, 0x0

    const-string v2, "NIST_P256"

    invoke-direct {v0, v2, v1}, Lo/getConfirmationDetails;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getConfirmationDetails;->onNavigationEvent:Lo/getConfirmationDetails;

    new-instance v0, Lo/getConfirmationDetails;

    const/4 v2, 0x1

    const-string v3, "NIST_P384"

    invoke-direct {v0, v3, v2}, Lo/getConfirmationDetails;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getConfirmationDetails;->onPostMessage:Lo/getConfirmationDetails;

    new-instance v0, Lo/getConfirmationDetails;

    const/4 v3, 0x2

    const-string v4, "NIST_P521"

    invoke-direct {v0, v4, v3}, Lo/getConfirmationDetails;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getConfirmationDetails;->ICustomTabsCallback:Lo/getConfirmationDetails;

    const/4 v4, 0x3

    new-array v4, v4, [Lo/getConfirmationDetails;

    sget-object v5, Lo/getConfirmationDetails;->onNavigationEvent:Lo/getConfirmationDetails;

    aput-object v5, v4, v1

    sget-object v1, Lo/getConfirmationDetails;->onPostMessage:Lo/getConfirmationDetails;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lo/getConfirmationDetails;->onMessageChannelReady:[Lo/getConfirmationDetails;

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

.method public static values()[Lo/getConfirmationDetails;
    .locals 1

    sget-object v0, Lo/getConfirmationDetails;->onMessageChannelReady:[Lo/getConfirmationDetails;

    invoke-virtual {v0}, [Lo/getConfirmationDetails;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/getConfirmationDetails;

    return-object v0
.end method
