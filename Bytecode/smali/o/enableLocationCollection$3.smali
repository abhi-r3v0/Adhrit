.class final Lo/enableLocationCollection$3;
.super Lo/setAdditionalData;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/enableLocationCollection;->extraCallback(Lo/waitForCustomerUserId;Lo/invalidateSpanInfo;Z)Lo/waitForCustomerUserId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setAdditionalData<",
        "Lo/getRootAlpha<",
        "Lo/convertToJsonObject;",
        ">;",
        "Lo/getRootAlpha<",
        "Lo/convertToJsonObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Z

.field private synthetic onMessageChannelReady:Lo/invalidateSpanInfo;

.field private synthetic onPostMessage:Lo/enableLocationCollection;


# direct methods
.method constructor <init>(Lo/enableLocationCollection;Lo/waitForCustomerUserId;Lo/invalidateSpanInfo;Z)V
    .locals 0

    .line 121
    iput-object p1, p0, Lo/enableLocationCollection$3;->onPostMessage:Lo/enableLocationCollection;

    iput-object p3, p0, Lo/enableLocationCollection$3;->onMessageChannelReady:Lo/invalidateSpanInfo;

    iput-boolean p4, p0, Lo/enableLocationCollection$3;->extraCallback:Z

    invoke-direct {p0, p2}, Lo/setAdditionalData;-><init>(Lo/waitForCustomerUserId;)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;I)V
    .locals 6

    .line 121
    check-cast p1, Lo/getRootAlpha;

    .line 1126
    :try_start_0
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    if-nez p1, :cond_2

    if-eqz v0, :cond_1

    .line 3020
    iget-object p1, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 1133
    invoke-interface {p1, v3, p2}, Lo/waitForCustomerUserId;->onNavigationEvent(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1175
    :cond_1
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void

    .line 1138
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/convertToJsonObject;

    invoke-virtual {v4}, Lo/convertToJsonObject;->extraCallback()Z

    move-result v4

    if-nez v4, :cond_b

    and-int/lit8 v4, p2, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_3

    const/4 v1, 0x1

    :cond_3
    if-eqz v1, :cond_4

    goto/16 :goto_3

    :cond_4
    if-nez v0, :cond_7

    .line 1145
    iget-object v1, p0, Lo/enableLocationCollection$3;->onPostMessage:Lo/enableLocationCollection;

    .line 4022
    iget-object v1, v1, Lo/enableLocationCollection;->onMessageChannelReady:Lo/getReferrerClickTimestampSeconds;

    .line 1145
    iget-object v2, p0, Lo/enableLocationCollection$3;->onMessageChannelReady:Lo/invalidateSpanInfo;

    invoke-interface {v1, v2}, Lo/getReferrerClickTimestampSeconds;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getRootAlpha;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v1, :cond_7

    .line 1148
    :try_start_2
    invoke-virtual {p1}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/convertToJsonObject;

    invoke-virtual {v2}, Lo/convertToJsonObject;->asBinder()Lo/AFKeystoreWrapper;

    move-result-object v2

    .line 1149
    invoke-virtual {v1}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/convertToJsonObject;

    invoke-virtual {v4}, Lo/convertToJsonObject;->asBinder()Lo/AFKeystoreWrapper;

    move-result-object v4

    .line 1150
    invoke-interface {v4}, Lo/AFKeystoreWrapper;->onPostMessage()Z

    move-result v5

    if-nez v5, :cond_6

    .line 1151
    invoke-interface {v4}, Lo/AFKeystoreWrapper;->onMessageChannelReady()I

    move-result v4

    invoke-interface {v2}, Lo/AFKeystoreWrapper;->onMessageChannelReady()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lt v4, v2, :cond_5

    goto :goto_1

    .line 1156
    :cond_5
    :try_start_3
    invoke-static {v1}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    .line 5020
    :cond_6
    :goto_1
    :try_start_4
    iget-object p1, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 1152
    invoke-interface {p1, v1, p2}, Lo/waitForCustomerUserId;->onNavigationEvent(Ljava/lang/Object;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1156
    :try_start_5
    invoke-static {v1}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1175
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void

    :catchall_0
    move-exception p1

    .line 1156
    :try_start_6
    invoke-static {v1}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    throw p1

    .line 1162
    :cond_7
    :goto_2
    iget-boolean v1, p0, Lo/enableLocationCollection$3;->extraCallback:Z

    if-eqz v1, :cond_8

    .line 1163
    iget-object v1, p0, Lo/enableLocationCollection$3;->onPostMessage:Lo/enableLocationCollection;

    .line 5022
    iget-object v1, v1, Lo/enableLocationCollection;->onMessageChannelReady:Lo/getReferrerClickTimestampSeconds;

    .line 1163
    iget-object v2, p0, Lo/enableLocationCollection$3;->onMessageChannelReady:Lo/invalidateSpanInfo;

    invoke-interface {v1, v2, p1}, Lo/getReferrerClickTimestampSeconds;->onPostMessage(Ljava/lang/Object;Lo/getRootAlpha;)Lo/getRootAlpha;

    move-result-object v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_8
    if-eqz v0, :cond_9

    .line 6020
    :try_start_7
    iget-object v0, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1167
    invoke-interface {v0, v1}, Lo/waitForCustomerUserId;->extraCallback(F)V

    .line 7020
    :cond_9
    iget-object v0, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    if-eqz v3, :cond_a

    move-object p1, v3

    .line 1170
    :cond_a
    invoke-interface {v0, p1, p2}, Lo/waitForCustomerUserId;->onNavigationEvent(Ljava/lang/Object;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1172
    :try_start_8
    invoke-static {v3}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1175
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void

    :catchall_1
    move-exception p1

    .line 1172
    :try_start_9
    invoke-static {v3}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    throw p1

    .line 4020
    :cond_b
    :goto_3
    iget-object v0, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 1139
    invoke-interface {v0, p1, p2}, Lo/waitForCustomerUserId;->onNavigationEvent(Ljava/lang/Object;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1175
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void

    :catchall_2
    move-exception p1

    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 1176
    throw p1
.end method
