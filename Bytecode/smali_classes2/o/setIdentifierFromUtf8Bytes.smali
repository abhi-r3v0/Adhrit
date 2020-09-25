.class public final Lo/setIdentifierFromUtf8Bytes;
.super Lo/getEventAppExecutionSize;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setIdentifierFromUtf8Bytes$extraCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/setIdentifierFromUtf8Bytes;",
        "Lo/setIdentifierFromUtf8Bytes$extraCallback;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lo/setIdentifierFromUtf8Bytes;

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lo/areReportsAvailable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/setIdentifierFromUtf8Bytes;",
            ">;"
        }
    .end annotation
.end field

.field public static final READ_TIME_FIELD_NUMBER:I = 0x2


# instance fields
.field private name_:Ljava/lang/String;

.field private readTime_:Lo/getCustomHeaders;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 460
    new-instance v0, Lo/setIdentifierFromUtf8Bytes;

    invoke-direct {v0}, Lo/setIdentifierFromUtf8Bytes;-><init>()V

    .line 463
    sput-object v0, Lo/setIdentifierFromUtf8Bytes;->DEFAULT_INSTANCE:Lo/setIdentifierFromUtf8Bytes;

    .line 464
    const-class v1, Lo/setIdentifierFromUtf8Bytes;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lo/setIdentifierFromUtf8Bytes;->name_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lo/setIdentifierFromUtf8Bytes;
    .locals 1

    .line 13
    sget-object v0, Lo/setIdentifierFromUtf8Bytes;->DEFAULT_INSTANCE:Lo/setIdentifierFromUtf8Bytes;

    return-object v0
.end method

