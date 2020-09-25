.class public final Lo/closeInProgressStream;
.super Lo/getEventAppExecutionSize;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/closeInProgressStream$onPostMessage;,
        Lo/closeInProgressStream$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/closeInProgressStream;",
        "Lo/closeInProgressStream$onPostMessage;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lo/closeInProgressStream;

.field public static final FOUND_FIELD_NUMBER:I = 0x1

.field public static final MISSING_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lo/areReportsAvailable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/closeInProgressStream;",
            ">;"
        }
    .end annotation
.end field

.field public static final READ_TIME_FIELD_NUMBER:I = 0x4

.field public static final TRANSACTION_FIELD_NUMBER:I = 0x3


# instance fields
.field public readTime_:Lo/getCustomHeaders;

.field public resultCase_:I

.field public result_:Ljava/lang/Object;

.field private transaction_:Lo/SessionProtobufHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 793
    new-instance v0, Lo/closeInProgressStream;

    invoke-direct {v0}, Lo/closeInProgressStream;-><init>()V

    .line 796
    sput-object v0, Lo/closeInProgressStream;->DEFAULT_INSTANCE:Lo/closeInProgressStream;

    .line 797
    const-class v1, Lo/closeInProgressStream;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lo/closeInProgressStream;->resultCase_:I

    .line 19
    sget-object v0, Lo/SessionProtobufHelper;->onNavigationEvent:Lo/SessionProtobufHelper;

    iput-object v0, p0, Lo/closeInProgressStream;->transaction_:Lo/SessionProtobufHelper;

    return-void
.end method

.method static synthetic ICustomTabsCallback()Lo/closeInProgressStream;
    .locals 1

    .line 13
    sget-object v0, Lo/closeInProgressStream;->DEFAULT_INSTANCE:Lo/closeInProgressStream;

    return-object v0
.end method

.method public static onNavigationEvent()Lo/closeInProgressStream;
    .locals 1

    .line 802
    sget-object v0, Lo/closeInProgressStream;->DEFAULT_INSTANCE:Lo/closeInProgressStream;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 740
    sget-object p2, Lo/closeInProgressStream$1;->onPostMessage:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 786
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 780
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 765
    :pswitch_2
    sget-object p1, Lo/closeInProgressStream;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 767
    const-class p1, Lo/closeInProgressStream;

    monitor-enter p1

    .line 768
    :try_start_0
    sget-object p2, Lo/closeInProgressStream;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 770
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/closeInProgressStream;->DEFAULT_INSTANCE:Lo/closeInProgressStream;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 773
    sput-object p2, Lo/closeInProgressStream;->PARSER:Lo/areReportsAvailable;

    .line 775
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

    .line 762
    :pswitch_3
    sget-object p1, Lo/closeInProgressStream;->DEFAULT_INSTANCE:Lo/closeInProgressStream;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "result_"

    aput-object v0, p1, p3

    const-string p3, "resultCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 748
    const-class p3, Lo/writeDouble;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "transaction_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "readTime_"

    aput-object p3, p1, p2

    .line 758
    sget-object p2, Lo/closeInProgressStream;->DEFAULT_INSTANCE:Lo/closeInProgressStream;

    const-string p3, "\u0000\u0004\u0001\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001<\u0000\u0002\u023b\u0000\u0003\n\u0004\t"

    invoke-static {p2, p3, p1}, Lo/closeInProgressStream;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 745
    :pswitch_5
    new-instance p1, Lo/closeInProgressStream$onPostMessage;

    invoke-direct {p1, p3}, Lo/closeInProgressStream$onPostMessage;-><init>(B)V

    return-object p1

    .line 742
    :pswitch_6
    new-instance p1, Lo/closeInProgressStream;

    invoke-direct {p1}, Lo/closeInProgressStream;-><init>()V

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
