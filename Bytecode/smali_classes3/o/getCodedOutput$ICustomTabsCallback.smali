.class public final Lo/getCodedOutput$ICustomTabsCallback;
.super Lo/getEventAppExecutionSize;
.source ""

# interfaces
.implements Lo/getCodedOutput$asInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCodedOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getCodedOutput$ICustomTabsCallback$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/getCodedOutput$ICustomTabsCallback;",
        "Lo/getCodedOutput$ICustomTabsCallback$onMessageChannelReady;",
        ">;",
        "Lo/getCodedOutput$asInterface;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lo/getCodedOutput$ICustomTabsCallback;

.field public static final KEY_VALUE_FIELD_NUMBER:I = 0x2

.field public static final NAMESPACE_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lo/areReportsAvailable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/getCodedOutput$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private keyValue_:Lo/getEventLogSize$asBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getEventLogSize$asBinder<",
            "Lo/getCodedOutput$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private namespace_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1735
    new-instance v0, Lo/getCodedOutput$ICustomTabsCallback;

    invoke-direct {v0}, Lo/getCodedOutput$ICustomTabsCallback;-><init>()V

    .line 1738
    sput-object v0, Lo/getCodedOutput$ICustomTabsCallback;->DEFAULT_INSTANCE:Lo/getCodedOutput$ICustomTabsCallback;

    .line 1739
    const-class v1, Lo/getCodedOutput$ICustomTabsCallback;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1270
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    const-string v0, ""

    .line 1271
    iput-object v0, p0, Lo/getCodedOutput$ICustomTabsCallback;->namespace_:Ljava/lang/String;

    .line 1272
    invoke-static {}, Lo/getCodedOutput$ICustomTabsCallback;->emptyProtobufList()Lo/getEventLogSize$asBinder;

    move-result-object v0

    iput-object v0, p0, Lo/getCodedOutput$ICustomTabsCallback;->keyValue_:Lo/getEventLogSize$asBinder;

    return-void
.end method

.method static synthetic access$2700()Lo/getCodedOutput$ICustomTabsCallback;
    .locals 1

    .line 1265
    sget-object v0, Lo/getCodedOutput$ICustomTabsCallback;->DEFAULT_INSTANCE:Lo/getCodedOutput$ICustomTabsCallback;

    return-object v0
.end method

.method static synthetic access$2800(Lo/getCodedOutput$ICustomTabsCallback;Ljava/lang/String;)V
    .locals 0

    .line 1265
    invoke-direct {p0, p1}, Lo/getCodedOutput$ICustomTabsCallback;->setNamespace(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lo/getCodedOutput$ICustomTabsCallback;)V
    .locals 0

    .line 1265
    invoke-direct {p0}, Lo/getCodedOutput$ICustomTabsCallback;->clearNamespace()V

    return-void
.end method

.method static synthetic access$3000(Lo/getCodedOutput$ICustomTabsCallback;Lo/SessionProtobufHelper;)V
    .locals 0

    .line 1265
    invoke-direct {p0, p1}, Lo/getCodedOutput$ICustomTabsCallback;->setNamespaceBytes(Lo/SessionProtobufHelper;)V

    return-void
.end method

.method static synthetic access$3100(Lo/getCodedOutput$ICustomTabsCallback;ILo/getCodedOutput$onNavigationEvent;)V
    .locals 0

    .line 1265
    invoke-direct {p0, p1, p2}, Lo/getCodedOutput$ICustomTabsCallback;->setKeyValue(ILo/getCodedOutput$onNavigationEvent;)V

    return-void
.end method

.method static synthetic access$3200(Lo/getCodedOutput$ICustomTabsCallback;Lo/getCodedOutput$onNavigationEvent;)V
    .locals 0

    .line 1265
    invoke-direct {p0, p1}, Lo/getCodedOutput$ICustomTabsCallback;->addKeyValue(Lo/getCodedOutput$onNavigationEvent;)V

    return-void
.end method

.method static synthetic access$3300(Lo/getCodedOutput$ICustomTabsCallback;ILo/getCodedOutput$onNavigationEvent;)V
    .locals 0

    .line 1265
    invoke-direct {p0, p1, p2}, Lo/getCodedOutput$ICustomTabsCallback;->addKeyValue(ILo/getCodedOutput$onNavigationEvent;)V

    return-void
