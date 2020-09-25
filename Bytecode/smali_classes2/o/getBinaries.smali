.class public final enum Lo/getBinaries;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/getBinaries;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lo/getBinaries;

.field public static final enum EXISTENCE_FILTER_MISMATCH:Lo/getBinaries;

.field public static final enum LIMBO_RESOLUTION:Lo/getBinaries;

.field public static final enum LISTEN:Lo/getBinaries;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 20
    new-instance v0, Lo/getBinaries;

    const/4 v1, 0x0

    const-string v2, "LISTEN"

    invoke-direct {v0, v2, v1}, Lo/getBinaries;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getBinaries;->LISTEN:Lo/getBinaries;

    .line 23
    new-instance v0, Lo/getBinaries;

    const/4 v2, 0x1

    const-string v3, "EXISTENCE_FILTER_MISMATCH"

    invoke-direct {v0, v3, v2}, Lo/getBinaries;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getBinaries;->EXISTENCE_FILTER_MISMATCH:Lo/getBinaries;

    .line 26
    new-instance v0, Lo/getBinaries;

    const/4 v3, 0x2

    const-string v4, "LIMBO_RESOLUTION"

    invoke-direct {v0, v4, v3}, Lo/getBinaries;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getBinaries;->LIMBO_RESOLUTION:Lo/getBinaries;

    const/4 v4, 0x3

    new-array v4, v4, [Lo/getBinaries;

    .line 18
    sget-object v5, Lo/getBinaries;->LISTEN:Lo/getBinaries;

    aput-object v5, v4, v1

    sget-object v1, Lo/getBinaries;->EXISTENCE_FILTER_MISMATCH:Lo/getBinaries;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lo/getBinaries;->$VALUES:[Lo/getBinaries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/getBinaries;
    .locals 1

    .line 18
    const-class v0, Lo/getBinaries;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/getBinaries;

    return-object p0
.end method

.method public static values()[Lo/getBinaries;
    .locals 1

    .line 18
    sget-object v0, Lo/getBinaries;->$VALUES:[Lo/getBinaries;

    invoke-virtual {v0}, [Lo/getBinaries;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/getBinaries;

    return-object v0
.end method
