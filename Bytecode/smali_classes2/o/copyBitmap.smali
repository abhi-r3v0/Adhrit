.class interface abstract Lo/copyBitmap;
.super Ljava/lang/Object;


# virtual methods
.method public abstract ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract ICustomTabsCallback$Stub(Ljava/lang/Object;)Lo/nativeMemcpy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lo/nativeMemcpy<",
            "**>;"
        }
    .end annotation
.end method

.method public abstract extraCallback(ILjava/lang/Object;Ljava/lang/Object;)I
.end method

.method public abstract extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract onMessageChannelReady(Ljava/lang/Object;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation
.end method

.method public abstract onNavigationEvent(Ljava/lang/Object;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation
.end method

.method public abstract onPostMessage(Ljava/lang/Object;)Z
.end method