.end method

.method static synthetic access$3400(Lo/getCodedOutput$ICustomTabsCallback;Ljava/lang/Iterable;)V
    .locals 0

    .line 1265
    invoke-direct {p0, p1}, Lo/getCodedOutput$ICustomTabsCallback;->addAllKeyValue(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$3500(Lo/getCodedOutput$ICustomTabsCallback;)V
    .locals 0

    .line 1265
    invoke-direct {p0}, Lo/getCodedOutput$ICustomTabsCallback;->clearKeyValue()V

    return-void
.end method

.method static synthetic access$3600(Lo/getCodedOutput$ICustomTabsCallback;I)V
    .locals 0

    .line 1265
    invoke-direct {p0, p1}, Lo/getCodedOutput$ICustomTabsCallback;->removeKeyValue(I)V

    return-void
.end method

.method private addAllKeyValue(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lo/getCodedOutput$onNavigationEvent;",
            ">;)V"
        }
    .end annotation

    .line 1404
    invoke-direct {p0}, Lo/getCodedOutput$ICustomTabsCallback;->ensureKeyValueIsMutable()V

    .line 1405
    iget-object v0, p0, Lo/getCodedOutput$ICustomTabsCallback;->keyValue_:Lo/getEventLogSize$asBinder;

    invoke-static {p1, v0}, Lo/writeRawVarint64;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addKeyValue(ILo/getCodedOutput$onNavigationEvent;)V
    .locals 1

    .line 1396
    invoke-direct {p0}, Lo/getCodedOutput$ICustomTabsCallback;->ensureKeyValueIsMutable()V

    .line 1397
    iget-object v0, p0, Lo/getCodedOutput$ICustomTabsCallback;->keyValue_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0, p1, p2}, Lo/getEventLogSize$asBinder;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addKeyValue(Lo/getCodedOutput$onNavigationEvent;)V
    .locals 1

    .line 1387
    invoke-direct {p0}, Lo/getCodedOutput$ICustomTabsCallback;->ensureKeyValueIsMutable()V

    .line 1388
    iget-object v0, p0, Lo/getCodedOutput$ICustomTabsCallback;->keyValue_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0, p1}, Lo/getEventLogSize$asBinder;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearKeyValue()V
    .locals 1

    .line 1412
    invoke-static {}, Lo/getCodedOutput$ICustomTabsCallback;->emptyProtobufList()Lo/getEventLogSize$asBinder;

    move-result-object v0

    iput-object v0, p0, Lo/getCodedOutput$ICustomTabsCallback;->keyValue_:Lo/getEventLogSize$asBinder;

    return-void
.end method

.method private clearNamespace()V
    .locals 1

    .line 1316
    iget v0, p0, Lo/getCodedOutput$ICustomTabsCallback;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lo/getCodedOutput$ICustomTabsCallback;->bitField0_:I

    .line 1317
    invoke-static {}, Lo/getCodedOutput$ICustomTabsCallback;->getDefaultInstance()Lo/getCodedOutput$ICustomTabsCallback;

    move-result-object v0

    invoke-virtual {v0}, Lo/getCodedOutput$ICustomTabsCallback;->getNamespace()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/getCodedOutput$ICustomTabsCallback;->namespace_:Ljava/lang/String;

    return-void
.end method

.method private ensureKeyValueIsMutable()V
    .locals 1

    .line 1367
    iget-object v0, p0, Lo/getCodedOutput$ICustomTabsCallback;->keyValue_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0}, Lo/getEventLogSize$asBinder;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1368
    iget-object v0, p0, Lo/getCodedOutput$ICustomTabsCallback;->keyValue_:Lo/getEventLogSize$asBinder;

    .line 1369
    invoke-static {v0}, Lo/getEventAppExecutionSize;->mutableCopy(Lo/getEventLogSize$asBinder;)Lo/getEventLogSize$asBinder;

    move-result-object v0

    iput-object v0, p0, Lo/getCodedOutput$ICustomTabsCallback;->keyValue_:Lo/getEventLogSize$asBinder;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lo/getCodedOutput$ICustomTabsCallback;
    .locals 1

    .line 1744
    sget-object v0, Lo/getCodedOutput$ICustomTabsCallback;->DEFAULT_INSTANCE:Lo/getCodedOutput$ICustomTabsCallback;

    return-object v0
