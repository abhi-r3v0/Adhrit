.class public interface abstract Lo/buildFromJson;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract ICustomTabsCallback(ILjava/lang/String;)V
.end method

.method public abstract ICustomTabsCallback(Ljava/lang/String;)V
.end method

.method public abstract extraCallback(Lo/readCachedSettings;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation
.end method

.method public abstract extraCallback()V
.end method

.method public abstract onNavigationEvent()Lo/getStoredBuildInstanceIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation
.end method

.method public abstract onNavigationEvent(Ljava/lang/Exception;)V
.end method

.method public abstract onPostMessage()Ljava/net/InetSocketAddress;
.end method

.method public abstract onPostMessage(Lo/readCachedSettings;Lo/toFeaturesJson;)V
.end method
