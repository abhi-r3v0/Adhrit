.class public final Lo/applyMultipartDataTo;
.super Lo/getEventAppExecutionSize;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/applyMultipartDataTo$extraCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/applyMultipartDataTo;",
        "Lo/applyMultipartDataTo$extraCallback;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# static fields
.field public static final CODE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lo/applyMultipartDataTo;

.field public static final DETAILS_FIELD_NUMBER:I = 0x3

.field public static final MESSAGE_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lo/areReportsAvailable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/applyMultipartDataTo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public code_:I

.field private details_:Lo/getEventLogSize$asBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getEventLogSize$asBinder<",
            "Lo/writeRawLittleEndian32;",
            ">;"
        }
    .end annotation
.end field

.field public message_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 734
    new-instance v0, Lo/applyMultipartDataTo;

    invoke-direct {v0}, Lo/applyMultipartDataTo;-><init>()V

    .line 737
    sput-object v0, Lo/applyMultipartDataTo;->DEFAULT_INSTANCE:Lo/applyMultipartDataTo;

    .line 738
    const-class v1, Lo/applyMultipartDataTo;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    const-string v0, ""

    .line 24
    iput-object v0, p0, Lo/applyMultipartDataTo;->message_:Ljava/lang/String;

    .line 25
    invoke-static {}, Lo/applyMultipartDataTo;->emptyProtobufList()Lo/getEventLogSize$asBinder;

    move-result-object v0

    iput-object v0, p0, Lo/applyMultipartDataTo;->details_:Lo/getEventLogSize$asBinder;

    return-void
.end method

.method static synthetic ICustomTabsCallback()Lo/applyMultipartDataTo;
    .locals 1

    .line 18
    sget-object v0, Lo/applyMultipartDataTo;->DEFAULT_INSTANCE:Lo/applyMultipartDataTo;

    return-object v0
.end method

.method public static onNavigationEvent()Lo/applyMultipartDataTo;
    .locals 1

    .line 743
    sget-object v0, Lo/applyMultipartDataTo;->DEFAULT_INSTANCE:Lo/applyMultipartDataTo;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 682
    sget-object p2, Lo/applyMultipartDataTo$5;->onMessageChannelReady:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 727
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 721
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 706
    :pswitch_2
    sget-object p1, Lo/applyMultipartDataTo;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 708
    const-class p1, Lo/applyMultipartDataTo;

    monitor-enter p1

    .line 709
    :try_start_0
    sget-object p2, Lo/applyMultipartDataTo;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 711
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/applyMultipartDataTo;->DEFAULT_INSTANCE:Lo/applyMultipartDataTo;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 714
    sput-object p2, Lo/applyMultipartDataTo;->PARSER:Lo/areReportsAvailable;

    .line 716
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

    .line 703
    :pswitch_3
    sget-object p1, Lo/applyMultipartDataTo;->DEFAULT_INSTANCE:Lo/applyMultipartDataTo;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "code_"

    aput-object v0, p1, p3

    const-string p3, "message_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "details_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 690
    const-class p3, Lo/writeRawLittleEndian32;

    aput-object p3, p1, p2

    .line 699
    sget-object p2, Lo/applyMultipartDataTo;->DEFAULT_INSTANCE:Lo/applyMultipartDataTo;

    const-string p3, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u0004\u0002\u0208\u0003\u001b"

    invoke-static {p2, p3, p1}, Lo/applyMultipartDataTo;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 687
    :pswitch_5
    new-instance p1, Lo/applyMultipartDataTo$extraCallback;

    invoke-direct {p1, p3}, Lo/applyMultipartDataTo$extraCallback;-><init>(B)V

    return-object p1

    .line 684
    :pswitch_6
    new-instance p1, Lo/applyMultipartDataTo;

    invoke-direct {p1}, Lo/applyMultipartDataTo;-><init>()V

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
