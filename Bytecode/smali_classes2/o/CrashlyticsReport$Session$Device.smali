.class public final Lo/CrashlyticsReport$Session$Device;
.super Lo/getEventAppExecutionSize;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CrashlyticsReport$Session$Device$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/CrashlyticsReport$Session$Device;",
        "Lo/CrashlyticsReport$Session$Device$onNavigationEvent;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Device;

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lo/areReportsAvailable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/CrashlyticsReport$Session$Device;",
            ">;"
        }
    .end annotation
.end field

.field public static final VERSION_FIELD_NUMBER:I = 0x2


# instance fields
.field private name_:Ljava/lang/String;

.field private version_:Lo/getCustomHeaders;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 462
    new-instance v0, Lo/CrashlyticsReport$Session$Device;

    invoke-direct {v0}, Lo/CrashlyticsReport$Session$Device;-><init>()V

    .line 465
    sput-object v0, Lo/CrashlyticsReport$Session$Device;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Device;

    .line 466
    const-class v1, Lo/CrashlyticsReport$Session$Device;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    const-string v0, ""

    .line 20
    iput-object v0, p0, Lo/CrashlyticsReport$Session$Device;->name_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lo/CrashlyticsReport$Session$Device;
    .locals 1

    .line 14
    sget-object v0, Lo/CrashlyticsReport$Session$Device;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Device;

    return-object v0
.end method

