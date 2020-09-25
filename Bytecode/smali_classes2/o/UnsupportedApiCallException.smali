.class interface abstract Lo/UnsupportedApiCallException;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract ICustomTabsCallback$Stub(Ljava/lang/Object;)Lo/getLooper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lo/getLooper<",
            "**>;"
        }
    .end annotation
.end method

.method public abstract extraCallback(Ljava/lang/Object;)Ljava/util/Map;
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

.method public abstract onMessageChannelReady(Ljava/lang/Object;)Z
.end method

.method public abstract onNavigationEvent(ILjava/lang/Object;Ljava/lang/Object;)I
.end method

.method public abstract onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract onPostMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract onPostMessage(Ljava/lang/Object;)Ljava/util/Map;
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
