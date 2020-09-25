.class final Lo/access$1602;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static extraCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/getOnComplete;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lo/getOnComplete;

    .line 45
    sget-object v1, Lo/getOnComplete;->onNavigationEvent:Lo/getOnComplete;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 46
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lo/access$1602;->extraCallback:Ljava/util/List;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onMessageChannelReady(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Ljava/net/Socket;Ljava/lang/String;ILo/access$1302;)Ljavax/net/ssl/SSLSocket;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_9

    if-eqz p2, :cond_8

    if-eqz p5, :cond_7

    const/4 v0, 0x1

    .line 60
    invoke-virtual {p0, p2, p3, p4, v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/SSLSocket;

    .line 4143
    iget-object p2, p5, Lo/access$1302;->extraCallback:[Ljava/lang/String;

    const/4 p4, 0x0

    if-eqz p2, :cond_0

    .line 4144
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p2

    .line 4145
    const-class v1, Ljava/lang/String;

    iget-object v2, p5, Lo/access$1302;->extraCallback:[Ljava/lang/String;

    .line 4146
    invoke-static {v1, v2, p2}, Lo/getRequest;->ICustomTabsCallback(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p2, p4

    .line 4169
    :goto_0
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    .line 4170
    const-class v2, Ljava/lang/String;

    iget-object v3, p5, Lo/access$1302;->onPostMessage:[Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lo/getRequest;->ICustomTabsCallback(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 4171
    new-instance v2, Lo/access$1302$onNavigationEvent;

    invoke-direct {v2, p5}, Lo/access$1302$onNavigationEvent;-><init>(Lo/access$1302;)V

    .line 4172
    invoke-virtual {v2, p2}, Lo/access$1302$onNavigationEvent;->onMessageChannelReady([Ljava/lang/String;)Lo/access$1302$onNavigationEvent;

    move-result-object p2

    .line 4173
    invoke-virtual {p2, v1}, Lo/access$1302$onNavigationEvent;->extraCallback([Ljava/lang/String;)Lo/access$1302$onNavigationEvent;

    move-result-object p2

    .line 4351
    new-instance v1, Lo/access$1302;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lo/access$1302;-><init>(Lo/access$1302$onNavigationEvent;B)V

    .line 4128
    iget-object p2, v1, Lo/access$1302;->onPostMessage:[Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 4130
    iget-object p2, v1, Lo/access$1302;->extraCallback:[Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 4133
    invoke-virtual {p0, p2}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 63
    :cond_1
    invoke-static {}, Lo/doIdleCheck;->onNavigationEvent()Lo/doIdleCheck;

    move-result-object p2

    .line 5121
    iget-boolean p5, p5, Lo/access$1302;->ICustomTabsCallback:Z

    if-eqz p5, :cond_2

    .line 64
    sget-object p4, Lo/access$1602;->extraCallback:Ljava/util/List;

    .line 63
    :cond_2
    invoke-virtual {p2, p0, p3, p4}, Lo/doIdleCheck;->ICustomTabsCallback(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    .line 65
    sget-object p4, Lo/access$1602;->extraCallback:Ljava/util/List;

    .line 66
    invoke-static {p2}, Lo/getOnComplete;->extraCallback(Ljava/lang/String;)Lo/getOnComplete;

    move-result-object p5

    invoke-interface {p4, p5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v1, "Only "

    invoke-direct {p5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lo/access$1602;->extraCallback:Ljava/util/List;

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " are supported, but negotiated protocol is %s"

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    if-eqz p4, :cond_6

    if-nez p1, :cond_3

    .line 71
    sget-object p1, Lo/access$2602;->onPostMessage:Lo/access$2602;

    :cond_3
    const-string p2, "["

    .line 6092
    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "]"

    invoke-virtual {p3, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 6093
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p3, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_4
    move-object p2, p3

    .line 73
    :goto_1
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p4

    invoke-interface {p1, p2, p4}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-object p0

    .line 74
    :cond_5
    new-instance p0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Cannot verify hostname: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5592
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    new-array p1, v0, [Ljava/lang/Object;

    aput-object p2, p1, v2

    invoke-static {p5, p1}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3910
    :cond_7
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "spec"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2910
    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "socket"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1910
    :cond_9
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "sslSocketFactory"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
