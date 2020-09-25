.class public final Lo/CrashlyticsReport$Session$Event;
.super Lo/getEventAppExecutionSize;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CrashlyticsReport$Session$Event$onPostMessage;,
        Lo/CrashlyticsReport$Session$Event$extraCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/CrashlyticsReport$Session$Event;",
        "Lo/CrashlyticsReport$Session$Event$onPostMessage;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Event;

.field public static final DOCUMENTS_FIELD_NUMBER:I = 0x6

.field public static final LAST_LIMBO_FREE_SNAPSHOT_VERSION_FIELD_NUMBER:I = 0x7

.field public static final LAST_LISTEN_SEQUENCE_NUMBER_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lo/areReportsAvailable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/CrashlyticsReport$Session$Event;",
            ">;"
        }
    .end annotation
.end field

.field public static final QUERY_FIELD_NUMBER:I = 0x5

.field public static final RESUME_TOKEN_FIELD_NUMBER:I = 0x3

.field public static final SNAPSHOT_VERSION_FIELD_NUMBER:I = 0x2

.field public static final TARGET_ID_FIELD_NUMBER:I = 0x1


# instance fields
.field private lastLimboFreeSnapshotVersion_:Lo/getCustomHeaders;

.field private lastListenSequenceNumber_:J

.field private resumeToken_:Lo/SessionProtobufHelper;

.field private snapshotVersion_:Lo/getCustomHeaders;

.field private targetId_:I

.field private targetTypeCase_:I

.field private targetType_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1197
    new-instance v0, Lo/CrashlyticsReport$Session$Event;

    invoke-direct {v0}, Lo/CrashlyticsReport$Session$Event;-><init>()V

    .line 1200
    sput-object v0, Lo/CrashlyticsReport$Session$Event;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Event;

    .line 1201
    const-class v1, Lo/CrashlyticsReport$Session$Event;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lo/CrashlyticsReport$Session$Event;->targetTypeCase_:I

    .line 22
    sget-object v0, Lo/SessionProtobufHelper;->onNavigationEvent:Lo/SessionProtobufHelper;

    iput-object v0, p0, Lo/CrashlyticsReport$Session$Event;->resumeToken_:Lo/SessionProtobufHelper;

    return-void
.end method

.method static synthetic access$000()Lo/CrashlyticsReport$Session$Event;
    .locals 1

    .line 16
    sget-object v0, Lo/CrashlyticsReport$Session$Event;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Event;

    return-object v0
.end method

