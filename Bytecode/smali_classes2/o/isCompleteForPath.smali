.class public abstract Lo/isCompleteForPath;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback(Lo/isFiltered;Lo/matches;)Lo/isCompleteForPath;
    .locals 1

    .line 63
    new-instance v0, Lo/isCompleteForPath$5;

    invoke-direct {v0, p0, p1}, Lo/isCompleteForPath$5;-><init>(Lo/isFiltered;Lo/matches;)V

    return-object v0
.end method

.method public static ICustomTabsCallback(Lo/isFiltered;[B)Lo/isCompleteForPath;
    .locals 1

    .line 80
    array-length v0, p1

    invoke-static {p0, p1, v0}, Lo/isCompleteForPath;->onNavigationEvent(Lo/isFiltered;[BI)Lo/isCompleteForPath;

    move-result-object p0

    return-object p0
.end method

.method public static extraCallback(Lo/isFiltered;Ljava/lang/String;)Lo/isCompleteForPath;
    .locals 2

    .line 48
    sget-object v0, Lo/generateEventsForType;->onMessageChannelReady:Ljava/nio/charset/Charset;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 1131
    invoke-virtual {p0, v0}, Lo/isFiltered;->onMessageChannelReady(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    if-nez v0, :cond_0

    .line 52
    sget-object v0, Lo/generateEventsForType;->onMessageChannelReady:Ljava/nio/charset/Charset;

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "; charset=utf-8"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo/isFiltered;->ICustomTabsCallback(Ljava/lang/String;)Lo/isFiltered;

    move-result-object p0

    .line 56
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 2080
    array-length v0, p1

    invoke-static {p0, p1, v0}, Lo/isCompleteForPath;->onNavigationEvent(Lo/isFiltered;[BI)Lo/isCompleteForPath;

    move-result-object p0

    return-object p0
.end method

.method private static onNavigationEvent(Lo/isFiltered;[BI)Lo/isCompleteForPath;
    .locals 7

    if-eqz p1, :cond_0

    .line 87
    array-length v0, p1

    int-to-long v1, v0

    const-wide/16 v3, 0x0

    int-to-long v5, p2

    invoke-static/range {v1 .. v6}, Lo/generateEventsForType;->onPostMessage(JJJ)V

    .line 88
    new-instance v0, Lo/isCompleteForPath$3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p1, v1}, Lo/isCompleteForPath$3;-><init>(Lo/isFiltered;I[BI)V

    return-object v0

    .line 86
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "content == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static onPostMessage(Lo/isFiltered;Ljava/io/File;)Lo/isCompleteForPath;
    .locals 1

    if-eqz p1, :cond_0

    .line 107
    new-instance v0, Lo/isCompleteForPath$1;

    invoke-direct {v0, p0, p1}, Lo/isCompleteForPath$1;-><init>(Lo/isFiltered;Ljava/io/File;)V

    return-object v0

    .line 105
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "file == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public extraCallback()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public abstract onMessageChannelReady(Lo/filtersNodes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onPostMessage()Lo/isFiltered;
.end method