.method static synthetic access$100(Lo/setIdentifierFromUtf8Bytes;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lo/setIdentifierFromUtf8Bytes;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lo/setIdentifierFromUtf8Bytes;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lo/setIdentifierFromUtf8Bytes;->clearName()V

    return-void
.end method

.method static synthetic access$300(Lo/setIdentifierFromUtf8Bytes;Lo/SessionProtobufHelper;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lo/setIdentifierFromUtf8Bytes;->setNameBytes(Lo/SessionProtobufHelper;)V

    return-void
.end method

.method static synthetic access$400(Lo/setIdentifierFromUtf8Bytes;Lo/getCustomHeaders;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lo/setIdentifierFromUtf8Bytes;->setReadTime(Lo/getCustomHeaders;)V

    return-void
.end method

.method static synthetic access$500(Lo/setIdentifierFromUtf8Bytes;Lo/getCustomHeaders;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lo/setIdentifierFromUtf8Bytes;->mergeReadTime(Lo/getCustomHeaders;)V

    return-void
.end method

.method static synthetic access$600(Lo/setIdentifierFromUtf8Bytes;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lo/setIdentifierFromUtf8Bytes;->clearReadTime()V

    return-void
.end method

.method private clearName()V
    .locals 1

    .line 75
    invoke-static {}, Lo/setIdentifierFromUtf8Bytes;->getDefaultInstance()Lo/setIdentifierFromUtf8Bytes;

    move-result-object v0

    invoke-virtual {v0}, Lo/setIdentifierFromUtf8Bytes;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/setIdentifierFromUtf8Bytes;->name_:Ljava/lang/String;

    return-void
.end method

.method private clearReadTime()V
    .locals 1

    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lo/setIdentifierFromUtf8Bytes;->readTime_:Lo/getCustomHeaders;

    return-void
.end method

.method public static getDefaultInstance()Lo/setIdentifierFromUtf8Bytes;
    .locals 1

    .line 469
    sget-object v0, Lo/setIdentifierFromUtf8Bytes;->DEFAULT_INSTANCE:Lo/setIdentifierFromUtf8Bytes;

    return-object v0
.end method

.method private mergeReadTime(Lo/getCustomHeaders;)V
    .locals 2

    .line 139
    iget-object v0, p0, Lo/setIdentifierFromUtf8Bytes;->readTime_:Lo/getCustomHeaders;

    if-eqz v0, :cond_0

    .line 140
    invoke-static {}, Lo/getCustomHeaders;->ICustomTabsCallback()Lo/getCustomHeaders;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 141
    iget-object v0, p0, Lo/setIdentifierFromUtf8Bytes;->readTime_:Lo/getCustomHeaders;

    .line 142
    invoke-static {v0}, Lo/getCustomHeaders;->ICustomTabsCallback(Lo/getCustomHeaders;)Lo/getCustomHeaders$onMessageChannelReady;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->mergeFrom(Lo/getEventAppExecutionSize;)Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object p1

    check-cast p1, Lo/getCustomHeaders$onMessageChannelReady;

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->buildPartial()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/getCustomHeaders;

    iput-object p1, p0, Lo/setIdentifierFromUtf8Bytes;->readTime_:Lo/getCustomHeaders;

    return-void

    .line 144
    :cond_0
    iput-object p1, p0, Lo/setIdentifierFromUtf8Bytes;->readTime_:Lo/getCustomHeaders;

    return-void
.end method

.method public static newBuilder()Lo/setIdentifierFromUtf8Bytes$extraCallback;
    .locals 1

    .line 234
    sget-object v0, Lo/setIdentifierFromUtf8Bytes;->DEFAULT_INSTANCE:Lo/setIdentifierFromUtf8Bytes;

    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->createBuilder()Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/setIdentifierFromUtf8Bytes$extraCallback;

    return-object v0
.end method

.method public static newBuilder(Lo/setIdentifierFromUtf8Bytes;)Lo/setIdentifierFromUtf8Bytes$extraCallback;
    .locals 1

    .line 237
    sget-object v0, Lo/setIdentifierFromUtf8Bytes;->DEFAULT_INSTANCE:Lo/setIdentifierFromUtf8Bytes;

    invoke-virtual {v0, p0}, Lo/getEventAppExecutionSize;->createBuilder(Lo/getEventAppExecutionSize;)Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object p0

    check-cast p0, Lo/setIdentifierFromUtf8Bytes$extraCallback;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lo/setIdentifierFromUtf8Bytes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    sget-object v0, Lo/setIdentifierFromUtf8Bytes;->DEFAULT_INSTANCE:Lo/setIdentifierFromUtf8Bytes;

    invoke-static {v0, p0}, Lo/setIdentifierFromUtf8Bytes;->parseDelimitedFrom(Lo/getEventAppExecutionSize;Ljava/io/InputStream;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/setIdentifierFromUtf8Bytes;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/setIdentifierFromUtf8Bytes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    sget-object v0, Lo/setIdentifierFromUtf8Bytes;->DEFAULT_INSTANCE:Lo/setIdentifierFromUtf8Bytes;

    invoke-static {v0, p0, p1}, Lo/setIdentifierFromUtf8Bytes;->parseDelimitedFrom(Lo/getEventAppExecutionSize;Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/setIdentifierFromUtf8Bytes;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lo/setIdentifierFromUtf8Bytes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    sget-object v0, Lo/setIdentifierFromUtf8Bytes;->DEFAULT_INSTANCE:Lo/setIdentifierFromUtf8Bytes;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Ljava/io/InputStream;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/setIdentifierFromUtf8Bytes;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/setIdentifierFromUtf8Bytes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    sget-object v0, Lo/setIdentifierFromUtf8Bytes;->DEFAULT_INSTANCE:Lo/setIdentifierFromUtf8Bytes;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/setIdentifierFromUtf8Bytes;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lo/setIdentifierFromUtf8Bytes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 162
    sget-object v0, Lo/setIdentifierFromUtf8Bytes;->DEFAULT_INSTANCE:Lo/setIdentifierFromUtf8Bytes;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Ljava/nio/ByteBuffer;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/setIdentifierFromUtf8Bytes;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lo/writeSessionEventDevice;)Lo/setIdentifierFromUtf8Bytes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 169
    sget-object v0, Lo/setIdentifierFromUtf8Bytes;->DEFAULT_INSTANCE:Lo/setIdentifierFromUtf8Bytes;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Ljava/nio/ByteBuffer;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/setIdentifierFromUtf8Bytes;

    return-object p0
.end method

.method public static parseFrom(Lo/SessionProtobufHelper;)Lo/setIdentifierFromUtf8Bytes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 175
    sget-object v0, Lo/setIdentifierFromUtf8Bytes;->DEFAULT_INSTANCE:Lo/setIdentifierFromUtf8Bytes;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Lo/SessionProtobufHelper;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/setIdentifierFromUtf8Bytes;

    return-object p0
.end method

.method public static parseFrom(Lo/SessionProtobufHelper;Lo/writeSessionEventDevice;)Lo/setIdentifierFromUtf8Bytes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 182
    sget-object v0, Lo/setIdentifierFromUtf8Bytes;->DEFAULT_INSTANCE:Lo/setIdentifierFromUtf8Bytes;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Lo/SessionProtobufHelper;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/setIdentifierFromUtf8Bytes;

    return-object p0
.end method

.method public static parseFrom(Lo/writeSessionAppClsId;)Lo/setIdentifierFromUtf8Bytes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    sget-object v0, Lo/setIdentifierFromUtf8Bytes;->DEFAULT_INSTANCE:Lo/setIdentifierFromUtf8Bytes;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Lo/writeSessionAppClsId;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/setIdentifierFromUtf8Bytes;

    return-object p0
.end method

.method public static parseFrom(Lo/writeSessionAppClsId;Lo/writeSessionEventDevice;)Lo/setIdentifierFromUtf8Bytes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    sget-object v0, Lo/setIdentifierFromUtf8Bytes;->DEFAULT_INSTANCE:Lo/setIdentifierFromUtf8Bytes;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Lo/writeSessionAppClsId;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/setIdentifierFromUtf8Bytes;

    return-object p0
.end method

.method public static parseFrom([B)Lo/setIdentifierFromUtf8Bytes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 187
    sget-object v0, Lo/setIdentifierFromUtf8Bytes;->DEFAULT_INSTANCE:Lo/setIdentifierFromUtf8Bytes;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;[B)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/setIdentifierFromUtf8Bytes;

    return-object p0
.end method

.method public static parseFrom([BLo/writeSessionEventDevice;)Lo/setIdentifierFromUtf8Bytes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 194
    sget-object v0, Lo/setIdentifierFromUtf8Bytes;->DEFAULT_INSTANCE:Lo/setIdentifierFromUtf8Bytes;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;[BLo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/setIdentifierFromUtf8Bytes;

    return-object p0
.end method

.method public static parser()Lo/areReportsAvailable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/areReportsAvailable<",
            "Lo/setIdentifierFromUtf8Bytes;",
            ">;"
        }
    .end annotation

    .line 475
    sget-object v0, Lo/setIdentifierFromUtf8Bytes;->DEFAULT_INSTANCE:Lo/setIdentifierFromUtf8Bytes;

    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->getParserForType()Lo/areReportsAvailable;

    move-result-object v0

    return-object v0
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lo/setIdentifierFromUtf8Bytes;->name_:Ljava/lang/String;

    return-void
.end method

.method private setNameBytes(Lo/SessionProtobufHelper;)V
    .locals 0

    .line 88
    invoke-static {p1}, Lo/setIdentifierFromUtf8Bytes;->checkByteStringIsUtf8(Lo/SessionProtobufHelper;)V

    .line 89
    invoke-virtual {p1}, Lo/SessionProtobufHelper;->onNavigationEvent()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/setIdentifierFromUtf8Bytes;->name_:Ljava/lang/String;

    return-void
.end method

.method private setReadTime(Lo/getCustomHeaders;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lo/setIdentifierFromUtf8Bytes;->readTime_:Lo/getCustomHeaders;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 410
    sget-object p2, Lo/setIdentifierFromUtf8Bytes$5;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 453
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 447
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 432
    :pswitch_2
    sget-object p1, Lo/setIdentifierFromUtf8Bytes;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 434
    const-class p1, Lo/setIdentifierFromUtf8Bytes;

    monitor-enter p1

    .line 435
    :try_start_0
    sget-object p2, Lo/setIdentifierFromUtf8Bytes;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 437
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/setIdentifierFromUtf8Bytes;->DEFAULT_INSTANCE:Lo/setIdentifierFromUtf8Bytes;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 440
    sput-object p2, Lo/setIdentifierFromUtf8Bytes;->PARSER:Lo/areReportsAvailable;

    .line 442
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

    .line 429
    :pswitch_3
    sget-object p1, Lo/setIdentifierFromUtf8Bytes;->DEFAULT_INSTANCE:Lo/setIdentifierFromUtf8Bytes;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "name_"

    aput-object v0, p1, p3

    const-string p3, "readTime_"

    aput-object p3, p1, p2

    .line 425
    sget-object p2, Lo/setIdentifierFromUtf8Bytes;->DEFAULT_INSTANCE:Lo/setIdentifierFromUtf8Bytes;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\t"

    invoke-static {p2, p3, p1}, Lo/setIdentifierFromUtf8Bytes;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 415
    :pswitch_5
    new-instance p1, Lo/setIdentifierFromUtf8Bytes$extraCallback;

    invoke-direct {p1, p3}, Lo/setIdentifierFromUtf8Bytes$extraCallback;-><init>(Lo/setIdentifierFromUtf8Bytes$5;)V

    return-object p1

    .line 412
    :pswitch_6
    new-instance p1, Lo/setIdentifierFromUtf8Bytes;

    invoke-direct {p1}, Lo/setIdentifierFromUtf8Bytes;-><init>()V

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

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lo/setIdentifierFromUtf8Bytes;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public final getNameBytes()Lo/SessionProtobufHelper;
    .locals 1

    .line 48
    iget-object v0, p0, Lo/setIdentifierFromUtf8Bytes;->name_:Ljava/lang/String;

    invoke-static {v0}, Lo/SessionProtobufHelper;->extraCallback(Ljava/lang/String;)Lo/SessionProtobufHelper;

    move-result-object v0

    return-object v0
.end method

.method public final getReadTime()Lo/getCustomHeaders;
    .locals 1

    .line 115
    iget-object v0, p0, Lo/setIdentifierFromUtf8Bytes;->readTime_:Lo/getCustomHeaders;

    if-nez v0, :cond_0

    invoke-static {}, Lo/getCustomHeaders;->ICustomTabsCallback()Lo/getCustomHeaders;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final hasReadTime()Z
    .locals 1

    .line 104
    iget-object v0, p0, Lo/setIdentifierFromUtf8Bytes;->readTime_:Lo/getCustomHeaders;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
