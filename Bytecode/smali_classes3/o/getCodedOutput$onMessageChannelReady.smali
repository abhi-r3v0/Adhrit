.class public final Lo/getCodedOutput$onMessageChannelReady;
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
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getCodedOutput$onMessageChannelReady$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/getCodedOutput$onMessageChannelReady;",
        "Lo/getCodedOutput$onMessageChannelReady$onNavigationEvent;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lo/getCodedOutput$onMessageChannelReady;

.field public static final DEVELOPER_MODE_ENABLED_FIELD_NUMBER:I = 0x2

.field public static final LAST_FETCH_STATUS_FIELD_NUMBER:I = 0x1

.field public static final LAST_KNOWN_EXPERIMENT_START_TIME_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lo/areReportsAvailable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/getCodedOutput$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private developerModeEnabled_:Z

.field private lastFetchStatus_:I

.field private lastKnownExperimentStartTime_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2804
    new-instance v0, Lo/getCodedOutput$onMessageChannelReady;

    invoke-direct {v0}, Lo/getCodedOutput$onMessageChannelReady;-><init>()V

    .line 2807
    sput-object v0, Lo/getCodedOutput$onMessageChannelReady;->DEFAULT_INSTANCE:Lo/getCodedOutput$onMessageChannelReady;

    .line 2808
    const-class v1, Lo/getCodedOutput$onMessageChannelReady;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2437
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    return-void
.end method

.method static synthetic access$5200()Lo/getCodedOutput$onMessageChannelReady;
    .locals 1

    .line 2432
    sget-object v0, Lo/getCodedOutput$onMessageChannelReady;->DEFAULT_INSTANCE:Lo/getCodedOutput$onMessageChannelReady;

    return-object v0
.end method

.method static synthetic access$5300(Lo/getCodedOutput$onMessageChannelReady;I)V
    .locals 0

    .line 2432
    invoke-direct {p0, p1}, Lo/getCodedOutput$onMessageChannelReady;->setLastFetchStatus(I)V

    return-void
.end method

.method static synthetic access$5400(Lo/getCodedOutput$onMessageChannelReady;)V
    .locals 0

    .line 2432
    invoke-direct {p0}, Lo/getCodedOutput$onMessageChannelReady;->clearLastFetchStatus()V

    return-void
.end method

.method static synthetic access$5500(Lo/getCodedOutput$onMessageChannelReady;Z)V
    .locals 0

    .line 2432
    invoke-direct {p0, p1}, Lo/getCodedOutput$onMessageChannelReady;->setDeveloperModeEnabled(Z)V

    return-void
.end method

.method static synthetic access$5600(Lo/getCodedOutput$onMessageChannelReady;)V
    .locals 0

    .line 2432
    invoke-direct {p0}, Lo/getCodedOutput$onMessageChannelReady;->clearDeveloperModeEnabled()V

    return-void
.end method

.method static synthetic access$5700(Lo/getCodedOutput$onMessageChannelReady;J)V
    .locals 0

    .line 2432
    invoke-direct {p0, p1, p2}, Lo/getCodedOutput$onMessageChannelReady;->setLastKnownExperimentStartTime(J)V

    return-void
.end method

.method static synthetic access$5800(Lo/getCodedOutput$onMessageChannelReady;)V
    .locals 0

    .line 2432
    invoke-direct {p0}, Lo/getCodedOutput$onMessageChannelReady;->clearLastKnownExperimentStartTime()V

    return-void
.end method

.method private clearDeveloperModeEnabled()V
    .locals 1

    .line 2504
    iget v0, p0, Lo/getCodedOutput$onMessageChannelReady;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lo/getCodedOutput$onMessageChannelReady;->bitField0_:I

    const/4 v0, 0x0

    .line 2505
    iput-boolean v0, p0, Lo/getCodedOutput$onMessageChannelReady;->developerModeEnabled_:Z

    return-void
.end method

.method private clearLastFetchStatus()V
    .locals 1

    .line 2470
    iget v0, p0, Lo/getCodedOutput$onMessageChannelReady;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lo/getCodedOutput$onMessageChannelReady;->bitField0_:I

    const/4 v0, 0x0

    .line 2471
    iput v0, p0, Lo/getCodedOutput$onMessageChannelReady;->lastFetchStatus_:I

    return-void
.end method

.method private clearLastKnownExperimentStartTime()V
    .locals 2

    .line 2538
    iget v0, p0, Lo/getCodedOutput$onMessageChannelReady;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lo/getCodedOutput$onMessageChannelReady;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 2539
    iput-wide v0, p0, Lo/getCodedOutput$onMessageChannelReady;->lastKnownExperimentStartTime_:J

    return-void
.end method

.method public static getDefaultInstance()Lo/getCodedOutput$onMessageChannelReady;
    .locals 1

    .line 2813
    sget-object v0, Lo/getCodedOutput$onMessageChannelReady;->DEFAULT_INSTANCE:Lo/getCodedOutput$onMessageChannelReady;

    return-object v0
.end method

