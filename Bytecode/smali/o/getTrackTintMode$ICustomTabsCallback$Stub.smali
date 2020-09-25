.class public final Lo/getTrackTintMode$ICustomTabsCallback$Stub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/AppsFlyerConversionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getTrackTintMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010%\n\u0002\u0010\u0000\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u0006H\u0016J\u0012\u0010\t\u001a\u00020\u00032\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0006H\u0016J\u001e\u0010\n\u001a\u00020\u00032\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000bH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/dreamplug/androidapp/analytics/AnalyticsManager$initialiseAppsFlyer$conversionDataListener$1",
        "Lcom/appsflyer/AppsFlyerConversionListener;",
        "onAppOpenAttribution",
        "",
        "map",
        "",
        "",
        "onAttributionFailure",
        "s",
        "onConversionDataFail",
        "onConversionDataSuccess",
        "",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAppOpenAttribution(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "map"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onAttributionFailure(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "s"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "error onAttributionFailure : "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppsFlyerLib"

    const-string/jumbo v1, "tag"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6065
    invoke-static {v0, p1}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onConversionDataFail(Ljava/lang/String;)V
    .locals 2

    .line 114
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "error getting conversion data: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppsFlyerLib"

    const-string/jumbo v1, "tag"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5065
    invoke-static {v0, p1}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onConversionDataSuccess(Ljava/util/Map;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 76
    sget-object v1, Lo/getTrackTintMode;->onMessageChannelReady:Lo/getTrackTintMode;

    invoke-static {}, Lo/getTrackTintMode;->onMessageChannelReady()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 77
    sget-object v1, Lo/getTrackTintMode;->onMessageChannelReady:Lo/getTrackTintMode;

    invoke-static {}, Lo/getTrackTintMode;->extraCallback()V

    .line 78
    sget-object v1, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "campaign_id"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    instance-of v3, v2, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v2, v1

    :cond_1
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lo/onDestroyOptionsMenu;->onNavigationEvent(Ljava/lang/String;)V

    .line 79
    sget-object v2, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    const-string v2, "code"

    if-eqz v0, :cond_2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v1

    :goto_1
    instance-of v4, v3, Ljava/lang/String;

    if-nez v4, :cond_3

    move-object v3, v1

    :cond_3
    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lo/onDestroyOptionsMenu;->onPostMessage(Ljava/lang/String;)V

    .line 80
    sget-object v3, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    if-eqz v0, :cond_4

    const-string v3, "campaign_type"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2

    :cond_4
    move-object v3, v1

    :goto_2
    instance-of v4, v3, Ljava/lang/String;

    if-nez v4, :cond_5

    move-object v3, v1

    :cond_5
    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lo/onDestroyOptionsMenu;->extraCallback(Ljava/lang/String;)V

    const-string v3, "media_source"

    if-eqz v0, :cond_6

    .line 81
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_3

    :cond_6
    move-object v4, v1

    .line 82
    :goto_3
    sget-object v5, Lo/getTrackTintMode;->onMessageChannelReady:Lo/getTrackTintMode;

    const/4 v5, 0x1

    new-array v6, v5, [Lo/addWrite;

    .line 1043
    new-instance v7, Lo/addWrite;

    invoke-direct {v7, v3, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v7, v6, v3

    const-string v4, "pairs"

    .line 82
    invoke-static {v6, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1105
    new-instance v4, Ljava/util/HashMap;

    invoke-static {v5}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    check-cast v4, Ljava/util/Map;

    invoke-static {v4, v6}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 82
    invoke-static {v4}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/util/Map;)V

    if-eqz v0, :cond_7

    .line 84
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_7

    check-cast v4, Ljava/lang/Iterable;

    .line 341
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "AppsFlyerLib"

    .line 85
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "attribute: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "tag"

    invoke-static {v6, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2065
    invoke-static {v6, v5}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    if-eqz v0, :cond_8

    const-string v4, "cred_referral_code"

    .line 87
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_5

    :cond_8
    move-object v4, v1

    :goto_5
    instance-of v5, v4, Ljava/lang/String;

    if-nez v5, :cond_9

    move-object v4, v1

    :cond_9
    check-cast v4, Ljava/lang/String;

    if-eqz v0, :cond_a

    const-string v5, "cred_referral_name"

    .line 88
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_6

    :cond_a
    move-object v5, v1

    :goto_6
    instance-of v6, v5, Ljava/lang/String;

    if-nez v6, :cond_b

    move-object v5, v1

    :cond_b
    check-cast v5, Ljava/lang/String;

    if-eqz v0, :cond_c

    const-string v6, "cred_referral_campaign_id"

    .line 89
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_7

    :cond_c
    move-object v6, v1

    :goto_7
    instance-of v7, v6, Ljava/lang/String;

    if-nez v7, :cond_d

    move-object v6, v1

    :cond_d
    move-object v15, v6

    check-cast v15, Ljava/lang/String;

    if-eqz v0, :cond_e

    const-string v6, "cred_referral_is_gifting"

    .line 90
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_8

    :cond_e
    move-object v6, v1

    :goto_8
    instance-of v7, v6, Ljava/lang/String;

    if-nez v7, :cond_f

    move-object v6, v1

    :cond_f
    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_10

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    move v8, v3

    goto :goto_9

    :cond_10
    const/4 v8, 0x0

    :goto_9
    if-eqz v0, :cond_11

    const-string v3, "cred_referral_experiment"

    .line 92
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_a

    :cond_11
    move-object v3, v1

    :goto_a
    instance-of v6, v3, Ljava/lang/String;

    if-nez v6, :cond_12

    move-object v3, v1

    :cond_12
    move-object v10, v3

    check-cast v10, Ljava/lang/String;

    if-eqz v0, :cond_13

    const-string v3, "cred_referral_created_on"

    .line 93
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_b

    :cond_13
    move-object v3, v1

    :goto_b
    instance-of v6, v3, Ljava/lang/String;

    if-nez v6, :cond_14

    move-object v3, v1

    :cond_14
    move-object v11, v3

    check-cast v11, Ljava/lang/String;

    if-eqz v0, :cond_15

    const-string v3, "cred_referral_screen"

    .line 94
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_c

    :cond_15
    move-object v3, v1

    :goto_c
    instance-of v6, v3, Ljava/lang/String;

    if-nez v6, :cond_16

    move-object v3, v1

    :cond_16
    move-object v12, v3

    check-cast v12, Ljava/lang/String;

    if-eqz v0, :cond_17

    const-string v3, "cred_referral_source"

    .line 95
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_d

    :cond_17
    move-object v3, v1

    :goto_d
    instance-of v6, v3, Ljava/lang/String;

    if-nez v6, :cond_18

    move-object v3, v1

    :cond_18
    move-object v13, v3

    check-cast v13, Ljava/lang/String;

    if-eqz v0, :cond_19

    const-string v3, "cred_referral_instrument_id"

    .line 96
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_e

    :cond_19
    move-object v0, v1

    :goto_e
    instance-of v3, v0, Ljava/lang/String;

    if-nez v3, :cond_1a

    move-object v0, v1

    :cond_1a
    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    const/16 v0, 0x11

    if-eqz v4, :cond_1d

    if-eqz v5, :cond_1d

    .line 99
    sget-object v3, Lo/cancelSuperTouch;->asInterface:Lo/cancelSuperTouch;

    .line 2320
    iget-object v3, v3, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object v6, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v3, v6, :cond_1b

    move-object v1, v3

    :cond_1b
    if-nez v1, :cond_1c

    .line 100
    sget-object v1, Lo/cancelSuperTouch;->asInterface:Lo/cancelSuperTouch;

    invoke-static {v4, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "name"

    invoke-static {v5, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3008
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "(this as java.lang.String).toLowerCase()"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lo/childWrites;->onTransact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v2, Lo/toggle;

    move-object v5, v2

    move-object v7, v4

    move-object v9, v15

    invoke-direct/range {v5 .. v14}, Lo/toggle;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lo/getThumbTintList;

    invoke-direct {v3, v2}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 102
    :cond_1c
    sget-object v1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 4000
    sget-object v1, Lo/setTrackTintMode;->extraCommand:Lo/setTitleTextColor;

    sget-object v2, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 103
    sget-object v1, Lo/superGetDrawable;->ICustomTabsCallback:Lo/superGetDrawable;

    invoke-virtual {v1, v4, v15}, Lo/superGetDrawable;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_1d
    sget-object v1, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    invoke-static {}, Lo/onDestroyOptionsMenu;->onPostMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1e

    sget-object v1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 5000
    sget-object v1, Lo/setTrackTintMode;->extraCommand:Lo/setTitleTextColor;

    sget-object v2, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 108
    sget-object v0, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    invoke-virtual {v0}, Lo/onDestroyOptionsMenu;->extraCallback()V

    :cond_1e
    return-void
.end method
