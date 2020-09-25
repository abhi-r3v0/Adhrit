.class final Lo/applyHeadersTo;
.super Lo/SessionReport;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/SessionReport<",
        "Lo/getFileName;",
        "Lo/getFileName;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lo/SessionReport;-><init>()V

    return-void
.end method


# virtual methods
.method final synthetic ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 7089
    check-cast p1, Lo/getEventAppExecutionSize;

    iget-object v0, p1, Lo/getEventAppExecutionSize;->unknownFields:Lo/getFileName;

    .line 6097
    invoke-static {}, Lo/getFileName;->ICustomTabsCallback()Lo/getFileName;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 6098
    invoke-static {}, Lo/getFileName;->onMessageChannelReady()Lo/getFileName;

    move-result-object v0

    .line 8084
    iput-object v0, p1, Lo/getEventAppExecutionSize;->unknownFields:Lo/getFileName;

    :cond_0
    return-object v0
.end method

.method final synthetic ICustomTabsCallback(Ljava/lang/Object;II)V
    .locals 1

    .line 35
    check-cast p1, Lo/getFileName;

    const/4 v0, 0x5

    .line 14058
    invoke-static {p2, v0}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lo/getFileName;->onPostMessage(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic ICustomTabsCallback(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 1

    .line 35
    check-cast p1, Lo/getFileName;

    check-cast p3, Lo/getFileName;

    const/4 v0, 0x3

    .line 11073
    invoke-static {p2, v0}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p2

    invoke-virtual {p1, p2, p3}, Lo/getFileName;->onPostMessage(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic ICustomTabsCallback(Ljava/lang/Object;Lo/sendReport;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    check-cast p1, Lo/getFileName;

    .line 3173
    invoke-interface {p2}, Lo/sendReport;->onPostMessage()Lo/sendReport$ICustomTabsCallback;

    move-result-object v0

    sget-object v1, Lo/sendReport$ICustomTabsCallback;->onPostMessage:Lo/sendReport$ICustomTabsCallback;

    if-ne v0, v1, :cond_1

    .line 3175
    iget v0, p1, Lo/getFileName;->onPostMessage:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 3176
    iget-object v1, p1, Lo/getFileName;->onMessageChannelReady:[I

    aget v1, v1, v0

    invoke-static {v1}, Lo/DefaultCreateReportSpiCall;->onPostMessage(I)I

    move-result v1

    .line 3177
    iget-object v2, p1, Lo/getFileName;->extraCallback:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p2, v1, v2}, Lo/sendReport;->extraCallback(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 3181
    :goto_1
    iget v1, p1, Lo/getFileName;->onPostMessage:I

    if-ge v0, v1, :cond_2

    .line 3182
    iget-object v1, p1, Lo/getFileName;->onMessageChannelReady:[I

    aget v1, v1, v0

    invoke-static {v1}, Lo/DefaultCreateReportSpiCall;->onPostMessage(I)I

    move-result v1

    .line 3183
    iget-object v2, p1, Lo/getFileName;->extraCallback:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p2, v1, v2}, Lo/sendReport;->extraCallback(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method final bridge synthetic extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 35
    check-cast p1, Lo/getFileName;

    const/4 v0, 0x0

    .line 10116
    iput-boolean v0, p1, Lo/getFileName;->ICustomTabsCallback:Z

    return-object p1
.end method

.method final synthetic extraCallback(Ljava/lang/Object;IJ)V
    .locals 1

    .line 35
    check-cast p1, Lo/getFileName;

    const/4 v0, 0x0

    .line 15053
    invoke-static {p2, v0}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lo/getFileName;->onPostMessage(ILjava/lang/Object;)V

    return-void
.end method

.method final bridge synthetic extraCallback(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p2, Lo/getFileName;

    .line 9084
    check-cast p1, Lo/getEventAppExecutionSize;

    iput-object p2, p1, Lo/getEventAppExecutionSize;->unknownFields:Lo/getFileName;

    return-void
.end method

.method final bridge synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 1

    .line 11048
    invoke-static {}, Lo/getFileName;->onMessageChannelReady()Lo/getFileName;

    move-result-object v0

    return-object v0
.end method

.method final synthetic onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 35
    check-cast p1, Lo/getFileName;

    check-cast p2, Lo/getFileName;

    .line 2126
    invoke-static {}, Lo/getFileName;->ICustomTabsCallback()Lo/getFileName;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 2128
    :cond_0
    invoke-static {p1, p2}, Lo/getFileName;->onMessageChannelReady(Lo/getFileName;Lo/getFileName;)Lo/getFileName;

    move-result-object p1

    return-object p1
.end method

.method final onMessageChannelReady(Ljava/lang/Object;)V
    .locals 1

    .line 1089
    check-cast p1, Lo/getEventAppExecutionSize;

    iget-object p1, p1, Lo/getEventAppExecutionSize;->unknownFields:Lo/getFileName;

    const/4 v0, 0x0

    .line 1116
    iput-boolean v0, p1, Lo/getFileName;->ICustomTabsCallback:Z

    return-void
.end method

.method final bridge synthetic onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 8089
    check-cast p1, Lo/getEventAppExecutionSize;

    iget-object p1, p1, Lo/getEventAppExecutionSize;->unknownFields:Lo/getFileName;

    return-object p1
.end method

.method final synthetic onNavigationEvent(Ljava/lang/Object;ILo/SessionProtobufHelper;)V
    .locals 1

    .line 35
    check-cast p1, Lo/getFileName;

    const/4 v0, 0x2

    .line 12068
    invoke-static {p2, v0}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p2

    invoke-virtual {p1, p2, p3}, Lo/getFileName;->onPostMessage(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic onPostMessage(Ljava/lang/Object;)I
    .locals 4

    .line 35
    check-cast p1, Lo/getFileName;

    .line 1243
    iget v0, p1, Lo/getFileName;->onNavigationEvent:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1249
    :goto_0
    iget v2, p1, Lo/getFileName;->onPostMessage:I

    if-ge v0, v2, :cond_1

    .line 1250
    iget-object v2, p1, Lo/getFileName;->onMessageChannelReady:[I

    aget v2, v2, v0

    .line 1251
    invoke-static {v2}, Lo/DefaultCreateReportSpiCall;->onPostMessage(I)I

    move-result v2

    .line 1252
    iget-object v3, p1, Lo/getFileName;->extraCallback:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lo/SessionProtobufHelper;

    .line 1253
    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(ILo/SessionProtobufHelper;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1256
    :cond_1
    iput v1, p1, Lo/getFileName;->onNavigationEvent:I

    return v1
.end method

.method final synthetic onPostMessage(Ljava/lang/Object;IJ)V
    .locals 1

    .line 35
    check-cast p1, Lo/getFileName;

    const/4 v0, 0x1

    .line 13063
    invoke-static {p2, v0}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lo/getFileName;->onPostMessage(ILjava/lang/Object;)V

    return-void
.end method

.method final bridge synthetic onPostMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p2, Lo/getFileName;

    .line 6084
    check-cast p1, Lo/getEventAppExecutionSize;

    iput-object p2, p1, Lo/getEventAppExecutionSize;->unknownFields:Lo/getFileName;

    return-void
.end method

.method final synthetic onPostMessage(Ljava/lang/Object;Lo/sendReport;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    check-cast p1, Lo/getFileName;

    .line 4116
    invoke-virtual {p1, p2}, Lo/getFileName;->ICustomTabsCallback(Lo/sendReport;)V

    return-void
.end method

.method final synthetic onRelationshipValidationResult(Ljava/lang/Object;)I
    .locals 0

    .line 35
    check-cast p1, Lo/getFileName;

    .line 1133
    invoke-virtual {p1}, Lo/getFileName;->onPostMessage()I

    move-result p1

    return p1
.end method
