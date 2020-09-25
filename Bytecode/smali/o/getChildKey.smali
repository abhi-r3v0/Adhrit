.class public abstract Lo/getChildKey;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getChildKey$onMessageChannelReady;
    }
.end annotation


# instance fields
.field public onPostMessage:Ljava/io/Reader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extraCallback([B)Lo/getChildKey;
    .locals 4

    .line 210
    new-instance v0, Lo/updatePriority;

    invoke-direct {v0}, Lo/updatePriority;-><init>()V

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    .line 2099
    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Lo/updatePriority;->onMessageChannelReady([BII)Lo/updatePriority;

    move-result-object v0

    .line 211
    array-length p0, p0

    int-to-long v1, p0

    .line 2224
    new-instance p0, Lo/getChildKey$2;

    const/4 v3, 0x0

    invoke-direct {p0, v3, v1, v2, v0}, Lo/getChildKey$2;-><init>(Lo/isFiltered;JLo/fullLimitUpdateChild;)V

    return-object p0

    .line 2098
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "source == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static onMessageChannelReady(Lo/isFiltered;JLo/fullLimitUpdateChild;)Lo/getChildKey;
    .locals 1

    .line 224
    new-instance v0, Lo/getChildKey$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lo/getChildKey$2;-><init>(Lo/isFiltered;JLo/fullLimitUpdateChild;)V

    return-object v0
.end method


# virtual methods
.method public abstract ICustomTabsCallback()J
.end method

.method public close()V
    .locals 1

    .line 188
    invoke-virtual {p0}, Lo/getChildKey;->onMessageChannelReady()Lo/fullLimitUpdateChild;

    move-result-object v0

    invoke-static {v0}, Lo/generateEventsForType;->onNavigationEvent(Ljava/io/Closeable;)V

    return-void
.end method

.method public final extraCallback()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    invoke-virtual {p0}, Lo/getChildKey;->onMessageChannelReady()Lo/fullLimitUpdateChild;

    move-result-object v0

    .line 1183
    :try_start_0
    invoke-virtual {p0}, Lo/getChildKey;->onNavigationEvent()Lo/isFiltered;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1184
    sget-object v2, Lo/generateEventsForType;->onMessageChannelReady:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Lo/isFiltered;->onMessageChannelReady(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Lo/generateEventsForType;->onMessageChannelReady:Ljava/nio/charset/Charset;

    .line 175
    :goto_0
    invoke-static {v0, v1}, Lo/generateEventsForType;->onNavigationEvent(Lo/fullLimitUpdateChild;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 176
    invoke-interface {v0, v1}, Lo/fullLimitUpdateChild;->onNavigationEvent(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    invoke-static {v0}, Lo/generateEventsForType;->onNavigationEvent(Ljava/io/Closeable;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lo/generateEventsForType;->onNavigationEvent(Ljava/io/Closeable;)V

    throw v1
.end method

.method public abstract onMessageChannelReady()Lo/fullLimitUpdateChild;
.end method

.method public abstract onNavigationEvent()Lo/isFiltered;
.end method

.method public final onPostMessage()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Lo/getChildKey;->ICustomTabsCallback()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    .line 134
    invoke-virtual {p0}, Lo/getChildKey;->onMessageChannelReady()Lo/fullLimitUpdateChild;

    move-result-object v2

    .line 137
    :try_start_0
    invoke-interface {v2}, Lo/fullLimitUpdateChild;->mayLaunchUrl()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    invoke-static {v2}, Lo/generateEventsForType;->onNavigationEvent(Ljava/io/Closeable;)V

    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    .line 141
    array-length v2, v3

    int-to-long v4, v2

    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Content-Length ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ") and stream length ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") disagree"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    return-object v3

    :catchall_0
    move-exception v0

    .line 139
    invoke-static {v2}, Lo/generateEventsForType;->onNavigationEvent(Ljava/io/Closeable;)V

    throw v0

    .line 131
    :cond_2
    new-instance v2, Ljava/io/IOException;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot buffer entire body for content length: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
