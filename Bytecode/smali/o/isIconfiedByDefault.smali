.class public final enum Lo/isIconfiedByDefault;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/isIconfiedByDefault;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/isIconfiedByDefault;

.field private static enum ICustomTabsCallback$Stub:Lo/isIconfiedByDefault;

.field private static enum ICustomTabsCallback$Stub$Proxy:Lo/isIconfiedByDefault;

.field private static enum ICustomTabsService:Lo/isIconfiedByDefault;

.field private static enum asBinder:Lo/isIconfiedByDefault;

.field private static enum asInterface:Lo/isIconfiedByDefault;

.field public static final enum extraCallback:Lo/isIconfiedByDefault;

.field private static enum getInterfaceDescriptor:Lo/isIconfiedByDefault;

.field private static enum newSession:Lo/isIconfiedByDefault;

.field public static final enum onMessageChannelReady:Lo/isIconfiedByDefault;

.field private static enum onNavigationEvent:Lo/isIconfiedByDefault;

.field public static final enum onPostMessage:Lo/isIconfiedByDefault;

.field private static enum onRelationshipValidationResult:Lo/isIconfiedByDefault;

.field private static enum onTransact:Lo/isIconfiedByDefault;

.field private static final synthetic postMessage:[Lo/isIconfiedByDefault;

.field private static enum warmup:Lo/isIconfiedByDefault;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 4
    new-instance v0, Lo/isIconfiedByDefault;

    const/4 v1, 0x0

    const-string v2, "FINISHED"

    invoke-direct {v0, v2, v1}, Lo/isIconfiedByDefault;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/isIconfiedByDefault;->extraCallback:Lo/isIconfiedByDefault;

    new-instance v0, Lo/isIconfiedByDefault;

    const/4 v2, 0x1

    const-string v3, "RECIEVED"

    invoke-direct {v0, v3, v2}, Lo/isIconfiedByDefault;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/isIconfiedByDefault;->ICustomTabsCallback:Lo/isIconfiedByDefault;

    new-instance v0, Lo/isIconfiedByDefault;

    const/4 v3, 0x2

    const-string v4, "STOPPED"

    invoke-direct {v0, v4, v3}, Lo/isIconfiedByDefault;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/isIconfiedByDefault;->onPostMessage:Lo/isIconfiedByDefault;

    new-instance v0, Lo/isIconfiedByDefault;

    const/4 v4, 0x3

    const-string v5, "PLAYING"

    invoke-direct {v0, v5, v4}, Lo/isIconfiedByDefault;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/isIconfiedByDefault;->onNavigationEvent:Lo/isIconfiedByDefault;

    new-instance v0, Lo/isIconfiedByDefault;

    const/4 v5, 0x4

    const-string v6, "RECORDING"

    invoke-direct {v0, v6, v5}, Lo/isIconfiedByDefault;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/isIconfiedByDefault;->onRelationshipValidationResult:Lo/isIconfiedByDefault;

    new-instance v0, Lo/isIconfiedByDefault;

    const/4 v6, 0x5

    const-string v7, "ENCODED"

    invoke-direct {v0, v7, v6}, Lo/isIconfiedByDefault;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/isIconfiedByDefault;->asInterface:Lo/isIconfiedByDefault;

    new-instance v0, Lo/isIconfiedByDefault;

    const/4 v7, 0x6

    const-string v8, "RUNNING"

    invoke-direct {v0, v8, v7}, Lo/isIconfiedByDefault;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/isIconfiedByDefault;->onTransact:Lo/isIconfiedByDefault;

    new-instance v0, Lo/isIconfiedByDefault;

    const/4 v8, 0x7

    const-string v9, "NOTRUNNING"

    invoke-direct {v0, v9, v8}, Lo/isIconfiedByDefault;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/isIconfiedByDefault;->asBinder:Lo/isIconfiedByDefault;

    new-instance v0, Lo/isIconfiedByDefault;

    const/16 v9, 0x8

    const-string v10, "STOPPING"

    invoke-direct {v0, v10, v9}, Lo/isIconfiedByDefault;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/isIconfiedByDefault;->ICustomTabsCallback$Stub:Lo/isIconfiedByDefault;

    new-instance v0, Lo/isIconfiedByDefault;

    const/16 v10, 0x9

    const-string v11, "ERROR"

    invoke-direct {v0, v11, v10}, Lo/isIconfiedByDefault;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/isIconfiedByDefault;->ICustomTabsCallback$Stub$Proxy:Lo/isIconfiedByDefault;

    new-instance v0, Lo/isIconfiedByDefault;

    const/16 v11, 0xa

    const-string v12, "RECORD_ERROR"

    invoke-direct {v0, v12, v11}, Lo/isIconfiedByDefault;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/isIconfiedByDefault;->ICustomTabsService:Lo/isIconfiedByDefault;

    .line 5
    new-instance v0, Lo/isIconfiedByDefault;

    const/16 v12, 0xb

    const-string v13, "ERROR_LIMIT_CROSSED"

    invoke-direct {v0, v13, v12}, Lo/isIconfiedByDefault;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/isIconfiedByDefault;->warmup:Lo/isIconfiedByDefault;

    .line 6
    new-instance v0, Lo/isIconfiedByDefault;

    const/16 v13, 0xc

    const-string v14, "TRANSMITTING"

    invoke-direct {v0, v14, v13}, Lo/isIconfiedByDefault;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/isIconfiedByDefault;->getInterfaceDescriptor:Lo/isIconfiedByDefault;

    .line 7
    new-instance v0, Lo/isIconfiedByDefault;

    const/16 v14, 0xd

    const-string v15, "RECEIVED_STOPPER"

    invoke-direct {v0, v15, v14}, Lo/isIconfiedByDefault;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/isIconfiedByDefault;->newSession:Lo/isIconfiedByDefault;

    .line 8
    new-instance v0, Lo/isIconfiedByDefault;

    const/16 v15, 0xe

    const-string v14, "LOOP_COMPLETE"

    invoke-direct {v0, v14, v15}, Lo/isIconfiedByDefault;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/isIconfiedByDefault;->onMessageChannelReady:Lo/isIconfiedByDefault;

    const/16 v14, 0xf

    new-array v14, v14, [Lo/isIconfiedByDefault;

    .line 3
    sget-object v16, Lo/isIconfiedByDefault;->extraCallback:Lo/isIconfiedByDefault;

    aput-object v16, v14, v1

    sget-object v1, Lo/isIconfiedByDefault;->ICustomTabsCallback:Lo/isIconfiedByDefault;

    aput-object v1, v14, v2

    sget-object v1, Lo/isIconfiedByDefault;->onPostMessage:Lo/isIconfiedByDefault;

    aput-object v1, v14, v3

    sget-object v1, Lo/isIconfiedByDefault;->onNavigationEvent:Lo/isIconfiedByDefault;

    aput-object v1, v14, v4

    sget-object v1, Lo/isIconfiedByDefault;->onRelationshipValidationResult:Lo/isIconfiedByDefault;

    aput-object v1, v14, v5

    sget-object v1, Lo/isIconfiedByDefault;->asInterface:Lo/isIconfiedByDefault;

    aput-object v1, v14, v6

    sget-object v1, Lo/isIconfiedByDefault;->onTransact:Lo/isIconfiedByDefault;

    aput-object v1, v14, v7

    sget-object v1, Lo/isIconfiedByDefault;->asBinder:Lo/isIconfiedByDefault;

    aput-object v1, v14, v8

    sget-object v1, Lo/isIconfiedByDefault;->ICustomTabsCallback$Stub:Lo/isIconfiedByDefault;

    aput-object v1, v14, v9

    sget-object v1, Lo/isIconfiedByDefault;->ICustomTabsCallback$Stub$Proxy:Lo/isIconfiedByDefault;

    aput-object v1, v14, v10

    sget-object v1, Lo/isIconfiedByDefault;->ICustomTabsService:Lo/isIconfiedByDefault;

    aput-object v1, v14, v11

    sget-object v1, Lo/isIconfiedByDefault;->warmup:Lo/isIconfiedByDefault;

    aput-object v1, v14, v12

    sget-object v1, Lo/isIconfiedByDefault;->getInterfaceDescriptor:Lo/isIconfiedByDefault;

    aput-object v1, v14, v13

    sget-object v1, Lo/isIconfiedByDefault;->newSession:Lo/isIconfiedByDefault;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    aput-object v0, v14, v15

    sput-object v14, Lo/isIconfiedByDefault;->postMessage:[Lo/isIconfiedByDefault;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/isIconfiedByDefault;
    .locals 1

    .line 3
    const-class v0, Lo/isIconfiedByDefault;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/isIconfiedByDefault;

    return-object p0
.end method

.method public static values()[Lo/isIconfiedByDefault;
    .locals 1

    .line 3
    sget-object v0, Lo/isIconfiedByDefault;->postMessage:[Lo/isIconfiedByDefault;

    invoke-virtual {v0}, [Lo/isIconfiedByDefault;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/isIconfiedByDefault;

    return-object v0
.end method
