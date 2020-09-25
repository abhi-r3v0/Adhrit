.class final enum Lo/getCompoundHash$updateVisuals;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCompoundHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "updateVisuals"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/getCompoundHash$updateVisuals;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ICustomTabsCallback:[Lo/getCompoundHash$updateVisuals;

.field public static final enum onMessageChannelReady:Lo/getCompoundHash$updateVisuals;

.field public static final enum onNavigationEvent:Lo/getCompoundHash$updateVisuals;

.field public static final enum onPostMessage:Lo/getCompoundHash$updateVisuals;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1970
    new-instance v0, Lo/getCompoundHash$updateVisuals;

    const/4 v1, 0x0

    const-string v2, "NO_RESOLUTION"

    invoke-direct {v0, v2, v1}, Lo/getCompoundHash$updateVisuals;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getCompoundHash$updateVisuals;->onNavigationEvent:Lo/getCompoundHash$updateVisuals;

    .line 1971
    new-instance v0, Lo/getCompoundHash$updateVisuals;

    const/4 v2, 0x1

    const-string v3, "SUCCESS"

    invoke-direct {v0, v3, v2}, Lo/getCompoundHash$updateVisuals;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getCompoundHash$updateVisuals;->onPostMessage:Lo/getCompoundHash$updateVisuals;

    .line 1972
    new-instance v0, Lo/getCompoundHash$updateVisuals;

    const/4 v3, 0x2

    const-string v4, "ERROR"

    invoke-direct {v0, v4, v3}, Lo/getCompoundHash$updateVisuals;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getCompoundHash$updateVisuals;->onMessageChannelReady:Lo/getCompoundHash$updateVisuals;

    const/4 v4, 0x3

    new-array v4, v4, [Lo/getCompoundHash$updateVisuals;

    .line 1969
    sget-object v5, Lo/getCompoundHash$updateVisuals;->onNavigationEvent:Lo/getCompoundHash$updateVisuals;

    aput-object v5, v4, v1

    sget-object v1, Lo/getCompoundHash$updateVisuals;->onPostMessage:Lo/getCompoundHash$updateVisuals;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lo/getCompoundHash$updateVisuals;->ICustomTabsCallback:[Lo/getCompoundHash$updateVisuals;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1969
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/getCompoundHash$updateVisuals;
    .locals 1

    .line 1969
    const-class v0, Lo/getCompoundHash$updateVisuals;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/getCompoundHash$updateVisuals;

    return-object p0
.end method

.method public static values()[Lo/getCompoundHash$updateVisuals;
    .locals 1

    .line 1969
    sget-object v0, Lo/getCompoundHash$updateVisuals;->ICustomTabsCallback:[Lo/getCompoundHash$updateVisuals;

    invoke-virtual {v0}, [Lo/getCompoundHash$updateVisuals;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/getCompoundHash$updateVisuals;

    return-object v0
.end method
