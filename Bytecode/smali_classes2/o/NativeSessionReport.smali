.class final Lo/NativeSessionReport;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ICustomTabsCallback:Lo/SessionReport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/SessionReport<",
            "**>;"
        }
    .end annotation
.end field

.field private static final onMessageChannelReady:Lo/SessionReport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/SessionReport<",
            "**>;"
        }
    .end annotation
.end field

.field private static final onNavigationEvent:Lo/SessionReport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/SessionReport<",
            "**>;"
        }
    .end annotation
.end field

.field private static final onPostMessage:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    invoke-static {}, Lo/NativeSessionReport;->onMessageChannelReady()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lo/NativeSessionReport;->onPostMessage:Ljava/lang/Class;

    const/4 v0, 0x0

    .line 47
    invoke-static {v0}, Lo/NativeSessionReport;->onMessageChannelReady(Z)Lo/SessionReport;

    move-result-object v0

    sput-object v0, Lo/NativeSessionReport;->onMessageChannelReady:Lo/SessionReport;

    const/4 v0, 0x1

    .line 49
    invoke-static {v0}, Lo/NativeSessionReport;->onMessageChannelReady(Z)Lo/SessionReport;

    move-result-object v0

    sput-object v0, Lo/NativeSessionReport;->ICustomTabsCallback:Lo/SessionReport;

    .line 50
    new-instance v0, Lo/applyHeadersTo;

    invoke-direct {v0}, Lo/applyHeadersTo;-><init>()V

    sput-object v0, Lo/NativeSessionReport;->onNavigationEvent:Lo/SessionReport;

    return-void
.end method

