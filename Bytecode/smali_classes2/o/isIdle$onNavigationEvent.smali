.class final enum Lo/isIdle$onNavigationEvent;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isIdle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/isIdle$onNavigationEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static enum ICustomTabsCallback:Lo/isIdle$onNavigationEvent;

.field private static enum ICustomTabsCallback$Stub:Lo/isIdle$onNavigationEvent;

.field private static enum asBinder:Lo/isIdle$onNavigationEvent;

.field private static enum extraCallback:Lo/isIdle$onNavigationEvent;

.field private static enum onNavigationEvent:Lo/isIdle$onNavigationEvent;

.field private static enum onPostMessage:Lo/isIdle$onNavigationEvent;

.field private static final synthetic onRelationshipValidationResult:[Lo/isIdle$onNavigationEvent;


# instance fields
.field final onMessageChannelReady:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 201
    new-instance v0, Lo/isIdle$onNavigationEvent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "HEADER_TABLE_SIZE"

    invoke-direct {v0, v3, v1, v2}, Lo/isIdle$onNavigationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/isIdle$onNavigationEvent;->onPostMessage:Lo/isIdle$onNavigationEvent;

    .line 202
    new-instance v0, Lo/isIdle$onNavigationEvent;

    const/4 v3, 0x2

    const-string v4, "ENABLE_PUSH"

    invoke-direct {v0, v4, v2, v3}, Lo/isIdle$onNavigationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/isIdle$onNavigationEvent;->ICustomTabsCallback:Lo/isIdle$onNavigationEvent;

    .line 203
    new-instance v0, Lo/isIdle$onNavigationEvent;

    const/4 v4, 0x4

    const-string v5, "MAX_CONCURRENT_STREAMS"

    invoke-direct {v0, v5, v3, v4}, Lo/isIdle$onNavigationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/isIdle$onNavigationEvent;->onNavigationEvent:Lo/isIdle$onNavigationEvent;

    .line 204
    new-instance v0, Lo/isIdle$onNavigationEvent;

    const/4 v5, 0x3

    const/4 v6, 0x5

    const-string v7, "MAX_FRAME_SIZE"

    invoke-direct {v0, v7, v5, v6}, Lo/isIdle$onNavigationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/isIdle$onNavigationEvent;->extraCallback:Lo/isIdle$onNavigationEvent;

    .line 205
    new-instance v0, Lo/isIdle$onNavigationEvent;

    const/4 v7, 0x6

    const-string v8, "MAX_HEADER_LIST_SIZE"

    invoke-direct {v0, v8, v4, v7}, Lo/isIdle$onNavigationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/isIdle$onNavigationEvent;->asBinder:Lo/isIdle$onNavigationEvent;

    .line 206
    new-instance v0, Lo/isIdle$onNavigationEvent;

    const-string v8, "INITIAL_WINDOW_SIZE"

    const/4 v9, 0x7

    invoke-direct {v0, v8, v6, v9}, Lo/isIdle$onNavigationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/isIdle$onNavigationEvent;->ICustomTabsCallback$Stub:Lo/isIdle$onNavigationEvent;

    new-array v7, v7, [Lo/isIdle$onNavigationEvent;

    .line 200
    sget-object v8, Lo/isIdle$onNavigationEvent;->onPostMessage:Lo/isIdle$onNavigationEvent;

    aput-object v8, v7, v1

    sget-object v1, Lo/isIdle$onNavigationEvent;->ICustomTabsCallback:Lo/isIdle$onNavigationEvent;

    aput-object v1, v7, v2

    sget-object v1, Lo/isIdle$onNavigationEvent;->onNavigationEvent:Lo/isIdle$onNavigationEvent;

    aput-object v1, v7, v3

    sget-object v1, Lo/isIdle$onNavigationEvent;->extraCallback:Lo/isIdle$onNavigationEvent;

    aput-object v1, v7, v5

    sget-object v1, Lo/isIdle$onNavigationEvent;->asBinder:Lo/isIdle$onNavigationEvent;

    aput-object v1, v7, v4

    aput-object v0, v7, v6

    sput-object v7, Lo/isIdle$onNavigationEvent;->onRelationshipValidationResult:[Lo/isIdle$onNavigationEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 210
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 211
    iput p3, p0, Lo/isIdle$onNavigationEvent;->onMessageChannelReady:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/isIdle$onNavigationEvent;
    .locals 1

    .line 200
    const-class v0, Lo/isIdle$onNavigationEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/isIdle$onNavigationEvent;

    return-object p0
.end method

.method public static values()[Lo/isIdle$onNavigationEvent;
    .locals 1

    .line 200
    sget-object v0, Lo/isIdle$onNavigationEvent;->onRelationshipValidationResult:[Lo/isIdle$onNavigationEvent;

    invoke-virtual {v0}, [Lo/isIdle$onNavigationEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/isIdle$onNavigationEvent;

    return-object v0
.end method
