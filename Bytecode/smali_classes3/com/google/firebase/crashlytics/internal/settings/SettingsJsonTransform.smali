.class interface abstract Lcom/google/firebase/crashlytics/internal/settings/SettingsJsonTransform;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract buildFromJson(Lcom/google/firebase/crashlytics/internal/common/CurrentTimeProvider;Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public abstract toJson(Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;)Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method
