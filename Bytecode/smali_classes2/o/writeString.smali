.class public final Lo/writeString;
.super Lo/getEventAppExecutionSize;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/writeString$ICustomTabsCallback;,
        Lo/writeString$extraCallback;,
        Lo/writeString$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/writeString;",
        "Lo/writeString$ICustomTabsCallback;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lo/writeString;

.field public static final DOCUMENTS_FIELD_NUMBER:I = 0x3

.field public static final ONCE_FIELD_NUMBER:I = 0x6

.field private static volatile PARSER:Lo/areReportsAvailable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/writeString;",
            ">;"
        }
    .end annotation
.end field

.field public static final QUERY_FIELD_NUMBER:I = 0x2

.field public static final READ_TIME_FIELD_NUMBER:I = 0xb

.field public static final RESUME_TOKEN_FIELD_NUMBER:I = 0x4

.field public static final TARGET_ID_FIELD_NUMBER:I = 0x5


# instance fields
.field private once_:Z

.field private resumeTypeCase_:I

.field private resumeType_:Ljava/lang/Object;

.field private targetId_:I

.field private targetTypeCase_:I

.field private targetType_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2188
    new-instance v0, Lo/writeString;

    invoke-direct {v0}, Lo/writeString;-><init>()V

    .line 2191
    sput-object v0, Lo/writeString;->DEFAULT_INSTANCE:Lo/writeString;

    .line 2192
    const-class v1, Lo/writeString;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    const/4 v0, 0x0

    .line 1203
    iput v0, p0, Lo/writeString;->targetTypeCase_:I

    .line 1246
    iput v0, p0, Lo/writeString;->resumeTypeCase_:I

    return-void
.end method

.method static synthetic ICustomTabsCallback()Lo/writeString;
    .locals 1

    .line 13
    sget-object v0, Lo/writeString;->DEFAULT_INSTANCE:Lo/writeString;

    return-object v0
.end method

.method static synthetic extraCallback(Lo/writeString;Lo/writeString$onNavigationEvent;)V
    .locals 0

    .line 2394
    iput-object p1, p0, Lo/writeString;->targetType_:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 2395
    iput p1, p0, Lo/writeString;->targetTypeCase_:I

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/writeString;I)V
    .locals 0

    .line 2584
    iput p1, p0, Lo/writeString;->targetId_:I

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/writeString;Lo/SessionProtobufHelper;)V
    .locals 1

    const/4 v0, 0x4

    .line 2457
    iput v0, p0, Lo/writeString;->resumeTypeCase_:I

    .line 2458
    iput-object p1, p0, Lo/writeString;->resumeType_:Ljava/lang/Object;

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/writeString;Lo/writeString$extraCallback;)V
    .locals 0

    .line 2324
    iput-object p1, p0, Lo/writeString;->targetType_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 2325
    iput p1, p0, Lo/writeString;->targetTypeCase_:I

    return-void
.end method

.method public static onNavigationEvent()Lo/writeString$ICustomTabsCallback;
    .locals 1

    .line 1716
    sget-object v0, Lo/writeString;->DEFAULT_INSTANCE:Lo/writeString;

    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->createBuilder()Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/writeString$ICustomTabsCallback;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2131
    sget-object p2, Lo/writeString$2;->extraCallback:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2181
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 2175
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2160
    :pswitch_2
    sget-object p1, Lo/writeString;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 2162
    const-class p1, Lo/writeString;

    monitor-enter p1

    .line 2163
    :try_start_0
    sget-object p2, Lo/writeString;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 2165
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/writeString;->DEFAULT_INSTANCE:Lo/writeString;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 2168
    sput-object p2, Lo/writeString;->PARSER:Lo/areReportsAvailable;

    .line 2170
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

    .line 2157
    :pswitch_3
    sget-object p1, Lo/writeString;->DEFAULT_INSTANCE:Lo/writeString;

    return-object p1

    :pswitch_4
    const/16 p1, 0x9

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "targetType_"

    aput-object v0, p1, p3

    const-string p3, "targetTypeCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "resumeType_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "resumeTypeCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 2139
    const-class p3, Lo/writeString$extraCallback;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-class p3, Lo/writeString$onNavigationEvent;

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "targetId_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "once_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-class p3, Lo/getCustomHeaders;

    aput-object p3, p1, p2

    .line 2153
    sget-object p2, Lo/writeString;->DEFAULT_INSTANCE:Lo/writeString;

    const-string p3, "\u0000\u0006\u0002\u0000\u0002\u000b\u0006\u0000\u0000\u0000\u0002<\u0000\u0003<\u0000\u0004=\u0001\u0005\u0004\u0006\u0007\u000b<\u0001"

    invoke-static {p2, p3, p1}, Lo/writeString;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2136
    :pswitch_5
    new-instance p1, Lo/writeString$ICustomTabsCallback;

    invoke-direct {p1, p3}, Lo/writeString$ICustomTabsCallback;-><init>(B)V

    return-object p1

    .line 2133
    :pswitch_6
    new-instance p1, Lo/writeString;

    invoke-direct {p1}, Lo/writeString;-><init>()V

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
