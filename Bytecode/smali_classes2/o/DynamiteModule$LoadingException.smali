.class public final enum Lo/DynamiteModule$LoadingException;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/DynamiteModule$LoadingException;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/DynamiteModule$LoadingException;

.field public static final enum ICustomTabsCallback$Stub:Lo/DynamiteModule$LoadingException;

.field public static final enum asBinder:Lo/DynamiteModule$LoadingException;

.field public static final enum asInterface:Lo/DynamiteModule$LoadingException;

.field public static final enum extraCallback:Lo/DynamiteModule$LoadingException;

.field private static final synthetic getInterfaceDescriptor:[Lo/DynamiteModule$LoadingException;

.field public static final enum onMessageChannelReady:Lo/DynamiteModule$LoadingException;

.field public static final enum onNavigationEvent:Lo/DynamiteModule$LoadingException;

.field public static final enum onPostMessage:Lo/DynamiteModule$LoadingException;

.field public static final enum onRelationshipValidationResult:Lo/DynamiteModule$LoadingException;


# instance fields
.field private final onTransact:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 5
    new-instance v0, Lo/DynamiteModule$LoadingException;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "INT"

    invoke-direct {v0, v3, v1, v2}, Lo/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lo/DynamiteModule$LoadingException;->ICustomTabsCallback:Lo/DynamiteModule$LoadingException;

    .line 6
    new-instance v0, Lo/DynamiteModule$LoadingException;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "LONG"

    invoke-direct {v0, v4, v3, v2}, Lo/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lo/DynamiteModule$LoadingException;->onPostMessage:Lo/DynamiteModule$LoadingException;

    .line 7
    new-instance v0, Lo/DynamiteModule$LoadingException;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v4, 0x2

    const-string v5, "FLOAT"

    invoke-direct {v0, v5, v4, v2}, Lo/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lo/DynamiteModule$LoadingException;->onMessageChannelReady:Lo/DynamiteModule$LoadingException;

    .line 8
    new-instance v0, Lo/DynamiteModule$LoadingException;

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v5, 0x3

    const-string v6, "DOUBLE"

    invoke-direct {v0, v6, v5, v2}, Lo/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lo/DynamiteModule$LoadingException;->onNavigationEvent:Lo/DynamiteModule$LoadingException;

    .line 9
    new-instance v0, Lo/DynamiteModule$LoadingException;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v6, 0x4

    const-string v7, "BOOLEAN"

    invoke-direct {v0, v7, v6, v2}, Lo/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lo/DynamiteModule$LoadingException;->extraCallback:Lo/DynamiteModule$LoadingException;

    .line 10
    new-instance v0, Lo/DynamiteModule$LoadingException;

    const/4 v2, 0x5

    const-string v7, "STRING"

    const-string v8, ""

    invoke-direct {v0, v7, v2, v8}, Lo/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lo/DynamiteModule$LoadingException;->ICustomTabsCallback$Stub:Lo/DynamiteModule$LoadingException;

    .line 11
    new-instance v0, Lo/DynamiteModule$LoadingException;

    sget-object v7, Lo/getMobileAdsSettingsManager;->onNavigationEvent:Lo/getMobileAdsSettingsManager;

    const/4 v8, 0x6

    const-string v9, "BYTE_STRING"

    invoke-direct {v0, v9, v8, v7}, Lo/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lo/DynamiteModule$LoadingException;->asBinder:Lo/DynamiteModule$LoadingException;

    .line 12
    new-instance v0, Lo/DynamiteModule$LoadingException;

    const/4 v7, 0x0

    const/4 v9, 0x7

    const-string v10, "ENUM"

    invoke-direct {v0, v10, v9, v7}, Lo/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lo/DynamiteModule$LoadingException;->asInterface:Lo/DynamiteModule$LoadingException;

    .line 13
    new-instance v0, Lo/DynamiteModule$LoadingException;

    const/16 v10, 0x8

    const-string v11, "MESSAGE"

    invoke-direct {v0, v11, v10, v7}, Lo/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lo/DynamiteModule$LoadingException;->onRelationshipValidationResult:Lo/DynamiteModule$LoadingException;

    const/16 v7, 0x9

    new-array v7, v7, [Lo/DynamiteModule$LoadingException;

    .line 14
    sget-object v11, Lo/DynamiteModule$LoadingException;->ICustomTabsCallback:Lo/DynamiteModule$LoadingException;

    aput-object v11, v7, v1

    sget-object v1, Lo/DynamiteModule$LoadingException;->onPostMessage:Lo/DynamiteModule$LoadingException;

    aput-object v1, v7, v3

    sget-object v1, Lo/DynamiteModule$LoadingException;->onMessageChannelReady:Lo/DynamiteModule$LoadingException;

    aput-object v1, v7, v4

    sget-object v1, Lo/DynamiteModule$LoadingException;->onNavigationEvent:Lo/DynamiteModule$LoadingException;

    aput-object v1, v7, v5

    sget-object v1, Lo/DynamiteModule$LoadingException;->extraCallback:Lo/DynamiteModule$LoadingException;

    aput-object v1, v7, v6

    sget-object v1, Lo/DynamiteModule$LoadingException;->ICustomTabsCallback$Stub:Lo/DynamiteModule$LoadingException;

    aput-object v1, v7, v2

    sget-object v1, Lo/DynamiteModule$LoadingException;->asBinder:Lo/DynamiteModule$LoadingException;

    aput-object v1, v7, v8

    sget-object v1, Lo/DynamiteModule$LoadingException;->asInterface:Lo/DynamiteModule$LoadingException;

    aput-object v1, v7, v9

    aput-object v0, v7, v10

    .line 15
    sput-object v7, Lo/DynamiteModule$LoadingException;->getInterfaceDescriptor:[Lo/DynamiteModule$LoadingException;

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
    iput-object p3, p0, Lo/DynamiteModule$LoadingException;->onTransact:Ljava/lang/Object;

    return-void
.end method

.method public static values()[Lo/DynamiteModule$LoadingException;
    .locals 1

    .line 1
    sget-object v0, Lo/DynamiteModule$LoadingException;->getInterfaceDescriptor:[Lo/DynamiteModule$LoadingException;

    invoke-virtual {v0}, [Lo/DynamiteModule$LoadingException;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/DynamiteModule$LoadingException;

    return-object v0
.end method
