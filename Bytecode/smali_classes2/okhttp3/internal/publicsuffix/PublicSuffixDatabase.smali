.class public final Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ICustomTabsCallback:[Ljava/lang/String;

.field private static final extraCallback:[B

.field private static final onMessageChannelReady:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

.field private static final onPostMessage:[Ljava/lang/String;


# instance fields
.field private asBinder:[B

.field private final onNavigationEvent:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final onRelationshipValidationResult:Ljava/util/concurrent/CountDownLatch;

.field private onTransact:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/16 v1, 0x2a

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 39
    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->extraCallback:[B

    new-array v0, v2, [Ljava/lang/String;

    .line 40
    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->onPostMessage:[Ljava/lang/String;

    const-string v0, "*"

    .line 41
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->ICustomTabsCallback:[Ljava/lang/String;

    .line 45
    new-instance v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    invoke-direct {v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;-><init>()V

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->onMessageChannelReady:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->onNavigationEvent:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->onRelationshipValidationResult:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private ICustomTabsCallback([Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    .line 111
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->onNavigationEvent:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->onNavigationEvent:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 1313
    :goto_0
    :try_start_0
    const-class v3, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    const-string v4, "publicsuffixes.gz"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1316
    new-instance v4, Lo/computeStringSizeNoTag$onPostMessage;

    invoke-static {v3}, Lo/warn;->onNavigationEvent(Ljava/io/InputStream;)Lo/toLog;

    move-result-object v3

    invoke-direct {v4, v3}, Lo/computeStringSizeNoTag$onPostMessage;-><init>(Lo/toLog;)V

    invoke-static {v4}, Lo/warn;->ICustomTabsCallback(Lo/toLog;)Lo/fullLimitUpdateChild;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1318
    :try_start_1
    invoke-interface {v3}, Lo/fullLimitUpdateChild;->asInterface()I

    move-result v4

    .line 1319
    new-array v4, v4, [B

    .line 1320
    invoke-interface {v3, v4}, Lo/fullLimitUpdateChild;->onPostMessage([B)V

    .line 1322
    invoke-interface {v3}, Lo/fullLimitUpdateChild;->asInterface()I

    move-result v5

    .line 1323
    new-array v5, v5, [B

    .line 1324
    invoke-interface {v3, v5}, Lo/fullLimitUpdateChild;->onPostMessage([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1326
    :try_start_2
    invoke-static {v3}, Lo/generateEventsForType;->onNavigationEvent(Ljava/io/Closeable;)V

    .line 1329
    monitor-enter p0
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1330
    :try_start_3
    iput-object v4, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->asBinder:[B

    .line 1331
    iput-object v5, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->onTransact:[B

    .line 1332
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1334
    :try_start_4
    iget-object v3, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->onRelationshipValidationResult:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 1332
    monitor-exit p0

    throw v3

    :catchall_1
    move-exception v4

    .line 1326
    invoke-static {v3}, Lo/generateEventsForType;->onNavigationEvent(Ljava/io/Closeable;)V

    throw v4
    :try_end_4
    .catch Ljava/io/InterruptedIOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_0
    :goto_1
    if-eqz v0, :cond_3

    .line 1304
    :goto_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_4

    :catchall_2
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v3

    .line 1298
    :try_start_5
    invoke-static {}, Lo/getChildAfterChild;->onRelationshipValidationResult()Lo/getChildAfterChild;

    move-result-object v4

    const/4 v5, 0x5

    const-string v6, "Failed to read public suffix list"

    invoke-virtual {v4, v5, v6, v3}, Lo/getChildAfterChild;->onMessageChannelReady(ILjava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v0, :cond_3

    goto :goto_2

    .line 1295
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v0, 0x1

    goto :goto_0

    :goto_3
    if-eqz v0, :cond_1

    .line 1304
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    throw p1

    .line 115
    :cond_2
    :try_start_6
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->onRelationshipValidationResult:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    .line 117
    :catch_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 121
    :cond_3
    :goto_4
    monitor-enter p0

    .line 122
    :try_start_7
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->asBinder:[B

    if-eqz v0, :cond_10

    .line 126
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 129
    array-length v0, p1

    new-array v3, v0, [[B

    const/4 v4, 0x0

    .line 130
    :goto_5
    array-length v5, p1

    if-ge v4, v5, :cond_4

    .line 131
    aget-object v5, p1, v4

    sget-object v6, Lo/generateEventsForType;->onMessageChannelReady:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_6
    const/4 v4, 0x0

    if-ge p1, v0, :cond_6

    .line 138
    iget-object v5, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->asBinder:[B

    invoke-static {v5, v3, p1}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->onMessageChannelReady([B[[BI)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    goto :goto_7

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_6
    move-object v5, v4

    :goto_7
    if-le v0, v2, :cond_8

    .line 152
    invoke-virtual {v3}, [[B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[B

    const/4 v6, 0x0

    .line 153
    :goto_8
    array-length v7, p1

    sub-int/2addr v7, v2

    if-ge v6, v7, :cond_8

    .line 154
    sget-object v7, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->extraCallback:[B

    aput-object v7, p1, v6

    .line 155
    iget-object v7, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->asBinder:[B

    invoke-static {v7, p1, v6}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->onMessageChannelReady([B[[BI)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    goto :goto_9

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_8
    move-object v7, v4

    :goto_9
    if-eqz v7, :cond_a

    :goto_a
    add-int/lit8 p1, v0, -0x1

    if-ge v1, p1, :cond_a

    .line 167
    iget-object p1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->onTransact:[B

    invoke-static {p1, v3, v1}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->onMessageChannelReady([B[[BI)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    move-object v4, p1

    goto :goto_b

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_a
    :goto_b
    if-eqz v4, :cond_b

    .line 178
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "!"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\."

    .line 179
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_b
    if-nez v5, :cond_c

    if-nez v7, :cond_c

    .line 181
    sget-object p1, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->ICustomTabsCallback:[Ljava/lang/String;

    return-object p1

    :cond_c
    if-eqz v5, :cond_d

    const-string p1, "\\."

    .line 185
    invoke-virtual {v5, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_c

    .line 186
    :cond_d
    sget-object p1, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->onPostMessage:[Ljava/lang/String;

    :goto_c
    if-eqz v7, :cond_e

    const-string v0, "\\."

    .line 189
    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 190
    :cond_e
    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->onPostMessage:[Ljava/lang/String;

    .line 192
    :goto_d
    array-length v1, p1

    array-length v2, v0

    if-le v1, v2, :cond_f

    return-object p1

    :cond_f
    return-object v0

    .line 123
    :cond_10
    :try_start_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to load publicsuffixes.gz resource from the classpath."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception p1

    .line 126
    monitor-exit p0

    throw p1
.end method

.method public static extraCallback()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
    .locals 1

    .line 61
    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->onMessageChannelReady:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    return-object v0
.end method

.method private static onMessageChannelReady([B[[BI)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 199
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_a

    add-int v5, v4, v2

    .line 202
    div-int/lit8 v5, v5, 0x2

    :goto_1
    const/16 v6, 0xa

    if-ltz v5, :cond_0

    .line 205
    aget-byte v7, v0, v5

    if-eq v7, v6, :cond_0

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    :goto_2
    add-int v9, v5, v8

    .line 212
    aget-byte v10, v0, v9

    if-eq v10, v6, :cond_1

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    sub-int v6, v9, v5

    move/from16 v10, p2

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_3
    if-eqz v8, :cond_2

    const/16 v8, 0x2e

    const/4 v13, 0x0

    goto :goto_4

    .line 231
    :cond_2
    aget-object v13, v1, v10

    aget-byte v13, v13, v11

    and-int/lit16 v13, v13, 0xff

    move v15, v13

    move v13, v8

    move v8, v15

    :goto_4
    add-int v14, v5, v12

    .line 234
    aget-byte v14, v0, v14

    and-int/lit16 v14, v14, 0xff

    sub-int/2addr v8, v14

    if-nez v8, :cond_4

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v11, v11, 0x1

    if-eq v12, v6, :cond_4

    .line 243
    aget-object v14, v1, v10

    array-length v14, v14

    if-ne v14, v11, :cond_3

    .line 246
    array-length v13, v1

    sub-int/2addr v13, v7

    if-eq v10, v13, :cond_4

    add-int/lit8 v10, v10, 0x1

    const/4 v8, -0x1

    const/4 v8, 0x1

    const/4 v11, -0x1

    goto :goto_3

    :cond_3
    move v8, v13

    goto :goto_3

    :cond_4
    if-gez v8, :cond_5

    :goto_5
    add-int/lit8 v2, v5, -0x1

    goto :goto_0

    :cond_5
    if-lez v8, :cond_6

    :goto_6
    add-int/lit8 v4, v9, 0x1

    goto :goto_0

    :cond_6
    sub-int v7, v6, v12

    .line 263
    aget-object v8, v1, v10

    array-length v8, v8

    sub-int/2addr v8, v11

    :goto_7
    add-int/lit8 v10, v10, 0x1

    .line 264
    array-length v11, v1

    if-ge v10, v11, :cond_7

    .line 265
    aget-object v11, v1, v10

    array-length v11, v11

    add-int/2addr v8, v11

    goto :goto_7

    :cond_7
    if-ge v8, v7, :cond_8

    goto :goto_5

    :cond_8
    if-le v8, v7, :cond_9

    goto :goto_6

    .line 274
    :cond_9
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lo/generateEventsForType;->onMessageChannelReady:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v5, v6, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_8

    :cond_a
    const/4 v1, 0x0

    :goto_8
    return-object v1
.end method


# virtual methods
.method public final onMessageChannelReady(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    if-eqz p1, :cond_3

    .line 83
    invoke-static {p1}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-direct {p0, v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->ICustomTabsCallback([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 86
    array-length v3, v0

    array-length v4, v2

    const/16 v5, 0x21

    const/4 v6, 0x0

    if-ne v3, v4, :cond_0

    aget-object v3, v2, v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 92
    :cond_0
    aget-object v3, v2, v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_1

    .line 94
    array-length v0, v0

    array-length v2, v2

    goto :goto_0

    .line 97
    :cond_1
    array-length v0, v0

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    :goto_0
    sub-int/2addr v0, v2

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 102
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 103
    aget-object v1, p1, v0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 105
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 80
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "domain == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
