.class public final Lo/getCodedOutput$onPostMessage;
.super Lo/getEventAppExecutionSize;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCodedOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getCodedOutput$onPostMessage$extraCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/getCodedOutput$onPostMessage;",
        "Lo/getCodedOutput$onPostMessage$extraCallback;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lo/getCodedOutput$onPostMessage;

.field public static final EXPERIMENT_PAYLOAD_FIELD_NUMBER:I = 0x3

.field public static final NAMESPACE_KEY_VALUE_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lo/areReportsAvailable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/getCodedOutput$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private experimentPayload_:Lo/getEventLogSize$asBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getEventLogSize$asBinder<",
            "Lo/SessionProtobufHelper;",
            ">;"
        }
    .end annotation
.end field

.field private namespaceKeyValue_:Lo/getEventLogSize$asBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getEventLogSize$asBinder<",
            "Lo/getCodedOutput$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2373
    new-instance v0, Lo/getCodedOutput$onPostMessage;

    invoke-direct {v0}, Lo/getCodedOutput$onPostMessage;-><init>()V

    .line 2376
    sput-object v0, Lo/getCodedOutput$onPostMessage;->DEFAULT_INSTANCE:Lo/getCodedOutput$onPostMessage;

    .line 2377
    const-class v1, Lo/getCodedOutput$onPostMessage;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1808
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    .line 1809
    invoke-static {}, Lo/getCodedOutput$onPostMessage;->emptyProtobufList()Lo/getEventLogSize$asBinder;

    move-result-object v0

    iput-object v0, p0, Lo/getCodedOutput$onPostMessage;->namespaceKeyValue_:Lo/getEventLogSize$asBinder;

    .line 1810
    invoke-static {}, Lo/getCodedOutput$onPostMessage;->emptyProtobufList()Lo/getEventLogSize$asBinder;

    move-result-object v0

    iput-object v0, p0, Lo/getCodedOutput$onPostMessage;->experimentPayload_:Lo/getEventLogSize$asBinder;

    return-void
.end method

.method static synthetic access$3800()Lo/getCodedOutput$onPostMessage;
    .locals 1

    .line 1803
    sget-object v0, Lo/getCodedOutput$onPostMessage;->DEFAULT_INSTANCE:Lo/getCodedOutput$onPostMessage;

    return-object v0
.end method

.method static synthetic access$3900(Lo/getCodedOutput$onPostMessage;ILo/getCodedOutput$ICustomTabsCallback;)V
    .locals 0

    .line 1803
    invoke-direct {p0, p1, p2}, Lo/getCodedOutput$onPostMessage;->setNamespaceKeyValue(ILo/getCodedOutput$ICustomTabsCallback;)V

    return-void
.end method

.method static synthetic access$4000(Lo/getCodedOutput$onPostMessage;Lo/getCodedOutput$ICustomTabsCallback;)V
    .locals 0

    .line 1803
    invoke-direct {p0, p1}, Lo/getCodedOutput$onPostMessage;->addNamespaceKeyValue(Lo/getCodedOutput$ICustomTabsCallback;)V

    return-void
.end method

.method static synthetic access$4100(Lo/getCodedOutput$onPostMessage;ILo/getCodedOutput$ICustomTabsCallback;)V
    .locals 0

    .line 1803
    invoke-direct {p0, p1, p2}, Lo/getCodedOutput$onPostMessage;->addNamespaceKeyValue(ILo/getCodedOutput$ICustomTabsCallback;)V

    return-void
.end method

