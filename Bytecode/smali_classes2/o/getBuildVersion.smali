.class public final enum Lo/getBuildVersion;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/getBuildVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lo/getBuildVersion;

.field public static final enum EXCLUDE:Lo/getBuildVersion;

.field public static final enum INCLUDE:Lo/getBuildVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 22
    new-instance v0, Lo/getBuildVersion;

    const/4 v1, 0x0

    const-string v2, "EXCLUDE"

    invoke-direct {v0, v2, v1}, Lo/getBuildVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getBuildVersion;->EXCLUDE:Lo/getBuildVersion;

    .line 23
    new-instance v0, Lo/getBuildVersion;

    const/4 v2, 0x1

    const-string v3, "INCLUDE"

    invoke-direct {v0, v3, v2}, Lo/getBuildVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getBuildVersion;->INCLUDE:Lo/getBuildVersion;

    const/4 v3, 0x2

    new-array v3, v3, [Lo/getBuildVersion;

    .line 21
    sget-object v4, Lo/getBuildVersion;->EXCLUDE:Lo/getBuildVersion;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lo/getBuildVersion;->$VALUES:[Lo/getBuildVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/getBuildVersion;
    .locals 1

    .line 21
    const-class v0, Lo/getBuildVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/getBuildVersion;

    return-object p0
.end method

.method public static values()[Lo/getBuildVersion;
    .locals 1

    .line 21
    sget-object v0, Lo/getBuildVersion;->$VALUES:[Lo/getBuildVersion;

    invoke-virtual {v0}, [Lo/getBuildVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/getBuildVersion;

    return-object v0
.end method
