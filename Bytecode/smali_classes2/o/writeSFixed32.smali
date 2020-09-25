.class public final Lo/writeSFixed32;
.super Lo/getEventAppExecutionSize;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/writeSFixed32$extraCallback;,
        Lo/writeSFixed32$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/writeSFixed32;",
        "Lo/writeSFixed32$extraCallback;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lo/writeSFixed32;

.field public static final EXISTS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lo/areReportsAvailable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/writeSFixed32;",
            ">;"
        }
    .end annotation
.end field

.field public static final UPDATE_TIME_FIELD_NUMBER:I = 0x2


# instance fields
.field public conditionTypeCase_:I

.field public conditionType_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 473
    new-instance v0, Lo/writeSFixed32;

    invoke-direct {v0}, Lo/writeSFixed32;-><init>()V

    .line 476
    sput-object v0, Lo/writeSFixed32;->DEFAULT_INSTANCE:Lo/writeSFixed32;

    .line 477
    const-class v1, Lo/writeSFixed32;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lo/writeSFixed32;->conditionTypeCase_:I

    return-void
.end method

.method public static ICustomTabsCallback()Lo/writeSFixed32;
    .locals 1

    .line 482
    sget-object v0, Lo/writeSFixed32;->DEFAULT_INSTANCE:Lo/writeSFixed32;

    return-object v0
.end method

.method static synthetic ICustomTabsCallback(Lo/writeSFixed32;Lo/getCustomHeaders;)V
    .locals 0

    .line 1146
    iput-object p1, p0, Lo/writeSFixed32;->conditionType_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 1147
    iput p1, p0, Lo/writeSFixed32;->conditionTypeCase_:I

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/writeSFixed32;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1090
    iput v0, p0, Lo/writeSFixed32;->conditionTypeCase_:I

    .line 1091
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lo/writeSFixed32;->conditionType_:Ljava/lang/Object;

    return-void
.end method

.method public static onNavigationEvent()Lo/writeSFixed32$extraCallback;
    .locals 1

    .line 258
    sget-object v0, Lo/writeSFixed32;->DEFAULT_INSTANCE:Lo/writeSFixed32;

    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->createBuilder()Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/writeSFixed32$extraCallback;

    return-object v0
.end method

.method static synthetic onRelationshipValidationResult()Lo/writeSFixed32;
    .locals 1

    .line 13
    sget-object v0, Lo/writeSFixed32;->DEFAULT_INSTANCE:Lo/writeSFixed32;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 422
    sget-object p2, Lo/writeSFixed32$3;->onNavigationEvent:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 466
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 460
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 445
    :pswitch_2
    sget-object p1, Lo/writeSFixed32;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 447
    const-class p1, Lo/writeSFixed32;

    monitor-enter p1

    .line 448
    :try_start_0
    sget-object p2, Lo/writeSFixed32;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 450
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/writeSFixed32;->DEFAULT_INSTANCE:Lo/writeSFixed32;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 453
    sput-object p2, Lo/writeSFixed32;->PARSER:Lo/areReportsAvailable;

    .line 455
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

    .line 442
    :pswitch_3
    sget-object p1, Lo/writeSFixed32;->DEFAULT_INSTANCE:Lo/writeSFixed32;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "conditionType_"

    aput-object v0, p1, p3

    const-string p3, "conditionTypeCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 430
    const-class p3, Lo/getCustomHeaders;

    aput-object p3, p1, p2

    .line 438
    sget-object p2, Lo/writeSFixed32;->DEFAULT_INSTANCE:Lo/writeSFixed32;

    const-string p3, "\u0000\u0002\u0001\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001:\u0000\u0002<\u0000"

    invoke-static {p2, p3, p1}, Lo/writeSFixed32;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 427
    :pswitch_5
    new-instance p1, Lo/writeSFixed32$extraCallback;

    invoke-direct {p1, p3}, Lo/writeSFixed32$extraCallback;-><init>(B)V

    return-object p1

    .line 424
    :pswitch_6
    new-instance p1, Lo/writeSFixed32;

    invoke-direct {p1}, Lo/writeSFixed32;-><init>()V

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
