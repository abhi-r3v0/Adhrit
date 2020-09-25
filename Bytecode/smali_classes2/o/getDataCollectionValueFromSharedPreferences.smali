.class public interface abstract Lo/getDataCollectionValueFromSharedPreferences;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getDataCollectionValueFromSharedPreferences$onPostMessage;
    }
.end annotation


# virtual methods
.method public abstract compareAndPut(Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lo/getDataCollectionValueFromManifest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lo/getDataCollectionValueFromManifest;",
            ")V"
        }
    .end annotation
.end method

.method public abstract initialize()V
.end method

.method public abstract interrupt(Ljava/lang/String;)V
.end method

.method public abstract isInterrupted(Ljava/lang/String;)Z
.end method

.method public abstract listen(Ljava/util/List;Ljava/util/Map;Lo/storeDataCollectionValueInSharedPreferences;Ljava/lang/Long;Lo/getDataCollectionValueFromManifest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lo/storeDataCollectionValueInSharedPreferences;",
            "Ljava/lang/Long;",
            "Lo/getDataCollectionValueFromManifest;",
            ")V"
        }
    .end annotation
.end method

.method public abstract merge(Ljava/util/List;Ljava/util/Map;Lo/getDataCollectionValueFromManifest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lo/getDataCollectionValueFromManifest;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onDisconnectCancel(Ljava/util/List;Lo/getDataCollectionValueFromManifest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lo/getDataCollectionValueFromManifest;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onDisconnectMerge(Ljava/util/List;Ljava/util/Map;Lo/getDataCollectionValueFromManifest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lo/getDataCollectionValueFromManifest;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onDisconnectPut(Ljava/util/List;Ljava/lang/Object;Lo/getDataCollectionValueFromManifest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lo/getDataCollectionValueFromManifest;",
            ")V"
        }
    .end annotation
.end method

.method public abstract purgeOutstandingWrites()V
.end method

.method public abstract put(Ljava/util/List;Ljava/lang/Object;Lo/getDataCollectionValueFromManifest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lo/getDataCollectionValueFromManifest;",
            ")V"
        }
    .end annotation
.end method

.method public abstract refreshAuthToken()V
.end method

.method public abstract refreshAuthToken(Ljava/lang/String;)V
.end method

.method public abstract resume(Ljava/lang/String;)V
.end method

.method public abstract shutdown()V
.end method

.method public abstract unlisten(Ljava/util/List;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method
