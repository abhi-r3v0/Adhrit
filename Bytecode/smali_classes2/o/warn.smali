.class public final Lo/warn;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final onMessageChannelReady:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lo/warn;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lo/warn;->onMessageChannelReady:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback(Ljava/io/File;)Lo/exceptionStacktrace;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 181
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 5065
    new-instance p0, Lo/logsDebug;

    invoke-direct {p0}, Lo/logsDebug;-><init>()V

    .line 5072
    new-instance v1, Lo/warn$4;

    invoke-direct {v1, p0, v0}, Lo/warn$4;-><init>(Lo/logsDebug;Ljava/io/OutputStream;)V

    return-object v1

    .line 180
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "file == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ICustomTabsCallback(Lo/toLog;)Lo/fullLimitUpdateChild;
    .locals 1

    .line 51
    new-instance v0, Lo/debug;

    invoke-direct {v0, p0}, Lo/debug;-><init>(Lo/toLog;)V

    return-object v0
.end method

.method public static extraCallback()Lo/exceptionStacktrace;
    .locals 1

    .line 199
    new-instance v0, Lo/warn$1;

    invoke-direct {v0}, Lo/warn$1;-><init>()V

    return-object v0
.end method

.method public static extraCallback(Ljava/net/Socket;)Lo/toLog;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 223
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6230
    new-instance v0, Lo/warn$5;

    invoke-direct {v0, p0}, Lo/warn$5;-><init>(Ljava/net/Socket;)V

    .line 225
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 7132
    new-instance v1, Lo/warn$2;

    invoke-direct {v1, v0, p0}, Lo/warn$2;-><init>(Lo/logsDebug;Ljava/io/InputStream;)V

    .line 7232
    new-instance p0, Lo/getIndexedFilter$4;

    invoke-direct {p0, v0, v1}, Lo/getIndexedFilter$4;-><init>(Lo/getIndexedFilter;Lo/toLog;)V

    return-object p0

    .line 7129
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "in == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 223
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "socket\'s input stream == null"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 222
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "socket == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static extraCallback(Ljava/lang/AssertionError;)Z
    .locals 1

    .line 262
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 263
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

.method public static onMessageChannelReady(Ljava/io/File;)Lo/toLog;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 168
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4125
    new-instance p0, Lo/logsDebug;

    invoke-direct {p0}, Lo/logsDebug;-><init>()V

    .line 4132
    new-instance v1, Lo/warn$2;

    invoke-direct {v1, p0, v0}, Lo/warn$2;-><init>(Lo/logsDebug;Ljava/io/InputStream;)V

    return-object v1

    .line 167
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "file == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static onNavigationEvent(Ljava/io/InputStream;)Lo/toLog;
    .locals 2

    .line 125
    new-instance v0, Lo/logsDebug;

    invoke-direct {v0}, Lo/logsDebug;-><init>()V

    if-eqz p0, :cond_0

    .line 3132
    new-instance v1, Lo/warn$2;

    invoke-direct {v1, v0, p0}, Lo/warn$2;-><init>(Lo/logsDebug;Ljava/io/InputStream;)V

    return-object v1

    .line 3129
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "in == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static onPostMessage(Ljava/io/File;)Lo/exceptionStacktrace;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 187
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 6065
    new-instance p0, Lo/logsDebug;

    invoke-direct {p0}, Lo/logsDebug;-><init>()V

    .line 6072
    new-instance v1, Lo/warn$4;

    invoke-direct {v1, p0, v0}, Lo/warn$4;-><init>(Lo/logsDebug;Ljava/io/OutputStream;)V

    return-object v1

    .line 186
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "file == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static onPostMessage(Ljava/net/Socket;)Lo/exceptionStacktrace;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 117
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1230
    new-instance v0, Lo/warn$5;

    invoke-direct {v0, p0}, Lo/warn$5;-><init>(Ljava/net/Socket;)V

    .line 119
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2072
    new-instance v1, Lo/warn$4;

    invoke-direct {v1, v0, p0}, Lo/warn$4;-><init>(Lo/logsDebug;Ljava/io/OutputStream;)V

    .line 2160
    new-instance p0, Lo/getIndexedFilter$5;

    invoke-direct {p0, v0, v1}, Lo/getIndexedFilter$5;-><init>(Lo/getIndexedFilter;Lo/exceptionStacktrace;)V

    return-object p0

    .line 2069
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "out == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 117
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "socket\'s output stream == null"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 116
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "socket == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static onPostMessage(Lo/exceptionStacktrace;)Lo/filtersNodes;
    .locals 1

    .line 60
    new-instance v0, Lo/info;

    invoke-direct {v0, p0}, Lo/info;-><init>(Lo/exceptionStacktrace;)V

    return-object v0
.end method
