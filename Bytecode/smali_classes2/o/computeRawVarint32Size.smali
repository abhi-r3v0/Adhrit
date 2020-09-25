.class public abstract Lo/computeRawVarint32Size;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/areReportsAvailable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType::",
        "Lo/WireFormat$FieldType$2;",
        ">",
        "Ljava/lang/Object;",
        "Lo/areReportsAvailable<",
        "TMessageType;>;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 75
    invoke-static {}, Lo/writeSessionEventDevice;->onMessageChannelReady()Lo/writeSessionEventDevice;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Lo/writeSessionAppClsId;Lo/writeSessionEventDevice;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1086
    invoke-virtual {p0, p1, p2}, Lo/computeRawVarint32Size;->onPostMessage(Lo/writeSessionAppClsId;Lo/writeSessionEventDevice;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/WireFormat$FieldType$2;

    if-eqz p1, :cond_1

    .line 2066
    invoke-interface {p1}, Lo/WireFormat$FieldType$2;->isInitialized()Z

    move-result p2

    if-nez p2, :cond_1

    .line 3052
    instance-of p2, p1, Lo/writeRawVarint64;

    if-eqz p2, :cond_0

    .line 3053
    check-cast p1, Lo/writeRawVarint64;

    invoke-virtual {p1}, Lo/writeRawVarint64;->newUninitializedMessageException()Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p1

    goto :goto_0

    .line 3055
    :cond_0
    new-instance p1, Lcom/google/protobuf/UninitializedMessageException;

    invoke-direct {p1}, Lcom/google/protobuf/UninitializedMessageException;-><init>()V

    .line 3079
    :goto_0
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    .line 2069
    throw p2

    :cond_1
    return-object p1
.end method
