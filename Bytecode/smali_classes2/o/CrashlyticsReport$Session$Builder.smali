.class public final Lo/CrashlyticsReport$Session$Builder;
.super Lo/getEventAppExecutionSize;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;,
        Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/CrashlyticsReport$Session$Builder;",
        "Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Builder;

.field public static final DOCUMENT_FIELD_NUMBER:I = 0x2

.field public static final HAS_COMMITTED_MUTATIONS_FIELD_NUMBER:I = 0x4

.field public static final NO_DOCUMENT_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lo/areReportsAvailable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/CrashlyticsReport$Session$Builder;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNKNOWN_DOCUMENT_FIELD_NUMBER:I = 0x3


# instance fields
.field private documentTypeCase_:I

.field private documentType_:Ljava/lang/Object;

.field private hasCommittedMutations_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 763
    new-instance v0, Lo/CrashlyticsReport$Session$Builder;

    invoke-direct {v0}, Lo/CrashlyticsReport$Session$Builder;-><init>()V

    .line 766
    sput-object v0, Lo/CrashlyticsReport$Session$Builder;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Builder;

    .line 767
    const-class v1, Lo/CrashlyticsReport$Session$Builder;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lo/CrashlyticsReport$Session$Builder;->documentTypeCase_:I

    return-void
.end method

.method static synthetic access$000()Lo/CrashlyticsReport$Session$Builder;
    .locals 1

    .line 15
    sget-object v0, Lo/CrashlyticsReport$Session$Builder;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Builder;

    return-object v0
.end method

