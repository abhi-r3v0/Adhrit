.class public final Lo/emptyMap;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/emptyMap$extraCallback;,
        Lo/emptyMap$ICustomTabsCallback;,
        Lo/emptyMap$onPostMessage;
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lo/emptyMap;

.field public static final ICustomTabsCallback$Stub:Lo/emptyMap;

.field public static final asBinder:Lo/emptyMap;

.field static final asInterface:Lo/getPredecessorKey$ICustomTabsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getPredecessorKey$ICustomTabsCallback<",
            "Lo/emptyMap;",
            ">;"
        }
    .end annotation
.end field

.field public static final extraCallback:Lo/emptyMap;

.field private static synthetic mayLaunchUrl:Z

.field static final newSession:Lo/getPredecessorKey$ICustomTabsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getPredecessorKey$ICustomTabsCallback<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final onMessageChannelReady:Lo/emptyMap;

.field public static final onNavigationEvent:Lo/emptyMap;

.field public static final onPostMessage:Lo/emptyMap;

.field public static final onRelationshipValidationResult:Lo/emptyMap;

.field public static final onTransact:Lo/emptyMap;

.field private static final postMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/emptyMap;",
            ">;"
        }
    .end annotation
.end field

.field private static final updateVisuals:Lo/getPredecessorKey$onTransact;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getPredecessorKey$onTransact<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final warmup:Z


# instance fields
.field public final ICustomTabsCallback$Stub$Proxy:Ljava/lang/Throwable;

.field public final ICustomTabsService:Lo/emptyMap$onPostMessage;

