.class final enum Lo/getExecutorService$onMessageChannelReady;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/getExecutorService$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/getExecutorService$onMessageChannelReady;

.field public static final enum ICustomTabsCallback$Stub:Lo/getExecutorService$onMessageChannelReady;

.field public static final enum asBinder:Lo/getExecutorService$onMessageChannelReady;

.field public static final enum asInterface:Lo/getExecutorService$onMessageChannelReady;

.field public static final enum extraCallback:Lo/getExecutorService$onMessageChannelReady;

.field private static final synthetic newSession:[Lo/getExecutorService$onMessageChannelReady;

.field public static final enum onMessageChannelReady:Lo/getExecutorService$onMessageChannelReady;

.field public static final enum onNavigationEvent:Lo/getExecutorService$onMessageChannelReady;

.field public static final enum onPostMessage:Lo/getExecutorService$onMessageChannelReady;

.field public static final enum onRelationshipValidationResult:Lo/getExecutorService$onMessageChannelReady;

.field public static final enum onTransact:Lo/getExecutorService$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 139
    new-instance v0, Lo/getExecutorService$onMessageChannelReady;

    const/4 v1, 0x0

    const-string v2, "HEADER"

    invoke-direct {v0, v2, v1}, Lo/getExecutorService$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getExecutorService$onMessageChannelReady;->onPostMessage:Lo/getExecutorService$onMessageChannelReady;

    .line 140
    new-instance v0, Lo/getExecutorService$onMessageChannelReady;

    const/4 v2, 0x1

    const-string v3, "HEADER_EXTRA_LEN"

    invoke-direct {v0, v3, v2}, Lo/getExecutorService$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getExecutorService$onMessageChannelReady;->ICustomTabsCallback:Lo/getExecutorService$onMessageChannelReady;

    .line 141
    new-instance v0, Lo/getExecutorService$onMessageChannelReady;

    const/4 v3, 0x2

    const-string v4, "HEADER_EXTRA"

    invoke-direct {v0, v4, v3}, Lo/getExecutorService$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getExecutorService$onMessageChannelReady;->onNavigationEvent:Lo/getExecutorService$onMessageChannelReady;

    .line 142
    new-instance v0, Lo/getExecutorService$onMessageChannelReady;

    const/4 v4, 0x3

    const-string v5, "HEADER_NAME"

    invoke-direct {v0, v5, v4}, Lo/getExecutorService$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getExecutorService$onMessageChannelReady;->extraCallback:Lo/getExecutorService$onMessageChannelReady;

    .line 143
    new-instance v0, Lo/getExecutorService$onMessageChannelReady;

    const/4 v5, 0x4

    const-string v6, "HEADER_COMMENT"

    invoke-direct {v0, v6, v5}, Lo/getExecutorService$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getExecutorService$onMessageChannelReady;->onMessageChannelReady:Lo/getExecutorService$onMessageChannelReady;

    .line 144
    new-instance v0, Lo/getExecutorService$onMessageChannelReady;

    const/4 v6, 0x5

    const-string v7, "HEADER_CRC"

    invoke-direct {v0, v7, v6}, Lo/getExecutorService$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getExecutorService$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getExecutorService$onMessageChannelReady;

    .line 145
    new-instance v0, Lo/getExecutorService$onMessageChannelReady;

    const/4 v7, 0x6

    const-string v8, "INITIALIZE_INFLATER"

    invoke-direct {v0, v8, v7}, Lo/getExecutorService$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getExecutorService$onMessageChannelReady;->onTransact:Lo/getExecutorService$onMessageChannelReady;

    .line 146
    new-instance v0, Lo/getExecutorService$onMessageChannelReady;

    const/4 v8, 0x7

    const-string v9, "INFLATING"

    invoke-direct {v0, v9, v8}, Lo/getExecutorService$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getExecutorService$onMessageChannelReady;->asInterface:Lo/getExecutorService$onMessageChannelReady;

    .line 147
    new-instance v0, Lo/getExecutorService$onMessageChannelReady;

    const/16 v9, 0x8

    const-string v10, "INFLATER_NEEDS_INPUT"

    invoke-direct {v0, v10, v9}, Lo/getExecutorService$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getExecutorService$onMessageChannelReady;->onRelationshipValidationResult:Lo/getExecutorService$onMessageChannelReady;

    .line 148
    new-instance v0, Lo/getExecutorService$onMessageChannelReady;

    const/16 v10, 0x9

    const-string v11, "TRAILER"

    invoke-direct {v0, v11, v10}, Lo/getExecutorService$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getExecutorService$onMessageChannelReady;->asBinder:Lo/getExecutorService$onMessageChannelReady;

    const/16 v11, 0xa

    new-array v11, v11, [Lo/getExecutorService$onMessageChannelReady;

    .line 138
    sget-object v12, Lo/getExecutorService$onMessageChannelReady;->onPostMessage:Lo/getExecutorService$onMessageChannelReady;

    aput-object v12, v11, v1

    sget-object v1, Lo/getExecutorService$onMessageChannelReady;->ICustomTabsCallback:Lo/getExecutorService$onMessageChannelReady;

    aput-object v1, v11, v2

    sget-object v1, Lo/getExecutorService$onMessageChannelReady;->onNavigationEvent:Lo/getExecutorService$onMessageChannelReady;

    aput-object v1, v11, v3

    sget-object v1, Lo/getExecutorService$onMessageChannelReady;->extraCallback:Lo/getExecutorService$onMessageChannelReady;

    aput-object v1, v11, v4

    sget-object v1, Lo/getExecutorService$onMessageChannelReady;->onMessageChannelReady:Lo/getExecutorService$onMessageChannelReady;

    aput-object v1, v11, v5

    sget-object v1, Lo/getExecutorService$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getExecutorService$onMessageChannelReady;

    aput-object v1, v11, v6

    sget-object v1, Lo/getExecutorService$onMessageChannelReady;->onTransact:Lo/getExecutorService$onMessageChannelReady;

    aput-object v1, v11, v7

    sget-object v1, Lo/getExecutorService$onMessageChannelReady;->asInterface:Lo/getExecutorService$onMessageChannelReady;

    aput-object v1, v11, v8

    sget-object v1, Lo/getExecutorService$onMessageChannelReady;->onRelationshipValidationResult:Lo/getExecutorService$onMessageChannelReady;

    aput-object v1, v11, v9

    aput-object v0, v11, v10

    sput-object v11, Lo/getExecutorService$onMessageChannelReady;->newSession:[Lo/getExecutorService$onMessageChannelReady;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 138
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/getExecutorService$onMessageChannelReady;
    .locals 1

    .line 138
    const-class v0, Lo/getExecutorService$onMessageChannelReady;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/getExecutorService$onMessageChannelReady;

    return-object p0
.end method

.method public static values()[Lo/getExecutorService$onMessageChannelReady;
    .locals 1

    .line 138
    sget-object v0, Lo/getExecutorService$onMessageChannelReady;->newSession:[Lo/getExecutorService$onMessageChannelReady;

    invoke-virtual {v0}, [Lo/getExecutorService$onMessageChannelReady;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/getExecutorService$onMessageChannelReady;

    return-object v0
.end method
