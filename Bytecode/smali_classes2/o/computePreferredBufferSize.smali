.class public final Lo/computePreferredBufferSize;
.super Lo/getEventAppExecutionSize;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/computePreferredBufferSize$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/computePreferredBufferSize;",
        "Lo/computePreferredBufferSize$ICustomTabsCallback;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lo/computePreferredBufferSize;

.field public static final DOCUMENT_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lo/areReportsAvailable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/computePreferredBufferSize;",
            ">;"
        }
    .end annotation
.end field

.field public static final READ_TIME_FIELD_NUMBER:I = 0x4

.field public static final REMOVED_TARGET_IDS_FIELD_NUMBER:I = 0x6


# instance fields
.field public document_:Ljava/lang/String;

.field public readTime_:Lo/getCustomHeaders;

.field private removedTargetIdsMemoizedSerializedSize:I

.field public removedTargetIds_:Lo/getEventLogSize$onTransact;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 666
    new-instance v0, Lo/computePreferredBufferSize;

    invoke-direct {v0}, Lo/computePreferredBufferSize;-><init>()V

    .line 669
    sput-object v0, Lo/computePreferredBufferSize;->DEFAULT_INSTANCE:Lo/computePreferredBufferSize;

    .line 670
    const-class v1, Lo/computePreferredBufferSize;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    const/4 v0, -0x1

    .line 133
    iput v0, p0, Lo/computePreferredBufferSize;->removedTargetIdsMemoizedSerializedSize:I

    const-string v0, ""

    .line 23
    iput-object v0, p0, Lo/computePreferredBufferSize;->document_:Ljava/lang/String;

    .line 24
    invoke-static {}, Lo/computePreferredBufferSize;->emptyIntList()Lo/getEventLogSize$onTransact;

    move-result-object v0

    iput-object v0, p0, Lo/computePreferredBufferSize;->removedTargetIds_:Lo/getEventLogSize$onTransact;

    return-void
.end method

.method public static ICustomTabsCallback()Lo/computePreferredBufferSize;
    .locals 1

    .line 675
    sget-object v0, Lo/computePreferredBufferSize;->DEFAULT_INSTANCE:Lo/computePreferredBufferSize;

    return-object v0
.end method

.method static synthetic onNavigationEvent()Lo/computePreferredBufferSize;
    .locals 1

    .line 17
    sget-object v0, Lo/computePreferredBufferSize;->DEFAULT_INSTANCE:Lo/computePreferredBufferSize;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 615
    sget-object p2, Lo/computePreferredBufferSize$1;->onNavigationEvent:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 659
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 653
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 638
    :pswitch_2
    sget-object p1, Lo/computePreferredBufferSize;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 640
    const-class p1, Lo/computePreferredBufferSize;

    monitor-enter p1

    .line 641
    :try_start_0
    sget-object p2, Lo/computePreferredBufferSize;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 643
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/computePreferredBufferSize;->DEFAULT_INSTANCE:Lo/computePreferredBufferSize;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 646
    sput-object p2, Lo/computePreferredBufferSize;->PARSER:Lo/areReportsAvailable;

    .line 648
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

    .line 635
    :pswitch_3
    sget-object p1, Lo/computePreferredBufferSize;->DEFAULT_INSTANCE:Lo/computePreferredBufferSize;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "document_"

    aput-object v0, p1, p3

    const-string p3, "readTime_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "removedTargetIds_"

    aput-object p3, p1, p2

    .line 631
    sget-object p2, Lo/computePreferredBufferSize;->DEFAULT_INSTANCE:Lo/computePreferredBufferSize;

    const-string p3, "\u0000\u0003\u0000\u0000\u0001\u0006\u0003\u0000\u0001\u0000\u0001\u0208\u0004\t\u0006\'"

    invoke-static {p2, p3, p1}, Lo/computePreferredBufferSize;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 620
    :pswitch_5
    new-instance p1, Lo/computePreferredBufferSize$ICustomTabsCallback;

    invoke-direct {p1, p3}, Lo/computePreferredBufferSize$ICustomTabsCallback;-><init>(B)V

    return-object p1

    .line 617
    :pswitch_6
    new-instance p1, Lo/computePreferredBufferSize;

    invoke-direct {p1}, Lo/computePreferredBufferSize;-><init>()V

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
