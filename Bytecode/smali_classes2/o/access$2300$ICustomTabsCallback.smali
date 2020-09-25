.class final Lo/access$2300$ICustomTabsCallback;
.super Lo/access$2300;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/access$2300;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/reflect/Method;

.field private final ICustomTabsCallback$Stub:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final extraCallback:Ljava/lang/reflect/Method;

.field private final onMessageChannelReady:Ljava/lang/reflect/Method;

.field private final onTransact:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;Ljava/security/Provider;)V
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
            "*>;",
            "Ljava/security/Provider;",
            ")V"
        }
    .end annotation

    .line 478
    invoke-direct {p0, p6}, Lo/access$2300;-><init>(Ljava/security/Provider;)V

    .line 479
    iput-object p1, p0, Lo/access$2300$ICustomTabsCallback;->extraCallback:Ljava/lang/reflect/Method;

    .line 480
    iput-object p2, p0, Lo/access$2300$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/reflect/Method;

    .line 481
    iput-object p3, p0, Lo/access$2300$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/reflect/Method;

    .line 482
    iput-object p4, p0, Lo/access$2300$ICustomTabsCallback;->onTransact:Ljava/lang/Class;

    .line 483
    iput-object p5, p0, Lo/access$2300$ICustomTabsCallback;->ICustomTabsCallback$Stub:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
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

    .line 493
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 494
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 495
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/getOnComplete;

    .line 496
    sget-object v4, Lo/getOnComplete;->onPostMessage:Lo/getOnComplete;

    if-eq v3, v4, :cond_0

    .line 497
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 500
    :cond_1
    :try_start_0
    const-class p3, Lo/access$2300;

    invoke-virtual {p3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Class;

    iget-object v3, p0, Lo/access$2300$ICustomTabsCallback;->onTransact:Ljava/lang/Class;

    aput-object v3, v2, v1

    iget-object v3, p0, Lo/access$2300$ICustomTabsCallback;->ICustomTabsCallback$Stub:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    new-instance v3, Lo/access$2300$onNavigationEvent;

    invoke-direct {v3, p2}, Lo/access$2300$onNavigationEvent;-><init>(Ljava/util/List;)V

    invoke-static {p3, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p2

    .line 502
    iget-object p3, p0, Lo/access$2300$ICustomTabsCallback;->extraCallback:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    aput-object p2, v0, v4

    invoke-virtual {p3, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 506
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    :catch_1
    move-exception p1

    .line 504
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public final extraCallback(Ljavax/net/ssl/SSLSocket;)V
    .locals 4

    .line 512
    :try_start_0
    iget-object v0, p0, Lo/access$2300$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    .line 514
    :catch_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public final onNavigationEvent(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 3

    .line 521
    :try_start_0
    iget-object v0, p0, Lo/access$2300$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x0

    .line 522
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    check-cast v0, Lo/access$2300$onNavigationEvent;

    .line 1541
    iget-boolean v1, v0, Lo/access$2300$onNavigationEvent;->onMessageChannelReady:Z

    if-nez v1, :cond_0

    .line 2541
    iget-object v1, v0, Lo/access$2300$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 524
    sget-object v0, Lo/access$2300$ICustomTabsCallback;->onPostMessage:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v2, "ALPN callback dropped: SPDY and HTTP/2 are disabled. Is alpn-boot on the boot class path?"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-object p1

    .line 3541
    :cond_0
    iget-boolean v1, v0, Lo/access$2300$onNavigationEvent;->onMessageChannelReady:Z

    if-eqz v1, :cond_1

    return-object p1

    .line 4541
    :cond_1
    iget-object p1, v0, Lo/access$2300$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 532
    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 530
    :catch_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public final onPostMessage()Lo/access$2300$onPostMessage;
    .locals 1

    .line 488
    sget-object v0, Lo/access$2300$onPostMessage;->onPostMessage:Lo/access$2300$onPostMessage;

    return-object v0
.end method