.method static ICustomTabsCallback(ILjava/lang/Object;Lo/CreateReportRequest;)I
    .locals 1

    .line 669
    instance-of v0, p1, Lo/WireFormat;

    if-eqz v0, :cond_0

    .line 670
    check-cast p1, Lo/WireFormat;

    invoke-static {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(ILo/WireFormat;)I

    move-result p0

    return p0

    .line 672
    :cond_0
    check-cast p1, Lo/WireFormat$FieldType$2;

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(ILo/WireFormat$FieldType$2;Lo/CreateReportRequest;)I

    move-result p0

    return p0
.end method

.method static ICustomTabsCallback(ILjava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .line 389
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 393
    :cond_0
    invoke-static {p1}, Lo/NativeSessionReport;->onNavigationEvent(Ljava/util/List;)I

    move-result p1

    .line 399
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->getInterfaceDescriptor(I)I

    move-result p0

    mul-int v0, v0, p0

    add-int/2addr p1, v0

    return p1
.end method

.method static ICustomTabsCallback(ILjava/util/List;Lo/CreateReportRequest;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lo/WireFormat$FieldType$2;",
            ">;",
            "Lo/CreateReportRequest;",
            ")I"
        }
    .end annotation

    .line 735
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 741
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/WireFormat$FieldType$2;

    invoke-static {p0, v3, p2}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(ILo/WireFormat$FieldType$2;Lo/CreateReportRequest;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method static ICustomTabsCallback(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 476
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 483
    :cond_0
    instance-of v2, p0, Lo/getEventAppExecutionExceptionSize;

    if-eqz v2, :cond_1

    .line 484
    check-cast p0, Lo/getEventAppExecutionExceptionSize;

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 486
    invoke-virtual {p0, v1}, Lo/getEventAppExecutionExceptionSize;->onNavigationEvent(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback$Stub$Proxy(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 490
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback$Stub$Proxy(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return v2
.end method

.method public static ICustomTabsCallback()Lo/SessionReport;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/SessionReport<",
            "**>;"
        }
    .end annotation

    .line 794
    sget-object v0, Lo/NativeSessionReport;->onNavigationEvent:Lo/SessionReport;

    return-object v0
.end method

.method public static ICustomTabsCallback(ILjava/util/List;Lo/sendReport;Lo/CreateReportRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lo/sendReport;",
            "Lo/CreateReportRequest;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 303
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    invoke-interface {p2, p0, p1, p3}, Lo/sendReport;->ICustomTabsCallback(ILjava/util/List;Lo/CreateReportRequest;)V

    :cond_0
    return-void
.end method

.method public static ICustomTabsCallback(ILjava/util/List;Lo/sendReport;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Lo/sendReport;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 191
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    invoke-interface {p2, p0, p1, p3}, Lo/sendReport;->onTransact(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method static ICustomTabsCallback(Lo/SessionReport;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/SessionReport<",
            "TUT;TUB;>;TT;TT;)V"
        }
    .end annotation

    .line 896
    invoke-virtual {p0, p1}, Lo/SessionReport;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 897
    invoke-virtual {p0, p2}, Lo/SessionReport;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 898
    invoke-virtual {p0, v0, p2}, Lo/SessionReport;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 899
    invoke-virtual {p0, p1, p2}, Lo/SessionReport;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static ICustomTabsCallback$Stub(ILjava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 589
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 598
    :cond_0
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(I)I

    move-result p0

    mul-int p1, p1, p0

    return p1
.end method

.method static ICustomTabsCallback$Stub(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 512
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 519
    :cond_0
    instance-of v2, p0, Lo/getEventAppExecutionExceptionSize;

    if-eqz v2, :cond_1

    .line 520
    check-cast p0, Lo/getEventAppExecutionExceptionSize;

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 522
    invoke-virtual {p0, v1}, Lo/getEventAppExecutionExceptionSize;->onNavigationEvent(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 526
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return v2
.end method

.method public static ICustomTabsCallback$Stub(ILjava/util/List;Lo/sendReport;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lo/sendReport;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 233
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    invoke-interface {p2, p0, p1, p3}, Lo/sendReport;->ICustomTabsCallback(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method static ICustomTabsCallback$Stub$Proxy(ILjava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 640
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 644
    :cond_0
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->getInterfaceDescriptor(I)I

    move-result p0

    mul-int p0, p0, v0

    .line 645
    instance-of v2, p1, Lo/stringToByteString;

    if-eqz v2, :cond_2

    .line 646
    check-cast p1, Lo/stringToByteString;

    :goto_0
    if-ge v1, v0, :cond_4

    .line 648
    invoke-interface {p1, v1}, Lo/stringToByteString;->extraCallback(I)Ljava/lang/Object;

    move-result-object v2

    .line 649
    instance-of v3, v2, Lo/SessionProtobufHelper;

    if-eqz v3, :cond_1

    .line 650
    check-cast v2, Lo/SessionProtobufHelper;

    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->onPostMessage(Lo/SessionProtobufHelper;)I

    move-result v2

    goto :goto_1

    .line 652
    :cond_1
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback(Ljava/lang/String;)I

    move-result v2

    :goto_1
    add-int/2addr p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-ge v1, v0, :cond_4

    .line 657
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 658
    instance-of v3, v2, Lo/SessionProtobufHelper;

    if-eqz v3, :cond_3

    .line 659
    check-cast v2, Lo/SessionProtobufHelper;

    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->onPostMessage(Lo/SessionProtobufHelper;)I

    move-result v2

    goto :goto_3

    .line 661
    :cond_3
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback(Ljava/lang/String;)I

    move-result v2

    :goto_3
    add-int/2addr p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return p0
.end method

.method public static ICustomTabsCallback$Stub$Proxy(ILjava/util/List;Lo/sendReport;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lo/sendReport;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 261
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    invoke-interface {p2, p0, p1, p3}, Lo/sendReport;->ICustomTabsCallback$Stub$Proxy(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static ICustomTabsService(ILjava/util/List;Lo/sendReport;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lo/sendReport;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 268
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    invoke-interface {p2, p0, p1, p3}, Lo/sendReport;->onRelationshipValidationResult(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method static asBinder(ILjava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 607
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 616
    :cond_0
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->asInterface(I)I

    move-result p0

    mul-int p1, p1, p0

    return p1
.end method

.method static asBinder(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 548
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 555
    :cond_0
    instance-of v2, p0, Lo/getEventAppExecutionExceptionSize;

    if-eqz v2, :cond_1

    .line 556
    check-cast p0, Lo/getEventAppExecutionExceptionSize;

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 558
    invoke-virtual {p0, v1}, Lo/getEventAppExecutionExceptionSize;->onNavigationEvent(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->newSession(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 562
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->newSession(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return v2
.end method

.method public static asBinder(ILjava/util/List;Lo/sendReport;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lo/sendReport;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 226
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    invoke-interface {p2, p0, p1, p3}, Lo/sendReport;->getInterfaceDescriptor(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method static asInterface(ILjava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 569
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 574
    :cond_0
    invoke-static {p1}, Lo/NativeSessionReport;->asBinder(Ljava/util/List;)I

    move-result p1

    .line 580
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->getInterfaceDescriptor(I)I

    move-result p0

    mul-int v0, v0, p0

    add-int/2addr p1, v0

    return p1
.end method

.method static asInterface(Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 622
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public static asInterface(ILjava/util/List;Lo/sendReport;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lo/sendReport;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 240
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    invoke-interface {p2, p0, p1, p3}, Lo/sendReport;->asInterface(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method static extraCallback(ILjava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 497
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 501
    :cond_0
    invoke-static {p1}, Lo/NativeSessionReport;->ICustomTabsCallback(Ljava/util/List;)I

    move-result p1

    .line 507
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->getInterfaceDescriptor(I)I

    move-result p0

    mul-int v0, v0, p0

    add-int/2addr p1, v0

    return p1
.end method

.method static extraCallback(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .line 332
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 339
    :cond_0
    instance-of v2, p0, Lo/makeTag;

    if-eqz v2, :cond_1

    .line 340
    check-cast p0, Lo/makeTag;

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 342
    invoke-virtual {p0, v1}, Lo/makeTag;->onPostMessage(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->onNavigationEvent(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 346
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->onNavigationEvent(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return v2
.end method

.method public static extraCallback()Lo/SessionReport;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/SessionReport<",
            "**>;"
        }
    .end annotation

    .line 786
    sget-object v0, Lo/NativeSessionReport;->onMessageChannelReady:Lo/SessionReport;

    return-object v0
.end method

.method public static extraCallback(ILjava/util/List;Lo/sendReport;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lo/sendReport;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 282
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    invoke-interface {p2, p0, p1}, Lo/sendReport;->onMessageChannelReady(ILjava/util/List;)V

    :cond_0
    return-void
.end method

.method public static extraCallback(ILjava/util/List;Lo/sendReport;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;",
            "Lo/sendReport;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 184
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    invoke-interface {p2, p0, p1, p3}, Lo/sendReport;->asBinder(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method static extraCallback(Lo/WireFormat$FieldType;Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/WireFormat$FieldType;",
            "TT;TT;J)V"
        }
    .end annotation

    .line 881
    invoke-static {p1, p3, p4}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, p4}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 880
    invoke-interface {p0, v0, p2}, Lo/WireFormat$FieldType;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 882
    invoke-static {p1, p3, p4, p0}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method static extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    .line 875
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static newSession(ILjava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lo/SessionProtobufHelper;",
            ">;)I"
        }
    .end annotation

    .line 711
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 715
    :cond_0
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->getInterfaceDescriptor(I)I

    move-result p0

    mul-int v0, v0, p0

    .line 716
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v1, p0, :cond_1

    .line 717
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/SessionProtobufHelper;

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->onPostMessage(Lo/SessionProtobufHelper;)I

    move-result p0

    add-int/2addr v0, p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static newSession(ILjava/util/List;Lo/sendReport;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lo/sendReport;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 254
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    invoke-interface {p2, p0, p1, p3}, Lo/sendReport;->extraCallback(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method static onMessageChannelReady(ILjava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .line 425
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 429
    :cond_0
    invoke-static {p1}, Lo/NativeSessionReport;->onPostMessage(Ljava/util/List;)I

    move-result p1

    .line 435
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->getInterfaceDescriptor(I)I

    move-result p0

    mul-int v0, v0, p0

    add-int/2addr p1, v0

    return p1
.end method

.method static onMessageChannelReady(ILjava/util/List;Lo/CreateReportRequest;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lo/CreateReportRequest;",
            ")I"
        }
    .end annotation

    .line 694
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 698
    :cond_0
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->getInterfaceDescriptor(I)I

    move-result p0

    mul-int p0, p0, v0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 700
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 701
    instance-of v3, v2, Lo/WireFormat;

    if-eqz v3, :cond_1

    .line 702
    check-cast v2, Lo/WireFormat;

    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(Lo/WireFormat;)I

    move-result v2

    goto :goto_1

    .line 704
    :cond_1
    check-cast v2, Lo/WireFormat$FieldType$2;

    invoke-static {v2, p2}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(Lo/WireFormat$FieldType$2;Lo/CreateReportRequest;)I

    move-result v2

    :goto_1
    add-int/2addr p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return p0
.end method

.method static onMessageChannelReady(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 440
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 447
    :cond_0
    instance-of v2, p0, Lo/getEventAppExecutionExceptionSize;

    if-eqz v2, :cond_1

    .line 448
    check-cast p0, Lo/getEventAppExecutionExceptionSize;

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 450
    invoke-virtual {p0, v1}, Lo/getEventAppExecutionExceptionSize;->onNavigationEvent(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->extraCommand(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 454
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->extraCommand(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return v2
.end method

.method private static onMessageChannelReady()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.google.protobuf.GeneratedMessageV3"

    .line 811
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static onMessageChannelReady(ILjava/util/List;Lo/getEventLogSize$onNavigationEvent;Ljava/lang/Object;Lo/SessionReport;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lo/getEventLogSize$onNavigationEvent<",
            "*>;TUB;",
            "Lo/SessionReport<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    if-nez p2, :cond_0

    return-object p3

    .line 913
    :cond_0
    instance-of v0, p1, Ljava/util/RandomAccess;

    if-eqz v0, :cond_5

    .line 915
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 917
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 918
    invoke-interface {p2, v3}, Lo/getEventLogSize$onNavigationEvent;->extraCallback(I)Lo/getEventLogSize$ICustomTabsCallback;

    move-result-object v4

    if-eqz v4, :cond_2

    if-eq v1, v2, :cond_1

    .line 920
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-nez p3, :cond_3

    .line 2986
    invoke-virtual {p4}, Lo/SessionReport;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object p3

    :cond_3
    int-to-long v3, v3

    .line 2988
    invoke-virtual {p4, p3, p0, v3, v4}, Lo/SessionReport;->extraCallback(Ljava/lang/Object;IJ)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eq v2, v0, :cond_8

    .line 928
    invoke-interface {p1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto :goto_3

    .line 931
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 932
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 933
    invoke-interface {p2, v0}, Lo/getEventLogSize$onNavigationEvent;->extraCallback(I)Lo/getEventLogSize$ICustomTabsCallback;

    move-result-object v1

    if-nez v1, :cond_6

    if-nez p3, :cond_7

    .line 3986
    invoke-virtual {p4}, Lo/SessionReport;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object p3

    :cond_7
    int-to-long v0, v0

    .line 3988
    invoke-virtual {p4, p3, p0, v0, v1}, Lo/SessionReport;->extraCallback(Ljava/lang/Object;IJ)V

    .line 935
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_8
    :goto_3
    return-object p3
.end method

.method private static onMessageChannelReady(Z)Lo/SessionReport;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lo/SessionReport<",
            "**>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 799
    :try_start_0
    invoke-static {}, Lo/NativeSessionReport;->onNavigationEvent()Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 803
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/SessionReport;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    return-object v0
.end method

.method public static onMessageChannelReady(ILjava/util/List;Lo/sendReport;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lo/sendReport;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 212
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    invoke-interface {p2, p0, p1, p3}, Lo/sendReport;->newSession(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method static onNavigationEvent(ILjava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .line 353
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 357
    :cond_0
    invoke-static {p1}, Lo/NativeSessionReport;->extraCallback(Ljava/util/List;)I

    move-result v0

    .line 363
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->getInterfaceDescriptor(I)I

    move-result p0

    mul-int p1, p1, p0

    add-int/2addr v0, p1

    return v0
.end method

.method static onNavigationEvent(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .line 368
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 375
    :cond_0
    instance-of v2, p0, Lo/makeTag;

    if-eqz v2, :cond_1

    .line 376
    check-cast p0, Lo/makeTag;

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 378
    invoke-virtual {p0, v1}, Lo/makeTag;->onPostMessage(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 382
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return v2
.end method

.method private static onNavigationEvent()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.google.protobuf.UnknownFieldSetSchema"

    .line 819
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static onNavigationEvent(ILjava/util/List;Lo/sendReport;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lo/sendReport;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 205
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    invoke-interface {p2, p0, p1, p3}, Lo/sendReport;->onPostMessage(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static onNavigationEvent(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 62
    const-class v0, Lo/getEventAppExecutionSize;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lo/NativeSessionReport;->onPostMessage:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Message classes must extend GeneratedMessage or GeneratedMessageLite"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method static onNavigationEvent(Lo/getSessionAppSize;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "FT::",
            "Lo/getBinaryImageSize$ICustomTabsCallback<",
            "TFT;>;>(",
            "Lo/getSessionAppSize<",
            "TFT;>;TT;TT;)V"
        }
    .end annotation

    .line 887
    invoke-virtual {p0, p2}, Lo/getSessionAppSize;->onPostMessage(Ljava/lang/Object;)Lo/getBinaryImageSize;

    move-result-object p2

    .line 1118
    iget-object v0, p2, Lo/getBinaryImageSize;->ICustomTabsCallback:Lo/Report$Type;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 889
    invoke-virtual {p0, p1}, Lo/getSessionAppSize;->onNavigationEvent(Ljava/lang/Object;)Lo/getBinaryImageSize;

    move-result-object p0

    const/4 p1, 0x0

    .line 1499
    :goto_0
    iget-object v0, p2, Lo/getBinaryImageSize;->ICustomTabsCallback:Lo/Report$Type;

    .line 2179
    iget-object v0, v0, Lo/Report$Type;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1500
    iget-object v0, p2, Lo/getBinaryImageSize;->ICustomTabsCallback:Lo/Report$Type;

    .line 2184
    iget-object v0, v0, Lo/Report$Type;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1500
    invoke-virtual {p0, v0}, Lo/getBinaryImageSize;->onMessageChannelReady(Ljava/util/Map$Entry;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1502
    :cond_0
    iget-object p1, p2, Lo/getBinaryImageSize;->ICustomTabsCallback:Lo/Report$Type;

    .line 2194
    iget-object p2, p1, Lo/Report$Type;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2195
    invoke-static {}, Lo/Report$Type$onNavigationEvent;->onPostMessage()Ljava/lang/Iterable;

    move-result-object p1

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lo/Report$Type;->onMessageChannelReady:Ljava/util/Map;

    .line 2196
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 1502
    :goto_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 1503
    invoke-virtual {p0, p2}, Lo/getBinaryImageSize;->onMessageChannelReady(Ljava/util/Map$Entry;)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method static onPostMessage(ILjava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 461
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 465
    :cond_0
    invoke-static {p1}, Lo/NativeSessionReport;->onMessageChannelReady(Ljava/util/List;)I

    move-result p1

    .line 471
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->getInterfaceDescriptor(I)I

    move-result p0

    mul-int v0, v0, p0

    add-int/2addr p1, v0

    return p1
.end method

.method static onPostMessage(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .line 404
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 411
    :cond_0
    instance-of v2, p0, Lo/makeTag;

    if-eqz v2, :cond_1

    .line 412
    check-cast p0, Lo/makeTag;

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 414
    invoke-virtual {p0, v1}, Lo/makeTag;->onPostMessage(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 418
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return v2
.end method

.method static onPostMessage(IILjava/lang/Object;Lo/SessionReport;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(IITUB;",
            "Lo/SessionReport<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 986
    invoke-virtual {p3}, Lo/SessionReport;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object p2

    :cond_0
    int-to-long v0, p1

    .line 988
    invoke-virtual {p3, p2, p0, v0, v1}, Lo/SessionReport;->extraCallback(Ljava/lang/Object;IJ)V

    return-object p2
.end method

.method static onPostMessage(ILjava/util/List;Lo/getEventLogSize$extraCallback;Ljava/lang/Object;Lo/SessionReport;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lo/getEventLogSize$extraCallback;",
            "TUB;",
            "Lo/SessionReport<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    if-nez p2, :cond_0

    return-object p3

    .line 953
    :cond_0
    instance-of v0, p1, Ljava/util/RandomAccess;

    if-eqz v0, :cond_5

    .line 955
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 957
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 958
    invoke-interface {p2}, Lo/getEventLogSize$extraCallback;->onMessageChannelReady()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eq v1, v2, :cond_1

    .line 960
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-nez p3, :cond_3

    .line 4986
    invoke-virtual {p4}, Lo/SessionReport;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object p3

    :cond_3
    int-to-long v3, v3

    .line 4988
    invoke-virtual {p4, p3, p0, v3, v4}, Lo/SessionReport;->extraCallback(Ljava/lang/Object;IJ)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eq v2, v0, :cond_8

    .line 968
    invoke-interface {p1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto :goto_3

    .line 971
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 972
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 973
    invoke-interface {p2}, Lo/getEventLogSize$extraCallback;->onMessageChannelReady()Z

    move-result v1

    if-nez v1, :cond_6

    if-nez p3, :cond_7

    .line 5986
    invoke-virtual {p4}, Lo/SessionReport;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object p3

    :cond_7
    int-to-long v0, v0

    .line 5988
    invoke-virtual {p4, p3, p0, v0, v1}, Lo/SessionReport;->extraCallback(Ljava/lang/Object;IJ)V

    .line 975
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_8
    :goto_3
    return-object p3
.end method

.method public static onPostMessage()Lo/SessionReport;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/SessionReport<",
            "**>;"
        }
    .end annotation

    .line 790
    sget-object v0, Lo/NativeSessionReport;->ICustomTabsCallback:Lo/SessionReport;

    return-object v0
.end method

.method public static onPostMessage(ILjava/util/List;Lo/sendReport;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lo/SessionProtobufHelper;",
            ">;",
            "Lo/sendReport;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 289
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    invoke-interface {p2, p0, p1}, Lo/sendReport;->ICustomTabsCallback(ILjava/util/List;)V

    :cond_0
    return-void
.end method

.method public static onPostMessage(ILjava/util/List;Lo/sendReport;Lo/CreateReportRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lo/sendReport;",
            "Lo/CreateReportRequest;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 326
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    invoke-interface {p2, p0, p1, p3}, Lo/sendReport;->onMessageChannelReady(ILjava/util/List;Lo/CreateReportRequest;)V

    :cond_0
    return-void
.end method

.method public static onPostMessage(ILjava/util/List;Lo/sendReport;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lo/sendReport;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 198
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    invoke-interface {p2, p0, p1, p3}, Lo/sendReport;->onNavigationEvent(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method static onRelationshipValidationResult(ILjava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 626
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 635
    :cond_0
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsService(I)I

    move-result p0

    mul-int p1, p1, p0

    return p1
.end method

.method static onRelationshipValidationResult(Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 585
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    shl-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public static onRelationshipValidationResult(ILjava/util/List;Lo/sendReport;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lo/sendReport;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 219
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    invoke-interface {p2, p0, p1, p3}, Lo/sendReport;->onMessageChannelReady(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method static onTransact(ILjava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 533
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 537
    :cond_0
    invoke-static {p1}, Lo/NativeSessionReport;->ICustomTabsCallback$Stub(Ljava/util/List;)I

    move-result p1

    .line 543
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->getInterfaceDescriptor(I)I

    move-result p0

    mul-int v0, v0, p0

    add-int/2addr p1, v0

    return p1
.end method

.method static onTransact(Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 603
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    shl-int/lit8 p0, p0, 0x3

    return p0
.end method

.method public static onTransact(ILjava/util/List;Lo/sendReport;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lo/sendReport;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 247
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    invoke-interface {p2, p0, p1, p3}, Lo/sendReport;->warmup(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static warmup(ILjava/util/List;Lo/sendReport;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lo/sendReport;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 275
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    invoke-interface {p2, p0, p1, p3}, Lo/sendReport;->ICustomTabsCallback$Stub(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method
