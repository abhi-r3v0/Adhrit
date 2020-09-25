.class public abstract Lo/getEventAppExecutionSize$onNavigationEvent;
.super Lo/writeRawVarint64$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getEventAppExecutionSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lo/getEventAppExecutionSize<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lo/getEventAppExecutionSize$onNavigationEvent<",
        "TMessageType;TBuilderType;>;>",
        "Lo/writeRawVarint64$onNavigationEvent<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field private final defaultInstance:Lo/getEventAppExecutionSize;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field public instance:Lo/getEventAppExecutionSize;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected isBuilt:Z


# direct methods
.method public constructor <init>(Lo/getEventAppExecutionSize;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 341
    invoke-direct {p0}, Lo/writeRawVarint64$onNavigationEvent;-><init>()V

    .line 342
    iput-object p1, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->defaultInstance:Lo/getEventAppExecutionSize;

    .line 343
    sget-object v0, Lo/getEventAppExecutionSize$asInterface;->extraCallback:Lo/getEventAppExecutionSize$asInterface;

    .line 344
    invoke-virtual {p1, v0}, Lo/getEventAppExecutionSize;->dynamicMethod(Lo/getEventAppExecutionSize$asInterface;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getEventAppExecutionSize;

    iput-object p1, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    const/4 p1, 0x0

    .line 345
    iput-boolean p1, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->isBuilt:Z

    return-void
.end method

.method private mergeFromInstance(Lo/getEventAppExecutionSize;Lo/getEventAppExecutionSize;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 419
    invoke-static {}, Lo/ReportUploader$HandlingExceptionCheck;->ICustomTabsCallback()Lo/ReportUploader$HandlingExceptionCheck;

    move-result-object v0

    .line 1107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ReportUploader$HandlingExceptionCheck;->onMessageChannelReady(Ljava/lang/Class;)Lo/CreateReportRequest;

    move-result-object v0

    .line 419
    invoke-interface {v0, p1, p2}, Lo/CreateReportRequest;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lo/WireFormat$FieldType$2;
    .locals 1

    .line 331
    invoke-virtual {p0}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lo/getEventAppExecutionSize;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 399
    invoke-virtual {p0}, Lo/getEventAppExecutionSize$onNavigationEvent;->buildPartial()Lo/getEventAppExecutionSize;

    move-result-object v0

    .line 400
    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 401
    :cond_0
    invoke-static {v0}, Lo/getEventAppExecutionSize$onNavigationEvent;->newUninitializedMessageException(Lo/WireFormat$FieldType$2;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lo/WireFormat$FieldType$2;
    .locals 1

    .line 331
    invoke-virtual {p0}, Lo/getEventAppExecutionSize$onNavigationEvent;->buildPartial()Lo/getEventAppExecutionSize;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lo/getEventAppExecutionSize;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 387
    iget-boolean v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->isBuilt:Z

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    return-object v0

    .line 391
    :cond_0
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->makeImmutable()V

    const/4 v0, 0x1

    .line 393
    iput-boolean v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->isBuilt:Z

    .line 394
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    return-object v0
.end method

.method public bridge synthetic clear()Lo/WireFormat$FieldType$2$extraCallback;
    .locals 1

    .line 331
    invoke-virtual {p0}, Lo/getEventAppExecutionSize$onNavigationEvent;->clear()Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lo/getEventAppExecutionSize$onNavigationEvent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 374
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    sget-object v1, Lo/getEventAppExecutionSize$asInterface;->extraCallback:Lo/getEventAppExecutionSize$asInterface;

    invoke-virtual {v0, v1}, Lo/getEventAppExecutionSize;->dynamicMethod(Lo/getEventAppExecutionSize$asInterface;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getEventAppExecutionSize;

    iput-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 331
    invoke-virtual {p0}, Lo/getEventAppExecutionSize$onNavigationEvent;->clone()Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lo/WireFormat$FieldType$2$extraCallback;
    .locals 1

    .line 331
    invoke-virtual {p0}, Lo/getEventAppExecutionSize$onNavigationEvent;->clone()Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lo/getEventAppExecutionSize$onNavigationEvent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 380
    invoke-virtual {p0}, Lo/getEventAppExecutionSize$onNavigationEvent;->getDefaultInstanceForType()Lo/getEventAppExecutionSize;

    move-result-object v0

    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->newBuilderForType()Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object v0

    .line 381
    invoke-virtual {p0}, Lo/getEventAppExecutionSize$onNavigationEvent;->buildPartial()Lo/getEventAppExecutionSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/getEventAppExecutionSize$onNavigationEvent;->mergeFrom(Lo/getEventAppExecutionSize;)Lo/getEventAppExecutionSize$onNavigationEvent;

    return-object v0
.end method

.method public bridge synthetic clone()Lo/writeRawVarint64$onNavigationEvent;
    .locals 1

    .line 331
    invoke-virtual {p0}, Lo/getEventAppExecutionSize$onNavigationEvent;->clone()Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object v0

    return-object v0
.end method

.method protected final copyOnWrite()V
    .locals 1

    .line 353
    iget-boolean v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->isBuilt:Z

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {p0}, Lo/getEventAppExecutionSize$onNavigationEvent;->copyOnWriteInternal()V

    const/4 v0, 0x0

    .line 355
    iput-boolean v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->isBuilt:Z

    :cond_0
    return-void
.end method

.method protected copyOnWriteInternal()V
    .locals 2

    .line 360
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    sget-object v1, Lo/getEventAppExecutionSize$asInterface;->extraCallback:Lo/getEventAppExecutionSize$asInterface;

    .line 361
    invoke-virtual {v0, v1}, Lo/getEventAppExecutionSize;->dynamicMethod(Lo/getEventAppExecutionSize$asInterface;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getEventAppExecutionSize;

    .line 362
    iget-object v1, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    invoke-direct {p0, v0, v1}, Lo/getEventAppExecutionSize$onNavigationEvent;->mergeFromInstance(Lo/getEventAppExecutionSize;Lo/getEventAppExecutionSize;)V

    .line 363
    iput-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    return-void
.end method

.method public bridge synthetic getDefaultInstanceForType()Lo/WireFormat$FieldType$2;
    .locals 1

    .line 331
    invoke-virtual {p0}, Lo/getEventAppExecutionSize$onNavigationEvent;->getDefaultInstanceForType()Lo/getEventAppExecutionSize;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lo/getEventAppExecutionSize;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 424
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->defaultInstance:Lo/getEventAppExecutionSize;

    return-object v0
.end method

.method protected internalMergeFrom(Lo/getEventAppExecutionSize;)Lo/getEventAppExecutionSize$onNavigationEvent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 408
    invoke-virtual {p0, p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->mergeFrom(Lo/getEventAppExecutionSize;)Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic internalMergeFrom(Lo/writeRawVarint64;)Lo/writeRawVarint64$onNavigationEvent;
    .locals 0

    .line 331
    check-cast p1, Lo/getEventAppExecutionSize;

    invoke-virtual {p0, p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->internalMergeFrom(Lo/getEventAppExecutionSize;)Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object p1

    return-object p1
.end method

.method public final isInitialized()Z
    .locals 2

    .line 368
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/getEventAppExecutionSize;->isInitialized(Lo/getEventAppExecutionSize;Z)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic mergeFrom(Lo/writeSessionAppClsId;Lo/writeSessionEventDevice;)Lo/WireFormat$FieldType$2$extraCallback;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    invoke-virtual {p0, p1, p2}, Lo/getEventAppExecutionSize$onNavigationEvent;->mergeFrom(Lo/writeSessionAppClsId;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BII)Lo/WireFormat$FieldType$2$extraCallback;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 331
    invoke-virtual {p0, p1, p2, p3}, Lo/getEventAppExecutionSize$onNavigationEvent;->mergeFrom([BII)Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BIILo/writeSessionEventDevice;)Lo/WireFormat$FieldType$2$extraCallback;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 331
    invoke-virtual {p0, p1, p2, p3, p4}, Lo/getEventAppExecutionSize$onNavigationEvent;->mergeFrom([BIILo/writeSessionEventDevice;)Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lo/getEventAppExecutionSize;)Lo/getEventAppExecutionSize$onNavigationEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 413
    invoke-virtual {p0}, Lo/getEventAppExecutionSize$onNavigationEvent;->copyOnWrite()V

    .line 414
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    invoke-direct {p0, v0, p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->mergeFromInstance(Lo/getEventAppExecutionSize;Lo/getEventAppExecutionSize;)V

    return-object p0
.end method

.method public mergeFrom(Lo/writeSessionAppClsId;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize$onNavigationEvent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/writeSessionAppClsId;",
            "Lo/writeSessionEventDevice;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 458
    invoke-virtual {p0}, Lo/getEventAppExecutionSize$onNavigationEvent;->copyOnWrite()V

    .line 462
    :try_start_0
    invoke-static {}, Lo/ReportUploader$HandlingExceptionCheck;->ICustomTabsCallback()Lo/ReportUploader$HandlingExceptionCheck;

    move-result-object v0

    iget-object v1, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    .line 3107
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ReportUploader$HandlingExceptionCheck;->onMessageChannelReady(Ljava/lang/Class;)Lo/CreateReportRequest;

    move-result-object v0

    .line 462
    iget-object v1, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    .line 4059
    iget-object v2, p1, Lo/writeSessionAppClsId;->onMessageChannelReady:Lo/writeSessionEventAppExecutionException;

    if-eqz v2, :cond_0

    .line 4060
    iget-object p1, p1, Lo/writeSessionAppClsId;->onMessageChannelReady:Lo/writeSessionEventAppExecutionException;

    goto :goto_0

    .line 4062
    :cond_0
    new-instance v2, Lo/writeSessionEventAppExecutionException;

    invoke-direct {v2, p1}, Lo/writeSessionEventAppExecutionException;-><init>(Lo/writeSessionAppClsId;)V

    move-object p1, v2

    .line 462
    :goto_0
    invoke-interface {v0, v1, p1, p2}, Lo/CreateReportRequest;->onPostMessage(Ljava/lang/Object;Lo/attemptUploadWithRetry;Lo/writeSessionEventDevice;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 465
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/io/IOException;

    if-eqz p2, :cond_1

    .line 466
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 468
    :cond_1
    throw p1
.end method

.method public mergeFrom([BII)Lo/getEventAppExecutionSize$onNavigationEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 450
    invoke-static {}, Lo/writeSessionEventDevice;->onMessageChannelReady()Lo/writeSessionEventDevice;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lo/getEventAppExecutionSize$onNavigationEvent;->mergeFrom([BIILo/writeSessionEventDevice;)Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom([BIILo/writeSessionEventDevice;)Lo/getEventAppExecutionSize$onNavigationEvent;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lo/writeSessionEventDevice;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 431
    invoke-virtual {p0}, Lo/getEventAppExecutionSize$onNavigationEvent;->copyOnWrite()V

    .line 433
    :try_start_0
    invoke-static {}, Lo/ReportUploader$HandlingExceptionCheck;->ICustomTabsCallback()Lo/ReportUploader$HandlingExceptionCheck;

    move-result-object v0

    iget-object v1, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    .line 2107
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ReportUploader$HandlingExceptionCheck;->onMessageChannelReady(Ljava/lang/Class;)Lo/CreateReportRequest;

    move-result-object v2

    .line 433
    iget-object v3, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    add-int v6, p2, p3

    new-instance v7, Lo/writeRawLittleEndian64$onPostMessage;

    invoke-direct {v7, p4}, Lo/writeRawLittleEndian64$onPostMessage;-><init>(Lo/writeSessionEventDevice;)V

    move-object v4, p1

    move v5, p2

    invoke-interface/range {v2 .. v7}, Lo/CreateReportRequest;->extraCallback(Ljava/lang/Object;[BIILo/writeRawLittleEndian64$onPostMessage;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 441
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Reading from byte array should not throw IOException."

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 439
    :catch_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_2
    move-exception p1

    .line 437
    throw p1
.end method

.method public bridge synthetic mergeFrom(Lo/writeSessionAppClsId;Lo/writeSessionEventDevice;)Lo/writeRawVarint64$onNavigationEvent;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    invoke-virtual {p0, p1, p2}, Lo/getEventAppExecutionSize$onNavigationEvent;->mergeFrom(Lo/writeSessionAppClsId;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BII)Lo/writeRawVarint64$onNavigationEvent;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 331
    invoke-virtual {p0, p1, p2, p3}, Lo/getEventAppExecutionSize$onNavigationEvent;->mergeFrom([BII)Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BIILo/writeSessionEventDevice;)Lo/writeRawVarint64$onNavigationEvent;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 331
    invoke-virtual {p0, p1, p2, p3, p4}, Lo/getEventAppExecutionSize$onNavigationEvent;->mergeFrom([BIILo/writeSessionEventDevice;)Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object p1

    return-object p1
.end method
