.class public final enum Lo/emptyMap$onPostMessage;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/emptyMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/emptyMap$onPostMessage;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/emptyMap$onPostMessage;

.field public static final enum ICustomTabsCallback$Stub:Lo/emptyMap$onPostMessage;

.field public static final enum ICustomTabsCallback$Stub$Proxy:Lo/emptyMap$onPostMessage;

.field public static final enum ICustomTabsService:Lo/emptyMap$onPostMessage;

.field public static final enum asBinder:Lo/emptyMap$onPostMessage;

.field public static final enum asInterface:Lo/emptyMap$onPostMessage;

.field public static final enum extraCallback:Lo/emptyMap$onPostMessage;

.field public static final enum extraCommand:Lo/emptyMap$onPostMessage;

.field public static final enum getInterfaceDescriptor:Lo/emptyMap$onPostMessage;

.field public static final enum newSession:Lo/emptyMap$onPostMessage;

.field public static final enum onMessageChannelReady:Lo/emptyMap$onPostMessage;

.field public static final enum onNavigationEvent:Lo/emptyMap$onPostMessage;

.field public static final enum onPostMessage:Lo/emptyMap$onPostMessage;

.field public static final enum onRelationshipValidationResult:Lo/emptyMap$onPostMessage;

.field public static final enum onTransact:Lo/emptyMap$onPostMessage;

.field public static final enum postMessage:Lo/emptyMap$onPostMessage;

