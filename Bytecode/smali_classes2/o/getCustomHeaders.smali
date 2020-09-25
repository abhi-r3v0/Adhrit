.class public final Lo/getCustomHeaders;
.super Lo/getEventAppExecutionSize;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getCustomHeaders$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/getCustomHeaders;",
        "Lo/getCustomHeaders$onMessageChannelReady;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lo/getCustomHeaders;

.field public static final NANOS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lo/areReportsAvailable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/getCustomHeaders;",
            ">;"
        }
    .end annotation
.end field

.field public static final SECONDS_FIELD_NUMBER:I = 0x1


# instance fields
.field public nanos_:I

.field public seconds_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 482
    new-instance v0, Lo/getCustomHeaders;

    invoke-direct {v0}, Lo/getCustomHeaders;-><init>()V

    .line 485
    sput-object v0, Lo/getCustomHeaders;->DEFAULT_INSTANCE:Lo/getCustomHeaders;

    .line 486
    const-class v1, Lo/getCustomHeaders;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback(Lo/getCustomHeaders;)Lo/getCustomHeaders$onMessageChannelReady;
    .locals 1

    .line 249
    sget-object v0, Lo/getCustomHeaders;->DEFAULT_INSTANCE:Lo/getCustomHeaders;

    invoke-virtual {v0, p0}, Lo/getEventAppExecutionSize;->createBuilder(Lo/getEventAppExecutionSize;)Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object p0

    check-cast p0, Lo/getCustomHeaders$onMessageChannelReady;

    return-object p0
.end method

.method public static ICustomTabsCallback()Lo/getCustomHeaders;
    .locals 1

    .line 491
    sget-object v0, Lo/getCustomHeaders;->DEFAULT_INSTANCE:Lo/getCustomHeaders;

    return-object v0
.end method

.method static synthetic ICustomTabsCallback(Lo/getCustomHeaders;I)V
    .locals 0

    .line 1154
    iput p1, p0, Lo/getCustomHeaders;->nanos_:I

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/getCustomHeaders;J)V
    .locals 0

    .line 1108
    iput-wide p1, p0, Lo/getCustomHeaders;->seconds_:J

    return-void
.end method

.method public static onNavigationEvent()Lo/getCustomHeaders$onMessageChannelReady;
    .locals 1

    .line 246
    sget-object v0, Lo/getCustomHeaders;->DEFAULT_INSTANCE:Lo/getCustomHeaders;

    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->createBuilder()Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/getCustomHeaders$onMessageChannelReady;

    return-object v0
.end method

.method static synthetic onTransact()Lo/getCustomHeaders;
    .locals 1

    .line 73
    sget-object v0, Lo/getCustomHeaders;->DEFAULT_INSTANCE:Lo/getCustomHeaders;

    return-object v0
.end method


# virtual methods
.method protected final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 432
    sget-object p2, Lo/getCustomHeaders$2;->onMessageChannelReady:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 475
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 469
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 454
    :pswitch_2
    sget-object p1, Lo/getCustomHeaders;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 456
    const-class p1, Lo/getCustomHeaders;

    monitor-enter p1

    .line 457
    :try_start_0
    sget-object p2, Lo/getCustomHeaders;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 459
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/getCustomHeaders;->DEFAULT_INSTANCE:Lo/getCustomHeaders;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 462
    sput-object p2, Lo/getCustomHeaders;->PARSER:Lo/areReportsAvailable;

    .line 464
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

    .line 451
    :pswitch_3
    sget-object p1, Lo/getCustomHeaders;->DEFAULT_INSTANCE:Lo/getCustomHeaders;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "seconds_"

    aput-object v0, p1, p3

    const-string p3, "nanos_"

    aput-object p3, p1, p2

    .line 447
    sget-object p2, Lo/getCustomHeaders;->DEFAULT_INSTANCE:Lo/getCustomHeaders;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0002\u0002\u0004"

    invoke-static {p2, p3, p1}, Lo/getCustomHeaders;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 437
    :pswitch_5
    new-instance p1, Lo/getCustomHeaders$onMessageChannelReady;

    invoke-direct {p1, p3}, Lo/getCustomHeaders$onMessageChannelReady;-><init>(B)V

    return-object p1

    .line 434
    :pswitch_6
    new-instance p1, Lo/getCustomHeaders;

    invoke-direct {p1}, Lo/getCustomHeaders;-><init>()V

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
