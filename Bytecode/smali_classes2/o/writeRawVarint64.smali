.class public abstract Lo/writeRawVarint64;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/WireFormat$FieldType$2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/writeRawVarint64$onNavigationEvent;
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
        "Lo/WireFormat$FieldType$2;"
    }
.end annotation


# instance fields
.field protected memoizedHashCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lo/writeRawVarint64;->memoizedHashCode:I

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

    .line 142
    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lo/writeRawVarint64$onNavigationEvent;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static addAll(Ljava/lang/Iterable;Ljava/util/List;)V
    .locals 0
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

    .line 146
    invoke-static {p0, p1}, Lo/writeRawVarint64$onNavigationEvent;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method protected static checkByteStringIsUtf8(Lo/SessionProtobufHelper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Lo/SessionProtobufHelper;->ICustomTabsCallback()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 135
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Byte string is not UTF-8."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getSerializingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Serializing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " threw an IOException (should never happen)."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method getMemoizedSerializedSize()I
    .locals 1

    .line 102
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSerializedSize(Lo/CreateReportRequest;)I
    .locals 2

    .line 111
    invoke-virtual {p0}, Lo/writeRawVarint64;->getMemoizedSerializedSize()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 113
    invoke-interface {p1, p0}, Lo/CreateReportRequest;->onMessageChannelReady(Ljava/lang/Object;)I

    move-result v0

    .line 114
    invoke-virtual {p0, v0}, Lo/writeRawVarint64;->setMemoizedSerializedSize(I)V

    :cond_0
    return v0
.end method

.method newUninitializedMessageException()Lcom/google/protobuf/UninitializedMessageException;
    .locals 1

    .line 121
    new-instance v0, Lcom/google/protobuf/UninitializedMessageException;

    invoke-direct {v0}, Lcom/google/protobuf/UninitializedMessageException;-><init>()V

    return-object v0
.end method

.method setMemoizedSerializedSize(I)V
    .locals 0

    .line 106
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public toByteArray()[B
    .locals 3

    .line 69
    :try_start_0
    invoke-virtual {p0}, Lo/writeRawVarint64;->getSerializedSize()I

    move-result v0

    new-array v0, v0, [B

    .line 70
    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->extraCallback([B)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v1

    .line 71
    invoke-virtual {p0, v1}, Lo/writeRawVarint64;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 4938
    invoke-virtual {v1}, Lcom/google/protobuf/CodedOutputStream;->asInterface()I

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 4939
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 75
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "byte array"

    invoke-direct {p0, v2}, Lo/writeRawVarint64;->getSerializingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toByteString()Lo/SessionProtobufHelper;
    .locals 3

    .line 58
    :try_start_0
    invoke-virtual {p0}, Lo/writeRawVarint64;->getSerializedSize()I

    move-result v0

    invoke-static {v0}, Lo/SessionProtobufHelper;->extraCallback(I)Lo/SessionProtobufHelper$ICustomTabsCallback$Stub;

    move-result-object v0

    .line 2191
    iget-object v1, v0, Lo/SessionProtobufHelper$ICustomTabsCallback$Stub;->onPostMessage:Lcom/google/protobuf/CodedOutputStream;

    .line 59
    invoke-virtual {p0, v1}, Lo/writeRawVarint64;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 3182
    iget-object v1, v0, Lo/SessionProtobufHelper$ICustomTabsCallback$Stub;->onPostMessage:Lcom/google/protobuf/CodedOutputStream;

    .line 3938
    invoke-virtual {v1}, Lcom/google/protobuf/CodedOutputStream;->asInterface()I

    move-result v1

    if-nez v1, :cond_0

    .line 3187
    new-instance v1, Lo/SessionProtobufHelper$asInterface;

    iget-object v0, v0, Lo/SessionProtobufHelper$ICustomTabsCallback$Stub;->ICustomTabsCallback:[B

    invoke-direct {v1, v0}, Lo/SessionProtobufHelper$asInterface;-><init>([B)V

    return-object v1

    .line 3939
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 62
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ByteString"

    invoke-direct {p0, v2}, Lo/writeRawVarint64;->getSerializingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeDelimitedTo(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    invoke-virtual {p0}, Lo/writeRawVarint64;->getSerializedSize()I

    move-result v0

    .line 92
    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->updateVisuals(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 91
    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->onNavigationEvent(I)I

    move-result v1

    .line 93
    invoke-static {p1, v1}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(Ljava/io/OutputStream;I)Lcom/google/protobuf/CodedOutputStream;

    move-result-object p1

    .line 5093
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    .line 95
    invoke-virtual {p0, p1}, Lo/writeRawVarint64;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 96
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->asBinder()V

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-virtual {p0}, Lo/writeRawVarint64;->getSerializedSize()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->onNavigationEvent(I)I

    move-result v0

    .line 82
    invoke-static {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(Ljava/io/OutputStream;I)Lcom/google/protobuf/CodedOutputStream;

    move-result-object p1

    .line 83
    invoke-virtual {p0, p1}, Lo/writeRawVarint64;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 84
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->asBinder()V

    return-void
.end method
