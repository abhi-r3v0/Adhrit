.class public final Lo/writeBytes;
.super Lo/getEventAppExecutionSize;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/writeBytes$ICustomTabsCallback;,
        Lo/writeBytes$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/writeBytes;",
        "Lo/writeBytes$ICustomTabsCallback;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lo/writeBytes;

.field public static final FIELDS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lo/areReportsAvailable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/writeBytes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public fields_:Lo/WireFormat$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/WireFormat$1<",
            "Ljava/lang/String;",
            "Lo/writeRawMessageSetExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 462
    new-instance v0, Lo/writeBytes;

    invoke-direct {v0}, Lo/writeBytes;-><init>()V

    .line 465
    sput-object v0, Lo/writeBytes;->DEFAULT_INSTANCE:Lo/writeBytes;

    .line 466
    const-class v1, Lo/writeBytes;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    .line 33
    invoke-static {}, Lo/WireFormat$1;->onPostMessage()Lo/WireFormat$1;

    move-result-object v0

    iput-object v0, p0, Lo/writeBytes;->fields_:Lo/WireFormat$1;

    return-void
.end method

.method public static ICustomTabsCallback()Lo/writeBytes;
    .locals 1

    .line 471
    sget-object v0, Lo/writeBytes;->DEFAULT_INSTANCE:Lo/writeBytes;

    return-object v0
.end method

.method static synthetic asBinder()Lo/writeBytes;
    .locals 1

    .line 13
    sget-object v0, Lo/writeBytes;->DEFAULT_INSTANCE:Lo/writeBytes;

    return-object v0
.end method

.method static synthetic onNavigationEvent(Lo/writeBytes;)Ljava/util/Map;
    .locals 2

    .line 2040
    iget-object v0, p0, Lo/writeBytes;->fields_:Lo/WireFormat$1;

    .line 2227
    iget-boolean v0, v0, Lo/WireFormat$1;->extraCallback:Z

    if-nez v0, :cond_1

    .line 2041
    iget-object v0, p0, Lo/writeBytes;->fields_:Lo/WireFormat$1;

    .line 3214
    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lo/WireFormat$1;

    invoke-direct {v0}, Lo/WireFormat$1;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Lo/WireFormat$1;

    invoke-direct {v1, v0}, Lo/WireFormat$1;-><init>(Ljava/util/Map;)V

    move-object v0, v1

    .line 2041
    :goto_0
    iput-object v0, p0, Lo/writeBytes;->fields_:Lo/WireFormat$1;

    .line 2043
    :cond_1
    iget-object p0, p0, Lo/writeBytes;->fields_:Lo/WireFormat$1;

    return-object p0
.end method

.method public static onNavigationEvent()Lo/writeBytes$ICustomTabsCallback;
    .locals 1

    .line 228
    sget-object v0, Lo/writeBytes;->DEFAULT_INSTANCE:Lo/writeBytes;

    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->createBuilder()Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/writeBytes$ICustomTabsCallback;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;)Lo/writeRawMessageSetExtension;
    .locals 2

    .line 1036
    iget-object v0, p0, Lo/writeBytes;->fields_:Lo/WireFormat$1;

    .line 132
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/writeRawMessageSetExtension;

    return-object p1

    .line 133
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 413
    sget-object p2, Lo/writeBytes$2;->onPostMessage:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 455
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 449
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 434
    :pswitch_2
    sget-object p1, Lo/writeBytes;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 436
    const-class p1, Lo/writeBytes;

    monitor-enter p1

    .line 437
    :try_start_0
    sget-object p2, Lo/writeBytes;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 439
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/writeBytes;->DEFAULT_INSTANCE:Lo/writeBytes;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 442
    sput-object p2, Lo/writeBytes;->PARSER:Lo/areReportsAvailable;

    .line 444
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

    .line 431
    :pswitch_3
    sget-object p1, Lo/writeBytes;->DEFAULT_INSTANCE:Lo/writeBytes;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "fields_"

    aput-object v0, p1, p3

    .line 421
    sget-object p3, Lo/writeBytes$onMessageChannelReady;->ICustomTabsCallback:Lo/getTagWireType;

    aput-object p3, p1, p2

    .line 427
    sget-object p2, Lo/writeBytes;->DEFAULT_INSTANCE:Lo/writeBytes;

    const-string p3, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u00012"

    invoke-static {p2, p3, p1}, Lo/writeBytes;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 418
    :pswitch_5
    new-instance p1, Lo/writeBytes$ICustomTabsCallback;

    invoke-direct {p1, p3}, Lo/writeBytes$ICustomTabsCallback;-><init>(B)V

    return-object p1

    .line 415
    :pswitch_6
    new-instance p1, Lo/writeBytes;

    invoke-direct {p1}, Lo/writeBytes;-><init>()V

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
