.class public final enum Lo/setGuidelinePercent;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lo/setContentId;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/setGuidelinePercent;",
        ">;",
        "Lo/setContentId;"
    }
.end annotation


# static fields
.field private static final synthetic extraCallback:[Lo/setGuidelinePercent;

.field private static enum onMessageChannelReady:Lo/setGuidelinePercent;

.field private static enum onNavigationEvent:Lo/setGuidelinePercent;

.field private static enum onPostMessage:Lo/setGuidelinePercent;


# instance fields
.field private final ICustomTabsCallback:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 8
    new-instance v0, Lo/setGuidelinePercent;

    const/4 v1, 0x0

    const-string v2, "NORMAL"

    invoke-direct {v0, v2, v1, v1}, Lo/setGuidelinePercent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setGuidelinePercent;->onPostMessage:Lo/setGuidelinePercent;

    .line 9
    new-instance v0, Lo/setGuidelinePercent;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-string v4, "BY_ISSUER"

    invoke-direct {v0, v4, v2, v3}, Lo/setGuidelinePercent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setGuidelinePercent;->onNavigationEvent:Lo/setGuidelinePercent;

    .line 10
    new-instance v0, Lo/setGuidelinePercent;

    const-string v4, "BY_ISSUER_WIHOUT_BI_AGREEMENT"

    const/4 v5, 0x4

    invoke-direct {v0, v4, v3, v5}, Lo/setGuidelinePercent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setGuidelinePercent;->onMessageChannelReady:Lo/setGuidelinePercent;

    const/4 v4, 0x3

    new-array v4, v4, [Lo/setGuidelinePercent;

    .line 6
    sget-object v5, Lo/setGuidelinePercent;->onPostMessage:Lo/setGuidelinePercent;

    aput-object v5, v4, v1

    sget-object v1, Lo/setGuidelinePercent;->onNavigationEvent:Lo/setGuidelinePercent;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lo/setGuidelinePercent;->extraCallback:[Lo/setGuidelinePercent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput p3, p0, Lo/setGuidelinePercent;->ICustomTabsCallback:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/setGuidelinePercent;
    .locals 1

    .line 6
    const-class v0, Lo/setGuidelinePercent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/setGuidelinePercent;

    return-object p0
.end method

.method public static values()[Lo/setGuidelinePercent;
    .locals 1

    .line 6
    sget-object v0, Lo/setGuidelinePercent;->extraCallback:[Lo/setGuidelinePercent;

    invoke-virtual {v0}, [Lo/setGuidelinePercent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/setGuidelinePercent;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 1

    .line 31
    iget v0, p0, Lo/setGuidelinePercent;->ICustomTabsCallback:I

    return v0
.end method
