.class public final Lo/getCompleteFile;
.super Lo/getEventAppExecutionSize;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getCompleteFile$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/getCompleteFile;",
        "Lo/getCompleteFile$onPostMessage;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# static fields
.field public static final COMMIT_TIME_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lo/getCompleteFile;

.field private static volatile PARSER:Lo/areReportsAvailable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/getCompleteFile;",
            ">;"
        }
    .end annotation
.end field

.field public static final WRITE_RESULTS_FIELD_NUMBER:I = 0x1


# instance fields
.field public commitTime_:Lo/getCustomHeaders;

.field public writeResults_:Lo/getEventLogSize$asBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getEventLogSize$asBinder<",
            "Lo/writeFixed64NoTag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 648
    new-instance v0, Lo/getCompleteFile;

    invoke-direct {v0}, Lo/getCompleteFile;-><init>()V

    .line 651
    sput-object v0, Lo/getCompleteFile;->DEFAULT_INSTANCE:Lo/getCompleteFile;

    .line 652
    const-class v1, Lo/getCompleteFile;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    .line 19
    invoke-static {}, Lo/getCompleteFile;->emptyProtobufList()Lo/getEventLogSize$asBinder;

    move-result-object v0

    iput-object v0, p0, Lo/getCompleteFile;->writeResults_:Lo/getEventLogSize$asBinder;

    return-void
.end method

.method static synthetic ICustomTabsCallback()Lo/getCompleteFile;
    .locals 1

    .line 13
    sget-object v0, Lo/getCompleteFile;->DEFAULT_INSTANCE:Lo/getCompleteFile;

    return-object v0
.end method

.method public static onNavigationEvent()Lo/getCompleteFile;
    .locals 1

    .line 657
    sget-object v0, Lo/getCompleteFile;->DEFAULT_INSTANCE:Lo/getCompleteFile;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 597
    sget-object p2, Lo/getCompleteFile$2;->extraCallback:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 641
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 635
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 620
    :pswitch_2
    sget-object p1, Lo/getCompleteFile;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 622
    const-class p1, Lo/getCompleteFile;

    monitor-enter p1

    .line 623
    :try_start_0
    sget-object p2, Lo/getCompleteFile;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 625
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/getCompleteFile;->DEFAULT_INSTANCE:Lo/getCompleteFile;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 628
    sput-object p2, Lo/getCompleteFile;->PARSER:Lo/areReportsAvailable;

    .line 630
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

    .line 617
    :pswitch_3
    sget-object p1, Lo/getCompleteFile;->DEFAULT_INSTANCE:Lo/getCompleteFile;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "writeResults_"

    aput-object v0, p1, p3

    .line 605
    const-class p3, Lo/writeFixed64NoTag;

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "commitTime_"

    aput-object p3, p1, p2

    .line 613
    sget-object p2, Lo/getCompleteFile;->DEFAULT_INSTANCE:Lo/getCompleteFile;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002\t"

    invoke-static {p2, p3, p1}, Lo/getCompleteFile;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 602
    :pswitch_5
    new-instance p1, Lo/getCompleteFile$onPostMessage;

    invoke-direct {p1, p3}, Lo/getCompleteFile$onPostMessage;-><init>(B)V

    return-object p1

    .line 599
    :pswitch_6
    new-instance p1, Lo/getCompleteFile;

    invoke-direct {p1}, Lo/getCompleteFile;-><init>()V

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
