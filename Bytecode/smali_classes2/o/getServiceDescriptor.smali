.class final Lo/getServiceDescriptor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getService;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/getService<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final extraCallback:Z

.field private final onMessageChannelReady:Lo/getMinApkVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getMinApkVersion<",
            "**>;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/showErrorNotification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/showErrorNotification<",
            "*>;"
        }
    .end annotation
.end field

.field private final onPostMessage:Lo/getStartServicePackage;


# direct methods
.method private constructor <init>(Lo/getMinApkVersion;Lo/showErrorNotification;Lo/getStartServicePackage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getMinApkVersion<",
            "**>;",
            "Lo/showErrorNotification<",
            "*>;",
            "Lo/getStartServicePackage;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo/getServiceDescriptor;->onMessageChannelReady:Lo/getMinApkVersion;

    .line 3
    invoke-virtual {p2, p3}, Lo/showErrorNotification;->onPostMessage(Lo/getStartServicePackage;)Z

    move-result p1

    iput-boolean p1, p0, Lo/getServiceDescriptor;->extraCallback:Z

    .line 4
    iput-object p2, p0, Lo/getServiceDescriptor;->onNavigationEvent:Lo/showErrorNotification;

    .line 5
    iput-object p3, p0, Lo/getServiceDescriptor;->onPostMessage:Lo/getStartServicePackage;

    return-void
.end method

.method static ICustomTabsCallback(Lo/getMinApkVersion;Lo/showErrorNotification;Lo/getStartServicePackage;)Lo/getServiceDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/getMinApkVersion<",
            "**>;",
            "Lo/showErrorNotification<",
            "*>;",
            "Lo/getStartServicePackage;",
            ")",
            "Lo/getServiceDescriptor<",
            "TT;>;"
        }
    .end annotation

    .line 7
    new-instance v0, Lo/getServiceDescriptor;

    invoke-direct {v0, p0, p1, p2}, Lo/getServiceDescriptor;-><init>(Lo/getMinApkVersion;Lo/showErrorNotification;Lo/getStartServicePackage;)V

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lo/getServiceDescriptor;->onNavigationEvent:Lo/showErrorNotification;

    invoke-virtual {v0, p1}, Lo/showErrorNotification;->extraCallback(Ljava/lang/Object;)Lo/getErrorPendingIntent;

    move-result-object p1

    .line 168
    invoke-virtual {p1}, Lo/getErrorPendingIntent;->asInterface()Z

    move-result p1

    return p1
.end method

