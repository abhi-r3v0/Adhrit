.class public final enum Lo/CommonPitchItemJsonAdapter;
.super Ljava/lang/Enum;

# interfaces
.implements Lo/LoanStatusResponse_DetailJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/CommonPitchItemJsonAdapter;",
        ">;",
        "Lo/LoanStatusResponse_DetailJsonAdapter;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/CommonPitchItemJsonAdapter;

.field private static final synthetic ICustomTabsCallback$Stub:[Lo/CommonPitchItemJsonAdapter;

.field public static final enum extraCallback:Lo/CommonPitchItemJsonAdapter;

.field public static final enum onMessageChannelReady:Lo/CommonPitchItemJsonAdapter;

.field public static final enum onNavigationEvent:Lo/CommonPitchItemJsonAdapter;

.field private static final onPostMessage:Lo/LoanStatusResponse_DataJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/LoanStatusResponse_DataJsonAdapter<",
            "Lo/CommonPitchItemJsonAdapter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final onRelationshipValidationResult:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lo/CommonPitchItemJsonAdapter;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN_FORMAT"

    invoke-direct {v0, v2, v1, v1}, Lo/CommonPitchItemJsonAdapter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/CommonPitchItemJsonAdapter;->onMessageChannelReady:Lo/CommonPitchItemJsonAdapter;

    new-instance v0, Lo/CommonPitchItemJsonAdapter;

    const/4 v2, 0x1

    const-string v3, "UNCOMPRESSED"

    invoke-direct {v0, v3, v2, v2}, Lo/CommonPitchItemJsonAdapter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/CommonPitchItemJsonAdapter;->extraCallback:Lo/CommonPitchItemJsonAdapter;

    new-instance v0, Lo/CommonPitchItemJsonAdapter;

    const/4 v3, 0x2

    const-string v4, "COMPRESSED"

    invoke-direct {v0, v4, v3, v3}, Lo/CommonPitchItemJsonAdapter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/CommonPitchItemJsonAdapter;->onNavigationEvent:Lo/CommonPitchItemJsonAdapter;

    new-instance v0, Lo/CommonPitchItemJsonAdapter;

    const/4 v4, 0x3

    const-string v5, "UNRECOGNIZED"

    const/4 v6, -0x1

    invoke-direct {v0, v5, v4, v6}, Lo/CommonPitchItemJsonAdapter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/CommonPitchItemJsonAdapter;->ICustomTabsCallback:Lo/CommonPitchItemJsonAdapter;

    const/4 v5, 0x4

    new-array v5, v5, [Lo/CommonPitchItemJsonAdapter;

    sget-object v6, Lo/CommonPitchItemJsonAdapter;->onMessageChannelReady:Lo/CommonPitchItemJsonAdapter;

    aput-object v6, v5, v1

    sget-object v1, Lo/CommonPitchItemJsonAdapter;->extraCallback:Lo/CommonPitchItemJsonAdapter;

    aput-object v1, v5, v2

    sget-object v1, Lo/CommonPitchItemJsonAdapter;->onNavigationEvent:Lo/CommonPitchItemJsonAdapter;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lo/CommonPitchItemJsonAdapter;->ICustomTabsCallback$Stub:[Lo/CommonPitchItemJsonAdapter;

    new-instance v0, Lo/CtaInfoJsonAdapter;

    invoke-direct {v0}, Lo/CtaInfoJsonAdapter;-><init>()V

    sput-object v0, Lo/CommonPitchItemJsonAdapter;->onPostMessage:Lo/LoanStatusResponse_DataJsonAdapter;

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

    iput p3, p0, Lo/CommonPitchItemJsonAdapter;->onRelationshipValidationResult:I

    return-void
.end method

.method public static onNavigationEvent(I)Lo/CommonPitchItemJsonAdapter;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lo/CommonPitchItemJsonAdapter;->onNavigationEvent:Lo/CommonPitchItemJsonAdapter;

    return-object p0

    :cond_1
    sget-object p0, Lo/CommonPitchItemJsonAdapter;->extraCallback:Lo/CommonPitchItemJsonAdapter;

    return-object p0

    :cond_2
    sget-object p0, Lo/CommonPitchItemJsonAdapter;->onMessageChannelReady:Lo/CommonPitchItemJsonAdapter;

    return-object p0
.end method

.method public static values()[Lo/CommonPitchItemJsonAdapter;
    .locals 1

    sget-object v0, Lo/CommonPitchItemJsonAdapter;->ICustomTabsCallback$Stub:[Lo/CommonPitchItemJsonAdapter;

    invoke-virtual {v0}, [Lo/CommonPitchItemJsonAdapter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/CommonPitchItemJsonAdapter;

    return-object v0
.end method


# virtual methods
.method public final onPostMessage()I
    .locals 2

    sget-object v0, Lo/CommonPitchItemJsonAdapter;->ICustomTabsCallback:Lo/CommonPitchItemJsonAdapter;

    if-eq p0, v0, :cond_0

    iget v0, p0, Lo/CommonPitchItemJsonAdapter;->onRelationshipValidationResult:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
