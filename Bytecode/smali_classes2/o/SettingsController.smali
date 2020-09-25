.class public interface abstract Lo/SettingsController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/toFeaturesJson;


# virtual methods
.method public abstract ICustomTabsCallback()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/java_websocket/exceptions/InvalidFrameException;
        }
    .end annotation
.end method

.method public abstract extraCallback()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation
.end method
