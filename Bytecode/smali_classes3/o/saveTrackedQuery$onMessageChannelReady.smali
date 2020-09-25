.class public final Lo/saveTrackedQuery$onMessageChannelReady;
.super Lo/getEventAppExecutionSize;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/saveTrackedQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/saveTrackedQuery$onMessageChannelReady$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/saveTrackedQuery$onMessageChannelReady;",
        "Lo/saveTrackedQuery$onMessageChannelReady$onPostMessage;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# static fields
.field public static final ACTIVATE_EVENT_TO_LOG_FIELD_NUMBER:I = 0x8

.field public static final CLEAR_EVENT_TO_LOG_FIELD_NUMBER:I = 0x9

.field private static final DEFAULT_INSTANCE:Lo/saveTrackedQuery$onMessageChannelReady;

.field public static final EXPERIMENT_ID_FIELD_NUMBER:I = 0x1

.field public static final EXPERIMENT_START_TIME_MILLIS_FIELD_NUMBER:I = 0x3

.field public static final ONGOING_EXPERIMENTS_FIELD_NUMBER:I = 0xd

.field public static final OVERFLOW_POLICY_FIELD_NUMBER:I = 0xc

.field private static volatile PARSER:Lo/areReportsAvailable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/saveTrackedQuery$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field

.field public static final SET_EVENT_TO_LOG_FIELD_NUMBER:I = 0x7

.field public static final TIMEOUT_EVENT_TO_LOG_FIELD_NUMBER:I = 0xa

.field public static final TIME_TO_LIVE_MILLIS_FIELD_NUMBER:I = 0x6

.field public static final TRIGGER_EVENT_FIELD_NUMBER:I = 0x4

.field public static final TRIGGER_TIMEOUT_MILLIS_FIELD_NUMBER:I = 0x5

.field public static final TTL_EXPIRY_EVENT_TO_LOG_FIELD_NUMBER:I = 0xb

.field public static final VARIANT_ID_FIELD_NUMBER:I = 0x2


# instance fields
.field private activateEventToLog_:Ljava/lang/String;

.field private clearEventToLog_:Ljava/lang/String;

.field public experimentId_:Ljava/lang/String;

.field public experimentStartTimeMillis_:J

.field private ongoingExperiments_:Lo/getEventLogSize$asBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getEventLogSize$asBinder<",
            "Lo/saveTrackedQuery$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private overflowPolicy_:I

.field private setEventToLog_:Ljava/lang/String;

.field public timeToLiveMillis_:J

.field private timeoutEventToLog_:Ljava/lang/String;

.field public triggerEvent_:Ljava/lang/String;

.field public triggerTimeoutMillis_:J

.field private ttlExpiryEventToLog_:Ljava/lang/String;

.field public variantId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2958
    new-instance v0, Lo/saveTrackedQuery$onMessageChannelReady;

    invoke-direct {v0}, Lo/saveTrackedQuery$onMessageChannelReady;-><init>()V

    .line 2961
    sput-object v0, Lo/saveTrackedQuery$onMessageChannelReady;->DEFAULT_INSTANCE:Lo/saveTrackedQuery$onMessageChannelReady;

    .line 2962
    const-class v1, Lo/saveTrackedQuery$onMessageChannelReady;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 682
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    const-string v0, ""

    .line 683
    iput-object v0, p0, Lo/saveTrackedQuery$onMessageChannelReady;->experimentId_:Ljava/lang/String;

    .line 684
    iput-object v0, p0, Lo/saveTrackedQuery$onMessageChannelReady;->variantId_:Ljava/lang/String;

    .line 685
    iput-object v0, p0, Lo/saveTrackedQuery$onMessageChannelReady;->triggerEvent_:Ljava/lang/String;

    .line 686
    iput-object v0, p0, Lo/saveTrackedQuery$onMessageChannelReady;->setEventToLog_:Ljava/lang/String;

    .line 687
    iput-object v0, p0, Lo/saveTrackedQuery$onMessageChannelReady;->activateEventToLog_:Ljava/lang/String;

    .line 688
    iput-object v0, p0, Lo/saveTrackedQuery$onMessageChannelReady;->clearEventToLog_:Ljava/lang/String;

    .line 689
    iput-object v0, p0, Lo/saveTrackedQuery$onMessageChannelReady;->timeoutEventToLog_:Ljava/lang/String;

    .line 690
    iput-object v0, p0, Lo/saveTrackedQuery$onMessageChannelReady;->ttlExpiryEventToLog_:Ljava/lang/String;

    .line 691
    invoke-static {}, Lo/saveTrackedQuery$onMessageChannelReady;->emptyProtobufList()Lo/getEventLogSize$asBinder;

    move-result-object v0

    iput-object v0, p0, Lo/saveTrackedQuery$onMessageChannelReady;->ongoingExperiments_:Lo/getEventLogSize$asBinder;

    return-void
