.class public final Lo/writeSFixed64;
.super Lo/getEventAppExecutionSize;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/writeSFixed64$ICustomTabsCallback;,
        Lo/writeSFixed64$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/writeSFixed64;",
        "Lo/writeSFixed64$ICustomTabsCallback;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# static fields
.field public static final DATABASE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lo/writeSFixed64;

.field public static final LABELS_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lo/areReportsAvailable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/writeSFixed64;",
            ">;"
        }
    .end annotation
.end field

.field public static final STREAM_ID_FIELD_NUMBER:I = 0x2

.field public static final STREAM_TOKEN_FIELD_NUMBER:I = 0x4

.field public static final WRITES_FIELD_NUMBER:I = 0x3


# instance fields
.field private database_:Ljava/lang/String;

.field private labels_:Lo/WireFormat$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/WireFormat$1<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private streamId_:Ljava/lang/String;

.field private streamToken_:Lo/SessionProtobufHelper;

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

    .line 1260
    new-instance v0, Lo/writeSFixed64;

    invoke-direct {v0}, Lo/writeSFixed64;-><init>()V

    .line 1263
    sput-object v0, Lo/writeSFixed64;->DEFAULT_INSTANCE:Lo/writeSFixed64;

    .line 1264
    const-class v1, Lo/writeSFixed64;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    .line 444
    invoke-static {}, Lo/WireFormat$1;->onPostMessage()Lo/WireFormat$1;

    move-result-object v0

    iput-object v0, p0, Lo/writeSFixed64;->labels_:Lo/WireFormat$1;

    const-string v0, ""

    .line 25
    iput-object v0, p0, Lo/writeSFixed64;->database_:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lo/writeSFixed64;->streamId_:Ljava/lang/String;

    .line 27
    invoke-static {}, Lo/writeSFixed64;->emptyProtobufList()Lo/getEventLogSize$asBinder;

    move-result-object v0

    iput-object v0, p0, Lo/writeSFixed64;->writes_:Lo/getEventLogSize$asBinder;

    .line 28
    sget-object v0, Lo/SessionProtobufHelper;->onNavigationEvent:Lo/SessionProtobufHelper;

    iput-object v0, p0, Lo/writeSFixed64;->streamToken_:Lo/SessionProtobufHelper;

    return-void
.end method

.method public static ICustomTabsCallback()Lo/writeSFixed64$ICustomTabsCallback;
    .locals 1

    .line 619
    sget-object v0, Lo/writeSFixed64;->DEFAULT_INSTANCE:Lo/writeSFixed64;

    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->createBuilder()Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/writeSFixed64$ICustomTabsCallback;

    return-object v0
.end method

.method static synthetic ICustomTabsCallback(Lo/writeSFixed64;Lo/writeSInt32;)V
    .locals 1

    .line 3262
    iget-object v0, p0, Lo/writeSFixed64;->writes_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0}, Lo/getEventLogSize$asBinder;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3263
    iget-object v0, p0, Lo/writeSFixed64;->writes_:Lo/getEventLogSize$asBinder;

    .line 3264
    invoke-static {v0}, Lo/getEventAppExecutionSize;->mutableCopy(Lo/getEventLogSize$asBinder;)Lo/getEventLogSize$asBinder;

    move-result-object v0

    iput-object v0, p0, Lo/writeSFixed64;->writes_:Lo/getEventLogSize$asBinder;

    .line 2299
    :cond_0
    iget-object p0, p0, Lo/writeSFixed64;->writes_:Lo/getEventLogSize$asBinder;

    invoke-interface {p0, p1}, Lo/getEventLogSize$asBinder;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic extraCallback(Lo/writeSFixed64;Lo/SessionProtobufHelper;)V
    .locals 0

    .line 3408
    iput-object p1, p0, Lo/writeSFixed64;->streamToken_:Lo/SessionProtobufHelper;

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/writeSFixed64;Ljava/lang/String;)V
    .locals 0

    .line 2075
    iput-object p1, p0, Lo/writeSFixed64;->database_:Ljava/lang/String;

    return-void
.end method

.method public static onNavigationEvent()Lo/writeSFixed64;
    .locals 1

    .line 1269
    sget-object v0, Lo/writeSFixed64;->DEFAULT_INSTANCE:Lo/writeSFixed64;

    return-object v0
.end method

.method static synthetic onRelationshipValidationResult()Lo/writeSFixed64;
    .locals 1

    .line 19
    sget-object v0, Lo/writeSFixed64;->DEFAULT_INSTANCE:Lo/writeSFixed64;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1205
    sget-object p2, Lo/writeSFixed64$1;->onPostMessage:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1253
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 1247
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1232
    :pswitch_2
    sget-object p1, Lo/writeSFixed64;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 1234
    const-class p1, Lo/writeSFixed64;

    monitor-enter p1

    .line 1235
    :try_start_0
    sget-object p2, Lo/writeSFixed64;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 1237
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/writeSFixed64;->DEFAULT_INSTANCE:Lo/writeSFixed64;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 1240
    sput-object p2, Lo/writeSFixed64;->PARSER:Lo/areReportsAvailable;

    .line 1242
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

    .line 1229
    :pswitch_3
    sget-object p1, Lo/writeSFixed64;->DEFAULT_INSTANCE:Lo/writeSFixed64;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "database_"

    aput-object v0, p1, p3

    const-string p3, "streamId_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "writes_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 1213
    const-class p3, Lo/writeSInt32;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "streamToken_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "labels_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    sget-object p3, Lo/writeSFixed64$onPostMessage;->onMessageChannelReady:Lo/getTagWireType;

    aput-object p3, p1, p2

    .line 1225
    sget-object p2, Lo/writeSFixed64;->DEFAULT_INSTANCE:Lo/writeSFixed64;

    const-string p3, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0001\u0001\u0000\u0001\u0208\u0002\u0208\u0003\u001b\u0004\n\u00052"

    invoke-static {p2, p3, p1}, Lo/writeSFixed64;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1210
    :pswitch_5
    new-instance p1, Lo/writeSFixed64$ICustomTabsCallback;

    invoke-direct {p1, p3}, Lo/writeSFixed64$ICustomTabsCallback;-><init>(B)V

    return-object p1

    .line 1207
    :pswitch_6
    new-instance p1, Lo/writeSFixed64;

    invoke-direct {p1}, Lo/writeSFixed64;-><init>()V

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
