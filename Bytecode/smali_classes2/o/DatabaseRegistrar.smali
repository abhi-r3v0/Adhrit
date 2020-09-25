.class public Lo/DatabaseRegistrar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/DatabaseRegistrar$onNavigationEvent;,
        Lo/DatabaseRegistrar$ICustomTabsCallback;,
        Lo/DatabaseRegistrar$extraCallback;,
        Lo/DatabaseRegistrar$onMessageChannelReady;
    }
.end annotation


# static fields
.field private static final extraCallback:Lo/DatabaseRegistrar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    invoke-static {}, Lo/DatabaseRegistrar;->extraCallback()Lo/DatabaseRegistrar;

    move-result-object v0

    sput-object v0, Lo/DatabaseRegistrar;->extraCallback:Lo/DatabaseRegistrar;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback()Lo/DatabaseRegistrar;
    .locals 1

    .line 70
    sget-object v0, Lo/DatabaseRegistrar;->extraCallback:Lo/DatabaseRegistrar;

    return-object v0
.end method

.method private static extraCallback()Lo/DatabaseRegistrar;
    .locals 11

    .line 133
    const-class v0, [B

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "com.android.org.conscrypt.SSLParametersImpl"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v5, v3

    goto :goto_1

    :catch_0
    :try_start_1
    const-string v3, "org.apache.harmony.xnet.provider.jsse.SSLParametersImpl"

    .line 136
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    goto :goto_0

    .line 140
    :goto_1
    new-instance v6, Lo/goOffline;

    const-string v3, "setUseSessionTickets"

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v4, v2

    const/4 v7, 0x0

    invoke-direct {v6, v7, v3, v4}, Lo/goOffline;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 142
    new-instance v3, Lo/goOffline;

    const-string v4, "setHostname"

    new-array v8, v1, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v2

    invoke-direct {v3, v7, v4, v8}, Lo/goOffline;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    const-string v4, "android.net.TrafficStats"

    .line 151
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v8, "tagSocket"

    new-array v9, v1, [Ljava/lang/Class;

    .line 152
    const-class v10, Ljava/net/Socket;

    aput-object v10, v9, v2

    invoke-virtual {v4, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v8, "untagSocket"

    new-array v9, v1, [Ljava/lang/Class;

    .line 153
    const-class v10, Ljava/net/Socket;

    aput-object v10, v9, v2

    invoke-virtual {v4, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v4, "android.net.Network"

    .line 157
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 158
    new-instance v4, Lo/goOffline;

    const-string v8, "getAlpnSelectedProtocol"

    new-array v9, v2, [Ljava/lang/Class;

    invoke-direct {v4, v0, v8, v9}, Lo/goOffline;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    .line 159
    :try_start_3
    new-instance v8, Lo/goOffline;

    const-string v9, "setAlpnProtocols"

    new-array v10, v1, [Ljava/lang/Class;

    aput-object v0, v10, v2

    invoke-direct {v8, v7, v9, v10}, Lo/goOffline;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v9, v8

    move-object v8, v4

    goto :goto_2

    :catch_1
    move-object v4, v7

    :catch_2
    move-object v8, v4

    move-object v9, v7

    .line 165
    :goto_2
    :try_start_4
    new-instance v0, Lo/DatabaseRegistrar$onMessageChannelReady;

    move-object v4, v0

    move-object v7, v3

    invoke-direct/range {v4 .. v9}, Lo/DatabaseRegistrar$onMessageChannelReady;-><init>(Ljava/lang/Class;Lo/goOffline;Lo/goOffline;Lo/goOffline;Lo/goOffline;)V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    return-object v0

    :catch_3
    :try_start_5
    const-string v0, "sun.security.ssl.SSLContextImpl"

    .line 174
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    :try_start_6
    const-string v3, "org.eclipse.jetty.alpn.ALPN"

    .line 179
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 180
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "$Provider"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 181
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "$ClientProvider"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 182
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "$ServerProvider"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const-string v3, "put"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    .line 183
    const-class v7, Ljavax/net/ssl/SSLSocket;

    aput-object v7, v6, v2

    aput-object v5, v6, v1

    invoke-virtual {v4, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const-string v3, "get"

    new-array v6, v1, [Ljava/lang/Class;

    .line 184
    const-class v7, Ljavax/net/ssl/SSLSocket;

    aput-object v7, v6, v2

    invoke-virtual {v4, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const-string v3, "remove"

    new-array v1, v1, [Ljava/lang/Class;

    .line 185
    const-class v7, Ljavax/net/ssl/SSLSocket;

    aput-object v7, v1, v2

    invoke-virtual {v4, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 186
    new-instance v1, Lo/DatabaseRegistrar$ICustomTabsCallback;

    move-object v3, v1

    move-object v4, v0

    invoke-direct/range {v3 .. v9}, Lo/DatabaseRegistrar$ICustomTabsCallback;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_4

    return-object v1

    .line 191
    :catch_4
    :try_start_7
    new-instance v1, Lo/DatabaseRegistrar$extraCallback;

    invoke-direct {v1, v0}, Lo/DatabaseRegistrar$extraCallback;-><init>(Ljava/lang/Class;)V
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_5

    return-object v1

    .line 195
    :catch_5
    new-instance v0, Lo/DatabaseRegistrar;

    invoke-direct {v0}, Lo/DatabaseRegistrar;-><init>()V

    return-object v0
.end method

.method static onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 473
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_1
    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    .line 475
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x1

    .line 476
    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 477
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 478
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    .line 479
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_1
    :goto_2
    return-object v2

    .line 482
    :catch_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 473
    :catch_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, "delegate"

    .line 487
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 488
    const-class v1, Ljava/lang/Object;

    invoke-static {p0, v1, v0}, Lo/DatabaseRegistrar;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method public static onMessageChannelReady()Ljava/lang/String;
    .locals 1

    const-string v0, "OkHttp"

    return-object v0
.end method

.method public static onNavigationEvent(Ljava/lang/String;)V
    .locals 1

    .line 79
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public ICustomTabsCallback(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    return-void
.end method

.method public onMessageChannelReady(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onNavigationEvent(Ljavax/net/ssl/X509TrustManager;)Lo/orderByPriority;
    .locals 1

    .line 93
    new-instance v0, Lo/applyOperation$extraCallback;

    invoke-interface {p1}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/applyOperation$extraCallback;-><init>([Ljava/security/cert/X509Certificate;)V

    return-object v0
.end method

.method public onPostMessage(Ljavax/net/ssl/SSLSocket;)V
    .locals 0

    return-void
.end method

.method public onPostMessage(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
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

    return-void
.end method
