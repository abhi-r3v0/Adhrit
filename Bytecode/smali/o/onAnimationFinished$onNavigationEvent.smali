.class public final Lo/onAnimationFinished$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onAnimationFinished;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\u001c\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/main/remotecontrol/NewRemoteControlViewModel$refresh$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "onResponse",
        "",
        "result",
        "Lcom/dreamplug/network/internals/call/CallResult;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/onAnimationFinished;


# direct methods
.method constructor <init>(Lo/onAnimationFinished;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lo/onAnimationFinished$onNavigationEvent;->ICustomTabsCallback:Lo/onAnimationFinished;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 49
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "result"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    instance-of v2, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v2, :cond_1

    .line 68
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 69
    check-cast v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object v1, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 69
    check-cast v1, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlResponse;

    if-eqz v1, :cond_0

    .line 1020
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlResponse;->onMessageChannelReady:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 73
    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 75
    :cond_0
    iget-object v1, v0, Lo/onAnimationFinished$onNavigationEvent;->ICustomTabsCallback:Lo/onAnimationFinished;

    .line 1047
    iget-object v1, v1, Lo/onAnimationFinished;->ICustomTabsCallback:Lo/setActive;

    .line 75
    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 78
    :cond_1
    instance-of v1, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v1, :cond_a

    .line 79
    iget-object v1, v0, Lo/onAnimationFinished$onNavigationEvent;->ICustomTabsCallback:Lo/onAnimationFinished;

    invoke-static {v1}, Lo/onAnimationFinished;->onPostMessage(Lo/onAnimationFinished;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x7

    new-array v2, v2, [Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;

    .line 1181
    new-instance v4, Lcom/dreamplug/fabrik/ui/main/remotecontrol/CompletionAction;

    const-string v10, ""

    const-string v3, "remote_cards"

    invoke-direct {v4, v10, v3}, Lcom/dreamplug/fabrik/ui/main/remotecontrol/CompletionAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    new-instance v6, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Metadata;

    .line 1184
    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-wide/16 v17, 0x1

    .line 1186
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 1187
    sget-object v16, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v11, v6

    move-object v12, v13

    move-object/from16 v15, v16

    .line 1183
    invoke-direct/range {v11 .. v16}, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Metadata;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 1191
    new-instance v3, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Background;

    invoke-direct {v3, v10, v10, v10, v10}, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Background;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x3

    new-array v5, v11, [Lo/addWrite;

    .line 1198
    new-instance v7, Lo/getTargetScrollPosition;

    const-string v8, "https://dg1qgqhnfu4m2.cloudfront.net/heartbeat/f594e8b0d26811eaa8a6cd9e7268f742.png"

    invoke-direct {v7, v8}, Lo/getTargetScrollPosition;-><init>(Ljava/lang/String;)V

    .line 2043
    new-instance v8, Lo/addWrite;

    const-string v12, "image"

    invoke-direct {v8, v12, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v13, 0x0

    aput-object v8, v5, v13

    .line 1199
    new-instance v7, Lo/getTargetScrollPosition;

    const-string v8, "credit cards"

    invoke-direct {v7, v8}, Lo/getTargetScrollPosition;-><init>(Ljava/lang/String;)V

    .line 3043
    new-instance v8, Lo/addWrite;

    const-string/jumbo v14, "text_1"

    invoke-direct {v8, v14, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v15, 0x1

    aput-object v8, v5, v15

    .line 4043
    new-instance v7, Lo/addWrite;

    const/4 v9, 0x0

    const-string/jumbo v8, "text_2"

    invoke-direct {v7, v8, v9}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v8, 0x2

    aput-object v7, v5, v8

    const-string v7, "pairs"

    .line 1197
    invoke-static {v5, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4105
    new-instance v8, Ljava/util/HashMap;

    invoke-static {v11}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v15

    invoke-direct {v8, v15}, Ljava/util/HashMap;-><init>(I)V

    check-cast v8, Ljava/util/Map;

    invoke-static {v8, v5}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 1204
    new-instance v5, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

    .line 1205
    new-instance v15, Lcom/dreamplug/fabrik/ui/nba/helper/Deeplink;

    const-string v11, "cred://app/launch?page=control"

    invoke-direct {v15, v11}, Lcom/dreamplug/fabrik/ui/nba/helper/Deeplink;-><init>(Ljava/lang/String;)V

    const/16 v21, 0x0

    .line 1207
    new-instance v11, Lo/getTargetScrollPosition;

    const-string v13, "<format><text fgClr=\'#ffffff\'>View cards</text></format>"

    invoke-direct {v11, v13}, Lo/getTargetScrollPosition;-><init>(Ljava/lang/String;)V

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-string v23, "deeplink"

    const-string v24, "light"

    const-string v26, "#000000"

    move-object/from16 v19, v5

    move-object/from16 v20, v15

    move-object/from16 v22, v11

    .line 1204
    invoke-direct/range {v19 .. v29}, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;-><init>(Lcom/dreamplug/fabrik/ui/nba/helper/Deeplink;Lcom/dreamplug/fabrik/ui/nba/helper/Flow;Lo/getTargetScrollPosition;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v21, v11

    check-cast v21, Ljava/util/List;

    .line 1203
    new-instance v11, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Footer;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v24, ""

    const-string v25, ""

    move-object/from16 v19, v11

    move-object/from16 v20, v5

    invoke-direct/range {v19 .. v25}, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Footer;-><init>(Lcom/dreamplug/fabrik/ui/nba/helper/Cta;Ljava/util/List;Lcom/dreamplug/fabrik/ui/nba/helper/Cta;Lcom/dreamplug/fabrik/ui/nba/helper/Cta;Ljava/lang/String;Ljava/lang/String;)V

    .line 5040
    sget-object v5, Lo/forcePersistenceManager;->extraCallback:Lo/forcePersistenceManager;

    const-string v13, "null cannot be cast to non-null type kotlin.collections.Map<K, V>"

    if-eqz v5, :cond_9

    move-object/from16 v26, v5

    check-cast v26, Ljava/util/Map;

    .line 1224
    new-instance v5, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Badge;

    invoke-direct {v5, v9, v10, v10}, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Badge;-><init>(Lo/getTargetScrollPosition;Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    new-instance v15, Lcom/dreamplug/fabrik/ui/main/remotecontrol/TemplateProperties;

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v19, v15

    move-object/from16 v20, v3

    move-object/from16 v22, v8

    move-object/from16 v25, v11

    move-object/from16 v30, v5

    invoke-direct/range {v19 .. v30}, Lcom/dreamplug/fabrik/ui/main/remotecontrol/TemplateProperties;-><init>(Lcom/dreamplug/fabrik/ui/main/remotecontrol/Background;Lcom/dreamplug/fabrik/ui/main/remotecontrol/Background;Ljava/util/Map;Ljava/util/List;Lcom/dreamplug/fabrik/ui/nba/helper/Meta;Lcom/dreamplug/fabrik/ui/main/remotecontrol/Footer;Ljava/util/Map;Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;Lcom/dreamplug/fabrik/ui/main/remotecontrol/Actionable;Ljava/util/List;Lcom/dreamplug/fabrik/ui/main/remotecontrol/Badge;)V

    .line 1228
    new-instance v11, Lcom/dreamplug/fabrik/ui/main/remotecontrol/DismissConfig;

    invoke-direct {v11, v10, v10, v10, v10}, Lcom/dreamplug/fabrik/ui/main/remotecontrol/DismissConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    new-instance v19, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;

    const-string v5, "a53518d5-da96-4d5e-ae7b-4e5a400d6e57:a53518d5-da96-4d5e-ae7b-4e5a400d6e57"

    const-string v8, "rc1"

    move-object/from16 v3, v19

    move-object/from16 v20, v13

    move-object v13, v7

    move-object v7, v8

    const/4 v0, 0x2

    move-object v8, v15

    move-object v15, v9

    move-object v9, v11

    invoke-direct/range {v3 .. v9}, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;-><init>(Lcom/dreamplug/fabrik/ui/main/remotecontrol/CompletionAction;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/main/remotecontrol/Metadata;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/main/remotecontrol/TemplateProperties;Lcom/dreamplug/fabrik/ui/main/remotecontrol/DismissConfig;)V

    const/4 v3, 0x0

    aput-object v19, v2, v3

    .line 1235
    new-instance v3, Lcom/dreamplug/fabrik/ui/main/remotecontrol/CompletionAction;

    const-string v4, "remote_coins"

    invoke-direct {v3, v10, v4}, Lcom/dreamplug/fabrik/ui/main/remotecontrol/CompletionAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    new-instance v4, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Metadata;

    .line 1240
    sget-object v23, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1242
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    .line 1243
    sget-object v26, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v21, v4

    move-object/from16 v22, v23

    move-object/from16 v25, v26

    .line 1239
    invoke-direct/range {v21 .. v26}, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Metadata;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    new-array v5, v0, [Lo/addWrite;

    .line 1250
    new-instance v6, Lo/getTargetScrollPosition;

    const-string v7, "https://dg1qgqhnfu4m2.cloudfront.net/heartbeat/b869f6e0d26a11eaa8a6cd9e7268f742.png"

    invoke-direct {v6, v7}, Lo/getTargetScrollPosition;-><init>(Ljava/lang/String;)V

    .line 5043
    new-instance v7, Lo/addWrite;

    invoke-direct {v7, v12, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x0

    aput-object v7, v5, v6

    .line 1251
    new-instance v6, Lo/getTargetScrollPosition;

    const-string v7, "CRED coins"

    invoke-direct {v6, v7}, Lo/getTargetScrollPosition;-><init>(Ljava/lang/String;)V

    .line 6043
    new-instance v7, Lo/addWrite;

    invoke-direct {v7, v14, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x1

    aput-object v7, v5, v6

    .line 1249
    invoke-static {v5, v13}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6105
    new-instance v6, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/HashMap;-><init>(I)V

    check-cast v6, Ljava/util/Map;

    invoke-static {v6, v5}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 1255
    new-instance v22, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

    .line 1256
    new-instance v5, Lcom/dreamplug/fabrik/ui/nba/helper/Deeplink;

    const-string v7, "cred://app/launch?page=home&target=coins_detail"

    invoke-direct {v5, v7}, Lcom/dreamplug/fabrik/ui/nba/helper/Deeplink;-><init>(Ljava/lang/String;)V

    const/16 v35, 0x0

    .line 1258
    new-instance v7, Lo/getTargetScrollPosition;

    const-string v8, "<format><text fgClr=\'#ffffff\'>view coins</text></format>"

    invoke-direct {v7, v8}, Lo/getTargetScrollPosition;-><init>(Ljava/lang/String;)V

    const/16 v39, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const-string v37, "deeplink"

    const-string v38, "light"

    const-string v40, "#000000"

    move-object/from16 v33, v22

    move-object/from16 v34, v5

    move-object/from16 v36, v7

    .line 1255
    invoke-direct/range {v33 .. v43}, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;-><init>(Lcom/dreamplug/fabrik/ui/nba/helper/Deeplink;Lcom/dreamplug/fabrik/ui/nba/helper/Flow;Lo/getTargetScrollPosition;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v23, v5

    check-cast v23, Ljava/util/List;

    .line 1254
    new-instance v39, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Footer;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-string v26, ""

    const-string v27, ""

    move-object/from16 v21, v39

    invoke-direct/range {v21 .. v27}, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Footer;-><init>(Lcom/dreamplug/fabrik/ui/nba/helper/Cta;Ljava/util/List;Lcom/dreamplug/fabrik/ui/nba/helper/Cta;Lcom/dreamplug/fabrik/ui/nba/helper/Cta;Ljava/lang/String;Ljava/lang/String;)V

    .line 7040
    sget-object v5, Lo/forcePersistenceManager;->extraCallback:Lo/forcePersistenceManager;

    if-eqz v5, :cond_8

    move-object/from16 v40, v5

    check-cast v40, Ljava/util/Map;

    .line 1275
    new-instance v5, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Badge;

    invoke-direct {v5, v15, v10, v10}, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Badge;-><init>(Lo/getTargetScrollPosition;Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    new-instance v26, Lcom/dreamplug/fabrik/ui/main/remotecontrol/TemplateProperties;

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v33, v26

    move-object/from16 v36, v6

    move-object/from16 v44, v5

    invoke-direct/range {v33 .. v44}, Lcom/dreamplug/fabrik/ui/main/remotecontrol/TemplateProperties;-><init>(Lcom/dreamplug/fabrik/ui/main/remotecontrol/Background;Lcom/dreamplug/fabrik/ui/main/remotecontrol/Background;Ljava/util/Map;Ljava/util/List;Lcom/dreamplug/fabrik/ui/nba/helper/Meta;Lcom/dreamplug/fabrik/ui/main/remotecontrol/Footer;Ljava/util/Map;Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;Lcom/dreamplug/fabrik/ui/main/remotecontrol/Actionable;Ljava/util/List;Lcom/dreamplug/fabrik/ui/main/remotecontrol/Badge;)V

    .line 1279
    new-instance v5, Lcom/dreamplug/fabrik/ui/main/remotecontrol/DismissConfig;

    invoke-direct {v5, v10, v10, v10, v10}, Lcom/dreamplug/fabrik/ui/main/remotecontrol/DismissConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    new-instance v6, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;

    const-string v23, "1ebaa9ed-bb4d-46ed-9c2e-b8c115f7f5b2:1ebaa9ed-bb4d-46ed-9c2e-b8c115f7f5b2"

    const-string v25, "rc1"

    move-object/from16 v21, v6

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    move-object/from16 v27, v5

    invoke-direct/range {v21 .. v27}, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;-><init>(Lcom/dreamplug/fabrik/ui/main/remotecontrol/CompletionAction;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/main/remotecontrol/Metadata;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/main/remotecontrol/TemplateProperties;Lcom/dreamplug/fabrik/ui/main/remotecontrol/DismissConfig;)V

    const/4 v3, 0x1

    aput-object v6, v2, v3

    .line 1286
    new-instance v3, Lcom/dreamplug/fabrik/ui/main/remotecontrol/CompletionAction;

    const-string v4, "remote_gems"

    invoke-direct {v3, v10, v4}, Lcom/dreamplug/fabrik/ui/main/remotecontrol/CompletionAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    new-instance v4, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Metadata;

    .line 1291
    sget-object v23, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1293
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    .line 1294
    sget-object v26, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v21, v4

    move-object/from16 v22, v23

    move-object/from16 v25, v26

    .line 1290
    invoke-direct/range {v21 .. v26}, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Metadata;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    new-array v5, v0, [Lo/addWrite;

    .line 1301
    new-instance v6, Lo/getTargetScrollPosition;

    const-string v7, "https://dg1qgqhnfu4m2.cloudfront.net/heartbeat/5d765860d54811eab4376d6928bb8096.png"

    invoke-direct {v6, v7}, Lo/getTargetScrollPosition;-><init>(Ljava/lang/String;)V

    .line 7043
    new-instance v7, Lo/addWrite;

    invoke-direct {v7, v12, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x0

    aput-object v7, v5, v6

    .line 1302
    new-instance v6, Lo/getTargetScrollPosition;

    const-string v7, "gems"

    invoke-direct {v6, v7}, Lo/getTargetScrollPosition;-><init>(Ljava/lang/String;)V

    .line 8043
    new-instance v7, Lo/addWrite;

    invoke-direct {v7, v14, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x1

    aput-object v7, v5, v6

    .line 1300
    invoke-static {v5, v13}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8105
    new-instance v6, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/HashMap;-><init>(I)V

    check-cast v6, Ljava/util/Map;

    invoke-static {v6, v5}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 1306
    new-instance v22, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

    .line 1307
    new-instance v5, Lcom/dreamplug/fabrik/ui/nba/helper/Deeplink;

    const-string v7, "cred://app/launch?page=home&target=gems_detail"

    invoke-direct {v5, v7}, Lcom/dreamplug/fabrik/ui/nba/helper/Deeplink;-><init>(Ljava/lang/String;)V

    .line 1309
    new-instance v7, Lo/getTargetScrollPosition;

    const-string v8, "<format><text fgClr=\'#ffffff\'>View gem ledger</text></format>"

    invoke-direct {v7, v8}, Lo/getTargetScrollPosition;-><init>(Ljava/lang/String;)V

    const/16 v39, 0x0

    const-string v37, "deeplink"

    const-string v38, "light"

    const-string v40, "#000000"

    move-object/from16 v33, v22

    move-object/from16 v34, v5

    move-object/from16 v36, v7

    .line 1306
    invoke-direct/range {v33 .. v43}, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;-><init>(Lcom/dreamplug/fabrik/ui/nba/helper/Deeplink;Lcom/dreamplug/fabrik/ui/nba/helper/Flow;Lo/getTargetScrollPosition;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v23, v5

    check-cast v23, Ljava/util/List;

    .line 1305
    new-instance v39, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Footer;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-string v26, ""

    const-string v27, ""

    move-object/from16 v21, v39

    invoke-direct/range {v21 .. v27}, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Footer;-><init>(Lcom/dreamplug/fabrik/ui/nba/helper/Cta;Ljava/util/List;Lcom/dreamplug/fabrik/ui/nba/helper/Cta;Lcom/dreamplug/fabrik/ui/nba/helper/Cta;Ljava/lang/String;Ljava/lang/String;)V

    .line 9040
    sget-object v5, Lo/forcePersistenceManager;->extraCallback:Lo/forcePersistenceManager;

    if-eqz v5, :cond_7

    move-object/from16 v40, v5

    check-cast v40, Ljava/util/Map;

    .line 1326
    new-instance v5, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Badge;

    invoke-direct {v5, v15, v10, v10}, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Badge;-><init>(Lo/getTargetScrollPosition;Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    new-instance v26, Lcom/dreamplug/fabrik/ui/main/remotecontrol/TemplateProperties;

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v33, v26

    move-object/from16 v36, v6

    move-object/from16 v44, v5

    invoke-direct/range {v33 .. v44}, Lcom/dreamplug/fabrik/ui/main/remotecontrol/TemplateProperties;-><init>(Lcom/dreamplug/fabrik/ui/main/remotecontrol/Background;Lcom/dreamplug/fabrik/ui/main/remotecontrol/Background;Ljava/util/Map;Ljava/util/List;Lcom/dreamplug/fabrik/ui/nba/helper/Meta;Lcom/dreamplug/fabrik/ui/main/remotecontrol/Footer;Ljava/util/Map;Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;Lcom/dreamplug/fabrik/ui/main/remotecontrol/Actionable;Ljava/util/List;Lcom/dreamplug/fabrik/ui/main/remotecontrol/Badge;)V

    .line 1330
    new-instance v5, Lcom/dreamplug/fabrik/ui/main/remotecontrol/DismissConfig;

    invoke-direct {v5, v10, v10, v10, v10}, Lcom/dreamplug/fabrik/ui/main/remotecontrol/DismissConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    new-instance v6, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;

    const-string v23, "70a405d6-9626-44b1-8fb3-315d9cb9cf52:70a405d6-9626-44b1-8fb3-315d9cb9cf52"

    const-string v25, "rc2"

    move-object/from16 v21, v6

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    move-object/from16 v27, v5

    invoke-direct/range {v21 .. v27}, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;-><init>(Lcom/dreamplug/fabrik/ui/main/remotecontrol/CompletionAction;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/main/remotecontrol/Metadata;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/main/remotecontrol/TemplateProperties;Lcom/dreamplug/fabrik/ui/main/remotecontrol/DismissConfig;)V

    aput-object v6, v2, v0

    .line 1337
    new-instance v3, Lcom/dreamplug/fabrik/ui/main/remotecontrol/CompletionAction;

    const-string v4, "remote_win"

    invoke-direct {v3, v10, v4}, Lcom/dreamplug/fabrik/ui/main/remotecontrol/CompletionAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    new-instance v36, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Metadata;

    .line 1342
    sget-object v23, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1344
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    .line 1345
    sget-object v26, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v21, v36

    move-object/from16 v22, v23

    move-object/from16 v25, v26

    .line 1341
    invoke-direct/range {v21 .. v26}, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Metadata;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    new-array v4, v0, [Lo/addWrite;

    .line 1352
    new-instance v5, Lo/getTargetScrollPosition;

    const-string v6, "https://dg1qgqhnfu4m2.cloudfront.net/heartbeat/485a5f70d26a11eaa8a6cd9e7268f742.png"

    invoke-direct {v5, v6}, Lo/getTargetScrollPosition;-><init>(Ljava/lang/String;)V

    .line 9043
    new-instance v6, Lo/addWrite;

    invoke-direct {v6, v12, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x0

    aput-object v6, v4, v5

    .line 1353
    new-instance v5, Lo/getTargetScrollPosition;

    const-string v6, "explore rewards"

    invoke-direct {v5, v6}, Lo/getTargetScrollPosition;-><init>(Ljava/lang/String;)V

    .line 10043
    new-instance v6, Lo/addWrite;

    invoke-direct {v6, v14, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x1

    aput-object v6, v4, v5

    .line 1351
    invoke-static {v4, v13}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10105
    new-instance v5, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    check-cast v5, Ljava/util/Map;

    invoke-static {v5, v4}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 1357
    new-instance v22, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

    .line 1358
    new-instance v4, Lcom/dreamplug/fabrik/ui/nba/helper/Deeplink;

    const-string v6, "cred://app/launch?page=lifestyle&target=win_farm"

    invoke-direct {v4, v6}, Lcom/dreamplug/fabrik/ui/nba/helper/Deeplink;-><init>(Ljava/lang/String;)V

    const/16 v39, 0x0

    .line 1360
    new-instance v6, Lo/getTargetScrollPosition;

    const-string v7, "<format><text fgClr=\'#ffffff\'>View rewards</text></format>"

    invoke-direct {v6, v7}, Lo/getTargetScrollPosition;-><init>(Ljava/lang/String;)V

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const-string v41, "deeplink"

    const-string v42, "light"

    const-string v44, "#000000"

    move-object/from16 v37, v22

    move-object/from16 v38, v4

    move-object/from16 v40, v6

    .line 1357
    invoke-direct/range {v37 .. v47}, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;-><init>(Lcom/dreamplug/fabrik/ui/nba/helper/Deeplink;Lcom/dreamplug/fabrik/ui/nba/helper/Flow;Lo/getTargetScrollPosition;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v23, v4

    check-cast v23, Ljava/util/List;

    .line 1356
    new-instance v43, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Footer;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-string v26, ""

    const-string v27, ""

    move-object/from16 v21, v43

    invoke-direct/range {v21 .. v27}, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Footer;-><init>(Lcom/dreamplug/fabrik/ui/nba/helper/Cta;Ljava/util/List;Lcom/dreamplug/fabrik/ui/nba/helper/Cta;Lcom/dreamplug/fabrik/ui/nba/helper/Cta;Ljava/lang/String;Ljava/lang/String;)V

    .line 11040
    sget-object v4, Lo/forcePersistenceManager;->extraCallback:Lo/forcePersistenceManager;

    if-eqz v4, :cond_6

    move-object/from16 v44, v4

    check-cast v44, Ljava/util/Map;

    .line 1377
    new-instance v4, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Badge;

    invoke-direct {v4, v15, v10, v10}, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Badge;-><init>(Lo/getTargetScrollPosition;Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    new-instance v6, Lcom/dreamplug/fabrik/ui/main/remotecontrol/TemplateProperties;

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    move-object/from16 v37, v6

    move-object/from16 v40, v5

    move-object/from16 v48, v4

    invoke-direct/range {v37 .. v48}, Lcom/dreamplug/fabrik/ui/main/remotecontrol/TemplateProperties;-><init>(Lcom/dreamplug/fabrik/ui/main/remotecontrol/Background;Lcom/dreamplug/fabrik/ui/main/remotecontrol/Background;Ljava/util/Map;Ljava/util/List;Lcom/dreamplug/fabrik/ui/nba/helper/Meta;Lcom/dreamplug/fabrik/ui/main/remotecontrol/Footer;Ljava/util/Map;Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;Lcom/dreamplug/fabrik/ui/main/remotecontrol/Actionable;Ljava/util/List;Lcom/dreamplug/fabrik/ui/main/remotecontrol/Badge;)V

    .line 1336
    new-instance v4, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;

    const-string v35, "537ed2e0-4ec3-4326-a6fd-b4da26811593:537ed2e0-4ec3-4326-a6fd-b4da26811593"

    const-string v37, "rc1"

    move-object/from16 v33, v4

    move-object/from16 v34, v3

    move-object/from16 v38, v6

    invoke-direct/range {v33 .. v39}, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;-><init>(Lcom/dreamplug/fabrik/ui/main/remotecontrol/CompletionAction;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/main/remotecontrol/Metadata;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/main/remotecontrol/TemplateProperties;Lcom/dreamplug/fabrik/ui/main/remotecontrol/DismissConfig;)V

    const/4 v3, 0x3

    aput-object v4, v2, v3

    .line 1384
    new-instance v3, Lcom/dreamplug/fabrik/ui/main/remotecontrol/CompletionAction;

    const-string v4, "remote_refer"

    invoke-direct {v3, v10, v4}, Lcom/dreamplug/fabrik/ui/main/remotecontrol/CompletionAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    new-instance v4, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Metadata;

    .line 1389
    sget-object v23, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1391
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    .line 1392
    sget-object v26, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v21, v4

    move-object/from16 v22, v23

    move-object/from16 v25, v26

    .line 1388
    invoke-direct/range {v21 .. v26}, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Metadata;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    const/4 v5, 0x3

    new-array v6, v5, [Lo/addWrite;

    .line 1399
    new-instance v5, Lo/getTargetScrollPosition;

    const-string v7, "https://dg1qgqhnfu4m2.cloudfront.net/heartbeat/5ac1d3d0d55511ea8d28b98a3dec13ba.png"

    invoke-direct {v5, v7}, Lo/getTargetScrollPosition;-><init>(Ljava/lang/String;)V

    .line 11043
    new-instance v7, Lo/addWrite;

    invoke-direct {v7, v12, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x0

    aput-object v7, v6, v5

    .line 1400
    new-instance v5, Lo/getTargetScrollPosition;

    const-string v7, "refer friends and earn gems"

    invoke-direct {v5, v7}, Lo/getTargetScrollPosition;-><init>(Ljava/lang/String;)V

    .line 12043
    new-instance v7, Lo/addWrite;

    invoke-direct {v7, v14, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x1

    aput-object v7, v6, v5

    .line 1401
    new-instance v5, Lo/getTargetScrollPosition;

    const-string v7, "https://dg1qgqhnfu4m2.cloudfront.net/heartbeat/30756200d70c11ea858e0f674fc2150b.png"

    invoke-direct {v5, v7}, Lo/getTargetScrollPosition;-><init>(Ljava/lang/String;)V

    .line 13043
    new-instance v7, Lo/addWrite;

    const-string v8, "arrow"

    invoke-direct {v7, v8, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v6, v0

    .line 1398
    invoke-static {v6, v13}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13105
    new-instance v5, Ljava/util/HashMap;

    const/4 v7, 0x3

    invoke-static {v7}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v9

    invoke-direct {v5, v9}, Ljava/util/HashMap;-><init>(I)V

    check-cast v5, Ljava/util/Map;

    invoke-static {v5, v6}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 1405
    new-instance v22, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

    .line 1406
    new-instance v6, Lcom/dreamplug/fabrik/ui/nba/helper/Deeplink;

    const-string v7, "cred://app/launch?target=earn_gems&source=remote_control"

    invoke-direct {v6, v7}, Lcom/dreamplug/fabrik/ui/nba/helper/Deeplink;-><init>(Ljava/lang/String;)V

    const/16 v35, 0x0

    .line 1408
    new-instance v7, Lo/getTargetScrollPosition;

    const-string v9, "<format><text fgClr=\'#ffffff\'>Refer now</text></format>"

    invoke-direct {v7, v9}, Lo/getTargetScrollPosition;-><init>(Ljava/lang/String;)V

    const/16 v43, 0x0

    const-string v37, "deeplink"

    const-string v38, "light"

    const-string v40, "#000000"

    move-object/from16 v33, v22

    move-object/from16 v34, v6

    move-object/from16 v36, v7

    .line 1405
    invoke-direct/range {v33 .. v43}, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;-><init>(Lcom/dreamplug/fabrik/ui/nba/helper/Deeplink;Lcom/dreamplug/fabrik/ui/nba/helper/Flow;Lo/getTargetScrollPosition;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v23, v6

    check-cast v23, Ljava/util/List;

    .line 1404
    new-instance v39, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Footer;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-string v26, ""

    const-string v27, ""

    move-object/from16 v21, v39

    invoke-direct/range {v21 .. v27}, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Footer;-><init>(Lcom/dreamplug/fabrik/ui/nba/helper/Cta;Ljava/util/List;Lcom/dreamplug/fabrik/ui/nba/helper/Cta;Lcom/dreamplug/fabrik/ui/nba/helper/Cta;Ljava/lang/String;Ljava/lang/String;)V

    .line 14040
    sget-object v6, Lo/forcePersistenceManager;->extraCallback:Lo/forcePersistenceManager;

    if-eqz v6, :cond_5

    move-object/from16 v40, v6

    check-cast v40, Ljava/util/Map;

    const/4 v6, 0x4

    .line 1425
    new-instance v7, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Badge;

    invoke-direct {v7, v15, v10, v10}, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Badge;-><init>(Lo/getTargetScrollPosition;Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    new-instance v26, Lcom/dreamplug/fabrik/ui/main/remotecontrol/TemplateProperties;

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v33, v26

    move-object/from16 v36, v5

    move-object/from16 v44, v7

    invoke-direct/range {v33 .. v44}, Lcom/dreamplug/fabrik/ui/main/remotecontrol/TemplateProperties;-><init>(Lcom/dreamplug/fabrik/ui/main/remotecontrol/Background;Lcom/dreamplug/fabrik/ui/main/remotecontrol/Background;Ljava/util/Map;Ljava/util/List;Lcom/dreamplug/fabrik/ui/nba/helper/Meta;Lcom/dreamplug/fabrik/ui/main/remotecontrol/Footer;Ljava/util/Map;Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;Lcom/dreamplug/fabrik/ui/main/remotecontrol/Actionable;Ljava/util/List;Lcom/dreamplug/fabrik/ui/main/remotecontrol/Badge;)V

    .line 1383
    new-instance v5, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;

    const/16 v27, 0x0

    const-string v23, "bb660bec-94d7-4f5f-a273-10a901d136cb:bb660bec-94d7-4f5f-a273-10a901d136cb"

    const-string v25, "rc3"

    move-object/from16 v21, v5

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    invoke-direct/range {v21 .. v27}, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;-><init>(Lcom/dreamplug/fabrik/ui/main/remotecontrol/CompletionAction;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/main/remotecontrol/Metadata;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/main/remotecontrol/TemplateProperties;Lcom/dreamplug/fabrik/ui/main/remotecontrol/DismissConfig;)V

    aput-object v5, v2, v6

    .line 1432
    new-instance v3, Lcom/dreamplug/fabrik/ui/main/remotecontrol/CompletionAction;

    const-string v4, "remote_payment history"

    invoke-direct {v3, v10, v4}, Lcom/dreamplug/fabrik/ui/main/remotecontrol/CompletionAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    new-instance v36, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Metadata;

    .line 1437
    sget-object v23, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1439
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    .line 1440
    sget-object v26, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v21, v36

    move-object/from16 v22, v23

    move-object/from16 v25, v26

    .line 1436
    invoke-direct/range {v21 .. v26}, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Metadata;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    const/4 v4, 0x3

    new-array v5, v4, [Lo/addWrite;

    .line 1447
    new-instance v4, Lo/getTargetScrollPosition;

    const-string v6, "https://dg1qgqhnfu4m2.cloudfront.net/heartbeat/43d815c0d55611ea8d28b98a3dec13ba.png"

    invoke-direct {v4, v6}, Lo/getTargetScrollPosition;-><init>(Ljava/lang/String;)V

    .line 14043
    new-instance v6, Lo/addWrite;

    invoke-direct {v6, v12, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x0

    aput-object v6, v5, v4

    .line 1448
    new-instance v4, Lo/getTargetScrollPosition;

    const-string/jumbo v6, "view payment history"

    invoke-direct {v4, v6}, Lo/getTargetScrollPosition;-><init>(Ljava/lang/String;)V

    .line 15043
    new-instance v6, Lo/addWrite;

    invoke-direct {v6, v14, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x1

    aput-object v6, v5, v4

    .line 1449
    new-instance v4, Lo/getTargetScrollPosition;

    const-string v6, "https://dg1qgqhnfu4m2.cloudfront.net/heartbeat/3dafeb20d70c11ea858e0f674fc2150b.png"

    invoke-direct {v4, v6}, Lo/getTargetScrollPosition;-><init>(Ljava/lang/String;)V

    .line 16043
    new-instance v6, Lo/addWrite;

    invoke-direct {v6, v8, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v5, v0

    .line 1446
    invoke-static {v5, v13}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16105
    new-instance v4, Ljava/util/HashMap;

    const/4 v6, 0x3

    invoke-static {v6}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v7

    invoke-direct {v4, v7}, Ljava/util/HashMap;-><init>(I)V

    check-cast v4, Ljava/util/Map;

    invoke-static {v4, v5}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 1453
    new-instance v22, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

    .line 1454
    new-instance v5, Lcom/dreamplug/fabrik/ui/nba/helper/Deeplink;

    const-string v6, "cred://app/launch?page=cards&target=web&extra=https://webview-prod.dreamplug.in/transactions"

    invoke-direct {v5, v6}, Lcom/dreamplug/fabrik/ui/nba/helper/Deeplink;-><init>(Ljava/lang/String;)V

    const/16 v39, 0x0

    .line 1456
    new-instance v6, Lo/getTargetScrollPosition;

    const-string v7, "<format><text fgClr=\'#ffffff\'>View payment history</text></format>"

    invoke-direct {v6, v7}, Lo/getTargetScrollPosition;-><init>(Ljava/lang/String;)V

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const-string v41, "deeplink"

    const-string v42, "light"

    const-string v44, "#000000"

    move-object/from16 v37, v22

    move-object/from16 v38, v5

    move-object/from16 v40, v6

    .line 1453
    invoke-direct/range {v37 .. v47}, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;-><init>(Lcom/dreamplug/fabrik/ui/nba/helper/Deeplink;Lcom/dreamplug/fabrik/ui/nba/helper/Flow;Lo/getTargetScrollPosition;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v23, v5

    check-cast v23, Ljava/util/List;

    .line 1452
    new-instance v43, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Footer;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-string v26, ""

    const-string v27, ""

    move-object/from16 v21, v43

    invoke-direct/range {v21 .. v27}, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Footer;-><init>(Lcom/dreamplug/fabrik/ui/nba/helper/Cta;Ljava/util/List;Lcom/dreamplug/fabrik/ui/nba/helper/Cta;Lcom/dreamplug/fabrik/ui/nba/helper/Cta;Ljava/lang/String;Ljava/lang/String;)V

    .line 17040
    sget-object v5, Lo/forcePersistenceManager;->extraCallback:Lo/forcePersistenceManager;

    if-eqz v5, :cond_4

    move-object/from16 v44, v5

    check-cast v44, Ljava/util/Map;

    const/4 v5, 0x5

    .line 1473
    new-instance v6, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Badge;

    invoke-direct {v6, v15, v10, v10}, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Badge;-><init>(Lo/getTargetScrollPosition;Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    new-instance v7, Lcom/dreamplug/fabrik/ui/main/remotecontrol/TemplateProperties;

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    move-object/from16 v37, v7

    move-object/from16 v40, v4

    move-object/from16 v48, v6

    invoke-direct/range {v37 .. v48}, Lcom/dreamplug/fabrik/ui/main/remotecontrol/TemplateProperties;-><init>(Lcom/dreamplug/fabrik/ui/main/remotecontrol/Background;Lcom/dreamplug/fabrik/ui/main/remotecontrol/Background;Ljava/util/Map;Ljava/util/List;Lcom/dreamplug/fabrik/ui/nba/helper/Meta;Lcom/dreamplug/fabrik/ui/main/remotecontrol/Footer;Ljava/util/Map;Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;Lcom/dreamplug/fabrik/ui/main/remotecontrol/Actionable;Ljava/util/List;Lcom/dreamplug/fabrik/ui/main/remotecontrol/Badge;)V

    .line 1431
    new-instance v4, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;

    const-string v35, "3bbe26a6-4dd3-40ff-892e-c67c5d09cd31:3bbe26a6-4dd3-40ff-892e-c67c5d09cd31"

    const-string v37, "rc3"

    move-object/from16 v33, v4

    move-object/from16 v34, v3

    move-object/from16 v38, v7

    invoke-direct/range {v33 .. v39}, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;-><init>(Lcom/dreamplug/fabrik/ui/main/remotecontrol/CompletionAction;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/main/remotecontrol/Metadata;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/main/remotecontrol/TemplateProperties;Lcom/dreamplug/fabrik/ui/main/remotecontrol/DismissConfig;)V

    aput-object v4, v2, v5

    .line 1480
    new-instance v3, Lcom/dreamplug/fabrik/ui/main/remotecontrol/CompletionAction;

    const-string/jumbo v4, "stash_story_3"

    invoke-direct {v3, v10, v4}, Lcom/dreamplug/fabrik/ui/main/remotecontrol/CompletionAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    new-instance v4, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Metadata;

    .line 1485
    sget-object v23, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1487
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    .line 1488
    sget-object v26, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v21, v4

    move-object/from16 v22, v23

    move-object/from16 v25, v26

    .line 1484
    invoke-direct/range {v21 .. v26}, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Metadata;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    const/4 v5, 0x3

    new-array v6, v5, [Lo/addWrite;

    .line 1495
    new-instance v5, Lo/getTargetScrollPosition;

    const-string v7, "https://dg1qgqhnfu4m2.cloudfront.net/heartbeat/063124e0d55211eaa3eabd872e0139db.png"

    invoke-direct {v5, v7}, Lo/getTargetScrollPosition;-><init>(Ljava/lang/String;)V

    .line 17043
    new-instance v7, Lo/addWrite;

    invoke-direct {v7, v12, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x0

    aput-object v7, v6, v5

    .line 1496
    new-instance v5, Lo/getTargetScrollPosition;

    const-string v7, "get support"

    invoke-direct {v5, v7}, Lo/getTargetScrollPosition;-><init>(Ljava/lang/String;)V

    .line 18043
    new-instance v7, Lo/addWrite;

    invoke-direct {v7, v14, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x1

    aput-object v7, v6, v5

    .line 1497
    new-instance v5, Lo/getTargetScrollPosition;

    const-string v7, "https://dg1qgqhnfu4m2.cloudfront.net/heartbeat/20179fe0d70c11ea858e0f674fc2150b.png"

    invoke-direct {v5, v7}, Lo/getTargetScrollPosition;-><init>(Ljava/lang/String;)V

    .line 19043
    new-instance v7, Lo/addWrite;

    invoke-direct {v7, v8, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v6, v0

    .line 1494
    invoke-static {v6, v13}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19105
    new-instance v0, Ljava/util/HashMap;

    const/4 v5, 0x3

    invoke-static {v5}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, v6}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 1501
    new-instance v5, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

    .line 1502
    new-instance v6, Lcom/dreamplug/fabrik/ui/nba/helper/Deeplink;

    const-string v7, "cred://app/launch?page=home&target=web&extra=https://webview-stg.dreamplug.in/support"

    invoke-direct {v6, v7}, Lcom/dreamplug/fabrik/ui/nba/helper/Deeplink;-><init>(Ljava/lang/String;)V

    const/16 v23, 0x0

    .line 1504
    new-instance v7, Lo/getTargetScrollPosition;

    const-string v8, "<format><text fgClr=\'#ffffff\'>support</text></format>"

    invoke-direct {v7, v8}, Lo/getTargetScrollPosition;-><init>(Ljava/lang/String;)V

    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const-string v25, "deeplink"

    const-string v26, "light"

    const-string v28, "#000000"

    const-string v31, "rc_support"

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v24, v7

    .line 1501
    invoke-direct/range {v21 .. v31}, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;-><init>(Lcom/dreamplug/fabrik/ui/nba/helper/Deeplink;Lcom/dreamplug/fabrik/ui/nba/helper/Flow;Lo/getTargetScrollPosition;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v23, v6

    check-cast v23, Ljava/util/List;

    .line 1500
    new-instance v6, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Footer;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-string v26, ""

    const-string v27, ""

    move-object/from16 v21, v6

    move-object/from16 v22, v5

    invoke-direct/range {v21 .. v27}, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Footer;-><init>(Lcom/dreamplug/fabrik/ui/nba/helper/Cta;Ljava/util/List;Lcom/dreamplug/fabrik/ui/nba/helper/Cta;Lcom/dreamplug/fabrik/ui/nba/helper/Cta;Ljava/lang/String;Ljava/lang/String;)V

    .line 20040
    sget-object v5, Lo/forcePersistenceManager;->extraCallback:Lo/forcePersistenceManager;

    if-eqz v5, :cond_3

    move-object/from16 v28, v5

    check-cast v28, Ljava/util/Map;

    const/4 v5, 0x6

    .line 1521
    new-instance v7, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Badge;

    invoke-direct {v7, v15, v10, v10}, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Badge;-><init>(Lo/getTargetScrollPosition;Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    new-instance v8, Lcom/dreamplug/fabrik/ui/main/remotecontrol/TemplateProperties;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v21, v8

    move-object/from16 v24, v0

    move-object/from16 v27, v6

    move-object/from16 v32, v7

    invoke-direct/range {v21 .. v32}, Lcom/dreamplug/fabrik/ui/main/remotecontrol/TemplateProperties;-><init>(Lcom/dreamplug/fabrik/ui/main/remotecontrol/Background;Lcom/dreamplug/fabrik/ui/main/remotecontrol/Background;Ljava/util/Map;Ljava/util/List;Lcom/dreamplug/fabrik/ui/nba/helper/Meta;Lcom/dreamplug/fabrik/ui/main/remotecontrol/Footer;Ljava/util/Map;Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;Lcom/dreamplug/fabrik/ui/main/remotecontrol/Actionable;Ljava/util/List;Lcom/dreamplug/fabrik/ui/main/remotecontrol/Badge;)V

    .line 1479
    new-instance v0, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;

    const/16 v27, 0x0

    const-string v23, "8815fa30-2698-4da1-a274-b60bb6aa5b90:8815fa30-2698-4da1-a274-b60bb6aa5b90"

    const-string v25, "rc3"

    move-object/from16 v21, v0

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    move-object/from16 v26, v8

    invoke-direct/range {v21 .. v27}, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;-><init>(Lcom/dreamplug/fabrik/ui/main/remotecontrol/CompletionAction;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/main/remotecontrol/Metadata;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/main/remotecontrol/TemplateProperties;Lcom/dreamplug/fabrik/ui/main/remotecontrol/DismissConfig;)V

    aput-object v0, v2, v5

    .line 1179
    invoke-static {v2}, Lo/getSessionPersistenceKey;->extraCallback([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v2, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlResponse;

    invoke-direct {v2, v0}, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlResponse;-><init>(Ljava/util/List;)V

    .line 21020
    iget-object v0, v2, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlResponse;->onMessageChannelReady:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 84
    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    :cond_2
    move-object/from16 v0, p0

    .line 85
    iget-object v2, v0, Lo/onAnimationFinished$onNavigationEvent;->ICustomTabsCallback:Lo/onAnimationFinished;

    .line 21047
    iget-object v2, v2, Lo/onAnimationFinished;->ICustomTabsCallback:Lo/setActive;

    .line 85
    invoke-virtual {v2, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    .line 20040
    new-instance v1, Lkotlin/TypeCastException;

    move-object/from16 v2, v20

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v2, v20

    .line 17040
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v2, v20

    .line 14040
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v2, v20

    .line 11040
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v2, v20

    .line 9040
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v2, v20

    .line 7040
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    move-object v2, v13

    .line 5040
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    :goto_0
    return-void
.end method
