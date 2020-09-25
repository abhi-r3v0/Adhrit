.class public final Lo/writeSInt64;
.super Lo/getEventAppExecutionSize;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/writeSInt64$onPostMessage;,
        Lo/writeSInt64$onMessageChannelReady;,
        Lo/writeSInt64$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/writeSInt64;",
        "Lo/writeSInt64$onPostMessage;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lo/writeSInt64;

.field private static volatile PARSER:Lo/areReportsAvailable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/writeSInt64;",
            ">;"
        }
    .end annotation
.end field

.field public static final READ_ONLY_FIELD_NUMBER:I = 0x2

.field public static final READ_WRITE_FIELD_NUMBER:I = 0x3


# instance fields
.field private modeCase_:I

.field private mode_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1220
    new-instance v0, Lo/writeSInt64;

    invoke-direct {v0}, Lo/writeSInt64;-><init>()V

    .line 1223
    sput-object v0, Lo/writeSInt64;->DEFAULT_INSTANCE:Lo/writeSInt64;

    .line 1224
    const-class v1, Lo/writeSInt64;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    const/4 v0, 0x0

    .line 723
    iput v0, p0, Lo/writeSInt64;->modeCase_:I

    return-void
.end method

.method static synthetic ICustomTabsCallback()Lo/writeSInt64;
    .locals 1

    .line 13
    sget-object v0, Lo/writeSInt64;->DEFAULT_INSTANCE:Lo/writeSInt64;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1168
    sget-object p2, Lo/writeSInt64$1;->ICustomTabsCallback:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1213
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 1207
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1192
    :pswitch_2
    sget-object p1, Lo/writeSInt64;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 1194
    const-class p1, Lo/writeSInt64;

    monitor-enter p1

    .line 1195
    :try_start_0
    sget-object p2, Lo/writeSInt64;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 1197
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/writeSInt64;->DEFAULT_INSTANCE:Lo/writeSInt64;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 1200
    sput-object p2, Lo/writeSInt64;->PARSER:Lo/areReportsAvailable;

    .line 1202
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

    .line 1189
    :pswitch_3
    sget-object p1, Lo/writeSInt64;->DEFAULT_INSTANCE:Lo/writeSInt64;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "mode_"

    aput-object v0, p1, p3

    const-string p3, "modeCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 1176
    const-class p3, Lo/writeSInt64$onMessageChannelReady;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, Lo/writeSInt64$ICustomTabsCallback;

    aput-object p3, p1, p2

    .line 1185
    sget-object p2, Lo/writeSInt64;->DEFAULT_INSTANCE:Lo/writeSInt64;

    const-string p3, "\u0000\u0002\u0001\u0000\u0002\u0003\u0002\u0000\u0000\u0000\u0002<\u0000\u0003<\u0000"

    invoke-static {p2, p3, p1}, Lo/writeSInt64;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1173
    :pswitch_5
    new-instance p1, Lo/writeSInt64$onPostMessage;

    invoke-direct {p1, p3}, Lo/writeSInt64$onPostMessage;-><init>(B)V

    return-object p1

    .line 1170
    :pswitch_6
    new-instance p1, Lo/writeSInt64;

    invoke-direct {p1}, Lo/writeSInt64;-><init>()V

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
