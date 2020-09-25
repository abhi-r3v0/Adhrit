.class public interface abstract Lo/WireFormat$FieldType$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/WireFormat$FieldType$4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/WireFormat$FieldType$2$extraCallback;
    }
.end annotation


# virtual methods
.method public abstract getParserForType()Lo/areReportsAvailable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/areReportsAvailable<",
            "+",
            "Lo/WireFormat$FieldType$2;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSerializedSize()I
.end method

.method public abstract newBuilderForType()Lo/WireFormat$FieldType$2$extraCallback;
.end method

.method public abstract toBuilder()Lo/WireFormat$FieldType$2$extraCallback;
.end method

.method public abstract toByteArray()[B
.end method

.method public abstract toByteString()Lo/SessionProtobufHelper;
.end method

.method public abstract writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeTo(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
