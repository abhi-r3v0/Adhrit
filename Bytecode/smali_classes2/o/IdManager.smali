.class public interface abstract Lo/IdManager;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract createPersistenceManager(Lo/getNamedThreadFactory;Ljava/lang/String;)Lo/NativeSessionFileGzipper;
.end method

.method public abstract getPlatformVersion()Ljava/lang/String;
.end method

.method public abstract getSSLCacheDirectory()Ljava/io/File;
.end method

.method public abstract getUserAgent(Lo/getNamedThreadFactory;)Ljava/lang/String;
.end method

.method public abstract newEventTarget(Lo/getNamedThreadFactory;)Lo/formatId;
.end method

.method public abstract newLogger(Lo/getNamedThreadFactory;Lo/deleteLogFile$extraCallback;Ljava/util/List;)Lo/deleteLogFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getNamedThreadFactory;",
            "Lo/deleteLogFile$extraCallback;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lo/deleteLogFile;"
        }
    .end annotation
.end method

.method public abstract newPersistentConnection(Lo/getNamedThreadFactory;Lo/setCrashlyticsDataCollectionEnabled;Lo/grantDataCollectionPermission;Lo/getDataCollectionValueFromSharedPreferences$onPostMessage;)Lo/getDataCollectionValueFromSharedPreferences;
.end method

.method public abstract newRunLoop(Lo/getNamedThreadFactory;)Lo/migrateLegacyId;
.end method
