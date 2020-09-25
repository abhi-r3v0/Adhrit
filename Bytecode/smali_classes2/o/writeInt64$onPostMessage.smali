.class public final Lo/writeInt64$onPostMessage;
.super Lo/getEventAppExecutionSize;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeInt64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/writeInt64$onPostMessage$onMessageChannelReady;,
        Lo/writeInt64$onPostMessage$extraCallback;,
        Lo/writeInt64$onPostMessage$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/writeInt64$onPostMessage;",
        "Lo/writeInt64$onPostMessage$onMessageChannelReady;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# static fields
.field public static final APPEND_MISSING_ELEMENTS_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lo/writeInt64$onPostMessage;

.field public static final FIELD_PATH_FIELD_NUMBER:I = 0x1

.field public static final INCREMENT_FIELD_NUMBER:I = 0x3

.field public static final MAXIMUM_FIELD_NUMBER:I = 0x4

.field public static final MINIMUM_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lo/areReportsAvailable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/writeInt64$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final REMOVE_ALL_FROM_ARRAY_FIELD_NUMBER:I = 0x7

.field public static final SET_TO_SERVER_VALUE_FIELD_NUMBER:I = 0x2


# instance fields
.field public fieldPath_:Ljava/lang/String;

.field public transformTypeCase_:I

.field public transformType_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2079
    new-instance v0, Lo/writeInt64$onPostMessage;

    invoke-direct {v0}, Lo/writeInt64$onPostMessage;-><init>()V

    .line 2082
    sput-object v0, Lo/writeInt64$onPostMessage;->DEFAULT_INSTANCE:Lo/writeInt64$onPostMessage;

    .line 2083
    const-class v1, Lo/writeInt64$onPostMessage;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 264
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    const/4 v0, 0x0

    .line 378
    iput v0, p0, Lo/writeInt64$onPostMessage;->transformTypeCase_:I

    const-string v0, ""

    .line 265
    iput-object v0, p0, Lo/writeInt64$onPostMessage;->fieldPath_:Ljava/lang/String;

    return-void
.end method

.method static synthetic extraCallback(Lo/writeInt64$onPostMessage;Ljava/lang/String;)V
    .locals 0

    .line 2471
    iput-object p1, p0, Lo/writeInt64$onPostMessage;->fieldPath_:Ljava/lang/String;

    return-void
.end method

.method static synthetic extraCallback(Lo/writeInt64$onPostMessage;Lo/writeInt64$onPostMessage$onNavigationEvent;)V
    .locals 1

    .line 3317
    sget-object v0, Lo/writeInt64$onPostMessage$onNavigationEvent;->onNavigationEvent:Lo/writeInt64$onPostMessage$onNavigationEvent;

    if-eq p1, v0, :cond_0

    .line 3321
    iget p1, p1, Lo/writeInt64$onPostMessage$onNavigationEvent;->extraCallback:I

    .line 2554
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lo/writeInt64$onPostMessage;->transformType_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 2555
    iput p1, p0, Lo/writeInt64$onPostMessage;->transformTypeCase_:I

    return-void

    .line 3318
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t get the number of an unknown enum value."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic onMessageChannelReady(Lo/writeInt64$onPostMessage;Lo/toByteString;)V
    .locals 0

    .line 3983
    iput-object p1, p0, Lo/writeInt64$onPostMessage;->transformType_:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 3984
    iput p1, p0, Lo/writeInt64$onPostMessage;->transformTypeCase_:I

    return-void
.end method

.method public static onNavigationEvent()Lo/writeInt64$onPostMessage$onMessageChannelReady;
    .locals 1

    .line 1216
    sget-object v0, Lo/writeInt64$onPostMessage;->DEFAULT_INSTANCE:Lo/writeInt64$onPostMessage;

    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->createBuilder()Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/writeInt64$onPostMessage$onMessageChannelReady;

    return-object v0
.end method

