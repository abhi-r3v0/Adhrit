.class final Lo/nop;
.super Ljava/io/InputStream;
.source ""

# interfaces
.implements Lo/pathToKey;
.implements Lo/commaSeparatedList;


# instance fields
.field final ICustomTabsCallback:Lo/areReportsAvailable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "*>;"
        }
    .end annotation
.end field

.field private onMessageChannelReady:Ljava/io/ByteArrayInputStream;

.field onNavigationEvent:Lo/WireFormat$FieldType$2;


# direct methods
.method constructor <init>(Lo/WireFormat$FieldType$2;Lo/areReportsAvailable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/WireFormat$FieldType$2;",
            "Lo/areReportsAvailable<",
            "*>;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 43
    iput-object p1, p0, Lo/nop;->onNavigationEvent:Lo/WireFormat$FieldType$2;

    .line 44
    iput-object p2, p0, Lo/nop;->ICustomTabsCallback:Lo/areReportsAvailable;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/io/OutputStream;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lo/nop;->onNavigationEvent:Lo/WireFormat$FieldType$2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 51
    invoke-interface {v0}, Lo/WireFormat$FieldType$2;->getSerializedSize()I

    move-result v0

    .line 52
    iget-object v2, p0, Lo/nop;->onNavigationEvent:Lo/WireFormat$FieldType$2;

    invoke-interface {v2, p1}, Lo/WireFormat$FieldType$2;->writeTo(Ljava/io/OutputStream;)V

    .line 53
    iput-object v1, p0, Lo/nop;->onNavigationEvent:Lo/WireFormat$FieldType$2;

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lo/nop;->onMessageChannelReady:Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_1

    .line 55
    invoke-static {v0, p1}, Lo/extractFrameCount;->extraCallback(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v2

    long-to-int v0, v2

    .line 56
    iput-object v1, p0, Lo/nop;->onMessageChannelReady:Ljava/io/ByteArrayInputStream;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final available()I
    .locals 1

    .line 107
    iget-object v0, p0, Lo/nop;->onNavigationEvent:Lo/WireFormat$FieldType$2;

    if-eqz v0, :cond_0

    .line 108
    invoke-interface {v0}, Lo/WireFormat$FieldType$2;->getSerializedSize()I

    move-result v0

    return v0

    .line 109
    :cond_0
    iget-object v0, p0, Lo/nop;->onMessageChannelReady:Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final read()I
    .locals 2

    .line 65
    iget-object v0, p0, Lo/nop;->onNavigationEvent:Lo/WireFormat$FieldType$2;

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lo/nop;->onNavigationEvent:Lo/WireFormat$FieldType$2;

    invoke-interface {v1}, Lo/WireFormat$FieldType$2;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lo/nop;->onMessageChannelReady:Ljava/io/ByteArrayInputStream;

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lo/nop;->onNavigationEvent:Lo/WireFormat$FieldType$2;

    .line 69
    :cond_0
    iget-object v0, p0, Lo/nop;->onMessageChannelReady:Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public final read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lo/nop;->onNavigationEvent:Lo/WireFormat$FieldType$2;

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    .line 78
    invoke-interface {v0}, Lo/WireFormat$FieldType$2;->getSerializedSize()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 80
    iput-object v2, p0, Lo/nop;->onNavigationEvent:Lo/WireFormat$FieldType$2;

    .line 81
    iput-object v2, p0, Lo/nop;->onMessageChannelReady:Ljava/io/ByteArrayInputStream;

    return v1

    :cond_0
    if-lt p3, v0, :cond_2

    .line 86
    invoke-static {p1, p2, v0}, Lcom/google/protobuf/CodedOutputStream;->extraCallback([BII)Lcom/google/protobuf/CodedOutputStream;

    move-result-object p1

    .line 87
    iget-object p2, p0, Lo/nop;->onNavigationEvent:Lo/WireFormat$FieldType$2;

    invoke-interface {p2, p1}, Lo/WireFormat$FieldType$2;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 88
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->asBinder()V

    .line 1938
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->asInterface()I

    move-result p1

    if-nez p1, :cond_1

    .line 91
    iput-object v2, p0, Lo/nop;->onNavigationEvent:Lo/WireFormat$FieldType$2;

    .line 92
    iput-object v2, p0, Lo/nop;->onMessageChannelReady:Ljava/io/ByteArrayInputStream;

    return v0

    .line 1939
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Did not write as much data as expected."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_2
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lo/nop;->onNavigationEvent:Lo/WireFormat$FieldType$2;

    invoke-interface {v3}, Lo/WireFormat$FieldType$2;->toByteArray()[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lo/nop;->onMessageChannelReady:Ljava/io/ByteArrayInputStream;

    .line 97
    iput-object v2, p0, Lo/nop;->onNavigationEvent:Lo/WireFormat$FieldType$2;

    .line 99
    :cond_3
    iget-object v0, p0, Lo/nop;->onMessageChannelReady:Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_4

    .line 100
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1

    :cond_4
    return v1
.end method