.field public final getInterfaceDescriptor:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 53
    const-class v0, Lo/emptyMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lo/emptyMap;->mayLaunchUrl:Z

    const-string v0, "io.grpc.Status.failOnEqualsForTest"

    const-string v1, "false"

    .line 234
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lo/emptyMap;->warmup:Z

    .line 7240
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 7241
    invoke-static {}, Lo/emptyMap$onPostMessage;->values()[Lo/emptyMap$onPostMessage;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 8217
    iget v6, v5, Lo/emptyMap$onPostMessage;->requestPostMessageChannel:I

    .line 7242
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lo/emptyMap;

    invoke-direct {v7, v5}, Lo/emptyMap;-><init>(Lo/emptyMap$onPostMessage;)V

    invoke-virtual {v0, v6, v7}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/emptyMap;

    if-nez v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7244
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Code value duplication between "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8492
    iget-object v2, v6, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    .line 7245
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " & "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7248
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 237
    sput-object v0, Lo/emptyMap;->postMessage:Ljava/util/List;

    .line 254
    sget-object v0, Lo/emptyMap$onPostMessage;->onMessageChannelReady:Lo/emptyMap$onPostMessage;

    .line 10055
    sget-object v1, Lo/emptyMap;->postMessage:Ljava/util/List;

    .line 9224
    iget v0, v0, Lo/emptyMap$onPostMessage;->requestPostMessageChannel:I

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/emptyMap;

    .line 254
    sput-object v0, Lo/emptyMap;->onMessageChannelReady:Lo/emptyMap;

    .line 256
    sget-object v0, Lo/emptyMap$onPostMessage;->extraCallback:Lo/emptyMap$onPostMessage;

    .line 11055
    sget-object v1, Lo/emptyMap;->postMessage:Ljava/util/List;

    .line 10224
    iget v0, v0, Lo/emptyMap$onPostMessage;->requestPostMessageChannel:I

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/emptyMap;

    .line 256
    sput-object v0, Lo/emptyMap;->extraCallback:Lo/emptyMap;

    .line 258
    sget-object v0, Lo/emptyMap$onPostMessage;->onNavigationEvent:Lo/emptyMap$onPostMessage;

    .line 12055
    sget-object v1, Lo/emptyMap;->postMessage:Ljava/util/List;

    .line 11224
    iget v0, v0, Lo/emptyMap$onPostMessage;->requestPostMessageChannel:I

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/emptyMap;

    .line 258
    sput-object v0, Lo/emptyMap;->ICustomTabsCallback:Lo/emptyMap;

    .line 260
    sget-object v0, Lo/emptyMap$onPostMessage;->ICustomTabsCallback:Lo/emptyMap$onPostMessage;

    .line 13055
    sget-object v1, Lo/emptyMap;->postMessage:Ljava/util/List;

    .line 12224
    iget v0, v0, Lo/emptyMap$onPostMessage;->requestPostMessageChannel:I

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 262
    sget-object v0, Lo/emptyMap$onPostMessage;->onPostMessage:Lo/emptyMap$onPostMessage;

    .line 14055
    sget-object v1, Lo/emptyMap;->postMessage:Ljava/util/List;

    .line 13224
    iget v0, v0, Lo/emptyMap$onPostMessage;->requestPostMessageChannel:I

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/emptyMap;

    .line 262
    sput-object v0, Lo/emptyMap;->onNavigationEvent:Lo/emptyMap;

    .line 264
    sget-object v0, Lo/emptyMap$onPostMessage;->asInterface:Lo/emptyMap$onPostMessage;

    .line 15055
    sget-object v1, Lo/emptyMap;->postMessage:Ljava/util/List;

    .line 14224
    iget v0, v0, Lo/emptyMap$onPostMessage;->requestPostMessageChannel:I

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 266
    sget-object v0, Lo/emptyMap$onPostMessage;->ICustomTabsCallback$Stub:Lo/emptyMap$onPostMessage;

    .line 16055
    sget-object v1, Lo/emptyMap;->postMessage:Ljava/util/List;

    .line 15224
    iget v0, v0, Lo/emptyMap$onPostMessage;->requestPostMessageChannel:I

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 271
    sget-object v0, Lo/emptyMap$onPostMessage;->onRelationshipValidationResult:Lo/emptyMap$onPostMessage;

    .line 17055
    sget-object v1, Lo/emptyMap;->postMessage:Ljava/util/List;

    .line 16224
    iget v0, v0, Lo/emptyMap$onPostMessage;->requestPostMessageChannel:I

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/emptyMap;

    .line 271
    sput-object v0, Lo/emptyMap;->onPostMessage:Lo/emptyMap;

    .line 273
    sget-object v0, Lo/emptyMap$onPostMessage;->extraCommand:Lo/emptyMap$onPostMessage;

    .line 18055
    sget-object v1, Lo/emptyMap;->postMessage:Ljava/util/List;

    .line 17224
    iget v0, v0, Lo/emptyMap$onPostMessage;->requestPostMessageChannel:I

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/emptyMap;

    .line 273
    sput-object v0, Lo/emptyMap;->ICustomTabsCallback$Stub:Lo/emptyMap;

    .line 278
    sget-object v0, Lo/emptyMap$onPostMessage;->onTransact:Lo/emptyMap$onPostMessage;

    .line 19055
    sget-object v1, Lo/emptyMap;->postMessage:Ljava/util/List;

    .line 18224
    iget v0, v0, Lo/emptyMap$onPostMessage;->requestPostMessageChannel:I

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/emptyMap;

    .line 278
    sput-object v0, Lo/emptyMap;->onRelationshipValidationResult:Lo/emptyMap;

    .line 283
    sget-object v0, Lo/emptyMap$onPostMessage;->asBinder:Lo/emptyMap$onPostMessage;

    .line 20055
    sget-object v1, Lo/emptyMap;->postMessage:Ljava/util/List;

    .line 19224
    iget v0, v0, Lo/emptyMap$onPostMessage;->requestPostMessageChannel:I

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 289
    sget-object v0, Lo/emptyMap$onPostMessage;->newSession:Lo/emptyMap$onPostMessage;

    .line 21055
    sget-object v1, Lo/emptyMap;->postMessage:Ljava/util/List;

    .line 20224
    iget v0, v0, Lo/emptyMap$onPostMessage;->requestPostMessageChannel:I

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 291
    sget-object v0, Lo/emptyMap$onPostMessage;->ICustomTabsCallback$Stub$Proxy:Lo/emptyMap$onPostMessage;

    .line 22055
    sget-object v1, Lo/emptyMap;->postMessage:Ljava/util/List;

    .line 21224
    iget v0, v0, Lo/emptyMap$onPostMessage;->requestPostMessageChannel:I

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 293
    sget-object v0, Lo/emptyMap$onPostMessage;->getInterfaceDescriptor:Lo/emptyMap$onPostMessage;

    .line 23055
    sget-object v1, Lo/emptyMap;->postMessage:Ljava/util/List;

    .line 22224
    iget v0, v0, Lo/emptyMap$onPostMessage;->requestPostMessageChannel:I

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 295
    sget-object v0, Lo/emptyMap$onPostMessage;->warmup:Lo/emptyMap$onPostMessage;

    .line 24055
    sget-object v1, Lo/emptyMap;->postMessage:Ljava/util/List;

    .line 23224
    iget v0, v0, Lo/emptyMap$onPostMessage;->requestPostMessageChannel:I

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/emptyMap;

    .line 295
    sput-object v0, Lo/emptyMap;->asBinder:Lo/emptyMap;

    .line 297
    sget-object v0, Lo/emptyMap$onPostMessage;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    .line 25055
    sget-object v1, Lo/emptyMap;->postMessage:Ljava/util/List;

    .line 24224
    iget v0, v0, Lo/emptyMap$onPostMessage;->requestPostMessageChannel:I

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/emptyMap;

    .line 297
    sput-object v0, Lo/emptyMap;->onTransact:Lo/emptyMap;

    .line 299
    sget-object v0, Lo/emptyMap$onPostMessage;->postMessage:Lo/emptyMap$onPostMessage;

    .line 26055
    sget-object v1, Lo/emptyMap;->postMessage:Ljava/util/List;

    .line 25224
    iget v0, v0, Lo/emptyMap$onPostMessage;->requestPostMessageChannel:I

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 355
    new-instance v0, Lo/emptyMap$ICustomTabsCallback;

    invoke-direct {v0, v3}, Lo/emptyMap$ICustomTabsCallback;-><init>(B)V

    const-string v1, "grpc-status"

    .line 356
    invoke-static {v1, v3, v0}, Lo/getPredecessorKey$ICustomTabsCallback;->onPostMessage(Ljava/lang/String;ZLo/getPredecessorKey$onTransact;)Lo/getPredecessorKey$ICustomTabsCallback;

    move-result-object v0

    sput-object v0, Lo/emptyMap;->asInterface:Lo/getPredecessorKey$ICustomTabsCallback;

    .line 380
    new-instance v0, Lo/emptyMap$extraCallback;

    invoke-direct {v0, v3}, Lo/emptyMap$extraCallback;-><init>(B)V

    sput-object v0, Lo/emptyMap;->updateVisuals:Lo/getPredecessorKey$onTransact;

    const-string v1, "grpc-message"

    .line 387
    invoke-static {v1, v3, v0}, Lo/getPredecessorKey$ICustomTabsCallback;->onPostMessage(Ljava/lang/String;ZLo/getPredecessorKey$onTransact;)Lo/getPredecessorKey$ICustomTabsCallback;

    move-result-object v0

    sput-object v0, Lo/emptyMap;->newSession:Lo/getPredecessorKey$ICustomTabsCallback;

    return-void
.end method

.method private constructor <init>(Lo/emptyMap$onPostMessage;)V
    .locals 1

    const/4 v0, 0x0

    .line 442
    invoke-direct {p0, p1, v0, v0}, Lo/emptyMap;-><init>(Lo/emptyMap$onPostMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Lo/emptyMap$onPostMessage;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 446
    check-cast p1, Lo/emptyMap$onPostMessage;

    iput-object p1, p0, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    .line 447
    iput-object p2, p0, Lo/emptyMap;->getInterfaceDescriptor:Ljava/lang/String;

    .line 448
    iput-object p3, p0, Lo/emptyMap;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Throwable;

    return-void

    .line 4910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "code"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static ICustomTabsCallback(Lo/emptyMap;)Ljava/lang/String;
    .locals 2

    .line 430
    iget-object v0, p0, Lo/emptyMap;->getInterfaceDescriptor:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 431
    iget-object p0, p0, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 433
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lo/emptyMap;->getInterfaceDescriptor:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ICustomTabsCallback(Ljava/lang/Throwable;)Lo/emptyMap;
    .locals 3

    if-eqz p0, :cond_6

    .line 397
    move-object v0, p0

    check-cast v0, Ljava/lang/Throwable;

    :goto_0
    if-eqz v0, :cond_2

    .line 399
    instance-of v1, v0, Lio/grpc/StatusException;

    if-eqz v1, :cond_0

    .line 400
    check-cast v0, Lio/grpc/StatusException;

    .line 3075
    iget-object p0, v0, Lio/grpc/StatusException;->onMessageChannelReady:Lo/emptyMap;

    return-object p0

    .line 401
    :cond_0
    instance-of v1, v0, Lio/grpc/StatusRuntimeException;

    if-eqz v1, :cond_1

    .line 402
    check-cast v0, Lio/grpc/StatusRuntimeException;

    .line 3077
    iget-object p0, v0, Lio/grpc/StatusRuntimeException;->onMessageChannelReady:Lo/emptyMap;

    return-object p0

    .line 404
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 407
    :cond_2
    sget-object v0, Lo/emptyMap;->ICustomTabsCallback:Lo/emptyMap;

    .line 3456
    iget-object v1, v0, Lo/emptyMap;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Throwable;

    if-eq v1, p0, :cond_4

    if-eqz v1, :cond_3

    .line 4052
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_5

    return-object v0

    .line 3459
    :cond_5
    new-instance v1, Lo/emptyMap;

    iget-object v2, v0, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    iget-object v0, v0, Lo/emptyMap;->getInterfaceDescriptor:Ljava/lang/String;

    invoke-direct {v1, v2, v0, p0}, Lo/emptyMap;-><init>(Lo/emptyMap$onPostMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    .line 2910
    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "t"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic onMessageChannelReady()Ljava/util/List;
    .locals 1

    .line 55
    sget-object v0, Lo/emptyMap;->postMessage:Ljava/util/List;

    return-object v0
.end method

.method public static onMessageChannelReady(I)Lo/emptyMap;
    .locals 3

    if-ltz p0, :cond_1

    .line 305
    sget-object v0, Lo/emptyMap;->postMessage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p0, v0, :cond_0

    goto :goto_0

    .line 308
    :cond_0
    sget-object v0, Lo/emptyMap;->postMessage:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/emptyMap;

    return-object p0

    .line 306
    :cond_1
    :goto_0
    sget-object v0, Lo/emptyMap;->ICustomTabsCallback:Lo/emptyMap;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unknown code "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1467
    iget-object v1, v0, Lo/emptyMap;->getInterfaceDescriptor:Ljava/lang/String;

    if-eq v1, p0, :cond_3

    if-eqz v1, :cond_2

    .line 2052
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_4

    return-object v0

    .line 1470
    :cond_4
    new-instance v1, Lo/emptyMap;

    iget-object v2, v0, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    iget-object v0, v0, Lo/emptyMap;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Throwable;

    invoke-direct {v1, v2, p0, v0}, Lo/emptyMap;-><init>(Lo/emptyMap$onPostMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method static synthetic onNavigationEvent([B)Lo/emptyMap;
    .locals 6

    .line 6313
    array-length v0, p0

    const/4 v1, 0x1

    const/16 v2, 0x30

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    aget-byte v0, p0, v3

    if-ne v0, v2, :cond_0

    .line 6314
    sget-object p0, Lo/emptyMap;->onMessageChannelReady:Lo/emptyMap;

    return-object p0

    .line 6323
    :cond_0
    array-length v0, p0

    const/16 v4, 0x39

    if-eq v0, v1, :cond_2

    const/4 v5, 0x2

    if-eq v0, v5, :cond_1

    goto :goto_1

    .line 6325
    :cond_1
    aget-byte v0, p0, v3

    if-lt v0, v2, :cond_3

    aget-byte v0, p0, v3

    if-gt v0, v4, :cond_3

    .line 6328
    aget-byte v0, p0, v3

    sub-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v3, v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 6331
    :goto_0
    aget-byte v0, p0, v1

    if-lt v0, v2, :cond_3

    aget-byte v0, p0, v1

    if-gt v0, v4, :cond_3

    .line 6334
    aget-byte v0, p0, v1

    sub-int/2addr v0, v2

    add-int/2addr v3, v0

    .line 6335
    sget-object v0, Lo/emptyMap;->postMessage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    .line 6336
    sget-object p0, Lo/emptyMap;->postMessage:Ljava/util/List;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/emptyMap;

    return-object p0

    .line 6342
    :cond_3
    :goto_1
    sget-object v0, Lo/emptyMap;->ICustomTabsCallback:Lo/emptyMap;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown code "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    sget-object v3, Lo/performAutoConfigure;->onMessageChannelReady:Ljava/nio/charset/Charset;

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;
    .locals 3

    .line 467
    iget-object v0, p0, Lo/emptyMap;->getInterfaceDescriptor:Ljava/lang/String;

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    .line 6052
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return-object p0

    .line 470
    :cond_2
    new-instance v0, Lo/emptyMap;

    iget-object v1, p0, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    iget-object v2, p0, Lo/emptyMap;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Throwable;

    invoke-direct {v0, v1, p1, v2}, Lo/emptyMap;-><init>(Lo/emptyMap$onPostMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 663
    sget-boolean v0, Lo/emptyMap;->mayLaunchUrl:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lo/emptyMap;->warmup:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Status.equals called; disable this by setting io.grpc.Status.failOnEqualsForTest"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 665
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 675
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final onPostMessage(Ljava/lang/String;)Lo/emptyMap;
    .locals 4

    if-nez p1, :cond_0

    return-object p0

    .line 481
    :cond_0
    iget-object v0, p0, Lo/emptyMap;->getInterfaceDescriptor:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 482
    new-instance v0, Lo/emptyMap;

    iget-object v1, p0, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    iget-object v2, p0, Lo/emptyMap;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Throwable;

    invoke-direct {v0, v1, p1, v2}, Lo/emptyMap;-><init>(Lo/emptyMap$onPostMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 484
    :cond_1
    new-instance v0, Lo/emptyMap;

    iget-object v1, p0, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lo/emptyMap;->getInterfaceDescriptor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lo/emptyMap;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Throwable;

    invoke-direct {v0, v1, p1, v2}, Lo/emptyMap;-><init>(Lo/emptyMap$onPostMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final onPostMessage(Ljava/lang/Throwable;)Lo/emptyMap;
    .locals 3

    .line 456
    iget-object v0, p0, Lo/emptyMap;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Throwable;

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    .line 5052
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return-object p0

    .line 459
    :cond_2
    new-instance v0, Lo/emptyMap;

    iget-object v1, p0, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    iget-object v2, p0, Lo/emptyMap;->getInterfaceDescriptor:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lo/emptyMap;-><init>(Lo/emptyMap$onPostMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 6105
    new-instance v0, Lo/buildAppRequest$onPostMessage;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/buildAppRequest$onPostMessage;-><init>(Ljava/lang/String;B)V

    .line 555
    iget-object v1, p0, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    .line 556
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "code"

    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/emptyMap;->getInterfaceDescriptor:Ljava/lang/String;

    const-string v2, "description"

    .line 557
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    .line 558
    iget-object v1, p0, Lo/emptyMap;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lo/getOverridenSpiEndpoint;->ICustomTabsCallback(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v2, "cause"

    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    .line 559
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
