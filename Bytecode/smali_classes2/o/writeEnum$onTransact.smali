.class public final Lo/writeEnum$onTransact;
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
    name = "onTransact"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/writeEnum$onTransact$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/writeEnum$onTransact;",
        "Lo/writeEnum$onTransact$onPostMessage;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lo/writeEnum$onTransact;

.field public static final DIRECTION_FIELD_NUMBER:I = 0x2

.field public static final FIELD_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lo/areReportsAvailable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/writeEnum$onTransact;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public direction_:I

.field public field_:Lo/writeEnum$asBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4307
    new-instance v0, Lo/writeEnum$onTransact;

    invoke-direct {v0}, Lo/writeEnum$onTransact;-><init>()V

    .line 4310
    sput-object v0, Lo/writeEnum$onTransact;->DEFAULT_INSTANCE:Lo/writeEnum$onTransact;

    .line 4311
    const-class v1, Lo/writeEnum$onTransact;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3885
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback()Lo/writeEnum$onTransact$onPostMessage;
    .locals 1

    .line 4090
    sget-object v0, Lo/writeEnum$onTransact;->DEFAULT_INSTANCE:Lo/writeEnum$onTransact;

    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->createBuilder()Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/writeEnum$onTransact$onPostMessage;

    return-object v0
.end method

.method static synthetic onNavigationEvent()Lo/writeEnum$onTransact;
    .locals 1

    .line 3880
    sget-object v0, Lo/writeEnum$onTransact;->DEFAULT_INSTANCE:Lo/writeEnum$onTransact;

    return-object v0
.end method

.method static synthetic onNavigationEvent(Lo/writeEnum$onTransact;Lo/writeEnum$asBinder;)V
    .locals 0

    .line 4920
    iput-object p1, p0, Lo/writeEnum$onTransact;->field_:Lo/writeEnum$asBinder;

    return-void
.end method

.method static synthetic onPostMessage(Lo/writeEnum$onTransact;Lo/writeEnum$onNavigationEvent;)V
    .locals 1

    .line 5086
    sget-object v0, Lo/writeEnum$onNavigationEvent;->onMessageChannelReady:Lo/writeEnum$onNavigationEvent;

    if-eq p1, v0, :cond_0

    .line 5090
    iget p1, p1, Lo/writeEnum$onNavigationEvent;->onNavigationEvent:I

    .line 5000
    iput p1, p0, Lo/writeEnum$onTransact;->direction_:I

    return-void

    .line 5087
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t get the number of an unknown enum value."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 4258
    sget-object p2, Lo/writeEnum$1;->onMessageChannelReady:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 4300
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 4294
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4279
    :pswitch_2
    sget-object p1, Lo/writeEnum$onTransact;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 4281
    const-class p1, Lo/writeEnum$onTransact;

    monitor-enter p1

    .line 4282
    :try_start_0
    sget-object p2, Lo/writeEnum$onTransact;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 4284
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/writeEnum$onTransact;->DEFAULT_INSTANCE:Lo/writeEnum$onTransact;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 4287
    sput-object p2, Lo/writeEnum$onTransact;->PARSER:Lo/areReportsAvailable;

    .line 4289
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

    .line 4276
    :pswitch_3
    sget-object p1, Lo/writeEnum$onTransact;->DEFAULT_INSTANCE:Lo/writeEnum$onTransact;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "field_"

    aput-object v0, p1, p3

    const-string p3, "direction_"

    aput-object p3, p1, p2

    .line 4272
    sget-object p2, Lo/writeEnum$onTransact;->DEFAULT_INSTANCE:Lo/writeEnum$onTransact;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\u000c"

    invoke-static {p2, p3, p1}, Lo/writeEnum$onTransact;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4263
    :pswitch_5
    new-instance p1, Lo/writeEnum$onTransact$onPostMessage;

    invoke-direct {p1, p3}, Lo/writeEnum$onTransact$onPostMessage;-><init>(B)V

    return-object p1

    .line 4260
    :pswitch_6
    new-instance p1, Lo/writeEnum$onTransact;

    invoke-direct {p1}, Lo/writeEnum$onTransact;-><init>()V

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
