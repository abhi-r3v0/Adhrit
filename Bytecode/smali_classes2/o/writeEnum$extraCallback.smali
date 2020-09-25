.class public final Lo/writeEnum$extraCallback;
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
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/writeEnum$extraCallback$onPostMessage;,
        Lo/writeEnum$extraCallback$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/writeEnum$extraCallback;",
        "Lo/writeEnum$extraCallback$onPostMessage;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lo/writeEnum$extraCallback;

.field public static final FIELD_FIELD_NUMBER:I = 0x1

.field public static final OP_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lo/areReportsAvailable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/writeEnum$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUE_FIELD_NUMBER:I = 0x3


# instance fields
.field public field_:Lo/writeEnum$asBinder;

.field public op_:I

.field public value_:Lo/writeRawMessageSetExtension;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3082
    new-instance v0, Lo/writeEnum$extraCallback;

    invoke-direct {v0}, Lo/writeEnum$extraCallback;-><init>()V

    .line 3085
    sput-object v0, Lo/writeEnum$extraCallback;->DEFAULT_INSTANCE:Lo/writeEnum$extraCallback;

    .line 3086
    const-class v1, Lo/writeEnum$extraCallback;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2213
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback()Lo/writeEnum$extraCallback;
    .locals 1

    .line 3091
    sget-object v0, Lo/writeEnum$extraCallback;->DEFAULT_INSTANCE:Lo/writeEnum$extraCallback;

    return-object v0
.end method

.method static synthetic extraCallback(Lo/writeEnum$extraCallback;Lo/writeEnum$asBinder;)V
    .locals 0

    .line 3556
    iput-object p1, p0, Lo/writeEnum$extraCallback;->field_:Lo/writeEnum$asBinder;

    return-void
.end method

.method static synthetic extraCallback(Lo/writeEnum$extraCallback;Lo/writeEnum$extraCallback$onMessageChannelReady;)V
    .locals 1

    .line 4453
    sget-object v0, Lo/writeEnum$extraCallback$onMessageChannelReady;->ICustomTabsService:Lo/writeEnum$extraCallback$onMessageChannelReady;

    if-eq p1, v0, :cond_0

    .line 4457
    iget p1, p1, Lo/writeEnum$extraCallback$onMessageChannelReady;->newSession:I

    .line 3636
    iput p1, p0, Lo/writeEnum$extraCallback;->op_:I

    return-void

    .line 4454
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t get the number of an unknown enum value."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static onNavigationEvent()Lo/writeEnum$extraCallback$onPostMessage;
    .locals 1

    .line 2792
    sget-object v0, Lo/writeEnum$extraCallback;->DEFAULT_INSTANCE:Lo/writeEnum$extraCallback;

    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->createBuilder()Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/writeEnum$extraCallback$onPostMessage;

    return-object v0
.end method

.method static synthetic onPostMessage(Lo/writeEnum$extraCallback;Lo/writeRawMessageSetExtension;)V
    .locals 0

    .line 4684
    iput-object p1, p0, Lo/writeEnum$extraCallback;->value_:Lo/writeRawMessageSetExtension;

    return-void
.end method

.method static synthetic onRelationshipValidationResult()Lo/writeEnum$extraCallback;
    .locals 1

    .line 2208
    sget-object v0, Lo/writeEnum$extraCallback;->DEFAULT_INSTANCE:Lo/writeEnum$extraCallback;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 3031
    sget-object p2, Lo/writeEnum$1;->onMessageChannelReady:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3075
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 3069
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 3054
    :pswitch_2
    sget-object p1, Lo/writeEnum$extraCallback;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 3056
    const-class p1, Lo/writeEnum$extraCallback;

    monitor-enter p1

    .line 3057
    :try_start_0
    sget-object p2, Lo/writeEnum$extraCallback;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 3059
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/writeEnum$extraCallback;->DEFAULT_INSTANCE:Lo/writeEnum$extraCallback;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 3062
    sput-object p2, Lo/writeEnum$extraCallback;->PARSER:Lo/areReportsAvailable;

    .line 3064
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

    .line 3051
    :pswitch_3
    sget-object p1, Lo/writeEnum$extraCallback;->DEFAULT_INSTANCE:Lo/writeEnum$extraCallback;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "field_"

    aput-object v0, p1, p3

    const-string p3, "op_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "value_"

    aput-object p3, p1, p2

    .line 3047
    sget-object p2, Lo/writeEnum$extraCallback;->DEFAULT_INSTANCE:Lo/writeEnum$extraCallback;

    const-string p3, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002\u000c\u0003\t"

    invoke-static {p2, p3, p1}, Lo/writeEnum$extraCallback;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3036
    :pswitch_5
    new-instance p1, Lo/writeEnum$extraCallback$onPostMessage;

    invoke-direct {p1, p3}, Lo/writeEnum$extraCallback$onPostMessage;-><init>(B)V

    return-object p1

    .line 3033
    :pswitch_6
    new-instance p1, Lo/writeEnum$extraCallback;

    invoke-direct {p1}, Lo/writeEnum$extraCallback;-><init>()V

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
