.class public final enum Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/parseProcMapsJsonFromStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;

.field public static final enum ATTEMPT_MIGRATION:Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;

.field public static final enum NOT_GENERATED:Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;

.field public static final enum REGISTERED:Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;

.field public static final enum REGISTER_ERROR:Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;

.field public static final enum UNREGISTERED:Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 45
    new-instance v0, Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;

    const/4 v1, 0x0

    const-string v2, "ATTEMPT_MIGRATION"

    invoke-direct {v0, v2, v1}, Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;->ATTEMPT_MIGRATION:Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;

    .line 50
    new-instance v0, Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;

    const/4 v2, 0x1

    const-string v3, "NOT_GENERATED"

    invoke-direct {v0, v3, v2}, Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;->NOT_GENERATED:Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;

    .line 56
    new-instance v0, Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;

    const/4 v3, 0x2

    const-string v4, "UNREGISTERED"

    invoke-direct {v0, v4, v3}, Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;->UNREGISTERED:Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;

    .line 61
    new-instance v0, Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;

    const/4 v4, 0x3

    const-string v5, "REGISTERED"

    invoke-direct {v0, v5, v4}, Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;->REGISTERED:Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;

    .line 67
    new-instance v0, Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;

    const/4 v5, 0x4

    const-string v6, "REGISTER_ERROR"

    invoke-direct {v0, v6, v5}, Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;->REGISTER_ERROR:Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;

    const/4 v6, 0x5

    new-array v6, v6, [Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;

    .line 40
    sget-object v7, Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;->ATTEMPT_MIGRATION:Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;

    aput-object v7, v6, v1

    sget-object v1, Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;->NOT_GENERATED:Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;

    aput-object v1, v6, v2

    sget-object v1, Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;->UNREGISTERED:Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;

    aput-object v1, v6, v3

    sget-object v1, Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;->REGISTERED:Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;->$VALUES:[Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;
    .locals 1

    .line 40
    const-class v0, Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;

    return-object p0
.end method

.method public static values()[Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;
    .locals 1

    .line 40
    sget-object v0, Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;->$VALUES:[Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;

    invoke-virtual {v0}, [Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;

    return-object v0
.end method
