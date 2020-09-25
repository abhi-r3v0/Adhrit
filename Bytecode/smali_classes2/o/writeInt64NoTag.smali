.class public final Lo/writeInt64NoTag;
.super Lo/getEventAppExecutionSize;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/writeInt64NoTag$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/writeInt64NoTag;",
        "Lo/writeInt64NoTag$ICustomTabsCallback;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# static fields
.field public static final COMMIT_TIME_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lo/writeInt64NoTag;

.field private static volatile PARSER:Lo/areReportsAvailable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/writeInt64NoTag;",
            ">;"
        }
    .end annotation
.end field

.field public static final STREAM_ID_FIELD_NUMBER:I = 0x1

.field public static final STREAM_TOKEN_FIELD_NUMBER:I = 0x2

.field public static final WRITE_RESULTS_FIELD_NUMBER:I = 0x3


# instance fields
.field public commitTime_:Lo/getCustomHeaders;

.field private streamId_:Ljava/lang/String;

.field public streamToken_:Lo/SessionProtobufHelper;

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

    .line 889
    new-instance v0, Lo/writeInt64NoTag;

    invoke-direct {v0}, Lo/writeInt64NoTag;-><init>()V

    .line 892
    sput-object v0, Lo/writeInt64NoTag;->DEFAULT_INSTANCE:Lo/writeInt64NoTag;

    .line 893
    const-class v1, Lo/writeInt64NoTag;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lo/writeInt64NoTag;->streamId_:Ljava/lang/String;

    .line 20
    sget-object v0, Lo/SessionProtobufHelper;->onNavigationEvent:Lo/SessionProtobufHelper;

    iput-object v0, p0, Lo/writeInt64NoTag;->streamToken_:Lo/SessionProtobufHelper;

    .line 21
    invoke-static {}, Lo/writeInt64NoTag;->emptyProtobufList()Lo/getEventLogSize$asBinder;

    move-result-object v0

    iput-object v0, p0, Lo/writeInt64NoTag;->writeResults_:Lo/getEventLogSize$asBinder;

    return-void
.end method

.method static synthetic ICustomTabsCallback()Lo/writeInt64NoTag;
    .locals 1

    .line 13
    sget-object v0, Lo/writeInt64NoTag;->DEFAULT_INSTANCE:Lo/writeInt64NoTag;

    return-object v0
.end method

.method public static onNavigationEvent()Lo/writeInt64NoTag;
    .locals 1

    .line 898
    sget-object v0, Lo/writeInt64NoTag;->DEFAULT_INSTANCE:Lo/writeInt64NoTag;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 836
    sget-object p2, Lo/writeInt64NoTag$2;->onPostMessage:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 882
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 876
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 861
    :pswitch_2
    sget-object p1, Lo/writeInt64NoTag;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 863
    const-class p1, Lo/writeInt64NoTag;

    monitor-enter p1

    .line 864
    :try_start_0
    sget-object p2, Lo/writeInt64NoTag;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 866
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/writeInt64NoTag;->DEFAULT_INSTANCE:Lo/writeInt64NoTag;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 869
    sput-object p2, Lo/writeInt64NoTag;->PARSER:Lo/areReportsAvailable;

    .line 871
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

    .line 858
    :pswitch_3
    sget-object p1, Lo/writeInt64NoTag;->DEFAULT_INSTANCE:Lo/writeInt64NoTag;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "streamId_"

    aput-object v0, p1, p3

    const-string p3, "streamToken_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "writeResults_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 844
    const-class p3, Lo/writeFixed64NoTag;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "commitTime_"

    aput-object p3, p1, p2

    .line 854
    sget-object p2, Lo/writeInt64NoTag;->DEFAULT_INSTANCE:Lo/writeInt64NoTag;

    const-string p3, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u0208\u0002\n\u0003\u001b\u0004\t"

    invoke-static {p2, p3, p1}, Lo/writeInt64NoTag;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 841
    :pswitch_5
    new-instance p1, Lo/writeInt64NoTag$ICustomTabsCallback;

    invoke-direct {p1, p3}, Lo/writeInt64NoTag$ICustomTabsCallback;-><init>(B)V

    return-object p1

    .line 838
    :pswitch_6
    new-instance p1, Lo/writeInt64NoTag;

    invoke-direct {p1}, Lo/writeInt64NoTag;-><init>()V

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
