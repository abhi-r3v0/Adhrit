.class final Lo/doIdleCheck$onNavigationEvent;
.super Lo/doIdleCheck;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/doIdleCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onNavigationEvent"
.end annotation


# static fields
.field private static final ICustomTabsCallback:Lo/getHashFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getHashFunction<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private static final asBinder:Lo/getHashFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getHashFunction<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private static final extraCallback:Lo/getHashFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getHashFunction<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private static final onMessageChannelReady:Lo/getHashFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getHashFunction<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private static final onPostMessage:Lo/getHashFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getHashFunction<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private static final onRelationshipValidationResult:Lo/getHashFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getHashFunction<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 118
    const-class v0, [B

    new-instance v1, Lo/getHashFunction;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x0

    const-string v6, "setUseSessionTickets"

    invoke-direct {v1, v4, v6, v3}, Lo/getHashFunction;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lo/doIdleCheck$onNavigationEvent;->ICustomTabsCallback:Lo/getHashFunction;

    .line 121
    new-instance v1, Lo/getHashFunction;

    new-array v3, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v3, v5

    const-string v6, "setHostname"

    invoke-direct {v1, v4, v6, v3}, Lo/getHashFunction;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lo/doIdleCheck$onNavigationEvent;->onMessageChannelReady:Lo/getHashFunction;

    .line 124
    new-instance v1, Lo/getHashFunction;

    new-array v3, v5, [Ljava/lang/Class;

    const-string v6, "getAlpnSelectedProtocol"

    invoke-direct {v1, v0, v6, v3}, Lo/getHashFunction;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lo/doIdleCheck$onNavigationEvent;->extraCallback:Lo/getHashFunction;

    .line 127
    new-instance v1, Lo/getHashFunction;

    new-array v3, v2, [Ljava/lang/Class;

    aput-object v0, v3, v5

    const-string v6, "setAlpnProtocols"

    invoke-direct {v1, v4, v6, v3}, Lo/getHashFunction;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lo/doIdleCheck$onNavigationEvent;->onPostMessage:Lo/getHashFunction;

    .line 130
    new-instance v1, Lo/getHashFunction;

    new-array v3, v5, [Ljava/lang/Class;

    const-string v6, "getNpnSelectedProtocol"

    invoke-direct {v1, v0, v6, v3}, Lo/getHashFunction;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lo/doIdleCheck$onNavigationEvent;->asBinder:Lo/getHashFunction;

    .line 133
    new-instance v1, Lo/getHashFunction;

    new-array v2, v2, [Ljava/lang/Class;

    aput-object v0, v2, v5

    const-string v0, "setNpnProtocols"

    invoke-direct {v1, v4, v0, v2}, Lo/getHashFunction;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lo/doIdleCheck$onNavigationEvent;->onRelationshipValidationResult:Lo/getHashFunction;

    return-void
.end method

.method constructor <init>(Lo/access$2300;)V
    .locals 0

    .line 137
    invoke-direct {p0, p1}, Lo/doIdleCheck;-><init>(Lo/access$2300;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lo/getOnComplete;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    invoke-virtual {p0, p1}, Lo/doIdleCheck$onNavigationEvent;->extraCallback(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 147
    invoke-super {p0, p1, p2, p3}, Lo/doIdleCheck;->ICustomTabsCallback(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final extraCallback(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 5

    .line 180
    iget-object v0, p0, Lo/doIdleCheck;->onNavigationEvent:Lo/access$2300;

    invoke-virtual {v0}, Lo/access$2300;->onPostMessage()Lo/access$2300$onPostMessage;

    move-result-object v0

    sget-object v1, Lo/access$2300$onPostMessage;->onPostMessage:Lo/access$2300$onPostMessage;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 182
    :try_start_0
    sget-object v0, Lo/doIdleCheck$onNavigationEvent;->extraCallback:Lo/getHashFunction;

    new-array v1, v2, [Ljava/lang/Object;

    .line 183
    invoke-virtual {v0, p1, v1}, Lo/getHashFunction;->onPostMessage(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_0

    .line 185
    new-instance v1, Ljava/lang/String;

    sget-object v3, Lo/getRequest;->onPostMessage:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 188
    invoke-static {}, Lo/doIdleCheck;->extraCallback()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Failed calling getAlpnSelectedProtocol()"

    invoke-virtual {v1, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    :cond_0
    iget-object v0, p0, Lo/doIdleCheck;->onNavigationEvent:Lo/access$2300;

    invoke-virtual {v0}, Lo/access$2300;->onPostMessage()Lo/access$2300$onPostMessage;

    move-result-object v0

    sget-object v1, Lo/access$2300$onPostMessage;->ICustomTabsCallback:Lo/access$2300$onPostMessage;

    if-eq v0, v1, :cond_1

    .line 196
    :try_start_1
    sget-object v0, Lo/doIdleCheck$onNavigationEvent;->asBinder:Lo/getHashFunction;

    new-array v1, v2, [Ljava/lang/Object;

    .line 197
    invoke-virtual {v0, p1, v1}, Lo/getHashFunction;->onPostMessage(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_1

    .line 199
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lo/getRequest;->onPostMessage:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception p1

    .line 202
    invoke-static {}, Lo/doIdleCheck;->extraCallback()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Failed calling getNpnSelectedProtocol()"

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final onNavigationEvent(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lo/getOnComplete;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 161
    sget-object v2, Lo/doIdleCheck$onNavigationEvent;->ICustomTabsCallback:Lo/getHashFunction;

    new-array v3, v1, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v3, v0

    invoke-virtual {v2, p1, v3}, Lo/getHashFunction;->extraCallback(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v2, Lo/doIdleCheck$onNavigationEvent;->onMessageChannelReady:Lo/getHashFunction;

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p2, v3, v0

    invoke-virtual {v2, p1, v3}, Lo/getHashFunction;->extraCallback(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-array p2, v1, [Ljava/lang/Object;

    .line 165
    invoke-static {p3}, Lo/access$2300;->onPostMessage(Ljava/util/List;)[B

    move-result-object p3

    aput-object p3, p2, v0

    .line 166
    iget-object p3, p0, Lo/doIdleCheck;->onNavigationEvent:Lo/access$2300;

    invoke-virtual {p3}, Lo/access$2300;->onPostMessage()Lo/access$2300$onPostMessage;

    move-result-object p3

    sget-object v0, Lo/access$2300$onPostMessage;->onPostMessage:Lo/access$2300$onPostMessage;

    if-ne p3, v0, :cond_1

    .line 167
    sget-object p3, Lo/doIdleCheck$onNavigationEvent;->onPostMessage:Lo/getHashFunction;

    invoke-virtual {p3, p1, p2}, Lo/getHashFunction;->onPostMessage(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_1
    iget-object p3, p0, Lo/doIdleCheck;->onNavigationEvent:Lo/access$2300;

    invoke-virtual {p3}, Lo/access$2300;->onPostMessage()Lo/access$2300$onPostMessage;

    move-result-object p3

    sget-object v0, Lo/access$2300$onPostMessage;->ICustomTabsCallback:Lo/access$2300$onPostMessage;

    if-eq p3, v0, :cond_2

    .line 171
    sget-object p3, Lo/doIdleCheck$onNavigationEvent;->onRelationshipValidationResult:Lo/getHashFunction;

    invoke-virtual {p3, p1, p2}, Lo/getHashFunction;->onPostMessage(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 173
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "We can not do TLS handshake on this Android version, please install the Google Play Services Dynamic Security Provider to use TLS"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
