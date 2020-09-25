.class public final Lo/writeBool;
.super Lo/getEventAppExecutionSize;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/writeBool$onPostMessage;,
        Lo/writeBool$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/writeBool;",
        "Lo/writeBool$onPostMessage;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# static fields
.field public static final ADD_TARGET_FIELD_NUMBER:I = 0x2

.field public static final DATABASE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lo/writeBool;

.field public static final LABELS_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lo/areReportsAvailable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/writeBool;",
            ">;"
        }
    .end annotation
.end field

.field public static final REMOVE_TARGET_FIELD_NUMBER:I = 0x3


# instance fields
.field private database_:Ljava/lang/String;

.field private labels_:Lo/WireFormat$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/WireFormat$1<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private targetChangeCase_:I

.field private targetChange_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 845
    new-instance v0, Lo/writeBool;

    invoke-direct {v0}, Lo/writeBool;-><init>()V

    .line 848
    sput-object v0, Lo/writeBool;->DEFAULT_INSTANCE:Lo/writeBool;

    .line 849
    const-class v1, Lo/writeBool;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lo/writeBool;->targetChangeCase_:I

    .line 261
    invoke-static {}, Lo/WireFormat$1;->onPostMessage()Lo/WireFormat$1;

    move-result-object v0

    iput-object v0, p0, Lo/writeBool;->labels_:Lo/WireFormat$1;

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lo/writeBool;->database_:Ljava/lang/String;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/writeBool;)Ljava/util/Map;
    .locals 2

    .line 2268
    iget-object v0, p0, Lo/writeBool;->labels_:Lo/WireFormat$1;

    .line 3227
    iget-boolean v0, v0, Lo/WireFormat$1;->extraCallback:Z

    if-nez v0, :cond_1

    .line 2269
    iget-object v0, p0, Lo/writeBool;->labels_:Lo/WireFormat$1;

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

    .line 2269
    :goto_0
    iput-object v0, p0, Lo/writeBool;->labels_:Lo/WireFormat$1;

    .line 2271
    :cond_1
    iget-object p0, p0, Lo/writeBool;->labels_:Lo/WireFormat$1;

    return-object p0
.end method

.method public static ICustomTabsCallback()Lo/writeBool;
    .locals 1

    .line 854
    sget-object v0, Lo/writeBool;->DEFAULT_INSTANCE:Lo/writeBool;

    return-object v0
.end method

.method static synthetic ICustomTabsCallback(Lo/writeBool;Ljava/lang/String;)V
    .locals 0

    .line 1106
    iput-object p1, p0, Lo/writeBool;->database_:Ljava/lang/String;

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/writeBool;Lo/writeString;)V
    .locals 0

    .line 1171
    iput-object p1, p0, Lo/writeBool;->targetChange_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 1172
    iput p1, p0, Lo/writeBool;->targetChangeCase_:I

    return-void
.end method

.method public static onNavigationEvent()Lo/writeBool$onPostMessage;
    .locals 1

    .line 436
    sget-object v0, Lo/writeBool;->DEFAULT_INSTANCE:Lo/writeBool;

    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->createBuilder()Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/writeBool$onPostMessage;

    return-object v0
.end method

.method static synthetic onPostMessage(Lo/writeBool;I)V
    .locals 1

    const/4 v0, 0x3

    .line 1231
    iput v0, p0, Lo/writeBool;->targetChangeCase_:I

    .line 1232
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lo/writeBool;->targetChange_:Ljava/lang/Object;

    return-void
.end method

.method static synthetic onTransact()Lo/writeBool;
    .locals 1

    .line 13
    sget-object v0, Lo/writeBool;->DEFAULT_INSTANCE:Lo/writeBool;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 791
    sget-object p2, Lo/writeBool$3;->onPostMessage:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 838
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 832
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 817
    :pswitch_2
    sget-object p1, Lo/writeBool;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 819
    const-class p1, Lo/writeBool;

    monitor-enter p1

    .line 820
    :try_start_0
    sget-object p2, Lo/writeBool;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 822
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/writeBool;->DEFAULT_INSTANCE:Lo/writeBool;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 825
    sput-object p2, Lo/writeBool;->PARSER:Lo/areReportsAvailable;

    .line 827
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

    .line 814
    :pswitch_3
    sget-object p1, Lo/writeBool;->DEFAULT_INSTANCE:Lo/writeBool;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "targetChange_"

    aput-object v0, p1, p3

    const-string p3, "targetChangeCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "database_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 799
    const-class p3, Lo/writeString;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "labels_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    sget-object p3, Lo/writeBool$onMessageChannelReady;->extraCallback:Lo/getTagWireType;

    aput-object p3, p1, p2

    .line 810
    sget-object p2, Lo/writeBool;->DEFAULT_INSTANCE:Lo/writeBool;

    const-string p3, "\u0000\u0004\u0001\u0000\u0001\u0004\u0004\u0001\u0000\u0000\u0001\u0208\u0002<\u0000\u00037\u0000\u00042"

    invoke-static {p2, p3, p1}, Lo/writeBool;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 796
    :pswitch_5
    new-instance p1, Lo/writeBool$onPostMessage;

    invoke-direct {p1, p3}, Lo/writeBool$onPostMessage;-><init>(B)V

    return-object p1

    .line 793
    :pswitch_6
    new-instance p1, Lo/writeBool;

    invoke-direct {p1}, Lo/writeBool;-><init>()V

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
