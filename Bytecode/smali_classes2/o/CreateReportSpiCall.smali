.class public final Lo/CreateReportSpiCall;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CreateReportSpiCall$extraCallback;,
        Lo/CreateReportSpiCall$onMessageChannelReady;,
        Lo/CreateReportSpiCall$ICustomTabsCallback;,
        Lo/CreateReportSpiCall$onNavigationEvent;
    }
.end annotation


# static fields
.field static final ICustomTabsCallback:Z

.field private static final ICustomTabsCallback$Stub:Z

.field private static final asBinder:Z

.field private static final asInterface:Z

.field private static final extraCallback:Lsun/misc/Unsafe;

.field private static final onMessageChannelReady:Ljava/util/logging/Logger;

.field private static final onNavigationEvent:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final onPostMessage:J

.field private static final onRelationshipValidationResult:Z

.field private static final onTransact:Lo/CreateReportSpiCall$onNavigationEvent;

.field private static final warmup:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 44
    const-class v0, [D

    const-class v1, [F

    const-class v2, [J

    const-class v3, [I

    const-class v4, [Z

    const-class v5, Lo/CreateReportSpiCall;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v5

    sput-object v5, Lo/CreateReportSpiCall;->onMessageChannelReady:Ljava/util/logging/Logger;

    .line 45
    invoke-static {}, Lo/CreateReportSpiCall;->extraCallback()Lsun/misc/Unsafe;

    move-result-object v5

    sput-object v5, Lo/CreateReportSpiCall;->extraCallback:Lsun/misc/Unsafe;

    .line 46
    invoke-static {}, Lo/computeRawVarint64Size;->ICustomTabsCallback()Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lo/CreateReportSpiCall;->onNavigationEvent:Ljava/lang/Class;

    .line 47
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v5}, Lo/CreateReportSpiCall;->onMessageChannelReady(Ljava/lang/Class;)Z

    move-result v5

    sput-boolean v5, Lo/CreateReportSpiCall;->onRelationshipValidationResult:Z

    .line 48
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5}, Lo/CreateReportSpiCall;->onMessageChannelReady(Ljava/lang/Class;)Z

    move-result v5

    sput-boolean v5, Lo/CreateReportSpiCall;->ICustomTabsCallback$Stub:Z

    .line 9320
    sget-object v5, Lo/CreateReportSpiCall;->extraCallback:Lsun/misc/Unsafe;

    const/4 v6, 0x0

    if-nez v5, :cond_0

    goto :goto_0

    .line 9323
    :cond_0
    invoke-static {}, Lo/computeRawVarint64Size;->extraCallback()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 9324
    sget-boolean v5, Lo/CreateReportSpiCall;->onRelationshipValidationResult:Z

    if-eqz v5, :cond_1

    .line 9325
    new-instance v6, Lo/CreateReportSpiCall$onMessageChannelReady;

    sget-object v5, Lo/CreateReportSpiCall;->extraCallback:Lsun/misc/Unsafe;

    invoke-direct {v6, v5}, Lo/CreateReportSpiCall$onMessageChannelReady;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_0

    .line 9326
    :cond_1
    sget-boolean v5, Lo/CreateReportSpiCall;->ICustomTabsCallback$Stub:Z

    if-eqz v5, :cond_3

    .line 9327
    new-instance v6, Lo/CreateReportSpiCall$extraCallback;

    sget-object v5, Lo/CreateReportSpiCall;->extraCallback:Lsun/misc/Unsafe;

    invoke-direct {v6, v5}, Lo/CreateReportSpiCall$extraCallback;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_0

    .line 9333
    :cond_2
    new-instance v6, Lo/CreateReportSpiCall$ICustomTabsCallback;

    sget-object v5, Lo/CreateReportSpiCall;->extraCallback:Lsun/misc/Unsafe;

    invoke-direct {v6, v5}, Lo/CreateReportSpiCall$ICustomTabsCallback;-><init>(Lsun/misc/Unsafe;)V

    .line 49
    :cond_3
    :goto_0
    sput-object v6, Lo/CreateReportSpiCall;->onTransact:Lo/CreateReportSpiCall$onNavigationEvent;

    .line 51
    invoke-static {}, Lo/CreateReportSpiCall;->onNavigationEvent()Z

    move-result v5

    sput-boolean v5, Lo/CreateReportSpiCall;->asInterface:Z

    .line 52
    invoke-static {}, Lo/CreateReportSpiCall;->onMessageChannelReady()Z

    move-result v5

    sput-boolean v5, Lo/CreateReportSpiCall;->asBinder:Z

    .line 54
    const-class v6, [B

    if-eqz v5, :cond_4

    .line 10113
    sget-object v5, Lo/CreateReportSpiCall;->onTransact:Lo/CreateReportSpiCall$onNavigationEvent;

    .line 10590
    iget-object v5, v5, Lo/CreateReportSpiCall$onNavigationEvent;->onPostMessage:Lsun/misc/Unsafe;

    invoke-virtual {v5, v6}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v5

    goto :goto_1

    :cond_4
    const/4 v5, -0x1

    :goto_1
    int-to-long v5, v5

    .line 54
    sput-wide v5, Lo/CreateReportSpiCall;->onPostMessage:J

    .line 11113
    sget-boolean v5, Lo/CreateReportSpiCall;->asBinder:Z

    if-eqz v5, :cond_5

    sget-object v5, Lo/CreateReportSpiCall;->onTransact:Lo/CreateReportSpiCall$onNavigationEvent;

    .line 11590
    iget-object v5, v5, Lo/CreateReportSpiCall$onNavigationEvent;->onPostMessage:Lsun/misc/Unsafe;

    invoke-virtual {v5, v4}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    .line 12117
    :cond_5
    sget-boolean v5, Lo/CreateReportSpiCall;->asBinder:Z

    if-eqz v5, :cond_6

    sget-object v5, Lo/CreateReportSpiCall;->onTransact:Lo/CreateReportSpiCall$onNavigationEvent;

    .line 12594
    iget-object v5, v5, Lo/CreateReportSpiCall$onNavigationEvent;->onPostMessage:Lsun/misc/Unsafe;

    invoke-virtual {v5, v4}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    .line 13113
    :cond_6
    sget-boolean v4, Lo/CreateReportSpiCall;->asBinder:Z

    if-eqz v4, :cond_7

    sget-object v4, Lo/CreateReportSpiCall;->onTransact:Lo/CreateReportSpiCall$onNavigationEvent;

    .line 13590
    iget-object v4, v4, Lo/CreateReportSpiCall$onNavigationEvent;->onPostMessage:Lsun/misc/Unsafe;

    invoke-virtual {v4, v3}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    .line 14117
    :cond_7
    sget-boolean v4, Lo/CreateReportSpiCall;->asBinder:Z

    if-eqz v4, :cond_8

    sget-object v4, Lo/CreateReportSpiCall;->onTransact:Lo/CreateReportSpiCall$onNavigationEvent;

    .line 14594
    iget-object v4, v4, Lo/CreateReportSpiCall$onNavigationEvent;->onPostMessage:Lsun/misc/Unsafe;

    invoke-virtual {v4, v3}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    .line 15113
    :cond_8
    sget-boolean v3, Lo/CreateReportSpiCall;->asBinder:Z

    if-eqz v3, :cond_9

    sget-object v3, Lo/CreateReportSpiCall;->onTransact:Lo/CreateReportSpiCall$onNavigationEvent;

    .line 15590
    iget-object v3, v3, Lo/CreateReportSpiCall$onNavigationEvent;->onPostMessage:Lsun/misc/Unsafe;

    invoke-virtual {v3, v2}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    .line 16117
    :cond_9
    sget-boolean v3, Lo/CreateReportSpiCall;->asBinder:Z

    if-eqz v3, :cond_a

    sget-object v3, Lo/CreateReportSpiCall;->onTransact:Lo/CreateReportSpiCall$onNavigationEvent;

    .line 16594
    iget-object v3, v3, Lo/CreateReportSpiCall$onNavigationEvent;->onPostMessage:Lsun/misc/Unsafe;

    invoke-virtual {v3, v2}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    .line 17113
    :cond_a
    sget-boolean v2, Lo/CreateReportSpiCall;->asBinder:Z

    if-eqz v2, :cond_b

    sget-object v2, Lo/CreateReportSpiCall;->onTransact:Lo/CreateReportSpiCall$onNavigationEvent;

    .line 17590
    iget-object v2, v2, Lo/CreateReportSpiCall$onNavigationEvent;->onPostMessage:Lsun/misc/Unsafe;

    invoke-virtual {v2, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    .line 18117
    :cond_b
    sget-boolean v2, Lo/CreateReportSpiCall;->asBinder:Z

    if-eqz v2, :cond_c

    sget-object v2, Lo/CreateReportSpiCall;->onTransact:Lo/CreateReportSpiCall$onNavigationEvent;

    .line 18594
    iget-object v2, v2, Lo/CreateReportSpiCall$onNavigationEvent;->onPostMessage:Lsun/misc/Unsafe;

    invoke-virtual {v2, v1}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    .line 19113
    :cond_c
    sget-boolean v1, Lo/CreateReportSpiCall;->asBinder:Z

    if-eqz v1, :cond_d

    sget-object v1, Lo/CreateReportSpiCall;->onTransact:Lo/CreateReportSpiCall$onNavigationEvent;

    .line 19590
    iget-object v1, v1, Lo/CreateReportSpiCall$onNavigationEvent;->onPostMessage:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    .line 20117
    :cond_d
    sget-boolean v1, Lo/CreateReportSpiCall;->asBinder:Z

    if-eqz v1, :cond_e

    sget-object v1, Lo/CreateReportSpiCall;->onTransact:Lo/CreateReportSpiCall$onNavigationEvent;

    .line 20594
    iget-object v1, v1, Lo/CreateReportSpiCall$onNavigationEvent;->onPostMessage:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    .line 73
    :cond_e
    const-class v0, [Ljava/lang/Object;

    .line 21113
    sget-boolean v1, Lo/CreateReportSpiCall;->asBinder:Z

    if-eqz v1, :cond_f

    sget-object v1, Lo/CreateReportSpiCall;->onTransact:Lo/CreateReportSpiCall$onNavigationEvent;

    .line 21590
    iget-object v1, v1, Lo/CreateReportSpiCall$onNavigationEvent;->onPostMessage:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    .line 74
    :cond_f
    const-class v0, [Ljava/lang/Object;

    .line 22117
    sget-boolean v1, Lo/CreateReportSpiCall;->asBinder:Z

    if-eqz v1, :cond_10

    sget-object v1, Lo/CreateReportSpiCall;->onTransact:Lo/CreateReportSpiCall$onNavigationEvent;

    .line 22594
    iget-object v1, v1, Lo/CreateReportSpiCall$onNavigationEvent;->onPostMessage:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    .line 76
    :cond_10
    invoke-static {}, Lo/CreateReportSpiCall;->onRelationshipValidationResult()Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 23520
    sget-object v1, Lo/CreateReportSpiCall;->onTransact:Lo/CreateReportSpiCall$onNavigationEvent;

    if-nez v1, :cond_11

    goto :goto_2

    .line 23546
    :cond_11
    iget-object v1, v1, Lo/CreateReportSpiCall$onNavigationEvent;->onPostMessage:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    goto :goto_3

    :cond_12
    :goto_2
    const-wide/16 v0, -0x1

    .line 76
    :goto_3
    sput-wide v0, Lo/CreateReportSpiCall;->warmup:J

    .line 83
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_4

    :cond_13
    const/4 v0, 0x0

    :goto_4
    sput-boolean v0, Lo/CreateReportSpiCall;->ICustomTabsCallback:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ICustomTabsCallback(Ljava/lang/Object;J)I
    .locals 1

    .line 129
    sget-object v0, Lo/CreateReportSpiCall;->onTransact:Lo/CreateReportSpiCall$onNavigationEvent;

    .line 1554
    iget-object v0, v0, Lo/CreateReportSpiCall$onNavigationEvent;->onPostMessage:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method static ICustomTabsCallback(J[BJ)V
    .locals 8

    .line 247
    sget-object v0, Lo/CreateReportSpiCall;->onTransact:Lo/CreateReportSpiCall$onNavigationEvent;

    const-wide/16 v4, 0x0

    move-wide v1, p0

    move-object v3, p2

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lo/CreateReportSpiCall$onNavigationEvent;->onMessageChannelReady(J[BJJ)V

    return-void
.end method

.method private static ICustomTabsCallback(Ljava/lang/Object;JB)V
    .locals 4

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    .line 5129
    sget-object v2, Lo/CreateReportSpiCall;->onTransact:Lo/CreateReportSpiCall$onNavigationEvent;

    .line 5554
    iget-object v2, v2, Lo/CreateReportSpiCall$onNavigationEvent;->onPostMessage:Lsun/misc/Unsafe;

    invoke-virtual {v2, p0, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    long-to-int p2, p1

    not-int p1, p2

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v3, p2, p1

    not-int v3, v3

    and-int/2addr v2, v3

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v2

    .line 6133
    sget-object p2, Lo/CreateReportSpiCall;->onTransact:Lo/CreateReportSpiCall$onNavigationEvent;

    .line 6558
    iget-object p2, p2, Lo/CreateReportSpiCall$onNavigationEvent;->onPostMessage:Lsun/misc/Unsafe;

    invoke-virtual {p2, p0, v0, v1, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method static ICustomTabsCallback(Ljava/lang/Object;JD)V
    .locals 6

    .line 165
    sget-object v0, Lo/CreateReportSpiCall;->onTransact:Lo/CreateReportSpiCall$onNavigationEvent;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lo/CreateReportSpiCall$onNavigationEvent;->extraCallback(Ljava/lang/Object;JD)V

    return-void
.end method

.method static ICustomTabsCallback(Ljava/lang/Object;JI)V
    .locals 1

    .line 133
    sget-object v0, Lo/CreateReportSpiCall;->onTransact:Lo/CreateReportSpiCall$onNavigationEvent;

    .line 1558
    iget-object v0, v0, Lo/CreateReportSpiCall$onNavigationEvent;->onPostMessage:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Ljava/lang/Object;JZ)V
    .locals 0

    int-to-byte p3, p3

    .line 8975
    invoke-static {p0, p1, p2, p3}, Lo/CreateReportSpiCall;->onMessageChannelReady(Ljava/lang/Object;JB)V

    return-void
.end method

.method public static ICustomTabsCallback()Z
    .locals 1

    .line 88
    sget-boolean v0, Lo/CreateReportSpiCall;->asBinder:Z

    return v0
.end method

.method static synthetic ICustomTabsCallback$Stub(Ljava/lang/Object;J)Z
    .locals 0

    .line 8963
    invoke-static {p0, p1, p2}, Lo/CreateReportSpiCall;->ICustomTabsCallback$Stub$Proxy(Ljava/lang/Object;J)B

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static ICustomTabsCallback$Stub$Proxy(Ljava/lang/Object;J)B
    .locals 3

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    .line 3129
    sget-object v2, Lo/CreateReportSpiCall;->onTransact:Lo/CreateReportSpiCall$onNavigationEvent;

    .line 3554
    iget-object v2, v2, Lo/CreateReportSpiCall$onNavigationEvent;->onPostMessage:Lsun/misc/Unsafe;

    invoke-virtual {v2, p0, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    not-long p1, p1

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p2, p1

    ushr-int/2addr p0, p2

    int-to-byte p0, p0

    return p0
.end method

.method static asBinder(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    .line 169
    sget-object v0, Lo/CreateReportSpiCall;->onTransact:Lo/CreateReportSpiCall$onNavigationEvent;

    .line 1582
    iget-object v0, v0, Lo/CreateReportSpiCall$onNavigationEvent;->onPostMessage:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic asInterface(Ljava/lang/Object;J)B
    .locals 0

    .line 43
    invoke-static {p0, p1, p2}, Lo/CreateReportSpiCall;->warmup(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method static extraCallback(J)B
    .locals 1

    .line 255
    sget-object v0, Lo/CreateReportSpiCall;->onTransact:Lo/CreateReportSpiCall$onNavigationEvent;

    invoke-virtual {v0, p0, p1}, Lo/CreateReportSpiCall$onNavigationEvent;->onPostMessage(J)B

    move-result p0

    return p0
.end method

.method static extraCallback(Ljava/lang/Object;J)J
    .locals 1

    .line 137
    sget-object v0, Lo/CreateReportSpiCall;->onTransact:Lo/CreateReportSpiCall$onNavigationEvent;

    .line 1562
    iget-object v0, v0, Lo/CreateReportSpiCall$onNavigationEvent;->onPostMessage:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method static extraCallback(Ljava/nio/ByteBuffer;)J
    .locals 3

    .line 280
    sget-object v0, Lo/CreateReportSpiCall;->onTransact:Lo/CreateReportSpiCall$onNavigationEvent;

    sget-wide v1, Lo/CreateReportSpiCall;->warmup:J

    .line 2562
    iget-object v0, v0, Lo/CreateReportSpiCall$onNavigationEvent;->onPostMessage:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static extraCallback()Lsun/misc/Unsafe;
    .locals 1

    .line 293
    :try_start_0
    new-instance v0, Lo/CreateReportSpiCall$4;

    invoke-direct {v0}, Lo/CreateReportSpiCall$4;-><init>()V

    .line 294
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static onMessageChannelReady(Ljava/lang/Object;JB)V
    .locals 4

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    .line 7129
    sget-object v2, Lo/CreateReportSpiCall;->onTransact:Lo/CreateReportSpiCall$onNavigationEvent;

    .line 7554
    iget-object v2, v2, Lo/CreateReportSpiCall$onNavigationEvent;->onPostMessage:Lsun/misc/Unsafe;

    invoke-virtual {v2, p0, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    long-to-int p2, p1

    and-int/lit8 p1, p2, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v3, p2, p1

    not-int v3, v3

    and-int/2addr v2, v3

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v2

    .line 8133
    sget-object p2, Lo/CreateReportSpiCall;->onTransact:Lo/CreateReportSpiCall$onNavigationEvent;

    .line 8558
    iget-object p2, p2, Lo/CreateReportSpiCall$onNavigationEvent;->onPostMessage:Lsun/misc/Unsafe;

    invoke-virtual {p2, p0, v0, v1, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method static onMessageChannelReady(Ljava/lang/Object;JZ)V
    .locals 1

    .line 149
    sget-object v0, Lo/CreateReportSpiCall;->onTransact:Lo/CreateReportSpiCall$onNavigationEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lo/CreateReportSpiCall$onNavigationEvent;->onMessageChannelReady(Ljava/lang/Object;JZ)V

    return-void
.end method

.method private static onMessageChannelReady()Z
    .locals 8

    .line 338
    sget-object v0, Lo/CreateReportSpiCall;->extraCallback:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 342
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "objectFieldOffset"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 343
    const-class v5, Ljava/lang/reflect/Field;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "arrayBaseOffset"

    new-array v4, v3, [Ljava/lang/Class;

    .line 344
    const-class v5, Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "arrayIndexScale"

    new-array v4, v3, [Ljava/lang/Class;

    .line 345
    const-class v5, Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "getInt"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    .line 346
    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "putInt"

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    .line 347
    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "getLong"

    new-array v6, v4, [Ljava/lang/Class;

    .line 348
    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "putLong"

    new-array v6, v5, [Ljava/lang/Class;

    .line 349
    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "getObject"

    new-array v6, v4, [Ljava/lang/Class;

    .line 350
    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "putObject"

    new-array v6, v5, [Ljava/lang/Class;

    .line 351
    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 352
    invoke-static {}, Lo/computeRawVarint64Size;->extraCallback()Z

    move-result v2

    if-eqz v2, :cond_1

    return v3

    :cond_1
    const-string v2, "getByte"

    new-array v6, v4, [Ljava/lang/Class;

    .line 355
    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "putByte"

    new-array v6, v5, [Ljava/lang/Class;

    .line 356
    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "getBoolean"

    new-array v6, v4, [Ljava/lang/Class;

    .line 357
    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "putBoolean"

    new-array v6, v5, [Ljava/lang/Class;

    .line 358
    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "getFloat"

    new-array v6, v4, [Ljava/lang/Class;

    .line 359
    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "putFloat"

    new-array v6, v5, [Ljava/lang/Class;

    .line 360
    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "getDouble"

    new-array v6, v4, [Ljava/lang/Class;

    .line 361
    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "putDouble"

    new-array v5, v5, [Ljava/lang/Class;

    .line 362
    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v4

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    :catchall_0
    move-exception v0

    .line 366
    sget-object v2, Lo/CreateReportSpiCall;->onMessageChannelReady:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "platform method missing - proto runtime falling back to safer methods: "

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return v1
.end method

.method private static onMessageChannelReady(Ljava/lang/Class;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 408
    const-class v0, [B

    invoke-static {}, Lo/computeRawVarint64Size;->extraCallback()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 412
    :cond_0
    :try_start_0
    sget-object v1, Lo/CreateReportSpiCall;->onNavigationEvent:Ljava/lang/Class;

    const-string v3, "peekLong"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    aput-object p0, v5, v2

    .line 413
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeLong"

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    aput-object p0, v6, v2

    .line 414
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v4

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeInt"

    new-array v6, v5, [Ljava/lang/Class;

    aput-object p0, v6, v2

    .line 415
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v4

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekInt"

    new-array v6, v4, [Ljava/lang/Class;

    aput-object p0, v6, v2

    .line 416
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeByte"

    new-array v6, v4, [Ljava/lang/Class;

    aput-object p0, v6, v2

    .line 417
    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekByte"

    new-array v6, v7, [Ljava/lang/Class;

    aput-object p0, v6, v2

    .line 418
    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeByteArray"

    const/4 v6, 0x4

    new-array v8, v6, [Ljava/lang/Class;

    aput-object p0, v8, v2

    aput-object v0, v8, v7

    .line 419
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v5

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekByteArray"

    new-array v6, v6, [Ljava/lang/Class;

    aput-object p0, v6, v2

    aput-object v0, v6, v7

    .line 420
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p0, v6, v4

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p0, v6, v5

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v7

    :catchall_0
    return v2
.end method

.method static onMessageChannelReady(Ljava/lang/Object;J)Z
    .locals 1

    .line 145
    sget-object v0, Lo/CreateReportSpiCall;->onTransact:Lo/CreateReportSpiCall$onNavigationEvent;

    invoke-virtual {v0, p0, p1, p2}, Lo/CreateReportSpiCall$onNavigationEvent;->onPostMessage(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method static onNavigationEvent(Ljava/lang/Object;J)F
    .locals 1

    .line 153
    sget-object v0, Lo/CreateReportSpiCall;->onTransact:Lo/CreateReportSpiCall$onNavigationEvent;

    invoke-virtual {v0, p0, p1, p2}, Lo/CreateReportSpiCall$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/Object;J)F

    move-result p0

    return p0
.end method

.method static onNavigationEvent(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 102
    :try_start_0
    sget-object v0, Lo/CreateReportSpiCall;->extraCallback:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 104
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static synthetic onNavigationEvent(Ljava/lang/Object;JB)V
    .locals 0

    .line 43
    invoke-static {p0, p1, p2, p3}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;JB)V

    return-void
.end method

.method private static onNavigationEvent()Z
    .locals 9

    const-string v0, "copyMemory"

    const-string v1, "getLong"

    .line 374
    sget-object v2, Lo/CreateReportSpiCall;->extraCallback:Lsun/misc/Unsafe;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 378
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "objectFieldOffset"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    .line 380
    const-class v7, Ljava/lang/reflect/Field;

    aput-object v7, v6, v3

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Class;

    .line 381
    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v5

    invoke-virtual {v2, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 383
    invoke-static {}, Lo/CreateReportSpiCall;->onRelationshipValidationResult()Ljava/lang/reflect/Field;

    move-result-object v6

    if-nez v6, :cond_1

    return v3

    .line 387
    :cond_1
    invoke-static {}, Lo/computeRawVarint64Size;->extraCallback()Z

    move-result v6

    if-eqz v6, :cond_2

    return v5

    :cond_2
    const-string v6, "getByte"

    new-array v7, v5, [Ljava/lang/Class;

    .line 390
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v6, "putByte"

    new-array v7, v4, [Ljava/lang/Class;

    .line 391
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v5

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v6, "getInt"

    new-array v7, v5, [Ljava/lang/Class;

    .line 392
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v6, "putInt"

    new-array v7, v4, [Ljava/lang/Class;

    .line 393
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v5

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v6, v5, [Ljava/lang/Class;

    .line 394
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v2, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "putLong"

    new-array v6, v4, [Ljava/lang/Class;

    .line 395
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v5

    invoke-virtual {v2, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v6, v1, [Ljava/lang/Class;

    .line 396
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v5

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v2, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Class;

    .line 397
    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v5

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v4

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v6, v1

    const/4 v1, 0x4

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v6, v1

    invoke-virtual {v2, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v5

    :catchall_0
    move-exception v0

    .line 400
    sget-object v1, Lo/CreateReportSpiCall;->onMessageChannelReady:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "platform method missing - proto runtime falling back to safer methods: "

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return v3
.end method

.method static onPostMessage([BJ)B
    .locals 3

    .line 177
    sget-object v0, Lo/CreateReportSpiCall;->onTransact:Lo/CreateReportSpiCall$onNavigationEvent;

    sget-wide v1, Lo/CreateReportSpiCall;->onPostMessage:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lo/CreateReportSpiCall$onNavigationEvent;->extraCallback(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method static onPostMessage(Ljava/lang/Object;J)D
    .locals 1

    .line 161
    sget-object v0, Lo/CreateReportSpiCall;->onTransact:Lo/CreateReportSpiCall$onNavigationEvent;

    invoke-virtual {v0, p0, p1, p2}, Lo/CreateReportSpiCall$onNavigationEvent;->onMessageChannelReady(Ljava/lang/Object;J)D

    move-result-wide p0

    return-wide p0
.end method

.method static onPostMessage(Ljava/lang/reflect/Field;)J
    .locals 2

    .line 109
    sget-object v0, Lo/CreateReportSpiCall;->onTransact:Lo/CreateReportSpiCall$onNavigationEvent;

    .line 1546
    iget-object v0, v0, Lo/CreateReportSpiCall$onNavigationEvent;->onPostMessage:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static onPostMessage(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 529
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static synthetic onPostMessage(Ljava/lang/Object;JB)V
    .locals 0

    .line 43
    invoke-static {p0, p1, p2, p3}, Lo/CreateReportSpiCall;->onMessageChannelReady(Ljava/lang/Object;JB)V

    return-void
.end method

.method static onPostMessage(Ljava/lang/Object;JF)V
    .locals 1

    .line 157
    sget-object v0, Lo/CreateReportSpiCall;->onTransact:Lo/CreateReportSpiCall$onNavigationEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lo/CreateReportSpiCall$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/Object;JF)V

    return-void
.end method

.method static onPostMessage(Ljava/lang/Object;JJ)V
    .locals 7

    .line 141
    sget-object v0, Lo/CreateReportSpiCall;->onTransact:Lo/CreateReportSpiCall$onNavigationEvent;

    .line 1566
    iget-object v1, v0, Lo/CreateReportSpiCall$onNavigationEvent;->onPostMessage:Lsun/misc/Unsafe;

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method static onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1

    .line 173
    sget-object v0, Lo/CreateReportSpiCall;->onTransact:Lo/CreateReportSpiCall$onNavigationEvent;

    .line 1586
    iget-object v0, v0, Lo/CreateReportSpiCall$onNavigationEvent;->onPostMessage:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method static synthetic onPostMessage(Ljava/lang/Object;JZ)V
    .locals 0

    int-to-byte p3, p3

    .line 8971
    invoke-static {p0, p1, p2, p3}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;JB)V

    return-void
.end method

.method public static onPostMessage([BJB)V
    .locals 3

    .line 181
    sget-object v0, Lo/CreateReportSpiCall;->onTransact:Lo/CreateReportSpiCall$onNavigationEvent;

    sget-wide v1, Lo/CreateReportSpiCall;->onPostMessage:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2, p3}, Lo/CreateReportSpiCall$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;JB)V

    return-void
.end method

.method static onPostMessage()Z
    .locals 1

    .line 92
    sget-boolean v0, Lo/CreateReportSpiCall;->asInterface:Z

    return v0
.end method

.method static synthetic onRelationshipValidationResult(Ljava/lang/Object;J)B
    .locals 0

    .line 43
    invoke-static {p0, p1, p2}, Lo/CreateReportSpiCall;->ICustomTabsCallback$Stub$Proxy(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method private static onRelationshipValidationResult()Ljava/lang/reflect/Field;
    .locals 3

    .line 429
    invoke-static {}, Lo/computeRawVarint64Size;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    const-class v0, Ljava/nio/Buffer;

    const-string v1, "effectiveDirectAddress"

    invoke-static {v0, v1}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 437
    :cond_0
    const-class v0, Ljava/nio/Buffer;

    const-string v1, "address"

    invoke-static {v0, v1}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 438
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic onTransact(Ljava/lang/Object;J)Z
    .locals 0

    .line 8967
    invoke-static {p0, p1, p2}, Lo/CreateReportSpiCall;->warmup(Ljava/lang/Object;J)B

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static warmup(Ljava/lang/Object;J)B
    .locals 3

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    .line 4129
    sget-object v2, Lo/CreateReportSpiCall;->onTransact:Lo/CreateReportSpiCall$onNavigationEvent;

    .line 4554
    iget-object v2, v2, Lo/CreateReportSpiCall$onNavigationEvent;->onPostMessage:Lsun/misc/Unsafe;

    invoke-virtual {v2, p0, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p2, p1

    ushr-int/2addr p0, p2

    int-to-byte p0, p0

    return p0
.end method
