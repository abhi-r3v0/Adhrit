.class public interface abstract Lo/convertLongToFourByteBuffer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/convertLongToFourByteBuffer$ICustomTabsCallback;,
        Lo/convertLongToFourByteBuffer$onPostMessage;,
        Lo/convertLongToFourByteBuffer$onNavigationEvent;
    }
.end annotation


# virtual methods
.method public abstract clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lo/convertLongToFourByteBuffer$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMaxUserProperties(Ljava/lang/String;)I
.end method

.method public abstract getUserProperties(Z)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract registerAnalyticsConnectorListener(Ljava/lang/String;Lo/convertLongToFourByteBuffer$onNavigationEvent;)Lo/convertLongToFourByteBuffer$onPostMessage;
.end method

.method public abstract setConditionalUserProperty(Lo/convertLongToFourByteBuffer$ICustomTabsCallback;)V
.end method

.method public abstract setUserProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end method
