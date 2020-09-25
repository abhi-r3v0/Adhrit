.class public final Lo/CrashlyticsReport$Session$Device$Builder;
.super Lo/getEventAppExecutionSize;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/CrashlyticsReport$Session$Device$Builder;",
        "Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# static fields
.field public static final BASE_WRITES_FIELD_NUMBER:I = 0x4

.field public static final BATCH_ID_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Device$Builder;

.field public static final LOCAL_WRITE_TIME_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lo/areReportsAvailable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/CrashlyticsReport$Session$Device$Builder;",
            ">;"
        }
    .end annotation
.end field

.field public static final WRITES_FIELD_NUMBER:I = 0x2


# instance fields
.field private baseWrites_:Lo/getEventLogSize$asBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getEventLogSize$asBinder<",
            "Lo/writeSInt32;",
            ">;"
        }
    .end annotation
.end field

.field private batchId_:I

.field private localWriteTime_:Lo/getCustomHeaders;

.field private writes_:Lo/getEventLogSize$asBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getEventLogSize$asBinder<",
            "Lo/writeSInt32;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1165
    new-instance v0, Lo/CrashlyticsReport$Session$Device$Builder;

    invoke-direct {v0}, Lo/CrashlyticsReport$Session$Device$Builder;-><init>()V

    .line 1168
    sput-object v0, Lo/CrashlyticsReport$Session$Device$Builder;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Device$Builder;

    .line 1169
    const-class v1, Lo/CrashlyticsReport$Session$Device$Builder;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    .line 21
    invoke-static {}, Lo/CrashlyticsReport$Session$Device$Builder;->emptyProtobufList()Lo/getEventLogSize$asBinder;

    move-result-object v0

    iput-object v0, p0, Lo/CrashlyticsReport$Session$Device$Builder;->writes_:Lo/getEventLogSize$asBinder;

    .line 22
    invoke-static {}, Lo/CrashlyticsReport$Session$Device$Builder;->emptyProtobufList()Lo/getEventLogSize$asBinder;

    move-result-object v0

    iput-object v0, p0, Lo/CrashlyticsReport$Session$Device$Builder;->baseWrites_:Lo/getEventLogSize$asBinder;

    return-void
.end method

.method static synthetic access$000()Lo/CrashlyticsReport$Session$Device$Builder;
    .locals 1

    .line 15
    sget-object v0, Lo/CrashlyticsReport$Session$Device$Builder;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Device$Builder;

    return-object v0
.end method

.method static synthetic access$100(Lo/CrashlyticsReport$Session$Device$Builder;I)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Device$Builder;->setBatchId(I)V

    return-void
.end method

