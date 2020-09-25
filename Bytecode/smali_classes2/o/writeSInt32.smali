.class public final Lo/writeSInt32;
.super Lo/getEventAppExecutionSize;
.source ""

# interfaces
.implements Lo/writeDoubleNoTag;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/writeSInt32$onPostMessage;,
        Lo/writeSInt32$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/writeSInt32;",
        "Lo/writeSInt32$onPostMessage;",
        ">;",
        "Lo/writeDoubleNoTag;"
    }
.end annotation


# static fields
.field public static final CURRENT_DOCUMENT_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lo/writeSInt32;

.field public static final DELETE_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lo/areReportsAvailable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/writeSInt32;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSFORM_FIELD_NUMBER:I = 0x6

.field public static final UPDATE_FIELD_NUMBER:I = 0x1

.field public static final UPDATE_MASK_FIELD_NUMBER:I = 0x3

.field public static final VERIFY_FIELD_NUMBER:I = 0x5


# instance fields
.field public currentDocument_:Lo/writeSFixed32;

.field public operationCase_:I

.field public operation_:Ljava/lang/Object;

.field public updateMask_:Lo/writeUInt64;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1249
    new-instance v0, Lo/writeSInt32;

    invoke-direct {v0}, Lo/writeSInt32;-><init>()V

    .line 1252
    sput-object v0, Lo/writeSInt32;->DEFAULT_INSTANCE:Lo/writeSInt32;

    .line 1253
    const-class v1, Lo/writeSInt32;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lo/writeSInt32;->operationCase_:I

    return-void
.end method

.method public static extraCallback()Lo/writeSInt32$onPostMessage;
    .locals 1

    .line 641
    sget-object v0, Lo/writeSInt32;->DEFAULT_INSTANCE:Lo/writeSInt32;

    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->createBuilder()Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/writeSInt32$onPostMessage;

    return-object v0
.end method

.method static synthetic extraCallback(Lo/writeSInt32;Lo/writeDouble;)V
    .locals 0

    .line 2102
    iput-object p1, p0, Lo/writeSInt32;->operation_:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 2103
    iput p1, p0, Lo/writeSInt32;->operationCase_:I

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/writeSInt32;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    .line 2269
    iput v0, p0, Lo/writeSInt32;->operationCase_:I

    .line 2270
    iput-object p1, p0, Lo/writeSInt32;->operation_:Ljava/lang/Object;

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/writeSInt32;Lo/writeSFixed32;)V
    .locals 0

    .line 2531
    iput-object p1, p0, Lo/writeSInt32;->currentDocument_:Lo/writeSFixed32;

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/writeSInt32;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 2185
    iput v0, p0, Lo/writeSInt32;->operationCase_:I

    .line 2186
    iput-object p1, p0, Lo/writeSInt32;->operation_:Ljava/lang/Object;

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/writeSInt32;Lo/writeInt64;)V
    .locals 0

    .line 2348
    iput-object p1, p0, Lo/writeSInt32;->operation_:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 2349
    iput p1, p0, Lo/writeSInt32;->operationCase_:I

    return-void
.end method

.method static synthetic onPostMessage()Lo/writeSInt32;
    .locals 1

    .line 13
    sget-object v0, Lo/writeSInt32;->DEFAULT_INSTANCE:Lo/writeSInt32;

    return-object v0
.end method

.method static synthetic onPostMessage(Lo/writeSInt32;Lo/writeUInt64;)V
    .locals 0

    .line 2446
    iput-object p1, p0, Lo/writeSInt32;->updateMask_:Lo/writeUInt64;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1195
    sget-object p2, Lo/writeSInt32$3;->extraCallback:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1242
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 1236
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1221
    :pswitch_2
    sget-object p1, Lo/writeSInt32;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 1223
    const-class p1, Lo/writeSInt32;

    monitor-enter p1

    .line 1224
    :try_start_0
    sget-object p2, Lo/writeSInt32;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 1226
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/writeSInt32;->DEFAULT_INSTANCE:Lo/writeSInt32;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 1229
    sput-object p2, Lo/writeSInt32;->PARSER:Lo/areReportsAvailable;

    .line 1231
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

    .line 1218
    :pswitch_3
    sget-object p1, Lo/writeSInt32;->DEFAULT_INSTANCE:Lo/writeSInt32;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "operation_"

    aput-object v0, p1, p3

    const-string p3, "operationCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 1203
    const-class p3, Lo/writeDouble;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "updateMask_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "currentDocument_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-class p3, Lo/writeInt64;

    aput-object p3, p1, p2

    .line 1214
    sget-object p2, Lo/writeSInt32;->DEFAULT_INSTANCE:Lo/writeSInt32;

    const-string p3, "\u0000\u0006\u0001\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001<\u0000\u0002\u023b\u0000\u0003\t\u0004\t\u0005\u023b\u0000\u0006<\u0000"

    invoke-static {p2, p3, p1}, Lo/writeSInt32;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1200
    :pswitch_5
    new-instance p1, Lo/writeSInt32$onPostMessage;

    invoke-direct {p1, p3}, Lo/writeSInt32$onPostMessage;-><init>(B)V

    return-object p1

    .line 1197
    :pswitch_6
    new-instance p1, Lo/writeSInt32;

    invoke-direct {p1}, Lo/writeSInt32;-><init>()V

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
