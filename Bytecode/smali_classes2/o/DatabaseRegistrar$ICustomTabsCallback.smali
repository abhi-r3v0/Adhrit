.class final Lo/DatabaseRegistrar$ICustomTabsCallback;
.super Lo/DatabaseRegistrar$extraCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DatabaseRegistrar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICustomTabsCallback"
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

.field private final extraCallback:Ljava/lang/reflect/Method;

.field private final onMessageChannelReady:Ljava/lang/reflect/Method;

.field private final onNavigationEvent:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final onPostMessage:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 359
    invoke-direct {p0, p1}, Lo/DatabaseRegistrar$extraCallback;-><init>(Ljava/lang/Class;)V

    .line 360
    iput-object p2, p0, Lo/DatabaseRegistrar$ICustomTabsCallback;->extraCallback:Ljava/lang/reflect/Method;

    .line 361
    iput-object p3, p0, Lo/DatabaseRegistrar$ICustomTabsCallback;->onPostMessage:Ljava/lang/reflect/Method;

    .line 362
    iput-object p4, p0, Lo/DatabaseRegistrar$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/reflect/Method;

    .line 363
    iput-object p5, p0, Lo/DatabaseRegistrar$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Class;

    .line 364
    iput-object p6, p0, Lo/DatabaseRegistrar$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 3

    .line 394
    :try_start_0
    iget-object v0, p0, Lo/DatabaseRegistrar$ICustomTabsCallback;->onPostMessage:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x0

    .line 395
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    check-cast v0, Lo/DatabaseRegistrar$onNavigationEvent;

    .line 1412
    iget-boolean v1, v0, Lo/DatabaseRegistrar$onNavigationEvent;->ICustomTabsCallback:Z

    if-nez v1, :cond_0

    .line 2412
    iget-object v1, v0, Lo/DatabaseRegistrar$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 397
    sget-object v0, Lo/goOnline;->onNavigationEvent:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v2, "ALPN callback dropped: SPDY and HTTP/2 are disabled. Is alpn-boot on the boot class path?"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-object p1

    .line 3412
    :cond_0
    iget-boolean v1, v0, Lo/DatabaseRegistrar$onNavigationEvent;->ICustomTabsCallback:Z

    if-eqz v1, :cond_1

    return-object p1

    .line 4412
    :cond_1
    iget-object p1, v0, Lo/DatabaseRegistrar$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 403
    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public final onPostMessage(Ljavax/net/ssl/SSLSocket;)V
    .locals 4

    .line 386
    :try_start_0
    iget-object v0, p0, Lo/DatabaseRegistrar$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 388
    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public final onPostMessage(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
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

    .line 369
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 370
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 371
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/toException;

    .line 372
    sget-object v4, Lo/toException;->onNavigationEvent:Lo/toException;

    if-eq v3, v4, :cond_0

    .line 373
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 376
    :cond_1
    :try_start_0
    const-class p3, Lo/DatabaseRegistrar;

    invoke-virtual {p3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Class;

    iget-object v3, p0, Lo/DatabaseRegistrar$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Class;

    aput-object v3, v2, v1

    iget-object v3, p0, Lo/DatabaseRegistrar$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    new-instance v3, Lo/DatabaseRegistrar$onNavigationEvent;

    invoke-direct {v3, p2}, Lo/DatabaseRegistrar$onNavigationEvent;-><init>(Ljava/util/List;)V

    invoke-static {p3, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p2

    .line 378
    iget-object p3, p0, Lo/DatabaseRegistrar$ICustomTabsCallback;->extraCallback:Ljava/lang/reflect/Method;

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

    goto :goto_1

    :catch_1
    move-exception p1

    .line 380
    :goto_1
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method
