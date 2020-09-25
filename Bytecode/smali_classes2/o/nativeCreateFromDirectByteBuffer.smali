.class abstract Lo/nativeCreateFromDirectByteBuffer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lo/SharedReference$NullReferenceException<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract ICustomTabsCallback(Ljava/util/Map$Entry;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)I"
        }
    .end annotation
.end method

.method abstract ICustomTabsCallback(Ljava/lang/Object;)Lo/nativeGetSizeInBytes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lo/nativeGetSizeInBytes<",
            "TT;>;"
        }
    .end annotation
.end method

.method abstract ICustomTabsCallback(Lo/linkifyWithPattern;Ljava/util/Map$Entry;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/linkifyWithPattern;",
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

.method abstract onMessageChannelReady(Ljava/lang/Object;)Lo/nativeGetSizeInBytes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lo/nativeGetSizeInBytes<",
            "TT;>;"
        }
    .end annotation
.end method

.method abstract onMessageChannelReady(Lo/NativeBlurFilter;)Z
.end method

.method abstract onNavigationEvent(Ljava/lang/Object;Lo/nativeGetSizeInBytes;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lo/nativeGetSizeInBytes<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method abstract onPostMessage(Ljava/lang/Object;)V
.end method
