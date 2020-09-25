.class public final enum Lo/wasSent;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/wasSent;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/wasSent;

.field public static final enum ICustomTabsCallback$Stub:Lo/wasSent;

.field public static final enum ICustomTabsCallback$Stub$Proxy:Lo/wasSent;

.field private static enum ICustomTabsService:Lo/wasSent;

.field public static final enum asBinder:Lo/wasSent;

.field public static final enum asInterface:Lo/wasSent;

.field public static final enum extraCallback:Lo/wasSent;

.field private static enum extraCommand:Lo/wasSent;

.field public static final enum getInterfaceDescriptor:Lo/wasSent;

.field private static enum mayLaunchUrl:Lo/wasSent;

.field public static final enum onMessageChannelReady:Lo/wasSent;

.field public static final enum onNavigationEvent:Lo/wasSent;

.field public static final enum onPostMessage:Lo/wasSent;

.field public static final enum onRelationshipValidationResult:Lo/wasSent;

.field public static final enum onTransact:Lo/wasSent;

.field private static enum postMessage:Lo/wasSent;

.field private static enum requestPostMessageChannel:Lo/wasSent;

.field private static final synthetic updateVisuals:[Lo/wasSent;

.field public static final enum warmup:Lo/wasSent;


# instance fields
.field public final newSession:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 25
    new-instance v0, Lo/wasSent;

    const/4 v1, 0x0

    const-string v2, "NO_ERROR"

    invoke-direct {v0, v2, v1, v1}, Lo/wasSent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/wasSent;->onMessageChannelReady:Lo/wasSent;

    .line 27
    new-instance v0, Lo/wasSent;

    const/4 v2, 0x1

    const-string v3, "PROTOCOL_ERROR"

    invoke-direct {v0, v3, v2, v2}, Lo/wasSent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/wasSent;->extraCallback:Lo/wasSent;

    .line 30
    new-instance v0, Lo/wasSent;

    const/4 v3, 0x2

    const-string v4, "INVALID_STREAM"

    invoke-direct {v0, v4, v3, v2}, Lo/wasSent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/wasSent;->ICustomTabsCallback:Lo/wasSent;

    .line 33
    new-instance v0, Lo/wasSent;

    const/4 v4, 0x3

    const-string v5, "UNSUPPORTED_VERSION"

    invoke-direct {v0, v5, v4, v2}, Lo/wasSent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/wasSent;->ICustomTabsService:Lo/wasSent;

    .line 36
    new-instance v0, Lo/wasSent;

    const/4 v5, 0x4

    const-string v6, "STREAM_IN_USE"

    invoke-direct {v0, v6, v5, v2}, Lo/wasSent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/wasSent;->postMessage:Lo/wasSent;

    .line 39
    new-instance v0, Lo/wasSent;

    const/4 v6, 0x5

    const-string v7, "STREAM_ALREADY_CLOSED"

    invoke-direct {v0, v7, v6, v2}, Lo/wasSent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/wasSent;->mayLaunchUrl:Lo/wasSent;

    .line 41
    new-instance v0, Lo/wasSent;

    const/4 v7, 0x6

    const-string v8, "INTERNAL_ERROR"

    invoke-direct {v0, v8, v7, v3}, Lo/wasSent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/wasSent;->onNavigationEvent:Lo/wasSent;

    .line 43
    new-instance v0, Lo/wasSent;

    const/4 v8, 0x7

    const-string v9, "FLOW_CONTROL_ERROR"

    invoke-direct {v0, v9, v8, v4}, Lo/wasSent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/wasSent;->onPostMessage:Lo/wasSent;

    .line 45
    new-instance v0, Lo/wasSent;

    const/16 v9, 0x8

    const-string v10, "STREAM_CLOSED"

    invoke-direct {v0, v10, v9, v6}, Lo/wasSent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/wasSent;->onTransact:Lo/wasSent;

    .line 47
    new-instance v0, Lo/wasSent;

    const/16 v10, 0x9

    const-string v11, "FRAME_TOO_LARGE"

    invoke-direct {v0, v11, v10, v7}, Lo/wasSent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/wasSent;->asBinder:Lo/wasSent;

    .line 49
    new-instance v0, Lo/wasSent;

    const/16 v11, 0xa

    const-string v12, "REFUSED_STREAM"

    invoke-direct {v0, v12, v11, v8}, Lo/wasSent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/wasSent;->asInterface:Lo/wasSent;

    .line 51
    new-instance v0, Lo/wasSent;

    const/16 v12, 0xb

    const-string v13, "CANCEL"

    invoke-direct {v0, v13, v12, v9}, Lo/wasSent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/wasSent;->onRelationshipValidationResult:Lo/wasSent;

    .line 53
    new-instance v0, Lo/wasSent;

    const/16 v13, 0xc

    const-string v14, "COMPRESSION_ERROR"

    invoke-direct {v0, v14, v13, v10}, Lo/wasSent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/wasSent;->ICustomTabsCallback$Stub:Lo/wasSent;

    .line 55
    new-instance v0, Lo/wasSent;

    const/16 v14, 0xd

    const-string v15, "CONNECT_ERROR"

    invoke-direct {v0, v15, v14, v11}, Lo/wasSent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/wasSent;->getInterfaceDescriptor:Lo/wasSent;

    .line 57
    new-instance v0, Lo/wasSent;

    const/16 v15, 0xe

    const-string v11, "ENHANCE_YOUR_CALM"

    invoke-direct {v0, v11, v15, v12}, Lo/wasSent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/wasSent;->ICustomTabsCallback$Stub$Proxy:Lo/wasSent;

    .line 59
    new-instance v0, Lo/wasSent;

    const/16 v11, 0xf

    const-string v15, "INADEQUATE_SECURITY"

    invoke-direct {v0, v15, v11, v13}, Lo/wasSent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/wasSent;->warmup:Lo/wasSent;

    .line 61
    new-instance v0, Lo/wasSent;

    const/16 v15, 0x10

    const-string v11, "HTTP_1_1_REQUIRED"

    invoke-direct {v0, v11, v15, v14}, Lo/wasSent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/wasSent;->extraCommand:Lo/wasSent;

    .line 63
    new-instance v0, Lo/wasSent;

    const/16 v11, 0x11

    const-string v15, "INVALID_CREDENTIALS"

    const/4 v14, -0x1

    invoke-direct {v0, v15, v11, v14}, Lo/wasSent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/wasSent;->requestPostMessageChannel:Lo/wasSent;

    const/16 v14, 0x12

    new-array v14, v14, [Lo/wasSent;

    .line 23
    sget-object v15, Lo/wasSent;->onMessageChannelReady:Lo/wasSent;

    aput-object v15, v14, v1

    sget-object v1, Lo/wasSent;->extraCallback:Lo/wasSent;

    aput-object v1, v14, v2

    sget-object v1, Lo/wasSent;->ICustomTabsCallback:Lo/wasSent;

    aput-object v1, v14, v3

    sget-object v1, Lo/wasSent;->ICustomTabsService:Lo/wasSent;

    aput-object v1, v14, v4

    sget-object v1, Lo/wasSent;->postMessage:Lo/wasSent;

    aput-object v1, v14, v5

    sget-object v1, Lo/wasSent;->mayLaunchUrl:Lo/wasSent;

    aput-object v1, v14, v6

    sget-object v1, Lo/wasSent;->onNavigationEvent:Lo/wasSent;

    aput-object v1, v14, v7

    sget-object v1, Lo/wasSent;->onPostMessage:Lo/wasSent;

    aput-object v1, v14, v8

    sget-object v1, Lo/wasSent;->onTransact:Lo/wasSent;

    aput-object v1, v14, v9

    sget-object v1, Lo/wasSent;->asBinder:Lo/wasSent;

    aput-object v1, v14, v10

    sget-object v1, Lo/wasSent;->asInterface:Lo/wasSent;

    const/16 v2, 0xa

    aput-object v1, v14, v2

    sget-object v1, Lo/wasSent;->onRelationshipValidationResult:Lo/wasSent;

    aput-object v1, v14, v12

    sget-object v1, Lo/wasSent;->ICustomTabsCallback$Stub:Lo/wasSent;

    aput-object v1, v14, v13

    sget-object v1, Lo/wasSent;->getInterfaceDescriptor:Lo/wasSent;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    sget-object v1, Lo/wasSent;->ICustomTabsCallback$Stub$Proxy:Lo/wasSent;

    const/16 v2, 0xe

    aput-object v1, v14, v2

    sget-object v1, Lo/wasSent;->warmup:Lo/wasSent;

    const/16 v2, 0xf

    aput-object v1, v14, v2

    sget-object v1, Lo/wasSent;->extraCommand:Lo/wasSent;

    const/16 v2, 0x10

    aput-object v1, v14, v2

    aput-object v0, v14, v11

    sput-object v14, Lo/wasSent;->updateVisuals:[Lo/wasSent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 70
    iput p3, p0, Lo/wasSent;->newSession:I

    return-void
.end method

.method public static extraCallback(I)Lo/wasSent;
    .locals 5

    .line 83
    invoke-static {}, Lo/wasSent;->values()[Lo/wasSent;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 84
    iget v4, v3, Lo/wasSent;->newSession:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lo/wasSent;
    .locals 1

    .line 23
    const-class v0, Lo/wasSent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/wasSent;

    return-object p0
.end method

.method public static values()[Lo/wasSent;
    .locals 1

    .line 23
    sget-object v0, Lo/wasSent;->updateVisuals:[Lo/wasSent;

    invoke-virtual {v0}, [Lo/wasSent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/wasSent;

    return-object v0
.end method
