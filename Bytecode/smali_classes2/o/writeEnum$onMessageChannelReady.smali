.class public final Lo/writeEnum$onMessageChannelReady;
.super Lo/getEventAppExecutionSize;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/writeEnum$onMessageChannelReady$onNavigationEvent;,
        Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/writeEnum$onMessageChannelReady;",
        "Lo/writeEnum$onMessageChannelReady$onNavigationEvent;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lo/writeEnum$onMessageChannelReady;

.field public static final FILTERS_FIELD_NUMBER:I = 0x2

.field public static final OP_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lo/areReportsAvailable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/writeEnum$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public filters_:Lo/getEventLogSize$asBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getEventLogSize$asBinder<",
            "Lo/writeEnum$ICustomTabsCallback$Stub;",
            ">;"
        }
    .end annotation
.end field

.field public op_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2121
    new-instance v0, Lo/writeEnum$onMessageChannelReady;

    invoke-direct {v0}, Lo/writeEnum$onMessageChannelReady;-><init>()V

    .line 2124
    sput-object v0, Lo/writeEnum$onMessageChannelReady;->DEFAULT_INSTANCE:Lo/writeEnum$onMessageChannelReady;

    .line 2125
    const-class v1, Lo/writeEnum$onMessageChannelReady;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1414
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    .line 1415
    invoke-static {}, Lo/writeEnum$onMessageChannelReady;->emptyProtobufList()Lo/getEventLogSize$asBinder;

    move-result-object v0

    iput-object v0, p0, Lo/writeEnum$onMessageChannelReady;->filters_:Lo/getEventLogSize$asBinder;

    return-void
.end method

.method public static ICustomTabsCallback()Lo/writeEnum$onMessageChannelReady;
    .locals 1

    .line 2130
    sget-object v0, Lo/writeEnum$onMessageChannelReady;->DEFAULT_INSTANCE:Lo/writeEnum$onMessageChannelReady;

    return-object v0
.end method

.method static synthetic extraCallback(Lo/writeEnum$onMessageChannelReady;Ljava/lang/Iterable;)V
    .locals 1

    .line 4651
    iget-object v0, p0, Lo/writeEnum$onMessageChannelReady;->filters_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0}, Lo/getEventLogSize$asBinder;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4652
    iget-object v0, p0, Lo/writeEnum$onMessageChannelReady;->filters_:Lo/getEventLogSize$asBinder;

    .line 4653
    invoke-static {v0}, Lo/getEventAppExecutionSize;->mutableCopy(Lo/getEventLogSize$asBinder;)Lo/getEventLogSize$asBinder;

    move-result-object v0

    iput-object v0, p0, Lo/writeEnum$onMessageChannelReady;->filters_:Lo/getEventLogSize$asBinder;

    .line 3709
    :cond_0
    iget-object p0, p0, Lo/writeEnum$onMessageChannelReady;->filters_:Lo/getEventLogSize$asBinder;

    invoke-static {p1, p0}, Lo/writeRawVarint64;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static onNavigationEvent()Lo/writeEnum$onMessageChannelReady$onNavigationEvent;
    .locals 1

    .line 1811
    sget-object v0, Lo/writeEnum$onMessageChannelReady;->DEFAULT_INSTANCE:Lo/writeEnum$onMessageChannelReady;

    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->createBuilder()Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/writeEnum$onMessageChannelReady$onNavigationEvent;

    return-object v0
.end method

.method static synthetic onPostMessage(Lo/writeEnum$onMessageChannelReady;Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;)V
    .locals 1

    .line 3465
    sget-object v0, Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;->onMessageChannelReady:Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;

    if-eq p1, v0, :cond_0

    .line 3469
    iget p1, p1, Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;->ICustomTabsCallback:I

    .line 2573
    iput p1, p0, Lo/writeEnum$onMessageChannelReady;->op_:I

    return-void

    .line 3466
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t get the number of an unknown enum value."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic onRelationshipValidationResult()Lo/writeEnum$onMessageChannelReady;
    .locals 1

    .line 1409
    sget-object v0, Lo/writeEnum$onMessageChannelReady;->DEFAULT_INSTANCE:Lo/writeEnum$onMessageChannelReady;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2070
    sget-object p2, Lo/writeEnum$1;->onMessageChannelReady:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2114
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 2108
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2093
    :pswitch_2
    sget-object p1, Lo/writeEnum$onMessageChannelReady;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 2095
    const-class p1, Lo/writeEnum$onMessageChannelReady;

    monitor-enter p1

    .line 2096
    :try_start_0
    sget-object p2, Lo/writeEnum$onMessageChannelReady;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 2098
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/writeEnum$onMessageChannelReady;->DEFAULT_INSTANCE:Lo/writeEnum$onMessageChannelReady;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 2101
    sput-object p2, Lo/writeEnum$onMessageChannelReady;->PARSER:Lo/areReportsAvailable;

    .line 2103
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

    .line 2090
    :pswitch_3
    sget-object p1, Lo/writeEnum$onMessageChannelReady;->DEFAULT_INSTANCE:Lo/writeEnum$onMessageChannelReady;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "op_"

    aput-object v0, p1, p3

    const-string p3, "filters_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 2078
    const-class p3, Lo/writeEnum$ICustomTabsCallback$Stub;

    aput-object p3, p1, p2

    .line 2086
    sget-object p2, Lo/writeEnum$onMessageChannelReady;->DEFAULT_INSTANCE:Lo/writeEnum$onMessageChannelReady;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000c\u0002\u001b"

    invoke-static {p2, p3, p1}, Lo/writeEnum$onMessageChannelReady;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2075
    :pswitch_5
    new-instance p1, Lo/writeEnum$onMessageChannelReady$onNavigationEvent;

    invoke-direct {p1, p3}, Lo/writeEnum$onMessageChannelReady$onNavigationEvent;-><init>(B)V

    return-object p1

    .line 2072
    :pswitch_6
    new-instance p1, Lo/writeEnum$onMessageChannelReady;

    invoke-direct {p1}, Lo/writeEnum$onMessageChannelReady;-><init>()V

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