.method static synthetic access$1000(Lo/CrashlyticsReport$Session$Device$Builder;Lo/getCustomHeaders;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Device$Builder;->mergeLocalWriteTime(Lo/getCustomHeaders;)V

    return-void
.end method

.method static synthetic access$1100(Lo/CrashlyticsReport$Session$Device$Builder;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Device$Builder;->clearLocalWriteTime()V

    return-void
.end method

.method static synthetic access$1200(Lo/CrashlyticsReport$Session$Device$Builder;ILo/writeSInt32;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lo/CrashlyticsReport$Session$Device$Builder;->setBaseWrites(ILo/writeSInt32;)V

    return-void
.end method

.method static synthetic access$1300(Lo/CrashlyticsReport$Session$Device$Builder;Lo/writeSInt32;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Device$Builder;->addBaseWrites(Lo/writeSInt32;)V

    return-void
.end method

.method static synthetic access$1400(Lo/CrashlyticsReport$Session$Device$Builder;ILo/writeSInt32;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lo/CrashlyticsReport$Session$Device$Builder;->addBaseWrites(ILo/writeSInt32;)V

    return-void
.end method

.method static synthetic access$1500(Lo/CrashlyticsReport$Session$Device$Builder;Ljava/lang/Iterable;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Device$Builder;->addAllBaseWrites(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1600(Lo/CrashlyticsReport$Session$Device$Builder;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Device$Builder;->clearBaseWrites()V

    return-void
.end method

.method static synthetic access$1700(Lo/CrashlyticsReport$Session$Device$Builder;I)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Device$Builder;->removeBaseWrites(I)V

    return-void
.end method

.method static synthetic access$200(Lo/CrashlyticsReport$Session$Device$Builder;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Device$Builder;->clearBatchId()V

    return-void
.end method

.method static synthetic access$300(Lo/CrashlyticsReport$Session$Device$Builder;ILo/writeSInt32;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lo/CrashlyticsReport$Session$Device$Builder;->setWrites(ILo/writeSInt32;)V

    return-void
.end method

.method static synthetic access$400(Lo/CrashlyticsReport$Session$Device$Builder;Lo/writeSInt32;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Device$Builder;->addWrites(Lo/writeSInt32;)V

    return-void
.end method

.method static synthetic access$500(Lo/CrashlyticsReport$Session$Device$Builder;ILo/writeSInt32;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lo/CrashlyticsReport$Session$Device$Builder;->addWrites(ILo/writeSInt32;)V

    return-void
.end method

.method static synthetic access$600(Lo/CrashlyticsReport$Session$Device$Builder;Ljava/lang/Iterable;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Device$Builder;->addAllWrites(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$700(Lo/CrashlyticsReport$Session$Device$Builder;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Device$Builder;->clearWrites()V

    return-void
.end method

.method static synthetic access$800(Lo/CrashlyticsReport$Session$Device$Builder;I)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Device$Builder;->removeWrites(I)V

    return-void
.end method

.method static synthetic access$900(Lo/CrashlyticsReport$Session$Device$Builder;Lo/getCustomHeaders;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Device$Builder;->setLocalWriteTime(Lo/getCustomHeaders;)V

    return-void
.end method

.method private addAllBaseWrites(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lo/writeSInt32;",
            ">;)V"
        }
    .end annotation

    .line 451
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Device$Builder;->ensureBaseWritesIsMutable()V

    .line 452
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Device$Builder;->baseWrites_:Lo/getEventLogSize$asBinder;

    invoke-static {p1, v0}, Lo/writeRawVarint64;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllWrites(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lo/writeSInt32;",
            ">;)V"
        }
    .end annotation

    .line 176
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Device$Builder;->ensureWritesIsMutable()V

    .line 177
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Device$Builder;->writes_:Lo/getEventLogSize$asBinder;

    invoke-static {p1, v0}, Lo/writeRawVarint64;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addBaseWrites(ILo/writeSInt32;)V
    .locals 1

    .line 431
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Device$Builder;->ensureBaseWritesIsMutable()V

    .line 432
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Device$Builder;->baseWrites_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0, p1, p2}, Lo/getEventLogSize$asBinder;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addBaseWrites(Lo/writeSInt32;)V
    .locals 1

    .line 410
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Device$Builder;->ensureBaseWritesIsMutable()V

    .line 411
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Device$Builder;->baseWrites_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0, p1}, Lo/getEventLogSize$asBinder;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addWrites(ILo/writeSInt32;)V
    .locals 1

    .line 164
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Device$Builder;->ensureWritesIsMutable()V

    .line 165
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Device$Builder;->writes_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0, p1, p2}, Lo/getEventLogSize$asBinder;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addWrites(Lo/writeSInt32;)V
    .locals 1

    .line 151
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Device$Builder;->ensureWritesIsMutable()V

    .line 152
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Device$Builder;->writes_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0, p1}, Lo/getEventLogSize$asBinder;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearBaseWrites()V
    .locals 1

    .line 471
    invoke-static {}, Lo/CrashlyticsReport$Session$Device$Builder;->emptyProtobufList()Lo/getEventLogSize$asBinder;

    move-result-object v0

    iput-object v0, p0, Lo/CrashlyticsReport$Session$Device$Builder;->baseWrites_:Lo/getEventLogSize$asBinder;

    return-void
.end method

.method private clearBatchId()V
    .locals 1

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lo/CrashlyticsReport$Session$Device$Builder;->batchId_:I

    return-void
.end method

.method private clearLocalWriteTime()V
    .locals 1

    const/4 v0, 0x0

    .line 264
    iput-object v0, p0, Lo/CrashlyticsReport$Session$Device$Builder;->localWriteTime_:Lo/getCustomHeaders;

    return-void
.end method

.method private clearWrites()V
    .locals 1

    .line 188
    invoke-static {}, Lo/CrashlyticsReport$Session$Device$Builder;->emptyProtobufList()Lo/getEventLogSize$asBinder;

    move-result-object v0

    iput-object v0, p0, Lo/CrashlyticsReport$Session$Device$Builder;->writes_:Lo/getEventLogSize$asBinder;

    return-void
.end method

.method private ensureBaseWritesIsMutable()V
    .locals 1

    .line 366
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Device$Builder;->baseWrites_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0}, Lo/getEventLogSize$asBinder;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Device$Builder;->baseWrites_:Lo/getEventLogSize$asBinder;

    .line 368
    invoke-static {v0}, Lo/getEventAppExecutionSize;->mutableCopy(Lo/getEventLogSize$asBinder;)Lo/getEventLogSize$asBinder;

    move-result-object v0

    iput-object v0, p0, Lo/CrashlyticsReport$Session$Device$Builder;->baseWrites_:Lo/getEventLogSize$asBinder;

    :cond_0
    return-void
.end method

.method private ensureWritesIsMutable()V
    .locals 1

    .line 123
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Device$Builder;->writes_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0}, Lo/getEventLogSize$asBinder;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Device$Builder;->writes_:Lo/getEventLogSize$asBinder;

    .line 125
    invoke-static {v0}, Lo/getEventAppExecutionSize;->mutableCopy(Lo/getEventLogSize$asBinder;)Lo/getEventLogSize$asBinder;

    move-result-object v0

    iput-object v0, p0, Lo/CrashlyticsReport$Session$Device$Builder;->writes_:Lo/getEventLogSize$asBinder;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lo/CrashlyticsReport$Session$Device$Builder;
    .locals 1

    .line 1174
    sget-object v0, Lo/CrashlyticsReport$Session$Device$Builder;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Device$Builder;

    return-object v0
.end method

.method private mergeLocalWriteTime(Lo/getCustomHeaders;)V
    .locals 2

    .line 248
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Device$Builder;->localWriteTime_:Lo/getCustomHeaders;

    if-eqz v0, :cond_0

    .line 249
    invoke-static {}, Lo/getCustomHeaders;->ICustomTabsCallback()Lo/getCustomHeaders;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 250
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Device$Builder;->localWriteTime_:Lo/getCustomHeaders;

    .line 251
    invoke-static {v0}, Lo/getCustomHeaders;->ICustomTabsCallback(Lo/getCustomHeaders;)Lo/getCustomHeaders$onMessageChannelReady;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->mergeFrom(Lo/getEventAppExecutionSize;)Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object p1

    check-cast p1, Lo/getCustomHeaders$onMessageChannelReady;

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->buildPartial()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/getCustomHeaders;

    iput-object p1, p0, Lo/CrashlyticsReport$Session$Device$Builder;->localWriteTime_:Lo/getCustomHeaders;

    return-void

    .line 253
    :cond_0
    iput-object p1, p0, Lo/CrashlyticsReport$Session$Device$Builder;->localWriteTime_:Lo/getCustomHeaders;

    return-void
.end method

.method public static newBuilder()Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;
    .locals 1

    .line 568
    sget-object v0, Lo/CrashlyticsReport$Session$Device$Builder;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Device$Builder;

    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->createBuilder()Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;

    return-object v0
.end method

.method public static newBuilder(Lo/CrashlyticsReport$Session$Device$Builder;)Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;
    .locals 1

    .line 571
    sget-object v0, Lo/CrashlyticsReport$Session$Device$Builder;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Device$Builder;

    invoke-virtual {v0, p0}, Lo/getEventAppExecutionSize;->createBuilder(Lo/getEventAppExecutionSize;)Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lo/CrashlyticsReport$Session$Device$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 545
    sget-object v0, Lo/CrashlyticsReport$Session$Device$Builder;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Device$Builder;

    invoke-static {v0, p0}, Lo/CrashlyticsReport$Session$Device$Builder;->parseDelimitedFrom(Lo/getEventAppExecutionSize;Ljava/io/InputStream;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Device$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/CrashlyticsReport$Session$Device$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 551
    sget-object v0, Lo/CrashlyticsReport$Session$Device$Builder;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Device$Builder;

    invoke-static {v0, p0, p1}, Lo/CrashlyticsReport$Session$Device$Builder;->parseDelimitedFrom(Lo/getEventAppExecutionSize;Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Device$Builder;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lo/CrashlyticsReport$Session$Device$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 533
    sget-object v0, Lo/CrashlyticsReport$Session$Device$Builder;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Device$Builder;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Ljava/io/InputStream;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Device$Builder;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/CrashlyticsReport$Session$Device$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 540
    sget-object v0, Lo/CrashlyticsReport$Session$Device$Builder;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Device$Builder;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Device$Builder;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lo/CrashlyticsReport$Session$Device$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 496
    sget-object v0, Lo/CrashlyticsReport$Session$Device$Builder;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Device$Builder;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Ljava/nio/ByteBuffer;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Device$Builder;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lo/writeSessionEventDevice;)Lo/CrashlyticsReport$Session$Device$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 503
    sget-object v0, Lo/CrashlyticsReport$Session$Device$Builder;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Device$Builder;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Ljava/nio/ByteBuffer;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Device$Builder;

    return-object p0
.end method

.method public static parseFrom(Lo/SessionProtobufHelper;)Lo/CrashlyticsReport$Session$Device$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 509
    sget-object v0, Lo/CrashlyticsReport$Session$Device$Builder;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Device$Builder;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Lo/SessionProtobufHelper;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Device$Builder;

    return-object p0
.end method

.method public static parseFrom(Lo/SessionProtobufHelper;Lo/writeSessionEventDevice;)Lo/CrashlyticsReport$Session$Device$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 516
    sget-object v0, Lo/CrashlyticsReport$Session$Device$Builder;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Device$Builder;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Lo/SessionProtobufHelper;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Device$Builder;

    return-object p0
.end method

.method public static parseFrom(Lo/writeSessionAppClsId;)Lo/CrashlyticsReport$Session$Device$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 556
    sget-object v0, Lo/CrashlyticsReport$Session$Device$Builder;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Device$Builder;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Lo/writeSessionAppClsId;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Device$Builder;

    return-object p0
.end method

.method public static parseFrom(Lo/writeSessionAppClsId;Lo/writeSessionEventDevice;)Lo/CrashlyticsReport$Session$Device$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 563
    sget-object v0, Lo/CrashlyticsReport$Session$Device$Builder;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Device$Builder;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Lo/writeSessionAppClsId;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Device$Builder;

    return-object p0
.end method

.method public static parseFrom([B)Lo/CrashlyticsReport$Session$Device$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 521
    sget-object v0, Lo/CrashlyticsReport$Session$Device$Builder;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Device$Builder;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;[B)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Device$Builder;

    return-object p0
.end method

.method public static parseFrom([BLo/writeSessionEventDevice;)Lo/CrashlyticsReport$Session$Device$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 528
    sget-object v0, Lo/CrashlyticsReport$Session$Device$Builder;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Device$Builder;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;[BLo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Device$Builder;

    return-object p0
.end method

.method public static parser()Lo/areReportsAvailable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/areReportsAvailable<",
            "Lo/CrashlyticsReport$Session$Device$Builder;",
            ">;"
        }
    .end annotation

    .line 1180
    sget-object v0, Lo/CrashlyticsReport$Session$Device$Builder;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Device$Builder;

    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->getParserForType()Lo/areReportsAvailable;

    move-result-object v0

    return-object v0
.end method

.method private removeBaseWrites(I)V
    .locals 1

    .line 489
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Device$Builder;->ensureBaseWritesIsMutable()V

    .line 490
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Device$Builder;->baseWrites_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0, p1}, Lo/getEventLogSize$asBinder;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeWrites(I)V
    .locals 1

    .line 198
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Device$Builder;->ensureWritesIsMutable()V

    .line 199
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Device$Builder;->writes_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0, p1}, Lo/getEventLogSize$asBinder;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setBaseWrites(ILo/writeSInt32;)V
    .locals 1

    .line 390
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Device$Builder;->ensureBaseWritesIsMutable()V

    .line 391
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Device$Builder;->baseWrites_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0, p1, p2}, Lo/getEventLogSize$asBinder;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setBatchId(I)V
    .locals 0

    .line 50
    iput p1, p0, Lo/CrashlyticsReport$Session$Device$Builder;->batchId_:I

    return-void
.end method

.method private setLocalWriteTime(Lo/getCustomHeaders;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lo/CrashlyticsReport$Session$Device$Builder;->localWriteTime_:Lo/getCustomHeaders;

    return-void
.end method

.method private setWrites(ILo/writeSInt32;)V
    .locals 1

    .line 139
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Device$Builder;->ensureWritesIsMutable()V

    .line 140
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Device$Builder;->writes_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0, p1, p2}, Lo/getEventLogSize$asBinder;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1111
    sget-object p2, Lo/CrashlyticsReport$Session$Device$Builder$4;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1158
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1152
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1137
    :pswitch_2
    sget-object p1, Lo/CrashlyticsReport$Session$Device$Builder;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 1139
    const-class p1, Lo/CrashlyticsReport$Session$Device$Builder;

    monitor-enter p1

    .line 1140
    :try_start_0
    sget-object p2, Lo/CrashlyticsReport$Session$Device$Builder;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 1142
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/CrashlyticsReport$Session$Device$Builder;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Device$Builder;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 1145
    sput-object p2, Lo/CrashlyticsReport$Session$Device$Builder;->PARSER:Lo/areReportsAvailable;

    .line 1147
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

    .line 1134
    :pswitch_3
    sget-object p1, Lo/CrashlyticsReport$Session$Device$Builder;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Device$Builder;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "batchId_"

    aput-object v0, p1, p3

    const-string p3, "writes_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 1119
    const-class p3, Lo/writeSInt32;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "localWriteTime_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "baseWrites_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-class p3, Lo/writeSInt32;

    aput-object p3, p1, p2

    .line 1130
    sget-object p2, Lo/CrashlyticsReport$Session$Device$Builder;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Device$Builder;

    const-string p3, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0002\u0000\u0001\u0004\u0002\u001b\u0003\t\u0004\u001b"

    invoke-static {p2, p3, p1}, Lo/CrashlyticsReport$Session$Device$Builder;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1116
    :pswitch_5
    new-instance p1, Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;

    invoke-direct {p1, p3}, Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;-><init>(Lo/CrashlyticsReport$Session$Device$Builder$4;)V

    return-object p1

    .line 1113
    :pswitch_6
    new-instance p1, Lo/CrashlyticsReport$Session$Device$Builder;

    invoke-direct {p1}, Lo/CrashlyticsReport$Session$Device$Builder;-><init>()V

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

.method public final getBaseWrites(I)Lo/writeSInt32;
    .locals 1

    .line 344
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Device$Builder;->baseWrites_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0, p1}, Lo/getEventLogSize$asBinder;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/writeSInt32;

    return-object p1
.end method

.method public final getBaseWritesCount()I
    .locals 1

    .line 325
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Device$Builder;->baseWrites_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0}, Lo/getEventLogSize$asBinder;->size()I

    move-result v0

    return v0
.end method

.method public final getBaseWritesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/writeSInt32;",
            ">;"
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Device$Builder;->baseWrites_:Lo/getEventLogSize$asBinder;

    return-object v0
.end method

.method public final getBaseWritesOrBuilder(I)Lo/writeDoubleNoTag;
    .locals 1

    .line 363
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Device$Builder;->baseWrites_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0, p1}, Lo/getEventLogSize$asBinder;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/writeDoubleNoTag;

    return-object p1
.end method

.method public final getBaseWritesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lo/writeDoubleNoTag;",
            ">;"
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Device$Builder;->baseWrites_:Lo/getEventLogSize$asBinder;

    return-object v0
.end method

.method public final getBatchId()I
    .locals 1

    .line 37
    iget v0, p0, Lo/CrashlyticsReport$Session$Device$Builder;->batchId_:I

    return v0
.end method

.method public final getLocalWriteTime()Lo/getCustomHeaders;
    .locals 1

    .line 224
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Device$Builder;->localWriteTime_:Lo/getCustomHeaders;

    if-nez v0, :cond_0

    invoke-static {}, Lo/getCustomHeaders;->ICustomTabsCallback()Lo/getCustomHeaders;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getWrites(I)Lo/writeSInt32;
    .locals 1

    .line 109
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Device$Builder;->writes_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0, p1}, Lo/getEventLogSize$asBinder;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/writeSInt32;

    return-object p1
.end method

.method public final getWritesCount()I
    .locals 1

    .line 98
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Device$Builder;->writes_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0}, Lo/getEventLogSize$asBinder;->size()I

    move-result v0

    return v0
.end method

.method public final getWritesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/writeSInt32;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Device$Builder;->writes_:Lo/getEventLogSize$asBinder;

    return-object v0
.end method

.method public final getWritesOrBuilder(I)Lo/writeDoubleNoTag;
    .locals 1

    .line 120
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Device$Builder;->writes_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0, p1}, Lo/getEventLogSize$asBinder;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/writeDoubleNoTag;

    return-object p1
.end method

.method public final getWritesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lo/writeDoubleNoTag;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Device$Builder;->writes_:Lo/getEventLogSize$asBinder;

    return-object v0
.end method

.method public final hasLocalWriteTime()Z
    .locals 1

    .line 213
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Device$Builder;->localWriteTime_:Lo/getCustomHeaders;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
