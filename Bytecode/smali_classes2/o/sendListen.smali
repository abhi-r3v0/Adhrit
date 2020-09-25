.class final Lo/sendListen;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/markSent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/sendListen$onPostMessage;
    }
.end annotation


# static fields
.field private static final onPostMessage:Ljava/util/logging/Logger;


# instance fields
.field private final extraCallback:Lo/isIdle;

.field final onMessageChannelReady:Lo/sendListen$onPostMessage;

.field final onNavigationEvent:Lo/markSent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lo/sendSensitive;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lo/sendListen;->onPostMessage:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lo/sendListen$onPostMessage;Lo/markSent;)V
    .locals 3

    .line 46
    new-instance v0, Lo/isIdle;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-class v2, Lo/sendSensitive;

    invoke-direct {v0, v1, v2}, Lo/isIdle;-><init>(Ljava/util/logging/Level;Ljava/lang/Class;)V

    invoke-direct {p0, p1, p2, v0}, Lo/sendListen;-><init>(Lo/sendListen$onPostMessage;Lo/markSent;Lo/isIdle;)V

    return-void
.end method

.method constructor <init>(Lo/sendListen$onPostMessage;Lo/markSent;Lo/isIdle;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 56
    check-cast p1, Lo/sendListen$onPostMessage;

    iput-object p1, p0, Lo/sendListen;->onMessageChannelReady:Lo/sendListen$onPostMessage;

    if-eqz p2, :cond_1

    .line 57
    check-cast p2, Lo/markSent;

    iput-object p2, p0, Lo/sendListen;->onNavigationEvent:Lo/markSent;

    if-eqz p3, :cond_0

    .line 58
    check-cast p3, Lo/isIdle;

    iput-object p3, p0, Lo/sendListen;->extraCallback:Lo/isIdle;

    return-void

    .line 3910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "frameLogger"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2910
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "frameWriter"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1910
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "transportExceptionHandler"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final ICustomTabsCallback(IJ)V
    .locals 2

    .line 202
    iget-object v0, p0, Lo/sendListen;->extraCallback:Lo/isIdle;

    sget-object v1, Lo/isIdle$onPostMessage;->onMessageChannelReady:Lo/isIdle$onPostMessage;

    invoke-virtual {v0, v1, p1, p2, p3}, Lo/isIdle;->extraCallback(Lo/isIdle$onPostMessage;IJ)V

    .line 205
    :try_start_0
    iget-object v0, p0, Lo/sendListen;->onNavigationEvent:Lo/markSent;

    invoke-interface {v0, p1, p2, p3}, Lo/markSent;->ICustomTabsCallback(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 207
    iget-object p2, p0, Lo/sendListen;->onMessageChannelReady:Lo/sendListen$onPostMessage;

    invoke-interface {p2, p1}, Lo/sendListen$onPostMessage;->ICustomTabsCallback(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final close()V
    .locals 4

    .line 214
    :try_start_0
    iget-object v0, p0, Lo/sendListen;->onNavigationEvent:Lo/markSent;

    invoke-interface {v0}, Lo/markSent;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 216
    sget-object v1, Lo/sendListen;->onPostMessage:Ljava/util/logging/Logger;

    .line 6226
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/io/IOException;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6227
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    goto :goto_0

    .line 6229
    :cond_0
    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    :goto_0
    const-string v3, "Failed closing connection"

    .line 216
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final extraCallback()I
    .locals 1

    .line 146
    iget-object v0, p0, Lo/sendListen;->onNavigationEvent:Lo/markSent;

    invoke-interface {v0}, Lo/markSent;->extraCallback()I

    move-result v0

    return v0
.end method

.method public final extraCallback(ILo/wasSent;)V
    .locals 2

    .line 136
    iget-object v0, p0, Lo/sendListen;->extraCallback:Lo/isIdle;

    sget-object v1, Lo/isIdle$onPostMessage;->onMessageChannelReady:Lo/isIdle$onPostMessage;

    invoke-virtual {v0, v1, p1, p2}, Lo/isIdle;->extraCallback(Lo/isIdle$onPostMessage;ILo/wasSent;)V

    .line 138
    :try_start_0
    iget-object v0, p0, Lo/sendListen;->onNavigationEvent:Lo/markSent;

    invoke-interface {v0, p1, p2}, Lo/markSent;->extraCallback(ILo/wasSent;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 140
    iget-object p2, p0, Lo/sendListen;->onMessageChannelReady:Lo/sendListen$onPostMessage;

    invoke-interface {p2, p1}, Lo/sendListen$onPostMessage;->ICustomTabsCallback(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final extraCallback(Lo/orderBy;)V
    .locals 2

    .line 162
    iget-object v0, p0, Lo/sendListen;->extraCallback:Lo/isIdle;

    sget-object v1, Lo/isIdle$onPostMessage;->onMessageChannelReady:Lo/isIdle$onPostMessage;

    invoke-virtual {v0, v1, p1}, Lo/isIdle;->ICustomTabsCallback(Lo/isIdle$onPostMessage;Lo/orderBy;)V

    .line 164
    :try_start_0
    iget-object v0, p0, Lo/sendListen;->onNavigationEvent:Lo/markSent;

    invoke-interface {v0, p1}, Lo/markSent;->extraCallback(Lo/orderBy;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 166
    iget-object v0, p0, Lo/sendListen;->onMessageChannelReady:Lo/sendListen$onPostMessage;

    invoke-interface {v0, p1}, Lo/sendListen$onPostMessage;->ICustomTabsCallback(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final extraCallback(ZZIILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List<",
            "Lo/getOptExclusiveStart;",
            ">;)V"
        }
    .end annotation

    .line 108
    :try_start_0
    iget-object v0, p0, Lo/sendListen;->onNavigationEvent:Lo/markSent;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lo/markSent;->extraCallback(ZZIILjava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 110
    iget-object p2, p0, Lo/sendListen;->onMessageChannelReady:Lo/sendListen$onPostMessage;

    invoke-interface {p2, p1}, Lo/sendListen$onPostMessage;->ICustomTabsCallback(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 2

    .line 94
    :try_start_0
    iget-object v0, p0, Lo/sendListen;->onNavigationEvent:Lo/markSent;

    invoke-interface {v0}, Lo/markSent;->onNavigationEvent()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 96
    iget-object v1, p0, Lo/sendListen;->onMessageChannelReady:Lo/sendListen$onPostMessage;

    invoke-interface {v1, v0}, Lo/sendListen$onPostMessage;->ICustomTabsCallback(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNavigationEvent(ILo/wasSent;[B)V
    .locals 3

    .line 189
    iget-object v0, p0, Lo/sendListen;->extraCallback:Lo/isIdle;

    sget-object v1, Lo/isIdle$onPostMessage;->onMessageChannelReady:Lo/isIdle$onPostMessage;

    .line 190
    invoke-static {p3}, Lo/matches;->ICustomTabsCallback([B)Lo/matches;

    move-result-object v2

    .line 189
    invoke-virtual {v0, v1, p1, p2, v2}, Lo/isIdle;->onMessageChannelReady(Lo/isIdle$onPostMessage;ILo/wasSent;Lo/matches;)V

    .line 192
    :try_start_0
    iget-object v0, p0, Lo/sendListen;->onNavigationEvent:Lo/markSent;

    invoke-interface {v0, p1, p2, p3}, Lo/markSent;->onNavigationEvent(ILo/wasSent;[B)V

    .line 194
    iget-object p1, p0, Lo/sendListen;->onNavigationEvent:Lo/markSent;

    invoke-interface {p1}, Lo/markSent;->onNavigationEvent()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 196
    iget-object p2, p0, Lo/sendListen;->onMessageChannelReady:Lo/sendListen$onPostMessage;

    invoke-interface {p2, p1}, Lo/sendListen$onPostMessage;->ICustomTabsCallback(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNavigationEvent(ZII)V
    .locals 9

    const-wide v0, 0xffffffffL

    const/16 v2, 0x20

    if-eqz p1, :cond_0

    .line 173
    iget-object v3, p0, Lo/sendListen;->extraCallback:Lo/isIdle;

    sget-object v4, Lo/isIdle$onPostMessage;->onMessageChannelReady:Lo/isIdle$onPostMessage;

    int-to-long v5, p2

    shl-long/2addr v5, v2

    int-to-long v7, p3

    and-long/2addr v0, v7

    or-long/2addr v0, v5

    .line 6070
    iget-object v2, v3, Lo/isIdle;->onPostMessage:Ljava/util/logging/Logger;

    iget-object v5, v3, Lo/isIdle;->extraCallback:Ljava/util/logging/Level;

    invoke-virtual {v2, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5147
    iget-object v2, v3, Lo/isIdle;->onPostMessage:Ljava/util/logging/Logger;

    iget-object v3, v3, Lo/isIdle;->extraCallback:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " PING: ack=true bytes="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_0
    iget-object v3, p0, Lo/sendListen;->extraCallback:Lo/isIdle;

    sget-object v4, Lo/isIdle$onPostMessage;->onMessageChannelReady:Lo/isIdle$onPostMessage;

    int-to-long v5, p2

    shl-long/2addr v5, v2

    int-to-long v7, p3

    and-long/2addr v0, v7

    or-long/2addr v0, v5

    invoke-virtual {v3, v4, v0, v1}, Lo/isIdle;->ICustomTabsCallback(Lo/isIdle$onPostMessage;J)V

    .line 180
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lo/sendListen;->onNavigationEvent:Lo/markSent;

    invoke-interface {v0, p1, p2, p3}, Lo/markSent;->onNavigationEvent(ZII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 182
    iget-object p2, p0, Lo/sendListen;->onMessageChannelReady:Lo/sendListen$onPostMessage;

    invoke-interface {p2, p1}, Lo/sendListen$onPostMessage;->ICustomTabsCallback(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNavigationEvent(ZILo/updatePriority;I)V
    .locals 6

    .line 151
    iget-object v0, p0, Lo/sendListen;->extraCallback:Lo/isIdle;

    sget-object v1, Lo/isIdle$onPostMessage;->onMessageChannelReady:Lo/isIdle$onPostMessage;

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lo/isIdle;->ICustomTabsCallback(Lo/isIdle$onPostMessage;ILo/updatePriority;IZ)V

    .line 154
    :try_start_0
    iget-object v0, p0, Lo/sendListen;->onNavigationEvent:Lo/markSent;

    invoke-interface {v0, p1, p2, p3, p4}, Lo/markSent;->onNavigationEvent(ZILo/updatePriority;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 156
    iget-object p2, p0, Lo/sendListen;->onMessageChannelReady:Lo/sendListen$onPostMessage;

    invoke-interface {p2, p1}, Lo/sendListen$onPostMessage;->ICustomTabsCallback(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onPostMessage()V
    .locals 2

    .line 64
    :try_start_0
    iget-object v0, p0, Lo/sendListen;->onNavigationEvent:Lo/markSent;

    invoke-interface {v0}, Lo/markSent;->onPostMessage()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 66
    iget-object v1, p0, Lo/sendListen;->onMessageChannelReady:Lo/sendListen$onPostMessage;

    invoke-interface {v1, v0}, Lo/sendListen$onPostMessage;->ICustomTabsCallback(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onPostMessage(Lo/orderBy;)V
    .locals 4

    .line 72
    iget-object v0, p0, Lo/sendListen;->extraCallback:Lo/isIdle;

    sget-object v1, Lo/isIdle$onPostMessage;->onMessageChannelReady:Lo/isIdle$onPostMessage;

    .line 5070
    iget-object v2, v0, Lo/isIdle;->onPostMessage:Ljava/util/logging/Logger;

    iget-object v3, v0, Lo/isIdle;->extraCallback:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4129
    iget-object v2, v0, Lo/isIdle;->onPostMessage:Ljava/util/logging/Logger;

    iget-object v0, v0, Lo/isIdle;->extraCallback:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " SETTINGS: ack=true"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 74
    :cond_0
    :try_start_0
    iget-object v0, p0, Lo/sendListen;->onNavigationEvent:Lo/markSent;

    invoke-interface {v0, p1}, Lo/markSent;->onPostMessage(Lo/orderBy;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 76
    iget-object v0, p0, Lo/sendListen;->onMessageChannelReady:Lo/sendListen$onPostMessage;

    invoke-interface {v0, p1}, Lo/sendListen$onPostMessage;->ICustomTabsCallback(Ljava/lang/Throwable;)V

    return-void
.end method
