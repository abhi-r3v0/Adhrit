.class public final Lo/writeUInt32;
.super Lo/getEventAppExecutionSize;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/writeUInt32$onMessageChannelReady;,
        Lo/writeUInt32$extraCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/writeUInt32;",
        "Lo/writeUInt32$onMessageChannelReady;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# static fields
.field public static final CAUSE_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lo/writeUInt32;

.field private static volatile PARSER:Lo/areReportsAvailable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/writeUInt32;",
            ">;"
        }
    .end annotation
.end field

.field public static final READ_TIME_FIELD_NUMBER:I = 0x6

.field public static final RESUME_TOKEN_FIELD_NUMBER:I = 0x4

.field public static final TARGET_CHANGE_TYPE_FIELD_NUMBER:I = 0x1

.field public static final TARGET_IDS_FIELD_NUMBER:I = 0x2


# instance fields
.field public cause_:Lo/applyMultipartDataTo;

.field public readTime_:Lo/getCustomHeaders;

.field public resumeToken_:Lo/SessionProtobufHelper;

.field public targetChangeType_:I

.field private targetIdsMemoizedSerializedSize:I

.field public targetIds_:Lo/getEventLogSize$onTransact;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1192
    new-instance v0, Lo/writeUInt32;

    invoke-direct {v0}, Lo/writeUInt32;-><init>()V

    .line 1195
    sput-object v0, Lo/writeUInt32;->DEFAULT_INSTANCE:Lo/writeUInt32;

    .line 1196
    const-class v1, Lo/writeUInt32;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    const/4 v0, -0x1

    .line 315
    iput v0, p0, Lo/writeUInt32;->targetIdsMemoizedSerializedSize:I

    .line 19
    invoke-static {}, Lo/writeUInt32;->emptyIntList()Lo/getEventLogSize$onTransact;

    move-result-object v0

    iput-object v0, p0, Lo/writeUInt32;->targetIds_:Lo/getEventLogSize$onTransact;

    .line 20
    sget-object v0, Lo/SessionProtobufHelper;->onNavigationEvent:Lo/SessionProtobufHelper;

    iput-object v0, p0, Lo/writeUInt32;->resumeToken_:Lo/SessionProtobufHelper;

    return-void
.end method

.method public static ICustomTabsCallback()Lo/writeUInt32;
    .locals 1

    .line 1201
    sget-object v0, Lo/writeUInt32;->DEFAULT_INSTANCE:Lo/writeUInt32;

    return-object v0
.end method

.method static synthetic onNavigationEvent()Lo/writeUInt32;
    .locals 1

    .line 13
    sget-object v0, Lo/writeUInt32;->DEFAULT_INSTANCE:Lo/writeUInt32;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1139
    sget-object p2, Lo/writeUInt32$4;->onNavigationEvent:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1185
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 1179
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1164
    :pswitch_2
    sget-object p1, Lo/writeUInt32;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 1166
    const-class p1, Lo/writeUInt32;

    monitor-enter p1

    .line 1167
    :try_start_0
    sget-object p2, Lo/writeUInt32;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 1169
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/writeUInt32;->DEFAULT_INSTANCE:Lo/writeUInt32;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 1172
    sput-object p2, Lo/writeUInt32;->PARSER:Lo/areReportsAvailable;

    .line 1174
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

    .line 1161
    :pswitch_3
    sget-object p1, Lo/writeUInt32;->DEFAULT_INSTANCE:Lo/writeUInt32;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "targetChangeType_"

    aput-object v0, p1, p3

    const-string p3, "targetIds_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "cause_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "resumeToken_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "readTime_"

    aput-object p3, p1, p2

    .line 1157
    sget-object p2, Lo/writeUInt32;->DEFAULT_INSTANCE:Lo/writeUInt32;

    const-string p3, "\u0000\u0005\u0000\u0000\u0001\u0006\u0005\u0000\u0001\u0000\u0001\u000c\u0002\'\u0003\t\u0004\n\u0006\t"

    invoke-static {p2, p3, p1}, Lo/writeUInt32;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1144
    :pswitch_5
    new-instance p1, Lo/writeUInt32$onMessageChannelReady;

    invoke-direct {p1, p3}, Lo/writeUInt32$onMessageChannelReady;-><init>(B)V

    return-object p1

    .line 1141
    :pswitch_6
    new-instance p1, Lo/writeUInt32;

    invoke-direct {p1}, Lo/writeUInt32;-><init>()V

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
