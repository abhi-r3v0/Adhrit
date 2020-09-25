.class public final Lo/toByteString;
.super Lo/getEventAppExecutionSize;
.source ""

# interfaces
.implements Lo/ByteString$CodedBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/toByteString$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/toByteString;",
        "Lo/toByteString$onMessageChannelReady;",
        ">;",
        "Lo/ByteString$CodedBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lo/toByteString;

.field private static volatile PARSER:Lo/areReportsAvailable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/toByteString;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUES_FIELD_NUMBER:I = 0x1


# instance fields
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

    .line 463
    new-instance v0, Lo/toByteString;

    invoke-direct {v0}, Lo/toByteString;-><init>()V

    .line 466
    sput-object v0, Lo/toByteString;->DEFAULT_INSTANCE:Lo/toByteString;

    .line 467
    const-class v1, Lo/toByteString;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    .line 19
    invoke-static {}, Lo/toByteString;->emptyProtobufList()Lo/getEventLogSize$asBinder;

    move-result-object v0

    iput-object v0, p0, Lo/toByteString;->values_:Lo/getEventLogSize$asBinder;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/toByteString;Ljava/lang/Iterable;)V
    .locals 1

    .line 3079
    iget-object v0, p0, Lo/toByteString;->values_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0}, Lo/getEventLogSize$asBinder;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3080
    iget-object v0, p0, Lo/toByteString;->values_:Lo/getEventLogSize$asBinder;

    .line 3081
    invoke-static {v0}, Lo/getEventAppExecutionSize;->mutableCopy(Lo/getEventLogSize$asBinder;)Lo/getEventLogSize$asBinder;

    move-result-object v0

    iput-object v0, p0, Lo/toByteString;->values_:Lo/getEventLogSize$asBinder;

    .line 2133
    :cond_0
    iget-object p0, p0, Lo/toByteString;->values_:Lo/getEventLogSize$asBinder;

    invoke-static {p1, p0}, Lo/writeRawVarint64;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static extraCallback()Lo/toByteString;
    .locals 1

    .line 472
    sget-object v0, Lo/toByteString;->DEFAULT_INSTANCE:Lo/toByteString;

    return-object v0
.end method

.method static synthetic onMessageChannelReady()Lo/toByteString;
    .locals 1

    .line 13
    sget-object v0, Lo/toByteString;->DEFAULT_INSTANCE:Lo/toByteString;

    return-object v0
.end method

.method static synthetic onMessageChannelReady(Lo/toByteString;Lo/writeRawMessageSetExtension;)V
    .locals 1

    .line 2079
    iget-object v0, p0, Lo/toByteString;->values_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0}, Lo/getEventLogSize$asBinder;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2080
    iget-object v0, p0, Lo/toByteString;->values_:Lo/getEventLogSize$asBinder;

    .line 2081
    invoke-static {v0}, Lo/getEventAppExecutionSize;->mutableCopy(Lo/getEventLogSize$asBinder;)Lo/getEventLogSize$asBinder;

    move-result-object v0

    iput-object v0, p0, Lo/toByteString;->values_:Lo/getEventLogSize$asBinder;

    .line 1108
    :cond_0
    iget-object p0, p0, Lo/toByteString;->values_:Lo/getEventLogSize$asBinder;

    invoke-interface {p0, p1}, Lo/getEventLogSize$asBinder;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static onNavigationEvent()Lo/toByteString$onMessageChannelReady;
    .locals 1

    .line 233
    sget-object v0, Lo/toByteString;->DEFAULT_INSTANCE:Lo/toByteString;

    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->createBuilder()Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/toByteString$onMessageChannelReady;

    return-object v0
.end method

.method static synthetic onPostMessage(Lo/toByteString;I)V
    .locals 1

    .line 4079
    iget-object v0, p0, Lo/toByteString;->values_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0}, Lo/getEventLogSize$asBinder;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4080
    iget-object v0, p0, Lo/toByteString;->values_:Lo/getEventLogSize$asBinder;

    .line 4081
    invoke-static {v0}, Lo/getEventAppExecutionSize;->mutableCopy(Lo/getEventLogSize$asBinder;)Lo/getEventLogSize$asBinder;

    move-result-object v0

    iput-object v0, p0, Lo/toByteString;->values_:Lo/getEventLogSize$asBinder;

    .line 3155
    :cond_0
    iget-object p0, p0, Lo/toByteString;->values_:Lo/getEventLogSize$asBinder;

    invoke-interface {p0, p1}, Lo/getEventLogSize$asBinder;->remove(I)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 414
    sget-object p2, Lo/toByteString$3;->extraCallback:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 456
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 450
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 435
    :pswitch_2
    sget-object p1, Lo/toByteString;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 437
    const-class p1, Lo/toByteString;

    monitor-enter p1

    .line 438
    :try_start_0
    sget-object p2, Lo/toByteString;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 440
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/toByteString;->DEFAULT_INSTANCE:Lo/toByteString;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 443
    sput-object p2, Lo/toByteString;->PARSER:Lo/areReportsAvailable;

    .line 445
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

    .line 432
    :pswitch_3
    sget-object p1, Lo/toByteString;->DEFAULT_INSTANCE:Lo/toByteString;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "values_"

    aput-object v0, p1, p3

    .line 422
    const-class p3, Lo/writeRawMessageSetExtension;

    aput-object p3, p1, p2

    .line 428
    sget-object p2, Lo/toByteString;->DEFAULT_INSTANCE:Lo/toByteString;

    const-string p3, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    invoke-static {p2, p3, p1}, Lo/toByteString;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 419
    :pswitch_5
    new-instance p1, Lo/toByteString$onMessageChannelReady;

    invoke-direct {p1, p3}, Lo/toByteString$onMessageChannelReady;-><init>(B)V

    return-object p1

    .line 416
    :pswitch_6
    new-instance p1, Lo/toByteString;

    invoke-direct {p1}, Lo/toByteString;-><init>()V

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

.method public final onPostMessage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/writeRawMessageSetExtension;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lo/toByteString;->values_:Lo/getEventLogSize$asBinder;

    return-object v0
.end method
