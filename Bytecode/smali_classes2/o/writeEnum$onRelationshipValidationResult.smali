.class public final Lo/writeEnum$onRelationshipValidationResult;
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
    name = "onRelationshipValidationResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/writeEnum$onRelationshipValidationResult$onMessageChannelReady;,
        Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/writeEnum$onRelationshipValidationResult;",
        "Lo/writeEnum$onRelationshipValidationResult$onMessageChannelReady;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lo/writeEnum$onRelationshipValidationResult;

.field public static final FIELD_FIELD_NUMBER:I = 0x2

.field public static final OP_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lo/areReportsAvailable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/writeEnum$onRelationshipValidationResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public op_:I

.field public operandTypeCase_:I

.field public operandType_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3812
    new-instance v0, Lo/writeEnum$onRelationshipValidationResult;

    invoke-direct {v0}, Lo/writeEnum$onRelationshipValidationResult;-><init>()V

    .line 3815
    sput-object v0, Lo/writeEnum$onRelationshipValidationResult;->DEFAULT_INSTANCE:Lo/writeEnum$onRelationshipValidationResult;

    .line 3816
    const-class v1, Lo/writeEnum$onRelationshipValidationResult;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3157
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    const/4 v0, 0x0

    .line 3331
    iput v0, p0, Lo/writeEnum$onRelationshipValidationResult;->operandTypeCase_:I

    return-void
.end method

.method public static ICustomTabsCallback()Lo/writeEnum$onRelationshipValidationResult$onMessageChannelReady;
    .locals 1

    .line 3579
    sget-object v0, Lo/writeEnum$onRelationshipValidationResult;->DEFAULT_INSTANCE:Lo/writeEnum$onRelationshipValidationResult;

    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->createBuilder()Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/writeEnum$onRelationshipValidationResult$onMessageChannelReady;

    return-object v0
.end method

.method static synthetic ICustomTabsCallback(Lo/writeEnum$onRelationshipValidationResult;Lo/writeEnum$asBinder;)V
    .locals 0

    .line 5469
    iput-object p1, p0, Lo/writeEnum$onRelationshipValidationResult;->operandType_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 5470
    iput p1, p0, Lo/writeEnum$onRelationshipValidationResult;->operandTypeCase_:I

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/writeEnum$onRelationshipValidationResult;Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;)V
    .locals 1

    .line 5267
    sget-object v0, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;->onNavigationEvent:Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;

    if-eq p1, v0, :cond_0

    .line 5271
    iget p1, p1, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;->asInterface:I

    .line 4419
    iput p1, p0, Lo/writeEnum$onRelationshipValidationResult;->op_:I

    return-void

    .line 5268
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t get the number of an unknown enum value."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic asBinder()Lo/writeEnum$onRelationshipValidationResult;
    .locals 1

    .line 3152
    sget-object v0, Lo/writeEnum$onRelationshipValidationResult;->DEFAULT_INSTANCE:Lo/writeEnum$onRelationshipValidationResult;

    return-object v0
.end method

.method public static onNavigationEvent()Lo/writeEnum$onRelationshipValidationResult;
    .locals 1

    .line 3821
    sget-object v0, Lo/writeEnum$onRelationshipValidationResult;->DEFAULT_INSTANCE:Lo/writeEnum$onRelationshipValidationResult;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 3760
    sget-object p2, Lo/writeEnum$1;->onMessageChannelReady:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3805
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 3799
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 3784
    :pswitch_2
    sget-object p1, Lo/writeEnum$onRelationshipValidationResult;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 3786
    const-class p1, Lo/writeEnum$onRelationshipValidationResult;

    monitor-enter p1

    .line 3787
    :try_start_0
    sget-object p2, Lo/writeEnum$onRelationshipValidationResult;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 3789
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/writeEnum$onRelationshipValidationResult;->DEFAULT_INSTANCE:Lo/writeEnum$onRelationshipValidationResult;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 3792
    sput-object p2, Lo/writeEnum$onRelationshipValidationResult;->PARSER:Lo/areReportsAvailable;

    .line 3794
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

    .line 3781
    :pswitch_3
    sget-object p1, Lo/writeEnum$onRelationshipValidationResult;->DEFAULT_INSTANCE:Lo/writeEnum$onRelationshipValidationResult;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "operandType_"

    aput-object v0, p1, p3

    const-string p3, "operandTypeCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "op_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 3768
    const-class p3, Lo/writeEnum$asBinder;

    aput-object p3, p1, p2

    .line 3777
    sget-object p2, Lo/writeEnum$onRelationshipValidationResult;->DEFAULT_INSTANCE:Lo/writeEnum$onRelationshipValidationResult;

    const-string p3, "\u0000\u0002\u0001\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000c\u0002<\u0000"

    invoke-static {p2, p3, p1}, Lo/writeEnum$onRelationshipValidationResult;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3765
    :pswitch_5
    new-instance p1, Lo/writeEnum$onRelationshipValidationResult$onMessageChannelReady;

    invoke-direct {p1, p3}, Lo/writeEnum$onRelationshipValidationResult$onMessageChannelReady;-><init>(B)V

    return-object p1

    .line 3762
    :pswitch_6
    new-instance p1, Lo/writeEnum$onRelationshipValidationResult;

    invoke-direct {p1}, Lo/writeEnum$onRelationshipValidationResult;-><init>()V

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
