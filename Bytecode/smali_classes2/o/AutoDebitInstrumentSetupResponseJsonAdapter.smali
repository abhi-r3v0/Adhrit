.class public final Lo/AutoDebitInstrumentSetupResponseJsonAdapter;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# static fields
.field private static final onMessageChannelReady:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyyMMdd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lo/AutoDebitInstrumentSetupResponseJsonAdapter;->onMessageChannelReady:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static ICustomTabsCallback(Landroid/content/Context;Lo/setCardBackgroundView;Ljava/lang/String;)Lo/setOnCtaClick;
    .locals 54

    move-object/from16 v0, p1

    const-string v1, "interstitial_timeout"

    const-string v10, ""

    const/4 v15, 0x0

    :try_start_0
    new-instance v11, Lorg/json/JSONObject;

    move-object/from16 v2, p2

    invoke-direct {v11, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "ad_base_url"

    const/4 v12, 0x0

    invoke-virtual {v11, v2, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ad_url"

    invoke-virtual {v11, v3, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v3, "ad_size"

    invoke-virtual {v11, v3, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v3, "ad_slot_size"

    invoke-virtual {v11, v3, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    if-eqz v0, :cond_0

    iget v3, v0, Lo/setCardBackgroundView;->ICustomTabsCallback$Stub$Proxy:I

    if-eqz v3, :cond_0

    const/16 v24, 0x1

    goto :goto_0

    :cond_0
    const/16 v24, 0x0

    :goto_0
    const-string v3, "ad_json"

    invoke-virtual {v11, v3, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "ad_html"

    invoke-virtual {v11, v3, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    if-nez v3, :cond_2

    const-string v3, "body"

    invoke-virtual {v11, v3, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    if-nez v3, :cond_3

    const-string v5, "ads"

    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    const-string v5, "debug_dialog"

    invoke-virtual {v11, v5, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v5, "debug_signals"

    invoke-virtual {v11, v5, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    const-wide/16 v8, -0x1

    if-eqz v5, :cond_4

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v5, v5, v16

    double-to-long v5, v5

    move-wide/from16 v16, v5

    goto :goto_1

    :cond_4
    move-wide/from16 v16, v8

    :goto_1
    const-string v1, "orientation"

    invoke-virtual {v11, v1, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "portrait"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v7, -0x1

    if-eqz v5, :cond_5

    invoke-static {}, Lo/getParcel;->onTransact()Lo/getAccount_number;

    move-result-object v1

    invoke-virtual {v1}, Lo/getAccount_number;->onMessageChannelReady()I

    move-result v1

    :goto_2
    move/from16 v18, v1

    goto :goto_3

    :cond_5
    const-string v5, "landscape"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lo/getParcel;->onTransact()Lo/getAccount_number;

    move-result-object v1

    invoke-virtual {v1}, Lo/getAccount_number;->ICustomTabsCallback()I

    move-result v1

    goto :goto_2

    :cond_6
    const/16 v18, -0x1

    :goto_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Lo/setCardBackgroundView;->warmup:Lo/DataListJsonAdapter;

    iget-object v3, v1, Lo/DataListJsonAdapter;->extraCallback:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    const/4 v14, -0x1

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v9, v22

    invoke-static/range {v1 .. v9}, Lo/AutoDebitConfirmDialog$onViewCreated$10$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent(Lo/setCardBackgroundView;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/getRedirectUrl;Lo/setCanReverse;Lo/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;)Lo/setOnCtaClick;

    move-result-object v1

    iget-object v2, v1, Lo/setOnCtaClick;->onMessageChannelReady:Ljava/lang/String;

    iget-object v3, v1, Lo/setOnCtaClick;->extraCallback:Ljava/lang/String;

    iget-wide v4, v1, Lo/setOnCtaClick;->getInterfaceDescriptor:J

    move-wide/from16 v20, v4

    move-object v4, v3

    goto :goto_4

    :cond_7
    const/4 v14, -0x1

    move-object v4, v3

    move-object v1, v12

    const-wide/16 v20, -0x1

    :goto_4
    move-object v3, v2

    if-nez v4, :cond_8

    new-instance v0, Lo/setOnCtaClick;

    invoke-direct {v0, v15}, Lo/setOnCtaClick;-><init>(I)V

    return-object v0

    :cond_8
    const-string v2, "click_urls"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v1, :cond_9

    move-object v5, v12

    goto :goto_5

    :cond_9
    iget-object v5, v1, Lo/setOnCtaClick;->onPostMessage:Ljava/util/List;

    :goto_5
    if-eqz v2, :cond_a

    invoke-static {v2, v5}, Lo/AutoDebitInstrumentSetupResponseJsonAdapter;->onMessageChannelReady(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object v5, v2

    :cond_a
    const-string v2, "impression_urls"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v1, :cond_b

    move-object v6, v12

    goto :goto_6

    :cond_b
    iget-object v6, v1, Lo/setOnCtaClick;->ICustomTabsCallback:Ljava/util/List;

    :goto_6
    if-eqz v2, :cond_c

    invoke-static {v2, v6}, Lo/AutoDebitInstrumentSetupResponseJsonAdapter;->onMessageChannelReady(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object v6, v2

    :cond_c
    const-string v2, "downloaded_impression_urls"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v1, :cond_d

    move-object v7, v12

    goto :goto_7

    :cond_d
    iget-object v7, v1, Lo/setOnCtaClick;->connect:Ljava/util/List;

    :goto_7
    if-eqz v2, :cond_e

    invoke-static {v2, v7}, Lo/AutoDebitInstrumentSetupResponseJsonAdapter;->onMessageChannelReady(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v48, v2

    goto :goto_8

    :cond_e
    move-object/from16 v48, v7

    :goto_8
    const-string v2, "manual_impression_urls"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v1, :cond_f

    move-object v7, v12

    goto :goto_9

    :cond_f
    iget-object v7, v1, Lo/setOnCtaClick;->ICustomTabsCallback$Stub:Ljava/util/List;

    :goto_9
    if-eqz v2, :cond_10

    invoke-static {v2, v7}, Lo/AutoDebitInstrumentSetupResponseJsonAdapter;->onMessageChannelReady(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v22, v2

    goto :goto_a

    :cond_10
    move-object/from16 v22, v7

    :goto_a
    if-eqz v1, :cond_12

    iget v2, v1, Lo/setOnCtaClick;->warmup:I

    if-eq v2, v14, :cond_11

    iget v2, v1, Lo/setOnCtaClick;->warmup:I

    move/from16 v18, v2

    :cond_11
    iget-wide v7, v1, Lo/setOnCtaClick;->onRelationshipValidationResult:J

    const-wide/16 v25, 0x0

    cmp-long v2, v7, v25

    if-lez v2, :cond_12

    iget-wide v1, v1, Lo/setOnCtaClick;->onRelationshipValidationResult:J

    move-wide v7, v1

    goto :goto_b

    :cond_12
    move-wide/from16 v7, v16

    :goto_b
    const-string v1, "active_view"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v1, "ad_is_javascript"

    invoke-virtual {v11, v1, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v25

    if-eqz v25, :cond_13

    const-string v1, "ad_passback_url"

    invoke-virtual {v11, v1, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v26, v1

    goto :goto_c

    :cond_13
    move-object/from16 v26, v12

    :goto_c
    const-string v1, "mediation"

    invoke-virtual {v11, v1, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    const-string v1, "custom_render_allowed"

    invoke-virtual {v11, v1, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v27

    const-string v1, "content_url_opted_out"

    const/4 v2, 0x1

    invoke-virtual {v11, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v28

    const-string v1, "content_vertical_opted_out"

    invoke-virtual {v11, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v43

    const-string v1, "prefetch"

    invoke-virtual {v11, v1, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v29

    const-string v1, "refresh_interval_milliseconds"

    move-object v14, v13

    const-wide/16 v12, -0x1

    invoke-virtual {v11, v1, v12, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v16

    const-string v1, "mediation_config_cache_time_milliseconds"

    invoke-virtual {v11, v1, v12, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v12

    const-string v1, "gws_query_id"

    invoke-virtual {v11, v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string v1, "height"

    const-string v2, "fluid"

    invoke-virtual {v11, v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    const-string v1, "native_express"

    invoke-virtual {v11, v1, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v32

    const-string v1, "video_start_urls"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lo/AutoDebitInstrumentSetupResponseJsonAdapter;->onMessageChannelReady(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v33

    const-string v1, "video_complete_urls"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1, v2}, Lo/AutoDebitInstrumentSetupResponseJsonAdapter;->onMessageChannelReady(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v34

    const-string v1, "rewards"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lo/FooterActions;->extraCallback(Lorg/json/JSONArray;)Lo/FooterActions;

    move-result-object v35

    const-string v1, "use_displayed_impression"

    invoke-virtual {v11, v1, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v36

    const-string v1, "auto_protection_configuration"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lo/AddressListResponseJsonAdapter;->onMessageChannelReady(Lorg/json/JSONObject;)Lo/AddressListResponseJsonAdapter;

    move-result-object v37

    const-string v1, "set_cookie"

    invoke-virtual {v11, v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    const-string v1, "remote_ping_urls"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lo/AutoDebitInstrumentSetupResponseJsonAdapter;->onMessageChannelReady(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v39

    const-string v1, "safe_browsing"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lo/NudgeJsonAdapter;->ICustomTabsCallback(Lorg/json/JSONObject;)Lo/NudgeJsonAdapter;

    move-result-object v41

    const-string v1, "render_in_browser"

    iget-boolean v2, v0, Lo/setCardBackgroundView;->read:Z

    invoke-virtual {v11, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v44

    const-string v1, "custom_close_blocked"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v45

    const-string v1, "enable_omid"

    invoke-virtual {v11, v1, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v47

    const-string v1, "omid_settings"

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    const-string v1, "disable_closable_area"

    invoke-virtual {v11, v1, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v49

    new-instance v51, Lo/setOnCtaClick;

    iget-boolean v10, v0, Lo/setCardBackgroundView;->extraCommand:Z

    iget-boolean v11, v0, Lo/setCardBackgroundView;->setDefaultImpl:Z

    iget-boolean v2, v0, Lo/setCardBackgroundView;->isConnected:Z

    const/16 v46, 0x0

    move-object/from16 v1, v51

    move/from16 v52, v2

    move-object/from16 v2, p1

    move v0, v10

    move/from16 v53, v11

    move-wide v10, v12

    move-object/from16 v12, v22

    move-object/from16 v22, v14

    move-wide/from16 v13, v16

    move/from16 v15, v18

    move-object/from16 v16, v22

    move-wide/from16 v17, v20

    move/from16 v20, v25

    move-object/from16 v21, v26

    move-object/from16 v22, v23

    move/from16 v23, v27

    move/from16 v25, v0

    move/from16 v26, v28

    move/from16 v27, v29

    move-object/from16 v28, v30

    move/from16 v29, v31

    move/from16 v30, v32

    move-object/from16 v31, v35

    move-object/from16 v32, v33

    move-object/from16 v33, v34

    move/from16 v34, v36

    move-object/from16 v35, v37

    move/from16 v36, v53

    move-object/from16 v37, v38

    move-object/from16 v38, v39

    move/from16 v39, v44

    move/from16 v44, v52

    invoke-direct/range {v1 .. v50}, Lo/setOnCtaClick;-><init>(Lo/setCardBackgroundView;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;ZZLo/FooterActions;Ljava/util/List;Ljava/util/List;ZLo/AddressListResponseJsonAdapter;ZLjava/lang/String;Ljava/util/List;ZLjava/lang/String;Lo/NudgeJsonAdapter;Ljava/lang/String;ZZZIZLjava/util/List;ZLjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v51

    :catch_0
    move-exception v0

    const-string v1, "Could not parse the inline ad response: "

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_14
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_d
    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    new-instance v0, Lo/setOnCtaClick;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/setOnCtaClick;-><init>(I)V

    return-object v0
.end method

.method private static extraCallback(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static extraCallback(Landroid/content/Context;Lo/AutoDebitInstrumentSetupRequestBody;)Lorg/json/JSONObject;
    .locals 23

    move-object/from16 v1, p1

    const-string v2, "web_view_count"

    iget-object v3, v1, Lo/AutoDebitInstrumentSetupRequestBody;->onTransact:Lo/setCardBackgroundView;

    iget-object v4, v1, Lo/AutoDebitInstrumentSetupRequestBody;->onMessageChannelReady:Landroid/location/Location;

    iget-object v5, v1, Lo/AutoDebitInstrumentSetupRequestBody;->ICustomTabsService:Lo/AutoDebitRegistrationStatusResponse;

    iget-object v6, v1, Lo/AutoDebitInstrumentSetupRequestBody;->ICustomTabsCallback:Landroid/os/Bundle;

    iget-object v7, v1, Lo/AutoDebitInstrumentSetupRequestBody;->ICustomTabsCallback$Stub$Proxy:Lorg/json/JSONObject;

    :try_start_0
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const-string v10, "extra_caps"

    sget-object v11, Lo/WinningTypes;->getMediaUri:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v12

    invoke-virtual {v12, v11}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v1, Lo/AutoDebitInstrumentSetupRequestBody;->onPostMessage:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    const-string v11, ","

    if-lez v10, :cond_0

    :try_start_1
    const-string v10, "eid"

    iget-object v12, v1, Lo/AutoDebitInstrumentSetupRequestBody;->onPostMessage:Ljava/util/List;

    invoke-static {v11, v12}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v10, v3, Lo/setCardBackgroundView;->extraCallback:Landroid/os/Bundle;

    if-eqz v10, :cond_1

    const-string v10, "ad_pos"

    iget-object v12, v3, Lo/setCardBackgroundView;->extraCallback:Landroid/os/Bundle;

    invoke-virtual {v9, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v10, v3, Lo/setCardBackgroundView;->onNavigationEvent:Lo/setLastItem;

    invoke-static {}, Lo/Contact;->extraCallback()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2

    const-string v13, "abf"

    invoke-virtual {v9, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-wide v12, v10, Lo/setLastItem;->ICustomTabsCallback:J

    const-wide/16 v14, -0x1

    cmp-long v16, v12, v14

    if-eqz v16, :cond_3

    const-string v12, "cust_age"

    sget-object v13, Lo/AutoDebitInstrumentSetupResponseJsonAdapter;->onMessageChannelReady:Ljava/text/SimpleDateFormat;

    new-instance v8, Ljava/util/Date;

    iget-wide v14, v10, Lo/setLastItem;->ICustomTabsCallback:J

    invoke-direct {v8, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v13, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v8, v10, Lo/setLastItem;->extraCallback:Landroid/os/Bundle;

    if-eqz v8, :cond_4

    const-string v8, "extras"

    iget-object v12, v10, Lo/setLastItem;->extraCallback:Landroid/os/Bundle;

    invoke-virtual {v9, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget v8, v10, Lo/setLastItem;->onPostMessage:I

    const/4 v12, -0x1

    if-eq v8, v12, :cond_5

    const-string v8, "cust_gender"

    iget v13, v10, Lo/setLastItem;->onPostMessage:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v8, v10, Lo/setLastItem;->onNavigationEvent:Ljava/util/List;

    if-eqz v8, :cond_6

    const-string v8, "kw"

    iget-object v13, v10, Lo/setLastItem;->onNavigationEvent:Ljava/util/List;

    invoke-virtual {v9, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget v8, v10, Lo/setLastItem;->asBinder:I

    if-eq v8, v12, :cond_7

    const-string v8, "tag_for_child_directed_treatment"

    iget v13, v10, Lo/setLastItem;->asBinder:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-boolean v8, v10, Lo/setLastItem;->onTransact:Z

    const/4 v13, 0x1

    if-eqz v8, :cond_9

    sget-object v8, Lo/WinningTypes;->onExtrasChanged:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v14

    invoke-virtual {v14, v8}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, "test_request"

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    :goto_0
    invoke-virtual {v9, v8, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_8
    const-string v8, "adtest"

    const-string v14, "on"

    goto :goto_0

    :cond_9
    :goto_1
    iget v8, v10, Lo/setLastItem;->onMessageChannelReady:I

    const/4 v14, 0x2

    if-lt v8, v14, :cond_b

    iget-boolean v8, v10, Lo/setLastItem;->onRelationshipValidationResult:Z

    if-eqz v8, :cond_a

    const-string v8, "d_imp_hdr"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    iget-object v8, v10, Lo/setLastItem;->ICustomTabsCallback$Stub:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    const-string v8, "ppid"

    iget-object v15, v10, Lo/setLastItem;->ICustomTabsCallback$Stub:Ljava/lang/String;

    invoke-virtual {v9, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iget v8, v10, Lo/setLastItem;->onMessageChannelReady:I

    const/4 v15, 0x3

    if-lt v8, v15, :cond_c

    iget-object v8, v10, Lo/setLastItem;->ICustomTabsService:Ljava/lang/String;

    if-eqz v8, :cond_c

    const-string v8, "url"

    iget-object v15, v10, Lo/setLastItem;->ICustomTabsService:Ljava/lang/String;

    invoke-virtual {v9, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    iget v8, v10, Lo/setLastItem;->onMessageChannelReady:I

    const/4 v15, 0x5

    if-lt v8, v15, :cond_f

    iget-object v8, v10, Lo/setLastItem;->newSession:Landroid/os/Bundle;

    if-eqz v8, :cond_d

    const-string v8, "custom_targeting"

    iget-object v15, v10, Lo/setLastItem;->newSession:Landroid/os/Bundle;

    invoke-virtual {v9, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    iget-object v8, v10, Lo/setLastItem;->warmup:Ljava/util/List;

    if-eqz v8, :cond_e

    const-string v8, "category_exclusions"

    iget-object v15, v10, Lo/setLastItem;->warmup:Ljava/util/List;

    invoke-virtual {v9, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    iget-object v8, v10, Lo/setLastItem;->extraCommand:Ljava/lang/String;

    if-eqz v8, :cond_f

    const-string v8, "request_agent"

    iget-object v15, v10, Lo/setLastItem;->extraCommand:Ljava/lang/String;

    invoke-virtual {v9, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    iget v8, v10, Lo/setLastItem;->onMessageChannelReady:I

    const/4 v15, 0x6

    if-lt v8, v15, :cond_10

    iget-object v8, v10, Lo/setLastItem;->postMessage:Ljava/lang/String;

    if-eqz v8, :cond_10

    const-string v8, "request_pkg"

    iget-object v15, v10, Lo/setLastItem;->postMessage:Ljava/lang/String;

    invoke-virtual {v9, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    iget v8, v10, Lo/setLastItem;->onMessageChannelReady:I

    const/4 v15, 0x7

    if-lt v8, v15, :cond_11

    const-string v8, "is_designed_for_families"

    iget-boolean v10, v10, Lo/setLastItem;->mayLaunchUrl:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    iget-object v8, v3, Lo/setCardBackgroundView;->onPostMessage:Lo/setCurrentItem$default;

    iget-object v8, v8, Lo/setCurrentItem$default;->asInterface:[Lo/setCurrentItem$default;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    const-string v10, "height"

    const-string v15, "fluid"

    const-string v14, "format"

    if-nez v8, :cond_12

    :try_start_2
    iget-object v8, v3, Lo/setCardBackgroundView;->onPostMessage:Lo/setCurrentItem$default;

    iget-object v8, v8, Lo/setCurrentItem$default;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v9, v14, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v3, Lo/setCardBackgroundView;->onPostMessage:Lo/setCurrentItem$default;

    iget-boolean v8, v8, Lo/setCurrentItem$default;->ICustomTabsCallback$Stub:Z

    if-eqz v8, :cond_16

    invoke-virtual {v9, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_12
    iget-object v8, v3, Lo/setCardBackgroundView;->onPostMessage:Lo/setCurrentItem$default;

    iget-object v8, v8, Lo/setCurrentItem$default;->asInterface:[Lo/setCurrentItem$default;

    array-length v13, v8

    const/4 v12, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_2
    if-ge v12, v13, :cond_16

    move/from16 v21, v13

    aget-object v13, v8, v12

    move-object/from16 v22, v8

    iget-boolean v8, v13, Lo/setCurrentItem$default;->ICustomTabsCallback$Stub:Z

    if-nez v8, :cond_13

    if-nez v19, :cond_13

    iget-object v8, v13, Lo/setCurrentItem$default;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v9, v14, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v19, 0x1

    :cond_13
    iget-boolean v8, v13, Lo/setCurrentItem$default;->ICustomTabsCallback$Stub:Z

    if-eqz v8, :cond_14

    if-nez v20, :cond_14

    invoke-virtual {v9, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v20, 0x1

    :cond_14
    if-eqz v19, :cond_15

    if-nez v20, :cond_16

    :cond_15
    add-int/lit8 v12, v12, 0x1

    move/from16 v13, v21

    move-object/from16 v8, v22

    goto :goto_2

    :cond_16
    :goto_3
    iget-object v8, v3, Lo/setCardBackgroundView;->onPostMessage:Lo/setCurrentItem$default;

    iget v8, v8, Lo/setCurrentItem$default;->ICustomTabsCallback:I

    const/4 v10, -0x1

    if-ne v8, v10, :cond_17

    const-string v8, "smart_w"

    const-string v10, "full"

    invoke-virtual {v9, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    iget-object v8, v3, Lo/setCardBackgroundView;->onPostMessage:Lo/setCurrentItem$default;

    iget v8, v8, Lo/setCurrentItem$default;->onNavigationEvent:I

    const/4 v10, -0x2

    if-ne v8, v10, :cond_18

    const-string v8, "smart_h"

    const-string v12, "auto"

    invoke-virtual {v9, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    iget-object v8, v3, Lo/setCardBackgroundView;->onPostMessage:Lo/setCurrentItem$default;

    iget-object v8, v8, Lo/setCurrentItem$default;->asInterface:[Lo/setCurrentItem$default;

    if-eqz v8, :cond_20

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v3, Lo/setCardBackgroundView;->onPostMessage:Lo/setCurrentItem$default;

    iget-object v12, v12, Lo/setCurrentItem$default;->asInterface:[Lo/setCurrentItem$default;

    array-length v13, v12
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_4
    const-string v10, "|"

    if-ge v15, v13, :cond_1d

    move/from16 v20, v13

    :try_start_3
    aget-object v13, v12, v15

    move-object/from16 v21, v12

    iget-boolean v12, v13, Lo/setCurrentItem$default;->ICustomTabsCallback$Stub:Z

    if-eqz v12, :cond_19

    const/4 v14, 0x1

    goto :goto_7

    :cond_19
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-eqz v12, :cond_1a

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    iget v10, v13, Lo/setCurrentItem$default;->ICustomTabsCallback:I

    const/4 v12, -0x1

    if-ne v10, v12, :cond_1b

    iget v10, v13, Lo/setCurrentItem$default;->onTransact:I

    int-to-float v10, v10

    iget v12, v5, Lo/AutoDebitRegistrationStatusResponse;->postMessage:F

    div-float/2addr v10, v12

    float-to-int v10, v10

    goto :goto_5

    :cond_1b
    iget v10, v13, Lo/setCurrentItem$default;->ICustomTabsCallback:I

    :goto_5
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "x"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v13, Lo/setCurrentItem$default;->onNavigationEvent:I

    const/4 v12, -0x2

    if-ne v10, v12, :cond_1c

    iget v10, v13, Lo/setCurrentItem$default;->onPostMessage:I

    int-to-float v10, v10

    iget v12, v5, Lo/AutoDebitRegistrationStatusResponse;->postMessage:F

    div-float/2addr v10, v12

    float-to-int v10, v10

    goto :goto_6

    :cond_1c
    iget v10, v13, Lo/setCurrentItem$default;->onNavigationEvent:I

    :goto_6
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_7
    add-int/lit8 v15, v15, 0x1

    move/from16 v13, v20

    move-object/from16 v12, v21

    goto :goto_4

    :cond_1d
    if-eqz v14, :cond_1f

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-eqz v12, :cond_1e

    const/4 v12, 0x0

    invoke-virtual {v8, v12, v10}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_1e
    const/4 v12, 0x0

    :goto_8
    const-string v10, "320x50"

    invoke-virtual {v8, v12, v10}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1f
    const-string v10, "sz"

    invoke-virtual {v9, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    iget v8, v3, Lo/setCardBackgroundView;->ICustomTabsCallback$Stub$Proxy:I

    const/16 v10, 0x18

    if-eqz v8, :cond_27

    const-string v8, "native_version"

    iget v12, v3, Lo/setCardBackgroundView;->ICustomTabsCallback$Stub$Proxy:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "native_templates"

    iget-object v12, v3, Lo/setCardBackgroundView;->newSession:Ljava/util/List;

    invoke-virtual {v9, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "native_image_orientation"

    iget-object v12, v3, Lo/setCardBackgroundView;->ICustomTabsService$Stub$Proxy:Lo/activateCredProtect;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    const-string v13, "any"

    if-nez v12, :cond_21

    goto :goto_9

    :cond_21
    :try_start_4
    iget v12, v12, Lo/activateCredProtect;->onPostMessage:I

    if-eqz v12, :cond_24

    const/4 v14, 0x1

    if-eq v12, v14, :cond_23

    const/4 v13, 0x2

    if-eq v12, v13, :cond_22

    const-string v13, "not_set"

    goto :goto_9

    :cond_22
    const-string v13, "landscape"

    goto :goto_9

    :cond_23
    const-string v13, "portrait"

    :cond_24
    :goto_9
    invoke-virtual {v9, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v3, Lo/setCardBackgroundView;->INotificationSideChannel:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_25

    const-string v8, "native_custom_templates"

    iget-object v12, v3, Lo/setCardBackgroundView;->INotificationSideChannel:Ljava/util/List;

    invoke-virtual {v9, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    iget v8, v3, Lo/setCardBackgroundView;->onMessageChannelReady:I

    if-lt v8, v10, :cond_26

    const-string v8, "max_num_ads"

    iget v12, v3, Lo/setCardBackgroundView;->subscribe:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    iget-object v8, v3, Lo/setCardBackgroundView;->getSessionToken:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    if-nez v8, :cond_27

    :try_start_5
    const-string v8, "native_advanced_settings"

    new-instance v12, Lorg/json/JSONArray;

    iget-object v13, v3, Lo/setCardBackgroundView;->getSessionToken:Ljava/lang/String;

    invoke-direct {v12, v13}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    move-object v8, v0

    :try_start_6
    const-string v12, "Problem creating json from native advanced settings"

    invoke-static {v12, v8}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_27
    :goto_a
    iget-object v8, v3, Lo/setCardBackgroundView;->getServiceComponent:Ljava/util/List;

    if-eqz v8, :cond_2a

    iget-object v8, v3, Lo/setCardBackgroundView;->getServiceComponent:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_2a

    iget-object v8, v3, Lo/setCardBackgroundView;->getServiceComponent:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_28
    :goto_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_29

    const-string v12, "iba"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    :goto_c
    invoke-virtual {v9, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_29
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_28

    const-string v12, "ina"

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    goto :goto_c

    :cond_2a
    iget-object v8, v3, Lo/setCardBackgroundView;->onPostMessage:Lo/setCurrentItem$default;

    iget-boolean v8, v8, Lo/setCurrentItem$default;->asBinder:Z

    if-eqz v8, :cond_2b

    const-string v8, "ene"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v9, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    sget-object v8, Lo/WinningTypes;->MediaBrowserCompat$MediaBrowserImpl:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v12

    invoke-virtual {v12, v8}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_2c

    const-string v8, "xsrve"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v9, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    iget-object v8, v3, Lo/setCardBackgroundView;->AudioAttributesImplApi21Parcelizer:Lo/UserWinningStatisticsJsonAdapter;

    if-eqz v8, :cond_2d

    const-string v8, "is_icon_ad"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v9, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "icon_ad_expansion_behavior"

    iget-object v12, v3, Lo/setCardBackgroundView;->AudioAttributesImplApi21Parcelizer:Lo/UserWinningStatisticsJsonAdapter;

    iget v12, v12, Lo/UserWinningStatisticsJsonAdapter;->onMessageChannelReady:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    const-string v8, "slotname"

    iget-object v12, v3, Lo/setCardBackgroundView;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v9, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "pn"

    iget-object v12, v3, Lo/setCardBackgroundView;->asBinder:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v3, Lo/setCardBackgroundView;->onRelationshipValidationResult:Landroid/content/pm/PackageInfo;

    if-eqz v8, :cond_2e

    const-string v8, "vc"

    iget-object v12, v3, Lo/setCardBackgroundView;->onRelationshipValidationResult:Landroid/content/pm/PackageInfo;

    iget v12, v12, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    const-string v8, "ms"

    iget-object v12, v1, Lo/AutoDebitInstrumentSetupRequestBody;->ICustomTabsCallback$Stub:Ljava/lang/String;

    invoke-virtual {v9, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "seq_num"

    iget-object v12, v3, Lo/setCardBackgroundView;->ICustomTabsCallback$Stub:Ljava/lang/String;

    invoke-virtual {v9, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "session_id"

    iget-object v12, v3, Lo/setCardBackgroundView;->asInterface:Ljava/lang/String;

    invoke-virtual {v9, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "js"

    iget-object v12, v3, Lo/setCardBackgroundView;->warmup:Lo/DataListJsonAdapter;

    iget-object v12, v12, Lo/DataListJsonAdapter;->extraCallback:Ljava/lang/String;

    invoke-virtual {v9, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v1, Lo/AutoDebitInstrumentSetupRequestBody;->onNavigationEvent:Lo/ErrorDetail;

    iget-object v12, v3, Lo/setCardBackgroundView;->AudioAttributesCompatParcelizer:Landroid/os/Bundle;

    iget-object v13, v1, Lo/AutoDebitInstrumentSetupRequestBody;->extraCallback:Landroid/os/Bundle;

    const-string v14, "am"

    iget v15, v5, Lo/AutoDebitRegistrationStatusResponse;->onMessageChannelReady:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v14, "cog"

    iget-boolean v15, v5, Lo/AutoDebitRegistrationStatusResponse;->extraCallback:Z

    invoke-static {v15}, Lo/AutoDebitInstrumentSetupResponseJsonAdapter;->onMessageChannelReady(Z)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v14, "coh"

    iget-boolean v15, v5, Lo/AutoDebitRegistrationStatusResponse;->ICustomTabsCallback:Z

    invoke-static {v15}, Lo/AutoDebitInstrumentSetupResponseJsonAdapter;->onMessageChannelReady(Z)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v14, v5, Lo/AutoDebitRegistrationStatusResponse;->onNavigationEvent:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2f

    const-string v14, "carrier"

    iget-object v15, v5, Lo/AutoDebitRegistrationStatusResponse;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v9, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    const-string v14, "gl"

    iget-object v15, v5, Lo/AutoDebitRegistrationStatusResponse;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v9, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v14, v5, Lo/AutoDebitRegistrationStatusResponse;->asInterface:Z

    if-eqz v14, :cond_30

    const-string v14, "simulator"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v14, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_30
    iget-boolean v10, v5, Lo/AutoDebitRegistrationStatusResponse;->onTransact:Z

    if-eqz v10, :cond_31

    const-string v10, "is_sidewinder"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v10, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_31
    const/4 v14, 0x1

    :goto_d
    const-string v10, "ma"

    iget-boolean v15, v5, Lo/AutoDebitRegistrationStatusResponse;->onRelationshipValidationResult:Z

    invoke-static {v15}, Lo/AutoDebitInstrumentSetupResponseJsonAdapter;->onMessageChannelReady(Z)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v10, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "sp"

    iget-boolean v15, v5, Lo/AutoDebitRegistrationStatusResponse;->asBinder:Z

    invoke-static {v15}, Lo/AutoDebitInstrumentSetupResponseJsonAdapter;->onMessageChannelReady(Z)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v10, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "hl"

    iget-object v15, v5, Lo/AutoDebitRegistrationStatusResponse;->ICustomTabsCallback$Stub:Ljava/lang/String;

    invoke-virtual {v9, v10, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v5, Lo/AutoDebitRegistrationStatusResponse;->ICustomTabsService:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_32

    const-string v10, "mv"

    iget-object v15, v5, Lo/AutoDebitRegistrationStatusResponse;->ICustomTabsService:Ljava/lang/String;

    invoke-virtual {v9, v10, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_32
    const-string v10, "muv"

    iget v15, v5, Lo/AutoDebitRegistrationStatusResponse;->getInterfaceDescriptor:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v10, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v10, v5, Lo/AutoDebitRegistrationStatusResponse;->ICustomTabsCallback$Stub$Proxy:I

    const/4 v15, -0x2

    if-eq v10, v15, :cond_33

    const-string v10, "cnt"

    iget v15, v5, Lo/AutoDebitRegistrationStatusResponse;->ICustomTabsCallback$Stub$Proxy:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v10, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    const-string v10, "gnt"

    iget v15, v5, Lo/AutoDebitRegistrationStatusResponse;->newSession:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v10, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "pt"

    iget v15, v5, Lo/AutoDebitRegistrationStatusResponse;->extraCommand:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v10, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "rm"

    iget v15, v5, Lo/AutoDebitRegistrationStatusResponse;->updateVisuals:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v10, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "riv"

    iget v15, v5, Lo/AutoDebitRegistrationStatusResponse;->requestPostMessageChannel:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v10, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    const-string v15, "build_build"

    iget-object v14, v5, Lo/AutoDebitRegistrationStatusResponse;->INotificationSideChannel:Ljava/lang/String;

    invoke-virtual {v10, v15, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "build_device"

    iget-object v15, v5, Lo/AutoDebitRegistrationStatusResponse;->notify:Ljava/lang/String;

    invoke-virtual {v10, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    const-string v15, "is_charging"

    move-object/from16 v19, v11

    iget-boolean v11, v5, Lo/AutoDebitRegistrationStatusResponse;->IPostMessageService:Z

    invoke-virtual {v14, v15, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v11, "battery_level"

    move-object v15, v6

    move-object/from16 v21, v7

    iget-wide v6, v5, Lo/AutoDebitRegistrationStatusResponse;->ICustomTabsService$Stub:D

    invoke-virtual {v14, v11, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v6, "battery"

    invoke-virtual {v10, v6, v14}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v7, "active_network_state"

    iget v11, v5, Lo/AutoDebitRegistrationStatusResponse;->ICustomTabsService$Stub$Proxy:I

    invoke-virtual {v6, v7, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "active_network_metered"

    iget-boolean v11, v5, Lo/AutoDebitRegistrationStatusResponse;->IPostMessageService$Stub:Z

    invoke-virtual {v6, v7, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v8, :cond_34

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v11, "predicted_latency_micros"

    iget v14, v8, Lo/ErrorDetail;->ICustomTabsCallback:I

    invoke-virtual {v7, v11, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v11, "predicted_down_throughput_bps"

    move-object/from16 v22, v15

    iget-wide v14, v8, Lo/ErrorDetail;->onPostMessage:J

    invoke-virtual {v7, v11, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v11, "predicted_up_throughput_bps"

    iget-wide v14, v8, Lo/ErrorDetail;->extraCallback:J

    invoke-virtual {v7, v11, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v8, "predictions"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_e

    :cond_34
    move-object/from16 v22, v15

    :goto_e
    const-string v7, "network"

    invoke-virtual {v10, v7, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v7, "is_browser_custom_tabs_capable"

    iget-boolean v8, v5, Lo/AutoDebitRegistrationStatusResponse;->cancel:Z

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v7, "browser"

    invoke-virtual {v10, v7, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    if-eqz v12, :cond_36

    const-string v6, "android_mem_info"

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v8, "runtime_free"

    const-string v11, "runtime_free_memory"

    const-wide/16 v14, -0x1

    invoke-virtual {v12, v11, v14, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v8, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "runtime_max"

    const-string v11, "runtime_max_memory"

    invoke-virtual {v12, v11, v14, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v8, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "runtime_total"

    const-string v11, "runtime_total_memory"

    invoke-virtual {v12, v11, v14, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v8, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-virtual {v12, v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v2, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "debug_memory_info"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Debug$MemoryInfo;

    if-eqz v2, :cond_35

    const-string v11, "debug_info_dalvik_private_dirty"

    iget v12, v2, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "debug_info_dalvik_pss"

    iget v12, v2, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "debug_info_dalvik_shared_dirty"

    iget v12, v2, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "debug_info_native_private_dirty"

    iget v12, v2, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "debug_info_native_pss"

    iget v12, v2, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "debug_info_native_shared_dirty"

    iget v12, v2, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "debug_info_other_private_dirty"

    iget v12, v2, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "debug_info_other_pss"

    iget v12, v2, Landroid/os/Debug$MemoryInfo;->otherPss:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "debug_info_other_shared_dirty"

    iget v2, v2, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v11, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    invoke-virtual {v10, v6, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_f

    :cond_36
    const/4 v8, 0x0

    :goto_f
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v6, "parental_controls"

    invoke-virtual {v2, v6, v13}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v6, v5, Lo/AutoDebitRegistrationStatusResponse;->warmup:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_37

    const-string v6, "package_version"

    iget-object v7, v5, Lo/AutoDebitRegistrationStatusResponse;->warmup:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    const-string v6, "play_store"

    invoke-virtual {v10, v6, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v2, "device"

    invoke-virtual {v9, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v6, "doritos"

    iget-object v7, v1, Lo/AutoDebitInstrumentSetupRequestBody;->onRelationshipValidationResult:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "doritos_v2"

    iget-object v7, v1, Lo/AutoDebitInstrumentSetupRequestBody;->asBinder:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lo/WinningTypes;->MediaBrowserCompat$MediaBrowserImplApi21$7:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v7

    invoke-virtual {v7, v6}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3a

    iget-object v6, v1, Lo/AutoDebitInstrumentSetupRequestBody;->asInterface:Lo/getTotalAmountDue$onNavigationEvent;

    if-eqz v6, :cond_38

    iget-object v6, v1, Lo/AutoDebitInstrumentSetupRequestBody;->asInterface:Lo/getTotalAmountDue$onNavigationEvent;

    invoke-virtual {v6}, Lo/getTotalAmountDue$onNavigationEvent;->getId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lo/AutoDebitInstrumentSetupRequestBody;->asInterface:Lo/getTotalAmountDue$onNavigationEvent;

    invoke-virtual {v7}, Lo/getTotalAmountDue$onNavigationEvent;->isLimitAdTrackingEnabled()Z

    move-result v12

    goto :goto_10

    :cond_38
    const/4 v6, 0x0

    const/4 v12, 0x0

    :goto_10
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_39

    const-string v7, "rdid"

    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "is_lat"

    invoke-virtual {v2, v6, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v6, "idtype"

    const-string v7, "adid"

    :goto_11
    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_39
    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    invoke-static/range {p0 .. p0}, Lo/ControlStatementRepo$TransactionItem;->onNavigationEvent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "pdid"

    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "pdidtype"

    const-string v7, "ssaid"

    goto :goto_11

    :cond_3a
    :goto_12
    const-string v6, "pii"

    invoke-virtual {v9, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "platform"

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v9, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "submodel"

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v9, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_3b

    invoke-static {v9, v4}, Lo/AutoDebitInstrumentSetupResponseJsonAdapter;->onPostMessage(Ljava/util/HashMap;Landroid/location/Location;)V

    goto :goto_13

    :cond_3b
    iget-object v2, v3, Lo/setCardBackgroundView;->onNavigationEvent:Lo/setLastItem;

    iget v2, v2, Lo/setLastItem;->onMessageChannelReady:I

    const/4 v4, 0x2

    if-lt v2, v4, :cond_3c

    iget-object v2, v3, Lo/setCardBackgroundView;->onNavigationEvent:Lo/setLastItem;

    iget-object v2, v2, Lo/setLastItem;->ICustomTabsCallback$Stub$Proxy:Landroid/location/Location;

    if-eqz v2, :cond_3c

    iget-object v2, v3, Lo/setCardBackgroundView;->onNavigationEvent:Lo/setLastItem;

    iget-object v2, v2, Lo/setLastItem;->ICustomTabsCallback$Stub$Proxy:Landroid/location/Location;

    invoke-static {v9, v2}, Lo/AutoDebitInstrumentSetupResponseJsonAdapter;->onPostMessage(Ljava/util/HashMap;Landroid/location/Location;)V

    :cond_3c
    :goto_13
    iget v2, v3, Lo/setCardBackgroundView;->onMessageChannelReady:I

    const/4 v4, 0x2

    if-lt v2, v4, :cond_3d

    const-string v2, "quality_signals"

    iget-object v4, v3, Lo/setCardBackgroundView;->getInterfaceDescriptor:Landroid/os/Bundle;

    invoke-virtual {v9, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    iget v2, v3, Lo/setCardBackgroundView;->onMessageChannelReady:I

    const/4 v4, 0x4

    if-lt v2, v4, :cond_3e

    iget-boolean v2, v3, Lo/setCardBackgroundView;->extraCommand:Z

    if-eqz v2, :cond_3e

    const-string v2, "forceHttps"

    iget-boolean v4, v3, Lo/setCardBackgroundView;->extraCommand:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v9, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3e
    if-eqz v22, :cond_3f

    const-string v2, "content_info"

    move-object/from16 v4, v22

    invoke-virtual {v9, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3f
    iget v2, v3, Lo/setCardBackgroundView;->onMessageChannelReady:I
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3

    const-string v4, "sw"

    const-string v6, "sh"

    const-string v7, "u_sd"

    const/4 v10, 0x5

    if-lt v2, v10, :cond_40

    :try_start_7
    iget v2, v3, Lo/setCardBackgroundView;->updateVisuals:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v9, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v3, Lo/setCardBackgroundView;->requestPostMessageChannel:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v3, Lo/setCardBackgroundView;->postMessage:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_14
    invoke-virtual {v9, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_40
    iget v2, v5, Lo/AutoDebitRegistrationStatusResponse;->postMessage:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v9, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v5, Lo/AutoDebitRegistrationStatusResponse;->validateRelationship:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v5, Lo/AutoDebitRegistrationStatusResponse;->mayLaunchUrl:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_14

    :goto_15
    iget v2, v3, Lo/setCardBackgroundView;->onMessageChannelReady:I

    const/4 v4, 0x6

    if-lt v2, v4, :cond_42

    iget-object v2, v3, Lo/setCardBackgroundView;->mayLaunchUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_3

    if-nez v2, :cond_41

    :try_start_8
    const-string v2, "view_hierarchy"

    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, v3, Lo/setCardBackgroundView;->mayLaunchUrl:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_16

    :catch_1
    move-exception v0

    move-object v2, v0

    :try_start_9
    const-string v4, "Problem serializing view hierarchy to JSON"

    invoke-static {v4, v2}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_41
    :goto_16
    const-string v2, "correlation_id"

    iget-wide v4, v3, Lo/setCardBackgroundView;->ICustomTabsService$Stub:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v9, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_42
    iget v2, v3, Lo/setCardBackgroundView;->onMessageChannelReady:I

    const/4 v4, 0x7

    if-lt v2, v4, :cond_43

    const-string v2, "request_id"

    iget-object v4, v3, Lo/setCardBackgroundView;->IPostMessageService:Ljava/lang/String;

    invoke-virtual {v9, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_43
    iget v2, v3, Lo/setCardBackgroundView;->onMessageChannelReady:I

    const/16 v4, 0xc

    if-lt v2, v4, :cond_44

    iget-object v2, v3, Lo/setCardBackgroundView;->cancelAll:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_44

    const-string v2, "anchor"

    iget-object v4, v3, Lo/setCardBackgroundView;->cancelAll:Ljava/lang/String;

    invoke-virtual {v9, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_44
    iget v2, v3, Lo/setCardBackgroundView;->onMessageChannelReady:I

    const/16 v4, 0xd

    if-lt v2, v4, :cond_45

    const-string v2, "android_app_volume"

    iget v4, v3, Lo/setCardBackgroundView;->notify:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v9, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_45
    iget v2, v3, Lo/setCardBackgroundView;->onMessageChannelReady:I

    const/16 v4, 0x12

    if-lt v2, v4, :cond_46

    const-string v2, "android_app_muted"

    iget-boolean v5, v3, Lo/setCardBackgroundView;->INotificationSideChannel$Stub$Proxy:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v9, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_46
    iget v2, v3, Lo/setCardBackgroundView;->onMessageChannelReady:I

    const/16 v5, 0xe

    if-lt v2, v5, :cond_47

    iget v2, v3, Lo/setCardBackgroundView;->IPostMessageService$Stub$Proxy:I

    if-lez v2, :cond_47

    const-string v2, "target_api"

    iget v5, v3, Lo/setCardBackgroundView;->IPostMessageService$Stub$Proxy:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_47
    iget v2, v3, Lo/setCardBackgroundView;->onMessageChannelReady:I

    const/16 v5, 0xf

    if-lt v2, v5, :cond_49

    const-string v2, "scroll_index"

    iget v5, v3, Lo/setCardBackgroundView;->getDefaultImpl:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_48

    const/4 v12, -0x1

    goto :goto_17

    :cond_48
    iget v12, v3, Lo/setCardBackgroundView;->getDefaultImpl:I

    :goto_17
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_49
    iget v2, v3, Lo/setCardBackgroundView;->onMessageChannelReady:I

    const/16 v5, 0x10

    if-lt v2, v5, :cond_4a

    const-string v2, "_activity_context"

    iget-boolean v5, v3, Lo/setCardBackgroundView;->INotificationSideChannel$Default:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v9, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4a
    iget v2, v3, Lo/setCardBackgroundView;->onMessageChannelReady:I

    if-lt v2, v4, :cond_4c

    iget-object v2, v3, Lo/setCardBackgroundView;->write:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_3

    if-nez v2, :cond_4b

    :try_start_a
    const-string v2, "app_settings"

    new-instance v5, Lorg/json/JSONObject;

    iget-object v6, v3, Lo/setCardBackgroundView;->write:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_18

    :catch_2
    move-exception v0

    move-object v2, v0

    :try_start_b
    const-string v5, "Problem creating json from app settings"

    invoke-static {v5, v2}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4b
    :goto_18
    const-string v2, "render_in_browser"

    iget-boolean v5, v3, Lo/setCardBackgroundView;->read:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v9, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4c
    iget v2, v3, Lo/setCardBackgroundView;->onMessageChannelReady:I

    if-lt v2, v4, :cond_4d

    const-string v2, "android_num_video_cache_tasks"

    iget v4, v3, Lo/setCardBackgroundView;->RemoteActionCompatParcelizer:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4d
    iget-object v2, v3, Lo/setCardBackgroundView;->warmup:Lo/DataListJsonAdapter;

    iget-boolean v4, v3, Lo/setCardBackgroundView;->search:Z

    iget-boolean v1, v1, Lo/AutoDebitInstrumentSetupRequestBody;->newSession:Z

    iget-boolean v5, v3, Lo/setCardBackgroundView;->sendCustomAction:Z

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v10, "cl"

    const-string v11, "193400285"

    invoke-virtual {v7, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "rapid_rc"

    const-string v11, "dev"

    invoke-virtual {v7, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "rapid_rollup"

    const-string v11, "HEAD"

    invoke-virtual {v7, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "build_meta"

    invoke-virtual {v6, v10, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v7, "mf"

    sget-object v10, Lo/WinningTypes;->getMediaDescription:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v11

    invoke-virtual {v11, v10}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "instant_app"

    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "lite"

    iget-boolean v2, v2, Lo/DataListJsonAdapter;->onNavigationEvent:Z

    invoke-virtual {v6, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "local_service"

    invoke-virtual {v6, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "is_privileged_process"

    invoke-virtual {v6, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "sdk_env"

    invoke-virtual {v9, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cache_state"

    move-object/from16 v2, v21

    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, v3, Lo/setCardBackgroundView;->onMessageChannelReady:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_4e

    const-string v1, "gct"

    iget-object v2, v3, Lo/setCardBackgroundView;->IconCompatParcelizer:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4e
    iget v1, v3, Lo/setCardBackgroundView;->onMessageChannelReady:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_4f

    iget-boolean v1, v3, Lo/setCardBackgroundView;->AudioAttributesImplBaseParcelizer:Z

    if-eqz v1, :cond_4f

    const-string v1, "de"

    const-string v2, "1"

    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4f
    sget-object v1, Lo/WinningTypes;->MediaBrowserCompat$MediaBrowserImplBase$3:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_53

    iget-object v1, v3, Lo/setCardBackgroundView;->onPostMessage:Lo/setCurrentItem$default;

    iget-object v1, v1, Lo/setCurrentItem$default;->onMessageChannelReady:Ljava/lang/String;

    const-string v2, "interstitial_mb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    const-string v2, "reward_mb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    goto :goto_19

    :cond_50
    const/4 v12, 0x0

    goto :goto_1a

    :cond_51
    :goto_19
    const/4 v12, 0x1

    :goto_1a
    iget-object v1, v3, Lo/setCardBackgroundView;->MediaBrowserCompat:Landroid/os/Bundle;

    if-eqz v1, :cond_52

    const/4 v13, 0x1

    goto :goto_1b

    :cond_52
    const/4 v13, 0x0

    :goto_1b
    if-eqz v12, :cond_53

    if-eqz v13, :cond_53

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v4, "interstitial_pool"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "counters"

    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_53
    iget-object v1, v3, Lo/setCardBackgroundView;->disconnect:Ljava/lang/String;

    if-eqz v1, :cond_54

    const-string v1, "gmp_app_id"

    iget-object v2, v3, Lo/setCardBackgroundView;->disconnect:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_54
    iget-object v1, v3, Lo/setCardBackgroundView;->connect:Ljava/lang/String;

    if-eqz v1, :cond_56

    const-string v1, "TIME_OUT"

    iget-object v2, v3, Lo/setCardBackgroundView;->connect:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    const-string v1, "sai_timeout"

    sget-object v2, Lo/WinningTypes;->MediaBrowserCompat$ItemCallback:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v4

    invoke-virtual {v4, v2}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v2

    :goto_1c
    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    :cond_55
    const-string v1, "fbs_aiid"

    iget-object v2, v3, Lo/setCardBackgroundView;->connect:Ljava/lang/String;

    goto :goto_1c

    :cond_56
    const-string v1, "fbs_aiid"

    const-string v2, ""

    goto :goto_1c

    :goto_1d
    iget-object v1, v3, Lo/setCardBackgroundView;->getExtras:Ljava/lang/String;

    if-eqz v1, :cond_57

    const-string v1, "fbs_aeid"

    iget-object v2, v3, Lo/setCardBackgroundView;->getExtras:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_57
    iget v1, v3, Lo/setCardBackgroundView;->onMessageChannelReady:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_58

    const-string v1, "disable_ml"

    iget-boolean v2, v3, Lo/setCardBackgroundView;->unsubscribe:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_58
    sget-object v1, Lo/WinningTypes;->getDefaultImpl:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_5a

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5a

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v4, Lo/WinningTypes;->INotificationSideChannel$Stub$Proxy:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v5

    invoke-virtual {v5, v4}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v2, v4, :cond_5a

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v4, v19

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    const/4 v13, 0x0

    :goto_1e
    if-ge v13, v4, :cond_59

    aget-object v5, v1, v13

    invoke-static {v5}, Lo/getEntryType;->ICustomTabsCallback(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v13, v13, 0x1

    goto :goto_1e

    :cond_59
    const-string v1, "video_decoders"

    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5a
    sget-object v1, Lo/WinningTypes;->RatingCompat$Style:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5b

    const-string v1, "omid_v"

    invoke-static {}, Lo/getParcel;->IPostMessageService()Lo/getData;

    move-result-object v2

    move-object/from16 v4, p0

    invoke-virtual {v2, v4}, Lo/getData;->onMessageChannelReady(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5b
    iget-object v1, v3, Lo/setCardBackgroundView;->getItem:Ljava/util/ArrayList;

    if-eqz v1, :cond_5c

    iget-object v1, v3, Lo/setCardBackgroundView;->getItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5c

    const-string v1, "android_permissions"

    iget-object v2, v3, Lo/setCardBackgroundView;->getItem:Ljava/util/ArrayList;

    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5c
    const/4 v1, 0x2

    invoke-static {v1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(I)Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    move-result-object v2

    invoke-virtual {v2, v9}, Lo/AuthSupportedResponse$MetaData;->onMessageChannelReady(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ad Request JSON: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5d

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1f

    :cond_5d
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1f
    invoke-static {v1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    :cond_5e
    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    move-result-object v1

    invoke-virtual {v1, v9}, Lo/AuthSupportedResponse$MetaData;->onMessageChannelReady(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_3

    return-object v1

    :catch_3
    move-exception v0

    move-object v1, v0

    const-string v2, "Problem serializing ad request to JSON: "

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5f

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_20

    :cond_5f
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_20
    invoke-static {v1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method public static extraCallback(Lo/setOnCtaClick;)Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lo/setOnCtaClick;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/setOnCtaClick;->onMessageChannelReady:Ljava/lang/String;

    const-string v2, "ad_base_url"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, Lo/setOnCtaClick;->newSession:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/setOnCtaClick;->newSession:Ljava/lang/String;

    const-string v2, "ad_size"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-boolean v1, p0, Lo/setOnCtaClick;->postMessage:Z

    const-string v2, "native"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-boolean v1, p0, Lo/setOnCtaClick;->postMessage:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo/setOnCtaClick;->extraCallback:Ljava/lang/String;

    const-string v2, "ad_json"

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lo/setOnCtaClick;->extraCallback:Ljava/lang/String;

    const-string v2, "ad_html"

    :goto_0
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lo/setOnCtaClick;->ICustomTabsService:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lo/setOnCtaClick;->ICustomTabsService:Ljava/lang/String;

    const-string v2, "debug_dialog"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    iget-object v1, p0, Lo/setOnCtaClick;->IconCompatParcelizer:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lo/setOnCtaClick;->IconCompatParcelizer:Ljava/lang/String;

    const-string v2, "debug_signals"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    iget-wide v1, p0, Lo/setOnCtaClick;->onRelationshipValidationResult:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_5

    iget-wide v1, p0, Lo/setOnCtaClick;->onRelationshipValidationResult:J

    long-to-double v1, v1

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v5

    const-string v5, "interstitial_timeout"

    invoke-virtual {v0, v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_5
    iget v1, p0, Lo/setOnCtaClick;->warmup:I

    invoke-static {}, Lo/getParcel;->onTransact()Lo/getAccount_number;

    move-result-object v2

    invoke-virtual {v2}, Lo/getAccount_number;->onMessageChannelReady()I

    move-result v2

    const-string v5, "orientation"

    if-ne v1, v2, :cond_6

    const-string v1, "portrait"

    :goto_1
    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_6
    iget v1, p0, Lo/setOnCtaClick;->warmup:I

    invoke-static {}, Lo/getParcel;->onTransact()Lo/getAccount_number;

    move-result-object v2

    invoke-virtual {v2}, Lo/getAccount_number;->ICustomTabsCallback()I

    move-result v2

    if-ne v1, v2, :cond_7

    const-string v1, "landscape"

    goto :goto_1

    :cond_7
    :goto_2
    iget-object v1, p0, Lo/setOnCtaClick;->onPostMessage:Ljava/util/List;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lo/setOnCtaClick;->onPostMessage:Ljava/util/List;

    invoke-static {v1}, Lo/AutoDebitInstrumentSetupResponseJsonAdapter;->extraCallback(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "click_urls"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    iget-object v1, p0, Lo/setOnCtaClick;->ICustomTabsCallback:Ljava/util/List;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lo/setOnCtaClick;->ICustomTabsCallback:Ljava/util/List;

    invoke-static {v1}, Lo/AutoDebitInstrumentSetupResponseJsonAdapter;->extraCallback(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "impression_urls"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    iget-object v1, p0, Lo/setOnCtaClick;->connect:Ljava/util/List;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lo/setOnCtaClick;->connect:Ljava/util/List;

    invoke-static {v1}, Lo/AutoDebitInstrumentSetupResponseJsonAdapter;->extraCallback(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "downloaded_impression_urls"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a
    iget-object v1, p0, Lo/setOnCtaClick;->ICustomTabsCallback$Stub:Ljava/util/List;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lo/setOnCtaClick;->ICustomTabsCallback$Stub:Ljava/util/List;

    invoke-static {v1}, Lo/AutoDebitInstrumentSetupResponseJsonAdapter;->extraCallback(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "manual_impression_urls"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_b
    iget-object v1, p0, Lo/setOnCtaClick;->requestPostMessageChannel:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lo/setOnCtaClick;->requestPostMessageChannel:Ljava/lang/String;

    const-string v2, "active_view"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_c
    iget-boolean v1, p0, Lo/setOnCtaClick;->ICustomTabsCallback$Stub$Proxy:Z

    const-string v2, "ad_is_javascript"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v1, p0, Lo/setOnCtaClick;->mayLaunchUrl:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lo/setOnCtaClick;->mayLaunchUrl:Ljava/lang/String;

    const-string v2, "ad_passback_url"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_d
    iget-boolean v1, p0, Lo/setOnCtaClick;->asInterface:Z

    const-string v2, "mediation"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-boolean v1, p0, Lo/setOnCtaClick;->updateVisuals:Z

    const-string v2, "custom_render_allowed"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-boolean v1, p0, Lo/setOnCtaClick;->IPostMessageService:Z

    const-string v2, "content_url_opted_out"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-boolean v1, p0, Lo/setOnCtaClick;->write:Z

    const-string v2, "content_vertical_opted_out"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-boolean v1, p0, Lo/setOnCtaClick;->ICustomTabsService$Stub$Proxy:Z

    const-string v2, "prefetch"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-wide v1, p0, Lo/setOnCtaClick;->asBinder:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_e

    iget-wide v1, p0, Lo/setOnCtaClick;->asBinder:J

    const-string v5, "refresh_interval_milliseconds"

    invoke-virtual {v0, v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_e
    iget-wide v1, p0, Lo/setOnCtaClick;->onTransact:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_f

    iget-wide v1, p0, Lo/setOnCtaClick;->onTransact:J

    const-string v3, "mediation_config_cache_time_milliseconds"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_f
    iget-object v1, p0, Lo/setOnCtaClick;->ICustomTabsService$Stub:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lo/setOnCtaClick;->ICustomTabsService$Stub:Ljava/lang/String;

    const-string v2, "gws_query_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_10
    iget-boolean v1, p0, Lo/setOnCtaClick;->IPostMessageService$Stub:Z

    if-eqz v1, :cond_11

    const-string v1, "height"

    goto :goto_3

    :cond_11
    const-string v1, ""

    :goto_3
    const-string v2, "fluid"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-boolean v1, p0, Lo/setOnCtaClick;->cancelAll:Z

    const-string v2, "native_express"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v1, p0, Lo/setOnCtaClick;->INotificationSideChannel:Ljava/util/List;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lo/setOnCtaClick;->INotificationSideChannel:Ljava/util/List;

    invoke-static {v1}, Lo/AutoDebitInstrumentSetupResponseJsonAdapter;->extraCallback(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "video_start_urls"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_12
    iget-object v1, p0, Lo/setOnCtaClick;->IPostMessageService$Stub$Proxy:Ljava/util/List;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lo/setOnCtaClick;->IPostMessageService$Stub$Proxy:Ljava/util/List;

    invoke-static {v1}, Lo/AutoDebitInstrumentSetupResponseJsonAdapter;->extraCallback(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "video_complete_urls"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_13
    iget-object v1, p0, Lo/setOnCtaClick;->cancel:Lo/FooterActions;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lo/setOnCtaClick;->cancel:Lo/FooterActions;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v3, v1, Lo/FooterActions;->onNavigationEvent:Ljava/lang/String;

    const-string v4, "rb_type"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v1, v1, Lo/FooterActions;->onMessageChannelReady:I

    const-string v3, "rb_amount"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "rewards"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_14
    iget-boolean v1, p0, Lo/setOnCtaClick;->notify:Z

    const-string v2, "use_displayed_impression"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v1, p0, Lo/setOnCtaClick;->INotificationSideChannel$Stub$Proxy:Lo/AddressListResponseJsonAdapter;

    const-string v2, "auto_protection_configuration"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-boolean v1, p0, Lo/setOnCtaClick;->setDefaultImpl:Z

    const-string v2, "render_in_browser"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-boolean p0, p0, Lo/setOnCtaClick;->MediaBrowserCompat:Z

    const-string v1, "disable_closable_area"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object v0
.end method

.method private static onMessageChannelReady(Z)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static onMessageChannelReady(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private static onPostMessage(Ljava/util/HashMap;Landroid/location/Location;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/location/Location;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    const-wide v5, 0x416312d000000000L    # 1.0E7

    mul-double v3, v3, v5

    double-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    mul-double v7, v7, v5

    double-to-long v4, v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v4, "radius"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lat"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "long"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "time"

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "uule"

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