.method static synthetic access$4200(Lo/getCodedOutput$onPostMessage;Ljava/lang/Iterable;)V
    .locals 0

    .line 1803
    invoke-direct {p0, p1}, Lo/getCodedOutput$onPostMessage;->addAllNamespaceKeyValue(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$4300(Lo/getCodedOutput$onPostMessage;)V
    .locals 0

    .line 1803
    invoke-direct {p0}, Lo/getCodedOutput$onPostMessage;->clearNamespaceKeyValue()V

    return-void
.end method

.method static synthetic access$4400(Lo/getCodedOutput$onPostMessage;I)V
    .locals 0

    .line 1803
    invoke-direct {p0, p1}, Lo/getCodedOutput$onPostMessage;->removeNamespaceKeyValue(I)V

    return-void
.end method

.method static synthetic access$4500(Lo/getCodedOutput$onPostMessage;J)V
    .locals 0

    .line 1803
    invoke-direct {p0, p1, p2}, Lo/getCodedOutput$onPostMessage;->setTimestamp(J)V

    return-void
.end method

.method static synthetic access$4600(Lo/getCodedOutput$onPostMessage;)V
    .locals 0

    .line 1803
    invoke-direct {p0}, Lo/getCodedOutput$onPostMessage;->clearTimestamp()V

    return-void
.end method

.method static synthetic access$4700(Lo/getCodedOutput$onPostMessage;ILo/SessionProtobufHelper;)V
    .locals 0

    .line 1803
    invoke-direct {p0, p1, p2}, Lo/getCodedOutput$onPostMessage;->setExperimentPayload(ILo/SessionProtobufHelper;)V

    return-void
.end method

.method static synthetic access$4800(Lo/getCodedOutput$onPostMessage;Lo/SessionProtobufHelper;)V
    .locals 0

    .line 1803
    invoke-direct {p0, p1}, Lo/getCodedOutput$onPostMessage;->addExperimentPayload(Lo/SessionProtobufHelper;)V

    return-void
.end method

.method static synthetic access$4900(Lo/getCodedOutput$onPostMessage;Ljava/lang/Iterable;)V
    .locals 0

    .line 1803
    invoke-direct {p0, p1}, Lo/getCodedOutput$onPostMessage;->addAllExperimentPayload(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$5000(Lo/getCodedOutput$onPostMessage;)V
    .locals 0

    .line 1803
    invoke-direct {p0}, Lo/getCodedOutput$onPostMessage;->clearExperimentPayload()V

    return-void
.end method

.method private addAllExperimentPayload(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lo/SessionProtobufHelper;",
            ">;)V"
        }
    .end annotation

    .line 2000
    invoke-direct {p0}, Lo/getCodedOutput$onPostMessage;->ensureExperimentPayloadIsMutable()V

    .line 2001
    iget-object v0, p0, Lo/getCodedOutput$onPostMessage;->experimentPayload_:Lo/getEventLogSize$asBinder;

    invoke-static {p1, v0}, Lo/writeRawVarint64;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllNamespaceKeyValue(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lo/getCodedOutput$ICustomTabsCallback;",
            ">;)V"
        }
    .end annotation

    .line 1888
    invoke-direct {p0}, Lo/getCodedOutput$onPostMessage;->ensureNamespaceKeyValueIsMutable()V

    .line 1889
    iget-object v0, p0, Lo/getCodedOutput$onPostMessage;->namespaceKeyValue_:Lo/getEventLogSize$asBinder;

    invoke-static {p1, v0}, Lo/writeRawVarint64;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addExperimentPayload(Lo/SessionProtobufHelper;)V
    .locals 1

    .line 1991
    invoke-direct {p0}, Lo/getCodedOutput$onPostMessage;->ensureExperimentPayloadIsMutable()V

    .line 1992
    iget-object v0, p0, Lo/getCodedOutput$onPostMessage;->experimentPayload_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0, p1}, Lo/getEventLogSize$asBinder;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addNamespaceKeyValue(ILo/getCodedOutput$ICustomTabsCallback;)V
    .locals 1

    .line 1880
    invoke-direct {p0}, Lo/getCodedOutput$onPostMessage;->ensureNamespaceKeyValueIsMutable()V

    .line 1881
    iget-object v0, p0, Lo/getCodedOutput$onPostMessage;->namespaceKeyValue_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0, p1, p2}, Lo/getEventLogSize$asBinder;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addNamespaceKeyValue(Lo/getCodedOutput$ICustomTabsCallback;)V
    .locals 1

    .line 1871
    invoke-direct {p0}, Lo/getCodedOutput$onPostMessage;->ensureNamespaceKeyValueIsMutable()V

    .line 1872
    iget-object v0, p0, Lo/getCodedOutput$onPostMessage;->namespaceKeyValue_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0, p1}, Lo/getEventLogSize$asBinder;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearExperimentPayload()V
    .locals 1

    .line 2008
    invoke-static {}, Lo/getCodedOutput$onPostMessage;->emptyProtobufList()Lo/getEventLogSize$asBinder;

    move-result-object v0

    iput-object v0, p0, Lo/getCodedOutput$onPostMessage;->experimentPayload_:Lo/getEventLogSize$asBinder;

    return-void
