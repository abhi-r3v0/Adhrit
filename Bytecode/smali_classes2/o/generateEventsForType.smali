.class public final Lo/generateEventsForType;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ICustomTabsCallback:[B

.field private static final ICustomTabsCallback$Stub:Lo/matches;

.field private static final ICustomTabsCallback$Stub$Proxy:Ljava/nio/charset/Charset;

.field private static final ICustomTabsService:Ljava/nio/charset/Charset;

.field private static final asBinder:Lo/matches;

.field public static final asInterface:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final extraCallback:Lo/getChildKey;

.field private static final getInterfaceDescriptor:Lo/matches;

.field private static final mayLaunchUrl:Ljava/lang/reflect/Method;

.field private static final newSession:Ljava/nio/charset/Charset;

.field public static final onMessageChannelReady:Ljava/nio/charset/Charset;

.field public static final onNavigationEvent:[Ljava/lang/String;

.field public static final onPostMessage:Ljava/util/TimeZone;

.field private static final onRelationshipValidationResult:Lo/matches;

.field private static final onTransact:Lo/matches;

.field private static final postMessage:Ljava/util/regex/Pattern;

.field private static final warmup:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 59
    sput-object v1, Lo/generateEventsForType;->ICustomTabsCallback:[B

    new-array v2, v0, [Ljava/lang/String;

    .line 60
    sput-object v2, Lo/generateEventsForType;->onNavigationEvent:[Ljava/lang/String;

    .line 62
    invoke-static {v1}, Lo/getChildKey;->extraCallback([B)Lo/getChildKey;

    move-result-object v1

    sput-object v1, Lo/generateEventsForType;->extraCallback:Lo/getChildKey;

    .line 63
    sget-object v1, Lo/generateEventsForType;->ICustomTabsCallback:[B

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lo/isCompleteForPath;->ICustomTabsCallback(Lo/isFiltered;[B)Lo/isCompleteForPath;

    const-string v1, "efbbbf"

    .line 65
    invoke-static {v1}, Lo/matches;->ICustomTabsCallback(Ljava/lang/String;)Lo/matches;

    move-result-object v1

    sput-object v1, Lo/generateEventsForType;->asBinder:Lo/matches;

    const-string v1, "feff"

    .line 66
    invoke-static {v1}, Lo/matches;->ICustomTabsCallback(Ljava/lang/String;)Lo/matches;

    move-result-object v1

    sput-object v1, Lo/generateEventsForType;->ICustomTabsCallback$Stub:Lo/matches;

    const-string v1, "fffe"

    .line 67
    invoke-static {v1}, Lo/matches;->ICustomTabsCallback(Ljava/lang/String;)Lo/matches;

    move-result-object v1

    sput-object v1, Lo/generateEventsForType;->onTransact:Lo/matches;

    const-string v1, "0000ffff"

    .line 68
    invoke-static {v1}, Lo/matches;->ICustomTabsCallback(Ljava/lang/String;)Lo/matches;

    move-result-object v1

    sput-object v1, Lo/generateEventsForType;->onRelationshipValidationResult:Lo/matches;

    const-string v1, "ffff0000"

    .line 69
    invoke-static {v1}, Lo/matches;->ICustomTabsCallback(Ljava/lang/String;)Lo/matches;

    move-result-object v1

    sput-object v1, Lo/generateEventsForType;->getInterfaceDescriptor:Lo/matches;

    const-string v1, "UTF-8"

    .line 71
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    sput-object v1, Lo/generateEventsForType;->onMessageChannelReady:Ljava/nio/charset/Charset;

    const-string v1, "ISO-8859-1"

    .line 72
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    const-string v1, "UTF-16BE"

    .line 73
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    sput-object v1, Lo/generateEventsForType;->warmup:Ljava/nio/charset/Charset;

    const-string v1, "UTF-16LE"

    .line 74
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    sput-object v1, Lo/generateEventsForType;->newSession:Ljava/nio/charset/Charset;

    const-string v1, "UTF-32BE"

    .line 75
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    sput-object v1, Lo/generateEventsForType;->ICustomTabsService:Ljava/nio/charset/Charset;

    const-string v1, "UTF-32LE"

    .line 76
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    sput-object v1, Lo/generateEventsForType;->ICustomTabsCallback$Stub$Proxy:Ljava/nio/charset/Charset;

    const-string v1, "GMT"

    .line 79
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    sput-object v1, Lo/generateEventsForType;->onPostMessage:Ljava/util/TimeZone;

    .line 81
    new-instance v1, Lo/generateEventsForType$2;

    invoke-direct {v1}, Lo/generateEventsForType$2;-><init>()V

    sput-object v1, Lo/generateEventsForType;->asInterface:Ljava/util/Comparator;

    .line 92
    :try_start_0
    const-class v1, Ljava/lang/Throwable;

    const-string v3, "addSuppressed"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Throwable;

    aput-object v5, v4, v0

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :catch_0
    sput-object v2, Lo/generateEventsForType;->mayLaunchUrl:Ljava/lang/reflect/Method;

    const-string v0, "([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)"

    .line 118
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/generateEventsForType;->postMessage:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static ICustomTabsCallback(Ljava/lang/String;)I
    .locals 4

    .line 451
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 452
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x1f

    if-le v2, v3, :cond_1

    const/16 v3, 0x7f

    if-lt v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public static varargs ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 467
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ICustomTabsCallback(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 229
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 231
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static ICustomTabsCallback(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 276
    array-length v1, p1

    if-eqz v1, :cond_3

    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_2

    .line 279
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    .line 280
    array-length v4, p2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, p2, v5

    .line 281
    invoke-interface {p0, v3, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-nez v6, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return v0
.end method

.method public static ICustomTabsCallback(Lo/toLog;ILjava/util/concurrent/TimeUnit;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 201
    invoke-interface {p0}, Lo/toLog;->ICustomTabsCallback()Lo/logsDebug;

    move-result-object v2

    invoke-virtual {v2}, Lo/logsDebug;->onPostMessage()Z

    move-result v2

    const-wide v3, 0x7fffffffffffffffL

    if-eqz v2, :cond_0

    .line 202
    invoke-interface {p0}, Lo/toLog;->ICustomTabsCallback()Lo/logsDebug;

    move-result-object v2

    invoke-virtual {v2}, Lo/logsDebug;->ICustomTabsCallback()J

    move-result-wide v5

    sub-long/2addr v5, v0

    goto :goto_0

    :cond_0
    move-wide v5, v3

    .line 204
    :goto_0
    invoke-interface {p0}, Lo/toLog;->ICustomTabsCallback()Lo/logsDebug;

    move-result-object v2

    int-to-long v7, p1

    invoke-virtual {p2, v7, v8}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    invoke-static {v5, v6, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    add-long/2addr p1, v0

    invoke-virtual {v2, p1, p2}, Lo/logsDebug;->onPostMessage(J)Lo/logsDebug;

    .line 206
    :try_start_0
    new-instance p1, Lo/updatePriority;

    invoke-direct {p1}, Lo/updatePriority;-><init>()V

    :goto_1
    const-wide/16 v7, 0x2000

    .line 207
    invoke-interface {p0, p1, v7, v8}, Lo/toLog;->ICustomTabsCallback(Lo/updatePriority;J)J

    move-result-wide v7
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v9, -0x1

    cmp-long p2, v7, v9

    if-eqz p2, :cond_1

    .line 1930
    :try_start_1
    iget-wide v7, p1, Lo/updatePriority;->ICustomTabsCallback:J

    invoke-virtual {p1, v7, v8}, Lo/updatePriority;->asInterface(J)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1932
    :try_start_2
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    cmp-long p1, v5, v3

    if-nez p1, :cond_2

    .line 215
    invoke-interface {p0}, Lo/toLog;->ICustomTabsCallback()Lo/logsDebug;

    move-result-object p0

    invoke-virtual {p0}, Lo/logsDebug;->U_()Lo/logsDebug;

    goto :goto_2

    .line 217
    :cond_2
    invoke-interface {p0}, Lo/toLog;->ICustomTabsCallback()Lo/logsDebug;

    move-result-object p0

    add-long/2addr v0, v5

    invoke-virtual {p0, v0, v1}, Lo/logsDebug;->onPostMessage(J)Lo/logsDebug;

    :goto_2
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    cmp-long p2, v5, v3

    if-nez p2, :cond_3

    .line 215
    invoke-interface {p0}, Lo/toLog;->ICustomTabsCallback()Lo/logsDebug;

    move-result-object p0

    invoke-virtual {p0}, Lo/logsDebug;->U_()Lo/logsDebug;

    goto :goto_3

    .line 217
    :cond_3
    invoke-interface {p0}, Lo/toLog;->ICustomTabsCallback()Lo/logsDebug;

    move-result-object p0

    add-long/2addr v0, v5

    invoke-virtual {p0, v0, v1}, Lo/logsDebug;->onPostMessage(J)Lo/logsDebug;

    :goto_3
    throw p1

    :catch_1
    nop

    cmp-long p1, v5, v3

    if-nez p1, :cond_4

    .line 215
    invoke-interface {p0}, Lo/toLog;->ICustomTabsCallback()Lo/logsDebug;

    move-result-object p0

    invoke-virtual {p0}, Lo/logsDebug;->U_()Lo/logsDebug;

    goto :goto_4

    .line 217
    :cond_4
    invoke-interface {p0}, Lo/toLog;->ICustomTabsCallback()Lo/logsDebug;

    move-result-object p0

    add-long/2addr v0, v5

    invoke-virtual {p0, v0, v1}, Lo/logsDebug;->onPostMessage(J)Lo/logsDebug;

    :goto_4
    const/4 p0, 0x0

    return p0
.end method

.method public static ICustomTabsCallback(Lo/toLog;Ljava/util/concurrent/TimeUnit;)Z
    .locals 1

    const/16 v0, 0x64

    .line 189
    :try_start_0
    invoke-static {p0, v0, p1}, Lo/generateEventsForType;->ICustomTabsCallback(Lo/toLog;ILjava/util/concurrent/TimeUnit;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static extraCallback(Ljava/lang/String;IIC)I
    .locals 1

    :goto_0
    if-ge p1, p2, :cond_1

    .line 385
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p3, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method public static extraCallback(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;
    .locals 1

    .line 504
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 506
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method private static extraCallback(Ljava/lang/String;II)Ljava/net/InetAddress;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    const/16 v2, 0x10

    new-array v3, v2, [B

    const/4 v4, -0x1

    const/4 v5, 0x0

    move/from16 v6, p1

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    :goto_0
    const/4 v10, 0x0

    if-ge v6, v1, :cond_14

    if-ne v7, v2, :cond_0

    return-object v10

    :cond_0
    add-int/lit8 v11, v6, 0x2

    const/4 v12, 0x4

    if-gt v11, v1, :cond_3

    const/4 v13, 0x2

    const-string v14, "::"

    .line 531
    invoke-virtual {v0, v6, v14, v5, v13}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v13

    if-eqz v13, :cond_3

    if-eq v8, v4, :cond_1

    return-object v10

    :cond_1
    add-int/lit8 v7, v7, 0x2

    move v8, v7

    if-ne v11, v1, :cond_2

    goto/16 :goto_9

    :cond_2
    move v9, v11

    goto/16 :goto_6

    :cond_3
    if-eqz v7, :cond_10

    const/4 v11, 0x1

    const-string v13, ":"

    .line 540
    invoke-virtual {v0, v6, v13, v5, v11}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v13

    if-eqz v13, :cond_4

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5

    :cond_4
    const-string v13, "."

    .line 542
    invoke-virtual {v0, v6, v13, v5, v11}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_f

    add-int/lit8 v6, v7, -0x2

    move v13, v6

    :goto_1
    if-ge v9, v1, :cond_c

    if-ne v13, v2, :cond_5

    goto :goto_3

    :cond_5
    if-eq v13, v6, :cond_7

    .line 6601
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x2e

    if-eq v14, v15, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v9, v9, 0x1

    :cond_7
    move v14, v9

    const/4 v15, 0x0

    :goto_2
    if-ge v14, v1, :cond_a

    .line 6609
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v5, 0x30

    if-lt v11, v5, :cond_a

    const/16 v2, 0x39

    if-gt v11, v2, :cond_a

    if-nez v15, :cond_8

    if-eq v9, v14, :cond_8

    goto :goto_3

    :cond_8
    mul-int/lit8 v15, v15, 0xa

    add-int/2addr v15, v11

    sub-int/2addr v15, v5

    const/16 v2, 0xff

    if-le v15, v2, :cond_9

    goto :goto_3

    :cond_9
    add-int/lit8 v14, v14, 0x1

    const/16 v2, 0x10

    const/4 v5, 0x0

    const/4 v11, 0x1

    goto :goto_2

    :cond_a
    sub-int v2, v14, v9

    if-nez v2, :cond_b

    goto :goto_3

    :cond_b
    add-int/lit8 v2, v13, 0x1

    int-to-byte v5, v15

    .line 6619
    aput-byte v5, v3, v13

    move v13, v2

    move v9, v14

    const/16 v2, 0x10

    const/4 v5, 0x0

    const/4 v11, 0x1

    goto :goto_1

    :cond_c
    add-int/2addr v6, v12

    if-eq v13, v6, :cond_d

    :goto_3
    const/4 v11, 0x0

    goto :goto_4

    :cond_d
    const/4 v11, 0x1

    :goto_4
    if-nez v11, :cond_e

    return-object v10

    :cond_e
    add-int/lit8 v7, v7, 0x2

    goto :goto_9

    :cond_f
    return-object v10

    :cond_10
    :goto_5
    move v9, v6

    :goto_6
    move v6, v9

    const/4 v2, 0x0

    :goto_7
    if-ge v6, v1, :cond_11

    .line 556
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 557
    invoke-static {v5}, Lo/generateEventsForType;->onNavigationEvent(C)I

    move-result v5

    if-eq v5, v4, :cond_11

    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_11
    sub-int v5, v6, v9

    if-eqz v5, :cond_13

    if-le v5, v12, :cond_12

    goto :goto_8

    :cond_12
    add-int/lit8 v5, v7, 0x1

    ushr-int/lit8 v10, v2, 0x8

    int-to-byte v10, v10

    .line 565
    aput-byte v10, v3, v7

    add-int/lit8 v7, v5, 0x1

    int-to-byte v2, v2

    .line 566
    aput-byte v2, v3, v5

    const/16 v2, 0x10

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_13
    :goto_8
    return-object v10

    :cond_14
    :goto_9
    const/16 v0, 0x10

    if-eq v7, v0, :cond_16

    if-ne v8, v4, :cond_15

    return-object v10

    :cond_15
    sub-int v1, v7, v8

    rsub-int/lit8 v2, v1, 0x10

    .line 580
    invoke-static {v3, v8, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    rsub-int/lit8 v2, v7, 0x10

    add-int/2addr v2, v8

    const/4 v0, 0x0

    .line 581
    invoke-static {v3, v8, v2, v0}, Ljava/util/Arrays;->fill([BIIB)V

    .line 585
    :cond_16
    :try_start_0
    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 587
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static extraCallback()Ljavax/net/ssl/X509TrustManager;
    .locals 4

    .line 665
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 664
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    const/4 v1, 0x0

    .line 666
    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 667
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    .line 668
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    instance-of v2, v2, Ljavax/net/ssl/X509TrustManager;

    if-eqz v2, :cond_0

    .line 672
    aget-object v0, v0, v1

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    return-object v0

    .line 669
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected default trust managers:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 670
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "No System TLS"

    .line 674
    invoke-static {v1, v0}, Lo/generateEventsForType;->extraCallback(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method

.method public static extraCallback(Ljava/util/List;)Lo/shouldIncludeField;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/loadsAllData;",
            ">;)",
            "Lo/shouldIncludeField;"
        }
    .end annotation

    .line 679
    new-instance v0, Lo/shouldIncludeField$onMessageChannelReady;

    invoke-direct {v0}, Lo/shouldIncludeField$onMessageChannelReady;-><init>()V

    .line 680
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/loadsAllData;

    .line 681
    sget-object v2, Lo/childChangedChange;->onPostMessage:Lo/childChangedChange;

    iget-object v3, v1, Lo/loadsAllData;->onRelationshipValidationResult:Lo/matches;

    invoke-virtual {v3}, Lo/matches;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v1, Lo/loadsAllData;->ICustomTabsCallback$Stub:Lo/matches;

    invoke-virtual {v1}, Lo/matches;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v3, v1}, Lo/childChangedChange;->onNavigationEvent(Lo/shouldIncludeField$onMessageChannelReady;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7401
    :cond_0
    new-instance p0, Lo/shouldIncludeField;

    invoke-direct {p0, v0}, Lo/shouldIncludeField;-><init>(Lo/shouldIncludeField$onMessageChannelReady;)V

    return-object p0
.end method

.method public static extraCallback(Ljava/net/Socket;)V
    .locals 2

    if-eqz p0, :cond_2

    .line 157
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    return-void

    :catch_0
    move-exception p0

    .line 161
    throw p0

    :catch_1
    move-exception p0

    .line 1303
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1304
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getsockname failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 159
    :cond_1
    throw p0

    :catch_2
    :cond_2
    return-void
.end method

.method private static extraCallback(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 427
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 428
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x1f

    const/4 v4, 0x1

    if-le v2, v3, :cond_2

    const/16 v3, 0x7f

    if-lt v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, " #%/:?@[\\]"

    .line 438
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    return v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v4

    :cond_3
    return v0
.end method

.method public static onMessageChannelReady(Ljava/lang/String;IILjava/lang/String;)I
    .locals 2

    :goto_0
    if-ge p1, p2, :cond_1

    .line 374
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method public static onMessageChannelReady(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, ":"

    .line 400
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    const-string v0, "["

    .line 402
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    invoke-static {p0, v3, v0}, Lo/generateEventsForType;->extraCallback(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0

    .line 404
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0, v2, v0}, Lo/generateEventsForType;->extraCallback(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    return-object v1

    .line 406
    :cond_1
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 407
    array-length v1, v0

    const/16 v3, 0x10

    if-ne v1, v3, :cond_9

    const/4 p0, -0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 5633
    :goto_1
    array-length v5, v0

    if-ge v1, v5, :cond_4

    move v5, v1

    :goto_2
    if-ge v5, v3, :cond_2

    .line 5635
    aget-byte v6, v0, v5

    if-nez v6, :cond_2

    add-int/lit8 v6, v5, 0x1

    aget-byte v6, v0, v6

    if-nez v6, :cond_2

    add-int/lit8 v5, v5, 0x2

    goto :goto_2

    :cond_2
    sub-int v6, v5, v1

    if-le v6, v4, :cond_3

    const/4 v7, 0x4

    if-lt v6, v7, :cond_3

    move p0, v1

    move v4, v6

    :cond_3
    add-int/lit8 v1, v5, 0x2

    goto :goto_1

    .line 5646
    :cond_4
    new-instance v1, Lo/updatePriority;

    invoke-direct {v1}, Lo/updatePriority;-><init>()V

    .line 5647
    :cond_5
    :goto_3
    array-length v5, v0

    if-ge v2, v5, :cond_8

    const/16 v5, 0x3a

    if-ne v2, p0, :cond_6

    .line 5649
    invoke-virtual {v1, v5}, Lo/updatePriority;->extraCallback(I)Lo/updatePriority;

    add-int/2addr v2, v4

    if-ne v2, v3, :cond_5

    .line 5651
    invoke-virtual {v1, v5}, Lo/updatePriority;->extraCallback(I)Lo/updatePriority;

    goto :goto_3

    :cond_6
    if-lez v2, :cond_7

    .line 5653
    invoke-virtual {v1, v5}, Lo/updatePriority;->extraCallback(I)Lo/updatePriority;

    .line 5654
    :cond_7
    aget-byte v5, v0, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    int-to-long v5, v5

    .line 5655
    invoke-virtual {v1, v5, v6}, Lo/updatePriority;->onTransact(J)Lo/updatePriority;

    add-int/lit8 v2, v2, 0x2

    goto :goto_3

    .line 5659
    :cond_8
    invoke-virtual {v1}, Lo/updatePriority;->warmup()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 408
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid IPv6 address: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 412
    :cond_a
    :try_start_0
    invoke-static {p0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 413
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    return-object v1

    .line 416
    :cond_b
    invoke-static {p0}, Lo/generateEventsForType;->extraCallback(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_c

    return-object v1

    :cond_c
    return-object p0

    :catch_0
    return-object v1
.end method

.method public static onMessageChannelReady(Ljava/lang/String;II)Ljava/lang/String;
    .locals 0

    .line 363
    invoke-static {p0, p1, p2}, Lo/generateEventsForType;->onPostMessage(Ljava/lang/String;II)I

    move-result p1

    .line 364
    invoke-static {p0, p1, p2}, Lo/generateEventsForType;->onNavigationEvent(Ljava/lang/String;II)I

    move-result p2

    .line 365
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static onMessageChannelReady(Lo/isFullyInitialized;Z)Ljava/lang/String;
    .locals 3

    .line 2486
    iget-object v0, p0, Lo/isFullyInitialized;->extraCallback:Ljava/lang/String;

    const-string v1, ":"

    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3486
    iget-object v2, p0, Lo/isFullyInitialized;->extraCallback:Ljava/lang/String;

    .line 291
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4486
    :cond_0
    iget-object v0, p0, Lo/isFullyInitialized;->extraCallback:Ljava/lang/String;

    :goto_0
    if-nez p1, :cond_2

    .line 4502
    iget p1, p0, Lo/isFullyInitialized;->onPostMessage:I

    .line 5393
    iget-object v2, p0, Lo/isFullyInitialized;->onNavigationEvent:Ljava/lang/String;

    .line 293
    invoke-static {v2}, Lo/isFullyInitialized;->onNavigationEvent(Ljava/lang/String;)I

    move-result v2

    if-eq p1, v2, :cond_1

    goto :goto_1

    :cond_1
    return-object v0

    .line 294
    :cond_2
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5502
    iget p0, p0, Lo/isFullyInitialized;->onPostMessage:I

    .line 294
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static onMessageChannelReady(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static onNavigationEvent(C)I
    .locals 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    return p0

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v1, 0x66

    if-gt p0, v1, :cond_1

    :goto_0
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v1, 0x46

    if-gt p0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public static onNavigationEvent(Ljava/lang/String;II)I
    .locals 2

    :cond_0
    add-int/lit8 p2, p2, -0x1

    if-lt p2, p1, :cond_1

    .line 347
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    add-int/lit8 p2, p2, 0x1

    return p2

    :cond_1
    return p1
.end method

.method public static onNavigationEvent(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_4

    if-eqz p3, :cond_3

    .line 497
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    const-wide/32 v3, 0x7fffffff

    cmp-long p3, p1, v3

    if-gtz p3, :cond_2

    cmp-long p3, p1, v0

    if-nez p3, :cond_1

    if-gtz v2, :cond_0

    goto :goto_0

    .line 499
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " too small."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    long-to-int p0, p1

    return p0

    .line 498
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " too large."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 496
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "unit == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 495
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " < 0"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static onNavigationEvent(Lo/fullLimitUpdateChild;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 471
    sget-object v0, Lo/generateEventsForType;->asBinder:Lo/matches;

    invoke-interface {p0, v0}, Lo/fullLimitUpdateChild;->extraCallback(Lo/matches;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    sget-object p1, Lo/generateEventsForType;->asBinder:Lo/matches;

    invoke-virtual {p1}, Lo/matches;->onTransact()I

    move-result p1

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lo/fullLimitUpdateChild;->asInterface(J)V

    .line 473
    sget-object p0, Lo/generateEventsForType;->onMessageChannelReady:Ljava/nio/charset/Charset;

    return-object p0

    .line 475
    :cond_0
    sget-object v0, Lo/generateEventsForType;->ICustomTabsCallback$Stub:Lo/matches;

    invoke-interface {p0, v0}, Lo/fullLimitUpdateChild;->extraCallback(Lo/matches;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    sget-object p1, Lo/generateEventsForType;->ICustomTabsCallback$Stub:Lo/matches;

    invoke-virtual {p1}, Lo/matches;->onTransact()I

    move-result p1

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lo/fullLimitUpdateChild;->asInterface(J)V

    .line 477
    sget-object p0, Lo/generateEventsForType;->warmup:Ljava/nio/charset/Charset;

    return-object p0

    .line 479
    :cond_1
    sget-object v0, Lo/generateEventsForType;->onTransact:Lo/matches;

    invoke-interface {p0, v0}, Lo/fullLimitUpdateChild;->extraCallback(Lo/matches;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 480
    sget-object p1, Lo/generateEventsForType;->onTransact:Lo/matches;

    invoke-virtual {p1}, Lo/matches;->onTransact()I

    move-result p1

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lo/fullLimitUpdateChild;->asInterface(J)V

    .line 481
    sget-object p0, Lo/generateEventsForType;->newSession:Ljava/nio/charset/Charset;

    return-object p0

    .line 483
    :cond_2
    sget-object v0, Lo/generateEventsForType;->onRelationshipValidationResult:Lo/matches;

    invoke-interface {p0, v0}, Lo/fullLimitUpdateChild;->extraCallback(Lo/matches;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 484
    sget-object p1, Lo/generateEventsForType;->onRelationshipValidationResult:Lo/matches;

    invoke-virtual {p1}, Lo/matches;->onTransact()I

    move-result p1

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lo/fullLimitUpdateChild;->asInterface(J)V

    .line 485
    sget-object p0, Lo/generateEventsForType;->ICustomTabsService:Ljava/nio/charset/Charset;

    return-object p0

    .line 487
    :cond_3
    sget-object v0, Lo/generateEventsForType;->getInterfaceDescriptor:Lo/matches;

    invoke-interface {p0, v0}, Lo/fullLimitUpdateChild;->extraCallback(Lo/matches;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 488
    sget-object p1, Lo/generateEventsForType;->getInterfaceDescriptor:Lo/matches;

    invoke-virtual {p1}, Lo/matches;->onTransact()I

    move-result p1

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lo/fullLimitUpdateChild;->asInterface(J)V

    .line 489
    sget-object p0, Lo/generateEventsForType;->ICustomTabsCallback$Stub$Proxy:Ljava/nio/charset/Charset;

    return-object p0

    :cond_4
    return-object p1
.end method

.method public static onNavigationEvent(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .line 240
    new-instance v0, Lo/generateEventsForType$4;

    invoke-direct {v0, p0, p1}, Lo/generateEventsForType$4;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static onNavigationEvent(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 142
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception p0

    .line 144
    throw p0

    :catch_1
    :cond_0
    return-void
.end method

.method public static onNavigationEvent(Ljava/lang/AssertionError;)Z
    .locals 1

    .line 303
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getsockname failed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    .line 132
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static onNavigationEvent(Ljava/lang/String;)Z
    .locals 1

    .line 462
    sget-object v0, Lo/generateEventsForType;->postMessage:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static onNavigationEvent([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .line 315
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 316
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, -0x1

    .line 317
    aput-object p1, v1, v0

    return-object v1
.end method

.method public static onPostMessage(Ljava/lang/String;II)I
    .locals 2

    :goto_0
    if-ge p1, p2, :cond_1

    .line 327
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method public static onPostMessage(Ljava/util/Comparator;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 308
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 309
    aget-object v2, p1, v1

    invoke-interface {p0, v2, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static varargs onPostMessage([Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 236
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static onPostMessage(JJJ)V
    .locals 3

    const-wide/16 p2, 0x0

    or-long v0, p4, p2

    cmp-long v2, v0, p2

    if-ltz v2, :cond_0

    cmp-long v0, p2, p0

    if-gtz v0, :cond_0

    cmp-long p2, p0, p4

    if-ltz p2, :cond_0

    return-void

    .line 126
    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public static onPostMessage(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 3

    .line 100
    sget-object v0, Lo/generateEventsForType;->mayLaunchUrl:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 102
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static onPostMessage(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 257
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    .line 258
    array-length v5, p2

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, p2, v6

    .line 259
    invoke-interface {p0, v4, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-nez v7, :cond_0

    .line 260
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 265
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method