.method static synthetic access$100(Lo/CrashlyticsReport$Session$Event;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Event;->clearTargetType()V

    return-void
.end method

.method static synthetic access$1000(Lo/CrashlyticsReport$Session$Event;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Event;->clearLastListenSequenceNumber()V

    return-void
.end method

.method static synthetic access$1100(Lo/CrashlyticsReport$Session$Event;Lo/writeString$extraCallback;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Event;->setQuery(Lo/writeString$extraCallback;)V

    return-void
.end method

.method static synthetic access$1200(Lo/CrashlyticsReport$Session$Event;Lo/writeString$extraCallback;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Event;->mergeQuery(Lo/writeString$extraCallback;)V

    return-void
.end method

.method static synthetic access$1300(Lo/CrashlyticsReport$Session$Event;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Event;->clearQuery()V

    return-void
.end method

.method static synthetic access$1400(Lo/CrashlyticsReport$Session$Event;Lo/writeString$onNavigationEvent;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Event;->setDocuments(Lo/writeString$onNavigationEvent;)V

    return-void
.end method

.method static synthetic access$1500(Lo/CrashlyticsReport$Session$Event;Lo/writeString$onNavigationEvent;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Event;->mergeDocuments(Lo/writeString$onNavigationEvent;)V

    return-void
.end method

.method static synthetic access$1600(Lo/CrashlyticsReport$Session$Event;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Event;->clearDocuments()V

    return-void
.end method

.method static synthetic access$1700(Lo/CrashlyticsReport$Session$Event;Lo/getCustomHeaders;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Event;->setLastLimboFreeSnapshotVersion(Lo/getCustomHeaders;)V

    return-void
.end method

.method static synthetic access$1800(Lo/CrashlyticsReport$Session$Event;Lo/getCustomHeaders;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Event;->mergeLastLimboFreeSnapshotVersion(Lo/getCustomHeaders;)V

    return-void
.end method

.method static synthetic access$1900(Lo/CrashlyticsReport$Session$Event;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Event;->clearLastLimboFreeSnapshotVersion()V

    return-void
.end method

.method static synthetic access$200(Lo/CrashlyticsReport$Session$Event;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Event;->setTargetId(I)V

    return-void
.end method

.method static synthetic access$300(Lo/CrashlyticsReport$Session$Event;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Event;->clearTargetId()V

    return-void
.end method

.method static synthetic access$400(Lo/CrashlyticsReport$Session$Event;Lo/getCustomHeaders;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Event;->setSnapshotVersion(Lo/getCustomHeaders;)V

    return-void
.end method

.method static synthetic access$500(Lo/CrashlyticsReport$Session$Event;Lo/getCustomHeaders;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Event;->mergeSnapshotVersion(Lo/getCustomHeaders;)V

    return-void
.end method

.method static synthetic access$600(Lo/CrashlyticsReport$Session$Event;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Event;->clearSnapshotVersion()V

    return-void
.end method

.method static synthetic access$700(Lo/CrashlyticsReport$Session$Event;Lo/SessionProtobufHelper;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Event;->setResumeToken(Lo/SessionProtobufHelper;)V

    return-void
.end method

.method static synthetic access$800(Lo/CrashlyticsReport$Session$Event;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Event;->clearResumeToken()V

    return-void
.end method

.method static synthetic access$900(Lo/CrashlyticsReport$Session$Event;J)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lo/CrashlyticsReport$Session$Event;->setLastListenSequenceNumber(J)V

    return-void
.end method

.method private clearDocuments()V
    .locals 2

    .line 455
    iget v0, p0, Lo/CrashlyticsReport$Session$Event;->targetTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 456
    iput v0, p0, Lo/CrashlyticsReport$Session$Event;->targetTypeCase_:I

    const/4 v0, 0x0

    .line 457
    iput-object v0, p0, Lo/CrashlyticsReport$Session$Event;->targetType_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearLastLimboFreeSnapshotVersion()V
    .locals 1

    const/4 v0, 0x0

    .line 528
    iput-object v0, p0, Lo/CrashlyticsReport$Session$Event;->lastLimboFreeSnapshotVersion_:Lo/getCustomHeaders;

    return-void
.end method

.method private clearLastListenSequenceNumber()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 318
    iput-wide v0, p0, Lo/CrashlyticsReport$Session$Event;->lastListenSequenceNumber_:J

    return-void
.end method

.method private clearQuery()V
    .locals 2

    .line 385
    iget v0, p0, Lo/CrashlyticsReport$Session$Event;->targetTypeCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 386
    iput v0, p0, Lo/CrashlyticsReport$Session$Event;->targetTypeCase_:I

    const/4 v0, 0x0

    .line 387
    iput-object v0, p0, Lo/CrashlyticsReport$Session$Event;->targetType_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearResumeToken()V
    .locals 1

    .line 253
    invoke-static {}, Lo/CrashlyticsReport$Session$Event;->getDefaultInstance()Lo/CrashlyticsReport$Session$Event;

    move-result-object v0

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Event;->getResumeToken()Lo/SessionProtobufHelper;

    move-result-object v0

    iput-object v0, p0, Lo/CrashlyticsReport$Session$Event;->resumeToken_:Lo/SessionProtobufHelper;

    return-void
.end method

.method private clearSnapshotVersion()V
    .locals 1

    const/4 v0, 0x0

    .line 180
    iput-object v0, p0, Lo/CrashlyticsReport$Session$Event;->snapshotVersion_:Lo/getCustomHeaders;

    return-void
.end method

.method private clearTargetId()V
    .locals 1

    const/4 v0, 0x0

    .line 105
    iput v0, p0, Lo/CrashlyticsReport$Session$Event;->targetId_:I

    return-void
.end method

.method private clearTargetType()V
    .locals 1

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lo/CrashlyticsReport$Session$Event;->targetTypeCase_:I

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lo/CrashlyticsReport$Session$Event;->targetType_:Ljava/lang/Object;

    return-void
.end method

.method public static getDefaultInstance()Lo/CrashlyticsReport$Session$Event;
    .locals 1

    .line 1206
    sget-object v0, Lo/CrashlyticsReport$Session$Event;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Event;

    return-object v0
.end method

.method private mergeDocuments(Lo/writeString$onNavigationEvent;)V
    .locals 3

    .line 438
    iget v0, p0, Lo/CrashlyticsReport$Session$Event;->targetTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event;->targetType_:Ljava/lang/Object;

    .line 439
    invoke-static {}, Lo/writeString$onNavigationEvent;->ICustomTabsCallback()Lo/writeString$onNavigationEvent;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 440
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event;->targetType_:Ljava/lang/Object;

    check-cast v0, Lo/writeString$onNavigationEvent;

    invoke-static {v0}, Lo/writeString$onNavigationEvent;->extraCallback(Lo/writeString$onNavigationEvent;)Lo/writeString$onNavigationEvent$onMessageChannelReady;

    move-result-object v0

    .line 441
    invoke-virtual {v0, p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->mergeFrom(Lo/getEventAppExecutionSize;)Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object p1

    check-cast p1, Lo/writeString$onNavigationEvent$onMessageChannelReady;

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->buildPartial()Lo/getEventAppExecutionSize;

    move-result-object p1

    iput-object p1, p0, Lo/CrashlyticsReport$Session$Event;->targetType_:Ljava/lang/Object;

    goto :goto_0

    .line 443
    :cond_0
    iput-object p1, p0, Lo/CrashlyticsReport$Session$Event;->targetType_:Ljava/lang/Object;

    .line 445
    :goto_0
    iput v1, p0, Lo/CrashlyticsReport$Session$Event;->targetTypeCase_:I

    return-void
.end method

.method private mergeLastLimboFreeSnapshotVersion(Lo/getCustomHeaders;)V
    .locals 2

    .line 511
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event;->lastLimboFreeSnapshotVersion_:Lo/getCustomHeaders;

    if-eqz v0, :cond_0

    .line 512
    invoke-static {}, Lo/getCustomHeaders;->ICustomTabsCallback()Lo/getCustomHeaders;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 513
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event;->lastLimboFreeSnapshotVersion_:Lo/getCustomHeaders;

    .line 514
    invoke-static {v0}, Lo/getCustomHeaders;->ICustomTabsCallback(Lo/getCustomHeaders;)Lo/getCustomHeaders$onMessageChannelReady;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->mergeFrom(Lo/getEventAppExecutionSize;)Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object p1

    check-cast p1, Lo/getCustomHeaders$onMessageChannelReady;

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->buildPartial()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/getCustomHeaders;

    iput-object p1, p0, Lo/CrashlyticsReport$Session$Event;->lastLimboFreeSnapshotVersion_:Lo/getCustomHeaders;

    return-void

    .line 516
    :cond_0
    iput-object p1, p0, Lo/CrashlyticsReport$Session$Event;->lastLimboFreeSnapshotVersion_:Lo/getCustomHeaders;

    return-void
.end method

.method private mergeQuery(Lo/writeString$extraCallback;)V
    .locals 3

    .line 368
    iget v0, p0, Lo/CrashlyticsReport$Session$Event;->targetTypeCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event;->targetType_:Ljava/lang/Object;

    .line 369
    invoke-static {}, Lo/writeString$extraCallback;->ICustomTabsCallback()Lo/writeString$extraCallback;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 370
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event;->targetType_:Ljava/lang/Object;

    check-cast v0, Lo/writeString$extraCallback;

    invoke-static {v0}, Lo/writeString$extraCallback;->onPostMessage(Lo/writeString$extraCallback;)Lo/writeString$extraCallback$onPostMessage;

    move-result-object v0

    .line 371
    invoke-virtual {v0, p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->mergeFrom(Lo/getEventAppExecutionSize;)Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object p1

    check-cast p1, Lo/writeString$extraCallback$onPostMessage;

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->buildPartial()Lo/getEventAppExecutionSize;

    move-result-object p1

    iput-object p1, p0, Lo/CrashlyticsReport$Session$Event;->targetType_:Ljava/lang/Object;

    goto :goto_0

    .line 373
    :cond_0
    iput-object p1, p0, Lo/CrashlyticsReport$Session$Event;->targetType_:Ljava/lang/Object;

    .line 375
    :goto_0
    iput v1, p0, Lo/CrashlyticsReport$Session$Event;->targetTypeCase_:I

    return-void
.end method

.method private mergeSnapshotVersion(Lo/getCustomHeaders;)V
    .locals 2

    .line 162
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event;->snapshotVersion_:Lo/getCustomHeaders;

    if-eqz v0, :cond_0

    .line 163
    invoke-static {}, Lo/getCustomHeaders;->ICustomTabsCallback()Lo/getCustomHeaders;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 164
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event;->snapshotVersion_:Lo/getCustomHeaders;

    .line 165
    invoke-static {v0}, Lo/getCustomHeaders;->ICustomTabsCallback(Lo/getCustomHeaders;)Lo/getCustomHeaders$onMessageChannelReady;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->mergeFrom(Lo/getEventAppExecutionSize;)Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object p1

    check-cast p1, Lo/getCustomHeaders$onMessageChannelReady;

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->buildPartial()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/getCustomHeaders;

    iput-object p1, p0, Lo/CrashlyticsReport$Session$Event;->snapshotVersion_:Lo/getCustomHeaders;

    return-void

    .line 167
    :cond_0
    iput-object p1, p0, Lo/CrashlyticsReport$Session$Event;->snapshotVersion_:Lo/getCustomHeaders;

    return-void
.end method

.method public static newBuilder()Lo/CrashlyticsReport$Session$Event$onPostMessage;
    .locals 1

    .line 607
    sget-object v0, Lo/CrashlyticsReport$Session$Event;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Event;

    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->createBuilder()Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/CrashlyticsReport$Session$Event$onPostMessage;

    return-object v0
.end method

.method public static newBuilder(Lo/CrashlyticsReport$Session$Event;)Lo/CrashlyticsReport$Session$Event$onPostMessage;
    .locals 1

    .line 610
    sget-object v0, Lo/CrashlyticsReport$Session$Event;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Event;

    invoke-virtual {v0, p0}, Lo/getEventAppExecutionSize;->createBuilder(Lo/getEventAppExecutionSize;)Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Event$onPostMessage;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lo/CrashlyticsReport$Session$Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 584
    sget-object v0, Lo/CrashlyticsReport$Session$Event;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Event;

    invoke-static {v0, p0}, Lo/CrashlyticsReport$Session$Event;->parseDelimitedFrom(Lo/getEventAppExecutionSize;Ljava/io/InputStream;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Event;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/CrashlyticsReport$Session$Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 590
    sget-object v0, Lo/CrashlyticsReport$Session$Event;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Event;

    invoke-static {v0, p0, p1}, Lo/CrashlyticsReport$Session$Event;->parseDelimitedFrom(Lo/getEventAppExecutionSize;Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Event;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lo/CrashlyticsReport$Session$Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 572
    sget-object v0, Lo/CrashlyticsReport$Session$Event;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Event;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Ljava/io/InputStream;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Event;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/CrashlyticsReport$Session$Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 579
    sget-object v0, Lo/CrashlyticsReport$Session$Event;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Event;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Event;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lo/CrashlyticsReport$Session$Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 535
    sget-object v0, Lo/CrashlyticsReport$Session$Event;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Event;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Ljava/nio/ByteBuffer;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Event;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lo/writeSessionEventDevice;)Lo/CrashlyticsReport$Session$Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 542
    sget-object v0, Lo/CrashlyticsReport$Session$Event;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Event;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Ljava/nio/ByteBuffer;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Event;

    return-object p0
.end method

.method public static parseFrom(Lo/SessionProtobufHelper;)Lo/CrashlyticsReport$Session$Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 548
    sget-object v0, Lo/CrashlyticsReport$Session$Event;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Event;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Lo/SessionProtobufHelper;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Event;

    return-object p0
.end method

.method public static parseFrom(Lo/SessionProtobufHelper;Lo/writeSessionEventDevice;)Lo/CrashlyticsReport$Session$Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 555
    sget-object v0, Lo/CrashlyticsReport$Session$Event;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Event;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Lo/SessionProtobufHelper;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Event;

    return-object p0
.end method

.method public static parseFrom(Lo/writeSessionAppClsId;)Lo/CrashlyticsReport$Session$Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 595
    sget-object v0, Lo/CrashlyticsReport$Session$Event;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Event;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Lo/writeSessionAppClsId;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Event;

    return-object p0
.end method

.method public static parseFrom(Lo/writeSessionAppClsId;Lo/writeSessionEventDevice;)Lo/CrashlyticsReport$Session$Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 602
    sget-object v0, Lo/CrashlyticsReport$Session$Event;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Event;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Lo/writeSessionAppClsId;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Event;

    return-object p0
.end method

.method public static parseFrom([B)Lo/CrashlyticsReport$Session$Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 560
    sget-object v0, Lo/CrashlyticsReport$Session$Event;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Event;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;[B)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Event;

    return-object p0
.end method

.method public static parseFrom([BLo/writeSessionEventDevice;)Lo/CrashlyticsReport$Session$Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 567
    sget-object v0, Lo/CrashlyticsReport$Session$Event;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Event;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;[BLo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Event;

    return-object p0
.end method

.method public static parser()Lo/areReportsAvailable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/areReportsAvailable<",
            "Lo/CrashlyticsReport$Session$Event;",
            ">;"
        }
    .end annotation

    .line 1212
    sget-object v0, Lo/CrashlyticsReport$Session$Event;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Event;

    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->getParserForType()Lo/areReportsAvailable;

    move-result-object v0

    return-object v0
.end method

.method private setDocuments(Lo/writeString$onNavigationEvent;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lo/CrashlyticsReport$Session$Event;->targetType_:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 427
    iput p1, p0, Lo/CrashlyticsReport$Session$Event;->targetTypeCase_:I

    return-void
.end method

.method private setLastLimboFreeSnapshotVersion(Lo/getCustomHeaders;)V
    .locals 0

    .line 497
    iput-object p1, p0, Lo/CrashlyticsReport$Session$Event;->lastLimboFreeSnapshotVersion_:Lo/getCustomHeaders;

    return-void
.end method

.method private setLastListenSequenceNumber(J)V
    .locals 0

    .line 298
    iput-wide p1, p0, Lo/CrashlyticsReport$Session$Event;->lastListenSequenceNumber_:J

    return-void
.end method

.method private setQuery(Lo/writeString$extraCallback;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lo/CrashlyticsReport$Session$Event;->targetType_:Ljava/lang/Object;

    const/4 p1, 0x5

    .line 357
    iput p1, p0, Lo/CrashlyticsReport$Session$Event;->targetTypeCase_:I

    return-void
.end method

.method private setResumeToken(Lo/SessionProtobufHelper;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lo/CrashlyticsReport$Session$Event;->resumeToken_:Lo/SessionProtobufHelper;

    return-void
.end method

.method private setSnapshotVersion(Lo/getCustomHeaders;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lo/CrashlyticsReport$Session$Event;->snapshotVersion_:Lo/getCustomHeaders;

    return-void
.end method

.method private setTargetId(I)V
    .locals 0

    .line 93
    iput p1, p0, Lo/CrashlyticsReport$Session$Event;->targetId_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1140
    sget-object p2, Lo/CrashlyticsReport$Session$Event$4;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1190
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1184
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1169
    :pswitch_2
    sget-object p1, Lo/CrashlyticsReport$Session$Event;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 1171
    const-class p1, Lo/CrashlyticsReport$Session$Event;

    monitor-enter p1

    .line 1172
    :try_start_0
    sget-object p2, Lo/CrashlyticsReport$Session$Event;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 1174
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/CrashlyticsReport$Session$Event;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Event;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 1177
    sput-object p2, Lo/CrashlyticsReport$Session$Event;->PARSER:Lo/areReportsAvailable;

    .line 1179
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

    .line 1166
    :pswitch_3
    sget-object p1, Lo/CrashlyticsReport$Session$Event;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Event;

    return-object p1

    :pswitch_4
    const/16 p1, 0x9

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "targetType_"

    aput-object v0, p1, p3

    const-string p3, "targetTypeCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "targetId_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "snapshotVersion_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "resumeToken_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "lastListenSequenceNumber_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    .line 1148
    const-class p3, Lo/writeString$extraCallback;

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-class p3, Lo/writeString$onNavigationEvent;

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "lastLimboFreeSnapshotVersion_"

    aput-object p3, p1, p2

    .line 1162
    sget-object p2, Lo/CrashlyticsReport$Session$Event;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Event;

    const-string p3, "\u0000\u0007\u0001\u0000\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u0004\u0002\t\u0003\n\u0004\u0002\u0005<\u0000\u0006<\u0000\u0007\t"

    invoke-static {p2, p3, p1}, Lo/CrashlyticsReport$Session$Event;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1145
    :pswitch_5
    new-instance p1, Lo/CrashlyticsReport$Session$Event$onPostMessage;

    invoke-direct {p1, p3}, Lo/CrashlyticsReport$Session$Event$onPostMessage;-><init>(Lo/CrashlyticsReport$Session$Event$4;)V

    return-object p1

    .line 1142
    :pswitch_6
    new-instance p1, Lo/CrashlyticsReport$Session$Event;

    invoke-direct {p1}, Lo/CrashlyticsReport$Session$Event;-><init>()V

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

.method public final getDocuments()Lo/writeString$onNavigationEvent;
    .locals 2

    .line 412
    iget v0, p0, Lo/CrashlyticsReport$Session$Event;->targetTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 413
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event;->targetType_:Ljava/lang/Object;

    check-cast v0, Lo/writeString$onNavigationEvent;

    return-object v0

    .line 415
    :cond_0
    invoke-static {}, Lo/writeString$onNavigationEvent;->ICustomTabsCallback()Lo/writeString$onNavigationEvent;

    move-result-object v0

    return-object v0
.end method

.method public final getLastLimboFreeSnapshotVersion()Lo/getCustomHeaders;
    .locals 1

    .line 485
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event;->lastLimboFreeSnapshotVersion_:Lo/getCustomHeaders;

    if-nez v0, :cond_0

    invoke-static {}, Lo/getCustomHeaders;->ICustomTabsCallback()Lo/getCustomHeaders;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getLastListenSequenceNumber()J
    .locals 2

    .line 277
    iget-wide v0, p0, Lo/CrashlyticsReport$Session$Event;->lastListenSequenceNumber_:J

    return-wide v0
.end method

.method public final getQuery()Lo/writeString$extraCallback;
    .locals 2

    .line 342
    iget v0, p0, Lo/CrashlyticsReport$Session$Event;->targetTypeCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 343
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event;->targetType_:Ljava/lang/Object;

    check-cast v0, Lo/writeString$extraCallback;

    return-object v0

    .line 345
    :cond_0
    invoke-static {}, Lo/writeString$extraCallback;->ICustomTabsCallback()Lo/writeString$extraCallback;

    move-result-object v0

    return-object v0
.end method

.method public final getResumeToken()Lo/SessionProtobufHelper;
    .locals 1

    .line 207
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event;->resumeToken_:Lo/SessionProtobufHelper;

    return-object v0
.end method

.method public final getSnapshotVersion()Lo/getCustomHeaders;
    .locals 1

    .line 134
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event;->snapshotVersion_:Lo/getCustomHeaders;

    if-nez v0, :cond_0

    invoke-static {}, Lo/getCustomHeaders;->ICustomTabsCallback()Lo/getCustomHeaders;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getTargetId()I
    .locals 1

    .line 80
    iget v0, p0, Lo/CrashlyticsReport$Session$Event;->targetId_:I

    return v0
.end method

.method public final getTargetTypeCase()Lo/CrashlyticsReport$Session$Event$extraCallback;
    .locals 1

    .line 58
    iget v0, p0, Lo/CrashlyticsReport$Session$Event;->targetTypeCase_:I

    invoke-static {v0}, Lo/CrashlyticsReport$Session$Event$extraCallback;->forNumber(I)Lo/CrashlyticsReport$Session$Event$extraCallback;

    move-result-object v0

    return-object v0
.end method

.method public final hasDocuments()Z
    .locals 2

    .line 401
    iget v0, p0, Lo/CrashlyticsReport$Session$Event;->targetTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasLastLimboFreeSnapshotVersion()Z
    .locals 1

    .line 473
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event;->lastLimboFreeSnapshotVersion_:Lo/getCustomHeaders;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasQuery()Z
    .locals 2

    .line 331
    iget v0, p0, Lo/CrashlyticsReport$Session$Event;->targetTypeCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasSnapshotVersion()Z
    .locals 1

    .line 121
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event;->snapshotVersion_:Lo/getCustomHeaders;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
