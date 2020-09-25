.class public final enum Lo/setOrganization$onPostMessage;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setOrganization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/setOrganization$onPostMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lo/setOrganization$onPostMessage;

.field public static final enum ASCENDING:Lo/setOrganization$onPostMessage;

.field public static final enum DESCENDING:Lo/setOrganization$onPostMessage;


# instance fields
.field private final comparisonModifier:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 27
    new-instance v0, Lo/setOrganization$onPostMessage;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "ASCENDING"

    invoke-direct {v0, v3, v1, v2}, Lo/setOrganization$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setOrganization$onPostMessage;->ASCENDING:Lo/setOrganization$onPostMessage;

    .line 28
    new-instance v0, Lo/setOrganization$onPostMessage;

    const-string v3, "DESCENDING"

    const/4 v4, -0x1

    invoke-direct {v0, v3, v2, v4}, Lo/setOrganization$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setOrganization$onPostMessage;->DESCENDING:Lo/setOrganization$onPostMessage;

    const/4 v3, 0x2

    new-array v3, v3, [Lo/setOrganization$onPostMessage;

    .line 26
    sget-object v4, Lo/setOrganization$onPostMessage;->ASCENDING:Lo/setOrganization$onPostMessage;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lo/setOrganization$onPostMessage;->$VALUES:[Lo/setOrganization$onPostMessage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput p3, p0, Lo/setOrganization$onPostMessage;->comparisonModifier:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/setOrganization$onPostMessage;
    .locals 1

    .line 26
    const-class v0, Lo/setOrganization$onPostMessage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/setOrganization$onPostMessage;

    return-object p0
.end method

.method public static values()[Lo/setOrganization$onPostMessage;
    .locals 1

    .line 26
    sget-object v0, Lo/setOrganization$onPostMessage;->$VALUES:[Lo/setOrganization$onPostMessage;

    invoke-virtual {v0}, [Lo/setOrganization$onPostMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/setOrganization$onPostMessage;

    return-object v0
.end method


# virtual methods
.method final getComparisonModifier()I
    .locals 1

    .line 37
    iget v0, p0, Lo/setOrganization$onPostMessage;->comparisonModifier:I

    return v0
.end method
