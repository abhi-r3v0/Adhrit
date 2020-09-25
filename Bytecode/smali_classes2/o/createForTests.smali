.class public final Lo/createForTests;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ICustomTabsCallback:[Ljava/lang/String;

.field public static final extraCallback:Ljava/nio/charset/Charset;

.field public static final onPostMessage:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 44
    sput-object v1, Lo/createForTests;->onPostMessage:[B

    new-array v0, v0, [Ljava/lang/String;

    .line 45
    sput-object v0, Lo/createForTests;->ICustomTabsCallback:[Ljava/lang/String;

    const-string v0, "UTF-8"

    .line 48
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lo/createForTests;->extraCallback:Ljava/nio/charset/Charset;

    return-void
.end method

.method public static ICustomTabsCallback(Lo/fromCode;)Ljava/lang/String;
    .locals 2

    .line 2400
    iget v0, p0, Lo/fromCode;->onMessageChannelReady:I

    .line 3348
    iget-object v1, p0, Lo/fromCode;->ICustomTabsCallback:Ljava/lang/String;

    .line 261
    invoke-static {v1}, Lo/fromCode;->onNavigationEvent(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3391
    iget-object v1, p0, Lo/fromCode;->extraCallback:Ljava/lang/String;

    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3400
    iget p0, p0, Lo/fromCode;->onMessageChannelReady:I

    .line 262
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4391
    :cond_0
    iget-object p0, p0, Lo/fromCode;->extraCallback:Ljava/lang/String;

    return-object p0
.end method

.method public static ICustomTabsCallback(Ljava/io/Closeable;Ljava/io/Closeable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 123
    :goto_0
    :try_start_1
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    if-nez p0, :cond_0

    move-object p0, p1

    :cond_0
    :goto_1
    if-nez p0, :cond_1

    return-void

    .line 128
    :cond_1
    instance-of p1, p0, Ljava/io/IOException;

    if-nez p1, :cond_4

    .line 129
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_3

    .line 130
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_2

    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 131
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 129
    :cond_3
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    .line 128
    :cond_4
    check-cast p0, Ljava/io/IOException;

    throw p0
.end method

.method public static ICustomTabsCallback(Ljava/lang/AssertionError;)Z
    .locals 1

    .line 288
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 289
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

.method public static ICustomTabsCallback(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[TT;[TT;)[TT;"
        }
    .end annotation

    .line 2247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2248
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    .line 2249
    array-length v5, p2

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, p2, v6

    .line 2250
    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2251
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 239
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static extraCallback(Ljava/net/Socket;)V
    .locals 2

    if-eqz p0, :cond_2

    .line 86
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    return-void

    :catch_0
    move-exception p0

    .line 90
    throw p0

    :catch_1
    move-exception p0

    .line 1288
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1289
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

    .line 88
    :cond_1
    throw p0

    :catch_2
    :cond_2
    return-void
.end method

.method public static extraCallback(Lo/toLog;ILjava/util/concurrent/TimeUnit;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 153
    invoke-interface {p0}, Lo/toLog;->ICustomTabsCallback()Lo/logsDebug;

    move-result-object v2

    invoke-virtual {v2}, Lo/logsDebug;->onPostMessage()Z

    move-result v2

    const-wide v3, 0x7fffffffffffffffL

    if-eqz v2, :cond_0

    .line 154
    invoke-interface {p0}, Lo/toLog;->ICustomTabsCallback()Lo/logsDebug;

    move-result-object v2

    invoke-virtual {v2}, Lo/logsDebug;->ICustomTabsCallback()J

    move-result-wide v5

    sub-long/2addr v5, v0

    goto :goto_0

    :cond_0
    move-wide v5, v3

    .line 156
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

    .line 158
    :try_start_0
    new-instance p1, Lo/updatePriority;

    invoke-direct {p1}, Lo/updatePriority;-><init>()V

    :goto_1
    const-wide/16 v7, 0x800

    .line 159
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

    .line 167
    invoke-interface {p0}, Lo/toLog;->ICustomTabsCallback()Lo/logsDebug;

    move-result-object p0

    invoke-virtual {p0}, Lo/logsDebug;->U_()Lo/logsDebug;

    goto :goto_2

    .line 169
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

    .line 167
    invoke-interface {p0}, Lo/toLog;->ICustomTabsCallback()Lo/logsDebug;

    move-result-object p0

    invoke-virtual {p0}, Lo/logsDebug;->U_()Lo/logsDebug;

    goto :goto_3

    .line 169
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

    .line 167
    invoke-interface {p0}, Lo/toLog;->ICustomTabsCallback()Lo/logsDebug;

    move-result-object p0

    invoke-virtual {p0}, Lo/logsDebug;->U_()Lo/logsDebug;

    goto :goto_4

    .line 169
    :cond_4
    invoke-interface {p0}, Lo/toLog;->ICustomTabsCallback()Lo/logsDebug;

    move-result-object p0

    add-long/2addr v0, v5

    invoke-virtual {p0, v0, v1}, Lo/logsDebug;->onPostMessage(J)Lo/logsDebug;

    :goto_4
    const/4 p0, 0x0

    return p0
.end method

.method public static onMessageChannelReady(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "MD5"

    .line 177
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "UTF-8"

    .line 178
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 179
    invoke-static {p0}, Lo/matches;->ICustomTabsCallback([B)Lo/matches;

    move-result-object p0

    invoke-virtual {p0}, Lo/matches;->onRelationshipValidationResult()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 181
    :goto_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static onMessageChannelReady(Lo/matches;)Lo/matches;
    .locals 1

    :try_start_0
    const-string v0, "SHA-1"

    .line 199
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 200
    invoke-virtual {p0}, Lo/matches;->asInterface()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 201
    invoke-static {p0}, Lo/matches;->ICustomTabsCallback([B)Lo/matches;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 203
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static onMessageChannelReady(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 71
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception p0

    .line 73
    throw p0

    :catch_1
    :cond_0
    return-void
.end method

.method public static onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    .line 61
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

.method public static onMessageChannelReady([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .line 297
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 298
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, -0x1

    .line 299
    aput-object p1, v1, v0

    return-object v1
.end method

.method public static onNavigationEvent(Ljava/util/List;)Ljava/util/List;
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

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static onNavigationEvent(JJ)V
    .locals 5

    const-wide/16 v0, 0x0

    or-long v2, p2, v0

    cmp-long v4, v2, v0

    if-ltz v4, :cond_0

    cmp-long v2, v0, p0

    if-gtz v2, :cond_0

    cmp-long v0, p0, p2

    if-ltz v0, :cond_0

    return-void

    .line 55
    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
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

    .line 214
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static onPostMessage(Ljava/util/Map;)Ljava/util/Map;
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

    .line 219
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static onPostMessage(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;
    .locals 2

    .line 223
    new-instance v0, Lo/createForTests$2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lo/createForTests$2;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static onPostMessage(Lo/toLog;Ljava/util/concurrent/TimeUnit;)Z
    .locals 1

    const/16 v0, 0x64

    .line 141
    :try_start_0
    invoke-static {p0, v0, p1}, Lo/createForTests;->extraCallback(Lo/toLog;ILjava/util/concurrent/TimeUnit;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static onPostMessage([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 293
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
