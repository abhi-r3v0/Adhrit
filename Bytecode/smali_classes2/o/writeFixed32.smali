.class public final Lo/writeFixed32;
.super Lo/getEventAppExecutionSize;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/writeFixed32$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/writeFixed32;",
        "Lo/writeFixed32$onPostMessage;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# static fields
.field public static final COUNT_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lo/writeFixed32;

.field private static volatile PARSER:Lo/areReportsAvailable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/writeFixed32;",
            ">;"
        }
    .end annotation
.end field

.field public static final TARGET_ID_FIELD_NUMBER:I = 0x1


# instance fields
.field public count_:I

.field public targetId_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 344
    new-instance v0, Lo/writeFixed32;

    invoke-direct {v0}, Lo/writeFixed32;-><init>()V

    .line 347
    sput-object v0, Lo/writeFixed32;->DEFAULT_INSTANCE:Lo/writeFixed32;

    .line 348
    const-class v1, Lo/writeFixed32;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    return-void
.end method

.method static synthetic ICustomTabsCallback()Lo/writeFixed32;
    .locals 1

    .line 13
    sget-object v0, Lo/writeFixed32;->DEFAULT_INSTANCE:Lo/writeFixed32;

    return-object v0
.end method

.method public static onNavigationEvent()Lo/writeFixed32;
    .locals 1

    .line 353
    sget-object v0, Lo/writeFixed32;->DEFAULT_INSTANCE:Lo/writeFixed32;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 294
    sget-object p2, Lo/writeFixed32$1;->onMessageChannelReady:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 337
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 331
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 316
    :pswitch_2
    sget-object p1, Lo/writeFixed32;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 318
    const-class p1, Lo/writeFixed32;

    monitor-enter p1

    .line 319
    :try_start_0
    sget-object p2, Lo/writeFixed32;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 321
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/writeFixed32;->DEFAULT_INSTANCE:Lo/writeFixed32;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 324
    sput-object p2, Lo/writeFixed32;->PARSER:Lo/areReportsAvailable;

    .line 326
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

    .line 313
    :pswitch_3
    sget-object p1, Lo/writeFixed32;->DEFAULT_INSTANCE:Lo/writeFixed32;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "targetId_"

    aput-object v0, p1, p3

    const-string p3, "count_"

    aput-object p3, p1, p2

    .line 309
    sget-object p2, Lo/writeFixed32;->DEFAULT_INSTANCE:Lo/writeFixed32;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0004\u0002\u0004"

    invoke-static {p2, p3, p1}, Lo/writeFixed32;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 299
    :pswitch_5
    new-instance p1, Lo/writeFixed32$onPostMessage;

    invoke-direct {p1, p3}, Lo/writeFixed32$onPostMessage;-><init>(B)V

    return-object p1

    .line 296
    :pswitch_6
    new-instance p1, Lo/writeFixed32;

    invoke-direct {p1}, Lo/writeFixed32;-><init>()V

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
