.class abstract Lo/ak$2;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lo/eM<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract ICustomTabsCallback(Lo/ek;)Z
.end method

.method abstract extraCallback(Lo/ef;Ljava/lang/Object;Lo/getMaxSize;Lo/eT;Ljava/lang/Object;Lo/FreshchatReceiver;)Ljava/lang/Object;
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
            "TT;>;TUB;",
            "Lo/FreshchatReceiver<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract onMessageChannelReady(Ljava/util/Map$Entry;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)I"
        }
    .end annotation
.end method

.method abstract onMessageChannelReady(Ljava/lang/Object;)Lo/eT;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lo/eT<",
            "TT;>;"
        }
    .end annotation
.end method

.method abstract onMessageChannelReady(Lo/dS;Ljava/util/Map$Entry;)V
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
.end method

.method abstract onNavigationEvent(Ljava/lang/Object;)V
.end method

.method abstract onNavigationEvent(Lo/ac$1;Ljava/lang/Object;Lo/getMaxSize;Lo/eT;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ac$1;",
            "Ljava/lang/Object;",
            "Lo/getMaxSize;",
            "Lo/eT<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract onNavigationEvent(Lo/ef;Ljava/lang/Object;Lo/getMaxSize;Lo/eT;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ef;",
            "Ljava/lang/Object;",
            "Lo/getMaxSize;",
            "Lo/eT<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract onPostMessage(Lo/getMaxSize;Lo/ek;I)Ljava/lang/Object;
.end method

.method abstract onPostMessage(Ljava/lang/Object;)Lo/eT;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lo/eT<",
            "TT;>;"
        }
    .end annotation
.end method
