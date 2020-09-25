.class public final enum Lo/fU$onPostMessage;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/fU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/fU$onPostMessage;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/fU$onPostMessage;

.field private static final synthetic asInterface:[Lo/fU$onPostMessage;

.field public static final enum extraCallback:Lo/fU$onPostMessage;

.field public static final enum onMessageChannelReady:Lo/fU$onPostMessage;

.field public static final enum onNavigationEvent:Lo/fU$onPostMessage;

.field public static final enum onPostMessage:Lo/fU$onPostMessage;

.field public static final enum onRelationshipValidationResult:Lo/fU$onPostMessage;

.field public static final enum onTransact:Lo/fU$onPostMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 3
    new-instance v0, Lo/fU$onPostMessage;

    const/4 v1, 0x0

    const-string v2, "GET_MEMOIZED_IS_INITIALIZED"

    invoke-direct {v0, v2, v1}, Lo/fU$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/fU$onPostMessage;->onNavigationEvent:Lo/fU$onPostMessage;

    .line 4
    new-instance v0, Lo/fU$onPostMessage;

    const/4 v2, 0x1

    const-string v3, "SET_MEMOIZED_IS_INITIALIZED"

    invoke-direct {v0, v3, v2}, Lo/fU$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/fU$onPostMessage;->onPostMessage:Lo/fU$onPostMessage;

    .line 5
    new-instance v0, Lo/fU$onPostMessage;

    const/4 v3, 0x2

    const-string v4, "BUILD_MESSAGE_INFO"

    invoke-direct {v0, v4, v3}, Lo/fU$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/fU$onPostMessage;->extraCallback:Lo/fU$onPostMessage;

    .line 6
    new-instance v0, Lo/fU$onPostMessage;

    const/4 v4, 0x3

    const-string v5, "NEW_MUTABLE_INSTANCE"

    invoke-direct {v0, v5, v4}, Lo/fU$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/fU$onPostMessage;->onMessageChannelReady:Lo/fU$onPostMessage;

    .line 7
    new-instance v0, Lo/fU$onPostMessage;

    const/4 v5, 0x4

    const-string v6, "NEW_BUILDER"

    invoke-direct {v0, v6, v5}, Lo/fU$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/fU$onPostMessage;->ICustomTabsCallback:Lo/fU$onPostMessage;

    .line 8
    new-instance v0, Lo/fU$onPostMessage;

    const/4 v6, 0x5

    const-string v7, "GET_DEFAULT_INSTANCE"

    invoke-direct {v0, v7, v6}, Lo/fU$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/fU$onPostMessage;->onTransact:Lo/fU$onPostMessage;

    .line 9
    new-instance v0, Lo/fU$onPostMessage;

    const/4 v7, 0x6

    const-string v8, "GET_PARSER"

    invoke-direct {v0, v8, v7}, Lo/fU$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/fU$onPostMessage;->onRelationshipValidationResult:Lo/fU$onPostMessage;

    const/4 v8, 0x7

    new-array v8, v8, [Lo/fU$onPostMessage;

    .line 10
    sget-object v9, Lo/fU$onPostMessage;->onNavigationEvent:Lo/fU$onPostMessage;

    aput-object v9, v8, v1

    sget-object v1, Lo/fU$onPostMessage;->onPostMessage:Lo/fU$onPostMessage;

    aput-object v1, v8, v2

    sget-object v1, Lo/fU$onPostMessage;->extraCallback:Lo/fU$onPostMessage;

    aput-object v1, v8, v3

    sget-object v1, Lo/fU$onPostMessage;->onMessageChannelReady:Lo/fU$onPostMessage;

    aput-object v1, v8, v4

    sget-object v1, Lo/fU$onPostMessage;->ICustomTabsCallback:Lo/fU$onPostMessage;

    aput-object v1, v8, v5

    sget-object v1, Lo/fU$onPostMessage;->onTransact:Lo/fU$onPostMessage;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lo/fU$onPostMessage;->asInterface:[Lo/fU$onPostMessage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lo/fU$onPostMessage;
    .locals 1

    .line 1
    sget-object v0, Lo/fU$onPostMessage;->asInterface:[Lo/fU$onPostMessage;

    invoke-virtual {v0}, [Lo/fU$onPostMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/fU$onPostMessage;

    return-object v0
.end method