.method public final extraCallback(Ljava/lang/Object;Lo/checkNotNull;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo/checkNotNull;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lo/getServiceDescriptor;->onNavigationEvent:Lo/showErrorNotification;

    invoke-virtual {v0, p1}, Lo/showErrorNotification;->extraCallback(Ljava/lang/Object;)Lo/getErrorPendingIntent;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lo/getErrorPendingIntent;->ICustomTabsCallback()Ljava/util/Iterator;

    move-result-object v0

    .line 29
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 31
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getRemoteContext;

    .line 32
    invoke-interface {v2}, Lo/getRemoteContext;->onPostMessage()Lo/DynamiteModule$LoadingException;

    move-result-object v3

    sget-object v4, Lo/DynamiteModule$LoadingException;->onRelationshipValidationResult:Lo/DynamiteModule$LoadingException;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lo/getRemoteContext;->ICustomTabsCallback()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lo/getRemoteContext;->onMessageChannelReady()Z

    move-result v3

    if-nez v3, :cond_1

    .line 34
    instance-of v3, v1, Lo/ApiException;

    if-eqz v3, :cond_0

    .line 36
    invoke-interface {v2}, Lo/getRemoteContext;->extraCallback()I

    move-result v2

    check-cast v1, Lo/ApiException;

    invoke-virtual {v1}, Lo/ApiException;->ICustomTabsCallback()Lo/zaa;

    move-result-object v1

    invoke-virtual {v1}, Lo/disconnectService;->onMessageChannelReady()Lo/getMobileAdsSettingsManager;

    move-result-object v1

    .line 37
    invoke-interface {p2, v2, v1}, Lo/checkNotNull;->onMessageChannelReady(ILjava/lang/Object;)V

    goto :goto_0

    .line 38
    :cond_0
    invoke-interface {v2}, Lo/getRemoteContext;->extraCallback()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lo/checkNotNull;->onMessageChannelReady(ILjava/lang/Object;)V

    goto :goto_0

    .line 33
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_2
    iget-object v0, p0, Lo/getServiceDescriptor;->onMessageChannelReady:Lo/getMinApkVersion;

    .line 41
    invoke-virtual {v0, p1}, Lo/getMinApkVersion;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lo/getMinApkVersion;->extraCallback(Ljava/lang/Object;Lo/checkNotNull;)V

    return-void
.end method

.method public final extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lo/getServiceDescriptor;->onMessageChannelReady:Lo/getMinApkVersion;

    invoke-virtual {v0, p1}, Lo/getMinApkVersion;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lo/getServiceDescriptor;->onMessageChannelReady:Lo/getMinApkVersion;

    invoke-virtual {v1, p2}, Lo/getMinApkVersion;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 13
    :cond_0
    iget-boolean v0, p0, Lo/getServiceDescriptor;->extraCallback:Z

    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lo/getServiceDescriptor;->onNavigationEvent:Lo/showErrorNotification;

    invoke-virtual {v0, p1}, Lo/showErrorNotification;->extraCallback(Ljava/lang/Object;)Lo/getErrorPendingIntent;

    move-result-object p1

    .line 15
    iget-object v0, p0, Lo/getServiceDescriptor;->onNavigationEvent:Lo/showErrorNotification;

    invoke-virtual {v0, p2}, Lo/showErrorNotification;->extraCallback(Ljava/lang/Object;)Lo/getErrorPendingIntent;

    move-result-object p2

    .line 16
    invoke-virtual {p1, p2}, Lo/getErrorPendingIntent;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final onMessageChannelReady(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lo/getServiceDescriptor;->onMessageChannelReady:Lo/getMinApkVersion;

    invoke-virtual {v0, p1}, Lo/getMinApkVersion;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 19
    iget-boolean v1, p0, Lo/getServiceDescriptor;->extraCallback:Z

    if-eqz v1, :cond_0

    .line 20
    iget-object v1, p0, Lo/getServiceDescriptor;->onNavigationEvent:Lo/showErrorNotification;

    invoke-virtual {v1, p1}, Lo/showErrorNotification;->extraCallback(Ljava/lang/Object;)Lo/getErrorPendingIntent;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    .line 21
    invoke-virtual {p1}, Lo/getErrorPendingIntent;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final onMessageChannelReady(Ljava/lang/Object;Lo/getApiFeatures;Lo/isGooglePlayServicesAvailable;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo/getApiFeatures;",
            "Lo/isGooglePlayServicesAvailable;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lo/getServiceDescriptor;->onMessageChannelReady:Lo/getMinApkVersion;

    iget-object v1, p0, Lo/getServiceDescriptor;->onNavigationEvent:Lo/showErrorNotification;

    .line 114
    invoke-virtual {v0, p1}, Lo/getMinApkVersion;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 115
    invoke-virtual {v1, p1}, Lo/showErrorNotification;->onMessageChannelReady(Ljava/lang/Object;)Lo/getErrorPendingIntent;

    move-result-object v3

    .line 116
    :cond_0
    :try_start_0
    invoke-interface {p2}, Lo/getApiFeatures;->onMessageChannelReady()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_1

    .line 118
    invoke-virtual {v0, p1, v2}, Lo/getMinApkVersion;->onPostMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 121
    :cond_1
    :try_start_1
    invoke-interface {p2}, Lo/getApiFeatures;->onNavigationEvent()I

    move-result v4

    const/16 v6, 0xb

    if-eq v4, v6, :cond_4

    and-int/lit8 v5, v4, 0x7

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 126
    iget-object v5, p0, Lo/getServiceDescriptor;->onPostMessage:Lo/getStartServicePackage;

    ushr-int/lit8 v4, v4, 0x3

    .line 128
    invoke-virtual {v1, p3, v5, v4}, Lo/showErrorNotification;->onNavigationEvent(Lo/isGooglePlayServicesAvailable;Lo/getStartServicePackage;I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 130
    invoke-virtual {v1, p2, v4, p3, v3}, Lo/showErrorNotification;->onNavigationEvent(Lo/getApiFeatures;Ljava/lang/Object;Lo/isGooglePlayServicesAvailable;Lo/getErrorPendingIntent;)V

    goto :goto_1

    .line 132
    :cond_2
    invoke-virtual {v0, v2, p2}, Lo/getMinApkVersion;->extraCallback(Ljava/lang/Object;Lo/getApiFeatures;)Z

    move-result v4

    goto :goto_2

    .line 133
    :cond_3
    invoke-interface {p2}, Lo/getApiFeatures;->extraCallback()Z

    move-result v4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v7, v6

    .line 137
    :cond_5
    :goto_0
    invoke-interface {p2}, Lo/getApiFeatures;->onMessageChannelReady()I

    move-result v8

    if-eq v8, v5, :cond_9

    .line 139
    invoke-interface {p2}, Lo/getApiFeatures;->onNavigationEvent()I

    move-result v8

    const/16 v9, 0x10

    if-ne v8, v9, :cond_6

    .line 141
    invoke-interface {p2}, Lo/getApiFeatures;->ICustomTabsService()I

    move-result v4

    .line 142
    iget-object v6, p0, Lo/getServiceDescriptor;->onPostMessage:Lo/getStartServicePackage;

    .line 143
    invoke-virtual {v1, p3, v6, v4}, Lo/showErrorNotification;->onNavigationEvent(Lo/isGooglePlayServicesAvailable;Lo/getStartServicePackage;I)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    :cond_6
    const/16 v9, 0x1a

    if-ne v8, v9, :cond_8

    if-eqz v6, :cond_7

    .line 147
    invoke-virtual {v1, p2, v6, p3, v3}, Lo/showErrorNotification;->onNavigationEvent(Lo/getApiFeatures;Ljava/lang/Object;Lo/isGooglePlayServicesAvailable;Lo/getErrorPendingIntent;)V

    goto :goto_0

    .line 149
    :cond_7
    invoke-interface {p2}, Lo/getApiFeatures;->newSession()Lo/getMobileAdsSettingsManager;

    move-result-object v7

    goto :goto_0

    .line 151
    :cond_8
    invoke-interface {p2}, Lo/getApiFeatures;->extraCallback()Z

    move-result v8

    if-nez v8, :cond_5

    .line 152
    :cond_9
    invoke-interface {p2}, Lo/getApiFeatures;->onNavigationEvent()I

    move-result v5

    const/16 v8, 0xc

    if-ne v5, v8, :cond_c

    if-eqz v7, :cond_b

    if-eqz v6, :cond_a

    .line 156
    invoke-virtual {v1, v7, v6, p3, v3}, Lo/showErrorNotification;->ICustomTabsCallback(Lo/getMobileAdsSettingsManager;Ljava/lang/Object;Lo/isGooglePlayServicesAvailable;Lo/getErrorPendingIntent;)V

    goto :goto_1

    .line 157
    :cond_a
    invoke-virtual {v0, v2, v4, v7}, Lo/getMinApkVersion;->onMessageChannelReady(Ljava/lang/Object;ILo/getMobileAdsSettingsManager;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_b
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-nez v4, :cond_0

    .line 160
    invoke-virtual {v0, p1, v2}, Lo/getMinApkVersion;->onPostMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 153
    :cond_c
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->extraCallback()Lcom/google/android/gms/internal/vision/zzin;

    move-result-object p2

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p2

    .line 162
    invoke-virtual {v0, p1, v2}, Lo/getMinApkVersion;->onPostMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 163
    throw p2
.end method

.method public final onNavigationEvent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lo/getServiceDescriptor;->onPostMessage:Lo/getStartServicePackage;

    invoke-interface {v0}, Lo/getStartServicePackage;->newSession()Lo/DataHolder$zaa;

    move-result-object v0

    invoke-interface {v0}, Lo/DataHolder$zaa;->onNavigationEvent()Lo/getStartServicePackage;

    move-result-object v0

    return-object v0
.end method

.method public final onNavigationEvent(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lo/getServiceDescriptor;->onMessageChannelReady:Lo/getMinApkVersion;

    invoke-virtual {v0, p1}, Lo/getMinApkVersion;->extraCallback(Ljava/lang/Object;)V

    .line 165
    iget-object v0, p0, Lo/getServiceDescriptor;->onNavigationEvent:Lo/showErrorNotification;

    invoke-virtual {v0, p1}, Lo/showErrorNotification;->ICustomTabsCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/Object;[BIILo/ClientApi;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lo/ClientApi;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    move-object v0, p1

    check-cast v0, Lo/isPlayServicesPossiblyUpdating;

    iget-object v1, v0, Lo/isPlayServicesPossiblyUpdating;->zzxz:Lo/getUseDynamicLookup;

    .line 44
    invoke-static {}, Lo/getUseDynamicLookup;->ICustomTabsCallback()Lo/getUseDynamicLookup;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 45
    invoke-static {}, Lo/getUseDynamicLookup;->onPostMessage()Lo/getUseDynamicLookup;

    move-result-object v1

    .line 46
    iput-object v1, v0, Lo/isPlayServicesPossiblyUpdating;->zzxz:Lo/getUseDynamicLookup;

    .line 47
    :cond_0
    check-cast p1, Lo/isPlayServicesPossiblyUpdating$extraCallback;

    .line 48
    invoke-virtual {p1}, Lo/isPlayServicesPossiblyUpdating$extraCallback;->onMessageChannelReady()Lo/getErrorPendingIntent;

    move-result-object p1

    const/4 v0, 0x0

    move-object v2, v0

    :goto_0
    if-ge p3, p4, :cond_a

    .line 51
    invoke-static {p2, p3, p5}, Lo/createInterstitialAdManager;->onNavigationEvent([BILo/ClientApi;)I

    move-result v4

    .line 52
    iget p3, p5, Lo/ClientApi;->onNavigationEvent:I

    const/16 v3, 0xb

    const/4 v5, 0x2

    if-eq p3, v3, :cond_3

    and-int/lit8 v3, p3, 0x7

    if-ne v3, v5, :cond_2

    .line 57
    iget-object v2, p0, Lo/getServiceDescriptor;->onNavigationEvent:Lo/showErrorNotification;

    iget-object v3, p5, Lo/ClientApi;->onPostMessage:Lo/isGooglePlayServicesAvailable;

    iget-object v5, p0, Lo/getServiceDescriptor;->onPostMessage:Lo/getStartServicePackage;

    ushr-int/lit8 v6, p3, 0x3

    .line 59
    invoke-virtual {v2, v3, v5, v6}, Lo/showErrorNotification;->onNavigationEvent(Lo/isGooglePlayServicesAvailable;Lo/getStartServicePackage;I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lo/isPlayServicesPossiblyUpdating$onTransact;

    if-eqz v8, :cond_1

    .line 61
    invoke-static {}, Lo/getGetServiceRequestExtraArgs;->ICustomTabsCallback()Lo/getGetServiceRequestExtraArgs;

    move-result-object p3

    .line 62
    iget-object v2, v8, Lo/isPlayServicesPossiblyUpdating$onTransact;->onPostMessage:Lo/getStartServicePackage;

    .line 63
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 64
    invoke-virtual {p3, v2}, Lo/getGetServiceRequestExtraArgs;->onNavigationEvent(Ljava/lang/Class;)Lo/getService;

    move-result-object p3

    .line 65
    invoke-static {p3, p2, v4, p4, p5}, Lo/createInterstitialAdManager;->onPostMessage(Lo/getService;[BIILo/ClientApi;)I

    move-result p3

    .line 66
    iget-object v2, v8, Lo/isPlayServicesPossiblyUpdating$onTransact;->ICustomTabsCallback:Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;

    iget-object v3, p5, Lo/ClientApi;->ICustomTabsCallback:Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Lo/getErrorPendingIntent;->onMessageChannelReady(Lo/getRemoteContext;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    move v2, p3

    move-object v3, p2

    move v5, p4

    move-object v6, v1

    move-object v7, p5

    .line 68
    invoke-static/range {v2 .. v7}, Lo/createInterstitialAdManager;->onNavigationEvent(I[BIILo/getUseDynamicLookup;Lo/ClientApi;)I

    move-result p3

    :goto_1
    move-object v2, v8

    goto :goto_0

    .line 69
    :cond_2
    invoke-static {p3, p2, v4, p4, p5}, Lo/createInterstitialAdManager;->extraCallback(I[BIILo/ClientApi;)I

    move-result p3

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    move-object v3, v0

    :goto_2
    if-ge v4, p4, :cond_8

    .line 74
    invoke-static {p2, v4, p5}, Lo/createInterstitialAdManager;->onNavigationEvent([BILo/ClientApi;)I

    move-result v4

    .line 75
    iget v6, p5, Lo/ClientApi;->onNavigationEvent:I

    ushr-int/lit8 v7, v6, 0x3

    and-int/lit8 v8, v6, 0x7

    if-eq v7, v5, :cond_6

    const/4 v9, 0x3

    if-eq v7, v9, :cond_4

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_5

    .line 90
    invoke-static {}, Lo/getGetServiceRequestExtraArgs;->ICustomTabsCallback()Lo/getGetServiceRequestExtraArgs;

    move-result-object v6

    .line 91
    iget-object v7, v2, Lo/isPlayServicesPossiblyUpdating$onTransact;->onPostMessage:Lo/getStartServicePackage;

    .line 92
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 93
    invoke-virtual {v6, v7}, Lo/getGetServiceRequestExtraArgs;->onNavigationEvent(Ljava/lang/Class;)Lo/getService;

    move-result-object v6

    .line 94
    invoke-static {v6, p2, v4, p4, p5}, Lo/createInterstitialAdManager;->onPostMessage(Lo/getService;[BIILo/ClientApi;)I

    move-result v4

    .line 95
    iget-object v6, v2, Lo/isPlayServicesPossiblyUpdating$onTransact;->ICustomTabsCallback:Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;

    iget-object v7, p5, Lo/ClientApi;->ICustomTabsCallback:Ljava/lang/Object;

    invoke-virtual {p1, v6, v7}, Lo/getErrorPendingIntent;->onMessageChannelReady(Lo/getRemoteContext;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    if-ne v8, v5, :cond_7

    .line 98
    invoke-static {p2, v4, p5}, Lo/createInterstitialAdManager;->onPostMessage([BILo/ClientApi;)I

    move-result v4

    .line 99
    iget-object v3, p5, Lo/ClientApi;->ICustomTabsCallback:Ljava/lang/Object;

    check-cast v3, Lo/getMobileAdsSettingsManager;

    goto :goto_2

    :cond_6
    if-nez v8, :cond_7

    .line 84
    invoke-static {p2, v4, p5}, Lo/createInterstitialAdManager;->onNavigationEvent([BILo/ClientApi;)I

    move-result v4

    .line 85
    iget p3, p5, Lo/ClientApi;->onNavigationEvent:I

    .line 86
    iget-object v2, p0, Lo/getServiceDescriptor;->onNavigationEvent:Lo/showErrorNotification;

    iget-object v6, p5, Lo/ClientApi;->onPostMessage:Lo/isGooglePlayServicesAvailable;

    iget-object v7, p0, Lo/getServiceDescriptor;->onPostMessage:Lo/getStartServicePackage;

    .line 87
    invoke-virtual {v2, v6, v7, p3}, Lo/showErrorNotification;->onNavigationEvent(Lo/isGooglePlayServicesAvailable;Lo/getStartServicePackage;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/isPlayServicesPossiblyUpdating$onTransact;

    goto :goto_2

    :cond_7
    :goto_3
    const/16 v7, 0xc

    if-eq v6, v7, :cond_8

    .line 102
    invoke-static {v6, p2, v4, p4, p5}, Lo/createInterstitialAdManager;->extraCallback(I[BIILo/ClientApi;)I

    move-result v4

    goto :goto_2

    :cond_8
    if-eqz v3, :cond_9

    shl-int/lit8 p3, p3, 0x3

    or-int/2addr p3, v5

    .line 108
    invoke-virtual {v1, p3, v3}, Lo/getUseDynamicLookup;->ICustomTabsCallback(ILjava/lang/Object;)V

    :cond_9
    move p3, v4

    goto/16 :goto_0

    :cond_a
    if-ne p3, p4, :cond_b

    return-void

    .line 111
    :cond_b
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->onRelationshipValidationResult()Lcom/google/android/gms/internal/vision/zzin;

    move-result-object p1

    throw p1
.end method

.method public final onPostMessage(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lo/getServiceDescriptor;->onMessageChannelReady:Lo/getMinApkVersion;

    .line 170
    invoke-virtual {v0, p1}, Lo/getMinApkVersion;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 171
    invoke-virtual {v0, v1}, Lo/getMinApkVersion;->onPostMessage(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 173
    iget-boolean v1, p0, Lo/getServiceDescriptor;->extraCallback:Z

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lo/getServiceDescriptor;->onNavigationEvent:Lo/showErrorNotification;

    invoke-virtual {v1, p1}, Lo/showErrorNotification;->extraCallback(Ljava/lang/Object;)Lo/getErrorPendingIntent;

    move-result-object p1

    invoke-virtual {p1}, Lo/getErrorPendingIntent;->onRelationshipValidationResult()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final onPostMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lo/getServiceDescriptor;->onMessageChannelReady:Lo/getMinApkVersion;

    invoke-static {v0, p1, p2}, Lo/getConnectionHint;->extraCallback(Lo/getMinApkVersion;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    iget-boolean v0, p0, Lo/getServiceDescriptor;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lo/getServiceDescriptor;->onNavigationEvent:Lo/showErrorNotification;

    invoke-static {v0, p1, p2}, Lo/getConnectionHint;->onPostMessage(Lo/showErrorNotification;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
