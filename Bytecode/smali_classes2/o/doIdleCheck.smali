.class Lo/doIdleCheck;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/doIdleCheck$onNavigationEvent;
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Ljava/util/logging/Logger;

.field private static final onMessageChannelReady:Lo/access$2300;

.field private static onPostMessage:Lo/doIdleCheck;


# instance fields
.field protected final onNavigationEvent:Lo/access$2300;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    const-class v0, Lo/doIdleCheck;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lo/doIdleCheck;->ICustomTabsCallback:Ljava/util/logging/Logger;

    .line 40
    invoke-static {}, Lo/access$2300;->extraCallback()Lo/access$2300;

    move-result-object v1

    sput-object v1, Lo/doIdleCheck;->onMessageChannelReady:Lo/access$2300;

    .line 42
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lo/doIdleCheck;->extraCallback(Ljava/lang/ClassLoader;)Lo/doIdleCheck;

    move-result-object v0

    sput-object v0, Lo/doIdleCheck;->onPostMessage:Lo/doIdleCheck;

    return-void
.end method

.method constructor <init>(Lo/access$2300;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 48
    check-cast p1, Lo/access$2300;

    iput-object p1, p0, Lo/doIdleCheck;->onNavigationEvent:Lo/access$2300;

    return-void

    .line 1910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "platform"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic extraCallback()Ljava/util/logging/Logger;
    .locals 1

    .line 38
    sget-object v0, Lo/doIdleCheck;->ICustomTabsCallback:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private static extraCallback(Ljava/lang/ClassLoader;)Lo/doIdleCheck;
    .locals 4

    :try_start_0
    const-string v0, "com.android.org.conscrypt.OpenSSLSocketImpl"

    .line 63
    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 65
    sget-object v1, Lo/doIdleCheck;->ICustomTabsCallback:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Unable to find Conscrypt. Skipping"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :try_start_1
    const-string v0, "org.apache.harmony.xnet.provider.jsse.OpenSSLSocketImpl"

    .line 68
    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 70
    sget-object v0, Lo/doIdleCheck;->ICustomTabsCallback:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Unable to find any OpenSSLSocketImpl. Skipping"

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_0

    .line 75
    new-instance p0, Lo/doIdleCheck$onNavigationEvent;

    sget-object v0, Lo/doIdleCheck;->onMessageChannelReady:Lo/access$2300;

    invoke-direct {p0, v0}, Lo/doIdleCheck$onNavigationEvent;-><init>(Lo/access$2300;)V

    return-object p0

    .line 76
    :cond_0
    new-instance p0, Lo/doIdleCheck;

    sget-object v0, Lo/doIdleCheck;->onMessageChannelReady:Lo/access$2300;

    invoke-direct {p0, v0}, Lo/doIdleCheck;-><init>(Lo/access$2300;)V

    return-object p0
.end method

.method public static onNavigationEvent()Lo/doIdleCheck;
    .locals 1

    .line 52
    sget-object v0, Lo/doIdleCheck;->onPostMessage:Lo/doIdleCheck;

    return-object v0
.end method


# virtual methods
.method public ICustomTabsCallback(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
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

    if-eqz p3, :cond_0

    .line 88
    invoke-virtual {p0, p1, p2, p3}, Lo/doIdleCheck;->onNavigationEvent(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 92
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 94
    invoke-virtual {p0, p1}, Lo/doIdleCheck;->extraCallback(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    .line 100
    iget-object p3, p0, Lo/doIdleCheck;->onNavigationEvent:Lo/access$2300;

    invoke-virtual {p3, p1}, Lo/access$2300;->extraCallback(Ljavax/net/ssl/SSLSocket;)V

    return-object p2

    .line 96
    :cond_1
    :try_start_1
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "TLS ALPN negotiation failed with protocols: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p2

    .line 100
    iget-object p3, p0, Lo/doIdleCheck;->onNavigationEvent:Lo/access$2300;

    invoke-virtual {p3, p1}, Lo/access$2300;->extraCallback(Ljavax/net/ssl/SSLSocket;)V

    throw p2
.end method

.method public extraCallback(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lo/doIdleCheck;->onNavigationEvent:Lo/access$2300;

    invoke-virtual {v0, p1}, Lo/access$2300;->onNavigationEvent(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected onNavigationEvent(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
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

    .line 107
    iget-object v0, p0, Lo/doIdleCheck;->onNavigationEvent:Lo/access$2300;

    invoke-virtual {v0, p1, p2, p3}, Lo/access$2300;->ICustomTabsCallback(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