.end method

.method public static newBuilder()Lo/getCodedOutput$ICustomTabsCallback$onMessageChannelReady;
    .locals 1

    .line 1497
    sget-object v0, Lo/getCodedOutput$ICustomTabsCallback;->DEFAULT_INSTANCE:Lo/getCodedOutput$ICustomTabsCallback;

    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->createBuilder()Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/getCodedOutput$ICustomTabsCallback$onMessageChannelReady;

    return-object v0
.end method

.method public static newBuilder(Lo/getCodedOutput$ICustomTabsCallback;)Lo/getCodedOutput$ICustomTabsCallback$onMessageChannelReady;
    .locals 1

    .line 1500
    sget-object v0, Lo/getCodedOutput$ICustomTabsCallback;->DEFAULT_INSTANCE:Lo/getCodedOutput$ICustomTabsCallback;

    invoke-virtual {v0, p0}, Lo/getEventAppExecutionSize;->createBuilder(Lo/getEventAppExecutionSize;)Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$ICustomTabsCallback$onMessageChannelReady;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lo/getCodedOutput$ICustomTabsCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1474
    sget-object v0, Lo/getCodedOutput$ICustomTabsCallback;->DEFAULT_INSTANCE:Lo/getCodedOutput$ICustomTabsCallback;

    invoke-static {v0, p0}, Lo/getCodedOutput$ICustomTabsCallback;->parseDelimitedFrom(Lo/getEventAppExecutionSize;Ljava/io/InputStream;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$ICustomTabsCallback;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/getCodedOutput$ICustomTabsCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1480
    sget-object v0, Lo/getCodedOutput$ICustomTabsCallback;->DEFAULT_INSTANCE:Lo/getCodedOutput$ICustomTabsCallback;

    invoke-static {v0, p0, p1}, Lo/getCodedOutput$ICustomTabsCallback;->parseDelimitedFrom(Lo/getEventAppExecutionSize;Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$ICustomTabsCallback;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lo/getCodedOutput$ICustomTabsCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1462
    sget-object v0, Lo/getCodedOutput$ICustomTabsCallback;->DEFAULT_INSTANCE:Lo/getCodedOutput$ICustomTabsCallback;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Ljava/io/InputStream;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$ICustomTabsCallback;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/getCodedOutput$ICustomTabsCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1469
    sget-object v0, Lo/getCodedOutput$ICustomTabsCallback;->DEFAULT_INSTANCE:Lo/getCodedOutput$ICustomTabsCallback;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$ICustomTabsCallback;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lo/getCodedOutput$ICustomTabsCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1425
    sget-object v0, Lo/getCodedOutput$ICustomTabsCallback;->DEFAULT_INSTANCE:Lo/getCodedOutput$ICustomTabsCallback;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Ljava/nio/ByteBuffer;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$ICustomTabsCallback;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lo/writeSessionEventDevice;)Lo/getCodedOutput$ICustomTabsCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1432
    sget-object v0, Lo/getCodedOutput$ICustomTabsCallback;->DEFAULT_INSTANCE:Lo/getCodedOutput$ICustomTabsCallback;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Ljava/nio/ByteBuffer;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$ICustomTabsCallback;

    return-object p0
.end method

.method public static parseFrom(Lo/SessionProtobufHelper;)Lo/getCodedOutput$ICustomTabsCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1438
    sget-object v0, Lo/getCodedOutput$ICustomTabsCallback;->DEFAULT_INSTANCE:Lo/getCodedOutput$ICustomTabsCallback;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Lo/SessionProtobufHelper;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$ICustomTabsCallback;

    return-object p0
.end method

.method public static parseFrom(Lo/SessionProtobufHelper;Lo/writeSessionEventDevice;)Lo/getCodedOutput$ICustomTabsCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1445
    sget-object v0, Lo/getCodedOutput$ICustomTabsCallback;->DEFAULT_INSTANCE:Lo/getCodedOutput$ICustomTabsCallback;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Lo/SessionProtobufHelper;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$ICustomTabsCallback;

    return-object p0
.end method

.method public static parseFrom(Lo/writeSessionAppClsId;)Lo/getCodedOutput$ICustomTabsCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1485
    sget-object v0, Lo/getCodedOutput$ICustomTabsCallback;->DEFAULT_INSTANCE:Lo/getCodedOutput$ICustomTabsCallback;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Lo/writeSessionAppClsId;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$ICustomTabsCallback;

    return-object p0
.end method

.method public static parseFrom(Lo/writeSessionAppClsId;Lo/writeSessionEventDevice;)Lo/getCodedOutput$ICustomTabsCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1492
    sget-object v0, Lo/getCodedOutput$ICustomTabsCallback;->DEFAULT_INSTANCE:Lo/getCodedOutput$ICustomTabsCallback;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Lo/writeSessionAppClsId;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$ICustomTabsCallback;

    return-object p0
.end method

.method public static parseFrom([B)Lo/getCodedOutput$ICustomTabsCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1450
    sget-object v0, Lo/getCodedOutput$ICustomTabsCallback;->DEFAULT_INSTANCE:Lo/getCodedOutput$ICustomTabsCallback;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;[B)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$ICustomTabsCallback;

    return-object p0
.end method

.method public static parseFrom([BLo/writeSessionEventDevice;)Lo/getCodedOutput$ICustomTabsCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1457
    sget-object v0, Lo/getCodedOutput$ICustomTabsCallback;->DEFAULT_INSTANCE:Lo/getCodedOutput$ICustomTabsCallback;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;[BLo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$ICustomTabsCallback;

    return-object p0
.end method

.method public static parser()Lo/areReportsAvailable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/areReportsAvailable<",
            "Lo/getCodedOutput$ICustomTabsCallback;",
            ">;"
        }
    .end annotation

    .line 1750
    sget-object v0, Lo/getCodedOutput$ICustomTabsCallback;->DEFAULT_INSTANCE:Lo/getCodedOutput$ICustomTabsCallback;

    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->getParserForType()Lo/areReportsAvailable;

    move-result-object v0

    return-object v0
.end method

.method private removeKeyValue(I)V
    .locals 1

    .line 1418
    invoke-direct {p0}, Lo/getCodedOutput$ICustomTabsCallback;->ensureKeyValueIsMutable()V

    .line 1419
    iget-object v0, p0, Lo/getCodedOutput$ICustomTabsCallback;->keyValue_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0, p1}, Lo/getEventLogSize$asBinder;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setKeyValue(ILo/getCodedOutput$onNavigationEvent;)V
    .locals 1

    .line 1379
    invoke-direct {p0}, Lo/getCodedOutput$ICustomTabsCallback;->ensureKeyValueIsMutable()V

    .line 1380
    iget-object v0, p0, Lo/getCodedOutput$ICustomTabsCallback;->keyValue_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0, p1, p2}, Lo/getEventLogSize$asBinder;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setNamespace(Ljava/lang/String;)V
    .locals 1

    .line 1309
    iget v0, p0, Lo/getCodedOutput$ICustomTabsCallback;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/getCodedOutput$ICustomTabsCallback;->bitField0_:I

    .line 1310
    iput-object p1, p0, Lo/getCodedOutput$ICustomTabsCallback;->namespace_:Ljava/lang/String;

    return-void
.end method

.method private setNamespaceBytes(Lo/SessionProtobufHelper;)V
    .locals 0

    .line 1325
    invoke-virtual {p1}, Lo/SessionProtobufHelper;->onNavigationEvent()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/getCodedOutput$ICustomTabsCallback;->namespace_:Ljava/lang/String;

    .line 1326
    iget p1, p0, Lo/getCodedOutput$ICustomTabsCallback;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/getCodedOutput$ICustomTabsCallback;->bitField0_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1683
    sget-object p2, Lo/getCodedOutput$4;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1728
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1722
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1707
    :pswitch_2
    sget-object p1, Lo/getCodedOutput$ICustomTabsCallback;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 1709
    const-class p1, Lo/getCodedOutput$ICustomTabsCallback;

    monitor-enter p1

    .line 1710
    :try_start_0
    sget-object p2, Lo/getCodedOutput$ICustomTabsCallback;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 1712
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/getCodedOutput$ICustomTabsCallback;->DEFAULT_INSTANCE:Lo/getCodedOutput$ICustomTabsCallback;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 1715
    sput-object p2, Lo/getCodedOutput$ICustomTabsCallback;->PARSER:Lo/areReportsAvailable;

    .line 1717
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

    .line 1704
    :pswitch_3
    sget-object p1, Lo/getCodedOutput$ICustomTabsCallback;->DEFAULT_INSTANCE:Lo/getCodedOutput$ICustomTabsCallback;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "namespace_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "keyValue_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 1691
    const-class p3, Lo/getCodedOutput$onNavigationEvent;

    aput-object p3, p1, p2

    .line 1700
    sget-object p2, Lo/getCodedOutput$ICustomTabsCallback;->DEFAULT_INSTANCE:Lo/getCodedOutput$ICustomTabsCallback;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u0008\u0000\u0002\u001b"

    invoke-static {p2, p3, p1}, Lo/getCodedOutput$ICustomTabsCallback;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1688
    :pswitch_5
    new-instance p1, Lo/getCodedOutput$ICustomTabsCallback$onMessageChannelReady;

    invoke-direct {p1, p3}, Lo/getCodedOutput$ICustomTabsCallback$onMessageChannelReady;-><init>(Lo/getCodedOutput$4;)V

    return-object p1

    .line 1685
    :pswitch_6
    new-instance p1, Lo/getCodedOutput$ICustomTabsCallback;

    invoke-direct {p1}, Lo/getCodedOutput$ICustomTabsCallback;-><init>()V

    return-object p1

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

.method public final getKeyValue(I)Lo/getCodedOutput$onNavigationEvent;
    .locals 1

    .line 1357
    iget-object v0, p0, Lo/getCodedOutput$ICustomTabsCallback;->keyValue_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0, p1}, Lo/getEventLogSize$asBinder;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getCodedOutput$onNavigationEvent;

    return-object p1