.end method

.method private clearNamespaceKeyValue()V
    .locals 1

    .line 1896
    invoke-static {}, Lo/getCodedOutput$onPostMessage;->emptyProtobufList()Lo/getEventLogSize$asBinder;

    move-result-object v0

    iput-object v0, p0, Lo/getCodedOutput$onPostMessage;->namespaceKeyValue_:Lo/getEventLogSize$asBinder;

    return-void
.end method

.method private clearTimestamp()V
    .locals 2

    .line 1936
    iget v0, p0, Lo/getCodedOutput$onPostMessage;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lo/getCodedOutput$onPostMessage;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 1937
    iput-wide v0, p0, Lo/getCodedOutput$onPostMessage;->timestamp_:J

    return-void
.end method

.method private ensureExperimentPayloadIsMutable()V
    .locals 1

    .line 1969
    iget-object v0, p0, Lo/getCodedOutput$onPostMessage;->experimentPayload_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0}, Lo/getEventLogSize$asBinder;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1970
    iget-object v0, p0, Lo/getCodedOutput$onPostMessage;->experimentPayload_:Lo/getEventLogSize$asBinder;

    .line 1971
    invoke-static {v0}, Lo/getEventAppExecutionSize;->mutableCopy(Lo/getEventLogSize$asBinder;)Lo/getEventLogSize$asBinder;

    move-result-object v0

    iput-object v0, p0, Lo/getCodedOutput$onPostMessage;->experimentPayload_:Lo/getEventLogSize$asBinder;

    :cond_0
    return-void
.end method

.method private ensureNamespaceKeyValueIsMutable()V
    .locals 1

    .line 1851
    iget-object v0, p0, Lo/getCodedOutput$onPostMessage;->namespaceKeyValue_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0}, Lo/getEventLogSize$asBinder;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1852
    iget-object v0, p0, Lo/getCodedOutput$onPostMessage;->namespaceKeyValue_:Lo/getEventLogSize$asBinder;

    .line 1853
    invoke-static {v0}, Lo/getEventAppExecutionSize;->mutableCopy(Lo/getEventLogSize$asBinder;)Lo/getEventLogSize$asBinder;

    move-result-object v0

    iput-object v0, p0, Lo/getCodedOutput$onPostMessage;->namespaceKeyValue_:Lo/getEventLogSize$asBinder;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lo/getCodedOutput$onPostMessage;
    .locals 1

    .line 2382
    sget-object v0, Lo/getCodedOutput$onPostMessage;->DEFAULT_INSTANCE:Lo/getCodedOutput$onPostMessage;

    return-object v0
.end method

.method public static newBuilder()Lo/getCodedOutput$onPostMessage$extraCallback;
    .locals 1

    .line 2086
    sget-object v0, Lo/getCodedOutput$onPostMessage;->DEFAULT_INSTANCE:Lo/getCodedOutput$onPostMessage;

    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->createBuilder()Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/getCodedOutput$onPostMessage$extraCallback;

    return-object v0
