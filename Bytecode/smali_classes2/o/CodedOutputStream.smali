.class public final Lo/CodedOutputStream;
.super Lo/getEventAppExecutionSize;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CodedOutputStream$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/CodedOutputStream;",
        "Lo/CodedOutputStream$onPostMessage;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lo/CodedOutputStream;

.field public static final DOCUMENT_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lo/areReportsAvailable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/CodedOutputStream;",
            ">;"
        }
    .end annotation
.end field

.field public static final READ_TIME_FIELD_NUMBER:I = 0x4

.field public static final REMOVED_TARGET_IDS_FIELD_NUMBER:I = 0x2


# instance fields
.field public document_:Ljava/lang/String;

.field private readTime_:Lo/getCustomHeaders;

.field private removedTargetIdsMemoizedSerializedSize:I

.field public removedTargetIds_:Lo/getEventLogSize$onTransact;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 668
    new-instance v0, Lo/CodedOutputStream;

    invoke-direct {v0}, Lo/CodedOutputStream;-><init>()V

    .line 671
    sput-object v0, Lo/CodedOutputStream;->DEFAULT_INSTANCE:Lo/CodedOutputStream;

    .line 672
    const-class v1, Lo/CodedOutputStream;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    const/4 v0, -0x1

    .line 134
    iput v0, p0, Lo/CodedOutputStream;->removedTargetIdsMemoizedSerializedSize:I

    const-string v0, ""

    .line 24
    iput-object v0, p0, Lo/CodedOutputStream;->document_:Ljava/lang/String;

    .line 25
    invoke-static {}, Lo/CodedOutputStream;->emptyIntList()Lo/getEventLogSize$onTransact;

    move-result-object v0

    iput-object v0, p0, Lo/CodedOutputStream;->removedTargetIds_:Lo/getEventLogSize$onTransact;

    return-void
.end method

.method public static ICustomTabsCallback()Lo/CodedOutputStream;
    .locals 1

    .line 677
    sget-object v0, Lo/CodedOutputStream;->DEFAULT_INSTANCE:Lo/CodedOutputStream;

    return-object v0
.end method

.method static synthetic onNavigationEvent()Lo/CodedOutputStream;
    .locals 1

    .line 18
    sget-object v0, Lo/CodedOutputStream;->DEFAULT_INSTANCE:Lo/CodedOutputStream;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 617
    sget-object p2, Lo/CodedOutputStream$3;->ICustomTabsCallback:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 661
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 655
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 640
    :pswitch_2
    sget-object p1, Lo/CodedOutputStream;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 642
    const-class p1, Lo/CodedOutputStream;

    monitor-enter p1

    .line 643
    :try_start_0
    sget-object p2, Lo/CodedOutputStream;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 645
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/CodedOutputStream;->DEFAULT_INSTANCE:Lo/CodedOutputStream;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 648
    sput-object p2, Lo/CodedOutputStream;->PARSER:Lo/areReportsAvailable;

    .line 650
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

    .line 637
    :pswitch_3
    sget-object p1, Lo/CodedOutputStream;->DEFAULT_INSTANCE:Lo/CodedOutputStream;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "document_"

    aput-object v0, p1, p3

    const-string p3, "removedTargetIds_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "readTime_"

    aput-object p3, p1, p2

    .line 633
    sget-object p2, Lo/CodedOutputStream;->DEFAULT_INSTANCE:Lo/CodedOutputStream;

    const-string p3, "\u0000\u0003\u0000\u0000\u0001\u0004\u0003\u0000\u0001\u0000\u0001\u0208\u0002\'\u0004\t"

    invoke-static {p2, p3, p1}, Lo/CodedOutputStream;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 622
    :pswitch_5
    new-instance p1, Lo/CodedOutputStream$onPostMessage;

    invoke-direct {p1, p3}, Lo/CodedOutputStream$onPostMessage;-><init>(B)V

    return-object p1

    .line 619
    :pswitch_6
    new-instance p1, Lo/CodedOutputStream;

    invoke-direct {p1}, Lo/CodedOutputStream;-><init>()V

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
