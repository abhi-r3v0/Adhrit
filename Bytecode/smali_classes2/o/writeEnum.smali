.class public final Lo/writeEnum;
.super Lo/getEventAppExecutionSize;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/writeEnum$onPostMessage;,
        Lo/writeEnum$asInterface;,
        Lo/writeEnum$asBinder;,
        Lo/writeEnum$onTransact;,
        Lo/writeEnum$onRelationshipValidationResult;,
        Lo/writeEnum$extraCallback;,
        Lo/writeEnum$onMessageChannelReady;,
        Lo/writeEnum$ICustomTabsCallback$Stub;,
        Lo/writeEnum$ICustomTabsCallback;,
        Lo/writeEnum$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/writeEnum;",
        "Lo/writeEnum$onPostMessage;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lo/writeEnum;

.field public static final END_AT_FIELD_NUMBER:I = 0x8

.field public static final FROM_FIELD_NUMBER:I = 0x2

.field public static final LIMIT_FIELD_NUMBER:I = 0x5

.field public static final OFFSET_FIELD_NUMBER:I = 0x6

.field public static final ORDER_BY_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lo/areReportsAvailable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/writeEnum;",
            ">;"
        }
    .end annotation
.end field

.field public static final SELECT_FIELD_NUMBER:I = 0x1

.field public static final START_AT_FIELD_NUMBER:I = 0x7

.field public static final WHERE_FIELD_NUMBER:I = 0x3


# instance fields
.field public endAt_:Lo/getInProgressFile;

.field public from_:Lo/getEventLogSize$asBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getEventLogSize$asBinder<",
            "Lo/writeEnum$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field

.field public limit_:Lo/getEventDeviceSize;

.field private offset_:I

.field public orderBy_:Lo/getEventLogSize$asBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getEventLogSize$asBinder<",
            "Lo/writeEnum$onTransact;",
            ">;"
        }
    .end annotation
.end field

.field private select_:Lo/writeEnum$asInterface;

.field public startAt_:Lo/getInProgressFile;

.field public where_:Lo/writeEnum$ICustomTabsCallback$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 7018
    new-instance v0, Lo/writeEnum;

    invoke-direct {v0}, Lo/writeEnum;-><init>()V

    .line 7021
    sput-object v0, Lo/writeEnum;->DEFAULT_INSTANCE:Lo/writeEnum;

    .line 7022
    const-class v1, Lo/writeEnum;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    .line 19
    invoke-static {}, Lo/writeEnum;->emptyProtobufList()Lo/getEventLogSize$asBinder;

    move-result-object v0

    iput-object v0, p0, Lo/writeEnum;->from_:Lo/getEventLogSize$asBinder;

    .line 20
    invoke-static {}, Lo/writeEnum;->emptyProtobufList()Lo/getEventLogSize$asBinder;

    move-result-object v0

    iput-object v0, p0, Lo/writeEnum;->orderBy_:Lo/getEventLogSize$asBinder;

    return-void
.end method

.method public static ICustomTabsCallback()Lo/writeEnum$onPostMessage;
    .locals 1

    .line 6060
    sget-object v0, Lo/writeEnum;->DEFAULT_INSTANCE:Lo/writeEnum;

    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->createBuilder()Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/writeEnum$onPostMessage;

    return-object v0
.end method

.method static synthetic asInterface()Lo/writeEnum;
    .locals 1

    .line 13
    sget-object v0, Lo/writeEnum;->DEFAULT_INSTANCE:Lo/writeEnum;

    return-object v0
.end method

