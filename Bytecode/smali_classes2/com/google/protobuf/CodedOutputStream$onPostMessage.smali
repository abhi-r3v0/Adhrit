.class final Lcom/google/protobuf/CodedOutputStream$onPostMessage;
.super Lcom/google/protobuf/CodedOutputStream$extraCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/CodedOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onPostMessage"
.end annotation


# instance fields
.field private final onTransact:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0

    .line 2712
    invoke-direct {p0, p2}, Lcom/google/protobuf/CodedOutputStream$extraCallback;-><init>(I)V

    if-eqz p1, :cond_0

    .line 2716
    iput-object p1, p0, Lcom/google/protobuf/CodedOutputStream$onPostMessage;->onTransact:Ljava/io/OutputStream;

    return-void

    .line 2714
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "out"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private onPostMessage([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2980
    iget v0, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onPostMessage:I

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_0

    .line 2982
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onMessageChannelReady:[B

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2983
    iget p1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    goto :goto_0

    .line 2988
    :cond_0
    iget v0, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onPostMessage:I

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    sub-int/2addr v0, v1

    .line 2989
    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onMessageChannelReady:[B

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    .line 2992
    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onPostMessage:I

    iput v1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    .line 2993
    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->extraCallback:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->extraCallback:I

    .line 26062
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$onPostMessage;->onTransact:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onMessageChannelReady:[B

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 26063
    iput v3, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    .line 2999
    iget v0, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onPostMessage:I

    if-gt p3, v0, :cond_1

    .line 3001
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onMessageChannelReady:[B

    invoke-static {p1, p2, v0, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3002
    iput p3, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    goto :goto_0

    .line 3005
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$onPostMessage;->onTransact:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 3007
    :goto_0
    iget p1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->extraCallback:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->extraCallback:I

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21056
    iget v0, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onPostMessage:I

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 21062
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$onPostMessage;->onTransact:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onMessageChannelReady:[B

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 21063
    iput v3, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    .line 2892
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$onPostMessage;->requestPostMessageChannel(I)V

    return-void
.end method

.method public final ICustomTabsCallback(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7056
    iget v0, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onPostMessage:I

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    sub-int/2addr v0, v1

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 7062
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$onPostMessage;->onTransact:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onMessageChannelReady:[B

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 7063
    iput v3, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    :cond_0
    const/4 v0, 0x5

    .line 7278
    invoke-static {p1, v0}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$extraCallback;->mayLaunchUrl(I)V

    .line 2742
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$onPostMessage;->requestPostMessageChannel(I)V

    return-void
.end method

.method public final ICustomTabsCallback(IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8056
    iget v0, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onPostMessage:I

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    const/16 v2, 0x14

    if-ge v0, v2, :cond_0

    .line 8062
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$onPostMessage;->onTransact:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onMessageChannelReady:[B

    iget v3, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 8063
    iput v1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    .line 8278
    :cond_0
    invoke-static {p1, v1}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$extraCallback;->mayLaunchUrl(I)V

    .line 2749
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/CodedOutputStream$onPostMessage;->asBinder(J)V

    return-void
.end method

.method final ICustomTabsCallback(ILo/WireFormat$FieldType$2;Lo/CreateReportRequest;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 2830
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(II)V

    .line 13860
    move-object p1, p2

    check-cast p1, Lo/writeRawVarint64;

    invoke-virtual {p1, p3}, Lo/writeRawVarint64;->getSerializedSize(Lo/CreateReportRequest;)I

    move-result p1

    .line 14056
    iget v0, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onPostMessage:I

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    sub-int/2addr v0, v1

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 14062
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$onPostMessage;->onTransact:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onMessageChannelReady:[B

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 14063
    iput v3, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    .line 13886
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$onPostMessage;->mayLaunchUrl(I)V

    .line 13861
    iget-object p1, p0, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback:Lo/writeSessionEventAppCustomAttributes;

    invoke-interface {p3, p2, p1}, Lo/CreateReportRequest;->ICustomTabsCallback(Ljava/lang/Object;Lo/sendReport;)V

    return-void
.end method

.method public final ICustomTabsCallback(Lo/SessionProtobufHelper;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2800
    invoke-virtual {p1}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v0

    .line 12056
    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onPostMessage:I

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    sub-int/2addr v1, v2

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 12062
    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$onPostMessage;->onTransact:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onMessageChannelReady:[B

    iget v3, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 12063
    iput v4, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    .line 11886
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$onPostMessage;->mayLaunchUrl(I)V

    .line 2801
    invoke-virtual {p1, p0}, Lo/SessionProtobufHelper;->extraCallback(Lo/encodeZigZag64;)V

    return-void
.end method

.method public final asBinder()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2972
    iget v0, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    if-lez v0, :cond_0

    .line 25062
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$onPostMessage;->onTransact:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onMessageChannelReady:[B

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 25063
    iput v3, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    :cond_0
    return-void
.end method

.method public final extraCallback(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2721
    invoke-static {p1, p2}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p1

    .line 4056
    iget p2, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onPostMessage:I

    iget v0, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    sub-int/2addr p2, v0

    const/4 v0, 0x5

    if-ge p2, v0, :cond_0

    .line 4062
    iget-object p2, p0, Lcom/google/protobuf/CodedOutputStream$onPostMessage;->onTransact:Ljava/io/OutputStream;

    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onMessageChannelReady:[B

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 4063
    iput v2, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    .line 3886
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$onPostMessage;->mayLaunchUrl(I)V

    return-void
.end method

.method public final extraCallback(ILo/WireFormat$FieldType$2;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 2837
    invoke-virtual {p0, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(II)V

    const/4 v2, 0x2

    .line 2838
    invoke-virtual {p0, v2, p1}, Lcom/google/protobuf/CodedOutputStream;->onNavigationEvent(II)V

    .line 14823
    invoke-virtual {p0, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(II)V

    .line 14854
    invoke-interface {p2}, Lo/WireFormat$FieldType$2;->getSerializedSize()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    .line 14855
    invoke-interface {p2, p0}, Lo/WireFormat$FieldType$2;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    const/4 p1, 0x4

    .line 2840
    invoke-virtual {p0, v1, p1}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(II)V

    return-void
.end method

.method public final extraCallback(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22056
    iget v0, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onPostMessage:I

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    sub-int/2addr v0, v1

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 22062
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$onPostMessage;->onTransact:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onMessageChannelReady:[B

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 22063
    iput v3, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    .line 2898
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream$onPostMessage;->asBinder(J)V

    return-void
.end method

.method public final onMessageChannelReady(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20056
    iget v0, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onPostMessage:I

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    sub-int/2addr v0, v1

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 20062
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$onPostMessage;->onTransact:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onMessageChannelReady:[B

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 20063
    iput v3, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    .line 2886
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$onPostMessage;->mayLaunchUrl(I)V

    return-void
.end method

.method public final onMessageChannelReady(ILo/SessionProtobufHelper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 2774
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(II)V

    .line 11800
    invoke-virtual {p2}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    .line 11801
    invoke-virtual {p2, p0}, Lo/SessionProtobufHelper;->extraCallback(Lo/encodeZigZag64;)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/WireFormat$FieldType$2;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2854
    invoke-interface {p1}, Lo/WireFormat$FieldType$2;->getSerializedSize()I

    move-result v0

    .line 16056
    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onPostMessage:I

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    sub-int/2addr v1, v2

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 16062
    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$onPostMessage;->onTransact:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onMessageChannelReady:[B

    iget v3, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 16063
    iput v4, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    .line 15886
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$onPostMessage;->mayLaunchUrl(I)V

    .line 2855
    invoke-interface {p1, p0}, Lo/WireFormat$FieldType$2;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

.method public final onNavigationEvent(B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2866
    iget v0, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onPostMessage:I

    if-ne v0, v1, :cond_0

    .line 17062
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$onPostMessage;->onTransact:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onMessageChannelReady:[B

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 17063
    iput v3, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    .line 17269
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onMessageChannelReady:[B

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    aput-byte p1, v0, v1

    .line 17270
    iget p1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->extraCallback:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->extraCallback:I

    return-void
.end method

.method public final onNavigationEvent(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6056
    iget v0, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onPostMessage:I

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    const/16 v2, 0x14

    if-ge v0, v2, :cond_0

    .line 6062
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$onPostMessage;->onTransact:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onMessageChannelReady:[B

    iget v3, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 6063
    iput v1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    .line 6278
    :cond_0
    invoke-static {p1, v1}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$extraCallback;->mayLaunchUrl(I)V

    .line 2735
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$onPostMessage;->mayLaunchUrl(I)V

    return-void
.end method

.method public final onNavigationEvent(IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9056
    iget v0, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onPostMessage:I

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    sub-int/2addr v0, v1

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 9062
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$onPostMessage;->onTransact:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onMessageChannelReady:[B

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 9063
    iput v3, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    :cond_0
    const/4 v0, 0x1

    .line 9278
    invoke-static {p1, v0}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$extraCallback;->mayLaunchUrl(I)V

    .line 2756
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/CodedOutputStream$onPostMessage;->onRelationshipValidationResult(J)V

    return-void
.end method

.method public final onNavigationEvent(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 2768
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(II)V

    .line 2769
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->onPostMessage(Ljava/lang/String;)V

    return-void
.end method

.method public final onNavigationEvent(ILo/SessionProtobufHelper;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 2846
    invoke-virtual {p0, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(II)V

    const/4 v2, 0x2

    .line 2847
    invoke-virtual {p0, v2, p1}, Lcom/google/protobuf/CodedOutputStream;->onNavigationEvent(II)V

    .line 15774
    invoke-virtual {p0, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(II)V

    .line 15800
    invoke-virtual {p2}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    .line 15801
    invoke-virtual {p2, p0}, Lo/SessionProtobufHelper;->extraCallback(Lo/encodeZigZag64;)V

    const/4 p1, 0x4

    .line 2849
    invoke-virtual {p0, v1, p1}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(II)V

    return-void
.end method

.method public final onNavigationEvent(IZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10056
    iget v0, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onPostMessage:I

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    const/16 v2, 0xb

    if-ge v0, v2, :cond_0

    .line 10062
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$onPostMessage;->onTransact:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onMessageChannelReady:[B

    iget v3, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 10063
    iput v1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    .line 10278
    :cond_0
    invoke-static {p1, v1}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$extraCallback;->mayLaunchUrl(I)V

    int-to-byte p1, p2

    .line 11269
    iget-object p2, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onMessageChannelReady:[B

    iget v0, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    aput-byte p1, p2, v0

    .line 11270
    iget p1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->extraCallback:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->extraCallback:I

    return-void
.end method

.method public final onNavigationEvent([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3013
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/CodedOutputStream$onPostMessage;->onPostMessage([BII)V

    return-void
.end method

.method public final onPostMessage(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    .line 18056
    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onPostMessage:I

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    sub-int/2addr v1, v2

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 18062
    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$onPostMessage;->onTransact:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onMessageChannelReady:[B

    iget v3, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 18063
    iput v0, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    .line 17886
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$onPostMessage;->mayLaunchUrl(I)V

    return-void

    :cond_1
    int-to-long v1, p1

    .line 19056
    iget p1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onPostMessage:I

    iget v3, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    sub-int/2addr p1, v3

    const/16 v3, 0xa

    if-ge p1, v3, :cond_2

    .line 19062
    iget-object p1, p0, Lcom/google/protobuf/CodedOutputStream$onPostMessage;->onTransact:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onMessageChannelReady:[B

    iget v4, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    invoke-virtual {p1, v3, v0, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 19063
    iput v0, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    .line 18898
    :cond_2
    invoke-virtual {p0, v1, v2}, Lcom/google/protobuf/CodedOutputStream$onPostMessage;->asBinder(J)V

    return-void
.end method

.method public final onPostMessage(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5056
    iget v0, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onPostMessage:I

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    const/16 v2, 0x14

    if-ge v0, v2, :cond_0

    .line 5062
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$onPostMessage;->onTransact:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onMessageChannelReady:[B

    iget v3, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 5063
    iput v1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    .line 5278
    :cond_0
    invoke-static {p1, v1}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$extraCallback;->mayLaunchUrl(I)V

    if-ltz p2, :cond_1

    .line 5287
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$extraCallback;->mayLaunchUrl(I)V

    return-void

    :cond_1
    int-to-long p1, p2

    .line 5290
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream$extraCallback;->asBinder(J)V

    return-void
.end method

.method public final onPostMessage(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23056
    iget v0, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onPostMessage:I

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    sub-int/2addr v0, v1

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 23062
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$onPostMessage;->onTransact:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onMessageChannelReady:[B

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 23063
    iput v3, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    .line 2904
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream$onPostMessage;->onRelationshipValidationResult(J)V

    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2912
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    .line 2913
    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream$onPostMessage;->warmup(I)I

    move-result v1

    add-int v2, v1, v0

    .line 2917
    iget v3, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onPostMessage:I

    const/4 v4, 0x0

    if-le v2, v3, :cond_0

    .line 2922
    new-array v1, v0, [B

    .line 2923
    invoke-static {p1, v1, v4, v0}, Lo/CompositeCreateReportSpiCall$1;->onNavigationEvent(Ljava/lang/CharSequence;[BII)I

    move-result v0

    .line 2924
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    .line 24013
    invoke-direct {p0, v1, v4, v0}, Lcom/google/protobuf/CodedOutputStream$onPostMessage;->onPostMessage([BII)V

    return-void

    .line 2930
    :cond_0
    iget v0, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onPostMessage:I

    iget v3, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    sub-int/2addr v0, v3

    if-le v2, v0, :cond_1

    .line 24062
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$onPostMessage;->onTransact:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onMessageChannelReady:[B

    iget v3, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    invoke-virtual {v0, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 24063
    iput v4, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    .line 2937
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream$onPostMessage;->warmup(I)I

    move-result v0

    .line 2938
    iget v2, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I
    :try_end_0
    .catch Lo/CompositeCreateReportSpiCall$1$extraCallback; {:try_start_0 .. :try_end_0} :catch_2

    if-ne v0, v1, :cond_2

    add-int v1, v2, v0

    .line 2942
    :try_start_1
    iput v1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    .line 2943
    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onMessageChannelReady:[B

    iget v3, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    iget v4, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onPostMessage:I

    iget v5, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    sub-int/2addr v4, v5

    invoke-static {p1, v1, v3, v4}, Lo/CompositeCreateReportSpiCall$1;->onNavigationEvent(Ljava/lang/CharSequence;[BII)I

    move-result v1

    .line 2946
    iput v2, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    sub-int v3, v1, v2

    sub-int/2addr v3, v0

    .line 2948
    invoke-virtual {p0, v3}, Lcom/google/protobuf/CodedOutputStream$onPostMessage;->mayLaunchUrl(I)V

    .line 2949
    iput v1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    goto :goto_0

    .line 2951
    :cond_2
    invoke-static {p1}, Lo/CompositeCreateReportSpiCall$1;->onPostMessage(Ljava/lang/CharSequence;)I

    move-result v3

    .line 2952
    invoke-virtual {p0, v3}, Lcom/google/protobuf/CodedOutputStream$onPostMessage;->mayLaunchUrl(I)V

    .line 2953
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onMessageChannelReady:[B

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    invoke-static {p1, v0, v1, v3}, Lo/CompositeCreateReportSpiCall$1;->onNavigationEvent(Ljava/lang/CharSequence;[BII)I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    .line 2955
    :goto_0
    iget v0, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->extraCallback:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->extraCallback:I
    :try_end_1
    .catch Lo/CompositeCreateReportSpiCall$1$extraCallback; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2963
    :try_start_2
    new-instance v1, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v1, v0}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 2959
    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->extraCallback:I

    iget v3, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    sub-int/2addr v3, v2

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->extraCallback:I

    .line 2960
    iput v2, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    .line 2961
    throw v0
    :try_end_2
    .catch Lo/CompositeCreateReportSpiCall$1$extraCallback; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v0

    .line 2966
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$onPostMessage;->onNavigationEvent(Ljava/lang/String;Lo/CompositeCreateReportSpiCall$1$extraCallback;)V

    return-void
.end method

.method public final onPostMessage([BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13056
    iget v0, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onPostMessage:I

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 13062
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$onPostMessage;->onTransact:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onMessageChannelReady:[B

    iget v3, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 13063
    iput v1, p0, Lcom/google/protobuf/CodedOutputStream$extraCallback;->onNavigationEvent:I

    .line 12886
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$onPostMessage;->mayLaunchUrl(I)V

    .line 2807
    invoke-direct {p0, p1, v1, p2}, Lcom/google/protobuf/CodedOutputStream$onPostMessage;->onPostMessage([BII)V

    return-void
.end method
