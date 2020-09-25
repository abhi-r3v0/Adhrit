.class public final enum Lo/valueOf;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/valueOf;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ICustomTabsCallback:[Lo/valueOf;

.field public static final enum extraCallback:Lo/valueOf;

.field public static final enum onNavigationEvent:Lo/valueOf;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 8
    new-instance v0, Lo/valueOf;

    const/4 v1, 0x0

    const-string v2, "PRIMITIVE"

    invoke-direct {v0, v2, v1}, Lo/valueOf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/valueOf;->extraCallback:Lo/valueOf;

    .line 13
    new-instance v0, Lo/valueOf;

    const/4 v2, 0x1

    const-string v3, "CONSTRUCTED"

    invoke-direct {v0, v3, v2}, Lo/valueOf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/valueOf;->onNavigationEvent:Lo/valueOf;

    const/4 v3, 0x2

    new-array v3, v3, [Lo/valueOf;

    .line 3
    sget-object v4, Lo/valueOf;->extraCallback:Lo/valueOf;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lo/valueOf;->ICustomTabsCallback:[Lo/valueOf;

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

.method public static valueOf(Ljava/lang/String;)Lo/valueOf;
    .locals 1

    .line 3
    const-class v0, Lo/valueOf;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/valueOf;

    return-object p0
.end method

.method public static values()[Lo/valueOf;
    .locals 1

    .line 3
    sget-object v0, Lo/valueOf;->ICustomTabsCallback:[Lo/valueOf;

    invoke-virtual {v0}, [Lo/valueOf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/valueOf;

    return-object v0
.end method
