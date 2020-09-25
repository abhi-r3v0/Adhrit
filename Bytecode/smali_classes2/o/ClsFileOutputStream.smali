.class public final Lo/ClsFileOutputStream;
.super Lo/getEventAppExecutionSize;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ClsFileOutputStream$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/ClsFileOutputStream;",
        "Lo/ClsFileOutputStream$onMessageChannelReady;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# static fields
.field public static final DATABASE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lo/ClsFileOutputStream;

.field private static volatile PARSER:Lo/areReportsAvailable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/ClsFileOutputStream;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSACTION_FIELD_NUMBER:I = 0x3

.field public static final WRITES_FIELD_NUMBER:I = 0x2


# instance fields
.field private database_:Ljava/lang/String;

.field private transaction_:Lo/SessionProtobufHelper;

.field private writes_:Lo/getEventLogSize$asBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getEventLogSize$asBinder<",
            "Lo/writeSInt32;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 716
    new-instance v0, Lo/ClsFileOutputStream;

    invoke-direct {v0}, Lo/ClsFileOutputStream;-><init>()V

    .line 719
    sput-object v0, Lo/ClsFileOutputStream;->DEFAULT_INSTANCE:Lo/ClsFileOutputStream;

    .line 720
    const-class v1, Lo/ClsFileOutputStream;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lo/ClsFileOutputStream;->database_:Ljava/lang/String;

    .line 20
    invoke-static {}, Lo/ClsFileOutputStream;->emptyProtobufList()Lo/getEventLogSize$asBinder;

    move-result-object v0

    iput-object v0, p0, Lo/ClsFileOutputStream;->writes_:Lo/getEventLogSize$asBinder;

    .line 21
    sget-object v0, Lo/SessionProtobufHelper;->onNavigationEvent:Lo/SessionProtobufHelper;

    iput-object v0, p0, Lo/ClsFileOutputStream;->transaction_:Lo/SessionProtobufHelper;

    return-void
.end method

.method public static ICustomTabsCallback()Lo/ClsFileOutputStream$onMessageChannelReady;
    .locals 1

    .line 357
    sget-object v0, Lo/ClsFileOutputStream;->DEFAULT_INSTANCE:Lo/ClsFileOutputStream;

    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->createBuilder()Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/ClsFileOutputStream$onMessageChannelReady;

    return-object v0
.end method

.method static synthetic asBinder()Lo/ClsFileOutputStream;
    .locals 1

    .line 13
    sget-object v0, Lo/ClsFileOutputStream;->DEFAULT_INSTANCE:Lo/ClsFileOutputStream;

    return-object v0
.end method

.method static synthetic extraCallback(Lo/ClsFileOutputStream;Lo/writeSInt32;)V
    .locals 1

    .line 2158
    iget-object v0, p0, Lo/ClsFileOutputStream;->writes_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0}, Lo/getEventLogSize$asBinder;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2159
    iget-object v0, p0, Lo/ClsFileOutputStream;->writes_:Lo/getEventLogSize$asBinder;

    .line 2160
    invoke-static {v0}, Lo/getEventAppExecutionSize;->mutableCopy(Lo/getEventLogSize$asBinder;)Lo/getEventLogSize$asBinder;

    move-result-object v0

    iput-object v0, p0, Lo/ClsFileOutputStream;->writes_:Lo/getEventLogSize$asBinder;

    .line 1189
    :cond_0
    iget-object p0, p0, Lo/ClsFileOutputStream;->writes_:Lo/getEventLogSize$asBinder;

    invoke-interface {p0, p1}, Lo/getEventLogSize$asBinder;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static onNavigationEvent()Lo/ClsFileOutputStream;
    .locals 1

    .line 725
    sget-object v0, Lo/ClsFileOutputStream;->DEFAULT_INSTANCE:Lo/ClsFileOutputStream;

    return-object v0
.end method

.method static synthetic onNavigationEvent(Lo/ClsFileOutputStream;Ljava/lang/String;)V
    .locals 0

    .line 1065
    iput-object p1, p0, Lo/ClsFileOutputStream;->database_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 664
    sget-object p2, Lo/ClsFileOutputStream$1;->ICustomTabsCallback:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 709
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 703
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 688
    :pswitch_2
    sget-object p1, Lo/ClsFileOutputStream;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 690
    const-class p1, Lo/ClsFileOutputStream;

    monitor-enter p1

    .line 691
    :try_start_0
    sget-object p2, Lo/ClsFileOutputStream;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 693
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/ClsFileOutputStream;->DEFAULT_INSTANCE:Lo/ClsFileOutputStream;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 696
    sput-object p2, Lo/ClsFileOutputStream;->PARSER:Lo/areReportsAvailable;

    .line 698
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

    .line 685
    :pswitch_3
    sget-object p1, Lo/ClsFileOutputStream;->DEFAULT_INSTANCE:Lo/ClsFileOutputStream;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "database_"

    aput-object v0, p1, p3

    const-string p3, "writes_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 672
    const-class p3, Lo/writeSInt32;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "transaction_"

    aput-object p3, p1, p2

    .line 681
    sget-object p2, Lo/ClsFileOutputStream;->DEFAULT_INSTANCE:Lo/ClsFileOutputStream;

    const-string p3, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u0208\u0002\u001b\u0003\n"

    invoke-static {p2, p3, p1}, Lo/ClsFileOutputStream;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 669
    :pswitch_5
    new-instance p1, Lo/ClsFileOutputStream$onMessageChannelReady;

    invoke-direct {p1, p3}, Lo/ClsFileOutputStream$onMessageChannelReady;-><init>(B)V

    return-object p1

    .line 666
    :pswitch_6
    new-instance p1, Lo/ClsFileOutputStream;

    invoke-direct {p1}, Lo/ClsFileOutputStream;-><init>()V

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
