.class public final enum Lo/Attribute$onMessageChannelReady;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Attribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/Attribute$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/Attribute$onMessageChannelReady;

.field public static final enum ICustomTabsCallback$Stub:Lo/Attribute$onMessageChannelReady;

.field public static final enum ICustomTabsCallback$Stub$Proxy:Lo/Attribute$onMessageChannelReady;

.field public static final enum ICustomTabsService:Lo/Attribute$onMessageChannelReady;

.field private static enum ICustomTabsService$Stub:Lo/Attribute$onMessageChannelReady;

.field private static final synthetic ICustomTabsService$Stub$Proxy:[Lo/Attribute$onMessageChannelReady;

.field private static enum IPostMessageService:Lo/Attribute$onMessageChannelReady;

.field private static enum IPostMessageService$Stub:Lo/Attribute$onMessageChannelReady;

.field public static final enum asBinder:Lo/Attribute$onMessageChannelReady;

.field public static final enum asInterface:Lo/Attribute$onMessageChannelReady;

.field public static final enum extraCallback:Lo/Attribute$onMessageChannelReady;

.field public static final enum extraCommand:Lo/Attribute$onMessageChannelReady;

.field public static final enum getInterfaceDescriptor:Lo/Attribute$onMessageChannelReady;

.field private static enum mayLaunchUrl:Lo/Attribute$onMessageChannelReady;

.field public static final enum newSession:Lo/Attribute$onMessageChannelReady;

.field public static final enum onMessageChannelReady:Lo/Attribute$onMessageChannelReady;

.field public static final enum onNavigationEvent:Lo/Attribute$onMessageChannelReady;

.field public static final enum onPostMessage:Lo/Attribute$onMessageChannelReady;

.field public static final enum onRelationshipValidationResult:Lo/Attribute$onMessageChannelReady;

.field public static final enum onTransact:Lo/Attribute$onMessageChannelReady;

.field public static final enum postMessage:Lo/Attribute$onMessageChannelReady;

.field public static final enum requestPostMessageChannel:Lo/Attribute$onMessageChannelReady;

.field public static final enum updateVisuals:Lo/Attribute$onMessageChannelReady;

.field private static enum validateRelationship:Lo/Attribute$onMessageChannelReady;

.field public static final enum warmup:Lo/Attribute$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 29
    new-instance v0, Lo/Attribute$onMessageChannelReady;

    const/4 v1, 0x0

    const-string v2, "ON_SET_HIERARCHY"

    invoke-direct {v0, v2, v1}, Lo/Attribute$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/Attribute$onMessageChannelReady;->onPostMessage:Lo/Attribute$onMessageChannelReady;

    .line 30
    new-instance v0, Lo/Attribute$onMessageChannelReady;

    const/4 v2, 0x1

    const-string v3, "ON_CLEAR_HIERARCHY"

    invoke-direct {v0, v3, v2}, Lo/Attribute$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/Attribute$onMessageChannelReady;->extraCallback:Lo/Attribute$onMessageChannelReady;

    .line 31
    new-instance v0, Lo/Attribute$onMessageChannelReady;

    const/4 v3, 0x2

    const-string v4, "ON_SET_CONTROLLER"

    invoke-direct {v0, v4, v3}, Lo/Attribute$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/Attribute$onMessageChannelReady;->onNavigationEvent:Lo/Attribute$onMessageChannelReady;

    .line 32
    new-instance v0, Lo/Attribute$onMessageChannelReady;

    const/4 v4, 0x3

    const-string v5, "ON_CLEAR_OLD_CONTROLLER"

    invoke-direct {v0, v5, v4}, Lo/Attribute$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/Attribute$onMessageChannelReady;->ICustomTabsCallback:Lo/Attribute$onMessageChannelReady;

    .line 33
    new-instance v0, Lo/Attribute$onMessageChannelReady;

    const/4 v5, 0x4

    const-string v6, "ON_CLEAR_CONTROLLER"

    invoke-direct {v0, v6, v5}, Lo/Attribute$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/Attribute$onMessageChannelReady;->onMessageChannelReady:Lo/Attribute$onMessageChannelReady;

    .line 34
    new-instance v0, Lo/Attribute$onMessageChannelReady;

    const/4 v6, 0x5

    const-string v7, "ON_INIT_CONTROLLER"

    invoke-direct {v0, v7, v6}, Lo/Attribute$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/Attribute$onMessageChannelReady;->asInterface:Lo/Attribute$onMessageChannelReady;

    .line 35
    new-instance v0, Lo/Attribute$onMessageChannelReady;

    const/4 v7, 0x6

    const-string v8, "ON_ATTACH_CONTROLLER"

    invoke-direct {v0, v8, v7}, Lo/Attribute$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/Attribute$onMessageChannelReady;->onTransact:Lo/Attribute$onMessageChannelReady;

    .line 36
    new-instance v0, Lo/Attribute$onMessageChannelReady;

    const/4 v8, 0x7

    const-string v9, "ON_DETACH_CONTROLLER"

    invoke-direct {v0, v9, v8}, Lo/Attribute$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/Attribute$onMessageChannelReady;->onRelationshipValidationResult:Lo/Attribute$onMessageChannelReady;

    .line 37
    new-instance v0, Lo/Attribute$onMessageChannelReady;

    const/16 v9, 0x8

    const-string v10, "ON_RELEASE_CONTROLLER"

    invoke-direct {v0, v10, v9}, Lo/Attribute$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/Attribute$onMessageChannelReady;->asBinder:Lo/Attribute$onMessageChannelReady;

    .line 38
    new-instance v0, Lo/Attribute$onMessageChannelReady;

    const/16 v10, 0x9

    const-string v11, "ON_DATASOURCE_SUBMIT"

    invoke-direct {v0, v11, v10}, Lo/Attribute$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/Attribute$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/Attribute$onMessageChannelReady;

    .line 39
    new-instance v0, Lo/Attribute$onMessageChannelReady;

    const/16 v11, 0xa

    const-string v12, "ON_DATASOURCE_RESULT"

    invoke-direct {v0, v12, v11}, Lo/Attribute$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/Attribute$onMessageChannelReady;->newSession:Lo/Attribute$onMessageChannelReady;

    .line 40
    new-instance v0, Lo/Attribute$onMessageChannelReady;

    const/16 v12, 0xb

    const-string v13, "ON_DATASOURCE_RESULT_INT"

    invoke-direct {v0, v13, v12}, Lo/Attribute$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/Attribute$onMessageChannelReady;->warmup:Lo/Attribute$onMessageChannelReady;

    .line 41
    new-instance v0, Lo/Attribute$onMessageChannelReady;

    const/16 v13, 0xc

    const-string v14, "ON_DATASOURCE_FAILURE"

    invoke-direct {v0, v14, v13}, Lo/Attribute$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/Attribute$onMessageChannelReady;->ICustomTabsService:Lo/Attribute$onMessageChannelReady;

    .line 42
    new-instance v0, Lo/Attribute$onMessageChannelReady;

    const/16 v14, 0xd

    const-string v15, "ON_DATASOURCE_FAILURE_INT"

    invoke-direct {v0, v15, v14}, Lo/Attribute$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/Attribute$onMessageChannelReady;->getInterfaceDescriptor:Lo/Attribute$onMessageChannelReady;

    .line 43
    new-instance v0, Lo/Attribute$onMessageChannelReady;

    const/16 v15, 0xe

    const-string v14, "ON_HOLDER_ATTACH"

    invoke-direct {v0, v14, v15}, Lo/Attribute$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/Attribute$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:Lo/Attribute$onMessageChannelReady;

    .line 44
    new-instance v0, Lo/Attribute$onMessageChannelReady;

    const/16 v14, 0xf

    const-string v15, "ON_HOLDER_DETACH"

    invoke-direct {v0, v15, v14}, Lo/Attribute$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/Attribute$onMessageChannelReady;->extraCommand:Lo/Attribute$onMessageChannelReady;

    .line 45
    new-instance v0, Lo/Attribute$onMessageChannelReady;

    const/16 v15, 0x10

    const-string v14, "ON_DRAWABLE_SHOW"

    invoke-direct {v0, v14, v15}, Lo/Attribute$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/Attribute$onMessageChannelReady;->updateVisuals:Lo/Attribute$onMessageChannelReady;

    .line 46
    new-instance v0, Lo/Attribute$onMessageChannelReady;

    const/16 v14, 0x11

    const-string v15, "ON_DRAWABLE_HIDE"

    invoke-direct {v0, v15, v14}, Lo/Attribute$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/Attribute$onMessageChannelReady;->requestPostMessageChannel:Lo/Attribute$onMessageChannelReady;

    .line 47
    new-instance v0, Lo/Attribute$onMessageChannelReady;

    const/16 v15, 0x12

    const-string v14, "ON_ACTIVITY_START"

    invoke-direct {v0, v14, v15}, Lo/Attribute$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/Attribute$onMessageChannelReady;->mayLaunchUrl:Lo/Attribute$onMessageChannelReady;

    .line 48
    new-instance v0, Lo/Attribute$onMessageChannelReady;

    const/16 v14, 0x13

    const-string v15, "ON_ACTIVITY_STOP"

    invoke-direct {v0, v15, v14}, Lo/Attribute$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/Attribute$onMessageChannelReady;->validateRelationship:Lo/Attribute$onMessageChannelReady;

    .line 49
    new-instance v0, Lo/Attribute$onMessageChannelReady;

    const/16 v15, 0x14

    const-string v14, "ON_RUN_CLEAR_CONTROLLER"

    invoke-direct {v0, v14, v15}, Lo/Attribute$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/Attribute$onMessageChannelReady;->IPostMessageService:Lo/Attribute$onMessageChannelReady;

    .line 50
    new-instance v0, Lo/Attribute$onMessageChannelReady;

    const/16 v14, 0x15

    const-string v15, "ON_SCHEDULE_CLEAR_CONTROLLER"

    invoke-direct {v0, v15, v14}, Lo/Attribute$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/Attribute$onMessageChannelReady;->ICustomTabsService$Stub:Lo/Attribute$onMessageChannelReady;

    .line 51
    new-instance v0, Lo/Attribute$onMessageChannelReady;

    const-string v15, "ON_SAME_CONTROLLER_SKIPPED"

    const/16 v14, 0x16

    invoke-direct {v0, v15, v14}, Lo/Attribute$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/Attribute$onMessageChannelReady;->IPostMessageService$Stub:Lo/Attribute$onMessageChannelReady;

    .line 52
    new-instance v0, Lo/Attribute$onMessageChannelReady;

    const-string v14, "ON_SUBMIT_CACHE_HIT"

    const/16 v15, 0x17

    invoke-direct {v0, v14, v15}, Lo/Attribute$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/Attribute$onMessageChannelReady;->postMessage:Lo/Attribute$onMessageChannelReady;

    const/16 v14, 0x18

    new-array v14, v14, [Lo/Attribute$onMessageChannelReady;

    .line 28
    sget-object v15, Lo/Attribute$onMessageChannelReady;->onPostMessage:Lo/Attribute$onMessageChannelReady;

    aput-object v15, v14, v1

    sget-object v1, Lo/Attribute$onMessageChannelReady;->extraCallback:Lo/Attribute$onMessageChannelReady;

    aput-object v1, v14, v2

    sget-object v1, Lo/Attribute$onMessageChannelReady;->onNavigationEvent:Lo/Attribute$onMessageChannelReady;

    aput-object v1, v14, v3

    sget-object v1, Lo/Attribute$onMessageChannelReady;->ICustomTabsCallback:Lo/Attribute$onMessageChannelReady;

    aput-object v1, v14, v4

    sget-object v1, Lo/Attribute$onMessageChannelReady;->onMessageChannelReady:Lo/Attribute$onMessageChannelReady;

    aput-object v1, v14, v5

    sget-object v1, Lo/Attribute$onMessageChannelReady;->asInterface:Lo/Attribute$onMessageChannelReady;

    aput-object v1, v14, v6

    sget-object v1, Lo/Attribute$onMessageChannelReady;->onTransact:Lo/Attribute$onMessageChannelReady;

    aput-object v1, v14, v7

    sget-object v1, Lo/Attribute$onMessageChannelReady;->onRelationshipValidationResult:Lo/Attribute$onMessageChannelReady;

    aput-object v1, v14, v8

    sget-object v1, Lo/Attribute$onMessageChannelReady;->asBinder:Lo/Attribute$onMessageChannelReady;

    aput-object v1, v14, v9

    sget-object v1, Lo/Attribute$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/Attribute$onMessageChannelReady;

    aput-object v1, v14, v10

    sget-object v1, Lo/Attribute$onMessageChannelReady;->newSession:Lo/Attribute$onMessageChannelReady;

    aput-object v1, v14, v11

    sget-object v1, Lo/Attribute$onMessageChannelReady;->warmup:Lo/Attribute$onMessageChannelReady;

    aput-object v1, v14, v12

    sget-object v1, Lo/Attribute$onMessageChannelReady;->ICustomTabsService:Lo/Attribute$onMessageChannelReady;

    aput-object v1, v14, v13

    sget-object v1, Lo/Attribute$onMessageChannelReady;->getInterfaceDescriptor:Lo/Attribute$onMessageChannelReady;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    sget-object v1, Lo/Attribute$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:Lo/Attribute$onMessageChannelReady;

    const/16 v2, 0xe

    aput-object v1, v14, v2

    sget-object v1, Lo/Attribute$onMessageChannelReady;->extraCommand:Lo/Attribute$onMessageChannelReady;

    const/16 v2, 0xf

    aput-object v1, v14, v2

    sget-object v1, Lo/Attribute$onMessageChannelReady;->updateVisuals:Lo/Attribute$onMessageChannelReady;

    const/16 v2, 0x10

    aput-object v1, v14, v2

    sget-object v1, Lo/Attribute$onMessageChannelReady;->requestPostMessageChannel:Lo/Attribute$onMessageChannelReady;

    const/16 v2, 0x11

    aput-object v1, v14, v2

    sget-object v1, Lo/Attribute$onMessageChannelReady;->mayLaunchUrl:Lo/Attribute$onMessageChannelReady;

    const/16 v2, 0x12

    aput-object v1, v14, v2

    sget-object v1, Lo/Attribute$onMessageChannelReady;->validateRelationship:Lo/Attribute$onMessageChannelReady;

    const/16 v2, 0x13

    aput-object v1, v14, v2

    sget-object v1, Lo/Attribute$onMessageChannelReady;->IPostMessageService:Lo/Attribute$onMessageChannelReady;

    const/16 v2, 0x14

    aput-object v1, v14, v2

    sget-object v1, Lo/Attribute$onMessageChannelReady;->ICustomTabsService$Stub:Lo/Attribute$onMessageChannelReady;

    const/16 v2, 0x15

    aput-object v1, v14, v2

    sget-object v1, Lo/Attribute$onMessageChannelReady;->IPostMessageService$Stub:Lo/Attribute$onMessageChannelReady;

    const/16 v2, 0x16

    aput-object v1, v14, v2

    const/16 v1, 0x17

    aput-object v0, v14, v1

    sput-object v14, Lo/Attribute$onMessageChannelReady;->ICustomTabsService$Stub$Proxy:[Lo/Attribute$onMessageChannelReady;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/Attribute$onMessageChannelReady;
    .locals 1

    .line 28
    const-class v0, Lo/Attribute$onMessageChannelReady;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/Attribute$onMessageChannelReady;

    return-object p0
.end method

.method public static values()[Lo/Attribute$onMessageChannelReady;
    .locals 1

    .line 28
    sget-object v0, Lo/Attribute$onMessageChannelReady;->ICustomTabsService$Stub$Proxy:[Lo/Attribute$onMessageChannelReady;

    invoke-virtual {v0}, [Lo/Attribute$onMessageChannelReady;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/Attribute$onMessageChannelReady;

    return-object v0
.end method
