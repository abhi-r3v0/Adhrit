.class public Lo/access$2300;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/access$2300$onNavigationEvent;,
        Lo/access$2300$ICustomTabsCallback;,
        Lo/access$2300$extraCallback;,
        Lo/access$2300$onMessageChannelReady;,
        Lo/access$2300$onPostMessage;
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Lo/access$2300;

.field private static final extraCallback:[Ljava/lang/String;

.field public static final onPostMessage:Ljava/util/logging/Logger;


# instance fields
.field public final onNavigationEvent:Ljava/security/Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 73
    const-class v0, Lo/access$2300;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lo/access$2300;->onPostMessage:Ljava/util/logging/Logger;

    const-string v0, "com.google.android.gms.org.conscrypt.OpenSSLProvider"

    const-string v1, "org.conscrypt.OpenSSLProvider"

    const-string v2, "com.android.org.conscrypt.OpenSSLProvider"

    const-string v3, "org.apache.harmony.xnet.provider.jsse.OpenSSLProvider"

    const-string v4, "com.google.android.libraries.stitch.sslguard.SslGuardProvider"

    .line 85
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/access$2300;->extraCallback:[Ljava/lang/String;

    .line 95
    invoke-static {}, Lo/access$2300;->ICustomTabsCallback()Lo/access$2300;

    move-result-object v0

    sput-object v0, Lo/access$2300;->ICustomTabsCallback:Lo/access$2300;

    return-void
.end method

.method public constructor <init>(Ljava/security/Provider;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lo/access$2300;->onNavigationEvent:Ljava/security/Provider;

    return-void
.end method

.method private static ICustomTabsCallback()Lo/access$2300;
    .locals 13

    .line 1303
    const-class v0, [B

    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v1

    .line 1304
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x0

    if-ge v4, v2, :cond_2

    aget-object v6, v1, v4

    .line 1305
    sget-object v7, Lo/access$2300;->extraCallback:[Ljava/lang/String;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_1

    aget-object v10, v7, v9

    .line 1306
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1307
    sget-object v1, Lo/access$2300;->onPostMessage:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Found registered provider {0}"

    invoke-virtual {v1, v2, v4, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v11, v6

    goto :goto_2

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1312
    :cond_2
    sget-object v1, Lo/access$2300;->onPostMessage:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Unable to find Conscrypt"

    invoke-virtual {v1, v2, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    move-object v11, v5

    :goto_2
    const/4 v1, 0x1

    if-eqz v11, :cond_7

    .line 163
    new-instance v7, Lo/getHashFunction;

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const-string v4, "setUseSessionTickets"

    invoke-direct {v7, v5, v4, v2}, Lo/getHashFunction;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 165
    new-instance v8, Lo/getHashFunction;

    new-array v2, v1, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v4, "setHostname"

    invoke-direct {v8, v5, v4, v2}, Lo/getHashFunction;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 169
    new-instance v9, Lo/getHashFunction;

    new-array v2, v3, [Ljava/lang/Class;

    const-string v4, "getAlpnSelectedProtocol"

    invoke-direct {v9, v0, v4, v2}, Lo/getHashFunction;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 171
    new-instance v10, Lo/getHashFunction;

    new-array v2, v1, [Ljava/lang/Class;

    aput-object v0, v2, v3

    const-string v0, "setAlpnProtocols"

    invoke-direct {v10, v5, v0, v2}, Lo/getHashFunction;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    :try_start_0
    const-string v0, "android.net.TrafficStats"

    .line 176
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "tagSocket"

    new-array v4, v1, [Ljava/lang/Class;

    .line 177
    const-class v5, Ljava/net/Socket;

    aput-object v5, v4, v3

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "untagSocket"

    new-array v1, v1, [Ljava/lang/Class;

    .line 178
    const-class v4, Ljava/net/Socket;

    aput-object v4, v1, v3

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    nop

    .line 184
    :goto_3
    invoke-virtual {v11}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GmsCore_OpenSSL"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 185
    invoke-virtual {v11}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Conscrypt"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 186
    invoke-virtual {v11}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ssl_Guard"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_4

    .line 188
    :cond_3
    invoke-static {}, Lo/access$2300;->onNavigationEvent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 189
    sget-object v0, Lo/access$2300$onPostMessage;->onPostMessage:Lo/access$2300$onPostMessage;

    goto :goto_5

    .line 190
    :cond_4
    invoke-static {}, Lo/access$2300;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 191
    sget-object v0, Lo/access$2300$onPostMessage;->onNavigationEvent:Lo/access$2300$onPostMessage;

    goto :goto_5

    .line 193
    :cond_5
    sget-object v0, Lo/access$2300$onPostMessage;->ICustomTabsCallback:Lo/access$2300$onPostMessage;

    goto :goto_5

    .line 187
    :cond_6
    :goto_4
    sget-object v0, Lo/access$2300$onPostMessage;->onPostMessage:Lo/access$2300$onPostMessage;

    :goto_5
    move-object v12, v0

    .line 195
    new-instance v0, Lo/access$2300$onMessageChannelReady;

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Lo/access$2300$onMessageChannelReady;-><init>(Lo/getHashFunction;Lo/getHashFunction;Lo/getHashFunction;Lo/getHashFunction;Ljava/security/Provider;Lo/access$2300$onPostMessage;)V

    return-object v0

    .line 207
    :cond_7
    :try_start_1
    invoke-static {}, Ljavax/net/ssl/SSLContext;->getDefault()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getProvider()Ljava/security/Provider;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    const-string v2, "TLS"

    .line 216
    invoke-static {v2, v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .line 217
    invoke-virtual {v2, v5, v5, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 218
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v2

    .line 219
    new-instance v4, Lo/access$2300$4;

    invoke-direct {v4}, Lo/access$2300$4;-><init>()V

    .line 220
    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    new-array v5, v3, [Ljava/lang/Object;

    .line 227
    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    new-instance v2, Lo/access$2300$1;

    invoke-direct {v2}, Lo/access$2300$1;-><init>()V

    .line 230
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 237
    new-instance v4, Lo/access$2300$5;

    invoke-direct {v4}, Lo/access$2300$5;-><init>()V

    .line 238
    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    .line 245
    new-instance v5, Lo/access$2300$extraCallback;

    invoke-direct {v5, v0, v2, v4, v3}, Lo/access$2300$extraCallback;-><init>(Ljava/security/Provider;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;B)V
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v5

    :catch_1
    :try_start_3
    const-string v2, "org.eclipse.jetty.alpn.ALPN"

    .line 256
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 257
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "$Provider"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 258
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "$ClientProvider"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 259
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "$ServerProvider"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const-string v2, "put"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    .line 260
    const-class v7, Ljavax/net/ssl/SSLSocket;

    aput-object v7, v6, v3

    aput-object v5, v6, v1

    invoke-virtual {v4, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const-string v2, "get"

    new-array v5, v1, [Ljava/lang/Class;

    .line 261
    const-class v6, Ljavax/net/ssl/SSLSocket;

    aput-object v6, v5, v3

    invoke-virtual {v4, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const-string v2, "remove"

    new-array v1, v1, [Ljava/lang/Class;

    .line 262
    const-class v5, Ljavax/net/ssl/SSLSocket;

    aput-object v5, v1, v3

    invoke-virtual {v4, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 263
    new-instance v1, Lo/access$2300$ICustomTabsCallback;

    move-object v6, v1

    move-object v12, v0

    invoke-direct/range {v6 .. v12}, Lo/access$2300$ICustomTabsCallback;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;Ljava/security/Provider;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_2

    return-object v1

    .line 271
    :catch_2
    new-instance v1, Lo/access$2300;

    invoke-direct {v1, v0}, Lo/access$2300;-><init>(Ljava/security/Provider;)V

    return-object v1

    :catch_3
    move-exception v0

    .line 209
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static extraCallback()Lo/access$2300;
    .locals 1

    .line 98
    sget-object v0, Lo/access$2300;->ICustomTabsCallback:Lo/access$2300;

    return-object v0
.end method

.method private static onMessageChannelReady()Z
    .locals 4

    .line 288
    :try_start_0
    const-class v0, Lo/access$2300;

    .line 289
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "android.app.ActivityOptions"

    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 293
    sget-object v1, Lo/access$2300;->onPostMessage:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Can\'t find class"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method private static onNavigationEvent()Z
    .locals 4

    .line 276
    :try_start_0
    const-class v0, Lo/access$2300;

    .line 277
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "android.net.Network"

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 281
    sget-object v1, Lo/access$2300;->onPostMessage:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Can\'t find class"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public static onPostMessage(Ljava/util/List;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/getOnComplete;",
            ">;)[B"
        }
    .end annotation

    .line 592
    new-instance v0, Lo/updatePriority;

    invoke-direct {v0}, Lo/updatePriority;-><init>()V

    .line 593
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 594
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/getOnComplete;

    .line 595
    sget-object v5, Lo/getOnComplete;->onPostMessage:Lo/getOnComplete;

    if-eq v4, v5, :cond_0

    .line 596
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v5}, Lo/updatePriority;->extraCallback(I)Lo/updatePriority;

    .line 597
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1961
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v4, v2, v5}, Lo/updatePriority;->onPostMessage(Ljava/lang/String;II)Lo/updatePriority;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 599
    :cond_1
    invoke-virtual {v0}, Lo/updatePriority;->mayLaunchUrl()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public ICustomTabsCallback(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
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

    return-void
.end method

.method public extraCallback(Ljavax/net/ssl/SSLSocket;)V
    .locals 0

    return-void
.end method

.method public onNavigationEvent(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onPostMessage()Lo/access$2300$onPostMessage;
    .locals 1

    .line 128
    sget-object v0, Lo/access$2300$onPostMessage;->ICustomTabsCallback:Lo/access$2300$onPostMessage;

    return-object v0
.end method
