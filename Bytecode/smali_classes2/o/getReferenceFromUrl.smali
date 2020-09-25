.class public final enum Lo/getReferenceFromUrl;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/getReferenceFromUrl;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/getReferenceFromUrl;

.field public static final enum ICustomTabsCallback$Stub:Lo/getReferenceFromUrl;

.field private static enum ICustomTabsCallback$Stub$Proxy:Lo/getReferenceFromUrl;

.field private static final synthetic ICustomTabsService$Stub$Proxy:[Lo/getReferenceFromUrl;

.field private static enum IPostMessageService$Stub:Lo/getReferenceFromUrl;

.field public static final enum asInterface:Lo/getReferenceFromUrl;

.field public static final enum extraCallback:Lo/getReferenceFromUrl;

.field private static enum extraCommand:Lo/getReferenceFromUrl;

.field private static enum getInterfaceDescriptor:Lo/getReferenceFromUrl;

.field private static enum mayLaunchUrl:Lo/getReferenceFromUrl;

.field private static enum newSession:Lo/getReferenceFromUrl;

.field public static final enum onMessageChannelReady:Lo/getReferenceFromUrl;

.field public static final enum onNavigationEvent:Lo/getReferenceFromUrl;

.field public static final enum onPostMessage:Lo/getReferenceFromUrl;

.field public static final enum onTransact:Lo/getReferenceFromUrl;

.field private static enum postMessage:Lo/getReferenceFromUrl;

.field private static enum requestPostMessageChannel:Lo/getReferenceFromUrl;

.field private static enum updateVisuals:Lo/getReferenceFromUrl;

.field private static enum warmup:Lo/getReferenceFromUrl;


# instance fields
.field public final ICustomTabsService:I

.field public final asBinder:I

.field public final onRelationshipValidationResult:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 21
    new-instance v6, Lo/getReferenceFromUrl;

    const-string v1, "NO_ERROR"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lo/getReferenceFromUrl;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lo/getReferenceFromUrl;->extraCallback:Lo/getReferenceFromUrl;

    .line 23
    new-instance v0, Lo/getReferenceFromUrl;

    const-string v8, "PROTOCOL_ERROR"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getReferenceFromUrl;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lo/getReferenceFromUrl;->onNavigationEvent:Lo/getReferenceFromUrl;

    .line 26
    new-instance v0, Lo/getReferenceFromUrl;

    const-string v2, "INVALID_STREAM"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, -0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getReferenceFromUrl;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lo/getReferenceFromUrl;->onMessageChannelReady:Lo/getReferenceFromUrl;

    .line 29
    new-instance v0, Lo/getReferenceFromUrl;

    const-string v8, "UNSUPPORTED_VERSION"

    const/4 v9, 0x3

    const/4 v11, 0x4

    const/4 v12, -0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getReferenceFromUrl;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lo/getReferenceFromUrl;->getInterfaceDescriptor:Lo/getReferenceFromUrl;

    .line 32
    new-instance v0, Lo/getReferenceFromUrl;

    const-string v2, "STREAM_IN_USE"

    const/4 v3, 0x4

    const/16 v5, 0x8

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getReferenceFromUrl;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lo/getReferenceFromUrl;->onPostMessage:Lo/getReferenceFromUrl;

    .line 35
    new-instance v0, Lo/getReferenceFromUrl;

    const-string v8, "STREAM_ALREADY_CLOSED"

    const/4 v9, 0x5

    const/16 v11, 0x9

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getReferenceFromUrl;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lo/getReferenceFromUrl;->newSession:Lo/getReferenceFromUrl;

    .line 37
    new-instance v0, Lo/getReferenceFromUrl;

    const-string v2, "INTERNAL_ERROR"

    const/4 v3, 0x6

    const/4 v4, 0x2

    const/4 v5, 0x6

    const/4 v6, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getReferenceFromUrl;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lo/getReferenceFromUrl;->ICustomTabsCallback:Lo/getReferenceFromUrl;

    .line 39
    new-instance v0, Lo/getReferenceFromUrl;

    const-string v8, "FLOW_CONTROL_ERROR"

    const/4 v9, 0x7

    const/4 v10, 0x3

    const/4 v11, 0x7

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getReferenceFromUrl;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lo/getReferenceFromUrl;->ICustomTabsCallback$Stub:Lo/getReferenceFromUrl;

    .line 41
    new-instance v0, Lo/getReferenceFromUrl;

    const-string v2, "STREAM_CLOSED"

    const/16 v3, 0x8

    const/4 v4, 0x5

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getReferenceFromUrl;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lo/getReferenceFromUrl;->warmup:Lo/getReferenceFromUrl;

    .line 43
    new-instance v0, Lo/getReferenceFromUrl;

    const-string v8, "FRAME_TOO_LARGE"

    const/16 v9, 0x9

    const/4 v10, 0x6

    const/16 v11, 0xb

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getReferenceFromUrl;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lo/getReferenceFromUrl;->ICustomTabsCallback$Stub$Proxy:Lo/getReferenceFromUrl;

    .line 45
    new-instance v0, Lo/getReferenceFromUrl;

    const-string v2, "REFUSED_STREAM"

    const/16 v3, 0xa

    const/4 v4, 0x7

    const/4 v5, 0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getReferenceFromUrl;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lo/getReferenceFromUrl;->onTransact:Lo/getReferenceFromUrl;

    .line 47
    new-instance v0, Lo/getReferenceFromUrl;

    const-string v8, "CANCEL"

    const/16 v9, 0xb

    const/16 v10, 0x8

    const/4 v11, 0x5

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getReferenceFromUrl;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lo/getReferenceFromUrl;->asInterface:Lo/getReferenceFromUrl;

    .line 49
    new-instance v0, Lo/getReferenceFromUrl;

    const-string v2, "COMPRESSION_ERROR"

    const/16 v3, 0xc

    const/16 v4, 0x9

    const/4 v5, -0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getReferenceFromUrl;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lo/getReferenceFromUrl;->updateVisuals:Lo/getReferenceFromUrl;

    .line 51
    new-instance v0, Lo/getReferenceFromUrl;

    const-string v8, "CONNECT_ERROR"

    const/16 v9, 0xd

    const/16 v10, 0xa

    const/4 v11, -0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getReferenceFromUrl;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lo/getReferenceFromUrl;->requestPostMessageChannel:Lo/getReferenceFromUrl;

    .line 53
    new-instance v0, Lo/getReferenceFromUrl;

    const-string v2, "ENHANCE_YOUR_CALM"

    const/16 v3, 0xe

    const/16 v4, 0xb

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getReferenceFromUrl;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lo/getReferenceFromUrl;->postMessage:Lo/getReferenceFromUrl;

    .line 55
    new-instance v0, Lo/getReferenceFromUrl;

    const-string v8, "INADEQUATE_SECURITY"

    const/16 v9, 0xf

    const/16 v10, 0xc

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getReferenceFromUrl;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lo/getReferenceFromUrl;->extraCommand:Lo/getReferenceFromUrl;

    .line 57
    new-instance v0, Lo/getReferenceFromUrl;

    const-string v2, "HTTP_1_1_REQUIRED"

    const/16 v3, 0x10

    const/16 v4, 0xd

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getReferenceFromUrl;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lo/getReferenceFromUrl;->mayLaunchUrl:Lo/getReferenceFromUrl;

    .line 59
    new-instance v0, Lo/getReferenceFromUrl;

    const-string v8, "INVALID_CREDENTIALS"

    const/16 v9, 0x11

    const/4 v10, -0x1

    const/16 v11, 0xa

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getReferenceFromUrl;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lo/getReferenceFromUrl;->IPostMessageService$Stub:Lo/getReferenceFromUrl;

    const/16 v1, 0x12

    new-array v1, v1, [Lo/getReferenceFromUrl;

    .line 19
    sget-object v2, Lo/getReferenceFromUrl;->extraCallback:Lo/getReferenceFromUrl;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lo/getReferenceFromUrl;->onNavigationEvent:Lo/getReferenceFromUrl;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lo/getReferenceFromUrl;->onMessageChannelReady:Lo/getReferenceFromUrl;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lo/getReferenceFromUrl;->getInterfaceDescriptor:Lo/getReferenceFromUrl;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lo/getReferenceFromUrl;->onPostMessage:Lo/getReferenceFromUrl;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lo/getReferenceFromUrl;->newSession:Lo/getReferenceFromUrl;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lo/getReferenceFromUrl;->ICustomTabsCallback:Lo/getReferenceFromUrl;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lo/getReferenceFromUrl;->ICustomTabsCallback$Stub:Lo/getReferenceFromUrl;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sget-object v2, Lo/getReferenceFromUrl;->warmup:Lo/getReferenceFromUrl;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v2, Lo/getReferenceFromUrl;->ICustomTabsCallback$Stub$Proxy:Lo/getReferenceFromUrl;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sget-object v2, Lo/getReferenceFromUrl;->onTransact:Lo/getReferenceFromUrl;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    sget-object v2, Lo/getReferenceFromUrl;->asInterface:Lo/getReferenceFromUrl;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Lo/getReferenceFromUrl;->updateVisuals:Lo/getReferenceFromUrl;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lo/getReferenceFromUrl;->requestPostMessageChannel:Lo/getReferenceFromUrl;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lo/getReferenceFromUrl;->postMessage:Lo/getReferenceFromUrl;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lo/getReferenceFromUrl;->extraCommand:Lo/getReferenceFromUrl;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lo/getReferenceFromUrl;->mayLaunchUrl:Lo/getReferenceFromUrl;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    const/16 v2, 0x11

    aput-object v0, v1, v2

    sput-object v1, Lo/getReferenceFromUrl;->ICustomTabsService$Stub$Proxy:[Lo/getReferenceFromUrl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    iput p3, p0, Lo/getReferenceFromUrl;->asBinder:I

    .line 67
    iput p4, p0, Lo/getReferenceFromUrl;->onRelationshipValidationResult:I

    .line 68
    iput p5, p0, Lo/getReferenceFromUrl;->ICustomTabsService:I

    return-void
.end method

.method public static ICustomTabsCallback(I)Lo/getReferenceFromUrl;
    .locals 5

    .line 72
    invoke-static {}, Lo/getReferenceFromUrl;->values()[Lo/getReferenceFromUrl;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 73
    iget v4, v3, Lo/getReferenceFromUrl;->onRelationshipValidationResult:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static extraCallback(I)Lo/getReferenceFromUrl;
    .locals 5

    .line 86
    invoke-static {}, Lo/getReferenceFromUrl;->values()[Lo/getReferenceFromUrl;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 87
    iget v4, v3, Lo/getReferenceFromUrl;->ICustomTabsService:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static onNavigationEvent(I)Lo/getReferenceFromUrl;
    .locals 5

    .line 79
    invoke-static {}, Lo/getReferenceFromUrl;->values()[Lo/getReferenceFromUrl;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 80
    iget v4, v3, Lo/getReferenceFromUrl;->asBinder:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lo/getReferenceFromUrl;
    .locals 1

    .line 19
    const-class v0, Lo/getReferenceFromUrl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/getReferenceFromUrl;

    return-object p0
.end method

.method public static values()[Lo/getReferenceFromUrl;
    .locals 1

    .line 19
    sget-object v0, Lo/getReferenceFromUrl;->ICustomTabsService$Stub$Proxy:[Lo/getReferenceFromUrl;

    invoke-virtual {v0}, [Lo/getReferenceFromUrl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/getReferenceFromUrl;

    return-object v0
.end method
