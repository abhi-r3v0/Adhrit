.class final Lo/getCompleteServerSnap;
.super Lo/getChildAfterChild;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getCompleteServerSnap$ICustomTabsCallback;
    }
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

.field private final extraCallback:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Ljava/lang/reflect/Method;

.field private final onNavigationEvent:Ljava/lang/reflect/Method;

.field private final onPostMessage:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lo/getChildAfterChild;-><init>()V

    .line 42
    iput-object p1, p0, Lo/getCompleteServerSnap;->onNavigationEvent:Ljava/lang/reflect/Method;

    .line 43
    iput-object p2, p0, Lo/getCompleteServerSnap;->onMessageChannelReady:Ljava/lang/reflect/Method;

    .line 44
    iput-object p3, p0, Lo/getCompleteServerSnap;->onPostMessage:Ljava/lang/reflect/Method;

    .line 45
    iput-object p4, p0, Lo/getCompleteServerSnap;->extraCallback:Ljava/lang/Class;

    .line 46
    iput-object p5, p0, Lo/getCompleteServerSnap;->ICustomTabsCallback:Ljava/lang/Class;

    return-void
.end method

.method public static onPostMessage()Lo/getChildAfterChild;
    .locals 10

    :try_start_0
    const-string v0, "org.eclipse.jetty.alpn.ALPN"

    .line 89
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "$Provider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "$ClientProvider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "$ServerProvider"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const-string v0, "put"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    .line 93
    const-class v4, Ljavax/net/ssl/SSLSocket;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v2, "get"

    new-array v3, v4, [Ljava/lang/Class;

    .line 94
    const-class v6, Ljavax/net/ssl/SSLSocket;

    aput-object v6, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const-string v2, "remove"

    new-array v3, v4, [Ljava/lang/Class;

    .line 95
    const-class v4, Ljavax/net/ssl/SSLSocket;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 96
    new-instance v1, Lo/getCompleteServerSnap;

    move-object v4, v1

    move-object v5, v0

    invoke-direct/range {v4 .. v9}, Lo/getCompleteServerSnap;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 3

    .line 72
    :try_start_0
    iget-object v0, p0, Lo/getCompleteServerSnap;->onMessageChannelReady:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x0

    .line 73
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    check-cast v0, Lo/getCompleteServerSnap$ICustomTabsCallback;

    .line 74
    iget-boolean v1, v0, Lo/getCompleteServerSnap$ICustomTabsCallback;->ICustomTabsCallback:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lo/getCompleteServerSnap$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 75
    invoke-static {}, Lo/getChildAfterChild;->onRelationshipValidationResult()Lo/getChildAfterChild;

    move-result-object v0

    const/4 v1, 0x4

    const-string v2, "ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?"

    invoke-virtual {v0, v1, v2, p1}, Lo/getChildAfterChild;->onMessageChannelReady(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object p1

    .line 79
    :cond_0
    iget-boolean v1, v0, Lo/getCompleteServerSnap$ICustomTabsCallback;->ICustomTabsCallback:Z

    if-eqz v1, :cond_1

    return-object p1

    :cond_1
    iget-object p1, v0, Lo/getCompleteServerSnap$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    const-string v0, "unable to get selected protocol"

    .line 81
    invoke-static {v0, p1}, Lo/generateEventsForType;->extraCallback(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1
.end method

.method public final extraCallback(Ljavax/net/ssl/SSLSocket;)V
    .locals 4

    .line 64
    :try_start_0
    iget-object v0, p0, Lo/getCompleteServerSnap;->onPostMessage:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    const-string v0, "unable to remove alpn"

    .line 66
    invoke-static {v0, p1}, Lo/generateEventsForType;->extraCallback(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1
.end method

.method public final extraCallback(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
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

    .line 51
    invoke-static {p3}, Lo/getCompleteServerSnap;->onNavigationEvent(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 54
    :try_start_0
    const-class p3, Lo/getChildAfterChild;

    invoke-virtual {p3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    iget-object v2, p0, Lo/getCompleteServerSnap;->extraCallback:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lo/getCompleteServerSnap;->ICustomTabsCallback:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Lo/getCompleteServerSnap$ICustomTabsCallback;

    invoke-direct {v2, p2}, Lo/getCompleteServerSnap$ICustomTabsCallback;-><init>(Ljava/util/List;)V

    invoke-static {p3, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p2

    .line 56
    iget-object p3, p0, Lo/getCompleteServerSnap;->onNavigationEvent:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    aput-object p2, v0, v4

    invoke-virtual {p3, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    const-string p2, "unable to set alpn"

    .line 58
    invoke-static {p2, p1}, Lo/generateEventsForType;->extraCallback(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1
.end method
