.class public final Lo/saveTrackedQuery$onNavigationEvent;
.super Lo/getEventAppExecutionSize;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/saveTrackedQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/saveTrackedQuery$onNavigationEvent$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/saveTrackedQuery$onNavigationEvent;",
        "Lo/saveTrackedQuery$onNavigationEvent$onPostMessage;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lo/saveTrackedQuery$onNavigationEvent;

.field public static final EXPERIMENT_ID_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lo/areReportsAvailable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/saveTrackedQuery$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private experimentId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 370
    new-instance v0, Lo/saveTrackedQuery$onNavigationEvent;

    invoke-direct {v0}, Lo/saveTrackedQuery$onNavigationEvent;-><init>()V

    .line 373
    sput-object v0, Lo/saveTrackedQuery$onNavigationEvent;->DEFAULT_INSTANCE:Lo/saveTrackedQuery$onNavigationEvent;

    .line 374
    const-class v1, Lo/saveTrackedQuery$onNavigationEvent;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    const-string v0, ""

    .line 55
    iput-object v0, p0, Lo/saveTrackedQuery$onNavigationEvent;->experimentId_:Ljava/lang/String;

    return-void
.end method

.method static synthetic ICustomTabsCallback()Lo/saveTrackedQuery$onNavigationEvent;
    .locals 1

    .line 49
    sget-object v0, Lo/saveTrackedQuery$onNavigationEvent;->DEFAULT_INSTANCE:Lo/saveTrackedQuery$onNavigationEvent;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 322
    sget-object p2, Lo/saveTrackedQuery$5;->onMessageChannelReady:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 363
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 357
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 342
    :pswitch_2
    sget-object p1, Lo/saveTrackedQuery$onNavigationEvent;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 344
    const-class p1, Lo/saveTrackedQuery$onNavigationEvent;

    monitor-enter p1

    .line 345
    :try_start_0
    sget-object p2, Lo/saveTrackedQuery$onNavigationEvent;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 347
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/saveTrackedQuery$onNavigationEvent;->DEFAULT_INSTANCE:Lo/saveTrackedQuery$onNavigationEvent;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 350
    sput-object p2, Lo/saveTrackedQuery$onNavigationEvent;->PARSER:Lo/areReportsAvailable;

    .line 352
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

    .line 339
    :pswitch_3
    sget-object p1, Lo/saveTrackedQuery$onNavigationEvent;->DEFAULT_INSTANCE:Lo/saveTrackedQuery$onNavigationEvent;

    return-object p1

    :pswitch_4
    new-array p1, p2, [Ljava/lang/Object;

    const-string p2, "experimentId_"

    aput-object p2, p1, p3

    .line 335
    sget-object p2, Lo/saveTrackedQuery$onNavigationEvent;->DEFAULT_INSTANCE:Lo/saveTrackedQuery$onNavigationEvent;

    const-string p3, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0208"

    invoke-static {p2, p3, p1}, Lo/saveTrackedQuery$onNavigationEvent;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 327
    :pswitch_5
    new-instance p1, Lo/saveTrackedQuery$onNavigationEvent$onPostMessage;

    invoke-direct {p1, p3}, Lo/saveTrackedQuery$onNavigationEvent$onPostMessage;-><init>(B)V

    return-object p1

    .line 324
    :pswitch_6
    new-instance p1, Lo/saveTrackedQuery$onNavigationEvent;

    invoke-direct {p1}, Lo/saveTrackedQuery$onNavigationEvent;-><init>()V

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