.end method

.method public final getKeyValueCount()I
    .locals 1

    .line 1350
    iget-object v0, p0, Lo/getCodedOutput$ICustomTabsCallback;->keyValue_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0}, Lo/getEventLogSize$asBinder;->size()I

    move-result v0

    return v0
.end method

.method public final getKeyValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/getCodedOutput$onNavigationEvent;",
            ">;"
        }
    .end annotation

    .line 1336
    iget-object v0, p0, Lo/getCodedOutput$ICustomTabsCallback;->keyValue_:Lo/getEventLogSize$asBinder;

    return-object v0
.end method

.method public final getKeyValueOrBuilder(I)Lo/getCodedOutput$extraCallback;
    .locals 1

    .line 1364
    iget-object v0, p0, Lo/getCodedOutput$ICustomTabsCallback;->keyValue_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0, p1}, Lo/getEventLogSize$asBinder;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getCodedOutput$extraCallback;

    return-object p1
.end method

.method public final getKeyValueOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lo/getCodedOutput$extraCallback;",
            ">;"
        }
    .end annotation

    .line 1343
    iget-object v0, p0, Lo/getCodedOutput$ICustomTabsCallback;->keyValue_:Lo/getEventLogSize$asBinder;

    return-object v0
.end method

.method public final getNamespace()Ljava/lang/String;
    .locals 1

    .line 1291
    iget-object v0, p0, Lo/getCodedOutput$ICustomTabsCallback;->namespace_:Ljava/lang/String;

    return-object v0
.end method

.method public final getNamespaceBytes()Lo/SessionProtobufHelper;
    .locals 1

    .line 1300
    iget-object v0, p0, Lo/getCodedOutput$ICustomTabsCallback;->namespace_:Ljava/lang/String;

    invoke-static {v0}, Lo/SessionProtobufHelper;->extraCallback(Ljava/lang/String;)Lo/SessionProtobufHelper;

    move-result-object v0

    return-object v0
.end method

.method public final hasNamespace()Z
    .locals 2

    .line 1283
    iget v0, p0, Lo/getCodedOutput$ICustomTabsCallback;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