.end method

.method public static extraCallback([B)Lo/saveTrackedQuery$onMessageChannelReady;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1809
    sget-object v0, Lo/saveTrackedQuery$onMessageChannelReady;->DEFAULT_INSTANCE:Lo/saveTrackedQuery$onMessageChannelReady;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;[B)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/saveTrackedQuery$onMessageChannelReady;

    return-object p0
.end method

.method static synthetic onNavigationEvent()Lo/saveTrackedQuery$onMessageChannelReady;
    .locals 1

    .line 677
    sget-object v0, Lo/saveTrackedQuery$onMessageChannelReady;->DEFAULT_INSTANCE:Lo/saveTrackedQuery$onMessageChannelReady;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2895
    sget-object p2, Lo/saveTrackedQuery$5;->onMessageChannelReady:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2951
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 2945
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2930
    :pswitch_2
    sget-object p1, Lo/saveTrackedQuery$onMessageChannelReady;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 2932
    const-class p1, Lo/saveTrackedQuery$onMessageChannelReady;

    monitor-enter p1

    .line 2933
    :try_start_0
    sget-object p2, Lo/saveTrackedQuery$onMessageChannelReady;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 2935
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/saveTrackedQuery$onMessageChannelReady;->DEFAULT_INSTANCE:Lo/saveTrackedQuery$onMessageChannelReady;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 2938
    sput-object p2, Lo/saveTrackedQuery$onMessageChannelReady;->PARSER:Lo/areReportsAvailable;

    .line 2940
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

    .line 2927
    :pswitch_3
    sget-object p1, Lo/saveTrackedQuery$onMessageChannelReady;->DEFAULT_INSTANCE:Lo/saveTrackedQuery$onMessageChannelReady;

    return-object p1

    :pswitch_4
    const/16 p1, 0xe

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "experimentId_"

    aput-object v0, p1, p3

    const-string p3, "variantId_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "experimentStartTimeMillis_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "triggerEvent_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "triggerTimeoutMillis_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "timeToLiveMillis_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "setEventToLog_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "activateEventToLog_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "clearEventToLog_"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "timeoutEventToLog_"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "ttlExpiryEventToLog_"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "overflowPolicy_"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "ongoingExperiments_"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    .line 2903
    const-class p3, Lo/saveTrackedQuery$onNavigationEvent;

    aput-object p3, p1, p2

    .line 2923
    sget-object p2, Lo/saveTrackedQuery$onMessageChannelReady;->DEFAULT_INSTANCE:Lo/saveTrackedQuery$onMessageChannelReady;

    const-string p3, "\u0000\r\u0000\u0000\u0001\r\r\u0000\u0001\u0000\u0001\u0208\u0002\u0208\u0003\u0002\u0004\u0208\u0005\u0002\u0006\u0002\u0007\u0208\u0008\u0208\t\u0208\n\u0208\u000b\u0208\u000c\u000c\r\u001b"

    invoke-static {p2, p3, p1}, Lo/saveTrackedQuery$onMessageChannelReady;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2900
    :pswitch_5
    new-instance p1, Lo/saveTrackedQuery$onMessageChannelReady$onPostMessage;

    invoke-direct {p1, p3}, Lo/saveTrackedQuery$onMessageChannelReady$onPostMessage;-><init>(B)V

    return-object p1

    .line 2897
    :pswitch_6
    new-instance p1, Lo/saveTrackedQuery$onMessageChannelReady;

    invoke-direct {p1}, Lo/saveTrackedQuery$onMessageChannelReady;-><init>()V

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
