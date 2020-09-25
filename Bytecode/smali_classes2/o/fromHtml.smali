.class final Lo/fromHtml;
.super Lo/ak$2;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/ak$2<",
        "Lo/fa$extraCallback;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/ak$2;-><init>()V

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback(Lo/ek;)Z
    .locals 0

    .line 2
    instance-of p1, p1, Lo/fa$onPostMessage;

    return p1
.end method

.method final extraCallback(Lo/ef;Ljava/lang/Object;Lo/getMaxSize;Lo/eT;Ljava/lang/Object;Lo/FreshchatReceiver;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/ef;",
            "Ljava/lang/Object;",
            "Lo/getMaxSize;",
            "Lo/eT<",
            "Lo/fa$extraCallback;",
            ">;TUB;",
            "Lo/FreshchatReceiver<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    check-cast p2, Lo/fa$asInterface;

    .line 8
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method final onMessageChannelReady(Ljava/util/Map$Entry;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)I"
        }
    .end annotation

    .line 10
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/fa$extraCallback;

    .line 11
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method final onMessageChannelReady(Ljava/lang/Object;)Lo/eT;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lo/eT<",
            "Lo/fa$extraCallback;",
            ">;"
        }
    .end annotation

    .line 4
    check-cast p1, Lo/fa$onPostMessage;

    invoke-virtual {p1}, Lo/fa$onPostMessage;->ICustomTabsCallback()Lo/eT;

    move-result-object p1

    return-object p1
.end method

.method final onMessageChannelReady(Lo/dS;Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/dS;",
            "Ljava/util/Map$Entry<",
            "**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/fa$extraCallback;

    .line 14
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method final onNavigationEvent(Ljava/lang/Object;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lo/ak$2;->onPostMessage(Ljava/lang/Object;)Lo/eT;

    move-result-object p1

    invoke-virtual {p1}, Lo/eT;->ICustomTabsCallback()V

    return-void
.end method

.method final onNavigationEvent(Lo/ac$1;Ljava/lang/Object;Lo/getMaxSize;Lo/eT;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ac$1;",
            "Ljava/lang/Object;",
            "Lo/getMaxSize;",
            "Lo/eT<",
            "Lo/fa$extraCallback;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    check-cast p2, Lo/fa$asInterface;

    .line 19
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method final onNavigationEvent(Lo/ef;Ljava/lang/Object;Lo/getMaxSize;Lo/eT;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ef;",
            "Ljava/lang/Object;",
            "Lo/getMaxSize;",
            "Lo/eT<",
            "Lo/fa$extraCallback;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    check-cast p2, Lo/fa$asInterface;

    .line 17
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method final onPostMessage(Lo/getMaxSize;Lo/ek;I)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p1, p2, p3}, Lo/getMaxSize;->extraCallback(Lo/ek;I)Lo/fa$asInterface;

    move-result-object p1

    return-object p1
.end method

.method final onPostMessage(Ljava/lang/Object;)Lo/eT;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lo/eT<",
            "Lo/fa$extraCallback;",
            ">;"
        }
    .end annotation

    .line 3
    check-cast p1, Lo/fa$onPostMessage;

    iget-object p1, p1, Lo/fa$onPostMessage;->zzc:Lo/eT;

    return-object p1
.end method
