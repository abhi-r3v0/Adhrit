.class public final enum Lo/getJwtIdToken;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/getJwtIdToken;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/getJwtIdToken;

.field public static final enum ICustomTabsCallback$Stub:Lo/getJwtIdToken;

.field public static final enum asBinder:Lo/getJwtIdToken;

.field public static final enum asInterface:Lo/getJwtIdToken;

.field public static final enum extraCallback:Lo/getJwtIdToken;

.field private static final synthetic newSession:[Lo/getJwtIdToken;

.field public static final enum onMessageChannelReady:Lo/getJwtIdToken;

.field public static final enum onNavigationEvent:Lo/getJwtIdToken;

.field public static final enum onPostMessage:Lo/getJwtIdToken;

.field public static final enum onTransact:Lo/getJwtIdToken;


# instance fields
.field private final onRelationshipValidationResult:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 5
    new-instance v0, Lo/getJwtIdToken;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "INT"

    invoke-direct {v0, v3, v1, v2}, Lo/getJwtIdToken;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lo/getJwtIdToken;->onPostMessage:Lo/getJwtIdToken;

    .line 6
    new-instance v0, Lo/getJwtIdToken;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "LONG"

    invoke-direct {v0, v4, v3, v2}, Lo/getJwtIdToken;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lo/getJwtIdToken;->onNavigationEvent:Lo/getJwtIdToken;

    .line 7
    new-instance v0, Lo/getJwtIdToken;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v4, 0x2

    const-string v5, "FLOAT"

    invoke-direct {v0, v5, v4, v2}, Lo/getJwtIdToken;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lo/getJwtIdToken;->onMessageChannelReady:Lo/getJwtIdToken;

    .line 8
    new-instance v0, Lo/getJwtIdToken;

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v5, 0x3

    const-string v6, "DOUBLE"

    invoke-direct {v0, v6, v5, v2}, Lo/getJwtIdToken;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lo/getJwtIdToken;->extraCallback:Lo/getJwtIdToken;

    .line 9
    new-instance v0, Lo/getJwtIdToken;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v6, 0x4

    const-string v7, "BOOLEAN"

    invoke-direct {v0, v7, v6, v2}, Lo/getJwtIdToken;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lo/getJwtIdToken;->ICustomTabsCallback:Lo/getJwtIdToken;

    .line 10
    new-instance v0, Lo/getJwtIdToken;

    const/4 v2, 0x5

    const-string v7, "STRING"

    const-string v8, ""

    invoke-direct {v0, v7, v2, v8}, Lo/getJwtIdToken;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lo/getJwtIdToken;->ICustomTabsCallback$Stub:Lo/getJwtIdToken;

    .line 11
    new-instance v0, Lo/getJwtIdToken;

    sget-object v7, Lo/setMandatory;->onMessageChannelReady:Lo/setMandatory;

    const/4 v8, 0x6

    const-string v9, "BYTE_STRING"

    invoke-direct {v0, v9, v8, v7}, Lo/getJwtIdToken;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lo/getJwtIdToken;->onTransact:Lo/getJwtIdToken;

    .line 12
    new-instance v0, Lo/getJwtIdToken;

    const/4 v7, 0x0

    const/4 v9, 0x7

    const-string v10, "ENUM"

    invoke-direct {v0, v10, v9, v7}, Lo/getJwtIdToken;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lo/getJwtIdToken;->asBinder:Lo/getJwtIdToken;

    .line 13
    new-instance v0, Lo/getJwtIdToken;

    const/16 v10, 0x8

    const-string v11, "MESSAGE"

    invoke-direct {v0, v11, v10, v7}, Lo/getJwtIdToken;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lo/getJwtIdToken;->asInterface:Lo/getJwtIdToken;

    const/16 v7, 0x9

    new-array v7, v7, [Lo/getJwtIdToken;

    .line 14
    sget-object v11, Lo/getJwtIdToken;->onPostMessage:Lo/getJwtIdToken;

    aput-object v11, v7, v1

    sget-object v1, Lo/getJwtIdToken;->onNavigationEvent:Lo/getJwtIdToken;

    aput-object v1, v7, v3

    sget-object v1, Lo/getJwtIdToken;->onMessageChannelReady:Lo/getJwtIdToken;

    aput-object v1, v7, v4

    sget-object v1, Lo/getJwtIdToken;->extraCallback:Lo/getJwtIdToken;

    aput-object v1, v7, v5

    sget-object v1, Lo/getJwtIdToken;->ICustomTabsCallback:Lo/getJwtIdToken;

    aput-object v1, v7, v6

    sget-object v1, Lo/getJwtIdToken;->ICustomTabsCallback$Stub:Lo/getJwtIdToken;

    aput-object v1, v7, v2

    sget-object v1, Lo/getJwtIdToken;->onTransact:Lo/getJwtIdToken;

    aput-object v1, v7, v8

    sget-object v1, Lo/getJwtIdToken;->asBinder:Lo/getJwtIdToken;

    aput-object v1, v7, v9

    aput-object v0, v7, v10

    sput-object v7, Lo/getJwtIdToken;->newSession:[Lo/getJwtIdToken;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-object p3, p0, Lo/getJwtIdToken;->onRelationshipValidationResult:Ljava/lang/Object;

    return-void
.end method

.method public static values()[Lo/getJwtIdToken;
    .locals 1

    .line 1
    sget-object v0, Lo/getJwtIdToken;->newSession:[Lo/getJwtIdToken;

    invoke-virtual {v0}, [Lo/getJwtIdToken;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/getJwtIdToken;

    return-object v0
.end method
