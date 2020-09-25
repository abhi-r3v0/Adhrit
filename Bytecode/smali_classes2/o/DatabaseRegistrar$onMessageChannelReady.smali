.class final Lo/DatabaseRegistrar$onMessageChannelReady;
.super Lo/DatabaseRegistrar;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DatabaseRegistrar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final extraCallback:Lo/goOffline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/goOffline<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Lo/goOffline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/goOffline<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/goOffline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/goOffline<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Lo/goOffline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/goOffline<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lo/goOffline;Lo/goOffline;Lo/goOffline;Lo/goOffline;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lo/goOffline<",
            "Ljava/net/Socket;",
            ">;",
            "Lo/goOffline<",
            "Ljava/net/Socket;",
            ">;",
            "Lo/goOffline<",
            "Ljava/net/Socket;",
            ">;",
            "Lo/goOffline<",
            "Ljava/net/Socket;",
            ">;)V"
        }
    .end annotation

    .line 217
    invoke-direct {p0}, Lo/DatabaseRegistrar;-><init>()V

    .line 218
    iput-object p1, p0, Lo/DatabaseRegistrar$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/Class;

    .line 219
    iput-object p2, p0, Lo/DatabaseRegistrar$onMessageChannelReady;->extraCallback:Lo/goOffline;

    .line 220
    iput-object p3, p0, Lo/DatabaseRegistrar$onMessageChannelReady;->onNavigationEvent:Lo/goOffline;

    .line 223
    iput-object p4, p0, Lo/DatabaseRegistrar$onMessageChannelReady;->onMessageChannelReady:Lo/goOffline;

    .line 224
    iput-object p5, p0, Lo/DatabaseRegistrar$onMessageChannelReady;->onPostMessage:Lo/goOffline;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
    .locals 4

    .line 244
    iget-object v0, p0, Lo/DatabaseRegistrar$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/Class;

    const-string v1, "sslParameters"

    invoke-static {p1, v0, v1}, Lo/DatabaseRegistrar$onMessageChannelReady;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "com.google.android.gms.org.conscrypt.SSLParametersImpl"

    const/4 v2, 0x0

    .line 251
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 249
    invoke-static {v0, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 252
    invoke-static {p1, v0, v1}, Lo/DatabaseRegistrar$onMessageChannelReady;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    return-object p1

    .line 258
    :cond_0
    :goto_0
    const-class p1, Ljavax/net/ssl/X509TrustManager;

    const-string v1, "x509TrustManager"

    invoke-static {v0, p1, v1}, Lo/DatabaseRegistrar$onMessageChannelReady;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/X509TrustManager;

    if-eqz p1, :cond_1

    return-object p1

    .line 262
    :cond_1
    const-class p1, Ljavax/net/ssl/X509TrustManager;

    const-string v1, "trustManager"

    invoke-static {v0, p1, v1}, Lo/DatabaseRegistrar$onMessageChannelReady;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/X509TrustManager;

    return-object p1
.end method

.method public final ICustomTabsCallback(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 237
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Exception in connect"

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 239
    throw p2

    :catch_1
    move-exception p1

    .line 232
    invoke-static {p1}, Lo/createForTests;->ICustomTabsCallback(Ljava/lang/AssertionError;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 233
    :cond_0
    throw p1
.end method

.method public final onMessageChannelReady(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 3

    .line 287
    iget-object v0, p0, Lo/DatabaseRegistrar$onMessageChannelReady;->onMessageChannelReady:Lo/goOffline;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2055
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/goOffline;->onNavigationEvent(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-object v1

    .line 290
    :cond_2
    iget-object v0, p0, Lo/DatabaseRegistrar$onMessageChannelReady;->onMessageChannelReady:Lo/goOffline;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Lo/goOffline;->extraCallback(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_3

    .line 291
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lo/createForTests;->extraCallback:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    :cond_3
    return-object v1
.end method

.method public final onNavigationEvent(Ljavax/net/ssl/X509TrustManager;)Lo/orderByPriority;
    .locals 1

    .line 266
    invoke-static {p1}, Lo/isZombied$onNavigationEvent$onMessageChannelReady;->onNavigationEvent(Ljavax/net/ssl/X509TrustManager;)Lo/orderByPriority;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 268
    :cond_0
    invoke-super {p0, p1}, Lo/DatabaseRegistrar;->onNavigationEvent(Ljavax/net/ssl/X509TrustManager;)Lo/orderByPriority;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lo/toException;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 275
    iget-object v2, p0, Lo/DatabaseRegistrar$onMessageChannelReady;->extraCallback:Lo/goOffline;

    new-array v3, v0, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v3, v1

    invoke-virtual {v2, p1, v3}, Lo/goOffline;->onMessageChannelReady(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    iget-object v2, p0, Lo/DatabaseRegistrar$onMessageChannelReady;->onNavigationEvent:Lo/goOffline;

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p2, v3, v1

    invoke-virtual {v2, p1, v3}, Lo/goOffline;->onMessageChannelReady(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    :cond_0
    iget-object p2, p0, Lo/DatabaseRegistrar$onMessageChannelReady;->onPostMessage:Lo/goOffline;

    if-eqz p2, :cond_4

    .line 1055
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2, v2}, Lo/goOffline;->onNavigationEvent(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_4

    new-array p2, v0, [Ljava/lang/Object;

    .line 1462
    new-instance v0, Lo/updatePriority;

    invoke-direct {v0}, Lo/updatePriority;-><init>()V

    .line 1463
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    .line 1464
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/toException;

    .line 1465
    sget-object v5, Lo/toException;->onNavigationEvent:Lo/toException;

    if-eq v4, v5, :cond_2

    .line 1466
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v5}, Lo/updatePriority;->extraCallback(I)Lo/updatePriority;

    .line 1467
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1961
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v4, v1, v5}, Lo/updatePriority;->onPostMessage(Ljava/lang/String;II)Lo/updatePriority;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1469
    :cond_3
    invoke-virtual {v0}, Lo/updatePriority;->mayLaunchUrl()[B

    move-result-object p3

    aput-object p3, p2, v1

    .line 282
    iget-object p3, p0, Lo/DatabaseRegistrar$onMessageChannelReady;->onPostMessage:Lo/goOffline;

    invoke-virtual {p3, p1, p2}, Lo/goOffline;->extraCallback(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method