.method static synthetic onMessageChannelReady(Lo/writeEnum;Lo/writeEnum$ICustomTabsCallback;)V
    .locals 1

    .line 8308
    iget-object v0, p0, Lo/writeEnum;->from_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0}, Lo/getEventLogSize$asBinder;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8309
    iget-object v0, p0, Lo/writeEnum;->from_:Lo/getEventLogSize$asBinder;

    .line 8310
    invoke-static {v0}, Lo/getEventAppExecutionSize;->mutableCopy(Lo/getEventLogSize$asBinder;)Lo/getEventLogSize$asBinder;

    move-result-object v0

    iput-object v0, p0, Lo/writeEnum;->from_:Lo/getEventLogSize$asBinder;

    .line 7337
    :cond_0
    iget-object p0, p0, Lo/writeEnum;->from_:Lo/getEventLogSize$asBinder;

    invoke-interface {p0, p1}, Lo/getEventLogSize$asBinder;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/writeEnum;Lo/writeEnum$onTransact;)V
    .locals 1

    .line 9576
    iget-object v0, p0, Lo/writeEnum;->orderBy_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0}, Lo/getEventLogSize$asBinder;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9577
    iget-object v0, p0, Lo/writeEnum;->orderBy_:Lo/getEventLogSize$asBinder;

    .line 9578
    invoke-static {v0}, Lo/getEventAppExecutionSize;->mutableCopy(Lo/getEventLogSize$asBinder;)Lo/getEventLogSize$asBinder;

    move-result-object v0

    iput-object v0, p0, Lo/writeEnum;->orderBy_:Lo/getEventLogSize$asBinder;

    .line 8631
    :cond_0
    iget-object p0, p0, Lo/writeEnum;->orderBy_:Lo/getEventLogSize$asBinder;

    invoke-interface {p0, p1}, Lo/getEventLogSize$asBinder;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static onNavigationEvent()Lo/writeEnum;
    .locals 1

    .line 7027
    sget-object v0, Lo/writeEnum;->DEFAULT_INSTANCE:Lo/writeEnum;

    return-object v0
.end method

.method static synthetic onNavigationEvent(Lo/writeEnum;Lo/getInProgressFile;)V
    .locals 0

    .line 9766
    iput-object p1, p0, Lo/writeEnum;->startAt_:Lo/getInProgressFile;

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/writeEnum;Lo/writeEnum$ICustomTabsCallback$Stub;)V
    .locals 0

    .line 8420
    iput-object p1, p0, Lo/writeEnum;->where_:Lo/writeEnum$ICustomTabsCallback$Stub;

    return-void
.end method

.method static synthetic onPostMessage(Lo/writeEnum;Lo/getEventDeviceSize;)V
    .locals 0

    .line 9948
    iput-object p1, p0, Lo/writeEnum;->limit_:Lo/getEventDeviceSize;

    return-void
.end method

.method static synthetic onPostMessage(Lo/writeEnum;Lo/getInProgressFile;)V
    .locals 0

    .line 9832
    iput-object p1, p0, Lo/writeEnum;->endAt_:Lo/getInProgressFile;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 6960
    sget-object p2, Lo/writeEnum$1;->onMessageChannelReady:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 7011
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 7005
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 6990
    :pswitch_2
    sget-object p1, Lo/writeEnum;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 6992
    const-class p1, Lo/writeEnum;

    monitor-enter p1

    .line 6993
    :try_start_0
    sget-object p2, Lo/writeEnum;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 6995
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/writeEnum;->DEFAULT_INSTANCE:Lo/writeEnum;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 6998
    sput-object p2, Lo/writeEnum;->PARSER:Lo/areReportsAvailable;

    .line 7000
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

    .line 6987
    :pswitch_3
    sget-object p1, Lo/writeEnum;->DEFAULT_INSTANCE:Lo/writeEnum;

    return-object p1

    :pswitch_4
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "select_"

    aput-object v0, p1, p3

    const-string p3, "from_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 6968
    const-class p3, Lo/writeEnum$ICustomTabsCallback;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "where_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "orderBy_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-class p3, Lo/writeEnum$onTransact;

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "limit_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "offset_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "startAt_"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "endAt_"

    aput-object p3, p1, p2

    .line 6983
    sget-object p2, Lo/writeEnum;->DEFAULT_INSTANCE:Lo/writeEnum;

    const-string p3, "\u0000\u0008\u0000\u0000\u0001\u0008\u0008\u0000\u0002\u0000\u0001\t\u0002\u001b\u0003\t\u0004\u001b\u0005\t\u0006\u0004\u0007\t\u0008\t"

    invoke-static {p2, p3, p1}, Lo/writeEnum;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6965
    :pswitch_5
    new-instance p1, Lo/writeEnum$onPostMessage;

    invoke-direct {p1, p3}, Lo/writeEnum$onPostMessage;-><init>(B)V

    return-object p1

    .line 6962
    :pswitch_6
    new-instance p1, Lo/writeEnum;

    invoke-direct {p1}, Lo/writeEnum;-><init>()V

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
