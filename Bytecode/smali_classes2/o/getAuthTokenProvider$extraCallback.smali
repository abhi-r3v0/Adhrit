.class public final enum Lo/getAuthTokenProvider$extraCallback;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getAuthTokenProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/getAuthTokenProvider$extraCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static enum ICustomTabsCallback:Lo/getAuthTokenProvider$extraCallback;

.field private static enum ICustomTabsCallback$Stub:Lo/getAuthTokenProvider$extraCallback;

.field private static final ICustomTabsCallback$Stub$Proxy:[Lo/getAuthTokenProvider$extraCallback;

.field private static enum ICustomTabsService:Lo/getAuthTokenProvider$extraCallback;

.field private static enum asBinder:Lo/getAuthTokenProvider$extraCallback;

.field private static enum asInterface:Lo/getAuthTokenProvider$extraCallback;

.field private static enum extraCallback:Lo/getAuthTokenProvider$extraCallback;

.field private static enum getInterfaceDescriptor:Lo/getAuthTokenProvider$extraCallback;

.field private static enum newSession:Lo/getAuthTokenProvider$extraCallback;

.field private static enum onMessageChannelReady:Lo/getAuthTokenProvider$extraCallback;

.field private static enum onNavigationEvent:Lo/getAuthTokenProvider$extraCallback;

.field private static enum onPostMessage:Lo/getAuthTokenProvider$extraCallback;

.field private static enum onRelationshipValidationResult:Lo/getAuthTokenProvider$extraCallback;

.field private static enum onTransact:Lo/getAuthTokenProvider$extraCallback;

.field private static final synthetic requestPostMessageChannel:[Lo/getAuthTokenProvider$extraCallback;

.field private static enum warmup:Lo/getAuthTokenProvider$extraCallback;


# instance fields
.field private final mayLaunchUrl:I

.field private final postMessage:Lo/emptyMap;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 309
    new-instance v0, Lo/getAuthTokenProvider$extraCallback;

    sget-object v1, Lo/emptyMap;->onTransact:Lo/emptyMap;

    const/4 v2, 0x0

    const-string v3, "NO_ERROR"

    invoke-direct {v0, v3, v2, v2, v1}, Lo/getAuthTokenProvider$extraCallback;-><init>(Ljava/lang/String;IILo/emptyMap;)V

    sput-object v0, Lo/getAuthTokenProvider$extraCallback;->ICustomTabsCallback:Lo/getAuthTokenProvider$extraCallback;

    .line 310
    new-instance v0, Lo/getAuthTokenProvider$extraCallback;

    sget-object v1, Lo/emptyMap;->asBinder:Lo/emptyMap;

    const/4 v3, 0x1

    const-string v4, "PROTOCOL_ERROR"

    invoke-direct {v0, v4, v3, v3, v1}, Lo/getAuthTokenProvider$extraCallback;-><init>(Ljava/lang/String;IILo/emptyMap;)V

    sput-object v0, Lo/getAuthTokenProvider$extraCallback;->extraCallback:Lo/getAuthTokenProvider$extraCallback;

    .line 311
    new-instance v0, Lo/getAuthTokenProvider$extraCallback;

    sget-object v1, Lo/emptyMap;->asBinder:Lo/emptyMap;

    const/4 v4, 0x2

    const-string v5, "INTERNAL_ERROR"

    invoke-direct {v0, v5, v4, v4, v1}, Lo/getAuthTokenProvider$extraCallback;-><init>(Ljava/lang/String;IILo/emptyMap;)V

    sput-object v0, Lo/getAuthTokenProvider$extraCallback;->onNavigationEvent:Lo/getAuthTokenProvider$extraCallback;

    .line 312
    new-instance v0, Lo/getAuthTokenProvider$extraCallback;

    sget-object v1, Lo/emptyMap;->asBinder:Lo/emptyMap;

    const/4 v5, 0x3

    const-string v6, "FLOW_CONTROL_ERROR"

    invoke-direct {v0, v6, v5, v5, v1}, Lo/getAuthTokenProvider$extraCallback;-><init>(Ljava/lang/String;IILo/emptyMap;)V

    sput-object v0, Lo/getAuthTokenProvider$extraCallback;->onPostMessage:Lo/getAuthTokenProvider$extraCallback;

    .line 313
    new-instance v0, Lo/getAuthTokenProvider$extraCallback;

    sget-object v1, Lo/emptyMap;->asBinder:Lo/emptyMap;

    const/4 v6, 0x4

    const-string v7, "SETTINGS_TIMEOUT"

    invoke-direct {v0, v7, v6, v6, v1}, Lo/getAuthTokenProvider$extraCallback;-><init>(Ljava/lang/String;IILo/emptyMap;)V

    sput-object v0, Lo/getAuthTokenProvider$extraCallback;->onMessageChannelReady:Lo/getAuthTokenProvider$extraCallback;

    .line 314
    new-instance v0, Lo/getAuthTokenProvider$extraCallback;

    sget-object v1, Lo/emptyMap;->asBinder:Lo/emptyMap;

    const/4 v7, 0x5

    const-string v8, "STREAM_CLOSED"

    invoke-direct {v0, v8, v7, v7, v1}, Lo/getAuthTokenProvider$extraCallback;-><init>(Ljava/lang/String;IILo/emptyMap;)V

    sput-object v0, Lo/getAuthTokenProvider$extraCallback;->ICustomTabsCallback$Stub:Lo/getAuthTokenProvider$extraCallback;

    .line 315
    new-instance v0, Lo/getAuthTokenProvider$extraCallback;

    sget-object v1, Lo/emptyMap;->asBinder:Lo/emptyMap;

    const/4 v8, 0x6

    const-string v9, "FRAME_SIZE_ERROR"

    invoke-direct {v0, v9, v8, v8, v1}, Lo/getAuthTokenProvider$extraCallback;-><init>(Ljava/lang/String;IILo/emptyMap;)V

    sput-object v0, Lo/getAuthTokenProvider$extraCallback;->asInterface:Lo/getAuthTokenProvider$extraCallback;

    .line 316
    new-instance v0, Lo/getAuthTokenProvider$extraCallback;

    sget-object v1, Lo/emptyMap;->onTransact:Lo/emptyMap;

    const/4 v9, 0x7

    const-string v10, "REFUSED_STREAM"

    invoke-direct {v0, v10, v9, v9, v1}, Lo/getAuthTokenProvider$extraCallback;-><init>(Ljava/lang/String;IILo/emptyMap;)V

    sput-object v0, Lo/getAuthTokenProvider$extraCallback;->onTransact:Lo/getAuthTokenProvider$extraCallback;

    .line 317
    new-instance v0, Lo/getAuthTokenProvider$extraCallback;

    sget-object v1, Lo/emptyMap;->extraCallback:Lo/emptyMap;

    const/16 v10, 0x8

    const-string v11, "CANCEL"

    invoke-direct {v0, v11, v10, v10, v1}, Lo/getAuthTokenProvider$extraCallback;-><init>(Ljava/lang/String;IILo/emptyMap;)V

    sput-object v0, Lo/getAuthTokenProvider$extraCallback;->onRelationshipValidationResult:Lo/getAuthTokenProvider$extraCallback;

    .line 318
    new-instance v0, Lo/getAuthTokenProvider$extraCallback;

    sget-object v1, Lo/emptyMap;->asBinder:Lo/emptyMap;

    const/16 v11, 0x9

    const-string v12, "COMPRESSION_ERROR"

    invoke-direct {v0, v12, v11, v11, v1}, Lo/getAuthTokenProvider$extraCallback;-><init>(Ljava/lang/String;IILo/emptyMap;)V

    sput-object v0, Lo/getAuthTokenProvider$extraCallback;->asBinder:Lo/getAuthTokenProvider$extraCallback;

    .line 319
    new-instance v0, Lo/getAuthTokenProvider$extraCallback;

    sget-object v1, Lo/emptyMap;->asBinder:Lo/emptyMap;

    const/16 v12, 0xa

    const-string v13, "CONNECT_ERROR"

    invoke-direct {v0, v13, v12, v12, v1}, Lo/getAuthTokenProvider$extraCallback;-><init>(Ljava/lang/String;IILo/emptyMap;)V

    sput-object v0, Lo/getAuthTokenProvider$extraCallback;->ICustomTabsService:Lo/getAuthTokenProvider$extraCallback;

    .line 320
    new-instance v0, Lo/getAuthTokenProvider$extraCallback;

    sget-object v1, Lo/emptyMap;->onRelationshipValidationResult:Lo/emptyMap;

    const-string v13, "Bandwidth exhausted"

    invoke-virtual {v1, v13}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v1

    const/16 v13, 0xb

    const-string v14, "ENHANCE_YOUR_CALM"

    invoke-direct {v0, v14, v13, v13, v1}, Lo/getAuthTokenProvider$extraCallback;-><init>(Ljava/lang/String;IILo/emptyMap;)V

    sput-object v0, Lo/getAuthTokenProvider$extraCallback;->newSession:Lo/getAuthTokenProvider$extraCallback;

    .line 321
    new-instance v0, Lo/getAuthTokenProvider$extraCallback;

    sget-object v1, Lo/emptyMap;->onPostMessage:Lo/emptyMap;

    const-string v14, "Permission denied as protocol is not secure enough to call"

    invoke-virtual {v1, v14}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v1

    const/16 v14, 0xc

    const-string v15, "INADEQUATE_SECURITY"

    invoke-direct {v0, v15, v14, v14, v1}, Lo/getAuthTokenProvider$extraCallback;-><init>(Ljava/lang/String;IILo/emptyMap;)V

    sput-object v0, Lo/getAuthTokenProvider$extraCallback;->warmup:Lo/getAuthTokenProvider$extraCallback;

    .line 323
    new-instance v0, Lo/getAuthTokenProvider$extraCallback;

    sget-object v1, Lo/emptyMap;->ICustomTabsCallback:Lo/emptyMap;

    const/16 v15, 0xd

    const-string v14, "HTTP_1_1_REQUIRED"

    invoke-direct {v0, v14, v15, v15, v1}, Lo/getAuthTokenProvider$extraCallback;-><init>(Ljava/lang/String;IILo/emptyMap;)V

    sput-object v0, Lo/getAuthTokenProvider$extraCallback;->getInterfaceDescriptor:Lo/getAuthTokenProvider$extraCallback;

    const/16 v1, 0xe

    new-array v1, v1, [Lo/getAuthTokenProvider$extraCallback;

    .line 303
    sget-object v14, Lo/getAuthTokenProvider$extraCallback;->ICustomTabsCallback:Lo/getAuthTokenProvider$extraCallback;

    aput-object v14, v1, v2

    sget-object v14, Lo/getAuthTokenProvider$extraCallback;->extraCallback:Lo/getAuthTokenProvider$extraCallback;

    aput-object v14, v1, v3

    sget-object v14, Lo/getAuthTokenProvider$extraCallback;->onNavigationEvent:Lo/getAuthTokenProvider$extraCallback;

    aput-object v14, v1, v4

    sget-object v4, Lo/getAuthTokenProvider$extraCallback;->onPostMessage:Lo/getAuthTokenProvider$extraCallback;

    aput-object v4, v1, v5

    sget-object v4, Lo/getAuthTokenProvider$extraCallback;->onMessageChannelReady:Lo/getAuthTokenProvider$extraCallback;

    aput-object v4, v1, v6

    sget-object v4, Lo/getAuthTokenProvider$extraCallback;->ICustomTabsCallback$Stub:Lo/getAuthTokenProvider$extraCallback;

    aput-object v4, v1, v7

    sget-object v4, Lo/getAuthTokenProvider$extraCallback;->asInterface:Lo/getAuthTokenProvider$extraCallback;

    aput-object v4, v1, v8

    sget-object v4, Lo/getAuthTokenProvider$extraCallback;->onTransact:Lo/getAuthTokenProvider$extraCallback;

    aput-object v4, v1, v9

    sget-object v4, Lo/getAuthTokenProvider$extraCallback;->onRelationshipValidationResult:Lo/getAuthTokenProvider$extraCallback;

    aput-object v4, v1, v10

    sget-object v4, Lo/getAuthTokenProvider$extraCallback;->asBinder:Lo/getAuthTokenProvider$extraCallback;

    aput-object v4, v1, v11

    sget-object v4, Lo/getAuthTokenProvider$extraCallback;->ICustomTabsService:Lo/getAuthTokenProvider$extraCallback;

    aput-object v4, v1, v12

    sget-object v4, Lo/getAuthTokenProvider$extraCallback;->newSession:Lo/getAuthTokenProvider$extraCallback;

    aput-object v4, v1, v13

    sget-object v4, Lo/getAuthTokenProvider$extraCallback;->warmup:Lo/getAuthTokenProvider$extraCallback;

    const/16 v5, 0xc

    aput-object v4, v1, v5

    aput-object v0, v1, v15

    sput-object v1, Lo/getAuthTokenProvider$extraCallback;->requestPostMessageChannel:[Lo/getAuthTokenProvider$extraCallback;

    .line 4329
    invoke-static {}, Lo/getAuthTokenProvider$extraCallback;->values()[Lo/getAuthTokenProvider$extraCallback;

    move-result-object v0

    .line 4330
    array-length v1, v0

    sub-int/2addr v1, v3

    aget-object v1, v0, v1

    .line 4354
    iget v1, v1, Lo/getAuthTokenProvider$extraCallback;->mayLaunchUrl:I

    add-int/2addr v1, v3

    .line 4331
    new-array v1, v1, [Lo/getAuthTokenProvider$extraCallback;

    .line 4332
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 5354
    iget v5, v4, Lo/getAuthTokenProvider$extraCallback;->mayLaunchUrl:I

    .line 4334
    aput-object v4, v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 326
    :cond_0
    sput-object v1, Lo/getAuthTokenProvider$extraCallback;->ICustomTabsCallback$Stub$Proxy:[Lo/getAuthTokenProvider$extraCallback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILo/emptyMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lo/emptyMap;",
            ")V"
        }
    .end annotation

    .line 345
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 346
    iput p3, p0, Lo/getAuthTokenProvider$extraCallback;->mayLaunchUrl:I

    .line 347
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "HTTP/2 error code: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lo/emptyMap;->onPostMessage(Ljava/lang/String;)Lo/emptyMap;

    move-result-object p1

    iput-object p1, p0, Lo/getAuthTokenProvider$extraCallback;->postMessage:Lo/emptyMap;

    return-void
.end method

.method public static onPostMessage(J)Lo/emptyMap;
    .locals 4

    .line 1371
    sget-object v0, Lo/getAuthTokenProvider$extraCallback;->ICustomTabsCallback$Stub$Proxy:[Lo/getAuthTokenProvider$extraCallback;

    array-length v1, v0

    int-to-long v1, v1

    cmp-long v3, p0, v1

    if-gez v3, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    long-to-int v1, p0

    .line 1374
    aget-object v0, v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    .line 391
    sget-object v0, Lo/getAuthTokenProvider$extraCallback;->onNavigationEvent:Lo/getAuthTokenProvider$extraCallback;

    .line 2361
    iget-object v0, v0, Lo/getAuthTokenProvider$extraCallback;->postMessage:Lo/emptyMap;

    .line 2492
    iget-object v0, v0, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    .line 3217
    iget v0, v0, Lo/emptyMap$onPostMessage;->requestPostMessageChannel:I

    .line 392
    invoke-static {v0}, Lo/emptyMap;->onMessageChannelReady(I)Lo/emptyMap;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Unrecognized HTTP/2 error code: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 393
    invoke-virtual {v0, p0}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object p0

    return-object p0

    .line 3361
    :cond_2
    iget-object p0, v0, Lo/getAuthTokenProvider$extraCallback;->postMessage:Lo/emptyMap;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lo/getAuthTokenProvider$extraCallback;
    .locals 1

    .line 303
    const-class v0, Lo/getAuthTokenProvider$extraCallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/getAuthTokenProvider$extraCallback;

    return-object p0
.end method

.method public static values()[Lo/getAuthTokenProvider$extraCallback;
    .locals 1

    .line 303
    sget-object v0, Lo/getAuthTokenProvider$extraCallback;->requestPostMessageChannel:[Lo/getAuthTokenProvider$extraCallback;

    invoke-virtual {v0}, [Lo/getAuthTokenProvider$extraCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/getAuthTokenProvider$extraCallback;

    return-object v0
.end method
