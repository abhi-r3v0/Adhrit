.class public final Lo/writeFixed64;
.super Lo/getEventAppExecutionSize;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/writeFixed64$onNavigationEvent;,
        Lo/writeFixed64$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/writeFixed64;",
        "Lo/writeFixed64$onNavigationEvent;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lo/writeFixed64;

.field public static final DOCUMENT_CHANGE_FIELD_NUMBER:I = 0x3

.field public static final DOCUMENT_DELETE_FIELD_NUMBER:I = 0x4

.field public static final DOCUMENT_REMOVE_FIELD_NUMBER:I = 0x6

.field public static final FILTER_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lo/areReportsAvailable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/writeFixed64;",
            ">;"
        }
    .end annotation
.end field

.field public static final TARGET_CHANGE_FIELD_NUMBER:I = 0x2


# instance fields
.field public responseTypeCase_:I

.field public responseType_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 996
    new-instance v0, Lo/writeFixed64;

    invoke-direct {v0}, Lo/writeFixed64;-><init>()V

    .line 999
    sput-object v0, Lo/writeFixed64;->DEFAULT_INSTANCE:Lo/writeFixed64;

    .line 1000
    const-class v1, Lo/writeFixed64;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lo/writeFixed64;->responseTypeCase_:I

    return-void
.end method

.method static synthetic ICustomTabsCallback()Lo/writeFixed64;
    .locals 1

    .line 13
    sget-object v0, Lo/writeFixed64;->DEFAULT_INSTANCE:Lo/writeFixed64;

    return-object v0
.end method

.method public static onNavigationEvent()Lo/writeFixed64;
    .locals 1

    .line 1005
    sget-object v0, Lo/writeFixed64;->DEFAULT_INSTANCE:Lo/writeFixed64;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 941
    sget-object p2, Lo/writeFixed64$1;->extraCallback:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 989
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 983
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 968
    :pswitch_2
    sget-object p1, Lo/writeFixed64;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 970
    const-class p1, Lo/writeFixed64;

    monitor-enter p1

    .line 971
    :try_start_0
    sget-object p2, Lo/writeFixed64;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 973
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/writeFixed64;->DEFAULT_INSTANCE:Lo/writeFixed64;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 976
    sput-object p2, Lo/writeFixed64;->PARSER:Lo/areReportsAvailable;

    .line 978
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

    .line 965
    :pswitch_3
    sget-object p1, Lo/writeFixed64;->DEFAULT_INSTANCE:Lo/writeFixed64;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "responseType_"

    aput-object v0, p1, p3

    const-string p3, "responseTypeCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 949
    const-class p3, Lo/writeUInt32;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, Lo/writeFloat;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-class p3, Lo/computePreferredBufferSize;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-class p3, Lo/writeFixed32;

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-class p3, Lo/CodedOutputStream;

    aput-object p3, p1, p2

    .line 961
    sget-object p2, Lo/writeFixed64;->DEFAULT_INSTANCE:Lo/writeFixed64;

    const-string p3, "\u0000\u0005\u0001\u0000\u0002\u0006\u0005\u0000\u0000\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006<\u0000"

    invoke-static {p2, p3, p1}, Lo/writeFixed64;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 946
    :pswitch_5
    new-instance p1, Lo/writeFixed64$onNavigationEvent;

    invoke-direct {p1, p3}, Lo/writeFixed64$onNavigationEvent;-><init>(B)V

    return-object p1

    .line 943
    :pswitch_6
    new-instance p1, Lo/writeFixed64;

    invoke-direct {p1}, Lo/writeFixed64;-><init>()V

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
