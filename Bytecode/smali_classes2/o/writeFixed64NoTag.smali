.class public final Lo/writeFixed64NoTag;
.super Lo/getEventAppExecutionSize;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/writeFixed64NoTag$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/writeFixed64NoTag;",
        "Lo/writeFixed64NoTag$ICustomTabsCallback;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lo/writeFixed64NoTag;

.field private static volatile PARSER:Lo/areReportsAvailable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/writeFixed64NoTag;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSFORM_RESULTS_FIELD_NUMBER:I = 0x2

.field public static final UPDATE_TIME_FIELD_NUMBER:I = 0x1


# instance fields
.field public transformResults_:Lo/getEventLogSize$asBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getEventLogSize$asBinder<",
            "Lo/writeRawMessageSetExtension;",
            ">;"
        }
    .end annotation
.end field

.field public updateTime_:Lo/getCustomHeaders;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 658
    new-instance v0, Lo/writeFixed64NoTag;

    invoke-direct {v0}, Lo/writeFixed64NoTag;-><init>()V

    .line 661
    sput-object v0, Lo/writeFixed64NoTag;->DEFAULT_INSTANCE:Lo/writeFixed64NoTag;

    .line 662
    const-class v1, Lo/writeFixed64NoTag;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    .line 19
    invoke-static {}, Lo/writeFixed64NoTag;->emptyProtobufList()Lo/getEventLogSize$asBinder;

    move-result-object v0

    iput-object v0, p0, Lo/writeFixed64NoTag;->transformResults_:Lo/getEventLogSize$asBinder;

    return-void
.end method

.method static synthetic ICustomTabsCallback()Lo/writeFixed64NoTag;
    .locals 1

    .line 13
    sget-object v0, Lo/writeFixed64NoTag;->DEFAULT_INSTANCE:Lo/writeFixed64NoTag;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 607
    sget-object p2, Lo/writeFixed64NoTag$3;->ICustomTabsCallback:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 651
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 645
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 630
    :pswitch_2
    sget-object p1, Lo/writeFixed64NoTag;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 632
    const-class p1, Lo/writeFixed64NoTag;

    monitor-enter p1

    .line 633
    :try_start_0
    sget-object p2, Lo/writeFixed64NoTag;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 635
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/writeFixed64NoTag;->DEFAULT_INSTANCE:Lo/writeFixed64NoTag;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 638
    sput-object p2, Lo/writeFixed64NoTag;->PARSER:Lo/areReportsAvailable;

    .line 640
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

    .line 627
    :pswitch_3
    sget-object p1, Lo/writeFixed64NoTag;->DEFAULT_INSTANCE:Lo/writeFixed64NoTag;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "updateTime_"

    aput-object v0, p1, p3

    const-string p3, "transformResults_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 615
    const-class p3, Lo/writeRawMessageSetExtension;

    aput-object p3, p1, p2

    .line 623
    sget-object p2, Lo/writeFixed64NoTag;->DEFAULT_INSTANCE:Lo/writeFixed64NoTag;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\t\u0002\u001b"

    invoke-static {p2, p3, p1}, Lo/writeFixed64NoTag;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 612
    :pswitch_5
    new-instance p1, Lo/writeFixed64NoTag$ICustomTabsCallback;

    invoke-direct {p1, p3}, Lo/writeFixed64NoTag$ICustomTabsCallback;-><init>(B)V

    return-object p1

    .line 609
    :pswitch_6
    new-instance p1, Lo/writeFixed64NoTag;

    invoke-direct {p1}, Lo/writeFixed64NoTag;-><init>()V

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
