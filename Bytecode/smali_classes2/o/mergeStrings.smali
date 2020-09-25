.class public final Lo/mergeStrings;
.super Lo/getEventAppExecutionSize;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/mergeStrings$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/mergeStrings;",
        "Lo/mergeStrings$onMessageChannelReady;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lo/mergeStrings;

.field public static final LATITUDE_FIELD_NUMBER:I = 0x1

.field public static final LONGITUDE_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lo/areReportsAvailable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/mergeStrings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public latitude_:D

.field public longitude_:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 340
    new-instance v0, Lo/mergeStrings;

    invoke-direct {v0}, Lo/mergeStrings;-><init>()V

    .line 343
    sput-object v0, Lo/mergeStrings;->DEFAULT_INSTANCE:Lo/mergeStrings;

    .line 344
    const-class v1, Lo/mergeStrings;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback()Lo/mergeStrings$onMessageChannelReady;
    .locals 1

    .line 175
    sget-object v0, Lo/mergeStrings;->DEFAULT_INSTANCE:Lo/mergeStrings;

    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->createBuilder()Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/mergeStrings$onMessageChannelReady;

    return-object v0
.end method

.method static synthetic ICustomTabsCallback(Lo/mergeStrings;D)V
    .locals 0

    .line 1048
    iput-wide p1, p0, Lo/mergeStrings;->latitude_:D

    return-void
.end method

.method static synthetic extraCallback(Lo/mergeStrings;D)V
    .locals 0

    .line 1086
    iput-wide p1, p0, Lo/mergeStrings;->longitude_:D

    return-void
.end method

.method public static onNavigationEvent()Lo/mergeStrings;
    .locals 1

    .line 349
    sget-object v0, Lo/mergeStrings;->DEFAULT_INSTANCE:Lo/mergeStrings;

    return-object v0
.end method

.method static synthetic onTransact()Lo/mergeStrings;
    .locals 1

    .line 17
    sget-object v0, Lo/mergeStrings;->DEFAULT_INSTANCE:Lo/mergeStrings;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 290
    sget-object p2, Lo/mergeStrings$5;->onMessageChannelReady:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 333
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 327
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 312
    :pswitch_2
    sget-object p1, Lo/mergeStrings;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 314
    const-class p1, Lo/mergeStrings;

    monitor-enter p1

    .line 315
    :try_start_0
    sget-object p2, Lo/mergeStrings;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 317
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/mergeStrings;->DEFAULT_INSTANCE:Lo/mergeStrings;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 320
    sput-object p2, Lo/mergeStrings;->PARSER:Lo/areReportsAvailable;

    .line 322
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

    .line 309
    :pswitch_3
    sget-object p1, Lo/mergeStrings;->DEFAULT_INSTANCE:Lo/mergeStrings;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "latitude_"

    aput-object v0, p1, p3

    const-string p3, "longitude_"

    aput-object p3, p1, p2

    .line 305
    sget-object p2, Lo/mergeStrings;->DEFAULT_INSTANCE:Lo/mergeStrings;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0000\u0002\u0000"

    invoke-static {p2, p3, p1}, Lo/mergeStrings;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 295
    :pswitch_5
    new-instance p1, Lo/mergeStrings$onMessageChannelReady;

    invoke-direct {p1, p3}, Lo/mergeStrings$onMessageChannelReady;-><init>(B)V

    return-object p1

    .line 292
    :pswitch_6
    new-instance p1, Lo/mergeStrings;

    invoke-direct {p1}, Lo/mergeStrings;-><init>()V

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
