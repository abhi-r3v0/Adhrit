.class public final Lo/getInProgressFile;
.super Lo/getEventAppExecutionSize;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getInProgressFile$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/getInProgressFile;",
        "Lo/getInProgressFile$onPostMessage;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# static fields
.field public static final BEFORE_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lo/getInProgressFile;

.field private static volatile PARSER:Lo/areReportsAvailable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/getInProgressFile;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUES_FIELD_NUMBER:I = 0x1


# instance fields
.field public before_:Z

.field public values_:Lo/getEventLogSize$asBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getEventLogSize$asBinder<",
            "Lo/writeRawMessageSetExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 595
    new-instance v0, Lo/getInProgressFile;

    invoke-direct {v0}, Lo/getInProgressFile;-><init>()V

    .line 598
    sput-object v0, Lo/getInProgressFile;->DEFAULT_INSTANCE:Lo/getInProgressFile;

    .line 599
    const-class v1, Lo/getInProgressFile;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    .line 19
    invoke-static {}, Lo/getInProgressFile;->emptyProtobufList()Lo/getEventLogSize$asBinder;

    move-result-object v0

    iput-object v0, p0, Lo/getInProgressFile;->values_:Lo/getEventLogSize$asBinder;

    return-void
.end method

.method public static ICustomTabsCallback()Lo/getInProgressFile$onPostMessage;
    .locals 1

    .line 296
    sget-object v0, Lo/getInProgressFile;->DEFAULT_INSTANCE:Lo/getInProgressFile;

    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->createBuilder()Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/getInProgressFile$onPostMessage;

    return-object v0
.end method

.method static synthetic asBinder()Lo/getInProgressFile;
    .locals 1

    .line 13
    sget-object v0, Lo/getInProgressFile;->DEFAULT_INSTANCE:Lo/getInProgressFile;

    return-object v0
.end method

.method static synthetic extraCallback(Lo/getInProgressFile;Ljava/lang/Iterable;)V
    .locals 1

    .line 2089
    iget-object v0, p0, Lo/getInProgressFile;->values_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0}, Lo/getEventLogSize$asBinder;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2090
    iget-object v0, p0, Lo/getInProgressFile;->values_:Lo/getEventLogSize$asBinder;

    .line 2091
    invoke-static {v0}, Lo/getEventAppExecutionSize;->mutableCopy(Lo/getEventLogSize$asBinder;)Lo/getEventLogSize$asBinder;

    move-result-object v0

    iput-object v0, p0, Lo/getInProgressFile;->values_:Lo/getEventLogSize$asBinder;

    .line 1151
    :cond_0
    iget-object p0, p0, Lo/getInProgressFile;->values_:Lo/getEventLogSize$asBinder;

    invoke-static {p1, p0}, Lo/writeRawVarint64;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static onNavigationEvent()Lo/getInProgressFile;
    .locals 1

    .line 604
    sget-object v0, Lo/getInProgressFile;->DEFAULT_INSTANCE:Lo/getInProgressFile;

    return-object v0
.end method

.method static synthetic onNavigationEvent(Lo/getInProgressFile;Z)V
    .locals 0

    .line 2206
    iput-boolean p1, p0, Lo/getInProgressFile;->before_:Z

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 544
    sget-object p2, Lo/getInProgressFile$5;->onNavigationEvent:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 588
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 582
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 567
    :pswitch_2
    sget-object p1, Lo/getInProgressFile;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 569
    const-class p1, Lo/getInProgressFile;

    monitor-enter p1

    .line 570
    :try_start_0
    sget-object p2, Lo/getInProgressFile;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 572
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/getInProgressFile;->DEFAULT_INSTANCE:Lo/getInProgressFile;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 575
    sput-object p2, Lo/getInProgressFile;->PARSER:Lo/areReportsAvailable;

    .line 577
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

    .line 564
    :pswitch_3
    sget-object p1, Lo/getInProgressFile;->DEFAULT_INSTANCE:Lo/getInProgressFile;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "values_"

    aput-object v0, p1, p3

    .line 552
    const-class p3, Lo/writeRawMessageSetExtension;

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "before_"

    aput-object p3, p1, p2

    .line 560
    sget-object p2, Lo/getInProgressFile;->DEFAULT_INSTANCE:Lo/getInProgressFile;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002\u0007"

    invoke-static {p2, p3, p1}, Lo/getInProgressFile;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 549
    :pswitch_5
    new-instance p1, Lo/getInProgressFile$onPostMessage;

    invoke-direct {p1, p3}, Lo/getInProgressFile$onPostMessage;-><init>(B)V

    return-object p1

    .line 546
    :pswitch_6
    new-instance p1, Lo/getInProgressFile;

    invoke-direct {p1}, Lo/getInProgressFile;-><init>()V

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
