.class public final enum Lo/setGeneratorType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/setGeneratorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lo/setGeneratorType;

.field public static final enum OFFLINE:Lo/setGeneratorType;

.field public static final enum ONLINE:Lo/setGeneratorType;

.field public static final enum UNKNOWN:Lo/setGeneratorType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 31
    new-instance v0, Lo/setGeneratorType;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1}, Lo/setGeneratorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setGeneratorType;->UNKNOWN:Lo/setGeneratorType;

    .line 38
    new-instance v0, Lo/setGeneratorType;

    const/4 v2, 0x1

    const-string v3, "ONLINE"

    invoke-direct {v0, v3, v2}, Lo/setGeneratorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setGeneratorType;->ONLINE:Lo/setGeneratorType;

    .line 45
    new-instance v0, Lo/setGeneratorType;

    const/4 v3, 0x2

    const-string v4, "OFFLINE"

    invoke-direct {v0, v4, v3}, Lo/setGeneratorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setGeneratorType;->OFFLINE:Lo/setGeneratorType;

    const/4 v4, 0x3

    new-array v4, v4, [Lo/setGeneratorType;

    .line 23
    sget-object v5, Lo/setGeneratorType;->UNKNOWN:Lo/setGeneratorType;

    aput-object v5, v4, v1

    sget-object v1, Lo/setGeneratorType;->ONLINE:Lo/setGeneratorType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lo/setGeneratorType;->$VALUES:[Lo/setGeneratorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/setGeneratorType;
    .locals 1

    .line 23
    const-class v0, Lo/setGeneratorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/setGeneratorType;

    return-object p0
.end method

.method public static values()[Lo/setGeneratorType;
    .locals 1

    .line 23
    sget-object v0, Lo/setGeneratorType;->$VALUES:[Lo/setGeneratorType;

    invoke-virtual {v0}, [Lo/setGeneratorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/setGeneratorType;

    return-object v0
.end method
