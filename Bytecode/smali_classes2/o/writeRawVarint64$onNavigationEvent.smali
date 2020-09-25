.class public abstract Lo/writeRawVarint64$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/WireFormat$FieldType$2$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeRawVarint64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/writeRawVarint64$onNavigationEvent$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lo/writeRawVarint64<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lo/writeRawVarint64$onNavigationEvent<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lo/WireFormat$FieldType$2$extraCallback;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/util/Collection<",
            "-TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 394
    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lo/writeRawVarint64$onNavigationEvent;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method protected static addAll(Ljava/lang/Iterable;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/util/List<",
            "-TT;>;)V"
        }
    .end annotation

    .line 405
    invoke-static {p0}, Lo/getEventLogSize;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    instance-of v0, p0, Lo/stringToByteString;

    if-eqz v0, :cond_4

    .line 412
    check-cast p0, Lo/stringToByteString;

    invoke-interface {p0}, Lo/stringToByteString;->onNavigationEvent()Ljava/util/List;

    move-result-object p0

    .line 413
    move-object v0, p1

    check-cast v0, Lo/stringToByteString;

    .line 414
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 415
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 418
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Element at index "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lo/stringToByteString;->size()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is null."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 419
    invoke-interface {v0}, Lo/stringToByteString;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-lt v1, p1, :cond_0

    .line 420
    invoke-interface {v0, v1}, Lo/stringToByteString;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 422
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 424
    :cond_1
    instance-of v2, v1, Lo/SessionProtobufHelper;

    if-eqz v2, :cond_2

    .line 425
    check-cast v1, Lo/SessionProtobufHelper;

    invoke-interface {v0, v1}, Lo/stringToByteString;->onNavigationEvent(Lo/SessionProtobufHelper;)V

    goto :goto_0

    .line 427
    :cond_2
    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lo/stringToByteString;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void

    .line 431
    :cond_4
    instance-of v0, p0, Lo/deleteReport;

    if-eqz v0, :cond_5

    .line 432
    check-cast p0, Ljava/util/Collection;

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 434
    :cond_5
    invoke-static {p0, p1}, Lo/writeRawVarint64$onNavigationEvent;->addAllCheckingNulls(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private static addAllCheckingNulls(Ljava/lang/Iterable;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/util/List<",
            "-TT;>;)V"
        }
    .end annotation

    .line 368
    instance-of v0, p1, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 369
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    move-object v2, p0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 371
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 372
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 375
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Element at index "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is null."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 376
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-lt v1, v0, :cond_1

    .line 377
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 379
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 381
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method private getReadingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Reading "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " threw an IOException (should never happen)."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected static newUninitializedMessageException(Lo/WireFormat$FieldType$2;)Lcom/google/protobuf/UninitializedMessageException;
    .locals 0

    .line 388
    new-instance p0, Lcom/google/protobuf/UninitializedMessageException;

    invoke-direct {p0}, Lcom/google/protobuf/UninitializedMessageException;-><init>()V

    return-object p0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 162
    invoke-virtual {p0}, Lo/writeRawVarint64$onNavigationEvent;->clone()Lo/writeRawVarint64$onNavigationEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lo/WireFormat$FieldType$2$extraCallback;
    .locals 1

    .line 162
    invoke-virtual {p0}, Lo/writeRawVarint64$onNavigationEvent;->clone()Lo/writeRawVarint64$onNavigationEvent;

    move-result-object v0

    return-object v0
.end method

.method public abstract clone()Lo/writeRawVarint64$onNavigationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation
.end method

.method protected abstract internalMergeFrom(Lo/writeRawVarint64;)Lo/writeRawVarint64$onNavigationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation
.end method

.method public mergeDelimitedFrom(Ljava/io/InputStream;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    invoke-static {}, Lo/writeSessionEventDevice;->onMessageChannelReady()Lo/writeSessionEventDevice;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lo/writeRawVarint64$onNavigationEvent;->mergeDelimitedFrom(Ljava/io/InputStream;Lo/writeSessionEventDevice;)Z

    move-result p1

    return p1
.end method

.method public mergeDelimitedFrom(Ljava/io/InputStream;Lo/writeSessionEventDevice;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 330
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 334
    :cond_0
    invoke-static {v0, p1}, Lo/writeSessionAppClsId;->ICustomTabsCallback(ILjava/io/InputStream;)I

    move-result v0

    .line 335
    new-instance v1, Lo/writeRawVarint64$onNavigationEvent$onPostMessage;

    invoke-direct {v1, p1, v0}, Lo/writeRawVarint64$onNavigationEvent$onPostMessage;-><init>(Ljava/io/InputStream;I)V

    .line 336
    invoke-virtual {p0, v1, p2}, Lo/writeRawVarint64$onNavigationEvent;->mergeFrom(Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/writeRawVarint64$onNavigationEvent;

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;)Lo/WireFormat$FieldType$2$extraCallback;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-virtual {p0, p1}, Lo/writeRawVarint64$onNavigationEvent;->mergeFrom(Ljava/io/InputStream;)Lo/writeRawVarint64$onNavigationEvent;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/WireFormat$FieldType$2$extraCallback;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-virtual {p0, p1, p2}, Lo/writeRawVarint64$onNavigationEvent;->mergeFrom(Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/writeRawVarint64$onNavigationEvent;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lo/SessionProtobufHelper;)Lo/WireFormat$FieldType$2$extraCallback;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 162
    invoke-virtual {p0, p1}, Lo/writeRawVarint64$onNavigationEvent;->mergeFrom(Lo/SessionProtobufHelper;)Lo/writeRawVarint64$onNavigationEvent;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lo/SessionProtobufHelper;Lo/writeSessionEventDevice;)Lo/WireFormat$FieldType$2$extraCallback;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 162
    invoke-virtual {p0, p1, p2}, Lo/writeRawVarint64$onNavigationEvent;->mergeFrom(Lo/SessionProtobufHelper;Lo/writeSessionEventDevice;)Lo/writeRawVarint64$onNavigationEvent;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lo/WireFormat$FieldType$2;)Lo/WireFormat$FieldType$2$extraCallback;
    .locals 0

    .line 162
    invoke-virtual {p0, p1}, Lo/writeRawVarint64$onNavigationEvent;->mergeFrom(Lo/WireFormat$FieldType$2;)Lo/writeRawVarint64$onNavigationEvent;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lo/writeSessionAppClsId;)Lo/WireFormat$FieldType$2$extraCallback;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-virtual {p0, p1}, Lo/writeRawVarint64$onNavigationEvent;->mergeFrom(Lo/writeSessionAppClsId;)Lo/writeRawVarint64$onNavigationEvent;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lo/writeSessionAppClsId;Lo/writeSessionEventDevice;)Lo/WireFormat$FieldType$2$extraCallback;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-virtual {p0, p1, p2}, Lo/writeRawVarint64$onNavigationEvent;->mergeFrom(Lo/writeSessionAppClsId;Lo/writeSessionEventDevice;)Lo/writeRawVarint64$onNavigationEvent;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([B)Lo/WireFormat$FieldType$2$extraCallback;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 162
    invoke-virtual {p0, p1}, Lo/writeRawVarint64$onNavigationEvent;->mergeFrom([B)Lo/writeRawVarint64$onNavigationEvent;

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

    .line 162
    invoke-virtual {p0, p1, p2, p3}, Lo/writeRawVarint64$onNavigationEvent;->mergeFrom([BII)Lo/writeRawVarint64$onNavigationEvent;

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

    .line 162
    invoke-virtual {p0, p1, p2, p3, p4}, Lo/writeRawVarint64$onNavigationEvent;->mergeFrom([BIILo/writeSessionEventDevice;)Lo/writeRawVarint64$onNavigationEvent;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BLo/writeSessionEventDevice;)Lo/WireFormat$FieldType$2$extraCallback;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 162
    invoke-virtual {p0, p1, p2}, Lo/writeRawVarint64$onNavigationEvent;->mergeFrom([BLo/writeSessionEventDevice;)Lo/writeRawVarint64$onNavigationEvent;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Ljava/io/InputStream;)Lo/writeRawVarint64$onNavigationEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    invoke-static {p1}, Lo/writeSessionAppClsId;->onMessageChannelReady(Ljava/io/InputStream;)Lo/writeSessionAppClsId;

    move-result-object p1

    .line 260
    invoke-virtual {p0, p1}, Lo/writeRawVarint64$onNavigationEvent;->mergeFrom(Lo/writeSessionAppClsId;)Lo/writeRawVarint64$onNavigationEvent;

    const/4 v0, 0x0

    .line 261
    invoke-virtual {p1, v0}, Lo/writeSessionAppClsId;->onNavigationEvent(I)V

    return-object p0
.end method

.method public mergeFrom(Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/writeRawVarint64$onNavigationEvent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lo/writeSessionEventDevice;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    invoke-static {p1}, Lo/writeSessionAppClsId;->onMessageChannelReady(Ljava/io/InputStream;)Lo/writeSessionAppClsId;

    move-result-object p1

    .line 269
    invoke-virtual {p0, p1, p2}, Lo/writeRawVarint64$onNavigationEvent;->mergeFrom(Lo/writeSessionAppClsId;Lo/writeSessionEventDevice;)Lo/writeRawVarint64$onNavigationEvent;

    const/4 p2, 0x0

    .line 270
    invoke-virtual {p1, p2}, Lo/writeSessionAppClsId;->onNavigationEvent(I)V

    return-object p0
.end method

.method public mergeFrom(Lo/SessionProtobufHelper;)Lo/writeRawVarint64$onNavigationEvent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/SessionProtobufHelper;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 185
    :try_start_0
    invoke-virtual {p1}, Lo/SessionProtobufHelper;->onTransact()Lo/writeSessionAppClsId;

    move-result-object p1

    .line 186
    invoke-virtual {p0, p1}, Lo/writeRawVarint64$onNavigationEvent;->mergeFrom(Lo/writeSessionAppClsId;)Lo/writeRawVarint64$onNavigationEvent;

    const/4 v0, 0x0

    .line 187
    invoke-virtual {p1, v0}, Lo/writeSessionAppClsId;->onNavigationEvent(I)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 192
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ByteString"

    invoke-direct {p0, v1}, Lo/writeRawVarint64$onNavigationEvent;->getReadingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 190
    throw p1
.end method

.method public mergeFrom(Lo/SessionProtobufHelper;Lo/writeSessionEventDevice;)Lo/writeRawVarint64$onNavigationEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/SessionProtobufHelper;",
            "Lo/writeSessionEventDevice;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 201
    :try_start_0
    invoke-virtual {p1}, Lo/SessionProtobufHelper;->onTransact()Lo/writeSessionAppClsId;

    move-result-object p1

    .line 202
    invoke-virtual {p0, p1, p2}, Lo/writeRawVarint64$onNavigationEvent;->mergeFrom(Lo/writeSessionAppClsId;Lo/writeSessionEventDevice;)Lo/writeRawVarint64$onNavigationEvent;

    const/4 p2, 0x0

    .line 203
    invoke-virtual {p1, p2}, Lo/writeSessionAppClsId;->onNavigationEvent(I)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 208
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "ByteString"

    invoke-direct {p0, v0}, Lo/writeRawVarint64$onNavigationEvent;->getReadingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 206
    throw p1
.end method

.method public mergeFrom(Lo/WireFormat$FieldType$2;)Lo/writeRawVarint64$onNavigationEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/WireFormat$FieldType$2;",
            ")TBuilderType;"
        }
    .end annotation

    .line 348
    invoke-virtual {p0}, Lo/writeRawVarint64$onNavigationEvent;->getDefaultInstanceForType()Lo/WireFormat$FieldType$2;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    check-cast p1, Lo/writeRawVarint64;

    invoke-virtual {p0, p1}, Lo/writeRawVarint64$onNavigationEvent;->internalMergeFrom(Lo/writeRawVarint64;)Lo/writeRawVarint64$onNavigationEvent;

    move-result-object p1

    return-object p1

    .line 349
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public mergeFrom(Lo/writeSessionAppClsId;)Lo/writeRawVarint64$onNavigationEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/writeSessionAppClsId;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    invoke-static {}, Lo/writeSessionEventDevice;->onMessageChannelReady()Lo/writeSessionEventDevice;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lo/writeRawVarint64$onNavigationEvent;->mergeFrom(Lo/writeSessionAppClsId;Lo/writeSessionEventDevice;)Lo/writeRawVarint64$onNavigationEvent;

    move-result-object p1

    return-object p1
.end method

.method public abstract mergeFrom(Lo/writeSessionAppClsId;Lo/writeSessionEventDevice;)Lo/writeRawVarint64$onNavigationEvent;
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
.end method

.method public mergeFrom([B)Lo/writeRawVarint64$onNavigationEvent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 214
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lo/writeRawVarint64$onNavigationEvent;->mergeFrom([BII)Lo/writeRawVarint64$onNavigationEvent;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom([BII)Lo/writeRawVarint64$onNavigationEvent;
    .locals 0
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

    .line 221
    :try_start_0
    invoke-static {p1, p2, p3}, Lo/writeSessionAppClsId;->onMessageChannelReady([BII)Lo/writeSessionAppClsId;

    move-result-object p1

    .line 222
    invoke-virtual {p0, p1}, Lo/writeRawVarint64$onNavigationEvent;->mergeFrom(Lo/writeSessionAppClsId;)Lo/writeRawVarint64$onNavigationEvent;

    const/4 p2, 0x0

    .line 223
    invoke-virtual {p1, p2}, Lo/writeSessionAppClsId;->onNavigationEvent(I)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 228
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "byte array"

    invoke-direct {p0, p3}, Lo/writeRawVarint64$onNavigationEvent;->getReadingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 226
    throw p1
.end method

.method public mergeFrom([BIILo/writeSessionEventDevice;)Lo/writeRawVarint64$onNavigationEvent;
    .locals 0
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

    .line 246
    :try_start_0
    invoke-static {p1, p2, p3}, Lo/writeSessionAppClsId;->onMessageChannelReady([BII)Lo/writeSessionAppClsId;

    move-result-object p1

    .line 247
    invoke-virtual {p0, p1, p4}, Lo/writeRawVarint64$onNavigationEvent;->mergeFrom(Lo/writeSessionAppClsId;Lo/writeSessionEventDevice;)Lo/writeRawVarint64$onNavigationEvent;

    const/4 p2, 0x0

    .line 248
    invoke-virtual {p1, p2}, Lo/writeSessionAppClsId;->onNavigationEvent(I)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 253
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "byte array"

    invoke-direct {p0, p3}, Lo/writeRawVarint64$onNavigationEvent;->getReadingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 251
    throw p1
.end method

.method public mergeFrom([BLo/writeSessionEventDevice;)Lo/writeRawVarint64$onNavigationEvent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lo/writeSessionEventDevice;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 235
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lo/writeRawVarint64$onNavigationEvent;->mergeFrom([BIILo/writeSessionEventDevice;)Lo/writeRawVarint64$onNavigationEvent;

    move-result-object p1

    return-object p1
.end method
