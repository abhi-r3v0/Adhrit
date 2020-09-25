.class public final enum Lo/aS;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/aS;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/aS;

.field private static final synthetic ICustomTabsCallback$Stub:[Lo/aS;

.field public static final enum extraCallback:Lo/aS;

.field public static final enum onMessageChannelReady:Lo/aS;

.field public static final enum onNavigationEvent:Lo/aS;

.field public static final enum onPostMessage:Lo/aS;

.field public static final enum onTransact:Lo/aS;


# instance fields
.field private onRelationshipValidationResult:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 6
    new-instance v0, Lo/aS;

    const/4 v1, 0x0

    const-string v2, "TRACE_EVENT_RATE_LIMITED"

    const-string v3, "_fstec"

    invoke-direct {v0, v2, v1, v3}, Lo/aS;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/aS;->extraCallback:Lo/aS;

    .line 7
    new-instance v0, Lo/aS;

    const/4 v2, 0x1

    const-string v3, "NETWORK_TRACE_EVENT_RATE_LIMITED"

    const-string v4, "_fsntc"

    invoke-direct {v0, v3, v2, v4}, Lo/aS;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/aS;->onNavigationEvent:Lo/aS;

    .line 8
    new-instance v0, Lo/aS;

    const/4 v3, 0x2

    const-string v4, "TRACE_STARTED_NOT_STOPPED"

    const-string v5, "_tsns"

    invoke-direct {v0, v4, v3, v5}, Lo/aS;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/aS;->onPostMessage:Lo/aS;

    .line 9
    new-instance v0, Lo/aS;

    const/4 v4, 0x3

    const-string v5, "FRAMES_TOTAL"

    const-string v6, "_fr_tot"

    invoke-direct {v0, v5, v4, v6}, Lo/aS;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/aS;->ICustomTabsCallback:Lo/aS;

    .line 10
    new-instance v0, Lo/aS;

    const/4 v5, 0x4

    const-string v6, "FRAMES_SLOW"

    const-string v7, "_fr_slo"

    invoke-direct {v0, v6, v5, v7}, Lo/aS;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/aS;->onMessageChannelReady:Lo/aS;

    .line 11
    new-instance v0, Lo/aS;

    const/4 v6, 0x5

    const-string v7, "FRAMES_FROZEN"

    const-string v8, "_fr_fzn"

    invoke-direct {v0, v7, v6, v8}, Lo/aS;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/aS;->onTransact:Lo/aS;

    const/4 v7, 0x6

    new-array v7, v7, [Lo/aS;

    .line 12
    sget-object v8, Lo/aS;->extraCallback:Lo/aS;

    aput-object v8, v7, v1

    sget-object v1, Lo/aS;->onNavigationEvent:Lo/aS;

    aput-object v1, v7, v2

    sget-object v1, Lo/aS;->onPostMessage:Lo/aS;

    aput-object v1, v7, v3

    sget-object v1, Lo/aS;->ICustomTabsCallback:Lo/aS;

    aput-object v1, v7, v4

    sget-object v1, Lo/aS;->onMessageChannelReady:Lo/aS;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lo/aS;->ICustomTabsCallback$Stub:[Lo/aS;

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

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-object p3, p0, Lo/aS;->onRelationshipValidationResult:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lo/aS;
    .locals 1

    .line 1
    sget-object v0, Lo/aS;->ICustomTabsCallback$Stub:[Lo/aS;

    invoke-virtual {v0}, [Lo/aS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/aS;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lo/aS;->onRelationshipValidationResult:Ljava/lang/String;

    return-object v0
.end method
