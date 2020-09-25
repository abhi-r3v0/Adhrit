.class public final enum Lo/EmiScreenResponse;
.super Ljava/lang/Enum;

# interfaces
.implements Lo/LoanStatusResponse_DetailJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/EmiScreenResponse;",
        ">;",
        "Lo/LoanStatusResponse_DetailJsonAdapter;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/EmiScreenResponse;

.field private static final synthetic ICustomTabsCallback$Stub:[Lo/EmiScreenResponse;

.field public static final enum extraCallback:Lo/EmiScreenResponse;

.field public static final enum onMessageChannelReady:Lo/EmiScreenResponse;

.field private static final enum onNavigationEvent:Lo/EmiScreenResponse;

.field private static final enum onPostMessage:Lo/EmiScreenResponse;

.field private static final onRelationshipValidationResult:Lo/LoanStatusResponse_DataJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/LoanStatusResponse_DataJsonAdapter<",
            "Lo/EmiScreenResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final asBinder:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lo/EmiScreenResponse;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN_STATUS"

    invoke-direct {v0, v2, v1, v1}, Lo/EmiScreenResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/EmiScreenResponse;->extraCallback:Lo/EmiScreenResponse;

    new-instance v0, Lo/EmiScreenResponse;

    const/4 v2, 0x1

    const-string v3, "ENABLED"

    invoke-direct {v0, v3, v2, v2}, Lo/EmiScreenResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/EmiScreenResponse;->ICustomTabsCallback:Lo/EmiScreenResponse;

    new-instance v0, Lo/EmiScreenResponse;

    const/4 v3, 0x2

    const-string v4, "DISABLED"

    invoke-direct {v0, v4, v3, v3}, Lo/EmiScreenResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/EmiScreenResponse;->onNavigationEvent:Lo/EmiScreenResponse;

    new-instance v0, Lo/EmiScreenResponse;

    const/4 v4, 0x3

    const-string v5, "DESTROYED"

    invoke-direct {v0, v5, v4, v4}, Lo/EmiScreenResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/EmiScreenResponse;->onPostMessage:Lo/EmiScreenResponse;

    new-instance v0, Lo/EmiScreenResponse;

    const/4 v5, 0x4

    const-string v6, "UNRECOGNIZED"

    const/4 v7, -0x1

    invoke-direct {v0, v6, v5, v7}, Lo/EmiScreenResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/EmiScreenResponse;->onMessageChannelReady:Lo/EmiScreenResponse;

    const/4 v6, 0x5

    new-array v6, v6, [Lo/EmiScreenResponse;

    sget-object v7, Lo/EmiScreenResponse;->extraCallback:Lo/EmiScreenResponse;

    aput-object v7, v6, v1

    sget-object v1, Lo/EmiScreenResponse;->ICustomTabsCallback:Lo/EmiScreenResponse;

    aput-object v1, v6, v2

    sget-object v1, Lo/EmiScreenResponse;->onNavigationEvent:Lo/EmiScreenResponse;

    aput-object v1, v6, v3

    sget-object v1, Lo/EmiScreenResponse;->onPostMessage:Lo/EmiScreenResponse;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lo/EmiScreenResponse;->ICustomTabsCallback$Stub:[Lo/EmiScreenResponse;

    new-instance v0, Lo/EmiScreenResponse$EmiSchedule;

    invoke-direct {v0}, Lo/EmiScreenResponse$EmiSchedule;-><init>()V

    sput-object v0, Lo/EmiScreenResponse;->onRelationshipValidationResult:Lo/LoanStatusResponse_DataJsonAdapter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lo/EmiScreenResponse;->asBinder:I

    return-void
.end method

.method public static ICustomTabsCallback(I)Lo/EmiScreenResponse;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lo/EmiScreenResponse;->onPostMessage:Lo/EmiScreenResponse;

    return-object p0

    :cond_1
    sget-object p0, Lo/EmiScreenResponse;->onNavigationEvent:Lo/EmiScreenResponse;

    return-object p0

    :cond_2
    sget-object p0, Lo/EmiScreenResponse;->ICustomTabsCallback:Lo/EmiScreenResponse;

    return-object p0

    :cond_3
    sget-object p0, Lo/EmiScreenResponse;->extraCallback:Lo/EmiScreenResponse;

    return-object p0
.end method

.method public static values()[Lo/EmiScreenResponse;
    .locals 1

    sget-object v0, Lo/EmiScreenResponse;->ICustomTabsCallback$Stub:[Lo/EmiScreenResponse;

    invoke-virtual {v0}, [Lo/EmiScreenResponse;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/EmiScreenResponse;

    return-object v0
.end method


# virtual methods
.method public final onPostMessage()I
    .locals 2

    sget-object v0, Lo/EmiScreenResponse;->onMessageChannelReady:Lo/EmiScreenResponse;

    if-eq p0, v0, :cond_0

    iget v0, p0, Lo/EmiScreenResponse;->asBinder:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
