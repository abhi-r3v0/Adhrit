.class public final enum Lo/recycleTile$extraCallback;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/recycleTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/recycleTile$extraCallback;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/recycleTile$extraCallback;

.field public static final enum ICustomTabsCallback$Stub:Lo/recycleTile$extraCallback;

.field private static enum ICustomTabsCallback$Stub$Proxy:Lo/recycleTile$extraCallback;

.field public static final enum ICustomTabsService:Lo/recycleTile$extraCallback;

.field public static final enum asBinder:Lo/recycleTile$extraCallback;

.field public static final enum asInterface:Lo/recycleTile$extraCallback;

.field public static final enum extraCallback:Lo/recycleTile$extraCallback;

.field private static enum extraCommand:Lo/recycleTile$extraCallback;

.field private static enum getInterfaceDescriptor:Lo/recycleTile$extraCallback;

.field private static enum newSession:Lo/recycleTile$extraCallback;

.field public static final enum onMessageChannelReady:Lo/recycleTile$extraCallback;

.field public static final enum onNavigationEvent:Lo/recycleTile$extraCallback;

.field public static final enum onPostMessage:Lo/recycleTile$extraCallback;

.field public static final enum onRelationshipValidationResult:Lo/recycleTile$extraCallback;

.field public static final enum onTransact:Lo/recycleTile$extraCallback;

.field private static enum requestPostMessageChannel:Lo/recycleTile$extraCallback;