.method static synthetic onNavigationEvent(Lo/writeInt64$onPostMessage;Lo/writeRawMessageSetExtension;)V
    .locals 0

    .line 3630
    iput-object p1, p0, Lo/writeInt64$onPostMessage;->transformType_:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 3631
    iput p1, p0, Lo/writeInt64$onPostMessage;->transformTypeCase_:I

    return-void
.end method

.method static synthetic onPostMessage(Lo/writeInt64$onPostMessage;Lo/toByteString;)V
    .locals 0

    .line 4092
    iput-object p1, p0, Lo/writeInt64$onPostMessage;->transformType_:Ljava/lang/Object;

    const/4 p1, 0x7

    .line 4093
    iput p1, p0, Lo/writeInt64$onPostMessage;->transformTypeCase_:I

    return-void
.end method

.method static synthetic onRelationshipValidationResult()Lo/writeInt64$onPostMessage;
    .locals 1

    .line 259
    sget-object v0, Lo/writeInt64$onPostMessage;->DEFAULT_INSTANCE:Lo/writeInt64$onPostMessage;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/writeInt64$onPostMessage$onNavigationEvent;
    .locals 2

    .line 527
    iget v0, p0, Lo/writeInt64$onPostMessage;->transformTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 528
    iget-object v0, p0, Lo/writeInt64$onPostMessage;->transformType_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Lo/writeInt64$onPostMessage$onNavigationEvent;->onPostMessage(I)Lo/writeInt64$onPostMessage$onNavigationEvent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 529
    sget-object v0, Lo/writeInt64$onPostMessage$onNavigationEvent;->onNavigationEvent:Lo/writeInt64$onPostMessage$onNavigationEvent;

    :cond_0
    return-object v0

    .line 531
    :cond_1
    sget-object v0, Lo/writeInt64$onPostMessage$onNavigationEvent;->onMessageChannelReady:Lo/writeInt64$onPostMessage$onNavigationEvent;

    return-object v0
.end method

.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2023
    sget-object p2, Lo/writeInt64$5;->onNavigationEvent:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2072
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 2066
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2051
    :pswitch_2
    sget-object p1, Lo/writeInt64$onPostMessage;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 2053
    const-class p1, Lo/writeInt64$onPostMessage;

    monitor-enter p1

    .line 2054
    :try_start_0
    sget-object p2, Lo/writeInt64$onPostMessage;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 2056
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/writeInt64$onPostMessage;->DEFAULT_INSTANCE:Lo/writeInt64$onPostMessage;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 2059
    sput-object p2, Lo/writeInt64$onPostMessage;->PARSER:Lo/areReportsAvailable;

    .line 2061
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

    .line 2048
    :pswitch_3
    sget-object p1, Lo/writeInt64$onPostMessage;->DEFAULT_INSTANCE:Lo/writeInt64$onPostMessage;

    return-object p1

    :pswitch_4
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "transformType_"

    aput-object v0, p1, p3

    const-string p3, "transformTypeCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "fieldPath_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 2031
    const-class p3, Lo/writeRawMessageSetExtension;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-class p3, Lo/writeRawMessageSetExtension;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-class p3, Lo/writeRawMessageSetExtension;

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-class p3, Lo/toByteString;

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-class p3, Lo/toByteString;

    aput-object p3, p1, p2

    .line 2044
    sget-object p2, Lo/writeInt64$onPostMessage;->DEFAULT_INSTANCE:Lo/writeInt64$onPostMessage;

    const-string p3, "\u0000\u0007\u0001\u0000\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u0208\u0002?\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006<\u0000\u0007<\u0000"

    invoke-static {p2, p3, p1}, Lo/writeInt64$onPostMessage;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2028
    :pswitch_5
    new-instance p1, Lo/writeInt64$onPostMessage$onMessageChannelReady;

    invoke-direct {p1, p3}, Lo/writeInt64$onPostMessage$onMessageChannelReady;-><init>(B)V

    return-object p1

    .line 2025
    :pswitch_6
    new-instance p1, Lo/writeInt64$onPostMessage;

    invoke-direct {p1}, Lo/writeInt64$onPostMessage;-><init>()V

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
