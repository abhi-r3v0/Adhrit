.class abstract Lo/showErrorNotification;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lo/getRemoteContext<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract ICustomTabsCallback(Ljava/lang/Object;)V
.end method

.method abstract ICustomTabsCallback(Lo/getMobileAdsSettingsManager;Ljava/lang/Object;Lo/isGooglePlayServicesAvailable;Lo/getErrorPendingIntent;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getMobileAdsSettingsManager;",
            "Ljava/lang/Object;",
            "Lo/isGooglePlayServicesAvailable;",
            "Lo/getErrorPendingIntent<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract extraCallback(Lo/getApiFeatures;Ljava/lang/Object;Lo/isGooglePlayServicesAvailable;Lo/getErrorPendingIntent;Ljava/lang/Object;Lo/getMinApkVersion;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/getApiFeatures;",
            "Ljava/lang/Object;",
            "Lo/isGooglePlayServicesAvailable;",
            "Lo/getErrorPendingIntent<",
            "TT;>;TUB;",
            "Lo/getMinApkVersion<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract extraCallback(Ljava/lang/Object;)Lo/getErrorPendingIntent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lo/getErrorPendingIntent<",
            "TT;>;"
        }
    .end annotation
.end method

.method abstract extraCallback(Lo/checkNotNull;Ljava/util/Map$Entry;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/checkNotNull;",
            "Ljava/util/Map$Entry<",
            "**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract onMessageChannelReady(Ljava/lang/Object;)Lo/getErrorPendingIntent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lo/getErrorPendingIntent<",
            "TT;>;"
        }
    .end annotation
.end method

.method abstract onNavigationEvent(Ljava/util/Map$Entry;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)I"
        }
    .end annotation
.end method

.method abstract onNavigationEvent(Lo/isGooglePlayServicesAvailable;Lo/getStartServicePackage;I)Ljava/lang/Object;
.end method

.method abstract onNavigationEvent(Lo/getApiFeatures;Ljava/lang/Object;Lo/isGooglePlayServicesAvailable;Lo/getErrorPendingIntent;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getApiFeatures;",
            "Ljava/lang/Object;",
            "Lo/isGooglePlayServicesAvailable;",
            "Lo/getErrorPendingIntent<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract onPostMessage(Lo/getStartServicePackage;)Z
.end method
