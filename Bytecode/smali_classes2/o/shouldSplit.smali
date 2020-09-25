.class public final enum Lo/shouldSplit;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/shouldSplit;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/shouldSplit;

.field private static final synthetic asBinder:[Lo/shouldSplit;

.field private static enum extraCallback:Lo/shouldSplit;

.field public static final enum onMessageChannelReady:Lo/shouldSplit;

.field private static enum onNavigationEvent:Lo/shouldSplit;

.field private static enum onPostMessage:Lo/shouldSplit;


# instance fields
.field private onRelationshipValidationResult:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 16
    new-instance v0, Lo/shouldSplit;

    const/4 v1, 0x0

    const-string v2, "ERROR"

    invoke-direct {v0, v2, v1, v2}, Lo/shouldSplit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/shouldSplit;->ICustomTabsCallback:Lo/shouldSplit;

    new-instance v0, Lo/shouldSplit;

    const/4 v2, 0x1

    const-string v3, "WARN"

    invoke-direct {v0, v3, v2, v3}, Lo/shouldSplit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/shouldSplit;->extraCallback:Lo/shouldSplit;

    new-instance v0, Lo/shouldSplit;

    const/4 v3, 0x2

    const-string v4, "INFO"

    invoke-direct {v0, v4, v3, v4}, Lo/shouldSplit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/shouldSplit;->onPostMessage:Lo/shouldSplit;

    new-instance v0, Lo/shouldSplit;

    const/4 v4, 0x3

    const-string v5, "DEBUG"

    invoke-direct {v0, v5, v4, v5}, Lo/shouldSplit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/shouldSplit;->onNavigationEvent:Lo/shouldSplit;

    new-instance v0, Lo/shouldSplit;

    const/4 v5, 0x4

    const-string v6, "TRACE"

    invoke-direct {v0, v6, v5, v6}, Lo/shouldSplit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/shouldSplit;->onMessageChannelReady:Lo/shouldSplit;

    const/4 v6, 0x5

    new-array v6, v6, [Lo/shouldSplit;

    .line 14
    sget-object v7, Lo/shouldSplit;->ICustomTabsCallback:Lo/shouldSplit;

    aput-object v7, v6, v1

    sget-object v1, Lo/shouldSplit;->extraCallback:Lo/shouldSplit;

    aput-object v1, v6, v2

    sget-object v1, Lo/shouldSplit;->onPostMessage:Lo/shouldSplit;

    aput-object v1, v6, v3

    sget-object v1, Lo/shouldSplit;->onNavigationEvent:Lo/shouldSplit;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lo/shouldSplit;->asBinder:[Lo/shouldSplit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lo/shouldSplit;->onRelationshipValidationResult:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/shouldSplit;
    .locals 1

    .line 14
    const-class v0, Lo/shouldSplit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/shouldSplit;

    return-object p0
.end method

.method public static values()[Lo/shouldSplit;
    .locals 1

    .line 14
    sget-object v0, Lo/shouldSplit;->asBinder:[Lo/shouldSplit;

    invoke-virtual {v0}, [Lo/shouldSplit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/shouldSplit;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lo/shouldSplit;->onRelationshipValidationResult:Ljava/lang/String;

    return-object v0
.end method
