.class final Lo/cacheHasChild;
.super Lo/getChildAfterChild;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/cacheHasChild$onNavigationEvent;,
        Lo/cacheHasChild$onMessageChannelReady;,
        Lo/cacheHasChild$extraCallback;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/maybeAddValueEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/maybeAddValueEvent<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Lo/maybeAddValueEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/maybeAddValueEvent<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Lo/cacheHasChild$onMessageChannelReady;

.field private final onNavigationEvent:Lo/maybeAddValueEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/maybeAddValueEvent<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Lo/maybeAddValueEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/maybeAddValueEvent<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lo/maybeAddValueEvent;Lo/maybeAddValueEvent;Lo/maybeAddValueEvent;Lo/maybeAddValueEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/maybeAddValueEvent<",
            "Ljava/net/Socket;",
            ">;",
            "Lo/maybeAddValueEvent<",
            "Ljava/net/Socket;",
            ">;",
            "Lo/maybeAddValueEvent<",
            "Ljava/net/Socket;",
            ">;",
            "Lo/maybeAddValueEvent<",
            "Ljava/net/Socket;",
            ">;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Lo/getChildAfterChild;-><init>()V

    .line 58
    invoke-static {}, Lo/cacheHasChild$onMessageChannelReady;->onPostMessage()Lo/cacheHasChild$onMessageChannelReady;

    move-result-object v0

    iput-object v0, p0, Lo/cacheHasChild;->onMessageChannelReady:Lo/cacheHasChild$onMessageChannelReady;

    .line 64
    iput-object p1, p0, Lo/cacheHasChild;->onNavigationEvent:Lo/maybeAddValueEvent;

    .line 65
    iput-object p2, p0, Lo/cacheHasChild;->onPostMessage:Lo/maybeAddValueEvent;

    .line 66
    iput-object p3, p0, Lo/cacheHasChild;->ICustomTabsCallback:Lo/maybeAddValueEvent;

    .line 67
    iput-object p4, p0, Lo/cacheHasChild;->extraCallback:Lo/maybeAddValueEvent;

    return-void
.end method

