.class abstract Lo/setVariant;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lo/setDisplayName<",
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
.method abstract ICustomTabsCallback(Lo/setLaunchDeeplinkFromNotification;Ljava/util/Map$Entry;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setLaunchDeeplinkFromNotification;",
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

.method abstract extraCallback(Ljava/lang/Object;)Lo/setDisplayCode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lo/setDisplayCode<",
            "TT;>;"
        }
    .end annotation
.end method

.method abstract onMessageChannelReady(Ljava/lang/Object;)V
.end method

.method abstract onMessageChannelReady(Lo/access$502;)Z
.end method

.method abstract onNavigationEvent(Ljava/lang/Object;)Lo/setDisplayCode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lo/setDisplayCode<",
            "TT;>;"
        }
    .end annotation
.end method

.method abstract onPostMessage(Ljava/util/Map$Entry;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)I"
        }
    .end annotation
.end method