.method static synthetic access$100(Lo/CrashlyticsReport$Session$Device;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Device;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lo/CrashlyticsReport$Session$Device;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Device;->clearName()V

    return-void
.end method

.method static synthetic access$300(Lo/CrashlyticsReport$Session$Device;Lo/SessionProtobufHelper;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Device;->setNameBytes(Lo/SessionProtobufHelper;)V

    return-void
.end method

.method static synthetic access$400(Lo/CrashlyticsReport$Session$Device;Lo/getCustomHeaders;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Device;->setVersion(Lo/getCustomHeaders;)V

    return-void
.end method

.method static synthetic access$500(Lo/CrashlyticsReport$Session$Device;Lo/getCustomHeaders;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Device;->mergeVersion(Lo/getCustomHeaders;)V

    return-void
.end method

.method static synthetic access$600(Lo/CrashlyticsReport$Session$Device;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Device;->clearVersion()V

    return-void
.end method

.method private clearName()V
    .locals 1

    .line 76
    invoke-static {}, Lo/CrashlyticsReport$Session$Device;->getDefaultInstance()Lo/CrashlyticsReport$Session$Device;

    move-result-object v0

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Device;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/CrashlyticsReport$Session$Device;->name_:Ljava/lang/String;

    return-void
.end method

.method private clearVersion()V
    .locals 1

    const/4 v0, 0x0

    .line 156
    iput-object v0, p0, Lo/CrashlyticsReport$Session$Device;->version_:Lo/getCustomHeaders;

    return-void
.end method

.method public static getDefaultInstance()Lo/CrashlyticsReport$Session$Device;
    .locals 1

    .line 471
    sget-object v0, Lo/CrashlyticsReport$Session$Device;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Device;

    return-object v0
.end method

.method private mergeVersion(Lo/getCustomHeaders;)V
    .locals 2

    .line 140
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Device;->version_:Lo/getCustomHeaders;

    if-eqz v0, :cond_0

    .line 141
    invoke-static {}, Lo/getCustomHeaders;->ICustomTabsCallback()Lo/getCustomHeaders;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 142
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Device;->version_:Lo/getCustomHeaders;

    .line 143
    invoke-static {v0}, Lo/getCustomHeaders;->ICustomTabsCallback(Lo/getCustomHeaders;)Lo/getCustomHeaders$onMessageChannelReady;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->mergeFrom(Lo/getEventAppExecutionSize;)Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object p1

    check-cast p1, Lo/getCustomHeaders$onMessageChannelReady;

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->buildPartial()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/getCustomHeaders;

    iput-object p1, p0, Lo/CrashlyticsReport$Session$Device;->version_:Lo/getCustomHeaders;

    return-void

    .line 145
    :cond_0
    iput-object p1, p0, Lo/CrashlyticsReport$Session$Device;->version_:Lo/getCustomHeaders;

    return-void
.end method

.method public static newBuilder()Lo/CrashlyticsReport$Session$Device$onNavigationEvent;
    .locals 1

    .line 235
    sget-object v0, Lo/CrashlyticsReport$Session$Device;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Device;

    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->createBuilder()Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/CrashlyticsReport$Session$Device$onNavigationEvent;

    return-object v0
.end method

.method public static newBuilder(Lo/CrashlyticsReport$Session$Device;)Lo/CrashlyticsReport$Session$Device$onNavigationEvent;
    .locals 1

    .line 238
    sget-object v0, Lo/CrashlyticsReport$Session$Device;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Device;

    invoke-virtual {v0, p0}, Lo/getEventAppExecutionSize;->createBuilder(Lo/getEventAppExecutionSize;)Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Device$onNavigationEvent;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lo/CrashlyticsReport$Session$Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    sget-object v0, Lo/CrashlyticsReport$Session$Device;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Device;

    invoke-static {v0, p0}, Lo/CrashlyticsReport$Session$Device;->parseDelimitedFrom(Lo/getEventAppExecutionSize;Ljava/io/InputStream;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Device;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/CrashlyticsReport$Session$Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    sget-object v0, Lo/CrashlyticsReport$Session$Device;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Device;

    invoke-static {v0, p0, p1}, Lo/CrashlyticsReport$Session$Device;->parseDelimitedFrom(Lo/getEventAppExecutionSize;Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Device;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lo/CrashlyticsReport$Session$Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    sget-object v0, Lo/CrashlyticsReport$Session$Device;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Device;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Ljava/io/InputStream;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Device;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/CrashlyticsReport$Session$Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    sget-object v0, Lo/CrashlyticsReport$Session$Device;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Device;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Device;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lo/CrashlyticsReport$Session$Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 163
    sget-object v0, Lo/CrashlyticsReport$Session$Device;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Device;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Ljava/nio/ByteBuffer;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Device;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lo/writeSessionEventDevice;)Lo/CrashlyticsReport$Session$Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 170
    sget-object v0, Lo/CrashlyticsReport$Session$Device;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Device;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Ljava/nio/ByteBuffer;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Device;

    return-object p0
.end method

.method public static parseFrom(Lo/SessionProtobufHelper;)Lo/CrashlyticsReport$Session$Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 176
    sget-object v0, Lo/CrashlyticsReport$Session$Device;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Device;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Lo/SessionProtobufHelper;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Device;

    return-object p0
.end method

.method public static parseFrom(Lo/SessionProtobufHelper;Lo/writeSessionEventDevice;)Lo/CrashlyticsReport$Session$Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 183
    sget-object v0, Lo/CrashlyticsReport$Session$Device;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Device;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Lo/SessionProtobufHelper;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Device;

    return-object p0
.end method

.method public static parseFrom(Lo/writeSessionAppClsId;)Lo/CrashlyticsReport$Session$Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    sget-object v0, Lo/CrashlyticsReport$Session$Device;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Device;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Lo/writeSessionAppClsId;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Device;

    return-object p0
.end method

.method public static parseFrom(Lo/writeSessionAppClsId;Lo/writeSessionEventDevice;)Lo/CrashlyticsReport$Session$Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    sget-object v0, Lo/CrashlyticsReport$Session$Device;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Device;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Lo/writeSessionAppClsId;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Device;

    return-object p0
.end method

.method public static parseFrom([B)Lo/CrashlyticsReport$Session$Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 188
    sget-object v0, Lo/CrashlyticsReport$Session$Device;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Device;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;[B)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Device;

    return-object p0
.end method

.method public static parseFrom([BLo/writeSessionEventDevice;)Lo/CrashlyticsReport$Session$Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 195
    sget-object v0, Lo/CrashlyticsReport$Session$Device;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Device;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;[BLo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Device;

    return-object p0
.end method

.method public static parser()Lo/areReportsAvailable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/areReportsAvailable<",
            "Lo/CrashlyticsReport$Session$Device;",
            ">;"
        }
    .end annotation

    .line 477
    sget-object v0, Lo/CrashlyticsReport$Session$Device;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Device;

    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->getParserForType()Lo/areReportsAvailable;

    move-result-object v0

    return-object v0
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lo/CrashlyticsReport$Session$Device;->name_:Ljava/lang/String;

    return-void
.end method

.method private setNameBytes(Lo/SessionProtobufHelper;)V
    .locals 0

    .line 89
    invoke-static {p1}, Lo/CrashlyticsReport$Session$Device;->checkByteStringIsUtf8(Lo/SessionProtobufHelper;)V

    .line 90
    invoke-virtual {p1}, Lo/SessionProtobufHelper;->onNavigationEvent()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/CrashlyticsReport$Session$Device;->name_:Ljava/lang/String;

    return-void
.end method

.method private setVersion(Lo/getCustomHeaders;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lo/CrashlyticsReport$Session$Device;->version_:Lo/getCustomHeaders;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 412
    sget-object p2, Lo/CrashlyticsReport$Session$Device$5;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 455
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 449
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 434
    :pswitch_2
    sget-object p1, Lo/CrashlyticsReport$Session$Device;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 436
    const-class p1, Lo/CrashlyticsReport$Session$Device;

    monitor-enter p1

    .line 437
    :try_start_0
    sget-object p2, Lo/CrashlyticsReport$Session$Device;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 439
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/CrashlyticsReport$Session$Device;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Device;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 442
    sput-object p2, Lo/CrashlyticsReport$Session$Device;->PARSER:Lo/areReportsAvailable;

    .line 444
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

    .line 431
    :pswitch_3
    sget-object p1, Lo/CrashlyticsReport$Session$Device;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Device;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "name_"

    aput-object v0, p1, p3

    const-string p3, "version_"

    aput-object p3, p1, p2

    .line 427
    sget-object p2, Lo/CrashlyticsReport$Session$Device;->DEFAULT_INSTANCE:Lo/CrashlyticsReport$Session$Device;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\t"

    invoke-static {p2, p3, p1}, Lo/CrashlyticsReport$Session$Device;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 417
    :pswitch_5
    new-instance p1, Lo/CrashlyticsReport$Session$Device$onNavigationEvent;

    invoke-direct {p1, p3}, Lo/CrashlyticsReport$Session$Device$onNavigationEvent;-><init>(Lo/CrashlyticsReport$Session$Device$5;)V

    return-object p1

    .line 414
    :pswitch_6
    new-instance p1, Lo/CrashlyticsReport$Session$Device;

    invoke-direct {p1}, Lo/CrashlyticsReport$Session$Device;-><init>()V

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

    .line 35
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Device;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public final getNameBytes()Lo/SessionProtobufHelper;
    .locals 1

    .line 49
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Device;->name_:Ljava/lang/String;

    invoke-static {v0}, Lo/SessionProtobufHelper;->extraCallback(Ljava/lang/String;)Lo/SessionProtobufHelper;

    move-result-object v0

    return-object v0
.end method

.method public final getVersion()Lo/getCustomHeaders;
    .locals 1

    .line 116
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Device;->version_:Lo/getCustomHeaders;

    if-nez v0, :cond_0

    invoke-static {}, Lo/getCustomHeaders;->ICustomTabsCallback()Lo/getCustomHeaders;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final hasVersion()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Device;->version_:Lo/getCustomHeaders;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
