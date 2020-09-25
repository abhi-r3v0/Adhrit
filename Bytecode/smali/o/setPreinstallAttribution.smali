.class public interface abstract Lo/setPreinstallAttribution;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract ICustomTabsCallback()Lo/unregisterConversionListener;
.end method

.method public abstract ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TE;)V"
        }
    .end annotation
.end method

.method public abstract ICustomTabsCallback$Stub()Lo/context;
.end method

.method public abstract asBinder()Z
.end method

.method public abstract asInterface()Lo/getInstallVersion;
.end method

.method public abstract extraCallback()Ljava/lang/Object;
.end method

.method public abstract extraCallback(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract newSession()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady()Lo/getHostPrefix;
.end method

.method public abstract onMessageChannelReady(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract onNavigationEvent()Ljava/lang/String;
.end method

.method public abstract onPostMessage()Ljava/lang/String;
.end method

.method public abstract onPostMessage(Ljava/lang/String;)V
.end method

.method public abstract onPostMessage(Lo/releaseGlows$onPostMessage$onMessageChannelReady;)V
.end method

.method public abstract onRelationshipValidationResult()Z
.end method

.method public abstract onTransact()Lo/getHostPrefix$onMessageChannelReady;
.end method