.end method

.method public static newBuilder(Lo/getCodedOutput$onPostMessage;)Lo/getCodedOutput$onPostMessage$extraCallback;
    .locals 1

    .line 2089
    sget-object v0, Lo/getCodedOutput$onPostMessage;->DEFAULT_INSTANCE:Lo/getCodedOutput$onPostMessage;

    invoke-virtual {v0, p0}, Lo/getEventAppExecutionSize;->createBuilder(Lo/getEventAppExecutionSize;)Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$onPostMessage$extraCallback;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lo/getCodedOutput$onPostMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2063
    sget-object v0, Lo/getCodedOutput$onPostMessage;->DEFAULT_INSTANCE:Lo/getCodedOutput$onPostMessage;

    invoke-static {v0, p0}, Lo/getCodedOutput$onPostMessage;->parseDelimitedFrom(Lo/getEventAppExecutionSize;Ljava/io/InputStream;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$onPostMessage;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/getCodedOutput$onPostMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2069
    sget-object v0, Lo/getCodedOutput$onPostMessage;->DEFAULT_INSTANCE:Lo/getCodedOutput$onPostMessage;

    invoke-static {v0, p0, p1}, Lo/getCodedOutput$onPostMessage;->parseDelimitedFrom(Lo/getEventAppExecutionSize;Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$onPostMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lo/getCodedOutput$onPostMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2051
    sget-object v0, Lo/getCodedOutput$onPostMessage;->DEFAULT_INSTANCE:Lo/getCodedOutput$onPostMessage;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Ljava/io/InputStream;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$onPostMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/getCodedOutput$onPostMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2058
    sget-object v0, Lo/getCodedOutput$onPostMessage;->DEFAULT_INSTANCE:Lo/getCodedOutput$onPostMessage;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$onPostMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lo/getCodedOutput$onPostMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2014
    sget-object v0, Lo/getCodedOutput$onPostMessage;->DEFAULT_INSTANCE:Lo/getCodedOutput$onPostMessage;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Ljava/nio/ByteBuffer;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$onPostMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lo/writeSessionEventDevice;)Lo/getCodedOutput$onPostMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2021
    sget-object v0, Lo/getCodedOutput$onPostMessage;->DEFAULT_INSTANCE:Lo/getCodedOutput$onPostMessage;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Ljava/nio/ByteBuffer;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$onPostMessage;

    return-object p0
.end method

.method public static parseFrom(Lo/SessionProtobufHelper;)Lo/getCodedOutput$onPostMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2027
    sget-object v0, Lo/getCodedOutput$onPostMessage;->DEFAULT_INSTANCE:Lo/getCodedOutput$onPostMessage;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Lo/SessionProtobufHelper;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$onPostMessage;

    return-object p0
.end method

.method public static parseFrom(Lo/SessionProtobufHelper;Lo/writeSessionEventDevice;)Lo/getCodedOutput$onPostMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2034
    sget-object v0, Lo/getCodedOutput$onPostMessage;->DEFAULT_INSTANCE:Lo/getCodedOutput$onPostMessage;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Lo/SessionProtobufHelper;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$onPostMessage;

    return-object p0
.end method

.method public static parseFrom(Lo/writeSessionAppClsId;)Lo/getCodedOutput$onPostMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2074
    sget-object v0, Lo/getCodedOutput$onPostMessage;->DEFAULT_INSTANCE:Lo/getCodedOutput$onPostMessage;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Lo/writeSessionAppClsId;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$onPostMessage;

    return-object p0
.end method

.method public static parseFrom(Lo/writeSessionAppClsId;Lo/writeSessionEventDevice;)Lo/getCodedOutput$onPostMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2081
    sget-object v0, Lo/getCodedOutput$onPostMessage;->DEFAULT_INSTANCE:Lo/getCodedOutput$onPostMessage;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Lo/writeSessionAppClsId;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$onPostMessage;

    return-object p0
.end method

.method public static parseFrom([B)Lo/getCodedOutput$onPostMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2039
    sget-object v0, Lo/getCodedOutput$onPostMessage;->DEFAULT_INSTANCE:Lo/getCodedOutput$onPostMessage;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;[B)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$onPostMessage;

    return-object p0
.end method

.method public static parseFrom([BLo/writeSessionEventDevice;)Lo/getCodedOutput$onPostMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2046
    sget-object v0, Lo/getCodedOutput$onPostMessage;->DEFAULT_INSTANCE:Lo/getCodedOutput$onPostMessage;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;[BLo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$onPostMessage;

    return-object p0
.end method

.method public static parser()Lo/areReportsAvailable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/areReportsAvailable<",
            "Lo/getCodedOutput$onPostMessage;",
            ">;"
        }
    .end annotation

    .line 2388
    sget-object v0, Lo/getCodedOutput$onPostMessage;->DEFAULT_INSTANCE:Lo/getCodedOutput$onPostMessage;

    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->getParserForType()Lo/areReportsAvailable;

    move-result-object v0

    return-object v0
.end method

.method private removeNamespaceKeyValue(I)V
    .locals 1

    .line 1902
    invoke-direct {p0}, Lo/getCodedOutput$onPostMessage;->ensureNamespaceKeyValueIsMutable()V

    .line 1903
    iget-object v0, p0, Lo/getCodedOutput$onPostMessage;->namespaceKeyValue_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0, p1}, Lo/getEventLogSize$asBinder;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setExperimentPayload(ILo/SessionProtobufHelper;)V
    .locals 1

    .line 1982
    invoke-direct {p0}, Lo/getCodedOutput$onPostMessage;->ensureExperimentPayloadIsMutable()V

    .line 1983
    iget-object v0, p0, Lo/getCodedOutput$onPostMessage;->experimentPayload_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0, p1, p2}, Lo/getEventLogSize$asBinder;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setNamespaceKeyValue(ILo/getCodedOutput$ICustomTabsCallback;)V
    .locals 1

    .line 1863
    invoke-direct {p0}, Lo/getCodedOutput$onPostMessage;->ensureNamespaceKeyValueIsMutable()V

    .line 1864
    iget-object v0, p0, Lo/getCodedOutput$onPostMessage;->namespaceKeyValue_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0, p1, p2}, Lo/getEventLogSize$asBinder;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setTimestamp(J)V
    .locals 1

    .line 1929
    iget v0, p0, Lo/getCodedOutput$onPostMessage;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/getCodedOutput$onPostMessage;->bitField0_:I

    .line 1930
    iput-wide p1, p0, Lo/getCodedOutput$onPostMessage;->timestamp_:J

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2320
    sget-object p2, Lo/getCodedOutput$4;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2366
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 2360
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2345
    :pswitch_2
    sget-object p1, Lo/getCodedOutput$onPostMessage;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 2347
    const-class p1, Lo/getCodedOutput$onPostMessage;

    monitor-enter p1

    .line 2348
    :try_start_0
    sget-object p2, Lo/getCodedOutput$onPostMessage;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 2350
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/getCodedOutput$onPostMessage;->DEFAULT_INSTANCE:Lo/getCodedOutput$onPostMessage;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 2353
    sput-object p2, Lo/getCodedOutput$onPostMessage;->PARSER:Lo/areReportsAvailable;

    .line 2355
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, p2

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2

    :cond_1
    :goto_0
    return-object p1

    .line 2342
    :pswitch_3
    sget-object p1, Lo/getCodedOutput$onPostMessage;->DEFAULT_INSTANCE:Lo/getCodedOutput$onPostMessage;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "namespaceKeyValue_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 2328
    const-class p3, Lo/getCodedOutput$ICustomTabsCallback;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "timestamp_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "experimentPayload_"

    aput-object p3, p1, p2

    .line 2338
    sget-object p2, Lo/getCodedOutput$onPostMessage;->DEFAULT_INSTANCE:Lo/getCodedOutput$onPostMessage;

    const-string p3, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0002\u0000\u0001\u001b\u0002\u0005\u0000\u0003\u001c"

    invoke-static {p2, p3, p1}, Lo/getCodedOutput$onPostMessage;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2325
    :pswitch_5
    new-instance p1, Lo/getCodedOutput$onPostMessage$extraCallback;

    invoke-direct {p1, p3}, Lo/getCodedOutput$onPostMessage$extraCallback;-><init>(Lo/getCodedOutput$4;)V

    return-object p1

    .line 2322
    :pswitch_6
    new-instance p1, Lo/getCodedOutput$onPostMessage;

    invoke-direct {p1}, Lo/getCodedOutput$onPostMessage;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getExperimentPayload(I)Lo/SessionProtobufHelper;
    .locals 1

    .line 1966
    iget-object v0, p0, Lo/getCodedOutput$onPostMessage;->experimentPayload_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0, p1}, Lo/getEventLogSize$asBinder;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/SessionProtobufHelper;

    return-object p1
