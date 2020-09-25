.class final Lo/nextRequestNumber$onNavigationEvent;
.super Lo/getNamespace;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/nextRequestNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private ICustomTabsCallback$Stub$Proxy:Z

.field private ICustomTabsService:Z

.field private IPostMessageService$Stub:Z

.field private final asInterface:I

.field private final extraCommand:Lo/sendListen;

.field private getInterfaceDescriptor:Lo/updatePriority;

.field private mayLaunchUrl:I

.field private newSession:Z

.field final onRelationshipValidationResult:Lo/currentStringRemainingChars;

.field private final onTransact:Ljava/lang/Object;

.field private final postMessage:Lo/sendSensitive;

.field private final requestPostMessageChannel:Lo/access$1308;

.field private updateVisuals:I

.field private synthetic validateRelationship:Lo/nextRequestNumber;

.field private warmup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/getOptExclusiveStart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/nextRequestNumber;ILo/restoreAuth;Ljava/lang/Object;Lo/sendListen;Lo/access$1308;Lo/sendSensitive;ILjava/lang/String;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lo/nextRequestNumber$onNavigationEvent;->validateRelationship:Lo/nextRequestNumber;

    .line 248
    invoke-static {p1}, Lo/nextRequestNumber;->onMessageChannelReady(Lo/nextRequestNumber;)Lo/putInternal;

    move-result-object p1

    invoke-direct {p0, p2, p3, p1}, Lo/getNamespace;-><init>(ILo/restoreAuth;Lo/putInternal;)V

    .line 218
    new-instance p1, Lo/updatePriority;

    invoke-direct {p1}, Lo/updatePriority;-><init>()V

    iput-object p1, p0, Lo/nextRequestNumber$onNavigationEvent;->getInterfaceDescriptor:Lo/updatePriority;

    const/4 p1, 0x0

    .line 220
    iput-boolean p1, p0, Lo/nextRequestNumber$onNavigationEvent;->ICustomTabsService:Z

    .line 221
    iput-boolean p1, p0, Lo/nextRequestNumber$onNavigationEvent;->ICustomTabsCallback$Stub$Proxy:Z

    .line 222
    iput-boolean p1, p0, Lo/nextRequestNumber$onNavigationEvent;->newSession:Z

    const/4 p1, 0x1

    .line 235
    iput-boolean p1, p0, Lo/nextRequestNumber$onNavigationEvent;->IPostMessageService$Stub:Z

    if-eqz p4, :cond_0

    .line 249
    iput-object p4, p0, Lo/nextRequestNumber$onNavigationEvent;->onTransact:Ljava/lang/Object;

    .line 250
    iput-object p5, p0, Lo/nextRequestNumber$onNavigationEvent;->extraCommand:Lo/sendListen;

    .line 251
    iput-object p6, p0, Lo/nextRequestNumber$onNavigationEvent;->requestPostMessageChannel:Lo/access$1308;

    .line 252
    iput-object p7, p0, Lo/nextRequestNumber$onNavigationEvent;->postMessage:Lo/sendSensitive;

    .line 253
    iput p8, p0, Lo/nextRequestNumber$onNavigationEvent;->mayLaunchUrl:I

    .line 254
    iput p8, p0, Lo/nextRequestNumber$onNavigationEvent;->updateVisuals:I

    .line 255
    iput p8, p0, Lo/nextRequestNumber$onNavigationEvent;->asInterface:I

    .line 256
    invoke-static {}, Lo/freeze;->asInterface()Lo/currentStringRemainingChars;

    move-result-object p1

    iput-object p1, p0, Lo/nextRequestNumber$onNavigationEvent;->onRelationshipValidationResult:Lo/currentStringRemainingChars;

    return-void

    .line 1910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "lock"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic ICustomTabsCallback(Lo/nextRequestNumber$onNavigationEvent;)Ljava/lang/Object;
    .locals 0

    .line 213
    iget-object p0, p0, Lo/nextRequestNumber$onNavigationEvent;->onTransact:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic ICustomTabsCallback(Lo/nextRequestNumber$onNavigationEvent;Lo/getPredecessorKey;Ljava/lang/String;)V
    .locals 8

    .line 12418
    iget-object v0, p0, Lo/nextRequestNumber$onNavigationEvent;->validateRelationship:Lo/nextRequestNumber;

    .line 12422
    invoke-static {v0}, Lo/nextRequestNumber;->asInterface(Lo/nextRequestNumber;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lo/nextRequestNumber$onNavigationEvent;->validateRelationship:Lo/nextRequestNumber;

    .line 12423
    invoke-static {v0}, Lo/nextRequestNumber;->ICustomTabsCallback$Stub(Lo/nextRequestNumber;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lo/nextRequestNumber$onNavigationEvent;->validateRelationship:Lo/nextRequestNumber;

    .line 12424
    invoke-static {v0}, Lo/nextRequestNumber;->onRelationshipValidationResult(Lo/nextRequestNumber;)Z

    move-result v5

    iget-object v0, p0, Lo/nextRequestNumber$onNavigationEvent;->postMessage:Lo/sendSensitive;

    .line 13321
    iget-object v0, v0, Lo/sendSensitive;->asInterface:Ljavax/net/ssl/SSLSocketFactory;

    const/4 v7, 0x1

    if-nez v0, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_0
    move-object v1, p1

    move-object v2, p2

    .line 12419
    invoke-static/range {v1 .. v6}, Lo/sendAction;->onMessageChannelReady(Lo/getPredecessorKey;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/nextRequestNumber$onNavigationEvent;->warmup:Ljava/util/List;

    .line 12428
    iget-object p1, p0, Lo/nextRequestNumber$onNavigationEvent;->postMessage:Lo/sendSensitive;

    iget-object p0, p0, Lo/nextRequestNumber$onNavigationEvent;->validateRelationship:Lo/nextRequestNumber;

    .line 13417
    iget-object p2, p1, Lo/sendSensitive;->onMessageChannelReady:Lo/emptyMap;

    if-eqz p2, :cond_1

    .line 14108
    iget-object p0, p0, Lo/nextRequestNumber;->ICustomTabsCallback:Lo/nextRequestNumber$onNavigationEvent;

    .line 13418
    iget-object p1, p1, Lo/sendSensitive;->onMessageChannelReady:Lo/emptyMap;

    sget-object p2, Lo/rotateRight$extraCallback;->onMessageChannelReady:Lo/rotateRight$extraCallback;

    new-instance v0, Lo/getPredecessorKey;

    invoke-direct {v0}, Lo/getPredecessorKey;-><init>()V

    invoke-virtual {p0, p1, p2, v7, v0}, Lo/getMaxEntry$onPostMessage;->onMessageChannelReady(Lo/emptyMap;Lo/rotateRight$extraCallback;ZLo/getPredecessorKey;)V

    return-void

    .line 13420
    :cond_1
    iget-object p2, p1, Lo/sendSensitive;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    iget v0, p1, Lo/sendSensitive;->ICustomTabsCallback$Stub:I

    if-lt p2, v0, :cond_2

    .line 13421
    iget-object p2, p1, Lo/sendSensitive;->asBinder:Ljava/util/LinkedList;

    invoke-virtual {p2, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 13422
    invoke-virtual {p1, p0}, Lo/sendSensitive;->onNavigationEvent(Lo/nextRequestNumber;)V

    return-void

    .line 13424
    :cond_2
    invoke-virtual {p1, p0}, Lo/sendSensitive;->onMessageChannelReady(Lo/nextRequestNumber;)V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/nextRequestNumber$onNavigationEvent;Lo/updatePriority;ZZ)V
    .locals 3

    .line 14398
    iget-boolean v0, p0, Lo/nextRequestNumber$onNavigationEvent;->newSession:Z

    if-nez v0, :cond_3

    .line 14401
    iget-boolean v0, p0, Lo/nextRequestNumber$onNavigationEvent;->IPostMessageService$Stub:Z

    if-eqz v0, :cond_0

    .line 15067
    iget-wide v0, p1, Lo/updatePriority;->ICustomTabsCallback:J

    long-to-int v1, v0

    .line 14404
    iget-object v0, p0, Lo/nextRequestNumber$onNavigationEvent;->getInterfaceDescriptor:Lo/updatePriority;

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2}, Lo/updatePriority;->onPostMessage(Lo/updatePriority;J)V

    .line 14405
    iget-boolean p1, p0, Lo/nextRequestNumber$onNavigationEvent;->ICustomTabsService:Z

    or-int/2addr p1, p2

    iput-boolean p1, p0, Lo/nextRequestNumber$onNavigationEvent;->ICustomTabsService:Z

    .line 14406
    iget-boolean p1, p0, Lo/nextRequestNumber$onNavigationEvent;->ICustomTabsCallback$Stub$Proxy:Z

    or-int/2addr p1, p3

    iput-boolean p1, p0, Lo/nextRequestNumber$onNavigationEvent;->ICustomTabsCallback$Stub$Proxy:Z

    return-void

    .line 14408
    :cond_0
    iget-object v0, p0, Lo/nextRequestNumber$onNavigationEvent;->validateRelationship:Lo/nextRequestNumber;

    .line 15124
    iget v0, v0, Lo/nextRequestNumber;->onMessageChannelReady:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 14411
    iget-object v0, p0, Lo/nextRequestNumber$onNavigationEvent;->requestPostMessageChannel:Lo/access$1308;

    iget-object p0, p0, Lo/nextRequestNumber$onNavigationEvent;->validateRelationship:Lo/nextRequestNumber;

    .line 16124
    iget p0, p0, Lo/nextRequestNumber;->onMessageChannelReady:I

    .line 14411
    invoke-virtual {v0, p2, p0, p1, p3}, Lo/access$1308;->extraCallback(ZILo/updatePriority;Z)V

    goto :goto_1

    .line 15511
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "streamId should be set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return-void
.end method

.method private onPostMessage(Lo/emptyMap;ZLo/getPredecessorKey;)V
    .locals 7

    .line 374
    iget-boolean v0, p0, Lo/nextRequestNumber$onNavigationEvent;->newSession:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 377
    iput-boolean v0, p0, Lo/nextRequestNumber$onNavigationEvent;->newSession:Z

    .line 378
    iget-boolean v1, p0, Lo/nextRequestNumber$onNavigationEvent;->IPostMessageService$Stub:Z

    if-eqz v1, :cond_2

    .line 382
    iget-object p2, p0, Lo/nextRequestNumber$onNavigationEvent;->postMessage:Lo/sendSensitive;

    iget-object v1, p0, Lo/nextRequestNumber$onNavigationEvent;->validateRelationship:Lo/nextRequestNumber;

    .line 11473
    iget-object v2, p2, Lo/sendSensitive;->asBinder:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 11474
    invoke-virtual {p2, v1}, Lo/sendSensitive;->extraCallback(Lo/nextRequestNumber;)V

    const/4 p2, 0x0

    .line 384
    iput-object p2, p0, Lo/nextRequestNumber$onNavigationEvent;->warmup:Ljava/util/List;

    .line 385
    iget-object p2, p0, Lo/nextRequestNumber$onNavigationEvent;->getInterfaceDescriptor:Lo/updatePriority;

    .line 11930
    :try_start_0
    iget-wide v1, p2, Lo/updatePriority;->ICustomTabsCallback:J

    invoke-virtual {p2, v1, v2}, Lo/updatePriority;->asInterface(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p2, 0x0

    .line 386
    iput-boolean p2, p0, Lo/nextRequestNumber$onNavigationEvent;->IPostMessageService$Stub:Z

    if-eqz p3, :cond_1

    goto :goto_0

    .line 387
    :cond_1
    new-instance p3, Lo/getPredecessorKey;

    invoke-direct {p3}, Lo/getPredecessorKey;-><init>()V

    :goto_0
    invoke-virtual {p0, p1, v0, p3}, Lo/getMaxEntry$onPostMessage;->onMessageChannelReady(Lo/emptyMap;ZLo/getPredecessorKey;)V

    return-void

    :catch_0
    move-exception p1

    .line 11932
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    .line 391
    :cond_2
    iget-object v0, p0, Lo/nextRequestNumber$onNavigationEvent;->postMessage:Lo/sendSensitive;

    iget-object v1, p0, Lo/nextRequestNumber$onNavigationEvent;->validateRelationship:Lo/nextRequestNumber;

    .line 12124
    iget v1, v1, Lo/nextRequestNumber;->onMessageChannelReady:I

    .line 392
    sget-object v3, Lo/rotateRight$extraCallback;->onPostMessage:Lo/rotateRight$extraCallback;

    sget-object v5, Lo/wasSent;->onRelationshipValidationResult:Lo/wasSent;

    move-object v2, p1

    move v4, p2

    move-object v6, p3

    .line 391
    invoke-virtual/range {v0 .. v6}, Lo/sendSensitive;->onPostMessage(ILo/emptyMap;Lo/rotateRight$extraCallback;ZLo/wasSent;Lo/getPredecessorKey;)V

    return-void
.end method

.method static synthetic onPostMessage(Lo/nextRequestNumber$onNavigationEvent;Lo/emptyMap;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 213
    invoke-direct {p0, p1, v0, v1}, Lo/nextRequestNumber$onNavigationEvent;->onPostMessage(Lo/emptyMap;ZLo/getPredecessorKey;)V

    return-void
.end method


# virtual methods
.method public final b_(I)V
    .locals 4

    .line 303
    iget v0, p0, Lo/nextRequestNumber$onNavigationEvent;->updateVisuals:I

    sub-int/2addr v0, p1

    iput v0, p0, Lo/nextRequestNumber$onNavigationEvent;->updateVisuals:I

    int-to-float p1, v0

    .line 304
    iget v1, p0, Lo/nextRequestNumber$onNavigationEvent;->asInterface:I

    int-to-float v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_0

    sub-int/2addr v1, v0

    .line 306
    iget p1, p0, Lo/nextRequestNumber$onNavigationEvent;->mayLaunchUrl:I

    add-int/2addr p1, v1

    iput p1, p0, Lo/nextRequestNumber$onNavigationEvent;->mayLaunchUrl:I

    add-int/2addr v0, v1

    .line 307
    iput v0, p0, Lo/nextRequestNumber$onNavigationEvent;->updateVisuals:I

    .line 308
    iget-object p1, p0, Lo/nextRequestNumber$onNavigationEvent;->extraCommand:Lo/sendListen;

    iget-object v0, p0, Lo/nextRequestNumber$onNavigationEvent;->validateRelationship:Lo/nextRequestNumber;

    .line 6124
    iget v0, v0, Lo/nextRequestNumber;->onMessageChannelReady:I

    int-to-long v1, v1

    .line 308
    invoke-virtual {p1, v0, v1, v2}, Lo/sendListen;->ICustomTabsCallback(IJ)V

    :cond_0
    return-void
.end method

.method public final extraCallback(Ljava/lang/Throwable;)V
    .locals 2

    .line 297
    invoke-static {p1}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/Throwable;)Lo/emptyMap;

    move-result-object p1

    new-instance v0, Lo/getPredecessorKey;

    invoke-direct {v0}, Lo/getPredecessorKey;-><init>()V

    const/4 v1, 0x1

    .line 5291
    invoke-direct {p0, p1, v1, v0}, Lo/nextRequestNumber$onNavigationEvent;->onPostMessage(Lo/emptyMap;ZLo/getPredecessorKey;)V

    return-void
.end method

.method public final extraCallback(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/getOptExclusiveStart;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 333
    invoke-static {p1}, Lo/access$1702;->extraCallback(Ljava/util/List;)Lo/getPredecessorKey;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/nextRequestNumber$onNavigationEvent;->onNavigationEvent(Lo/getPredecessorKey;)V

    return-void

    .line 335
    :cond_0
    invoke-static {p1}, Lo/access$1702;->ICustomTabsCallback(Ljava/util/List;)Lo/getPredecessorKey;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/nextRequestNumber$onNavigationEvent;->onMessageChannelReady(Lo/getPredecessorKey;)V

    return-void
.end method

.method public final onMessageChannelReady(Z)V
    .locals 16

    move-object/from16 v0, p0

    .line 7305
    iget-boolean v1, v0, Lo/getMaxEntry$onPostMessage;->onMessageChannelReady:Z

    if-nez v1, :cond_0

    .line 6365
    iget-object v2, v0, Lo/nextRequestNumber$onNavigationEvent;->postMessage:Lo/sendSensitive;

    iget-object v1, v0, Lo/nextRequestNumber$onNavigationEvent;->validateRelationship:Lo/nextRequestNumber;

    .line 8124
    iget v3, v1, Lo/nextRequestNumber;->onMessageChannelReady:I

    const/4 v4, 0x0

    .line 6365
    sget-object v5, Lo/rotateRight$extraCallback;->onPostMessage:Lo/rotateRight$extraCallback;

    const/4 v6, 0x0

    sget-object v7, Lo/wasSent;->onRelationshipValidationResult:Lo/wasSent;

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lo/sendSensitive;->onPostMessage(ILo/emptyMap;Lo/rotateRight$extraCallback;ZLo/wasSent;Lo/getPredecessorKey;)V

    goto :goto_0

    .line 6367
    :cond_0
    iget-object v9, v0, Lo/nextRequestNumber$onNavigationEvent;->postMessage:Lo/sendSensitive;

    iget-object v1, v0, Lo/nextRequestNumber$onNavigationEvent;->validateRelationship:Lo/nextRequestNumber;

    .line 9124
    iget v10, v1, Lo/nextRequestNumber;->onMessageChannelReady:I

    const/4 v11, 0x0

    .line 6367
    sget-object v12, Lo/rotateRight$extraCallback;->onPostMessage:Lo/rotateRight$extraCallback;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v9 .. v15}, Lo/sendSensitive;->onPostMessage(ILo/emptyMap;Lo/rotateRight$extraCallback;ZLo/wasSent;Lo/getPredecessorKey;)V

    .line 316
    :goto_0
    invoke-super/range {p0 .. p1}, Lo/getNamespace;->onMessageChannelReady(Z)V

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 5

    .line 284
    invoke-super {p0}, Lo/getNamespace;->onNavigationEvent()V

    .line 285
    invoke-virtual {p0}, Lo/nextRequestNumber$onNavigationEvent;->onMessageChannelReady()Lo/putInternal;

    move-result-object v0

    .line 5082
    iget-wide v1, v0, Lo/putInternal;->onMessageChannelReady:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lo/putInternal;->onMessageChannelReady:J

    .line 5083
    iget-object v0, v0, Lo/putInternal;->onNavigationEvent:Lo/sendUnauth;

    invoke-interface {v0}, Lo/sendUnauth;->onMessageChannelReady()J

    return-void
.end method

.method public final onNavigationEvent(I)V
    .locals 9

    .line 262
    iget-object v0, p0, Lo/nextRequestNumber$onNavigationEvent;->validateRelationship:Lo/nextRequestNumber;

    invoke-static {v0}, Lo/nextRequestNumber;->onTransact(Lo/nextRequestNumber;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 263
    iget-object v0, p0, Lo/nextRequestNumber$onNavigationEvent;->validateRelationship:Lo/nextRequestNumber;

    invoke-static {v0, p1}, Lo/nextRequestNumber;->onNavigationEvent(Lo/nextRequestNumber;I)I

    .line 266
    iget-object p1, p0, Lo/nextRequestNumber$onNavigationEvent;->validateRelationship:Lo/nextRequestNumber;

    invoke-static {p1}, Lo/nextRequestNumber;->extraCallback(Lo/nextRequestNumber;)Lo/nextRequestNumber$onNavigationEvent;

    move-result-object p1

    .line 3284
    invoke-super {p1}, Lo/getNamespace;->onNavigationEvent()V

    .line 3285
    invoke-virtual {p1}, Lo/nextRequestNumber$onNavigationEvent;->onMessageChannelReady()Lo/putInternal;

    move-result-object p1

    .line 4082
    iget-wide v0, p1, Lo/putInternal;->onMessageChannelReady:J

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    iput-wide v0, p1, Lo/putInternal;->onMessageChannelReady:J

    .line 4083
    iget-object p1, p1, Lo/putInternal;->onNavigationEvent:Lo/sendUnauth;

    invoke-interface {p1}, Lo/sendUnauth;->onMessageChannelReady()J

    .line 268
    iget-boolean p1, p0, Lo/nextRequestNumber$onNavigationEvent;->IPostMessageService$Stub:Z

    if-eqz p1, :cond_2

    .line 270
    iget-object p1, p0, Lo/nextRequestNumber$onNavigationEvent;->extraCommand:Lo/sendListen;

    iget-object v0, p0, Lo/nextRequestNumber$onNavigationEvent;->validateRelationship:Lo/nextRequestNumber;

    invoke-static {v0}, Lo/nextRequestNumber;->onRelationshipValidationResult(Lo/nextRequestNumber;)Z

    move-result v4

    const/4 v5, 0x0

    iget-object v0, p0, Lo/nextRequestNumber$onNavigationEvent;->validateRelationship:Lo/nextRequestNumber;

    invoke-static {v0}, Lo/nextRequestNumber;->onTransact(Lo/nextRequestNumber;)I

    move-result v6

    const/4 v7, 0x0

    iget-object v8, p0, Lo/nextRequestNumber$onNavigationEvent;->warmup:Ljava/util/List;

    .line 4108
    :try_start_0
    iget-object v3, p1, Lo/sendListen;->onNavigationEvent:Lo/markSent;

    invoke-interface/range {v3 .. v8}, Lo/markSent;->extraCallback(ZZIILjava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 4110
    iget-object p1, p1, Lo/sendListen;->onMessageChannelReady:Lo/sendListen$onPostMessage;

    invoke-interface {p1, v0}, Lo/sendListen$onPostMessage;->ICustomTabsCallback(Ljava/lang/Throwable;)V

    .line 271
    :goto_1
    iget-object p1, p0, Lo/nextRequestNumber$onNavigationEvent;->validateRelationship:Lo/nextRequestNumber;

    invoke-static {p1}, Lo/nextRequestNumber;->asBinder(Lo/nextRequestNumber;)Lo/restoreAuth;

    const/4 p1, 0x0

    .line 272
    iput-object p1, p0, Lo/nextRequestNumber$onNavigationEvent;->warmup:Ljava/util/List;

    .line 274
    iget-object p1, p0, Lo/nextRequestNumber$onNavigationEvent;->getInterfaceDescriptor:Lo/updatePriority;

    .line 5067
    iget-wide v0, p1, Lo/updatePriority;->ICustomTabsCallback:J

    const-wide/16 v3, 0x0

    cmp-long p1, v0, v3

    if-lez p1, :cond_1

    .line 275
    iget-object p1, p0, Lo/nextRequestNumber$onNavigationEvent;->requestPostMessageChannel:Lo/access$1308;

    iget-boolean v0, p0, Lo/nextRequestNumber$onNavigationEvent;->ICustomTabsService:Z

    iget-object v1, p0, Lo/nextRequestNumber$onNavigationEvent;->validateRelationship:Lo/nextRequestNumber;

    invoke-static {v1}, Lo/nextRequestNumber;->onTransact(Lo/nextRequestNumber;)I

    move-result v1

    iget-object v3, p0, Lo/nextRequestNumber$onNavigationEvent;->getInterfaceDescriptor:Lo/updatePriority;

    iget-boolean v4, p0, Lo/nextRequestNumber$onNavigationEvent;->ICustomTabsCallback$Stub$Proxy:Z

    invoke-virtual {p1, v0, v1, v3, v4}, Lo/access$1308;->extraCallback(ZILo/updatePriority;Z)V

    .line 277
    :cond_1
    iput-boolean v2, p0, Lo/nextRequestNumber$onNavigationEvent;->IPostMessageService$Stub:Z

    :cond_2
    return-void

    .line 2563
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "the stream has been started with id %s"

    invoke-static {p1, v1}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onNavigationEvent(Ljava/lang/Runnable;)V
    .locals 1

    .line 322
    iget-object v0, p0, Lo/nextRequestNumber$onNavigationEvent;->onTransact:Ljava/lang/Object;

    monitor-enter v0

    .line 323
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 324
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final onNavigationEvent(Lo/emptyMap;ZLo/getPredecessorKey;)V
    .locals 0

    const/4 p2, 0x0

    .line 291
    invoke-direct {p0, p1, p2, p3}, Lo/nextRequestNumber$onNavigationEvent;->onPostMessage(Lo/emptyMap;ZLo/getPredecessorKey;)V

    return-void
.end method

.method public final onPostMessage(Lo/updatePriority;Z)V
    .locals 8

    .line 10067
    iget-wide v0, p1, Lo/updatePriority;->ICustomTabsCallback:J

    long-to-int v1, v0

    .line 347
    iget v0, p0, Lo/nextRequestNumber$onNavigationEvent;->mayLaunchUrl:I

    sub-int/2addr v0, v1

    iput v0, p0, Lo/nextRequestNumber$onNavigationEvent;->mayLaunchUrl:I

    if-gez v0, :cond_0

    .line 349
    iget-object p1, p0, Lo/nextRequestNumber$onNavigationEvent;->extraCommand:Lo/sendListen;

    iget-object p2, p0, Lo/nextRequestNumber$onNavigationEvent;->validateRelationship:Lo/nextRequestNumber;

    .line 10124
    iget p2, p2, Lo/nextRequestNumber;->onMessageChannelReady:I

    .line 349
    sget-object v0, Lo/wasSent;->onPostMessage:Lo/wasSent;

    invoke-virtual {p1, p2, v0}, Lo/sendListen;->extraCallback(ILo/wasSent;)V

    .line 350
    iget-object v1, p0, Lo/nextRequestNumber$onNavigationEvent;->postMessage:Lo/sendSensitive;

    iget-object p1, p0, Lo/nextRequestNumber$onNavigationEvent;->validateRelationship:Lo/nextRequestNumber;

    .line 11124
    iget v2, p1, Lo/nextRequestNumber;->onMessageChannelReady:I

    .line 351
    sget-object p1, Lo/emptyMap;->asBinder:Lo/emptyMap;

    const-string p2, "Received data size exceeded our receiving window size"

    .line 352
    invoke-virtual {p1, p2}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v3

    sget-object v4, Lo/rotateRight$extraCallback;->onPostMessage:Lo/rotateRight$extraCallback;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 350
    invoke-virtual/range {v1 .. v7}, Lo/sendSensitive;->onPostMessage(ILo/emptyMap;Lo/rotateRight$extraCallback;ZLo/wasSent;Lo/getPredecessorKey;)V

    return-void

    .line 357
    :cond_0
    new-instance v0, Lo/idleHasTimedOut;

    invoke-direct {v0, p1}, Lo/idleHasTimedOut;-><init>(Lo/updatePriority;)V

    invoke-super {p0, v0, p2}, Lo/getNamespace;->onNavigationEvent(Lo/onServerInfoUpdate;Z)V

    return-void
.end method