.method private static ICustomTabsCallback()Z
    .locals 2

    const-string v0, "GMSCore_OpenSSL"

    .line 215
    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string v0, "android.net.Network"

    .line 219
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private extraCallback(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    :try_start_0
    const-string v0, "isCleartextTrafficPermitted"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 202
    invoke-virtual {p2, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    .line 203
    invoke-virtual {p2, p3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 205
    :catch_0
    invoke-super {p0, p1}, Lo/getChildAfterChild;->onPostMessage(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public static onNavigationEvent()Lo/getChildAfterChild;
    .locals 9

    .line 244
    const-class v0, [B

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.android.org.conscrypt.SSLParametersImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    const-string v2, "org.apache.harmony.xnet.provider.jsse.SSLParametersImpl"

    .line 247
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 251
    :goto_0
    new-instance v2, Lo/maybeAddValueEvent;

    const-string v3, "setUseSessionTickets"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-direct {v2, v1, v3, v5}, Lo/maybeAddValueEvent;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 253
    new-instance v3, Lo/maybeAddValueEvent;

    const-string v5, "setHostname"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-direct {v3, v1, v5, v6}, Lo/maybeAddValueEvent;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 258
    invoke-static {}, Lo/cacheHasChild;->ICustomTabsCallback()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 259
    new-instance v5, Lo/maybeAddValueEvent;

    const-string v6, "getAlpnSelectedProtocol"

    new-array v8, v7, [Ljava/lang/Class;

    invoke-direct {v5, v0, v6, v8}, Lo/maybeAddValueEvent;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 261
    new-instance v6, Lo/maybeAddValueEvent;

    const-string v8, "setAlpnProtocols"

    new-array v4, v4, [Ljava/lang/Class;

    aput-object v0, v4, v7

    invoke-direct {v6, v1, v8, v4}, Lo/maybeAddValueEvent;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    goto :goto_1

    :cond_0
    move-object v5, v1

    move-object v6, v5

    .line 265
    :goto_1
    new-instance v0, Lo/cacheHasChild;

    invoke-direct {v0, v2, v3, v5, v6}, Lo/cacheHasChild;-><init>(Lo/maybeAddValueEvent;Lo/maybeAddValueEvent;Lo/maybeAddValueEvent;Lo/maybeAddValueEvent;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    return-object v1
.end method

.method private onPostMessage(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    :try_start_0
    const-string v0, "isCleartextTrafficPermitted"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 190
    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 191
    invoke-virtual {p2, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    .line 192
    invoke-virtual {v0, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 194
    :catch_0
    invoke-direct {p0, p1, p2, p3}, Lo/cacheHasChild;->extraCallback(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 3

    .line 134
    iget-object v0, p0, Lo/cacheHasChild;->ICustomTabsCallback:Lo/maybeAddValueEvent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2055
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/maybeAddValueEvent;->ICustomTabsCallback(Ljava/lang/Class;)Ljava/lang/reflect/Method;

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

    .line 137
    :cond_2
    iget-object v0, p0, Lo/cacheHasChild;->ICustomTabsCallback:Lo/maybeAddValueEvent;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Lo/maybeAddValueEvent;->extraCallback(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_3

    .line 138
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lo/generateEventsForType;->onMessageChannelReady:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    :cond_3
    return-object v1
.end method

.method public final ICustomTabsCallback(Ljavax/net/ssl/X509TrustManager;)Lo/orderByPriority;
    .locals 6

    .line 280
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "findTrustAnchorByIssuerAndSignature"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/security/cert/X509Certificate;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 282
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 283
    new-instance v1, Lo/cacheHasChild$onNavigationEvent;

    invoke-direct {v1, p1, v0}, Lo/cacheHasChild$onNavigationEvent;-><init>(Ljavax/net/ssl/X509TrustManager;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 285
    :catch_0
    invoke-super {p0, p1}, Lo/getChildAfterChild;->ICustomTabsCallback(Ljavax/net/ssl/X509TrustManager;)Lo/orderByPriority;

    move-result-object p1

    return-object p1
.end method

.method public final extraCallback()Ljavax/net/ssl/SSLContext;
    .locals 3

    const/4 v0, 0x1

    .line 441
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x16

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz v0, :cond_1

    :try_start_1
    const-string v0, "TLSv1.2"

    .line 450
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    :cond_1
    :try_start_2
    const-string v0, "TLS"

    .line 457
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    :catch_2
    move-exception v0

    .line 459
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No TLS provider"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final extraCallback(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 162
    iget-object v0, p0, Lo/cacheHasChild;->onMessageChannelReady:Lo/cacheHasChild$onMessageChannelReady;

    invoke-virtual {v0, p2}, Lo/cacheHasChild$onMessageChannelReady;->onNavigationEvent(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x5

    const/4 v0, 0x0

    .line 165
    invoke-virtual {p0, p2, p1, v0}, Lo/getChildAfterChild;->onMessageChannelReady(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final extraCallback(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lo/valueChange;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 122
    iget-object v2, p0, Lo/cacheHasChild;->onNavigationEvent:Lo/maybeAddValueEvent;

    new-array v3, v0, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v3, v1

    invoke-virtual {v2, p1, v3}, Lo/maybeAddValueEvent;->onPostMessage(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v2, p0, Lo/cacheHasChild;->onPostMessage:Lo/maybeAddValueEvent;

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p2, v3, v1

    invoke-virtual {v2, p1, v3}, Lo/maybeAddValueEvent;->onPostMessage(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_0
    iget-object p2, p0, Lo/cacheHasChild;->extraCallback:Lo/maybeAddValueEvent;

    if-eqz p2, :cond_4

    .line 1055
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2, v2}, Lo/maybeAddValueEvent;->ICustomTabsCallback(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_4

    new-array p2, v0, [Ljava/lang/Object;

    .line 1236
    new-instance v0, Lo/updatePriority;

    invoke-direct {v0}, Lo/updatePriority;-><init>()V

    .line 1237
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    .line 1238
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/valueChange;

    .line 1239
    sget-object v5, Lo/valueChange;->ICustomTabsCallback:Lo/valueChange;

    if-eq v4, v5, :cond_2

    .line 1240
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v5}, Lo/updatePriority;->extraCallback(I)Lo/updatePriority;

    .line 1241
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1961
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v4, v1, v5}, Lo/updatePriority;->onPostMessage(Ljava/lang/String;II)Lo/updatePriority;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1243
    :cond_3
    invoke-virtual {v0}, Lo/updatePriority;->mayLaunchUrl()[B

    move-result-object p3

    aput-object p3, p2, v1

    .line 129
    iget-object p3, p0, Lo/cacheHasChild;->extraCallback:Lo/maybeAddValueEvent;

    invoke-virtual {p3, p1, p2}, Lo/maybeAddValueEvent;->extraCallback(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 158
    iget-object v0, p0, Lo/cacheHasChild;->onMessageChannelReady:Lo/cacheHasChild$onMessageChannelReady;

    invoke-virtual {v0, p1}, Lo/cacheHasChild$onMessageChannelReady;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final onMessageChannelReady(Ljavax/net/ssl/X509TrustManager;)Lo/trackChildChange;
    .locals 7

    :try_start_0
    const-string v0, "android.net.http.X509TrustManagerExtensions"

    .line 228
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 229
    const-class v3, Ljavax/net/ssl/X509TrustManager;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v4

    .line 230
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "checkServerTrusted"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    .line 231
    const-class v6, [Ljava/security/cert/X509Certificate;

    aput-object v6, v5, v4

    const-class v4, Ljava/lang/String;

    aput-object v4, v5, v1

    const/4 v1, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v5, v1

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 233
    new-instance v1, Lo/cacheHasChild$extraCallback;

    invoke-direct {v1, v2, v0}, Lo/cacheHasChild$extraCallback;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 235
    :catch_0
    invoke-super {p0, p1}, Lo/getChildAfterChild;->onMessageChannelReady(Ljavax/net/ssl/X509TrustManager;)Lo/trackChildChange;

    move-result-object p1

    return-object p1
.end method

.method public final onMessageChannelReady(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 5

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    const/16 p1, 0xa

    if-eqz p3, :cond_1

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    const/4 p3, 0x0

    .line 146
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_1
    if-ge p3, v1, :cond_4

    .line 147
    invoke-virtual {p2, p1, p3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/lit16 v3, p3, 0xfa0

    .line 150
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 151
    invoke-virtual {p2, p3, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    const-string v4, "OkHttp"

    invoke-static {v0, v4, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    if-lt v3, v2, :cond_3

    add-int/lit8 p3, v3, 0x1

    goto :goto_1

    :cond_3
    move p3, v3

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final onNavigationEvent(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Exception in connect"

    .line 73
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 86
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-ne p2, p3, :cond_0

    .line 87
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 89
    throw p2

    .line 91
    :cond_0
    throw p1

    :catch_1
    move-exception p1

    .line 80
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 82
    throw p2

    :catch_2
    move-exception p1

    .line 75
    invoke-static {p1}, Lo/generateEventsForType;->onNavigationEvent(Ljava/lang/AssertionError;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 76
    :cond_1
    throw p1
.end method

.method public final onPostMessage(Ljava/lang/String;)Z
    .locals 4

    .line 172
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 173
    invoke-super {p0, p1}, Lo/getChildAfterChild;->onPostMessage(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    :try_start_0
    const-string v0, "android.security.NetworkSecurityPolicy"

    .line 176
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 177
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 178
    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 179
    invoke-direct {p0, p1, v0, v1}, Lo/cacheHasChild;->onPostMessage(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    :goto_0
    const-string v0, "unable to determine cleartext support"

    .line 183
    invoke-static {v0, p1}, Lo/generateEventsForType;->extraCallback(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1

    .line 181
    :catch_3
    invoke-super {p0, p1}, Lo/getChildAfterChild;->onPostMessage(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