.field private static final synthetic updateVisuals:[Lo/recycleTile$extraCallback;

.field private static enum warmup:Lo/recycleTile$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 17
    new-instance v0, Lo/recycleTile$extraCallback;

    const/4 v1, 0x0

    const-string v2, "READ_DECODE"

    invoke-direct {v0, v2, v1}, Lo/recycleTile$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/recycleTile$extraCallback;->ICustomTabsCallback$Stub$Proxy:Lo/recycleTile$extraCallback;

    .line 18
    new-instance v0, Lo/recycleTile$extraCallback;

    const/4 v2, 0x1

    const-string v3, "READ_FILE"

    invoke-direct {v0, v3, v2}, Lo/recycleTile$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/recycleTile$extraCallback;->getInterfaceDescriptor:Lo/recycleTile$extraCallback;

    .line 19
    new-instance v0, Lo/recycleTile$extraCallback;

    const/4 v3, 0x2

    const-string v4, "READ_FILE_NOT_FOUND"

    invoke-direct {v0, v4, v3}, Lo/recycleTile$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/recycleTile$extraCallback;->warmup:Lo/recycleTile$extraCallback;

    .line 20
    new-instance v0, Lo/recycleTile$extraCallback;

    const/4 v4, 0x3

    const-string v5, "READ_INVALID_ENTRY"

    invoke-direct {v0, v5, v4}, Lo/recycleTile$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/recycleTile$extraCallback;->onNavigationEvent:Lo/recycleTile$extraCallback;

    .line 22
    new-instance v0, Lo/recycleTile$extraCallback;

    const/4 v5, 0x4

    const-string v6, "WRITE_ENCODE"

    invoke-direct {v0, v6, v5}, Lo/recycleTile$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/recycleTile$extraCallback;->newSession:Lo/recycleTile$extraCallback;

    .line 23
    new-instance v0, Lo/recycleTile$extraCallback;

    const/4 v6, 0x5

    const-string v7, "WRITE_CREATE_TEMPFILE"

    invoke-direct {v0, v7, v6}, Lo/recycleTile$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/recycleTile$extraCallback;->onPostMessage:Lo/recycleTile$extraCallback;

    .line 24
    new-instance v0, Lo/recycleTile$extraCallback;

    const/4 v7, 0x6

    const-string v8, "WRITE_UPDATE_FILE_NOT_FOUND"

    invoke-direct {v0, v8, v7}, Lo/recycleTile$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/recycleTile$extraCallback;->ICustomTabsCallback:Lo/recycleTile$extraCallback;

    .line 25
    new-instance v0, Lo/recycleTile$extraCallback;

    const/4 v8, 0x7

    const-string v9, "WRITE_RENAME_FILE_TEMPFILE_NOT_FOUND"

    invoke-direct {v0, v9, v8}, Lo/recycleTile$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/recycleTile$extraCallback;->onMessageChannelReady:Lo/recycleTile$extraCallback;

    .line 26
    new-instance v0, Lo/recycleTile$extraCallback;

    const/16 v9, 0x8

    const-string v10, "WRITE_RENAME_FILE_TEMPFILE_PARENT_NOT_FOUND"

    invoke-direct {v0, v10, v9}, Lo/recycleTile$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/recycleTile$extraCallback;->extraCallback:Lo/recycleTile$extraCallback;

    .line 27
    new-instance v0, Lo/recycleTile$extraCallback;

    const/16 v10, 0x9

    const-string v11, "WRITE_RENAME_FILE_OTHER"

    invoke-direct {v0, v11, v10}, Lo/recycleTile$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/recycleTile$extraCallback;->asInterface:Lo/recycleTile$extraCallback;

    .line 28
    new-instance v0, Lo/recycleTile$extraCallback;

    const/16 v11, 0xa

    const-string v12, "WRITE_CREATE_DIR"

    invoke-direct {v0, v12, v11}, Lo/recycleTile$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/recycleTile$extraCallback;->asBinder:Lo/recycleTile$extraCallback;

    .line 29
    new-instance v0, Lo/recycleTile$extraCallback;

    const/16 v12, 0xb

    const-string v13, "WRITE_CALLBACK_ERROR"

    invoke-direct {v0, v13, v12}, Lo/recycleTile$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/recycleTile$extraCallback;->extraCommand:Lo/recycleTile$extraCallback;

    .line 30
    new-instance v0, Lo/recycleTile$extraCallback;

    const/16 v13, 0xc

    const-string v14, "WRITE_INVALID_ENTRY"

    invoke-direct {v0, v14, v13}, Lo/recycleTile$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/recycleTile$extraCallback;->requestPostMessageChannel:Lo/recycleTile$extraCallback;

    .line 32
    new-instance v0, Lo/recycleTile$extraCallback;

    const/16 v14, 0xd

    const-string v15, "DELETE_FILE"

    invoke-direct {v0, v15, v14}, Lo/recycleTile$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/recycleTile$extraCallback;->onTransact:Lo/recycleTile$extraCallback;

    .line 34
    new-instance v0, Lo/recycleTile$extraCallback;

    const/16 v15, 0xe

    const-string v14, "EVICTION"

    invoke-direct {v0, v14, v15}, Lo/recycleTile$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/recycleTile$extraCallback;->onRelationshipValidationResult:Lo/recycleTile$extraCallback;

    .line 35
    new-instance v0, Lo/recycleTile$extraCallback;

    const/16 v14, 0xf

    const-string v15, "GENERIC_IO"

    invoke-direct {v0, v15, v14}, Lo/recycleTile$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/recycleTile$extraCallback;->ICustomTabsCallback$Stub:Lo/recycleTile$extraCallback;

    .line 36
    new-instance v0, Lo/recycleTile$extraCallback;

    const/16 v15, 0x10

    const-string v14, "OTHER"

    invoke-direct {v0, v14, v15}, Lo/recycleTile$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/recycleTile$extraCallback;->ICustomTabsService:Lo/recycleTile$extraCallback;

    const/16 v14, 0x11

    new-array v14, v14, [Lo/recycleTile$extraCallback;

    .line 16
    sget-object v16, Lo/recycleTile$extraCallback;->ICustomTabsCallback$Stub$Proxy:Lo/recycleTile$extraCallback;

    aput-object v16, v14, v1

    sget-object v1, Lo/recycleTile$extraCallback;->getInterfaceDescriptor:Lo/recycleTile$extraCallback;

    aput-object v1, v14, v2

    sget-object v1, Lo/recycleTile$extraCallback;->warmup:Lo/recycleTile$extraCallback;

    aput-object v1, v14, v3

    sget-object v1, Lo/recycleTile$extraCallback;->onNavigationEvent:Lo/recycleTile$extraCallback;

    aput-object v1, v14, v4

    sget-object v1, Lo/recycleTile$extraCallback;->newSession:Lo/recycleTile$extraCallback;

    aput-object v1, v14, v5

    sget-object v1, Lo/recycleTile$extraCallback;->onPostMessage:Lo/recycleTile$extraCallback;

    aput-object v1, v14, v6

    sget-object v1, Lo/recycleTile$extraCallback;->ICustomTabsCallback:Lo/recycleTile$extraCallback;

    aput-object v1, v14, v7

    sget-object v1, Lo/recycleTile$extraCallback;->onMessageChannelReady:Lo/recycleTile$extraCallback;

    aput-object v1, v14, v8

    sget-object v1, Lo/recycleTile$extraCallback;->extraCallback:Lo/recycleTile$extraCallback;

    aput-object v1, v14, v9

    sget-object v1, Lo/recycleTile$extraCallback;->asInterface:Lo/recycleTile$extraCallback;

    aput-object v1, v14, v10

    sget-object v1, Lo/recycleTile$extraCallback;->asBinder:Lo/recycleTile$extraCallback;

    aput-object v1, v14, v11

    sget-object v1, Lo/recycleTile$extraCallback;->extraCommand:Lo/recycleTile$extraCallback;

    aput-object v1, v14, v12

    sget-object v1, Lo/recycleTile$extraCallback;->requestPostMessageChannel:Lo/recycleTile$extraCallback;

    aput-object v1, v14, v13

    sget-object v1, Lo/recycleTile$extraCallback;->onTransact:Lo/recycleTile$extraCallback;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    sget-object v1, Lo/recycleTile$extraCallback;->onRelationshipValidationResult:Lo/recycleTile$extraCallback;

    const/16 v2, 0xe

    aput-object v1, v14, v2

    sget-object v1, Lo/recycleTile$extraCallback;->ICustomTabsCallback$Stub:Lo/recycleTile$extraCallback;

    const/16 v2, 0xf

    aput-object v1, v14, v2

    aput-object v0, v14, v15

    sput-object v14, Lo/recycleTile$extraCallback;->updateVisuals:[Lo/recycleTile$extraCallback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/recycleTile$extraCallback;
    .locals 1

    .line 16
    const-class v0, Lo/recycleTile$extraCallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/recycleTile$extraCallback;

    return-object p0
.end method

.method public static values()[Lo/recycleTile$extraCallback;
    .locals 1

    .line 16
    sget-object v0, Lo/recycleTile$extraCallback;->updateVisuals:[Lo/recycleTile$extraCallback;

    invoke-virtual {v0}, [Lo/recycleTile$extraCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/recycleTile$extraCallback;

    return-object v0
.end method
