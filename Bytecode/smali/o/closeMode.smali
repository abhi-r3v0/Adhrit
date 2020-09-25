.class public final enum Lo/closeMode;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/closeMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/closeMode;

.field public static final enum extraCallback:Lo/closeMode;

.field private static final synthetic onPostMessage:[Lo/closeMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lo/closeMode;

    const/4 v1, 0x0

    const-string v2, "LINEAR"

    invoke-direct {v0, v2, v1}, Lo/closeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/closeMode;->extraCallback:Lo/closeMode;

    .line 5
    new-instance v0, Lo/closeMode;

    const/4 v2, 0x1

    const-string v3, "RADIAL"

    invoke-direct {v0, v3, v2}, Lo/closeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/closeMode;->ICustomTabsCallback:Lo/closeMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lo/closeMode;

    .line 3
    sget-object v4, Lo/closeMode;->extraCallback:Lo/closeMode;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lo/closeMode;->onPostMessage:[Lo/closeMode;

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

.method public static valueOf(Ljava/lang/String;)Lo/closeMode;
    .locals 1

    .line 3
    const-class v0, Lo/closeMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/closeMode;

    return-object p0
.end method

.method public static values()[Lo/closeMode;
    .locals 1

    .line 3
    sget-object v0, Lo/closeMode;->onPostMessage:[Lo/closeMode;

    invoke-virtual {v0}, [Lo/closeMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/closeMode;

    return-object v0
.end method
