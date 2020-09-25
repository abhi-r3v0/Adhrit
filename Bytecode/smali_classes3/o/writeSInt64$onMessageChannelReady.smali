.class public final Lo/writeSInt64$onMessageChannelReady;
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
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/writeSInt64$onMessageChannelReady$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/writeSInt64$onMessageChannelReady;",
        "Lo/writeSInt64$onMessageChannelReady$onNavigationEvent;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lo/writeSInt64$onMessageChannelReady;

.field private static volatile PARSER:Lo/areReportsAvailable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/writeSInt64$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field

.field public static final READ_TIME_FIELD_NUMBER:I = 0x2


# instance fields
.field private consistencySelectorCase_:I

.field private consistencySelector_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 704
    new-instance v0, Lo/writeSInt64$onMessageChannelReady;

    invoke-direct {v0}, Lo/writeSInt64$onMessageChannelReady;-><init>()V

    .line 707
    sput-object v0, Lo/writeSInt64$onMessageChannelReady;->DEFAULT_INSTANCE:Lo/writeSInt64$onMessageChannelReady;

    .line 708
    const-class v1, Lo/writeSInt64$onMessageChannelReady;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 340
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    const/4 v0, 0x0

    .line 342
    iput v0, p0, Lo/writeSInt64$onMessageChannelReady;->consistencySelectorCase_:I

    return-void
.end method

.method static synthetic ICustomTabsCallback()Lo/writeSInt64$onMessageChannelReady;
    .locals 1

    .line 335
    sget-object v0, Lo/writeSInt64$onMessageChannelReady;->DEFAULT_INSTANCE:Lo/writeSInt64$onMessageChannelReady;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 654
    sget-object p2, Lo/writeSInt64$1;->ICustomTabsCallback:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 697
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 691
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 676
    :pswitch_2
    sget-object p1, Lo/writeSInt64$onMessageChannelReady;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 678
    const-class p1, Lo/writeSInt64$onMessageChannelReady;

    monitor-enter p1

    .line 679
    :try_start_0
    sget-object p2, Lo/writeSInt64$onMessageChannelReady;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 681
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/writeSInt64$onMessageChannelReady;->DEFAULT_INSTANCE:Lo/writeSInt64$onMessageChannelReady;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 684
    sput-object p2, Lo/writeSInt64$onMessageChannelReady;->PARSER:Lo/areReportsAvailable;

    .line 686
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

    .line 673
    :pswitch_3
    sget-object p1, Lo/writeSInt64$onMessageChannelReady;->DEFAULT_INSTANCE:Lo/writeSInt64$onMessageChannelReady;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "consistencySelector_"

    aput-object v0, p1, p3

    const-string p3, "consistencySelectorCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 662
    const-class p3, Lo/getCustomHeaders;

    aput-object p3, p1, p2

    .line 669
    sget-object p2, Lo/writeSInt64$onMessageChannelReady;->DEFAULT_INSTANCE:Lo/writeSInt64$onMessageChannelReady;

    const-string p3, "\u0000\u0001\u0001\u0000\u0002\u0002\u0001\u0000\u0000\u0000\u0002<\u0000"

    invoke-static {p2, p3, p1}, Lo/writeSInt64$onMessageChannelReady;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 659
    :pswitch_5
    new-instance p1, Lo/writeSInt64$onMessageChannelReady$onNavigationEvent;

    invoke-direct {p1, p3}, Lo/writeSInt64$onMessageChannelReady$onNavigationEvent;-><init>(B)V

    return-object p1

    .line 656
    :pswitch_6
    new-instance p1, Lo/writeSInt64$onMessageChannelReady;

    invoke-direct {p1}, Lo/writeSInt64$onMessageChannelReady;-><init>()V

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