.end method

.method public final getExperimentPayloadCount()I
    .locals 1

    .line 1957
    iget-object v0, p0, Lo/getCodedOutput$onPostMessage;->experimentPayload_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0}, Lo/getEventLogSize$asBinder;->size()I

    move-result v0

    return v0
.end method

.method public final getExperimentPayloadList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/SessionProtobufHelper;",
            ">;"
        }
    .end annotation

    .line 1949
    iget-object v0, p0, Lo/getCodedOutput$onPostMessage;->experimentPayload_:Lo/getEventLogSize$asBinder;

    return-object v0
.end method

.method public final getNamespaceKeyValue(I)Lo/getCodedOutput$ICustomTabsCallback;
    .locals 1

    .line 1841
    iget-object v0, p0, Lo/getCodedOutput$onPostMessage;->namespaceKeyValue_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0, p1}, Lo/getEventLogSize$asBinder;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getCodedOutput$ICustomTabsCallback;

    return-object p1
.end method

.method public final getNamespaceKeyValueCount()I
    .locals 1

    .line 1834
    iget-object v0, p0, Lo/getCodedOutput$onPostMessage;->namespaceKeyValue_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0}, Lo/getEventLogSize$asBinder;->size()I

    move-result v0

    return v0
.end method

.method public final getNamespaceKeyValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/getCodedOutput$ICustomTabsCallback;",
            ">;"
        }
    .end annotation

    .line 1820
    iget-object v0, p0, Lo/getCodedOutput$onPostMessage;->namespaceKeyValue_:Lo/getEventLogSize$asBinder;

    return-object v0
.end method

.method public final getNamespaceKeyValueOrBuilder(I)Lo/getCodedOutput$asInterface;
    .locals 1

    .line 1848
    iget-object v0, p0, Lo/getCodedOutput$onPostMessage;->namespaceKeyValue_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0, p1}, Lo/getEventLogSize$asBinder;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getCodedOutput$asInterface;

    return-object p1
.end method

.method public final getNamespaceKeyValueOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lo/getCodedOutput$asInterface;",
            ">;"
        }
    .end annotation

    .line 1827
    iget-object v0, p0, Lo/getCodedOutput$onPostMessage;->namespaceKeyValue_:Lo/getEventLogSize$asBinder;

    return-object v0
.end method

.method public final getTimestamp()J
    .locals 2

    .line 1922
    iget-wide v0, p0, Lo/getCodedOutput$onPostMessage;->timestamp_:J

    return-wide v0
.end method

.method public final hasTimestamp()Z
    .locals 2

    .line 1914
    iget v0, p0, Lo/getCodedOutput$onPostMessage;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
