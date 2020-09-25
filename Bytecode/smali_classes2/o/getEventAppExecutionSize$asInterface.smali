.class public final enum Lo/getEventAppExecutionSize$asInterface;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getEventAppExecutionSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "asInterface"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/getEventAppExecutionSize$asInterface;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/getEventAppExecutionSize$asInterface;

.field public static final enum asBinder:Lo/getEventAppExecutionSize$asInterface;

.field private static final synthetic asInterface:[Lo/getEventAppExecutionSize$asInterface;

.field public static final enum extraCallback:Lo/getEventAppExecutionSize$asInterface;

.field public static final enum onMessageChannelReady:Lo/getEventAppExecutionSize$asInterface;

.field public static final enum onNavigationEvent:Lo/getEventAppExecutionSize$asInterface;

.field public static final enum onPostMessage:Lo/getEventAppExecutionSize$asInterface;

.field public static final enum onRelationshipValidationResult:Lo/getEventAppExecutionSize$asInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 209
    new-instance v0, Lo/getEventAppExecutionSize$asInterface;

    const/4 v1, 0x0

    const-string v2, "GET_MEMOIZED_IS_INITIALIZED"

    invoke-direct {v0, v2, v1}, Lo/getEventAppExecutionSize$asInterface;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getEventAppExecutionSize$asInterface;->onMessageChannelReady:Lo/getEventAppExecutionSize$asInterface;

    .line 210
    new-instance v0, Lo/getEventAppExecutionSize$asInterface;

    const/4 v2, 0x1

    const-string v3, "SET_MEMOIZED_IS_INITIALIZED"

    invoke-direct {v0, v3, v2}, Lo/getEventAppExecutionSize$asInterface;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getEventAppExecutionSize$asInterface;->onPostMessage:Lo/getEventAppExecutionSize$asInterface;

    .line 213
    new-instance v0, Lo/getEventAppExecutionSize$asInterface;

    const/4 v3, 0x2

    const-string v4, "BUILD_MESSAGE_INFO"

    invoke-direct {v0, v4, v3}, Lo/getEventAppExecutionSize$asInterface;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getEventAppExecutionSize$asInterface;->onNavigationEvent:Lo/getEventAppExecutionSize$asInterface;

    .line 214
    new-instance v0, Lo/getEventAppExecutionSize$asInterface;

    const/4 v4, 0x3

    const-string v5, "NEW_MUTABLE_INSTANCE"

    invoke-direct {v0, v5, v4}, Lo/getEventAppExecutionSize$asInterface;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getEventAppExecutionSize$asInterface;->extraCallback:Lo/getEventAppExecutionSize$asInterface;

    .line 215
    new-instance v0, Lo/getEventAppExecutionSize$asInterface;

    const/4 v5, 0x4

    const-string v6, "NEW_BUILDER"

    invoke-direct {v0, v6, v5}, Lo/getEventAppExecutionSize$asInterface;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getEventAppExecutionSize$asInterface;->ICustomTabsCallback:Lo/getEventAppExecutionSize$asInterface;

    .line 216
    new-instance v0, Lo/getEventAppExecutionSize$asInterface;

    const/4 v6, 0x5

    const-string v7, "GET_DEFAULT_INSTANCE"

    invoke-direct {v0, v7, v6}, Lo/getEventAppExecutionSize$asInterface;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getEventAppExecutionSize$asInterface;->onRelationshipValidationResult:Lo/getEventAppExecutionSize$asInterface;

    .line 217
    new-instance v0, Lo/getEventAppExecutionSize$asInterface;

    const/4 v7, 0x6

    const-string v8, "GET_PARSER"

    invoke-direct {v0, v8, v7}, Lo/getEventAppExecutionSize$asInterface;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getEventAppExecutionSize$asInterface;->asBinder:Lo/getEventAppExecutionSize$asInterface;

    const/4 v8, 0x7

    new-array v8, v8, [Lo/getEventAppExecutionSize$asInterface;

    .line 207
    sget-object v9, Lo/getEventAppExecutionSize$asInterface;->onMessageChannelReady:Lo/getEventAppExecutionSize$asInterface;

    aput-object v9, v8, v1

    sget-object v1, Lo/getEventAppExecutionSize$asInterface;->onPostMessage:Lo/getEventAppExecutionSize$asInterface;

    aput-object v1, v8, v2

    sget-object v1, Lo/getEventAppExecutionSize$asInterface;->onNavigationEvent:Lo/getEventAppExecutionSize$asInterface;

    aput-object v1, v8, v3

    sget-object v1, Lo/getEventAppExecutionSize$asInterface;->extraCallback:Lo/getEventAppExecutionSize$asInterface;

    aput-object v1, v8, v4

    sget-object v1, Lo/getEventAppExecutionSize$asInterface;->ICustomTabsCallback:Lo/getEventAppExecutionSize$asInterface;

    aput-object v1, v8, v5

    sget-object v1, Lo/getEventAppExecutionSize$asInterface;->onRelationshipValidationResult:Lo/getEventAppExecutionSize$asInterface;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lo/getEventAppExecutionSize$asInterface;->asInterface:[Lo/getEventAppExecutionSize$asInterface;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 207
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/getEventAppExecutionSize$asInterface;
    .locals 1

    .line 207
    const-class v0, Lo/getEventAppExecutionSize$asInterface;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/getEventAppExecutionSize$asInterface;

    return-object p0
.end method

.method public static values()[Lo/getEventAppExecutionSize$asInterface;
    .locals 1

    .line 207
    sget-object v0, Lo/getEventAppExecutionSize$asInterface;->asInterface:[Lo/getEventAppExecutionSize$asInterface;

    invoke-virtual {v0}, [Lo/getEventAppExecutionSize$asInterface;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/getEventAppExecutionSize$asInterface;

    return-object v0
.end method
