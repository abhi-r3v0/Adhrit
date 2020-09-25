.class public interface abstract Lo/getDataCollectionValueFromSharedPreferences$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getDataCollectionValueFromSharedPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "onPostMessage"
.end annotation


# virtual methods
.method public abstract onAuthStatus(Z)V
.end method

.method public abstract onConnect()V
.end method

.method public abstract onDataUpdate(Ljava/util/List;Ljava/lang/Object;ZLjava/lang/Long;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onDisconnect()V
.end method

.method public abstract onRangeMergeUpdate(Ljava/util/List;Ljava/util/List;Ljava/lang/Long;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lo/readCrashlyticsDataCollectionEnabledFromManifest;",
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onServerInfoUpdate(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method
