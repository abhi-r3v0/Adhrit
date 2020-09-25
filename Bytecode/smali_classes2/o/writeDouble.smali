.class public final Lo/writeDouble;
.super Lo/getEventAppExecutionSize;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/writeDouble$onPostMessage;,
        Lo/writeDouble$extraCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/writeDouble;",
        "Lo/writeDouble$onPostMessage;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# static fields
.field public static final CREATE_TIME_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lo/writeDouble;

.field public static final FIELDS_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lo/areReportsAvailable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/writeDouble;",
            ">;"
        }
    .end annotation
.end field

.field public static final UPDATE_TIME_FIELD_NUMBER:I = 0x4


# instance fields
.field private createTime_:Lo/getCustomHeaders;

.field public fields_:Lo/WireFormat$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/WireFormat$1<",
            "Ljava/lang/String;",
            "Lo/writeRawMessageSetExtension;",
            ">;"
        }
    .end annotation
.end field

.field public name_:Ljava/lang/String;

.field public updateTime_:Lo/getCustomHeaders;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1123
    new-instance v0, Lo/writeDouble;

    invoke-direct {v0}, Lo/writeDouble;-><init>()V

    .line 1126
    sput-object v0, Lo/writeDouble;->DEFAULT_INSTANCE:Lo/writeDouble;

    .line 1127
    const-class v1, Lo/writeDouble;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    .line 107
    invoke-static {}, Lo/WireFormat$1;->onPostMessage()Lo/WireFormat$1;

    move-result-object v0

    iput-object v0, p0, Lo/writeDouble;->fields_:Lo/WireFormat$1;

    const-string v0, ""

    .line 20
    iput-object v0, p0, Lo/writeDouble;->name_:Ljava/lang/String;

    return-void
.end method

.method public static ICustomTabsCallback()Lo/writeDouble$onPostMessage;
    .locals 1

    .line 534
    sget-object v0, Lo/writeDouble;->DEFAULT_INSTANCE:Lo/writeDouble;

    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->createBuilder()Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/writeDouble$onPostMessage;

    return-object v0
.end method

.method static synthetic ICustomTabsCallback(Lo/writeDouble;Ljava/lang/String;)V
    .locals 0

    .line 2064
    iput-object p1, p0, Lo/writeDouble;->name_:Ljava/lang/String;

    return-void
.end method

.method static synthetic asBinder()Lo/writeDouble;
    .locals 1

    .line 14
    sget-object v0, Lo/writeDouble;->DEFAULT_INSTANCE:Lo/writeDouble;

    return-object v0
.end method

.method static synthetic extraCallback(Lo/writeDouble;)Ljava/util/Map;
    .locals 2

    .line 3114
    iget-object v0, p0, Lo/writeDouble;->fields_:Lo/WireFormat$1;

    .line 3227
    iget-boolean v0, v0, Lo/WireFormat$1;->extraCallback:Z

    if-nez v0, :cond_1

    .line 3115
    iget-object v0, p0, Lo/writeDouble;->fields_:Lo/WireFormat$1;

    .line 4214
    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lo/WireFormat$1;

    invoke-direct {v0}, Lo/WireFormat$1;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Lo/WireFormat$1;

    invoke-direct {v1, v0}, Lo/WireFormat$1;-><init>(Ljava/util/Map;)V

    move-object v0, v1

    .line 3115
    :goto_0
    iput-object v0, p0, Lo/writeDouble;->fields_:Lo/WireFormat$1;

    .line 3117
    :cond_1
    iget-object p0, p0, Lo/writeDouble;->fields_:Lo/WireFormat$1;

    return-object p0
.end method

.method public static onNavigationEvent()Lo/writeDouble;
    .locals 1

    .line 1132
    sget-object v0, Lo/writeDouble;->DEFAULT_INSTANCE:Lo/writeDouble;

    return-object v0
.end method

.method static synthetic onNavigationEvent(Lo/writeDouble;Lo/getCustomHeaders;)V
    .locals 0

    .line 4420
    iput-object p1, p0, Lo/writeDouble;->updateTime_:Lo/getCustomHeaders;

    return-void
.end method

.method public static onPostMessage(Lo/writeDouble;)Lo/writeDouble$onPostMessage;
    .locals 1

    .line 537
    sget-object v0, Lo/writeDouble;->DEFAULT_INSTANCE:Lo/writeDouble;

    invoke-virtual {v0, p0}, Lo/getEventAppExecutionSize;->createBuilder(Lo/getEventAppExecutionSize;)Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object p0

    check-cast p0, Lo/writeDouble$onPostMessage;

    return-object p0
.end method


# virtual methods
.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1070
    sget-object p2, Lo/writeDouble$1;->onNavigationEvent:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1116
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 1110
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1095
    :pswitch_2
    sget-object p1, Lo/writeDouble;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 1097
    const-class p1, Lo/writeDouble;

    monitor-enter p1

    .line 1098
    :try_start_0
    sget-object p2, Lo/writeDouble;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 1100
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/writeDouble;->DEFAULT_INSTANCE:Lo/writeDouble;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 1103
    sput-object p2, Lo/writeDouble;->PARSER:Lo/areReportsAvailable;

    .line 1105
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

    .line 1092
    :pswitch_3
    sget-object p1, Lo/writeDouble;->DEFAULT_INSTANCE:Lo/writeDouble;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "name_"

    aput-object v0, p1, p3

    const-string p3, "fields_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 1078
    sget-object p3, Lo/writeDouble$extraCallback;->ICustomTabsCallback:Lo/getTagWireType;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "createTime_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "updateTime_"

    aput-object p3, p1, p2

    .line 1088
    sget-object p2, Lo/writeDouble;->DEFAULT_INSTANCE:Lo/writeDouble;

    const-string p3, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0001\u0000\u0000\u0001\u0208\u00022\u0003\t\u0004\t"

    invoke-static {p2, p3, p1}, Lo/writeDouble;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1075
    :pswitch_5
    new-instance p1, Lo/writeDouble$onPostMessage;

    invoke-direct {p1, p3}, Lo/writeDouble$onPostMessage;-><init>(B)V

    return-object p1

    .line 1072
    :pswitch_6
    new-instance p1, Lo/writeDouble;

    invoke-direct {p1}, Lo/writeDouble;-><init>()V

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
