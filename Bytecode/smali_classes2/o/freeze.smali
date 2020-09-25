.class public final Lo/freeze;
.super Ljava/lang/Object;
.source ""


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 32
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "io.perfmark.impl.SecretPerfMarkImpl$PerfMarkImpl"

    .line 36
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v1

    goto :goto_1

    :catchall_0
    move-exception v2

    move-object v3, v2

    goto :goto_0

    :catch_0
    move-exception v0

    .line 38
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    move-object v3, v0

    move-object v0, v2

    :goto_0
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_0

    .line 45
    :try_start_1
    const-class v4, Lo/signalSuccess;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lo/currentStringRemainingChars;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lo/signalSuccess;->onPostMessage:Lo/currentStringRemainingChars;

    aput-object v5, v4, v7

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/signalSuccess;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    goto :goto_2

    :catchall_1
    move-exception v2

    move-object v3, v2

    :cond_0
    :goto_2
    if-nez v1, :cond_1

    .line 53
    new-instance v1, Lo/signalSuccess;

    sget-object v2, Lo/signalSuccess;->onPostMessage:Lo/currentStringRemainingChars;

    invoke-direct {v1, v2}, Lo/signalSuccess;-><init>(Lo/currentStringRemainingChars;)V

    :cond_1
    if-eqz v3, :cond_2

    .line 56
    const-class v1, Lo/freeze;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    const-string v2, "Error during PerfMark.<clinit>"

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback()V
    .locals 0

    return-void
.end method

.method public static ICustomTabsCallback$Stub()Lo/isValidKey$ICustomTabsCallback;
    .locals 1

    .line 229
    invoke-static {}, Lo/signalSuccess;->onMessageChannelReady()Lo/isValidKey$ICustomTabsCallback;

    move-result-object v0

    return-object v0
.end method

.method public static asBinder()Lo/currentStringRemainingChars;
    .locals 1

    .line 205
    invoke-static {}, Lo/signalSuccess;->onPostMessage()Lo/currentStringRemainingChars;

    move-result-object v0

    return-object v0
.end method

.method public static asInterface()Lo/currentStringRemainingChars;
    .locals 1

    .line 192
    invoke-static {}, Lo/signalSuccess;->onPostMessage()Lo/currentStringRemainingChars;

    move-result-object v0

    return-object v0
.end method

.method public static extraCallback()V
    .locals 0

    return-void
.end method

.method public static onMessageChannelReady()V
    .locals 0

    return-void
.end method

.method public static onNavigationEvent()V
    .locals 0

    return-void
.end method

.method public static onPostMessage()V
    .locals 0

    return-void
.end method

.method public static onTransact()V
    .locals 0

    return-void
.end method
