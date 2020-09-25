.class public final Lo/DividerItemDecoration;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J6\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/interstitial/InterjectionActonHandler;",
        "",
        "()V",
        "handleAction",
        "",
        "action",
        "Lclub/cred/interjection/data/models/Action;",
        "campaignId",
        "",
        "interstitialManager",
        "Lcom/dreamplug/fabrik/ui/interstitial/InterstitialManager;",
        "isInterstitialVisible",
        "eventName",
        "activity",
        "Landroid/app/Activity;",
        "isUiAction",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onMessageChannelReady:Lo/DividerItemDecoration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lo/DividerItemDecoration;

    invoke-direct {v0}, Lo/DividerItemDecoration;-><init>()V

    sput-object v0, Lo/DividerItemDecoration;->onMessageChannelReady:Lo/DividerItemDecoration;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extraCallback(Lclub/cred/interjection/data/models/Action;Ljava/lang/String;Lo/getRowCountForAccessibility;ZLjava/lang/String;Landroid/app/Activity;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    const-string v5, "action"

    invoke-static {v0, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "campaignId"

    invoke-static {v1, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "interstitialManager"

    invoke-static {v2, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "eventName"

    invoke-static {v3, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "activity"

    invoke-static {v4, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1113
    iget-object v8, v0, Lclub/cred/interjection/data/models/Action;->onNavigationEvent:Ljava/lang/String;

    const/4 v9, 0x0

    if-nez v8, :cond_0

    goto/16 :goto_1

    .line 20
    :cond_0
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v10

    const/4 v11, 0x1

    sparse-switch v10, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "app_rating"

    .line 62
    invoke-virtual {v8, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 9111
    iget-object v0, v0, Lclub/cred/interjection/data/models/Action;->onPostMessage:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 64
    new-instance v2, Lo/setOnInflateListener;

    new-array v4, v11, [Lo/addWrite;

    .line 10043
    new-instance v5, Lo/addWrite;

    invoke-direct {v5, v7, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v4, v9

    const-string v3, "pairs"

    .line 64
    invoke-static {v4, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10105
    new-instance v3, Ljava/util/HashMap;

    invoke-static {v11}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/HashMap;-><init>(I)V

    check-cast v3, Ljava/util/Map;

    invoke-static {v3, v4}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 64
    invoke-direct {v2, v0, v1, v3}, Lo/setOnInflateListener;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 11044
    iput-boolean v11, v2, Lo/setOnInflateListener;->extraCallback:Z

    .line 11045
    invoke-virtual {v2}, Lo/setOnInflateListener;->ICustomTabsCallback()V

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "refresh"

    .line 33
    invoke-virtual {v8, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 6111
    iget-object v0, v0, Lclub/cred/interjection/data/models/Action;->onPostMessage:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const v2, -0x533f26d0

    if-eq v1, v2, :cond_4

    const v2, 0x2e061540

    if-eq v1, v2, :cond_3

    const v2, 0x3cc20ec9

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "navigation_tabs"

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 36
    sget-object v0, Lo/setTrackResource;->ICustomTabsCallback:Lo/setTrackResource;

    .line 7033
    sget-object v1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 8000
    sget-object v1, Lo/setTrackTintMode;->extraCommand:Lo/setTitleTextColor;

    sget-object v2, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v3, 0x11

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 7034
    invoke-virtual {v0}, Lo/setTrackResource;->onNavigationEvent()V

    goto :goto_0

    :cond_3
    const-string v1, "interjection"

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 42
    sget-object v0, Lo/openOptionsMenu;->onMessageChannelReady:Lo/openOptionsMenu;

    sget-object v0, Lo/DividerItemDecoration$extraCallback;->onMessageChannelReady:Lo/DividerItemDecoration$extraCallback;

    check-cast v0, Lo/getServerTime;

    invoke-static {v0}, Lo/openOptionsMenu;->ICustomTabsCallback(Lo/getServerTime;)V

    goto :goto_0

    :cond_4
    const-string v1, "badges"

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 39
    sget-object v0, Lo/getPaddingStart;->extraCallback:Lo/getPaddingStart;

    invoke-virtual {v0}, Lo/getPaddingStart;->ICustomTabsCallback()V

    :cond_5
    :goto_0
    return v11

    :sswitch_2
    const-string v1, "deeplink"

    .line 27
    invoke-virtual {v8, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    if-nez p3, :cond_6

    .line 29
    sget-object v1, Lo/length;->extraCallback:Lo/length;

    .line 5111
    iget-object v0, v0, Lclub/cred/interjection/data/models/Action;->onPostMessage:Ljava/lang/String;

    .line 29
    invoke-virtual {v1, v0}, Lo/length;->onNavigationEvent(Ljava/lang/String;)V

    :cond_6
    if-nez p3, :cond_7

    return v11

    :cond_7
    return v9

    :sswitch_3
    const-string v3, "interstitial"

    .line 21
    invoke-virtual {v8, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    if-nez p3, :cond_9

    .line 23
    invoke-static {v0, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2024
    sget-object v3, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 3000
    sget-object v3, Lo/isInLayout;->MediaBrowserCompat$MediaBrowserImplApi21$6:Lo/isAdded;

    sget-object v4, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v5, 0x5e

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 4000
    iget-object v3, v2, Lo/getRowCountForAccessibility;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lo/removeAndRecycleView;

    const/4 v11, 0x0

    .line 4111
    iget-object v0, v0, Lclub/cred/interjection/data/models/Action;->onPostMessage:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string v0, ""

    :cond_8
    move-object v13, v0

    const/4 v14, 0x0

    const/16 v15, 0x9

    const-string v12, "interstitial"

    .line 2025
    invoke-static/range {v10 .. v15}, Lo/removeAndRecycleView$onNavigationEvent;->onPostMessage(Lo/removeAndRecycleView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lo/clearScrap;

    move-result-object v0

    .line 2026
    new-instance v3, Lo/getRowCountForAccessibility$extraCallback;

    invoke-direct {v3, v2, v1}, Lo/getRowCountForAccessibility$extraCallback;-><init>(Lo/getRowCountForAccessibility;Ljava/lang/String;)V

    check-cast v3, Lo/getScrapOrCachedViewForId;

    invoke-interface {v0, v3}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    :cond_9
    return v9

    :sswitch_4
    const-string v1, "flow"

    .line 50
    invoke-virtual {v8, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 8111
    iget-object v0, v0, Lclub/cred/interjection/data/models/Action;->onPostMessage:Ljava/lang/String;

    if-nez v0, :cond_a

    goto :goto_1

    .line 51
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const v2, 0x441c26bb

    if-eq v1, v2, :cond_b

    goto :goto_1

    :cond_b
    const-string/jumbo v1, "store_rating"

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 53
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-static {}, Lo/setTrackTintMode;->onTransact()Z

    move-result v0

    xor-int/2addr v0, v11

    if-eqz v0, :cond_c

    .line 54
    sget-object v1, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 9000
    sget-object v1, Lo/isInLayout;->MediaBrowserCompat$MediaBrowserImplApi21:Lo/isAdded;

    sget-object v2, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v3, 0x55

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 55
    sget-object v1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-static {}, Lo/setTrackTintMode;->onRelationshipValidationResult()V

    .line 56
    new-instance v1, Lo/onInflate;

    invoke-direct {v1, v4}, Lo/onInflate;-><init>(Landroid/app/Activity;)V

    .line 9036
    invoke-virtual {v1, v9}, Lo/onInflate;->onPostMessage(Z)V

    .line 9037
    iput-boolean v9, v1, Lo/onInflate;->onNavigationEvent:Z

    .line 9038
    iput-boolean v11, v1, Lo/onInflate;->extraCallback:Z

    :cond_c
    return v0

    :cond_d
    :goto_1
    return v9

    nop

    :sswitch_data_0
    .sparse-switch
        0x30012e -> :sswitch_4
        0x240b672c -> :sswitch_3
        0x258156e6 -> :sswitch_2
        0x40b292db -> :sswitch_1
        0x49cdbd7b -> :sswitch_0
    .end sparse-switch
.end method

.method public static onPostMessage(Lclub/cred/interjection/data/models/Action;)Z
    .locals 1

    const-string v0, "action"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11113
    iget-object p0, p0, Lclub/cred/interjection/data/models/Action;->onNavigationEvent:Ljava/lang/String;

    const-string v0, "refresh"

    .line 71
    invoke-static {p0, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
