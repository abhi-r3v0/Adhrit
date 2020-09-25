.class public final Lo/writeInt64;
.super Lo/getEventAppExecutionSize;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/writeInt64$onNavigationEvent;,
        Lo/writeInt64$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/writeInt64;",
        "Lo/writeInt64$onNavigationEvent;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lo/writeInt64;

.field public static final DOCUMENT_FIELD_NUMBER:I = 0x1

.field public static final FIELD_TRANSFORMS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lo/areReportsAvailable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/writeInt64;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public document_:Ljava/lang/String;

.field public fieldTransforms_:Lo/getEventLogSize$asBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getEventLogSize$asBinder<",
            "Lo/writeInt64$onPostMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2724
    new-instance v0, Lo/writeInt64;

    invoke-direct {v0}, Lo/writeInt64;-><init>()V

    .line 2727
    sput-object v0, Lo/writeInt64;->DEFAULT_INSTANCE:Lo/writeInt64;

    .line 2728
    const-class v1, Lo/writeInt64;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lo/writeInt64;->document_:Ljava/lang/String;

    .line 20
    invoke-static {}, Lo/writeInt64;->emptyProtobufList()Lo/getEventLogSize$asBinder;

    move-result-object v0

    iput-object v0, p0, Lo/writeInt64;->fieldTransforms_:Lo/getEventLogSize$asBinder;

    return-void
.end method

.method public static ICustomTabsCallback()Lo/writeInt64;
    .locals 1

    .line 2733
    sget-object v0, Lo/writeInt64;->DEFAULT_INSTANCE:Lo/writeInt64;

    return-object v0
.end method

.method static synthetic asBinder()Lo/writeInt64;
    .locals 1

    .line 13
    sget-object v0, Lo/writeInt64;->DEFAULT_INSTANCE:Lo/writeInt64;

    return-object v0
.end method

.method static synthetic extraCallback(Lo/writeInt64;Lo/writeInt64$onPostMessage;)V
    .locals 1

    .line 4233
    iget-object v0, p0, Lo/writeInt64;->fieldTransforms_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0}, Lo/getEventLogSize$asBinder;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4234
    iget-object v0, p0, Lo/writeInt64;->fieldTransforms_:Lo/getEventLogSize$asBinder;

    .line 4235
    invoke-static {v0}, Lo/getEventAppExecutionSize;->mutableCopy(Lo/getEventLogSize$asBinder;)Lo/getEventLogSize$asBinder;

    move-result-object v0

    iput-object v0, p0, Lo/writeInt64;->fieldTransforms_:Lo/getEventLogSize$asBinder;

    .line 3266
    :cond_0
    iget-object p0, p0, Lo/writeInt64;->fieldTransforms_:Lo/getEventLogSize$asBinder;

    invoke-interface {p0, p1}, Lo/getEventLogSize$asBinder;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static onNavigationEvent()Lo/writeInt64$onNavigationEvent;
    .locals 1

    .line 2399
    sget-object v0, Lo/writeInt64;->DEFAULT_INSTANCE:Lo/writeInt64;

    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->createBuilder()Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/writeInt64$onNavigationEvent;

    return-object v0
.end method

.method static synthetic onNavigationEvent(Lo/writeInt64;Ljava/lang/String;)V
    .locals 0

    .line 3137
    iput-object p1, p0, Lo/writeInt64;->document_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2673
    sget-object p2, Lo/writeInt64$5;->onNavigationEvent:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2717
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 2711
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2696
    :pswitch_2
    sget-object p1, Lo/writeInt64;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 2698
    const-class p1, Lo/writeInt64;

    monitor-enter p1

    .line 2699
    :try_start_0
    sget-object p2, Lo/writeInt64;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 2701
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/writeInt64;->DEFAULT_INSTANCE:Lo/writeInt64;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 2704
    sput-object p2, Lo/writeInt64;->PARSER:Lo/areReportsAvailable;

    .line 2706
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

    .line 2693
    :pswitch_3
    sget-object p1, Lo/writeInt64;->DEFAULT_INSTANCE:Lo/writeInt64;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "document_"

    aput-object v0, p1, p3

    const-string p3, "fieldTransforms_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 2681
    const-class p3, Lo/writeInt64$onPostMessage;

    aput-object p3, p1, p2

    .line 2689
    sget-object p2, Lo/writeInt64;->DEFAULT_INSTANCE:Lo/writeInt64;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u0208\u0002\u001b"

    invoke-static {p2, p3, p1}, Lo/writeInt64;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2678
    :pswitch_5
    new-instance p1, Lo/writeInt64$onNavigationEvent;

    invoke-direct {p1, p3}, Lo/writeInt64$onNavigationEvent;-><init>(B)V

    return-object p1

    .line 2675
    :pswitch_6
    new-instance p1, Lo/writeInt64;

    invoke-direct {p1}, Lo/writeInt64;-><init>()V

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