.method static synthetic access$100(Lo/CrashlyticsReport$Session$Builder;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Builder;->clearDocumentType()V

    return-void
.end method

.method static synthetic access$1000(Lo/CrashlyticsReport$Session$Builder;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Builder;->clearUnknownDocument()V

    return-void
.end method

.method static synthetic access$1100(Lo/CrashlyticsReport$Session$Builder;Z)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Builder;->setHasCommittedMutations(Z)V

    return-void
.end method

.method static synthetic access$1200(Lo/CrashlyticsReport$Session$Builder;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Builder;->clearHasCommittedMutations()V

    return-void
.end method

.method static synthetic access$200(Lo/CrashlyticsReport$Session$Builder;Lo/setIdentifierFromUtf8Bytes;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Builder;->setNoDocument(Lo/setIdentifierFromUtf8Bytes;)V

    return-void
.end method

.method static synthetic access$300(Lo/CrashlyticsReport$Session$Builder;Lo/setIdentifierFromUtf8Bytes;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Builder;->mergeNoDocument(Lo/setIdentifierFromUtf8Bytes;)V

    return-void
.end method

.method static synthetic access$400(Lo/CrashlyticsReport$Session$Builder;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Builder;->clearNoDocument()V

    return-void
.end method

.method static synthetic access$500(Lo/CrashlyticsReport$Session$Builder;Lo/writeDouble;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Builder;->setDocument(Lo/writeDouble;)V

    return-void
.end method

.method static synthetic access$600(Lo/CrashlyticsReport$Session$Builder;Lo/writeDouble;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Builder;->mergeDocument(Lo/writeDouble;)V

    return-void
.end method

.method static synthetic access$700(Lo/CrashlyticsReport$Session$Builder;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Builder;->clearDocument()V

    return-void
.end method

.method static synthetic access$800(Lo/CrashlyticsReport$Session$Builder;Lo/CrashlyticsReport$Session$Device;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Builder;->setUnknownDocument(Lo/CrashlyticsReport$Session$Device;)V

    return-void
.end method

.method static synthetic access$900(Lo/CrashlyticsReport$Session$Builder;Lo/CrashlyticsReport$Session$Device;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Builder;->mergeUnknownDocument(Lo/CrashlyticsReport$Session$Device;)V

    return-void
.end method

.method private clearDocument()V
    .locals 2

    .line 201
    iget v0, p0, Lo/CrashlyticsReport$Session$Builder;->documentTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 202
    iput v0, p0, Lo/CrashlyticsReport$Session$Builder;->documentTypeCase_:I

    const/4 v0, 0x0

    .line 203
    iput-object v0, p0, Lo/CrashlyticsReport$Session$Builder;->documentType_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearDocumentType()V
    .locals 1

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lo/CrashlyticsReport$Session$Builder;->documentTypeCase_:I

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lo/CrashlyticsReport$Session$Builder;->documentType_:Ljava/lang/Object;

    return-void
.end method

.method private clearHasCommittedMutations()V
    .locals 1

    const/4 v0, 0x0

    .line 321
    iput-boolean v0, p0, Lo/CrashlyticsReport$Session$Builder;->hasCommittedMutations_:Z

    return-void
.end method

.method private clearNoDocument()V
    .locals 2

    .line 131
    iget v0, p0, Lo/CrashlyticsReport$Session$Builder;->documentTypeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 132
    iput v0, p0, Lo/CrashlyticsReport$Session$Builder;->documentTypeCase_:I

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lo/CrashlyticsReport$Session$Builder;->documentType_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearUnknownDocument()V
    .locals 2

    .line 271
    iget v0, p0, Lo/CrashlyticsReport$Session$Builder;->documentTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 272
    iput v0, p0, Lo/CrashlyticsReport$Session$Builder;->documentTypeCase_:I

    const/4 v0, 0x0

    .line 273
    iput-object v0, p0, Lo/CrashlyticsReport$Session$Builder;->documentType_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lo/CrashlyticsReport$Session$Builder;
    .locals 1

    .line 772
    sget-object v0, Lo/CrashlyticsReport$Session$Builder;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Builder;

    return-object v0
.end method

.method private mergeDocument(Lo/writeDouble;)V
    .locals 3

    .line 184
    iget v0, p0, Lo/CrashlyticsReport$Session$Builder;->documentTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/CrashlyticsReport$Session$Builder;->documentType_:Ljava/lang/Object;

    .line 185
    invoke-static {}, Lo/writeDouble;->onNavigationEvent()Lo/writeDouble;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 186
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Builder;->documentType_:Ljava/lang/Object;

    check-cast v0, Lo/writeDouble;

    invoke-static {v0}, Lo/writeDouble;->onPostMessage(Lo/writeDouble;)Lo/writeDouble$onPostMessage;

    move-result-object v0

    .line 187
    invoke-virtual {v0, p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->mergeFrom(Lo/getEventAppExecutionSize;)Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object p1

    check-cast p1, Lo/writeDouble$onPostMessage;

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->buildPartial()Lo/getEventAppExecutionSize;

    move-result-object p1

    iput-object p1, p0, Lo/CrashlyticsReport$Session$Builder;->documentType_:Ljava/lang/Object;

    goto :goto_0

    .line 189
    :cond_0
    iput-object p1, p0, Lo/CrashlyticsReport$Session$Builder;->documentType_:Ljava/lang/Object;

    .line 191
    :goto_0
    iput v1, p0, Lo/CrashlyticsReport$Session$Builder;->documentTypeCase_:I

    return-void
.end method

.method private mergeNoDocument(Lo/setIdentifierFromUtf8Bytes;)V
    .locals 3

    .line 114
    iget v0, p0, Lo/CrashlyticsReport$Session$Builder;->documentTypeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/CrashlyticsReport$Session$Builder;->documentType_:Ljava/lang/Object;

    .line 115
    invoke-static {}, Lo/setIdentifierFromUtf8Bytes;->getDefaultInstance()Lo/setIdentifierFromUtf8Bytes;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 116
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Builder;->documentType_:Ljava/lang/Object;

    check-cast v0, Lo/setIdentifierFromUtf8Bytes;

    invoke-static {v0}, Lo/setIdentifierFromUtf8Bytes;->newBuilder(Lo/setIdentifierFromUtf8Bytes;)Lo/setIdentifierFromUtf8Bytes$extraCallback;

    move-result-object v0

    .line 117
    invoke-virtual {v0, p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->mergeFrom(Lo/getEventAppExecutionSize;)Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object p1

    check-cast p1, Lo/setIdentifierFromUtf8Bytes$extraCallback;

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->buildPartial()Lo/getEventAppExecutionSize;

    move-result-object p1

    iput-object p1, p0, Lo/CrashlyticsReport$Session$Builder;->documentType_:Ljava/lang/Object;

    goto :goto_0

    .line 119
    :cond_0
    iput-object p1, p0, Lo/CrashlyticsReport$Session$Builder;->documentType_:Ljava/lang/Object;

    .line 121
    :goto_0
    iput v1, p0, Lo/CrashlyticsReport$Session$Builder;->documentTypeCase_:I

    return-void
.end method

.method private mergeUnknownDocument(Lo/CrashlyticsReport$Session$Device;)V
    .locals 3

    .line 254
    iget v0, p0, Lo/CrashlyticsReport$Session$Builder;->documentTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/CrashlyticsReport$Session$Builder;->documentType_:Ljava/lang/Object;

    .line 255
    invoke-static {}, Lo/CrashlyticsReport$Session$Device;->getDefaultInstance()Lo/CrashlyticsReport$Session$Device;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 256
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Builder;->documentType_:Ljava/lang/Object;

    check-cast v0, Lo/CrashlyticsReport$Session$Device;

    invoke-static {v0}, Lo/CrashlyticsReport$Session$Device;->newBuilder(Lo/CrashlyticsReport$Session$Device;)Lo/CrashlyticsReport$Session$Device$onNavigationEvent;

    move-result-object v0

    .line 257
    invoke-virtual {v0, p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->mergeFrom(Lo/getEventAppExecutionSize;)Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object p1

    check-cast p1, Lo/CrashlyticsReport$Session$Device$onNavigationEvent;

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->buildPartial()Lo/getEventAppExecutionSize;

    move-result-object p1

    iput-object p1, p0, Lo/CrashlyticsReport$Session$Builder;->documentType_:Ljava/lang/Object;

    goto :goto_0

    .line 259
    :cond_0
    iput-object p1, p0, Lo/CrashlyticsReport$Session$Builder;->documentType_:Ljava/lang/Object;

    .line 261
    :goto_0
    iput v1, p0, Lo/CrashlyticsReport$Session$Builder;->documentTypeCase_:I

    return-void
.end method

.method public static newBuilder()Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;
    .locals 1

    .line 399
    sget-object v0, Lo/CrashlyticsReport$Session$Builder;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Builder;

    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->createBuilder()Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;

    return-object v0
.end method

.method public static newBuilder(Lo/CrashlyticsReport$Session$Builder;)Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;
    .locals 1

    .line 402
    sget-object v0, Lo/CrashlyticsReport$Session$Builder;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Builder;

    invoke-virtual {v0, p0}, Lo/getEventAppExecutionSize;->createBuilder(Lo/getEventAppExecutionSize;)Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lo/CrashlyticsReport$Session$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    sget-object v0, Lo/CrashlyticsReport$Session$Builder;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Builder;

    invoke-static {v0, p0}, Lo/CrashlyticsReport$Session$Builder;->parseDelimitedFrom(Lo/getEventAppExecutionSize;Ljava/io/InputStream;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/CrashlyticsReport$Session$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 382
    sget-object v0, Lo/CrashlyticsReport$Session$Builder;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Builder;

    invoke-static {v0, p0, p1}, Lo/CrashlyticsReport$Session$Builder;->parseDelimitedFrom(Lo/getEventAppExecutionSize;Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Builder;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lo/CrashlyticsReport$Session$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    sget-object v0, Lo/CrashlyticsReport$Session$Builder;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Builder;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Ljava/io/InputStream;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Builder;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/CrashlyticsReport$Session$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 371
    sget-object v0, Lo/CrashlyticsReport$Session$Builder;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Builder;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Builder;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lo/CrashlyticsReport$Session$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 327
    sget-object v0, Lo/CrashlyticsReport$Session$Builder;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Builder;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Ljava/nio/ByteBuffer;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Builder;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lo/writeSessionEventDevice;)Lo/CrashlyticsReport$Session$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 334
    sget-object v0, Lo/CrashlyticsReport$Session$Builder;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Builder;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Ljava/nio/ByteBuffer;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Builder;

    return-object p0
.end method

.method public static parseFrom(Lo/SessionProtobufHelper;)Lo/CrashlyticsReport$Session$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 340
    sget-object v0, Lo/CrashlyticsReport$Session$Builder;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Builder;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Lo/SessionProtobufHelper;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Builder;

    return-object p0
.end method

.method public static parseFrom(Lo/SessionProtobufHelper;Lo/writeSessionEventDevice;)Lo/CrashlyticsReport$Session$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 347
    sget-object v0, Lo/CrashlyticsReport$Session$Builder;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Builder;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Lo/SessionProtobufHelper;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Builder;

    return-object p0
.end method

.method public static parseFrom(Lo/writeSessionAppClsId;)Lo/CrashlyticsReport$Session$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 387
    sget-object v0, Lo/CrashlyticsReport$Session$Builder;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Builder;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Lo/writeSessionAppClsId;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Builder;

    return-object p0
.end method

.method public static parseFrom(Lo/writeSessionAppClsId;Lo/writeSessionEventDevice;)Lo/CrashlyticsReport$Session$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 394
    sget-object v0, Lo/CrashlyticsReport$Session$Builder;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Builder;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Lo/writeSessionAppClsId;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Builder;

    return-object p0
.end method

.method public static parseFrom([B)Lo/CrashlyticsReport$Session$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 352
    sget-object v0, Lo/CrashlyticsReport$Session$Builder;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Builder;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;[B)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Builder;

    return-object p0
.end method

.method public static parseFrom([BLo/writeSessionEventDevice;)Lo/CrashlyticsReport$Session$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 359
    sget-object v0, Lo/CrashlyticsReport$Session$Builder;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Builder;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;[BLo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Builder;

    return-object p0
.end method

.method public static parser()Lo/areReportsAvailable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/areReportsAvailable<",
            "Lo/CrashlyticsReport$Session$Builder;",
            ">;"
        }
    .end annotation

    .line 778
    sget-object v0, Lo/CrashlyticsReport$Session$Builder;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Builder;

    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->getParserForType()Lo/areReportsAvailable;

    move-result-object v0

    return-object v0
.end method

.method private setDocument(Lo/writeDouble;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lo/CrashlyticsReport$Session$Builder;->documentType_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 173
    iput p1, p0, Lo/CrashlyticsReport$Session$Builder;->documentTypeCase_:I

    return-void
.end method

.method private setHasCommittedMutations(Z)V
    .locals 0

    .line 307
    iput-boolean p1, p0, Lo/CrashlyticsReport$Session$Builder;->hasCommittedMutations_:Z

    return-void
.end method

.method private setNoDocument(Lo/setIdentifierFromUtf8Bytes;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lo/CrashlyticsReport$Session$Builder;->documentType_:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 103
    iput p1, p0, Lo/CrashlyticsReport$Session$Builder;->documentTypeCase_:I

    return-void
.end method

.method private setUnknownDocument(Lo/CrashlyticsReport$Session$Device;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lo/CrashlyticsReport$Session$Builder;->documentType_:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 243
    iput p1, p0, Lo/CrashlyticsReport$Session$Builder;->documentTypeCase_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 709
    sget-object p2, Lo/CrashlyticsReport$Session$Builder$4;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 756
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 750
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 735
    :pswitch_2
    sget-object p1, Lo/CrashlyticsReport$Session$Builder;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 737
    const-class p1, Lo/CrashlyticsReport$Session$Builder;

    monitor-enter p1

    .line 738
    :try_start_0
    sget-object p2, Lo/CrashlyticsReport$Session$Builder;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 740
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/CrashlyticsReport$Session$Builder;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Builder;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 743
    sput-object p2, Lo/CrashlyticsReport$Session$Builder;->PARSER:Lo/areReportsAvailable;

    .line 745
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

    .line 732
    :pswitch_3
    sget-object p1, Lo/CrashlyticsReport$Session$Builder;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Builder;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "documentType_"

    aput-object v0, p1, p3

    const-string p3, "documentTypeCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 717
    const-class p3, Lo/setIdentifierFromUtf8Bytes;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, Lo/writeDouble;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-class p3, Lo/CrashlyticsReport$Session$Device;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "hasCommittedMutations_"

    aput-object p3, p1, p2

    .line 728
    sget-object p2, Lo/CrashlyticsReport$Session$Builder;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Builder;

    const-string p3, "\u0000\u0004\u0001\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003<\u0000\u0004\u0007"

    invoke-static {p2, p3, p1}, Lo/CrashlyticsReport$Session$Builder;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 714
    :pswitch_5
    new-instance p1, Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;

    invoke-direct {p1, p3}, Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;-><init>(Lo/CrashlyticsReport$Session$Builder$4;)V

    return-object p1

    .line 711
    :pswitch_6
    new-instance p1, Lo/CrashlyticsReport$Session$Builder;

    invoke-direct {p1}, Lo/CrashlyticsReport$Session$Builder;-><init>()V

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

.method public final getDocument()Lo/writeDouble;
    .locals 2

    .line 158
    iget v0, p0, Lo/CrashlyticsReport$Session$Builder;->documentTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 159
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Builder;->documentType_:Ljava/lang/Object;

    check-cast v0, Lo/writeDouble;

    return-object v0

    .line 161
    :cond_0
    invoke-static {}, Lo/writeDouble;->onNavigationEvent()Lo/writeDouble;

    move-result-object v0

    return-object v0
.end method

.method public final getDocumentTypeCase()Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;
    .locals 1

    .line 58
    iget v0, p0, Lo/CrashlyticsReport$Session$Builder;->documentTypeCase_:I

    invoke-static {v0}, Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;->forNumber(I)Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;

    move-result-object v0

    return-object v0
.end method

.method public final getHasCommittedMutations()Z
    .locals 1

    .line 292
    iget-boolean v0, p0, Lo/CrashlyticsReport$Session$Builder;->hasCommittedMutations_:Z

    return v0
.end method

.method public final getNoDocument()Lo/setIdentifierFromUtf8Bytes;
    .locals 2

    .line 88
    iget v0, p0, Lo/CrashlyticsReport$Session$Builder;->documentTypeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 89
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Builder;->documentType_:Ljava/lang/Object;

    check-cast v0, Lo/setIdentifierFromUtf8Bytes;

    return-object v0

    .line 91
    :cond_0
    invoke-static {}, Lo/setIdentifierFromUtf8Bytes;->getDefaultInstance()Lo/setIdentifierFromUtf8Bytes;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownDocument()Lo/CrashlyticsReport$Session$Device;
    .locals 2

    .line 228
    iget v0, p0, Lo/CrashlyticsReport$Session$Builder;->documentTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 229
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Builder;->documentType_:Ljava/lang/Object;

    check-cast v0, Lo/CrashlyticsReport$Session$Device;

    return-object v0

    .line 231
    :cond_0
    invoke-static {}, Lo/CrashlyticsReport$Session$Device;->getDefaultInstance()Lo/CrashlyticsReport$Session$Device;

    move-result-object v0

    return-object v0
.end method

.method public final hasDocument()Z
    .locals 2

    .line 147
    iget v0, p0, Lo/CrashlyticsReport$Session$Builder;->documentTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasNoDocument()Z
    .locals 2

    .line 77
    iget v0, p0, Lo/CrashlyticsReport$Session$Builder;->documentTypeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasUnknownDocument()Z
    .locals 2

    .line 217
    iget v0, p0, Lo/CrashlyticsReport$Session$Builder;->documentTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
