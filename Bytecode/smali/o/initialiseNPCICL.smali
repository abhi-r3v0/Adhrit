.class final Lo/initialiseNPCICL;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/FileUtil$onNavigationEvent;


# instance fields
.field private final ICustomTabsCallback:J

.field private final onMessageChannelReady:[J

.field private final onPostMessage:[J


# direct methods
.method private constructor <init>([J[J)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lo/initialiseNPCICL;->onPostMessage:[J

    .line 57
    iput-object p2, p0, Lo/initialiseNPCICL;->onMessageChannelReady:[J

    .line 60
    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    aget-wide p1, p2, p1

    invoke-static {p1, p2}, Lo/$$c;->ICustomTabsCallback(J)J

    move-result-wide p1

    iput-wide p1, p0, Lo/initialiseNPCICL;->ICustomTabsCallback:J

    return-void
.end method

.method private static extraCallback(J[J[J)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[J[J)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 103
    invoke-static {p2, p0, p1, v0, v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback([JJZZ)I

    move-result v1

    .line 104
    aget-wide v2, p2, v1

    .line 105
    aget-wide v4, p3, v1

    add-int/2addr v1, v0

    .line 107
    array-length v0, p2

    if-ne v1, v0, :cond_0

    .line 108
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 110
    :cond_0
    aget-wide v6, p2, v1

    .line 111
    aget-wide p2, p3, v1

    cmp-long v0, v6, v2

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    long-to-double v0, p0

    long-to-double v8, v2

    sub-double/2addr v0, v8

    sub-long/2addr v6, v2

    long-to-double v2, v6

    div-double/2addr v0, v2

    :goto_0
    sub-long/2addr p2, v4

    long-to-double p2, p2

    mul-double v0, v0, p2

    double-to-long p2, v0

    add-long/2addr p2, v4

    .line 117
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static extraCallback(JLo/DefaultImageHeaderParser$Reader$EndOfFileException;)Lo/initialiseNPCICL;
    .locals 9

    .line 35
    iget-object v0, p2, Lo/DefaultImageHeaderParser$Reader$EndOfFileException;->ICustomTabsCallback:[I

    array-length v0, v0

    add-int/lit8 v1, v0, 0x1

    .line 36
    new-array v2, v1, [J

    .line 37
    new-array v1, v1, [J

    const/4 v3, 0x0

    .line 38
    aput-wide p0, v2, v3

    const-wide/16 v4, 0x0

    .line 39
    aput-wide v4, v1, v3

    const/4 v3, 0x1

    :goto_0
    if-gt v3, v0, :cond_0

    .line 43
    iget v6, p2, Lo/DefaultImageHeaderParser$Reader$EndOfFileException;->onPostMessage:I

    iget-object v7, p2, Lo/DefaultImageHeaderParser$Reader$EndOfFileException;->ICustomTabsCallback:[I

    add-int/lit8 v8, v3, -0x1

    aget v7, v7, v8

    add-int/2addr v6, v7

    int-to-long v6, v6

    add-long/2addr p0, v6

    .line 44
    iget v6, p2, Lo/DefaultImageHeaderParser$Reader$EndOfFileException;->onMessageChannelReady:I

    iget-object v7, p2, Lo/DefaultImageHeaderParser$Reader$EndOfFileException;->onNavigationEvent:[I

    aget v7, v7, v8

    add-int/2addr v6, v7

    int-to-long v6, v6

    add-long/2addr v4, v6

    .line 45
    aput-wide p0, v2, v3

    .line 46
    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 48
    :cond_0
    new-instance p0, Lo/initialiseNPCICL;

    invoke-direct {p0, v2, v1}, Lo/initialiseNPCICL;-><init>([J[J)V

    return-object p0
.end method


# virtual methods
.method public final extraCallback()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final onNavigationEvent(J)J
    .locals 2

    .line 80
    iget-object v0, p0, Lo/initialiseNPCICL;->onPostMessage:[J

    iget-object v1, p0, Lo/initialiseNPCICL;->onMessageChannelReady:[J

    .line 81
    invoke-static {p1, p2, v0, v1}, Lo/initialiseNPCICL;->extraCallback(J[J[J)Landroid/util/Pair;

    move-result-object p1

    .line 82
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Lo/$$c;->ICustomTabsCallback(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final onNavigationEvent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
