.class final Lo/getRemoteResource;
.super Lo/showErrorNotification;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/showErrorNotification<",
        "Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/showErrorNotification;-><init>()V

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback(Ljava/lang/Object;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lo/showErrorNotification;->extraCallback(Ljava/lang/Object;)Lo/getErrorPendingIntent;

    move-result-object p1

    invoke-virtual {p1}, Lo/getErrorPendingIntent;->onMessageChannelReady()V

    return-void
.end method

.method final ICustomTabsCallback(Lo/getMobileAdsSettingsManager;Ljava/lang/Object;Lo/isGooglePlayServicesAvailable;Lo/getErrorPendingIntent;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getMobileAdsSettingsManager;",
            "Ljava/lang/Object;",
            "Lo/isGooglePlayServicesAvailable;",
            "Lo/getErrorPendingIntent<",
            "Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    check-cast p2, Lo/isPlayServicesPossiblyUpdating$onTransact;

    .line 313
    iget-object v0, p2, Lo/isPlayServicesPossiblyUpdating$onTransact;->onPostMessage:Lo/getStartServicePackage;

    .line 314
    invoke-interface {v0}, Lo/getStartServicePackage;->newSession()Lo/DataHolder$zaa;

    move-result-object v0

    invoke-interface {v0}, Lo/DataHolder$zaa;->onNavigationEvent()Lo/getStartServicePackage;

    move-result-object v0

    .line 316
    invoke-virtual {p1}, Lo/getMobileAdsSettingsManager;->onNavigationEvent()I

    move-result v1

    if-nez v1, :cond_0

    .line 318
    sget-object p1, Lo/cancelAvailabilityErrorNotifications;->extraCallback:[B

    goto :goto_0

    .line 319
    :cond_0
    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 320
    invoke-virtual {p1, v2, v3, v3, v1}, Lo/getMobileAdsSettingsManager;->onMessageChannelReady([BIII)V

    move-object p1, v2

    .line 322
    :goto_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 323
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 324
    new-instance v1, Lo/createNativeAdViewDelegate;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lo/createNativeAdViewDelegate;-><init>(Ljava/nio/ByteBuffer;Z)V

    .line 327
    invoke-static {}, Lo/getGetServiceRequestExtraArgs;->ICustomTabsCallback()Lo/getGetServiceRequestExtraArgs;

    move-result-object p1

    .line 328
    invoke-virtual {p1, v0}, Lo/getGetServiceRequestExtraArgs;->onMessageChannelReady(Ljava/lang/Object;)Lo/getService;

    move-result-object p1

    invoke-interface {p1, v0, v1, p3}, Lo/getService;->onMessageChannelReady(Ljava/lang/Object;Lo/getApiFeatures;Lo/isGooglePlayServicesAvailable;)V

    .line 329
    iget-object p1, p2, Lo/isPlayServicesPossiblyUpdating$onTransact;->ICustomTabsCallback:Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;

    invoke-virtual {p4, p1, v0}, Lo/getErrorPendingIntent;->onMessageChannelReady(Lo/getRemoteContext;Ljava/lang/Object;)V

    .line 330
    invoke-interface {v1}, Lo/getApiFeatures;->onMessageChannelReady()I

    move-result p1

    const p2, 0x7fffffff

    if-ne p1, p2, :cond_1

    return-void

    .line 331
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->extraCallback()Lcom/google/android/gms/internal/vision/zzin;

    move-result-object p1

    throw p1

    .line 325
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Direct buffers not yet supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final extraCallback(Lo/getApiFeatures;Ljava/lang/Object;Lo/isGooglePlayServicesAvailable;Lo/getErrorPendingIntent;Ljava/lang/Object;Lo/getMinApkVersion;)Ljava/lang/Object;
    .locals 4
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
            "Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;",
            ">;TUB;",
            "Lo/getMinApkVersion<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    check-cast p2, Lo/isPlayServicesPossiblyUpdating$onTransact;

    .line 9
    iget-object v0, p2, Lo/isPlayServicesPossiblyUpdating$onTransact;->ICustomTabsCallback:Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;

    .line 10
    iget v0, v0, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;->onNavigationEvent:I

    .line 12
    iget-object v1, p2, Lo/isPlayServicesPossiblyUpdating$onTransact;->ICustomTabsCallback:Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;

    .line 13
    iget-boolean v1, v1, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;->ICustomTabsCallback:Z

    .line 17
    iget-object v1, p2, Lo/isPlayServicesPossiblyUpdating$onTransact;->ICustomTabsCallback:Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;

    .line 18
    iget-object v1, v1, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;->onMessageChannelReady:Lo/DynamiteApi;

    .line 19
    sget-object v2, Lo/DynamiteApi;->warmup:Lo/DynamiteApi;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    .line 20
    invoke-interface {p1}, Lo/getApiFeatures;->asBinder()I

    move-result p1

    .line 22
    invoke-interface {v3, p1}, Lo/isRestrictedUserProfile;->onPostMessage(I)Lo/isPlayStorePossiblyUpdating;

    move-result-object p3

    if-nez p3, :cond_0

    .line 24
    invoke-static {v0, p1, p5, p6}, Lo/getConnectionHint;->extraCallback(IILjava/lang/Object;Lo/getMinApkVersion;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 25
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_0

    .line 27
    :cond_1
    sget-object p6, Lo/showErrorDialogFragment;->extraCallback:[I

    .line 28
    iget-object v0, p2, Lo/isPlayServicesPossiblyUpdating$onTransact;->ICustomTabsCallback:Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;

    .line 29
    iget-object v0, v0, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;->onMessageChannelReady:Lo/DynamiteApi;

    .line 30
    invoke-virtual {v0}, Lo/DynamiteApi;->ordinal()I

    move-result v0

    aget p6, p6, v0

    packed-switch p6, :pswitch_data_0

    goto/16 :goto_0

    .line 67
    :pswitch_0
    iget-object p6, p2, Lo/isPlayServicesPossiblyUpdating$onTransact;->onPostMessage:Lo/getStartServicePackage;

    .line 68
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p6

    .line 69
    invoke-interface {p1, p6, p3}, Lo/getApiFeatures;->onNavigationEvent(Ljava/lang/Class;Lo/isGooglePlayServicesAvailable;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 62
    :pswitch_1
    iget-object p6, p2, Lo/isPlayServicesPossiblyUpdating$onTransact;->onPostMessage:Lo/getStartServicePackage;

    .line 63
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p6

    .line 64
    invoke-interface {p1, p6, p3}, Lo/getApiFeatures;->onPostMessage(Ljava/lang/Class;Lo/isGooglePlayServicesAvailable;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 59
    :pswitch_2
    invoke-interface {p1}, Lo/getApiFeatures;->warmup()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 47
    :pswitch_3
    invoke-interface {p1}, Lo/getApiFeatures;->newSession()Lo/getMobileAdsSettingsManager;

    move-result-object v3

    goto/16 :goto_0

    .line 71
    :pswitch_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Shouldn\'t reach here."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :pswitch_5
    invoke-interface {p1}, Lo/getApiFeatures;->mayLaunchUrl()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto/16 :goto_0

    .line 55
    :pswitch_6
    invoke-interface {p1}, Lo/getApiFeatures;->extraCommand()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    .line 53
    :pswitch_7
    invoke-interface {p1}, Lo/getApiFeatures;->requestPostMessageChannel()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    .line 51
    :pswitch_8
    invoke-interface {p1}, Lo/getApiFeatures;->updateVisuals()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    .line 49
    :pswitch_9
    invoke-interface {p1}, Lo/getApiFeatures;->ICustomTabsService()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    .line 45
    :pswitch_a
    invoke-interface {p1}, Lo/getApiFeatures;->ICustomTabsCallback$Stub$Proxy()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 43
    :pswitch_b
    invoke-interface {p1}, Lo/getApiFeatures;->onTransact()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    .line 41
    :pswitch_c
    invoke-interface {p1}, Lo/getApiFeatures;->asInterface()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    .line 39
    :pswitch_d
    invoke-interface {p1}, Lo/getApiFeatures;->asBinder()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    .line 37
    :pswitch_e
    invoke-interface {p1}, Lo/getApiFeatures;->ICustomTabsCallback$Stub()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    .line 35
    :pswitch_f
    invoke-interface {p1}, Lo/getApiFeatures;->onRelationshipValidationResult()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    .line 33
    :pswitch_10
    invoke-interface {p1}, Lo/getApiFeatures;->ICustomTabsCallback()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_0

    .line 31
    :pswitch_11
    invoke-interface {p1}, Lo/getApiFeatures;->onPostMessage()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 73
    :goto_0
    iget-object p1, p2, Lo/isPlayServicesPossiblyUpdating$onTransact;->ICustomTabsCallback:Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;

    iget-boolean p1, p1, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;->ICustomTabsCallback:Z

    if-eqz p1, :cond_2

    .line 75
    iget-object p1, p2, Lo/isPlayServicesPossiblyUpdating$onTransact;->ICustomTabsCallback:Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;

    invoke-virtual {p4, p1, v3}, Lo/getErrorPendingIntent;->extraCallback(Lo/getRemoteContext;Ljava/lang/Object;)V

    goto :goto_2

    .line 76
    :cond_2
    sget-object p1, Lo/showErrorDialogFragment;->extraCallback:[I

    .line 77
    iget-object p3, p2, Lo/isPlayServicesPossiblyUpdating$onTransact;->ICustomTabsCallback:Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;

    .line 78
    iget-object p3, p3, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;->onMessageChannelReady:Lo/DynamiteApi;

    .line 79
    invoke-virtual {p3}, Lo/DynamiteApi;->ordinal()I

    move-result p3

    aget p1, p1, p3

    const/16 p3, 0x11

    if-eq p1, p3, :cond_3

    const/16 p3, 0x12

    if-eq p1, p3, :cond_3

    goto :goto_1

    .line 80
    :cond_3
    iget-object p1, p2, Lo/isPlayServicesPossiblyUpdating$onTransact;->ICustomTabsCallback:Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;

    invoke-virtual {p4, p1}, Lo/getErrorPendingIntent;->onPostMessage(Lo/getRemoteContext;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 82
    invoke-static {p1, v3}, Lo/cancelAvailabilityErrorNotifications;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 83
    :cond_4
    :goto_1
    iget-object p1, p2, Lo/isPlayServicesPossiblyUpdating$onTransact;->ICustomTabsCallback:Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;

    invoke-virtual {p4, p1, v3}, Lo/getErrorPendingIntent;->onMessageChannelReady(Lo/getRemoteContext;Ljava/lang/Object;)V

    :goto_2
    return-object p5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final extraCallback(Ljava/lang/Object;)Lo/getErrorPendingIntent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lo/getErrorPendingIntent<",
            "Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;",
            ">;"
        }
    .end annotation

    .line 3
    check-cast p1, Lo/isPlayServicesPossiblyUpdating$extraCallback;

    iget-object p1, p1, Lo/isPlayServicesPossiblyUpdating$extraCallback;->zzyg:Lo/getErrorPendingIntent;

    return-object p1
.end method

.method final extraCallback(Lo/checkNotNull;Ljava/util/Map$Entry;)V
    .locals 4
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

    .line 90
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;

    .line 92
    iget-boolean v1, v0, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;->ICustomTabsCallback:Z

    if-eqz v1, :cond_2

    .line 94
    sget-object v1, Lo/showErrorDialogFragment;->extraCallback:[I

    .line 95
    iget-object v2, v0, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;->onMessageChannelReady:Lo/DynamiteApi;

    .line 96
    invoke-virtual {v2}, Lo/DynamiteApi;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 214
    :pswitch_0
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 215
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 217
    iget v0, v0, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;->onNavigationEvent:I

    .line 219
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 220
    invoke-static {}, Lo/getGetServiceRequestExtraArgs;->ICustomTabsCallback()Lo/getGetServiceRequestExtraArgs;

    move-result-object v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Lo/getGetServiceRequestExtraArgs;->onNavigationEvent(Ljava/lang/Class;)Lo/getService;

    move-result-object v1

    .line 221
    invoke-static {v0, p2, p1, v1}, Lo/getConnectionHint;->onMessageChannelReady(ILjava/util/List;Lo/checkNotNull;Lo/getService;)V

    goto/16 :goto_0

    .line 205
    :pswitch_1
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 206
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 208
    iget v0, v0, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;->onNavigationEvent:I

    .line 210
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 211
    invoke-static {}, Lo/getGetServiceRequestExtraArgs;->ICustomTabsCallback()Lo/getGetServiceRequestExtraArgs;

    move-result-object v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Lo/getGetServiceRequestExtraArgs;->onNavigationEvent(Ljava/lang/Class;)Lo/getService;

    move-result-object v1

    .line 212
    invoke-static {v0, p2, p1, v1}, Lo/getConnectionHint;->ICustomTabsCallback(ILjava/util/List;Lo/checkNotNull;Lo/getService;)V

    :cond_0
    return-void

    .line 201
    :pswitch_2
    iget v0, v0, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;->onNavigationEvent:I

    .line 202
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 203
    invoke-static {v0, p2, p1}, Lo/getConnectionHint;->extraCallback(ILjava/util/List;Lo/checkNotNull;)V

    return-void

    .line 154
    :pswitch_3
    iget v0, v0, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;->onNavigationEvent:I

    .line 155
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 156
    invoke-static {v0, p2, p1}, Lo/getConnectionHint;->onNavigationEvent(ILjava/util/List;Lo/checkNotNull;)V

    return-void

    .line 194
    :pswitch_4
    iget v0, v0, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;->onNavigationEvent:I

    .line 196
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 198
    invoke-static {v0, p2, p1, v2}, Lo/getConnectionHint;->asBinder(ILjava/util/List;Lo/checkNotNull;Z)V

    return-void

    .line 187
    :pswitch_5
    iget v0, v0, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;->onNavigationEvent:I

    .line 189
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 191
    invoke-static {v0, p2, p1, v2}, Lo/getConnectionHint;->onPostMessage(ILjava/util/List;Lo/checkNotNull;Z)V

    return-void

    .line 180
    :pswitch_6
    iget v0, v0, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;->onNavigationEvent:I

    .line 182
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 184
    invoke-static {v0, p2, p1, v2}, Lo/getConnectionHint;->asInterface(ILjava/util/List;Lo/checkNotNull;Z)V

    return-void

    .line 173
    :pswitch_7
    iget v0, v0, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;->onNavigationEvent:I

    .line 175
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 177
    invoke-static {v0, p2, p1, v2}, Lo/getConnectionHint;->onTransact(ILjava/util/List;Lo/checkNotNull;Z)V

    return-void

    .line 166
    :pswitch_8
    iget v0, v0, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;->onNavigationEvent:I

    .line 168
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 170
    invoke-static {v0, p2, p1, v2}, Lo/getConnectionHint;->getInterfaceDescriptor(ILjava/util/List;Lo/checkNotNull;Z)V

    return-void

    .line 159
    :pswitch_9
    iget v0, v0, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;->onNavigationEvent:I

    .line 161
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 163
    invoke-static {v0, p2, p1, v2}, Lo/getConnectionHint;->onRelationshipValidationResult(ILjava/util/List;Lo/checkNotNull;Z)V

    return-void

    .line 147
    :pswitch_a
    iget v0, v0, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;->onNavigationEvent:I

    .line 149
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 151
    invoke-static {v0, p2, p1, v2}, Lo/getConnectionHint;->ICustomTabsCallback$Stub$Proxy(ILjava/util/List;Lo/checkNotNull;Z)V

    return-void

    .line 140
    :pswitch_b
    iget v0, v0, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;->onNavigationEvent:I

    .line 142
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 144
    invoke-static {v0, p2, p1, v2}, Lo/getConnectionHint;->newSession(ILjava/util/List;Lo/checkNotNull;Z)V

    return-void

    .line 133
    :pswitch_c
    iget v0, v0, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;->onNavigationEvent:I

    .line 135
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 137
    invoke-static {v0, p2, p1, v2}, Lo/getConnectionHint;->ICustomTabsCallback$Stub(ILjava/util/List;Lo/checkNotNull;Z)V

    return-void

    .line 126
    :pswitch_d
    iget v0, v0, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;->onNavigationEvent:I

    .line 128
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 130
    invoke-static {v0, p2, p1, v2}, Lo/getConnectionHint;->asBinder(ILjava/util/List;Lo/checkNotNull;Z)V

    return-void

    .line 119
    :pswitch_e
    iget v0, v0, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;->onNavigationEvent:I

    .line 121
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 123
    invoke-static {v0, p2, p1, v2}, Lo/getConnectionHint;->extraCallback(ILjava/util/List;Lo/checkNotNull;Z)V

    return-void

    .line 112
    :pswitch_f
    iget v0, v0, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;->onNavigationEvent:I

    .line 114
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 116
    invoke-static {v0, p2, p1, v2}, Lo/getConnectionHint;->onNavigationEvent(ILjava/util/List;Lo/checkNotNull;Z)V

    return-void

    .line 105
    :pswitch_10
    iget v0, v0, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;->onNavigationEvent:I

    .line 107
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 109
    invoke-static {v0, p2, p1, v2}, Lo/getConnectionHint;->ICustomTabsCallback(ILjava/util/List;Lo/checkNotNull;Z)V

    return-void

    .line 98
    :pswitch_11
    iget v0, v0, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;->onNavigationEvent:I

    .line 100
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 102
    invoke-static {v0, p2, p1, v2}, Lo/getConnectionHint;->onMessageChannelReady(ILjava/util/List;Lo/checkNotNull;Z)V

    :cond_1
    :goto_0
    return-void

    .line 223
    :cond_2
    sget-object v1, Lo/showErrorDialogFragment;->extraCallback:[I

    .line 224
    iget-object v2, v0, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;->onMessageChannelReady:Lo/DynamiteApi;

    .line 225
    invoke-virtual {v2}, Lo/DynamiteApi;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_1

    .line 298
    :pswitch_12
    iget v0, v0, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;->onNavigationEvent:I

    .line 300
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 301
    invoke-static {}, Lo/getGetServiceRequestExtraArgs;->ICustomTabsCallback()Lo/getGetServiceRequestExtraArgs;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v2, p2}, Lo/getGetServiceRequestExtraArgs;->onNavigationEvent(Ljava/lang/Class;)Lo/getService;

    move-result-object p2

    .line 302
    invoke-interface {p1, v0, v1, p2}, Lo/checkNotNull;->onMessageChannelReady(ILjava/lang/Object;Lo/getService;)V

    goto/16 :goto_1

    .line 291
    :pswitch_13
    iget v0, v0, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;->onNavigationEvent:I

    .line 293
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 294
    invoke-static {}, Lo/getGetServiceRequestExtraArgs;->ICustomTabsCallback()Lo/getGetServiceRequestExtraArgs;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v2, p2}, Lo/getGetServiceRequestExtraArgs;->onNavigationEvent(Ljava/lang/Class;)Lo/getService;

    move-result-object p2

    .line 295
    invoke-interface {p1, v0, v1, p2}, Lo/checkNotNull;->onPostMessage(ILjava/lang/Object;Lo/getService;)V

    return-void

    .line 287
    :pswitch_14
    iget v0, v0, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;->onNavigationEvent:I

    .line 288
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Lo/checkNotNull;->onMessageChannelReady(ILjava/lang/String;)V

    return-void

    .line 259
    :pswitch_15
    iget v0, v0, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;->onNavigationEvent:I

    .line 260
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/getMobileAdsSettingsManager;

    invoke-interface {p1, v0, p2}, Lo/checkNotNull;->onNavigationEvent(ILo/getMobileAdsSettingsManager;)V

    return-void

    .line 283
    :pswitch_16
    iget v0, v0, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;->onNavigationEvent:I

    .line 284
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lo/checkNotNull;->onMessageChannelReady(II)V

    return-void

    .line 279
    :pswitch_17
    iget v0, v0, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;->onNavigationEvent:I

    .line 280
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lo/checkNotNull;->onNavigationEvent(IJ)V

    return-void

    .line 275
    :pswitch_18
    iget v0, v0, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;->onNavigationEvent:I

    .line 276
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lo/checkNotNull;->asBinder(II)V

    return-void

    .line 271
    :pswitch_19
    iget v0, v0, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;->onNavigationEvent:I

    .line 272
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lo/checkNotNull;->onMessageChannelReady(IJ)V

    return-void

    .line 267
    :pswitch_1a
    iget v0, v0, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;->onNavigationEvent:I

    .line 268
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lo/checkNotNull;->extraCallback(II)V

    return-void

    .line 263
    :pswitch_1b
    iget v0, v0, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;->onNavigationEvent:I

    .line 264
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lo/checkNotNull;->ICustomTabsCallback(II)V

    return-void

    .line 255
    :pswitch_1c
    iget v0, v0, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;->onNavigationEvent:I

    .line 256
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, v0, p2}, Lo/checkNotNull;->onMessageChannelReady(IZ)V

    return-void

    .line 251
    :pswitch_1d
    iget v0, v0, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;->onNavigationEvent:I

    .line 252
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lo/checkNotNull;->onPostMessage(II)V

    return-void

    .line 247
    :pswitch_1e
    iget v0, v0, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;->onNavigationEvent:I

    .line 248
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lo/checkNotNull;->extraCallback(IJ)V

    return-void

    .line 243
    :pswitch_1f
    iget v0, v0, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;->onNavigationEvent:I

    .line 244
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lo/checkNotNull;->onMessageChannelReady(II)V

    return-void

    .line 239
    :pswitch_20
    iget v0, v0, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;->onNavigationEvent:I

    .line 240
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lo/checkNotNull;->ICustomTabsCallback(IJ)V

    return-void

    .line 235
    :pswitch_21
    iget v0, v0, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;->onNavigationEvent:I

    .line 236
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lo/checkNotNull;->onPostMessage(IJ)V

    return-void

    .line 231
    :pswitch_22
    iget v0, v0, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;->onNavigationEvent:I

    .line 232
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p1, v0, p2}, Lo/checkNotNull;->onMessageChannelReady(IF)V

    return-void

    .line 227
    :pswitch_23
    iget v0, v0, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;->onNavigationEvent:I

    .line 228
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lo/checkNotNull;->ICustomTabsCallback(ID)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method final onMessageChannelReady(Ljava/lang/Object;)Lo/getErrorPendingIntent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lo/getErrorPendingIntent<",
            "Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;",
            ">;"
        }
    .end annotation

    .line 4
    check-cast p1, Lo/isPlayServicesPossiblyUpdating$extraCallback;

    invoke-virtual {p1}, Lo/isPlayServicesPossiblyUpdating$extraCallback;->onMessageChannelReady()Lo/getErrorPendingIntent;

    move-result-object p1

    return-object p1
.end method

.method final onNavigationEvent(Ljava/util/Map$Entry;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)I"
        }
    .end annotation

    .line 86
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;

    .line 87
    iget p1, p1, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;->onNavigationEvent:I

    return p1
.end method

.method final onNavigationEvent(Lo/isGooglePlayServicesAvailable;Lo/getStartServicePackage;I)Ljava/lang/Object;
    .locals 0

    .line 304
    invoke-virtual {p1, p2, p3}, Lo/isGooglePlayServicesAvailable;->onNavigationEvent(Lo/getStartServicePackage;I)Lo/isPlayServicesPossiblyUpdating$onTransact;

    move-result-object p1

    return-object p1
.end method

.method final onNavigationEvent(Lo/getApiFeatures;Ljava/lang/Object;Lo/isGooglePlayServicesAvailable;Lo/getErrorPendingIntent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getApiFeatures;",
            "Ljava/lang/Object;",
            "Lo/isGooglePlayServicesAvailable;",
            "Lo/getErrorPendingIntent<",
            "Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    check-cast p2, Lo/isPlayServicesPossiblyUpdating$onTransact;

    .line 307
    iget-object v0, p2, Lo/isPlayServicesPossiblyUpdating$onTransact;->onPostMessage:Lo/getStartServicePackage;

    .line 308
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p1, v0, p3}, Lo/getApiFeatures;->onNavigationEvent(Ljava/lang/Class;Lo/isGooglePlayServicesAvailable;)Ljava/lang/Object;

    move-result-object p1

    .line 309
    iget-object p2, p2, Lo/isPlayServicesPossiblyUpdating$onTransact;->ICustomTabsCallback:Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;

    invoke-virtual {p4, p2, p1}, Lo/getErrorPendingIntent;->onMessageChannelReady(Lo/getRemoteContext;Ljava/lang/Object;)V

    return-void
.end method

.method final onPostMessage(Lo/getStartServicePackage;)Z
    .locals 0

    .line 2
    instance-of p1, p1, Lo/isPlayServicesPossiblyUpdating$extraCallback;

    return p1
.end method
