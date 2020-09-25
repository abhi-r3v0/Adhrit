.class public abstract Lcom/google/protobuf/CodedOutputStream;
.super Lo/encodeZigZag64;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/CodedOutputStream$onPostMessage;,
        Lcom/google/protobuf/CodedOutputStream$extraCallback;,
        Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;,
        Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;
    }
.end annotation


# static fields
.field private static final extraCallback:Ljava/util/logging/Logger;

.field private static final onNavigationEvent:Z


# instance fields
.field public ICustomTabsCallback:Lo/writeSessionEventAppCustomAttributes;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const-class v0, Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/CodedOutputStream;->extraCallback:Ljava/util/logging/Logger;

    .line 61
    invoke-static {}, Lo/CreateReportSpiCall;->ICustomTabsCallback()Z

    move-result v0

    sput-boolean v0, Lcom/google/protobuf/CodedOutputStream;->onNavigationEvent:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 224
    invoke-direct {p0}, Lo/encodeZigZag64;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/google/protobuf/CodedOutputStream;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public static ICustomTabsCallback(ILjava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 16710
    invoke-static {p0, v0}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result p0

    .line 621
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static ICustomTabsCallback(ILo/SessionProtobufHelper;)I
    .locals 1

    const/4 v0, 0x0

    .line 17710
    invoke-static {p0, v0}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result p0

    .line 17862
    invoke-virtual {p1}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result p1

    .line 17886
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method public static ICustomTabsCallback(ILo/WireFormat$FieldType$2;)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 20710
    invoke-static {v0, v1}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result v2

    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result v2

    shl-int/lit8 v0, v2, 0x1

    const/4 v2, 0x2

    .line 21710
    invoke-static {v2, v1}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result v2

    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result v2

    .line 21517
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result p0

    add-int/2addr v2, p0

    add-int/2addr v0, v2

    const/4 p0, 0x3

    .line 22710
    invoke-static {p0, v1}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result p0

    .line 22877
    invoke-interface {p1}, Lo/WireFormat$FieldType$2;->getSerializedSize()I

    move-result p1

    .line 22886
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result v1

    add-int/2addr v1, p1

    add-int/2addr p0, v1

    add-int/2addr v0, p0

    return v0
.end method

.method public static ICustomTabsCallback(ILo/WireFormat;)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 26710
    invoke-static {v0, v1}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result v2

    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result v2

    shl-int/lit8 v0, v2, 0x1

    const/4 v2, 0x2

    .line 27710
    invoke-static {v2, v1}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result v2

    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result v2

    .line 27517
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result p0

    add-int/2addr v2, p0

    add-int/2addr v0, v2

    const/4 p0, 0x3

    .line 28710
    invoke-static {p0, v1}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result p0

    .line 28857
    invoke-virtual {p1}, Lo/WireFormat;->onMessageChannelReady()I

    move-result p1

    .line 28886
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result v1

    add-int/2addr v1, p1

    add-int/2addr p0, v1

    add-int/2addr v0, p0

    return v0
.end method

.method public static ICustomTabsCallback(J)I
    .locals 6

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    cmp-long v0, p0, v2

    if-gez v0, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v0, 0x6

    const/16 v1, 0x1c

    ushr-long/2addr p0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    :cond_3
    const-wide/16 v4, -0x4000

    and-long/2addr p0, v4

    cmp-long v1, p0, v2

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    return v0
.end method

.method public static ICustomTabsCallback(Ljava/lang/String;)I
    .locals 1

    .line 842
    :try_start_0
    invoke-static {p0}, Lo/CompositeCreateReportSpiCall$1;->onPostMessage(Ljava/lang/CharSequence;)I

    move-result p0
    :try_end_0
    .catch Lo/CompositeCreateReportSpiCall$1$extraCallback; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 845
    :catch_0
    sget-object v0, Lo/getEventLogSize;->extraCallback:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 846
    array-length p0, p0

    .line 29886
    :goto_0
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static ICustomTabsCallback(Lo/WireFormat$FieldType$2;)I
    .locals 1

    .line 877
    invoke-interface {p0}, Lo/WireFormat$FieldType$2;->getSerializedSize()I

    move-result p0

    .line 33886
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static ICustomTabsCallback([B)I
    .locals 1

    .line 867
    array-length p0, p0

    .line 32886
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static ICustomTabsCallback$Stub(I)I
    .locals 1

    const/4 v0, 0x0

    .line 5710
    invoke-static {p0, v0}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static ICustomTabsCallback$Stub(II)I
    .locals 1

    const/4 v0, 0x0

    .line 2710
    invoke-static {p0, v0}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result p0

    .line 517
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method static synthetic ICustomTabsCallback$Stub()Z
    .locals 1

    .line 59
    sget-boolean v0, Lcom/google/protobuf/CodedOutputStream;->onNavigationEvent:Z

    return v0
.end method

.method public static ICustomTabsCallback$Stub$Proxy(I)I
    .locals 0

    if-ltz p0, :cond_0

    .line 719
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static ICustomTabsService(I)I
    .locals 1

    const/4 v0, 0x0

    .line 13710
    invoke-static {p0, v0}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static asBinder(I)I
    .locals 1

    const/4 v0, 0x0

    .line 11710
    invoke-static {p0, v0}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static asInterface(I)I
    .locals 1

    const/4 v0, 0x0

    .line 9710
    invoke-static {p0, v0}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static extraCallback()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public static extraCallback(I)I
    .locals 1

    const/4 v0, 0x0

    .line 4710
    invoke-static {p0, v0}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static extraCallback(IJ)I
    .locals 3

    const/4 v0, 0x0

    .line 8710
    invoke-static {p0, v0}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result p0

    const/4 v0, 0x1

    shl-long v0, p1, v0

    const/16 v2, 0x3f

    shr-long/2addr p1, v2

    xor-long/2addr p1, v0

    .line 8796
    invoke-static {p1, p2}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static extraCallback(ILo/SessionProtobufHelper;)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 23710
    invoke-static {v0, v1}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result v2

    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result v2

    shl-int/lit8 v0, v2, 0x1

    const/4 v2, 0x2

    .line 24710
    invoke-static {v2, v1}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result v2

    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result v2

    .line 24517
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result p0

    add-int/2addr v2, p0

    add-int/2addr v0, v2

    const/4 p0, 0x3

    .line 25710
    invoke-static {p0, v1}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result p0

    .line 25862
    invoke-virtual {p1}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result p1

    .line 25886
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result v1

    add-int/2addr v1, p1

    add-int/2addr p0, v1

    add-int/2addr v0, p0

    return v0
.end method

.method public static extraCallback(ILo/WireFormat$FieldType$2;Lo/CreateReportRequest;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 35710
    invoke-static {p0, v0}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x1

    .line 36082
    check-cast p1, Lo/writeRawVarint64;

    invoke-virtual {p1, p2}, Lo/writeRawVarint64;->getSerializedSize(Lo/CreateReportRequest;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static extraCallback(ILo/WireFormat;)I
    .locals 1

    const/4 v0, 0x0

    .line 18710
    invoke-static {p0, v0}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result p0

    .line 18857
    invoke-virtual {p1}, Lo/WireFormat;->onMessageChannelReady()I

    move-result p1

    .line 18886
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method public static extraCallback(Lo/WireFormat$FieldType$2;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1076
    invoke-interface {p0}, Lo/WireFormat$FieldType$2;->getSerializedSize()I

    move-result p0

    return p0
.end method

.method public static extraCallback(Lo/WireFormat;)I
    .locals 1

    .line 857
    invoke-virtual {p0}, Lo/WireFormat;->onMessageChannelReady()I

    move-result p0

    .line 30886
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static extraCallback([B)Lcom/google/protobuf/CodedOutputStream;
    .locals 3

    .line 115
    array-length v0, p0

    .line 1126
    new-instance v1, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;-><init>([BII)V

    return-object v1
.end method

.method public static extraCallback([BII)Lcom/google/protobuf/CodedOutputStream;
    .locals 1

    .line 126
    new-instance v0, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream$onNavigationEvent;-><init>([BII)V

    return-object v0
.end method

.method public static extraCommand(I)I
    .locals 0

    if-ltz p0, :cond_0

    .line 29719
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static getInterfaceDescriptor(I)I
    .locals 1

    const/4 v0, 0x0

    .line 710
    invoke-static {p0, v0}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result p0

    return p0
.end method

.method public static newSession(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    .line 745
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result p0

    return p0
.end method

.method public static onMessageChannelReady()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public static onMessageChannelReady(II)I
    .locals 1

    const/4 v0, 0x0

    .line 1710
    invoke-static {p0, v0}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result p0

    if-ltz p1, :cond_0

    .line 1719
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0xa

    :goto_0
    add-int/2addr p0, p1

    return p0
.end method

.method public static onMessageChannelReady(IJ)I
    .locals 1

    const/4 v0, 0x0

    .line 7710
    invoke-static {p0, v0}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result p0

    .line 557
    invoke-static {p1, p2}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static onMessageChannelReady(ILo/WireFormat$FieldType$2;Lo/CreateReportRequest;)I
    .locals 1

    const/4 v0, 0x0

    .line 19710
    invoke-static {p0, v0}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result p0

    .line 19882
    check-cast p1, Lo/writeRawVarint64;

    invoke-virtual {p1, p2}, Lo/writeRawVarint64;->getSerializedSize(Lo/CreateReportRequest;)I

    move-result p1

    .line 19886
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result p2

    add-int/2addr p2, p1

    add-int/2addr p0, p2

    return p0
.end method

.method public static onMessageChannelReady(J)I
    .locals 3

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    .line 796
    invoke-static {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback(J)I

    move-result p0

    return p0
.end method

.method public static onMessageChannelReady(Lo/WireFormat$FieldType$2;Lo/CreateReportRequest;)I
    .locals 0

    .line 882
    check-cast p0, Lo/writeRawVarint64;

    invoke-virtual {p0, p1}, Lo/writeRawVarint64;->getSerializedSize(Lo/CreateReportRequest;)I

    move-result p0

    .line 34886
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static onMessageChannelReady(Ljava/io/OutputStream;I)Lcom/google/protobuf/CodedOutputStream;
    .locals 1

    .line 105
    new-instance v0, Lcom/google/protobuf/CodedOutputStream$onPostMessage;

    invoke-direct {v0, p0, p1}, Lcom/google/protobuf/CodedOutputStream$onPostMessage;-><init>(Ljava/io/OutputStream;I)V

    return-object v0
.end method

.method public static onNavigationEvent()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public static onNavigationEvent(I)I
    .locals 1

    const/16 v0, 0x1000

    if-le p0, v0, :cond_0

    return v0

    :cond_0
    return p0
.end method

.method public static onNavigationEvent(J)I
    .locals 0

    .line 763
    invoke-static {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback(J)I

    move-result p0

    return p0
.end method

.method public static onPostMessage()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public static onPostMessage(IJ)I
    .locals 1

    const/4 v0, 0x0

    .line 6710
    invoke-static {p0, v0}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result p0

    .line 6763
    invoke-static {p1, p2}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static onPostMessage(Lo/SessionProtobufHelper;)I
    .locals 1

    .line 862
    invoke-virtual {p0}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result p0

    .line 31886
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static onRelationshipValidationResult()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static onRelationshipValidationResult(I)I
    .locals 1

    const/4 v0, 0x0

    .line 10710
    invoke-static {p0, v0}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static onRelationshipValidationResult(II)I
    .locals 1

    const/4 v0, 0x0

    .line 3710
    invoke-static {p0, v0}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result p0

    shl-int/lit8 v0, p1, 0x1

    shr-int/lit8 p1, p1, 0x1f

    xor-int/2addr p1, v0

    .line 3745
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static onTransact()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public static onTransact(I)I
    .locals 1

    const/4 v0, 0x0

    .line 12710
    invoke-static {p0, v0}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static onTransact(II)I
    .locals 1

    const/4 v0, 0x0

    .line 14710
    invoke-static {p0, v0}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result p0

    if-ltz p1, :cond_0

    .line 15719
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0xa

    :goto_0
    add-int/2addr p0, p1

    return p0
.end method

.method public static postMessage(I)I
    .locals 1

    .line 886
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static updateVisuals(I)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1114
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result p0

    return p0
.end method

.method public static warmup(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method


# virtual methods
.method public abstract ICustomTabsCallback(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract ICustomTabsCallback(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract ICustomTabsCallback(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract ICustomTabsCallback(ILo/WireFormat$FieldType$2;Lo/CreateReportRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract ICustomTabsCallback(Lo/SessionProtobufHelper;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract asBinder()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract asInterface()I
.end method

.method public abstract extraCallback(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract extraCallback(ILo/WireFormat$FieldType$2;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract extraCallback(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady(ILo/SessionProtobufHelper;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady(Lo/WireFormat$FieldType$2;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onNavigationEvent(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onNavigationEvent(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onNavigationEvent(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onNavigationEvent(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onNavigationEvent(ILo/SessionProtobufHelper;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onNavigationEvent(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final onNavigationEvent(Ljava/lang/String;Lo/CompositeCreateReportSpiCall$1$extraCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 984
    sget-object v0, Lcom/google/protobuf/CodedOutputStream;->extraCallback:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 993
    sget-object p2, Lo/getEventLogSize;->extraCallback:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 995
    :try_start_0
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    const/4 p2, 0x0

    .line 996
    array-length v0, p1

    invoke-virtual {p0, p1, p2, v0}, Lo/encodeZigZag64;->onNavigationEvent([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1000
    throw p1

    :catch_1
    move-exception p1

    .line 998
    new-instance p2, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public abstract onPostMessage(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onPostMessage(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onPostMessage(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onPostMessage(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onPostMessage([BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
