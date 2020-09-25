.class public final Lo/writeSInt64$ICustomTabsCallback;
.super Lo/getEventAppExecutionSize;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeSInt64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/writeSInt64$ICustomTabsCallback$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/writeSInt64$ICustomTabsCallback;",
        "Lo/writeSInt64$ICustomTabsCallback$onPostMessage;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lo/writeSInt64$ICustomTabsCallback;

.field private static volatile PARSER:Lo/areReportsAvailable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/writeSInt64$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field

.field public static final RETRY_TRANSACTION_FIELD_NUMBER:I = 0x1


# instance fields
.field private retryTransaction_:Lo/SessionProtobufHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 282
    new-instance v0, Lo/writeSInt64$ICustomTabsCallback;

    invoke-direct {v0}, Lo/writeSInt64$ICustomTabsCallback;-><init>()V

    .line 285
    sput-object v0, Lo/writeSInt64$ICustomTabsCallback;->DEFAULT_INSTANCE:Lo/writeSInt64$ICustomTabsCallback;

    .line 286
    const-class v1, Lo/writeSInt64$ICustomTabsCallback;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    .line 47
    sget-object v0, Lo/SessionProtobufHelper;->onNavigationEvent:Lo/SessionProtobufHelper;

    iput-object v0, p0, Lo/writeSInt64$ICustomTabsCallback;->retryTransaction_:Lo/SessionProtobufHelper;

    return-void
.end method

.method static synthetic onNavigationEvent()Lo/writeSInt64$ICustomTabsCallback;
    .locals 1

    .line 41
    sget-object v0, Lo/writeSInt64$ICustomTabsCallback;->DEFAULT_INSTANCE:Lo/writeSInt64$ICustomTabsCallback;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 234
    sget-object p2, Lo/writeSInt64$1;->ICustomTabsCallback:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 275
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 269
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 254
    :pswitch_2
    sget-object p1, Lo/writeSInt64$ICustomTabsCallback;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 256
    const-class p1, Lo/writeSInt64$ICustomTabsCallback;

    monitor-enter p1

    .line 257
    :try_start_0
    sget-object p2, Lo/writeSInt64$ICustomTabsCallback;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 259
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/writeSInt64$ICustomTabsCallback;->DEFAULT_INSTANCE:Lo/writeSInt64$ICustomTabsCallback;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 262
    sput-object p2, Lo/writeSInt64$ICustomTabsCallback;->PARSER:Lo/areReportsAvailable;

    .line 264
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

    .line 251
    :pswitch_3
    sget-object p1, Lo/writeSInt64$ICustomTabsCallback;->DEFAULT_INSTANCE:Lo/writeSInt64$ICustomTabsCallback;

    return-object p1

    :pswitch_4
    new-array p1, p2, [Ljava/lang/Object;

    const-string p2, "retryTransaction_"

    aput-object p2, p1, p3

    .line 247
    sget-object p2, Lo/writeSInt64$ICustomTabsCallback;->DEFAULT_INSTANCE:Lo/writeSInt64$ICustomTabsCallback;

    const-string p3, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\n"

    invoke-static {p2, p3, p1}, Lo/writeSInt64$ICustomTabsCallback;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 239
    :pswitch_5
    new-instance p1, Lo/writeSInt64$ICustomTabsCallback$onPostMessage;

    invoke-direct {p1, p3}, Lo/writeSInt64$ICustomTabsCallback$onPostMessage;-><init>(B)V

    return-object p1

    .line 236
    :pswitch_6
    new-instance p1, Lo/writeSInt64$ICustomTabsCallback;

    invoke-direct {p1}, Lo/writeSInt64$ICustomTabsCallback;-><init>()V

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
