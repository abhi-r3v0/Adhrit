.class public interface abstract Lo/registerConversionListener;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract ICustomTabsCallback(Lo/getHostPrefix;Ljava/lang/Object;Ljava/lang/String;Z)V
.end method

.method public abstract extraCallback(Ljava/lang/String;)V
.end method

.method public abstract onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract onNavigationEvent(Ljava/lang/String;)Z
.end method

.method public abstract onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onPostMessage(Lo/getHostPrefix;Ljava/lang/String;Ljava/lang/Throwable;Z)V
.end method

.method public abstract onPostMessage(Lo/getHostPrefix;Ljava/lang/String;Z)V
.end method