.method public static newBuilder()Lo/getCodedOutput$onMessageChannelReady$onNavigationEvent;
    .locals 1

    .line 2617
    sget-object v0, Lo/getCodedOutput$onMessageChannelReady;->DEFAULT_INSTANCE:Lo/getCodedOutput$onMessageChannelReady;

    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->createBuilder()Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/getCodedOutput$onMessageChannelReady$onNavigationEvent;

    return-object v0
.end method

.method public static newBuilder(Lo/getCodedOutput$onMessageChannelReady;)Lo/getCodedOutput$onMessageChannelReady$onNavigationEvent;
    .locals 1

    .line 2620
    sget-object v0, Lo/getCodedOutput$onMessageChannelReady;->DEFAULT_INSTANCE:Lo/getCodedOutput$onMessageChannelReady;

    invoke-virtual {v0, p0}, Lo/getEventAppExecutionSize;->createBuilder(Lo/getEventAppExecutionSize;)Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$onMessageChannelReady$onNavigationEvent;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lo/getCodedOutput$onMessageChannelReady;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2594
    sget-object v0, Lo/getCodedOutput$onMessageChannelReady;->DEFAULT_INSTANCE:Lo/getCodedOutput$onMessageChannelReady;

    invoke-static {v0, p0}, Lo/getCodedOutput$onMessageChannelReady;->parseDelimitedFrom(Lo/getEventAppExecutionSize;Ljava/io/InputStream;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$onMessageChannelReady;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/getCodedOutput$onMessageChannelReady;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2600
    sget-object v0, Lo/getCodedOutput$onMessageChannelReady;->DEFAULT_INSTANCE:Lo/getCodedOutput$onMessageChannelReady;

    invoke-static {v0, p0, p1}, Lo/getCodedOutput$onMessageChannelReady;->parseDelimitedFrom(Lo/getEventAppExecutionSize;Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$onMessageChannelReady;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lo/getCodedOutput$onMessageChannelReady;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2582
    sget-object v0, Lo/getCodedOutput$onMessageChannelReady;->DEFAULT_INSTANCE:Lo/getCodedOutput$onMessageChannelReady;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Ljava/io/InputStream;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$onMessageChannelReady;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/getCodedOutput$onMessageChannelReady;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2589
    sget-object v0, Lo/getCodedOutput$onMessageChannelReady;->DEFAULT_INSTANCE:Lo/getCodedOutput$onMessageChannelReady;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$onMessageChannelReady;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lo/getCodedOutput$onMessageChannelReady;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2545
    sget-object v0, Lo/getCodedOutput$onMessageChannelReady;->DEFAULT_INSTANCE:Lo/getCodedOutput$onMessageChannelReady;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Ljava/nio/ByteBuffer;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$onMessageChannelReady;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lo/writeSessionEventDevice;)Lo/getCodedOutput$onMessageChannelReady;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2552
    sget-object v0, Lo/getCodedOutput$onMessageChannelReady;->DEFAULT_INSTANCE:Lo/getCodedOutput$onMessageChannelReady;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Ljava/nio/ByteBuffer;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$onMessageChannelReady;

    return-object p0
.end method

.method public static parseFrom(Lo/SessionProtobufHelper;)Lo/getCodedOutput$onMessageChannelReady;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2558
    sget-object v0, Lo/getCodedOutput$onMessageChannelReady;->DEFAULT_INSTANCE:Lo/getCodedOutput$onMessageChannelReady;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Lo/SessionProtobufHelper;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$onMessageChannelReady;

    return-object p0
.end method

.method public static parseFrom(Lo/SessionProtobufHelper;Lo/writeSessionEventDevice;)Lo/getCodedOutput$onMessageChannelReady;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2565
    sget-object v0, Lo/getCodedOutput$onMessageChannelReady;->DEFAULT_INSTANCE:Lo/getCodedOutput$onMessageChannelReady;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Lo/SessionProtobufHelper;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$onMessageChannelReady;

    return-object p0
.end method

.method public static parseFrom(Lo/writeSessionAppClsId;)Lo/getCodedOutput$onMessageChannelReady;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2605
    sget-object v0, Lo/getCodedOutput$onMessageChannelReady;->DEFAULT_INSTANCE:Lo/getCodedOutput$onMessageChannelReady;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Lo/writeSessionAppClsId;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$onMessageChannelReady;

    return-object p0
.end method

.method public static parseFrom(Lo/writeSessionAppClsId;Lo/writeSessionEventDevice;)Lo/getCodedOutput$onMessageChannelReady;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2612
    sget-object v0, Lo/getCodedOutput$onMessageChannelReady;->DEFAULT_INSTANCE:Lo/getCodedOutput$onMessageChannelReady;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Lo/writeSessionAppClsId;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$onMessageChannelReady;

    return-object p0
.end method

.method public static parseFrom([B)Lo/getCodedOutput$onMessageChannelReady;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2570
    sget-object v0, Lo/getCodedOutput$onMessageChannelReady;->DEFAULT_INSTANCE:Lo/getCodedOutput$onMessageChannelReady;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;[B)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$onMessageChannelReady;

    return-object p0
.end method

.method public static parseFrom([BLo/writeSessionEventDevice;)Lo/getCodedOutput$onMessageChannelReady;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2577
    sget-object v0, Lo/getCodedOutput$onMessageChannelReady;->DEFAULT_INSTANCE:Lo/getCodedOutput$onMessageChannelReady;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;[BLo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$onMessageChannelReady;

    return-object p0
.end method

.method public static parser()Lo/areReportsAvailable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/areReportsAvailable<",
            "Lo/getCodedOutput$onMessageChannelReady;",
            ">;"
        }
    .end annotation

    .line 2819
    sget-object v0, Lo/getCodedOutput$onMessageChannelReady;->DEFAULT_INSTANCE:Lo/getCodedOutput$onMessageChannelReady;

    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->getParserForType()Lo/areReportsAvailable;

    move-result-object v0

    return-object v0
.end method

.method private setDeveloperModeEnabled(Z)V
    .locals 1

    .line 2497
    iget v0, p0, Lo/getCodedOutput$onMessageChannelReady;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lo/getCodedOutput$onMessageChannelReady;->bitField0_:I

    .line 2498
    iput-boolean p1, p0, Lo/getCodedOutput$onMessageChannelReady;->developerModeEnabled_:Z

    return-void
.end method

.method private setLastFetchStatus(I)V
    .locals 1

    .line 2463
    iget v0, p0, Lo/getCodedOutput$onMessageChannelReady;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/getCodedOutput$onMessageChannelReady;->bitField0_:I

    .line 2464
    iput p1, p0, Lo/getCodedOutput$onMessageChannelReady;->lastFetchStatus_:I

    return-void
.end method

.method private setLastKnownExperimentStartTime(J)V
    .locals 1

    .line 2531
    iget v0, p0, Lo/getCodedOutput$onMessageChannelReady;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lo/getCodedOutput$onMessageChannelReady;->bitField0_:I

    .line 2532
    iput-wide p1, p0, Lo/getCodedOutput$onMessageChannelReady;->lastKnownExperimentStartTime_:J

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2752
    sget-object p2, Lo/getCodedOutput$4;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2797
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 2791
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2776
    :pswitch_2
    sget-object p1, Lo/getCodedOutput$onMessageChannelReady;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 2778
    const-class p1, Lo/getCodedOutput$onMessageChannelReady;

    monitor-enter p1

    .line 2779
    :try_start_0
    sget-object p2, Lo/getCodedOutput$onMessageChannelReady;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 2781
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/getCodedOutput$onMessageChannelReady;->DEFAULT_INSTANCE:Lo/getCodedOutput$onMessageChannelReady;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 2784
    sput-object p2, Lo/getCodedOutput$onMessageChannelReady;->PARSER:Lo/areReportsAvailable;

    .line 2786
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

    .line 2773
    :pswitch_3
    sget-object p1, Lo/getCodedOutput$onMessageChannelReady;->DEFAULT_INSTANCE:Lo/getCodedOutput$onMessageChannelReady;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "lastFetchStatus_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "developerModeEnabled_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "lastKnownExperimentStartTime_"

    aput-object p3, p1, p2

    .line 2769
    sget-object p2, Lo/getCodedOutput$onMessageChannelReady;->DEFAULT_INSTANCE:Lo/getCodedOutput$onMessageChannelReady;

    const-string p3, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0004\u0000\u0002\u0007\u0001\u0003\u0005\u0002"

    invoke-static {p2, p3, p1}, Lo/getCodedOutput$onMessageChannelReady;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2757
    :pswitch_5
    new-instance p1, Lo/getCodedOutput$onMessageChannelReady$onNavigationEvent;

    invoke-direct {p1, p3}, Lo/getCodedOutput$onMessageChannelReady$onNavigationEvent;-><init>(Lo/getCodedOutput$4;)V

    return-object p1

    .line 2754
    :pswitch_6
    new-instance p1, Lo/getCodedOutput$onMessageChannelReady;

    invoke-direct {p1}, Lo/getCodedOutput$onMessageChannelReady;-><init>()V

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

.method public final getDeveloperModeEnabled()Z
    .locals 1

    .line 2490
    iget-boolean v0, p0, Lo/getCodedOutput$onMessageChannelReady;->developerModeEnabled_:Z

    return v0
.end method

.method public final getLastFetchStatus()I
    .locals 1

    .line 2456
    iget v0, p0, Lo/getCodedOutput$onMessageChannelReady;->lastFetchStatus_:I

    return v0
.end method

.method public final getLastKnownExperimentStartTime()J
    .locals 2

    .line 2524
    iget-wide v0, p0, Lo/getCodedOutput$onMessageChannelReady;->lastKnownExperimentStartTime_:J

    return-wide v0
.end method

.method public final hasDeveloperModeEnabled()Z
    .locals 1

    .line 2482
    iget v0, p0, Lo/getCodedOutput$onMessageChannelReady;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasLastFetchStatus()Z
    .locals 2

    .line 2448
    iget v0, p0, Lo/getCodedOutput$onMessageChannelReady;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasLastKnownExperimentStartTime()Z
    .locals 1

    .line 2516
    iget v0, p0, Lo/getCodedOutput$onMessageChannelReady;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
