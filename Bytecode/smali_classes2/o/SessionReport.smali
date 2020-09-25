.class abstract Lo/SessionReport;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TB;"
        }
    .end annotation
.end method

.method abstract ICustomTabsCallback(Ljava/lang/Object;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;II)V"
        }
    .end annotation
.end method

.method abstract ICustomTabsCallback(Ljava/lang/Object;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;ITT;)V"
        }
    .end annotation
.end method

.method abstract ICustomTabsCallback(Ljava/lang/Object;Lo/sendReport;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo/sendReport;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TT;"
        }
    .end annotation
.end method

.method abstract extraCallback(Ljava/lang/Object;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;IJ)V"
        }
    .end annotation
.end method

.method abstract extraCallback(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation
.end method

.method abstract onMessageChannelReady()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method abstract onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)TT;"
        }
    .end annotation
.end method

.method abstract onMessageChannelReady(Ljava/lang/Object;)V
.end method

.method abstract onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method abstract onNavigationEvent(Ljava/lang/Object;ILo/SessionProtobufHelper;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;I",
            "Lo/SessionProtobufHelper;",
            ")V"
        }
    .end annotation
.end method

.method abstract onPostMessage(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method abstract onPostMessage(Ljava/lang/Object;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;IJ)V"
        }
    .end annotation
.end method

.method abstract onPostMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TB;)V"
        }
    .end annotation
.end method

.method abstract onPostMessage(Ljava/lang/Object;Lo/sendReport;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo/sendReport;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final onPostMessage(Ljava/lang/Object;Lo/attemptUploadWithRetry;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;",
            "Lo/attemptUploadWithRetry;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-interface {p2}, Lo/attemptUploadWithRetry;->onMessageChannelReady()I

    move-result v0

    .line 83
    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->onPostMessage(I)I

    move-result v1

    .line 84
    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    if-eq v0, v2, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    const/4 v3, 0x3

    const/4 v4, 0x4

    if-eq v0, v3, :cond_2

    if-eq v0, v4, :cond_1

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    .line 89
    invoke-interface {p2}, Lo/attemptUploadWithRetry;->onTransact()I

    move-result p2

    invoke-virtual {p0, p1, v1, p2}, Lo/SessionReport;->ICustomTabsCallback(Ljava/lang/Object;II)V

    return v2

    .line 109
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 98
    :cond_2
    invoke-virtual {p0}, Lo/SessionReport;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v0

    .line 99
    invoke-static {v1, v4}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result v3

    .line 1115
    :cond_3
    invoke-interface {p2}, Lo/attemptUploadWithRetry;->onNavigationEvent()I

    move-result v4

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_4

    .line 1116
    invoke-virtual {p0, v0, p2}, Lo/SessionReport;->onPostMessage(Ljava/lang/Object;Lo/attemptUploadWithRetry;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 101
    :cond_4
    invoke-interface {p2}, Lo/attemptUploadWithRetry;->onMessageChannelReady()I

    move-result p2

    if-ne v3, p2, :cond_5

    .line 104
    invoke-virtual {p0, v0}, Lo/SessionReport;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Lo/SessionReport;->ICustomTabsCallback(Ljava/lang/Object;ILjava/lang/Object;)V

    return v2

    .line 102
    :cond_5
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onPostMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 95
    :cond_6
    invoke-interface {p2}, Lo/attemptUploadWithRetry;->getInterfaceDescriptor()Lo/SessionProtobufHelper;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Lo/SessionReport;->onNavigationEvent(Ljava/lang/Object;ILo/SessionProtobufHelper;)V

    return v2

    .line 92
    :cond_7
    invoke-interface {p2}, Lo/attemptUploadWithRetry;->asBinder()J

    move-result-wide v3

    invoke-virtual {p0, p1, v1, v3, v4}, Lo/SessionReport;->onPostMessage(Ljava/lang/Object;IJ)V

    return v2

    .line 86
    :cond_8
    invoke-interface {p2}, Lo/attemptUploadWithRetry;->ICustomTabsCallback$Stub()J

    move-result-wide v3

    invoke-virtual {p0, p1, v1, v3, v4}, Lo/SessionReport;->extraCallback(Ljava/lang/Object;IJ)V

    return v2
.end method

.method abstract onRelationshipValidationResult(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method
