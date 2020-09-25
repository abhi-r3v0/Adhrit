.class public interface abstract Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract getAppSettings()Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSettings()Lcom/google/firebase/crashlytics/internal/settings/model/Settings;
.end method
