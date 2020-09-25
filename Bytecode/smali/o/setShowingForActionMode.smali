.class public final enum Lo/setShowingForActionMode;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/setShowingForActionMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/setShowingForActionMode;

.field private static final synthetic extraCallback:[Lo/setShowingForActionMode;

.field public static final enum onNavigationEvent:Lo/setShowingForActionMode;


# instance fields
.field public final onMessageChannelReady:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 9
    new-instance v0, Lo/setShowingForActionMode;

    const/4 v1, 0x0

    const-string v2, "JSON"

    const-string v3, ".json"

    invoke-direct {v0, v2, v1, v3}, Lo/setShowingForActionMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/setShowingForActionMode;->onNavigationEvent:Lo/setShowingForActionMode;

    .line 10
    new-instance v0, Lo/setShowingForActionMode;

    const/4 v2, 0x1

    const-string v3, "ZIP"

    const-string v4, ".zip"

    invoke-direct {v0, v3, v2, v4}, Lo/setShowingForActionMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/setShowingForActionMode;->ICustomTabsCallback:Lo/setShowingForActionMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lo/setShowingForActionMode;

    .line 8
    sget-object v4, Lo/setShowingForActionMode;->onNavigationEvent:Lo/setShowingForActionMode;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lo/setShowingForActionMode;->extraCallback:[Lo/setShowingForActionMode;

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

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, Lo/setShowingForActionMode;->onMessageChannelReady:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/setShowingForActionMode;
    .locals 1

    .line 8
    const-class v0, Lo/setShowingForActionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/setShowingForActionMode;

    return-object p0
.end method

.method public static values()[Lo/setShowingForActionMode;
    .locals 1

    .line 8
    sget-object v0, Lo/setShowingForActionMode;->extraCallback:[Lo/setShowingForActionMode;

    invoke-virtual {v0}, [Lo/setShowingForActionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/setShowingForActionMode;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lo/setShowingForActionMode;->onMessageChannelReady:Ljava/lang/String;

    return-object v0
.end method
