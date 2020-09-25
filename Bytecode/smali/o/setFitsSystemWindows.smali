.class public final enum Lo/setFitsSystemWindows;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lo/setContentId;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/setFitsSystemWindows;",
        ">;",
        "Lo/setContentId;"
    }
.end annotation


# static fields
.field private static enum ICustomTabsCallback:Lo/setFitsSystemWindows;

.field public static final enum onMessageChannelReady:Lo/setFitsSystemWindows;

.field private static enum onNavigationEvent:Lo/setFitsSystemWindows;

.field private static enum onPostMessage:Lo/setFitsSystemWindows;

.field private static final synthetic onTransact:[Lo/setFitsSystemWindows;


# instance fields
.field public final extraCallback:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 12
    new-instance v0, Lo/setFitsSystemWindows;

    const/4 v1, 0x0

    const-string v2, "PURCHASE"

    invoke-direct {v0, v2, v1, v1}, Lo/setFitsSystemWindows;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setFitsSystemWindows;->onMessageChannelReady:Lo/setFitsSystemWindows;

    .line 16
    new-instance v0, Lo/setFitsSystemWindows;

    const/4 v2, 0x1

    const-string v3, "CASH_ADVANCE"

    invoke-direct {v0, v3, v2, v2}, Lo/setFitsSystemWindows;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setFitsSystemWindows;->ICustomTabsCallback:Lo/setFitsSystemWindows;

    .line 20
    new-instance v0, Lo/setFitsSystemWindows;

    const/4 v3, 0x2

    const-string v4, "CASHBACK"

    const/16 v5, 0x9

    invoke-direct {v0, v4, v3, v5}, Lo/setFitsSystemWindows;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setFitsSystemWindows;->onNavigationEvent:Lo/setFitsSystemWindows;

    .line 24
    new-instance v0, Lo/setFitsSystemWindows;

    const/4 v4, 0x3

    const-string v5, "REFUND"

    const/16 v6, 0x20

    invoke-direct {v0, v5, v4, v6}, Lo/setFitsSystemWindows;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setFitsSystemWindows;->onPostMessage:Lo/setFitsSystemWindows;

    const/4 v5, 0x4

    new-array v5, v5, [Lo/setFitsSystemWindows;

    .line 7
    sget-object v6, Lo/setFitsSystemWindows;->onMessageChannelReady:Lo/setFitsSystemWindows;

    aput-object v6, v5, v1

    sget-object v1, Lo/setFitsSystemWindows;->ICustomTabsCallback:Lo/setFitsSystemWindows;

    aput-object v1, v5, v2

    sget-object v1, Lo/setFitsSystemWindows;->onNavigationEvent:Lo/setFitsSystemWindows;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lo/setFitsSystemWindows;->onTransact:[Lo/setFitsSystemWindows;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput p3, p0, Lo/setFitsSystemWindows;->extraCallback:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/setFitsSystemWindows;
    .locals 1

    .line 7
    const-class v0, Lo/setFitsSystemWindows;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/setFitsSystemWindows;

    return-object p0
.end method

.method public static values()[Lo/setFitsSystemWindows;
    .locals 1

    .line 7
    sget-object v0, Lo/setFitsSystemWindows;->onTransact:[Lo/setFitsSystemWindows;

    invoke-virtual {v0}, [Lo/setFitsSystemWindows;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/setFitsSystemWindows;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 1

    .line 42
    iget v0, p0, Lo/setFitsSystemWindows;->extraCallback:I

    return v0
.end method
