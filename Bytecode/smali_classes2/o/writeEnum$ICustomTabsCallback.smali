.class public final Lo/writeEnum$ICustomTabsCallback;
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
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/writeEnum$ICustomTabsCallback$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/writeEnum$ICustomTabsCallback;",
        "Lo/writeEnum$ICustomTabsCallback$ICustomTabsCallback;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# static fields
.field public static final ALL_DESCENDANTS_FIELD_NUMBER:I = 0x3

.field public static final COLLECTION_ID_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lo/writeEnum$ICustomTabsCallback;

.field private static volatile PARSER:Lo/areReportsAvailable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/writeEnum$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public allDescendants_:Z

.field public collectionId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 593
    new-instance v0, Lo/writeEnum$ICustomTabsCallback;

    invoke-direct {v0}, Lo/writeEnum$ICustomTabsCallback;-><init>()V

    .line 596
    sput-object v0, Lo/writeEnum$ICustomTabsCallback;->DEFAULT_INSTANCE:Lo/writeEnum$ICustomTabsCallback;

    .line 597
    const-class v1, Lo/writeEnum$ICustomTabsCallback;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 198
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    const-string v0, ""

    .line 199
    iput-object v0, p0, Lo/writeEnum$ICustomTabsCallback;->collectionId_:Ljava/lang/String;

    return-void
.end method

.method public static ICustomTabsCallback()Lo/writeEnum$ICustomTabsCallback$ICustomTabsCallback;
    .locals 1

    .line 392
    sget-object v0, Lo/writeEnum$ICustomTabsCallback;->DEFAULT_INSTANCE:Lo/writeEnum$ICustomTabsCallback;

    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->createBuilder()Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/writeEnum$ICustomTabsCallback$ICustomTabsCallback;

    return-object v0
.end method

.method static synthetic onMessageChannelReady(Lo/writeEnum$ICustomTabsCallback;Ljava/lang/String;)V
    .locals 0

    .line 1243
    iput-object p1, p0, Lo/writeEnum$ICustomTabsCallback;->collectionId_:Ljava/lang/String;

    return-void
.end method

.method static synthetic onNavigationEvent()Lo/writeEnum$ICustomTabsCallback;
    .locals 1

    .line 193
    sget-object v0, Lo/writeEnum$ICustomTabsCallback;->DEFAULT_INSTANCE:Lo/writeEnum$ICustomTabsCallback;

    return-object v0
.end method

.method static synthetic onNavigationEvent(Lo/writeEnum$ICustomTabsCallback;Z)V
    .locals 0

    const/4 p1, 0x1

    .line 1301
    iput-boolean p1, p0, Lo/writeEnum$ICustomTabsCallback;->allDescendants_:Z

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 543
    sget-object p2, Lo/writeEnum$1;->onMessageChannelReady:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 586
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 580
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 565
    :pswitch_2
    sget-object p1, Lo/writeEnum$ICustomTabsCallback;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 567
    const-class p1, Lo/writeEnum$ICustomTabsCallback;

    monitor-enter p1

    .line 568
    :try_start_0
    sget-object p2, Lo/writeEnum$ICustomTabsCallback;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 570
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/writeEnum$ICustomTabsCallback;->DEFAULT_INSTANCE:Lo/writeEnum$ICustomTabsCallback;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 573
    sput-object p2, Lo/writeEnum$ICustomTabsCallback;->PARSER:Lo/areReportsAvailable;

    .line 575
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

    .line 562
    :pswitch_3
    sget-object p1, Lo/writeEnum$ICustomTabsCallback;->DEFAULT_INSTANCE:Lo/writeEnum$ICustomTabsCallback;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "collectionId_"

    aput-object v0, p1, p3

    const-string p3, "allDescendants_"

    aput-object p3, p1, p2

    .line 558
    sget-object p2, Lo/writeEnum$ICustomTabsCallback;->DEFAULT_INSTANCE:Lo/writeEnum$ICustomTabsCallback;

    const-string p3, "\u0000\u0002\u0000\u0000\u0002\u0003\u0002\u0000\u0000\u0000\u0002\u0208\u0003\u0007"

    invoke-static {p2, p3, p1}, Lo/writeEnum$ICustomTabsCallback;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 548
    :pswitch_5
    new-instance p1, Lo/writeEnum$ICustomTabsCallback$ICustomTabsCallback;

    invoke-direct {p1, p3}, Lo/writeEnum$ICustomTabsCallback$ICustomTabsCallback;-><init>(B)V

    return-object p1

    .line 545
    :pswitch_6
    new-instance p1, Lo/writeEnum$ICustomTabsCallback;

    invoke-direct {p1}, Lo/writeEnum$ICustomTabsCallback;-><init>()V

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
