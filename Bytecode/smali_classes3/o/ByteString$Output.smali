.class public final Lo/ByteString$Output;
.super Lo/getEventAppExecutionSize;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ByteString$Output$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/ByteString$Output;",
        "Lo/ByteString$Output$onNavigationEvent;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# static fields
.field public static final DATABASE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lo/ByteString$Output;

.field public static final DOCUMENTS_FIELD_NUMBER:I = 0x2

.field public static final MASK_FIELD_NUMBER:I = 0x3

.field public static final NEW_TRANSACTION_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lo/areReportsAvailable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/ByteString$Output;",
            ">;"
        }
    .end annotation
.end field

.field public static final READ_TIME_FIELD_NUMBER:I = 0x7

.field public static final TRANSACTION_FIELD_NUMBER:I = 0x4


# instance fields
.field private consistencySelectorCase_:I

.field private consistencySelector_:Ljava/lang/Object;

.field private database_:Ljava/lang/String;

.field private documents_:Lo/getEventLogSize$asBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getEventLogSize$asBinder<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mask_:Lo/writeUInt64;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1266
    new-instance v0, Lo/ByteString$Output;

    invoke-direct {v0}, Lo/ByteString$Output;-><init>()V

    .line 1269
    sput-object v0, Lo/ByteString$Output;->DEFAULT_INSTANCE:Lo/ByteString$Output;

    .line 1270
    const-class v1, Lo/ByteString$Output;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lo/ByteString$Output;->consistencySelectorCase_:I

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lo/ByteString$Output;->database_:Ljava/lang/String;

    .line 20
    invoke-static {}, Lo/getEventAppExecutionSize;->emptyProtobufList()Lo/getEventLogSize$asBinder;

    move-result-object v0

    iput-object v0, p0, Lo/ByteString$Output;->documents_:Lo/getEventLogSize$asBinder;

    return-void
.end method

.method public static ICustomTabsCallback()Lo/ByteString$Output$onNavigationEvent;
    .locals 1

    .line 648
    sget-object v0, Lo/ByteString$Output;->DEFAULT_INSTANCE:Lo/ByteString$Output;

    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->createBuilder()Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/ByteString$Output$onNavigationEvent;

    return-object v0
.end method

.method static synthetic asInterface()Lo/ByteString$Output;
    .locals 1

    .line 13
    sget-object v0, Lo/ByteString$Output;->DEFAULT_INSTANCE:Lo/ByteString$Output;

    return-object v0
.end method

.method static synthetic onMessageChannelReady(Lo/ByteString$Output;Ljava/lang/String;)V
    .locals 0

    .line 2109
    iput-object p1, p0, Lo/ByteString$Output;->database_:Ljava/lang/String;

    return-void
.end method

.method public static onNavigationEvent()Lo/ByteString$Output;
    .locals 1

    .line 1275
    sget-object v0, Lo/ByteString$Output;->DEFAULT_INSTANCE:Lo/ByteString$Output;

    return-object v0
.end method

.method static synthetic onNavigationEvent(Lo/ByteString$Output;Ljava/lang/String;)V
    .locals 1

    .line 3206
    iget-object v0, p0, Lo/ByteString$Output;->documents_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0}, Lo/getEventLogSize$asBinder;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3207
    iget-object v0, p0, Lo/ByteString$Output;->documents_:Lo/getEventLogSize$asBinder;

    .line 3208
    invoke-static {v0}, Lo/getEventAppExecutionSize;->mutableCopy(Lo/getEventLogSize$asBinder;)Lo/getEventLogSize$asBinder;

    move-result-object v0

    iput-object v0, p0, Lo/ByteString$Output;->documents_:Lo/getEventLogSize$asBinder;

    .line 2244
    :cond_0
    iget-object p0, p0, Lo/ByteString$Output;->documents_:Lo/getEventLogSize$asBinder;

    invoke-interface {p0, p1}, Lo/getEventLogSize$asBinder;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1211
    sget-object p2, Lo/ByteString$Output$3;->onPostMessage:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1259
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 1253
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1238
    :pswitch_2
    sget-object p1, Lo/ByteString$Output;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 1240
    const-class p1, Lo/ByteString$Output;

    monitor-enter p1

    .line 1241
    :try_start_0
    sget-object p2, Lo/ByteString$Output;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 1243
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/ByteString$Output;->DEFAULT_INSTANCE:Lo/ByteString$Output;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 1246
    sput-object p2, Lo/ByteString$Output;->PARSER:Lo/areReportsAvailable;

    .line 1248
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

    .line 1235
    :pswitch_3
    sget-object p1, Lo/ByteString$Output;->DEFAULT_INSTANCE:Lo/ByteString$Output;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "consistencySelector_"

    aput-object v0, p1, p3

    const-string p3, "consistencySelectorCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "database_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "documents_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "mask_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    .line 1219
    const-class p3, Lo/writeSInt64;

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-class p3, Lo/getCustomHeaders;

    aput-object p3, p1, p2

    .line 1231
    sget-object p2, Lo/ByteString$Output;->DEFAULT_INSTANCE:Lo/ByteString$Output;

    const-string p3, "\u0000\u0006\u0001\u0000\u0001\u0007\u0006\u0000\u0001\u0000\u0001\u0208\u0002\u021a\u0003\t\u0004=\u0000\u0005<\u0000\u0007<\u0000"

    invoke-static {p2, p3, p1}, Lo/ByteString$Output;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1216
    :pswitch_5
    new-instance p1, Lo/ByteString$Output$onNavigationEvent;

    invoke-direct {p1, p3}, Lo/ByteString$Output$onNavigationEvent;-><init>(B)V

    return-object p1

    .line 1213
    :pswitch_6
    new-instance p1, Lo/ByteString$Output;

    invoke-direct {p1}, Lo/ByteString$Output;-><init>()V

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
