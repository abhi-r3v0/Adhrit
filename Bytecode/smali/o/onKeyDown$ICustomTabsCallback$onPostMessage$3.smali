.class final Lo/onKeyDown$ICustomTabsCallback$onPostMessage$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onKeyDown$ICustomTabsCallback$onPostMessage;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/onKeyDown$ICustomTabsCallback$onPostMessage;


# direct methods
.method constructor <init>(Lo/onKeyDown$ICustomTabsCallback$onPostMessage;)V
    .locals 0

    iput-object p1, p0, Lo/onKeyDown$ICustomTabsCallback$onPostMessage$3;->ICustomTabsCallback:Lo/onKeyDown$ICustomTabsCallback$onPostMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 21

    move-object/from16 v0, p0

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 88
    iget-object v2, v0, Lo/onKeyDown$ICustomTabsCallback$onPostMessage$3;->ICustomTabsCallback:Lo/onKeyDown$ICustomTabsCallback$onPostMessage;

    iget-object v2, v2, Lo/onKeyDown$ICustomTabsCallback$onPostMessage;->onMessageChannelReady:Lo/getScrapOrHiddenOrCachedHolderForPosition;

    check-cast v2, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object v2, v2, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 88
    check-cast v2, Lclub/cred/interjection/data/models/CampaignResponse;

    if-eqz v2, :cond_0

    .line 1021
    iget-object v2, v2, Lclub/cred/interjection/data/models/CampaignResponse;->onNavigationEvent:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    .line 1070
    sget-object v2, Lo/getEventTarget;->extraCallback:Lo/getEventTarget;

    check-cast v2, Ljava/util/List;

    .line 88
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lclub/cred/interjection/data/models/BECampaign;

    .line 90
    iget-object v5, v0, Lo/onKeyDown$ICustomTabsCallback$onPostMessage$3;->ICustomTabsCallback:Lo/onKeyDown$ICustomTabsCallback$onPostMessage;

    iget-object v5, v5, Lo/onKeyDown$ICustomTabsCallback$onPostMessage;->ICustomTabsCallback:Lo/onKeyDown$ICustomTabsCallback;

    iget-object v5, v5, Lo/onKeyDown$ICustomTabsCallback;->onNavigationEvent:Lo/onKeyDown;

    .line 3015
    iget-object v5, v5, Lo/onKeyDown;->onMessageChannelReady:Lclub/cred/interjection/data/db/CampaignDatabase;

    .line 90
    invoke-virtual {v5}, Lclub/cred/interjection/data/db/CampaignDatabase;->onTransact()Lo/createTextView;

    move-result-object v5

    .line 3031
    iget-object v6, v4, Lclub/cred/interjection/data/models/BECampaign;->onPostMessage:Ljava/lang/String;

    .line 90
    invoke-interface {v5, v6}, Lo/createTextView;->onPostMessage(Ljava/lang/String;)Lclub/cred/interjection/data/models/Campaign;

    move-result-object v5

    .line 92
    new-instance v14, Lclub/cred/interjection/data/models/Campaign;

    .line 3035
    iget-object v8, v4, Lclub/cred/interjection/data/models/BECampaign;->onNavigationEvent:Ljava/lang/Long;

    .line 3037
    iget-object v9, v4, Lclub/cred/interjection/data/models/BECampaign;->onMessageChannelReady:Ljava/lang/Long;

    .line 95
    invoke-virtual {v4}, Lclub/cred/interjection/data/models/BECampaign;->onMessageChannelReady()Ljava/util/List;

    move-result-object v10

    .line 3045
    iget-object v12, v4, Lclub/cred/interjection/data/models/BECampaign;->ICustomTabsCallback$Stub:Ljava/lang/Integer;

    .line 4031
    iget-object v7, v4, Lclub/cred/interjection/data/models/BECampaign;->onPostMessage:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 4075
    iget v5, v5, Lclub/cred/interjection/data/models/Campaign;->onNavigationEvent:I

    move v11, v5

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    const/4 v11, 0x0

    .line 99
    :goto_2
    new-instance v13, Lclub/cred/interjection/data/models/DataCampaign;

    .line 5041
    iget-object v5, v4, Lclub/cred/interjection/data/models/BECampaign;->asInterface:Ljava/lang/Integer;

    .line 5043
    iget-object v6, v4, Lclub/cred/interjection/data/models/BECampaign;->asBinder:Ljava/lang/Integer;

    .line 6033
    iget-object v15, v4, Lclub/cred/interjection/data/models/BECampaign;->ICustomTabsCallback:Lclub/cred/interjection/data/models/Action;

    .line 6039
    iget-object v3, v4, Lclub/cred/interjection/data/models/BECampaign;->extraCallback:Ljava/util/List;

    .line 6047
    iget-object v4, v4, Lclub/cred/interjection/data/models/BECampaign;->onTransact:Ljava/lang/String;

    move-object/from16 v19, v15

    move-object v15, v13

    move-object/from16 v16, v3

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v20, v4

    .line 99
    invoke-direct/range {v15 .. v20}, Lclub/cred/interjection/data/models/DataCampaign;-><init>(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Lclub/cred/interjection/data/models/Action;Ljava/lang/String;)V

    move-object v6, v14

    .line 92
    invoke-direct/range {v6 .. v13}, Lclub/cred/interjection/data/models/Campaign;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;ILjava/lang/Integer;Lclub/cred/interjection/data/models/DataCampaign;)V

    .line 91
    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 110
    :cond_3
    iget-object v2, v0, Lo/onKeyDown$ICustomTabsCallback$onPostMessage$3;->ICustomTabsCallback:Lo/onKeyDown$ICustomTabsCallback$onPostMessage;

    iget-object v2, v2, Lo/onKeyDown$ICustomTabsCallback$onPostMessage;->ICustomTabsCallback:Lo/onKeyDown$ICustomTabsCallback;

    iget-object v2, v2, Lo/onKeyDown$ICustomTabsCallback;->onNavigationEvent:Lo/onKeyDown;

    .line 7015
    iget-object v2, v2, Lo/onKeyDown;->onMessageChannelReady:Lclub/cred/interjection/data/db/CampaignDatabase;

    .line 110
    invoke-virtual {v2}, Lclub/cred/interjection/data/db/CampaignDatabase;->onTransact()Lo/createTextView;

    move-result-object v2

    invoke-interface {v2, v1}, Lo/createTextView;->onNavigationEvent(Ljava/util/List;)V

    .line 111
    iget-object v1, v0, Lo/onKeyDown$ICustomTabsCallback$onPostMessage$3;->ICustomTabsCallback:Lo/onKeyDown$ICustomTabsCallback$onPostMessage;

    iget-object v1, v1, Lo/onKeyDown$ICustomTabsCallback$onPostMessage;->ICustomTabsCallback:Lo/onKeyDown$ICustomTabsCallback;

    iget-object v1, v1, Lo/onKeyDown$ICustomTabsCallback;->onNavigationEvent:Lo/onKeyDown;

    .line 8015
    iget-object v1, v1, Lo/onKeyDown;->onMessageChannelReady:Lclub/cred/interjection/data/db/CampaignDatabase;

    .line 111
    invoke-virtual {v1}, Lclub/cred/interjection/data/db/CampaignDatabase;->onTransact()Lo/createTextView;

    move-result-object v1

    iget-object v2, v0, Lo/onKeyDown$ICustomTabsCallback$onPostMessage$3;->ICustomTabsCallback:Lo/onKeyDown$ICustomTabsCallback$onPostMessage;

    iget-object v2, v2, Lo/onKeyDown$ICustomTabsCallback$onPostMessage;->onMessageChannelReady:Lo/getScrapOrHiddenOrCachedHolderForPosition;

    check-cast v2, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 9009
    iget-object v2, v2, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 111
    check-cast v2, Lclub/cred/interjection/data/models/CampaignResponse;

    if-eqz v2, :cond_4

    .line 9017
    iget-object v3, v2, Lclub/cred/interjection/data/models/CampaignResponse;->extraCallback:Ljava/util/List;

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    if-nez v3, :cond_5

    .line 9070
    sget-object v2, Lo/getEventTarget;->extraCallback:Lo/getEventTarget;

    move-object v3, v2

    check-cast v3, Ljava/util/List;

    .line 111
    :cond_5
    invoke-interface {v1, v3}, Lo/createTextView;->extraCallback(Ljava/util/List;)V

    return-void
.end method
