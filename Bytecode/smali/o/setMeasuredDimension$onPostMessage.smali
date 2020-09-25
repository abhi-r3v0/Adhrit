.class public final Lo/setMeasuredDimension$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setMeasuredDimension;->onMessageChannelReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
        "Lcom/cred/pay/repository/models/JuspaySessionToken;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00020\u0001J\u001e\u0010\u0005\u001a\u00020\u00062\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lending/LendingBankViewPresenter$checkUpiAccounts$1",
        "Landroidx/lifecycle/Observer;",
        "Lcom/dreamplug/network/internals/call/CallResult;",
        "Lcom/cred/pay/repository/models/JuspaySessionToken;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "onChanged",
        "",
        "result",
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
.field private synthetic onNavigationEvent:Lo/setMeasuredDimension;


# direct methods
.method constructor <init>(Lo/setMeasuredDimension;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 169
    iput-object p1, p0, Lo/setMeasuredDimension$onPostMessage;->onNavigationEvent:Lo/setMeasuredDimension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 13

    .line 169
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition;

    .line 1171
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    :cond_0
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz p1, :cond_1

    .line 2009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1171
    move-object v1, p1

    check-cast v1, Lcom/cred/pay/repository/models/JuspaySessionToken;

    :cond_1
    const/4 p1, 0x1

    if-eqz v1, :cond_2

    .line 1173
    sget-object v0, Lo/setHeight;->onPostMessage:Lo/setHeight;

    .line 3000
    sget-object v0, Lo/setHeight;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setActive;

    .line 2028
    check-cast v0, Landroidx/lifecycle/LiveData;

    .line 1173
    move-object v2, p0

    check-cast v2, Lo/setPlaybackToRemote;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    .line 1174
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1175
    invoke-virtual {v1}, Lcom/cred/pay/repository/models/JuspaySessionToken;->getJuspayUpi()Lcom/cred/pay/repository/models/JuspaySessionToken$JuspayUpi;

    move-result-object v1

    .line 1176
    invoke-virtual {v1}, Lcom/cred/pay/repository/models/JuspaySessionToken$JuspayUpi;->getAxisHmacKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "axis_hmac_key"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1177
    invoke-virtual {v1}, Lcom/cred/pay/repository/models/JuspaySessionToken$JuspayUpi;->getMcc()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mcc"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1178
    invoke-virtual {v1}, Lcom/cred/pay/repository/models/JuspaySessionToken$JuspayUpi;->getMerchantId()Ljava/lang/String;

    move-result-object v2

    const-string v4, "merchantId"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1179
    invoke-virtual {v1}, Lcom/cred/pay/repository/models/JuspaySessionToken$JuspayUpi;->getMerchantChannelId()Ljava/lang/String;

    move-result-object v2

    const-string v5, "merchantChannelId"

    invoke-virtual {v0, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1180
    sget-object v2, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 4000
    sget-object v2, Lo/setTrackTintMode;->onRelationshipValidationResult:Lo/setSubtitleTextColor;

    sget-object v6, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    invoke-virtual {v2, v6}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v6, "merchantCustomerId"

    .line 1180
    invoke-virtual {v0, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v8, "timestamp"

    invoke-virtual {v0, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "currency"

    const-string v9, "INR"

    .line 1182
    invoke-virtual {v0, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v9, "udfParameters"

    const-string/jumbo v10, "{}"

    .line 1183
    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1184
    invoke-virtual {v1}, Lcom/cred/pay/repository/models/JuspaySessionToken$JuspayUpi;->getAxisHmacKey()Ljava/lang/String;

    move-result-object v1

    .line 1185
    sget-object v10, Lo/createRepo;->onNavigationEvent:Lo/createRepo;

    const/4 v10, 0x7

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 1186
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v11, v12

    .line 1187
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v11, p1

    .line 1188
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const/4 v2, 0x2

    aput-object p1, v11, v2

    .line 1189
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v11, v7

    const/4 p1, 0x4

    .line 1190
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v11, p1

    const/4 p1, 0x5

    .line 1191
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v11, p1

    const/4 p1, 0x6

    .line 1192
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v11, p1

    .line 1185
    invoke-static {v11, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v3, "%s%s%s%s%s%s%s"

    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "java.lang.String.format(format, *args)"

    invoke-static {p1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "HmacSHA256"

    invoke-static {p1, v1, v3}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "merchantSignature"

    .line 1184
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1194
    iget-object p1, p0, Lo/setMeasuredDimension$onPostMessage;->onNavigationEvent:Lo/setMeasuredDimension;

    .line 4266
    iget-object v3, p1, Lo/setMeasuredDimension;->newSession:Lo/add;

    .line 1195
    iget-object p1, p0, Lo/setMeasuredDimension$onPostMessage;->onNavigationEvent:Lo/setMeasuredDimension;

    .line 5036
    iget-object v6, p1, Lo/setMeasuredDimension;->onRelationshipValidationResult:Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;

    const/4 v7, 0x0

    .line 1196
    new-instance v8, Lo/add$ICustomTabsCallback;

    sget-object p1, Lo/setMeasuredDimension$onPostMessage$onMessageChannelReady;->onMessageChannelReady:Lo/setMeasuredDimension$onPostMessage$onMessageChannelReady;

    check-cast p1, Lo/onDisconnectSetValue;

    invoke-direct {v8, v2, p1}, Lo/add$ICustomTabsCallback;-><init>(ILo/onDisconnectSetValue;)V

    const/16 v9, 0x8

    const-string v4, "GET_SESSION_TOKEN"

    move-object v5, v0

    .line 1194
    invoke-static/range {v3 .. v9}, Lo/add;->onMessageChannelReady(Lo/add;Ljava/lang/String;Lorg/json/JSONObject;Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;Ljava/lang/String;Lo/add$ICustomTabsCallback;I)V

    const-string p1, "STASH"

    .line 1200
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Upi request :- "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tag"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5065
    invoke-static {p1, v0}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1202
    :cond_2
    iget-object v0, p0, Lo/setMeasuredDimension$onPostMessage;->onNavigationEvent:Lo/setMeasuredDimension;

    .line 6036
    iget-object v0, v0, Lo/setMeasuredDimension;->warmup:Lo/getSpanIndex;

    .line 6051
    iput-boolean p1, v0, Lo/getSpanIndex;->onTransact:Z

    .line 1203
    iget-object p1, p0, Lo/setMeasuredDimension$onPostMessage;->onNavigationEvent:Lo/setMeasuredDimension;

    .line 7036
    iget-object p1, p1, Lo/setMeasuredDimension;->warmup:Lo/getSpanIndex;

    .line 8032
    iget-object p1, p1, Lo/getSpanIndex;->onNavigationEvent:Lo/setActive;

    .line 1203
    iget-object v0, p0, Lo/setMeasuredDimension$onPostMessage;->onNavigationEvent:Lo/setMeasuredDimension;

    .line 8036
    iget-object v0, v0, Lo/setMeasuredDimension;->warmup:Lo/getSpanIndex;

    .line 8084
    iget-object v0, v0, Lo/getSpanIndex;->setDefaultImpl:Lo/getAnimationDuration;

    .line 1203
    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method
