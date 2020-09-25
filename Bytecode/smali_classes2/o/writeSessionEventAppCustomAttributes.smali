.class public final Lo/writeSessionEventAppCustomAttributes;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/sendReport;


# instance fields
.field private final extraCallback:Lcom/google/protobuf/CodedOutputStream;


# direct methods
.method constructor <init>(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "output"

    .line 54
    invoke-static {p1, v0}, Lo/getEventLogSize;->extraCallback(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/CodedOutputStream;

    iput-object p1, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    .line 55
    iput-object p0, p1, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback:Lo/writeSessionEventAppCustomAttributes;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(II)V

    return-void
.end method

.method public final ICustomTabsCallback(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    .line 1284
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/CodedOutputStream;->onNavigationEvent(IJ)V

    return-void
.end method

.method public final ICustomTabsCallback(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback(II)V

    return-void
.end method

.method public final ICustomTabsCallback(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/CodedOutputStream;->onNavigationEvent(IJ)V

    return-void
.end method

.method public final ICustomTabsCallback(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lo/SessionProtobufHelper;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 425
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 426
    iget-object v1, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/SessionProtobufHelper;

    invoke-virtual {v1, p1, v2}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(ILo/SessionProtobufHelper;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ICustomTabsCallback(ILjava/util/List;Lo/CreateReportRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lo/CreateReportRequest;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 559
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 560
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 16154
    iget-object v2, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    check-cast v1, Lo/WireFormat$FieldType$2;

    invoke-virtual {v2, p1, v1, p3}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback(ILo/WireFormat$FieldType$2;Lo/CreateReportRequest;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ICustomTabsCallback(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 190
    iget-object p3, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 194
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 195
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback$Stub$Proxy(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 197
    :cond_0
    iget-object p1, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    .line 200
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 201
    iget-object p1, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/protobuf/CodedOutputStream;->onPostMessage(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 204
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 205
    iget-object p3, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->onPostMessage(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final ICustomTabsCallback(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->onNavigationEvent(IZ)V

    return-void
.end method

.method public final ICustomTabsCallback$Stub(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 381
    iget-object p3, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 385
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 386
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    invoke-static {}, Lcom/google/protobuf/CodedOutputStream;->onRelationshipValidationResult()I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 388
    :cond_0
    iget-object p1, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    .line 391
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 392
    iget-object p1, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    int-to-byte p3, p3

    .line 8447
    invoke-virtual {p1, p3}, Lcom/google/protobuf/CodedOutputStream;->onNavigationEvent(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 395
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 396
    iget-object p3, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->onNavigationEvent(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final ICustomTabsCallback$Stub$Proxy(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 458
    iget-object p3, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 462
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 463
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    invoke-static {}, Lcom/google/protobuf/CodedOutputStream;->extraCallback()I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 465
    :cond_0
    iget-object p1, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    .line 468
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 469
    iget-object p1, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    .line 10409
    invoke-virtual {p1, p3}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 472
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 473
    iget-object p3, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 11251
    invoke-virtual {p3, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final asBinder(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 333
    iget-object p3, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 337
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 338
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    invoke-static {}, Lcom/google/protobuf/CodedOutputStream;->onTransact()I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 340
    :cond_0
    iget-object p1, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    .line 343
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 344
    iget-object p1, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    .line 6442
    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->onPostMessage(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 347
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 348
    iget-object p3, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    .line 7284
    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->onNavigationEvent(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final asInterface(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 434
    iget-object p3, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 438
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 439
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 441
    :cond_0
    iget-object p1, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    .line 444
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 445
    iget-object p1, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 448
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 449
    iget-object p3, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->onNavigationEvent(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final extraCallback(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->onNavigationEvent(II)V

    return-void
.end method

.method public final extraCallback(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    .line 1256
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback(IJ)V

    return-void
.end method

.method public final extraCallback(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    instance-of v0, p2, Lo/SessionProtobufHelper;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    check-cast p2, Lo/SessionProtobufHelper;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->onNavigationEvent(ILo/SessionProtobufHelper;)V

    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    check-cast p2, Lo/WireFormat$FieldType$2;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(ILo/WireFormat$FieldType$2;)V

    return-void
.end method

.method public final extraCallback(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 214
    iget-object p3, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 218
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 219
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    invoke-static {}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady()I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 221
    :cond_0
    iget-object p1, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    .line 224
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 225
    iget-object p1, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 228
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 229
    iget-object p3, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final extraCallback(ILo/SessionProtobufHelper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(ILo/SessionProtobufHelper;)V

    return-void
.end method

.method public final getInterfaceDescriptor(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 482
    iget-object p3, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 486
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 487
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    invoke-static {}, Lcom/google/protobuf/CodedOutputStream;->onNavigationEvent()I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 489
    :cond_0
    iget-object p1, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    .line 492
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 493
    iget-object p1, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 11432
    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->onPostMessage(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 496
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 497
    iget-object p3, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 12274
    invoke-virtual {p3, p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->onNavigationEvent(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final newSession(ILjava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x3f

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_2

    .line 530
    iget-object p3, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    const/4 v3, 0x2

    invoke-virtual {p3, p1, v3}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 534
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_0

    .line 535
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(J)I

    move-result v3

    add-int/2addr p3, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 537
    :cond_0
    iget-object p1, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    .line 540
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_1

    .line 541
    iget-object p1, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    shl-long v5, v3, v2

    shr-long/2addr v3, v0

    xor-long/2addr v3, v5

    .line 14423
    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 544
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v1, p3, :cond_3

    .line 545
    iget-object p3, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    shl-long v5, v3, v2

    shr-long/2addr v3, v0

    xor-long/2addr v3, v5

    .line 15265
    invoke-virtual {p3, p1, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback(IJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final onMessageChannelReady(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(II)V

    return-void
.end method

.method public final onMessageChannelReady(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    .line 1296
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->onPostMessage(II)V

    return-void
.end method

.method public final onMessageChannelReady(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback(IJ)V

    return-void
.end method

.method public final onMessageChannelReady(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 403
    instance-of v0, p2, Lo/stringToByteString;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 404
    move-object v0, p2

    check-cast v0, Lo/stringToByteString;

    .line 405
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 406
    invoke-interface {v0, v1}, Lo/stringToByteString;->extraCallback(I)Ljava/lang/Object;

    move-result-object v2

    .line 9416
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 9417
    iget-object v3, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, p1, v2}, Lcom/google/protobuf/CodedOutputStream;->onNavigationEvent(ILjava/lang/String;)V

    goto :goto_1

    .line 9419
    :cond_0
    iget-object v3, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    check-cast v2, Lo/SessionProtobufHelper;

    invoke-virtual {v3, p1, v2}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(ILo/SessionProtobufHelper;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 409
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 410
    iget-object v0, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lcom/google/protobuf/CodedOutputStream;->onNavigationEvent(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final onMessageChannelReady(ILjava/util/List;Lo/CreateReportRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lo/CreateReportRequest;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 573
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 574
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lo/writeSessionEventAppCustomAttributes;->onNavigationEvent(ILjava/lang/Object;Lo/CreateReportRequest;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 285
    iget-object p3, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 289
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 290
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    invoke-static {}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback()I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 292
    :cond_0
    iget-object p1, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    .line 295
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 296
    iget-object p1, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->onPostMessage(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 299
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 300
    iget-object p3, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->onNavigationEvent(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final onNavigationEvent(IF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    .line 1279
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback(II)V

    return-void
.end method

.method public final onNavigationEvent(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->onPostMessage(II)V

    return-void
.end method

.method public final onNavigationEvent(IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    const/4 v1, 0x1

    shl-long v1, p2, v1

    const/16 v3, 0x3f

    shr-long/2addr p2, v3

    xor-long/2addr p2, v1

    .line 3265
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback(IJ)V

    return-void
.end method

.method public final onNavigationEvent(ILjava/lang/Object;Lo/CreateReportRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    check-cast p2, Lo/WireFormat$FieldType$2;

    const/4 v1, 0x3

    .line 4026
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(II)V

    .line 4048
    iget-object v1, v0, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback:Lo/writeSessionEventAppCustomAttributes;

    invoke-interface {p3, p2, v1}, Lo/CreateReportRequest;->ICustomTabsCallback(Ljava/lang/Object;Lo/sendReport;)V

    const/4 p2, 0x4

    .line 4028
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(II)V

    return-void
.end method

.method public final onNavigationEvent(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 237
    iget-object p3, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 241
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 242
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->onNavigationEvent(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 244
    :cond_0
    iget-object p1, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    .line 247
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 248
    iget-object p1, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 4414
    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 251
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 252
    iget-object p3, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 5256
    invoke-virtual {p3, p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final onNavigationEvent(ILo/getTagWireType$extraCallback;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I",
            "Lo/getTagWireType$extraCallback<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 585
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 586
    iget-object v1, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(II)V

    .line 587
    iget-object v1, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    .line 588
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 22114
    iget-object v5, p2, Lo/getTagWireType$extraCallback;->onPostMessage:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    const/4 v6, 0x1

    invoke-static {v5, v6, v3}, Lo/getBinaryImageSize;->ICustomTabsCallback(Lo/DefaultCreateReportSpiCall$onMessageChannelReady;ILjava/lang/Object;)I

    move-result v3

    iget-object v5, p2, Lo/getTagWireType$extraCallback;->extraCallback:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    .line 22115
    invoke-static {v5, v2, v4}, Lo/getBinaryImageSize;->ICustomTabsCallback(Lo/DefaultCreateReportSpiCall$onMessageChannelReady;ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    .line 587
    invoke-virtual {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    .line 589
    iget-object v1, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 23109
    iget-object v4, p2, Lo/getTagWireType$extraCallback;->onPostMessage:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    invoke-static {v1, v4, v6, v3}, Lo/getBinaryImageSize;->extraCallback(Lcom/google/protobuf/CodedOutputStream;Lo/DefaultCreateReportSpiCall$onMessageChannelReady;ILjava/lang/Object;)V

    .line 23110
    iget-object v3, p2, Lo/getTagWireType$extraCallback;->extraCallback:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    invoke-static {v1, v3, v2, v0}, Lo/getBinaryImageSize;->extraCallback(Lcom/google/protobuf/CodedOutputStream;Lo/DefaultCreateReportSpiCall$onMessageChannelReady;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPostMessage()Lo/sendReport$ICustomTabsCallback;
    .locals 1

    .line 60
    sget-object v0, Lo/sendReport$ICustomTabsCallback;->onNavigationEvent:Lo/sendReport$ICustomTabsCallback;

    return-object v0
.end method

.method public final onPostMessage(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    .line 1251
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback(II)V

    return-void
.end method

.method public final onPostMessage(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    .line 1274
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/CodedOutputStream;->onNavigationEvent(IJ)V

    return-void
.end method

.method public final onPostMessage(ILjava/lang/Object;Lo/CreateReportRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    check-cast p2, Lo/WireFormat$FieldType$2;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback(ILo/WireFormat$FieldType$2;Lo/CreateReportRequest;)V

    return-void
.end method

.method public final onPostMessage(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->onNavigationEvent(ILjava/lang/String;)V

    return-void
.end method

.method public final onPostMessage(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 261
    iget-object p3, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 265
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 266
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 268
    :cond_0
    iget-object p1, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    .line 271
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 272
    iget-object p1, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 275
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 276
    iget-object p3, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final onRelationshipValidationResult(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 357
    iget-object p3, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 361
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 362
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->extraCommand(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 364
    :cond_0
    iget-object p1, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    .line 367
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 368
    iget-object p1, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    .line 7455
    invoke-virtual {p1, p3}, Lcom/google/protobuf/CodedOutputStream;->onPostMessage(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 371
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 372
    iget-object p3, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 8296
    invoke-virtual {p3, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->onPostMessage(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final onTransact(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    shl-int/lit8 v1, p2, 0x1

    shr-int/lit8 p2, p2, 0x1f

    xor-int/2addr p2, v1

    .line 2242
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->onNavigationEvent(II)V

    return-void
.end method

.method public final onTransact(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 309
    iget-object p3, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 313
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 314
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    invoke-static {}, Lcom/google/protobuf/CodedOutputStream;->onPostMessage()I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 316
    :cond_0
    iget-object p1, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    .line 319
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 320
    iget-object p1, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    .line 5437
    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 323
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 324
    iget-object p3, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 6279
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final warmup(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 506
    iget-object p3, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 510
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 511
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->newSession(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 513
    :cond_0
    iget-object p1, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    .line 516
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 517
    iget-object p1, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    shl-int/lit8 v1, p3, 0x1

    shr-int/lit8 p3, p3, 0x1f

    xor-int/2addr p3, v1

    .line 12400
    invoke-virtual {p1, p3}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 520
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 521
    iget-object p3, p0, Lo/writeSessionEventAppCustomAttributes;->extraCallback:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    shl-int/lit8 v2, v1, 0x1

    shr-int/lit8 v1, v1, 0x1f

    xor-int/2addr v1, v2

    .line 13242
    invoke-virtual {p3, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->onNavigationEvent(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method
