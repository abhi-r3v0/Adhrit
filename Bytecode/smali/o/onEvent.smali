.class public final Lo/onEvent;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final extraCallback:Ljava/lang/Object;

.field private static onNavigationEvent:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/onEvent;->extraCallback:Ljava/lang/Object;

    const/16 v0, 0x18

    new-array v0, v0, [C

    .line 41
    sput-object v0, Lo/onEvent;->onNavigationEvent:[C

    return-void
.end method

.method public static ICustomTabsCallback(JLjava/io/PrintWriter;)V
    .locals 0

    .line 172
    invoke-static {p0, p1, p2}, Lo/onEvent;->onPostMessage(JLjava/io/PrintWriter;)V

    return-void
.end method

.method private static extraCallback([CICIZI)I
    .locals 2

    if-nez p4, :cond_0

    if-lez p1, :cond_7

    :cond_0
    if-eqz p4, :cond_1

    const/4 v0, 0x3

    if-ge p5, v0, :cond_2

    :cond_1
    const/16 v0, 0x63

    if-le p1, v0, :cond_3

    .line 61
    :cond_2
    div-int/lit8 v0, p1, 0x64

    add-int/lit8 v1, v0, 0x30

    int-to-char v1, v1

    .line 62
    aput-char v1, p0, p3

    add-int/lit8 v1, p3, 0x1

    mul-int/lit8 v0, v0, 0x64

    sub-int/2addr p1, v0

    goto :goto_0

    :cond_3
    move v1, p3

    :goto_0
    if-eqz p4, :cond_4

    const/4 p4, 0x2

    if-ge p5, p4, :cond_5

    :cond_4
    const/16 p4, 0x9

    if-gt p1, p4, :cond_5

    if-eq p3, v1, :cond_6

    .line 67
    :cond_5
    div-int/lit8 p3, p1, 0xa

    add-int/lit8 p4, p3, 0x30

    int-to-char p4, p4

    .line 68
    aput-char p4, p0, v1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 p3, p3, 0xa

    sub-int/2addr p1, p3

    :cond_6
    add-int/lit8 p1, p1, 0x30

    int-to-char p1, p1

    .line 72
    aput-char p1, p0, v1

    add-int/lit8 v1, v1, 0x1

    .line 74
    aput-char p2, p0, v1

    add-int/lit8 p3, v1, 0x1

    :cond_7
    return p3
.end method

.method public static onPostMessage(JJLjava/io/PrintWriter;)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const-string p0, "--"

    .line 179
    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void

    :cond_0
    sub-long/2addr p0, p2

    .line 182
    invoke-static {p0, p1, p4}, Lo/onEvent;->onPostMessage(JLjava/io/PrintWriter;)V

    return-void
.end method

.method private static onPostMessage(JLjava/io/PrintWriter;)V
    .locals 12

    .line 163
    sget-object v0, Lo/onEvent;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    .line 1081
    :try_start_0
    sget-object v1, Lo/onEvent;->onNavigationEvent:[C

    array-length v1, v1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    new-array v1, v2, [C

    .line 1082
    sput-object v1, Lo/onEvent;->onNavigationEvent:[C

    .line 1085
    :cond_0
    sget-object v1, Lo/onEvent;->onNavigationEvent:[C

    const-wide/16 v3, 0x0

    const/4 v9, 0x1

    cmp-long v5, p0, v3

    if-nez v5, :cond_1

    const/16 p0, 0x30

    .line 1093
    aput-char p0, v1, v2

    goto/16 :goto_7

    :cond_1
    if-lez v5, :cond_2

    const/16 v3, 0x2b

    goto :goto_0

    :cond_2
    const/16 v3, 0x2d

    neg-long p0, p0

    :goto_0
    const-wide/16 v4, 0x3e8

    .line 1105
    rem-long v6, p0, v4

    long-to-int v10, v6

    .line 1106
    div-long/2addr p0, v4

    long-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-int p0, p0

    const p1, 0x15180

    if-le p0, p1, :cond_3

    .line 1110
    div-int v4, p0, p1

    mul-int p1, p1, v4

    sub-int/2addr p0, p1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    const/16 p1, 0xe10

    if-le p0, p1, :cond_4

    .line 1114
    div-int/lit16 p1, p0, 0xe10

    mul-int/lit16 v5, p1, 0xe10

    sub-int/2addr p0, v5

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    const/16 v5, 0x3c

    if-le p0, v5, :cond_5

    .line 1118
    div-int/lit8 v5, p0, 0x3c

    mul-int/lit8 v6, v5, 0x3c

    sub-int/2addr p0, v6

    move v11, p0

    move p0, v5

    goto :goto_3

    :cond_5
    move v11, p0

    const/4 p0, 0x0

    .line 1137
    :goto_3
    aput-char v3, v1, v2

    const/16 v5, 0x64

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    .line 1142
    invoke-static/range {v3 .. v8}, Lo/onEvent;->extraCallback([CICIZI)I

    move-result v6

    const/16 v5, 0x68

    if-eq v6, v9, :cond_6

    const/4 v7, 0x1

    goto :goto_4

    :cond_6
    const/4 v7, 0x0

    :goto_4
    const/4 v8, 0x0

    move-object v3, v1

    move v4, p1

    .line 1143
    invoke-static/range {v3 .. v8}, Lo/onEvent;->extraCallback([CICIZI)I

    move-result v6

    const/16 v5, 0x6d

    if-eq v6, v9, :cond_7

    const/4 v7, 0x1

    goto :goto_5

    :cond_7
    const/4 v7, 0x0

    :goto_5
    const/4 v8, 0x0

    move-object v3, v1

    move v4, p0

    .line 1144
    invoke-static/range {v3 .. v8}, Lo/onEvent;->extraCallback([CICIZI)I

    move-result v6

    const/16 v5, 0x73

    if-eq v6, v9, :cond_8

    const/4 v7, 0x1

    goto :goto_6

    :cond_8
    const/4 v7, 0x0

    :goto_6
    const/4 v8, 0x0

    move-object v3, v1

    move v4, v11

    .line 1145
    invoke-static/range {v3 .. v8}, Lo/onEvent;->extraCallback([CICIZI)I

    move-result v6

    const/16 v5, 0x6d

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, v1

    move v4, v10

    .line 1146
    invoke-static/range {v3 .. v8}, Lo/onEvent;->extraCallback([CICIZI)I

    move-result p0

    const/16 p1, 0x73

    .line 1147
    aput-char p1, v1, p0

    add-int/2addr v9, p0

    .line 165
    :goto_7
    new-instance p0, Ljava/lang/String;

    sget-object p1, Lo/onEvent;->onNavigationEvent:[C

    invoke-direct {p0, p1, v2, v9}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 166
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
