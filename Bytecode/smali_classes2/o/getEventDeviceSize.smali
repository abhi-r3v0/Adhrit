.class public final Lo/getEventDeviceSize;
.super Lo/getEventAppExecutionSize;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getEventDeviceSize$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/getEventDeviceSize;",
        "Lo/getEventDeviceSize$onMessageChannelReady;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lo/getEventDeviceSize;

.field private static volatile PARSER:Lo/areReportsAvailable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/getEventDeviceSize;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUE_FIELD_NUMBER:I = 0x1


# instance fields
.field public value_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 254
    new-instance v0, Lo/getEventDeviceSize;

    invoke-direct {v0}, Lo/getEventDeviceSize;-><init>()V

    .line 257
    sput-object v0, Lo/getEventDeviceSize;->DEFAULT_INSTANCE:Lo/getEventDeviceSize;

    .line 258
    const-class v1, Lo/getEventDeviceSize;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback()Lo/getEventDeviceSize;
    .locals 1

    .line 263
    sget-object v0, Lo/getEventDeviceSize;->DEFAULT_INSTANCE:Lo/getEventDeviceSize;

    return-object v0
.end method

.method static synthetic ICustomTabsCallback$Stub()Lo/getEventDeviceSize;
    .locals 1

    .line 14
    sget-object v0, Lo/getEventDeviceSize;->DEFAULT_INSTANCE:Lo/getEventDeviceSize;

    return-object v0
.end method

.method static synthetic extraCallback(Lo/getEventDeviceSize;I)V
    .locals 0

    .line 1045
    iput p1, p0, Lo/getEventDeviceSize;->value_:I

    return-void
.end method

.method public static onNavigationEvent()Lo/getEventDeviceSize$onMessageChannelReady;
    .locals 1

    .line 134
    sget-object v0, Lo/getEventDeviceSize;->DEFAULT_INSTANCE:Lo/getEventDeviceSize;

    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->createBuilder()Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/getEventDeviceSize$onMessageChannelReady;

    return-object v0
.end method


# virtual methods
.method protected final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 206
    sget-object p2, Lo/getEventDeviceSize$3;->ICustomTabsCallback:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 247
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 241
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 226
    :pswitch_2
    sget-object p1, Lo/getEventDeviceSize;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 228
    const-class p1, Lo/getEventDeviceSize;

    monitor-enter p1

    .line 229
    :try_start_0
    sget-object p2, Lo/getEventDeviceSize;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 231
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/getEventDeviceSize;->DEFAULT_INSTANCE:Lo/getEventDeviceSize;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 234
    sput-object p2, Lo/getEventDeviceSize;->PARSER:Lo/areReportsAvailable;

    .line 236
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

    .line 223
    :pswitch_3
    sget-object p1, Lo/getEventDeviceSize;->DEFAULT_INSTANCE:Lo/getEventDeviceSize;

    return-object p1

    :pswitch_4
    new-array p1, p2, [Ljava/lang/Object;

    const-string p2, "value_"

    aput-object p2, p1, p3

    .line 219
    sget-object p2, Lo/getEventDeviceSize;->DEFAULT_INSTANCE:Lo/getEventDeviceSize;

    const-string p3, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0004"

    invoke-static {p2, p3, p1}, Lo/getEventDeviceSize;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 211
    :pswitch_5
    new-instance p1, Lo/getEventDeviceSize$onMessageChannelReady;

    invoke-direct {p1, p3}, Lo/getEventDeviceSize$onMessageChannelReady;-><init>(B)V

    return-object p1

    .line 208
    :pswitch_6
    new-instance p1, Lo/getEventDeviceSize;

    invoke-direct {p1}, Lo/getEventDeviceSize;-><init>()V

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