.field private static final synthetic updateVisuals:[Lo/emptyMap$onPostMessage;

.field public static final enum warmup:Lo/emptyMap$onPostMessage;


# instance fields
.field private final mayLaunchUrl:[B

.field public final requestPostMessageChannel:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 65
    new-instance v0, Lo/emptyMap$onPostMessage;

    const/4 v1, 0x0

    const-string v2, "OK"

    invoke-direct {v0, v2, v1, v1}, Lo/emptyMap$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/emptyMap$onPostMessage;->onMessageChannelReady:Lo/emptyMap$onPostMessage;

    .line 70
    new-instance v0, Lo/emptyMap$onPostMessage;

    const/4 v2, 0x1

    const-string v3, "CANCELLED"

    invoke-direct {v0, v3, v2, v2}, Lo/emptyMap$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/emptyMap$onPostMessage;->extraCallback:Lo/emptyMap$onPostMessage;

    .line 79
    new-instance v0, Lo/emptyMap$onPostMessage;

    const/4 v3, 0x2

    const-string v4, "UNKNOWN"

    invoke-direct {v0, v4, v3, v3}, Lo/emptyMap$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/emptyMap$onPostMessage;->onNavigationEvent:Lo/emptyMap$onPostMessage;

    .line 87
    new-instance v0, Lo/emptyMap$onPostMessage;

    const/4 v4, 0x3

    const-string v5, "INVALID_ARGUMENT"

    invoke-direct {v0, v5, v4, v4}, Lo/emptyMap$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/emptyMap$onPostMessage;->ICustomTabsCallback:Lo/emptyMap$onPostMessage;

    .line 96
    new-instance v0, Lo/emptyMap$onPostMessage;

    const/4 v5, 0x4

    const-string v6, "DEADLINE_EXCEEDED"

    invoke-direct {v0, v6, v5, v5}, Lo/emptyMap$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/emptyMap$onPostMessage;->onPostMessage:Lo/emptyMap$onPostMessage;

    .line 101
    new-instance v0, Lo/emptyMap$onPostMessage;

    const/4 v6, 0x5

    const-string v7, "NOT_FOUND"

    invoke-direct {v0, v7, v6, v6}, Lo/emptyMap$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/emptyMap$onPostMessage;->asInterface:Lo/emptyMap$onPostMessage;

    .line 106
    new-instance v0, Lo/emptyMap$onPostMessage;

    const/4 v7, 0x6

    const-string v8, "ALREADY_EXISTS"

    invoke-direct {v0, v8, v7, v7}, Lo/emptyMap$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/emptyMap$onPostMessage;->ICustomTabsCallback$Stub:Lo/emptyMap$onPostMessage;

    .line 116
    new-instance v0, Lo/emptyMap$onPostMessage;

    const/4 v8, 0x7

    const-string v9, "PERMISSION_DENIED"

    invoke-direct {v0, v9, v8, v8}, Lo/emptyMap$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/emptyMap$onPostMessage;->onRelationshipValidationResult:Lo/emptyMap$onPostMessage;

    .line 122
    new-instance v0, Lo/emptyMap$onPostMessage;

    const/16 v9, 0x8

    const-string v10, "RESOURCE_EXHAUSTED"

    invoke-direct {v0, v10, v9, v9}, Lo/emptyMap$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/emptyMap$onPostMessage;->onTransact:Lo/emptyMap$onPostMessage;

    .line 141
    new-instance v0, Lo/emptyMap$onPostMessage;

    const/16 v10, 0x9

    const-string v11, "FAILED_PRECONDITION"

    invoke-direct {v0, v11, v10, v10}, Lo/emptyMap$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/emptyMap$onPostMessage;->asBinder:Lo/emptyMap$onPostMessage;

    .line 150
    new-instance v0, Lo/emptyMap$onPostMessage;

    const/16 v11, 0xa

    const-string v12, "ABORTED"

    invoke-direct {v0, v12, v11, v11}, Lo/emptyMap$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/emptyMap$onPostMessage;->newSession:Lo/emptyMap$onPostMessage;

    .line 168
    new-instance v0, Lo/emptyMap$onPostMessage;

    const/16 v12, 0xb

    const-string v13, "OUT_OF_RANGE"

    invoke-direct {v0, v13, v12, v12}, Lo/emptyMap$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/emptyMap$onPostMessage;->ICustomTabsCallback$Stub$Proxy:Lo/emptyMap$onPostMessage;

    .line 173
    new-instance v0, Lo/emptyMap$onPostMessage;

    const/16 v13, 0xc

    const-string v14, "UNIMPLEMENTED"

    invoke-direct {v0, v14, v13, v13}, Lo/emptyMap$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/emptyMap$onPostMessage;->getInterfaceDescriptor:Lo/emptyMap$onPostMessage;

    .line 180
    new-instance v0, Lo/emptyMap$onPostMessage;

    const/16 v14, 0xd

    const-string v15, "INTERNAL"

    invoke-direct {v0, v15, v14, v14}, Lo/emptyMap$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/emptyMap$onPostMessage;->warmup:Lo/emptyMap$onPostMessage;

    .line 191
    new-instance v0, Lo/emptyMap$onPostMessage;

    const/16 v15, 0xe

    const-string v14, "UNAVAILABLE"

    invoke-direct {v0, v14, v15, v15}, Lo/emptyMap$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/emptyMap$onPostMessage;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    .line 196
    new-instance v0, Lo/emptyMap$onPostMessage;

    const/16 v14, 0xf

    const-string v15, "DATA_LOSS"

    invoke-direct {v0, v15, v14, v14}, Lo/emptyMap$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/emptyMap$onPostMessage;->postMessage:Lo/emptyMap$onPostMessage;

    .line 202
    new-instance v0, Lo/emptyMap$onPostMessage;

    const/16 v15, 0x10

    const-string v14, "UNAUTHENTICATED"

    invoke-direct {v0, v14, v15, v15}, Lo/emptyMap$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/emptyMap$onPostMessage;->extraCommand:Lo/emptyMap$onPostMessage;

    const/16 v14, 0x11

    new-array v14, v14, [Lo/emptyMap$onPostMessage;

    .line 61
    sget-object v16, Lo/emptyMap$onPostMessage;->onMessageChannelReady:Lo/emptyMap$onPostMessage;

    aput-object v16, v14, v1

    sget-object v1, Lo/emptyMap$onPostMessage;->extraCallback:Lo/emptyMap$onPostMessage;

    aput-object v1, v14, v2

    sget-object v1, Lo/emptyMap$onPostMessage;->onNavigationEvent:Lo/emptyMap$onPostMessage;

    aput-object v1, v14, v3

    sget-object v1, Lo/emptyMap$onPostMessage;->ICustomTabsCallback:Lo/emptyMap$onPostMessage;

    aput-object v1, v14, v4

    sget-object v1, Lo/emptyMap$onPostMessage;->onPostMessage:Lo/emptyMap$onPostMessage;

    aput-object v1, v14, v5

    sget-object v1, Lo/emptyMap$onPostMessage;->asInterface:Lo/emptyMap$onPostMessage;

    aput-object v1, v14, v6

    sget-object v1, Lo/emptyMap$onPostMessage;->ICustomTabsCallback$Stub:Lo/emptyMap$onPostMessage;

    aput-object v1, v14, v7

    sget-object v1, Lo/emptyMap$onPostMessage;->onRelationshipValidationResult:Lo/emptyMap$onPostMessage;

    aput-object v1, v14, v8

    sget-object v1, Lo/emptyMap$onPostMessage;->onTransact:Lo/emptyMap$onPostMessage;

    aput-object v1, v14, v9

    sget-object v1, Lo/emptyMap$onPostMessage;->asBinder:Lo/emptyMap$onPostMessage;

    aput-object v1, v14, v10

    sget-object v1, Lo/emptyMap$onPostMessage;->newSession:Lo/emptyMap$onPostMessage;

    aput-object v1, v14, v11

    sget-object v1, Lo/emptyMap$onPostMessage;->ICustomTabsCallback$Stub$Proxy:Lo/emptyMap$onPostMessage;

    aput-object v1, v14, v12

    sget-object v1, Lo/emptyMap$onPostMessage;->getInterfaceDescriptor:Lo/emptyMap$onPostMessage;

    aput-object v1, v14, v13

    sget-object v1, Lo/emptyMap$onPostMessage;->warmup:Lo/emptyMap$onPostMessage;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    sget-object v1, Lo/emptyMap$onPostMessage;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    const/16 v2, 0xe

    aput-object v1, v14, v2

    sget-object v1, Lo/emptyMap$onPostMessage;->postMessage:Lo/emptyMap$onPostMessage;

    const/16 v2, 0xf

    aput-object v1, v14, v2

    aput-object v0, v14, v15

    sput-object v14, Lo/emptyMap$onPostMessage;->updateVisuals:[Lo/emptyMap$onPostMessage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 208
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 209
    iput p3, p0, Lo/emptyMap$onPostMessage;->requestPostMessageChannel:I

    .line 210
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lo/performAutoConfigure;->onMessageChannelReady:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iput-object p1, p0, Lo/emptyMap$onPostMessage;->mayLaunchUrl:[B

    return-void
.end method

.method static synthetic extraCallback(Lo/emptyMap$onPostMessage;)[B
    .locals 0

    .line 1228
    iget-object p0, p0, Lo/emptyMap$onPostMessage;->mayLaunchUrl:[B

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lo/emptyMap$onPostMessage;
    .locals 1

    .line 61
    const-class v0, Lo/emptyMap$onPostMessage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/emptyMap$onPostMessage;

    return-object p0
.end method

.method public static values()[Lo/emptyMap$onPostMessage;
    .locals 1

    .line 61
    sget-object v0, Lo/emptyMap$onPostMessage;->updateVisuals:[Lo/emptyMap$onPostMessage;

    invoke-virtual {v0}, [Lo/emptyMap$onPostMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/emptyMap$onPostMessage;

    return-object v0
.end method
