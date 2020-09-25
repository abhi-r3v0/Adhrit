.class public final Lo/writeRawLittleEndian32;
.super Lo/getEventAppExecutionSize;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/writeRawLittleEndian32$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/writeRawLittleEndian32;",
        "Lo/writeRawLittleEndian32$ICustomTabsCallback;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lo/writeRawLittleEndian32;

.field private static volatile PARSER:Lo/areReportsAvailable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/writeRawLittleEndian32;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_URL_FIELD_NUMBER:I = 0x1

.field public static final VALUE_FIELD_NUMBER:I = 0x2


# instance fields
.field private typeUrl_:Ljava/lang/String;

.field private value_:Lo/SessionProtobufHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 737
    new-instance v0, Lo/writeRawLittleEndian32;

    invoke-direct {v0}, Lo/writeRawLittleEndian32;-><init>()V

    .line 740
    sput-object v0, Lo/writeRawLittleEndian32;->DEFAULT_INSTANCE:Lo/writeRawLittleEndian32;

    .line 741
    const-class v1, Lo/writeRawLittleEndian32;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    const-string v0, ""

    .line 81
    iput-object v0, p0, Lo/writeRawLittleEndian32;->typeUrl_:Ljava/lang/String;

    .line 82
    sget-object v0, Lo/SessionProtobufHelper;->onNavigationEvent:Lo/SessionProtobufHelper;

    iput-object v0, p0, Lo/writeRawLittleEndian32;->value_:Lo/SessionProtobufHelper;

    return-void
.end method

.method static synthetic onNavigationEvent()Lo/writeRawLittleEndian32;
    .locals 1

    .line 75
    sget-object v0, Lo/writeRawLittleEndian32;->DEFAULT_INSTANCE:Lo/writeRawLittleEndian32;

    return-object v0
.end method


# virtual methods
.method protected final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 687
    sget-object p2, Lo/writeRawLittleEndian32$4;->extraCallback:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 730
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 724
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 709
    :pswitch_2
    sget-object p1, Lo/writeRawLittleEndian32;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 711
    const-class p1, Lo/writeRawLittleEndian32;

    monitor-enter p1

    .line 712
    :try_start_0
    sget-object p2, Lo/writeRawLittleEndian32;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 714
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/writeRawLittleEndian32;->DEFAULT_INSTANCE:Lo/writeRawLittleEndian32;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 717
    sput-object p2, Lo/writeRawLittleEndian32;->PARSER:Lo/areReportsAvailable;

    .line 719
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

    .line 706
    :pswitch_3
    sget-object p1, Lo/writeRawLittleEndian32;->DEFAULT_INSTANCE:Lo/writeRawLittleEndian32;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "typeUrl_"

    aput-object v0, p1, p3

    const-string p3, "value_"

    aput-object p3, p1, p2

    .line 702
    sget-object p2, Lo/writeRawLittleEndian32;->DEFAULT_INSTANCE:Lo/writeRawLittleEndian32;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\n"

    invoke-static {p2, p3, p1}, Lo/writeRawLittleEndian32;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 692
    :pswitch_5
    new-instance p1, Lo/writeRawLittleEndian32$ICustomTabsCallback;

    invoke-direct {p1, p3}, Lo/writeRawLittleEndian32$ICustomTabsCallback;-><init>(B)V

    return-object p1

    .line 689
    :pswitch_6
    new-instance p1, Lo/writeRawLittleEndian32;

    invoke-direct {p1}, Lo/writeRawLittleEndian32;-><init>()V

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
