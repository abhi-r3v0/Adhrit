.class public final Lo/writeString$onNavigationEvent;
.super Lo/getEventAppExecutionSize;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/writeString$onNavigationEvent$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/writeString$onNavigationEvent;",
        "Lo/writeString$onNavigationEvent$onMessageChannelReady;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lo/writeString$onNavigationEvent;

.field public static final DOCUMENTS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lo/areReportsAvailable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/writeString$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public documents_:Lo/getEventLogSize$asBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getEventLogSize$asBinder<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 556
    new-instance v0, Lo/writeString$onNavigationEvent;

    invoke-direct {v0}, Lo/writeString$onNavigationEvent;-><init>()V

    .line 559
    sput-object v0, Lo/writeString$onNavigationEvent;->DEFAULT_INSTANCE:Lo/writeString$onNavigationEvent;

    .line 560
    const-class v1, Lo/writeString$onNavigationEvent;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    .line 90
    invoke-static {}, Lo/getEventAppExecutionSize;->emptyProtobufList()Lo/getEventLogSize$asBinder;

    move-result-object v0

    iput-object v0, p0, Lo/writeString$onNavigationEvent;->documents_:Lo/getEventLogSize$asBinder;

    return-void
.end method

.method public static ICustomTabsCallback()Lo/writeString$onNavigationEvent;
    .locals 1

    .line 565
    sget-object v0, Lo/writeString$onNavigationEvent;->DEFAULT_INSTANCE:Lo/writeString$onNavigationEvent;

    return-object v0
.end method

.method public static extraCallback(Lo/writeString$onNavigationEvent;)Lo/writeString$onNavigationEvent$onMessageChannelReady;
    .locals 1

    .line 325
    sget-object v0, Lo/writeString$onNavigationEvent;->DEFAULT_INSTANCE:Lo/writeString$onNavigationEvent;

    invoke-virtual {v0, p0}, Lo/getEventAppExecutionSize;->createBuilder(Lo/getEventAppExecutionSize;)Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object p0

    check-cast p0, Lo/writeString$onNavigationEvent$onMessageChannelReady;

    return-object p0
.end method

.method static synthetic extraCallback(Lo/writeString$onNavigationEvent;Ljava/lang/String;)V
    .locals 1

    .line 2159
    iget-object v0, p0, Lo/writeString$onNavigationEvent;->documents_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0}, Lo/getEventLogSize$asBinder;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2160
    iget-object v0, p0, Lo/writeString$onNavigationEvent;->documents_:Lo/getEventLogSize$asBinder;

    .line 2161
    invoke-static {v0}, Lo/getEventAppExecutionSize;->mutableCopy(Lo/getEventLogSize$asBinder;)Lo/getEventLogSize$asBinder;

    move-result-object v0

    iput-object v0, p0, Lo/writeString$onNavigationEvent;->documents_:Lo/getEventLogSize$asBinder;

    .line 1197
    :cond_0
    iget-object p0, p0, Lo/writeString$onNavigationEvent;->documents_:Lo/getEventLogSize$asBinder;

    invoke-interface {p0, p1}, Lo/getEventLogSize$asBinder;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static onNavigationEvent()Lo/writeString$onNavigationEvent$onMessageChannelReady;
    .locals 1

    .line 322
    sget-object v0, Lo/writeString$onNavigationEvent;->DEFAULT_INSTANCE:Lo/writeString$onNavigationEvent;

    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->createBuilder()Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/writeString$onNavigationEvent$onMessageChannelReady;

    return-object v0
.end method

.method static synthetic onTransact()Lo/writeString$onNavigationEvent;
    .locals 1

    .line 84
    sget-object v0, Lo/writeString$onNavigationEvent;->DEFAULT_INSTANCE:Lo/writeString$onNavigationEvent;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 508
    sget-object p2, Lo/writeString$2;->extraCallback:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 549
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 543
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 528
    :pswitch_2
    sget-object p1, Lo/writeString$onNavigationEvent;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 530
    const-class p1, Lo/writeString$onNavigationEvent;

    monitor-enter p1

    .line 531
    :try_start_0
    sget-object p2, Lo/writeString$onNavigationEvent;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 533
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/writeString$onNavigationEvent;->DEFAULT_INSTANCE:Lo/writeString$onNavigationEvent;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 536
    sput-object p2, Lo/writeString$onNavigationEvent;->PARSER:Lo/areReportsAvailable;

    .line 538
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

    .line 525
    :pswitch_3
    sget-object p1, Lo/writeString$onNavigationEvent;->DEFAULT_INSTANCE:Lo/writeString$onNavigationEvent;

    return-object p1

    :pswitch_4
    new-array p1, p2, [Ljava/lang/Object;

    const-string p2, "documents_"

    aput-object p2, p1, p3

    .line 521
    sget-object p2, Lo/writeString$onNavigationEvent;->DEFAULT_INSTANCE:Lo/writeString$onNavigationEvent;

    const-string p3, "\u0000\u0001\u0000\u0000\u0002\u0002\u0001\u0000\u0001\u0000\u0002\u021a"

    invoke-static {p2, p3, p1}, Lo/writeString$onNavigationEvent;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 513
    :pswitch_5
    new-instance p1, Lo/writeString$onNavigationEvent$onMessageChannelReady;

    invoke-direct {p1, p3}, Lo/writeString$onNavigationEvent$onMessageChannelReady;-><init>(B)V

    return-object p1

    .line 510
    :pswitch_6
    new-instance p1, Lo/writeString$onNavigationEvent;

    invoke-direct {p1}, Lo/writeString$onNavigationEvent;-><init>()V

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
