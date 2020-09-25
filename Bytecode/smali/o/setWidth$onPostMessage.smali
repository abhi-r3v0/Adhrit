.class public final Lo/setWidth$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setWidth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/cred/pay/repository/models/CardBinResponse;",
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
        "com/cred/pay/core/CardValidator$fetchBinDetails$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/cred/pay/repository/models/CardBinResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "onResponse",
        "",
        "result",
        "Lcom/dreamplug/network/internals/call/CallResult;",
        "credpaycore_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/setWidth;


# direct methods
.method constructor <init>(Lo/setWidth;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lo/setWidth$onPostMessage;->onMessageChannelReady:Lo/setWidth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/cred/pay/repository/models/CardBinResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "result"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    iget-object v2, v0, Lo/setWidth$onPostMessage;->onMessageChannelReady:Lo/setWidth;

    const/4 v3, 0x0

    .line 1135
    iput-boolean v3, v2, Lo/setWidth;->extraCallback:Z

    .line 151
    instance-of v2, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    const-string v4, "failure"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_b

    .line 152
    iget-object v2, v0, Lo/setWidth$onPostMessage;->onMessageChannelReady:Lo/setWidth;

    .line 2024
    iput-object v6, v2, Lo/setWidth;->onMessageChannelReady:Ljava/lang/String;

    .line 153
    check-cast v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 3009
    iget-object v2, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 153
    check-cast v2, Lcom/cred/pay/repository/models/CardBinResponse;

    if-eqz v2, :cond_0

    .line 3016
    iget-object v2, v2, Lcom/cred/pay/repository/models/CardBinResponse;->ICustomTabsCallback:Lcom/cred/pay/repository/models/CardBinDetails;

    if-eqz v2, :cond_0

    .line 3043
    iget-object v2, v2, Lcom/cred/pay/repository/models/CardBinDetails;->onNavigationEvent:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v6

    :goto_0
    if-eqz v2, :cond_a

    .line 154
    iget-object v2, v0, Lo/setWidth$onPostMessage;->onMessageChannelReady:Lo/setWidth;

    const-string/jumbo v4, "success"

    .line 3192
    invoke-virtual {v2, v4, v6, v6}, Lo/setWidth;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v2, v0, Lo/setWidth$onPostMessage;->onMessageChannelReady:Lo/setWidth;

    .line 4024
    invoke-virtual {v2}, Lo/setWidth;->ICustomTabsCallback()V

    .line 156
    iget-object v2, v0, Lo/setWidth$onPostMessage;->onMessageChannelReady:Lo/setWidth;

    sget-object v4, Lo/setEpicenterBounds;->onTransact:Lo/setEpicenterBounds$extraCallback;

    invoke-static {}, Lo/setEpicenterBounds$extraCallback;->onNavigationEvent()Ljava/util/ArrayList;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lo/setEpicenterBounds;

    .line 5004
    iget-object v8, v8, Lo/setEpicenterBounds;->onPostMessage:Ljava/lang/String;

    .line 5009
    iget-object v9, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 157
    check-cast v9, Lcom/cred/pay/repository/models/CardBinResponse;

    if-eqz v9, :cond_2

    .line 5016
    iget-object v9, v9, Lcom/cred/pay/repository/models/CardBinResponse;->ICustomTabsCallback:Lcom/cred/pay/repository/models/CardBinDetails;

    if-eqz v9, :cond_2

    .line 5040
    iget-object v9, v9, Lcom/cred/pay/repository/models/CardBinDetails;->extraCallback:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v9, v6

    :goto_1
    if-nez v8, :cond_4

    if-nez v9, :cond_3

    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    .line 5056
    :cond_4
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    :goto_2
    if-eqz v8, :cond_1

    goto :goto_3

    :cond_5
    move-object v7, v6

    .line 156
    :goto_3
    check-cast v7, Lo/setEpicenterBounds;

    if-nez v7, :cond_6

    .line 158
    sget-object v3, Lo/setEpicenterBounds$onTransact;->ICustomTabsCallback$Stub:Lo/setEpicenterBounds$onTransact;

    move-object v7, v3

    check-cast v7, Lo/setEpicenterBounds;

    .line 6024
    :cond_6
    invoke-virtual {v2, v7}, Lo/setWidth;->onMessageChannelReady(Lo/setEpicenterBounds;)V

    .line 159
    iget-object v2, v0, Lo/setWidth$onPostMessage;->onMessageChannelReady:Lo/setWidth;

    .line 7024
    iget-object v7, v2, Lo/setWidth;->onNavigationEvent:Lo/setWidth$onMessageChannelReady;

    const/4 v8, 0x0

    .line 8009
    iget-object v3, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 160
    check-cast v3, Lcom/cred/pay/repository/models/CardBinResponse;

    if-eqz v3, :cond_9

    .line 8016
    iget-object v3, v3, Lcom/cred/pay/repository/models/CardBinResponse;->ICustomTabsCallback:Lcom/cred/pay/repository/models/CardBinDetails;

    if-eqz v3, :cond_9

    .line 9009
    iget-object v4, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 161
    check-cast v4, Lcom/cred/pay/repository/models/CardBinResponse;

    if-eqz v4, :cond_7

    .line 9018
    iget-object v4, v4, Lcom/cred/pay/repository/models/CardBinResponse;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_4

    :cond_7
    move-object v4, v6

    .line 10009
    :goto_4
    iget-object v9, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 162
    check-cast v9, Lcom/cred/pay/repository/models/CardBinResponse;

    if-eqz v9, :cond_8

    .line 10020
    iget-object v6, v9, Lcom/cred/pay/repository/models/CardBinResponse;->onPostMessage:Ljava/lang/String;

    .line 160
    :cond_8
    invoke-static {v3, v4, v6}, Lcom/cred/pay/repository/models/CardBinDetails;->extraCallback(Lcom/cred/pay/repository/models/CardBinDetails;Ljava/lang/String;Ljava/lang/String;)Lcom/cred/pay/repository/models/CardBinDetails;

    move-result-object v6

    :cond_9
    move-object v9, v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 11009
    iget-object v1, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 163
    move-object/from16 v17, v1

    check-cast v17, Lcom/cred/pay/repository/models/CardBinResponse;

    const/16 v18, 0x1fd

    .line 159
    invoke-static/range {v7 .. v18}, Lo/setWidth$onMessageChannelReady;->onPostMessage(Lo/setWidth$onMessageChannelReady;Ljava/lang/String;Lcom/cred/pay/repository/models/CardBinDetails;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;ZZLcom/cred/pay/repository/models/CardBinResponse;I)Lo/setWidth$onMessageChannelReady;

    move-result-object v1

    .line 11024
    iput-object v1, v2, Lo/setWidth;->onNavigationEvent:Lo/setWidth$onMessageChannelReady;

    goto/16 :goto_9

    .line 166
    :cond_a
    iget-object v1, v0, Lo/setWidth$onPostMessage;->onMessageChannelReady:Lo/setWidth;

    const-string v2, "brand_info_not_found"

    .line 11192
    invoke-virtual {v1, v4, v2, v6}, Lo/setWidth;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v1, v0, Lo/setWidth$onPostMessage;->onMessageChannelReady:Lo/setWidth;

    sget-object v2, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    sget v2, Lo/setContentWidth$ICustomTabsCallback;->bin_not_found_error:I

    invoke-static {v2}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v2

    .line 12024
    iput-object v2, v1, Lo/setWidth;->onMessageChannelReady:Ljava/lang/String;

    .line 168
    iget-object v1, v0, Lo/setWidth$onPostMessage;->onMessageChannelReady:Lo/setWidth;

    .line 13024
    invoke-virtual {v1}, Lo/setWidth;->ICustomTabsCallback()V

    goto/16 :goto_9

    .line 171
    :cond_b
    instance-of v2, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v2, :cond_11

    .line 174
    iget-object v2, v0, Lo/setWidth$onPostMessage;->onMessageChannelReady:Lo/setWidth;

    check-cast v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 14014
    iget-object v3, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 174
    check-cast v3, Lcom/dreamplug/utils/model/BaseResponse;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lcom/dreamplug/utils/model/BaseResponse;->getMessage()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_c
    move-object v3, v6

    :goto_5
    if-eqz v3, :cond_e

    .line 15014
    iget-object v3, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 175
    check-cast v3, Lcom/dreamplug/utils/model/BaseResponse;

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lcom/dreamplug/utils/model/BaseResponse;->getMessage()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_d
    move-object v3, v6

    goto :goto_8

    .line 16014
    :cond_e
    iget-object v3, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 176
    instance-of v3, v3, Ljava/net/ConnectException;

    if-nez v3, :cond_10

    .line 17014
    iget-object v3, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 176
    instance-of v3, v3, Ljava/net/UnknownHostException;

    if-eqz v3, :cond_f

    goto :goto_6

    .line 179
    :cond_f
    sget-object v3, Lo/getEpicenterBounds;->onMessageChannelReady:Lo/getEpicenterBounds;

    invoke-static {}, Lo/getEpicenterBounds;->onPostMessage()Ljava/lang/String;

    move-result-object v6

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 20014
    iget-object v7, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 21014
    iget-object v8, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 180
    check-cast v8, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v7, v8}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n log id - "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    .line 18014
    :cond_10
    :goto_6
    iget-object v3, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 19014
    iget-object v7, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 177
    check-cast v7, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v3, v7}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v3

    :goto_7
    move-object/from16 v19, v6

    move-object v6, v3

    move-object/from16 v3, v19

    .line 21024
    :goto_8
    iput-object v6, v2, Lo/setWidth;->onMessageChannelReady:Ljava/lang/String;

    .line 183
    iget-object v2, v0, Lo/setWidth$onPostMessage;->onMessageChannelReady:Lo/setWidth;

    .line 22014
    iget-object v6, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 23014
    iget-object v1, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 183
    check-cast v1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v6, v1}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4, v1, v3}, Lo/setWidth;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v1, v0, Lo/setWidth$onPostMessage;->onMessageChannelReady:Lo/setWidth;

    .line 23024
    invoke-virtual {v1}, Lo/setWidth;->ICustomTabsCallback()V

    .line 187
    :cond_11
    :goto_9
    iget-object v1, v0, Lo/setWidth$onPostMessage;->onMessageChannelReady:Lo/setWidth;

    .line 24229
    iget-object v2, v1, Lo/setWidth;->ICustomTabsCallback:Lo/setWidth$onMessageChannelReady;

    iget-object v3, v1, Lo/setWidth;->onNavigationEvent:Lo/setWidth$onMessageChannelReady;

    invoke-static {v2, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v5

    if-eqz v2, :cond_12

    .line 24230
    iget-object v2, v1, Lo/setWidth;->onNavigationEvent:Lo/setWidth$onMessageChannelReady;

    .line 25035
    iput-object v2, v1, Lo/setWidth;->ICustomTabsCallback:Lo/setWidth$onMessageChannelReady;

    .line 25036
    iget-object v2, v1, Lo/setWidth;->onPostMessage:Lo/setActive;

    iget-object v1, v1, Lo/setWidth;->ICustomTabsCallback:Lo/setWidth$onMessageChannelReady;

    invoke-virtual {v2, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_12
    return-void
.end method
