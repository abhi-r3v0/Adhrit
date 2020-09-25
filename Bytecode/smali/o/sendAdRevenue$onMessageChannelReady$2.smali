.class final Lo/sendAdRevenue$onMessageChannelReady$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/sendAdRevenue$onMessageChannelReady;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/sendAdRevenue$onMessageChannelReady;


# direct methods
.method constructor <init>(Lo/sendAdRevenue$onMessageChannelReady;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lo/sendAdRevenue$onMessageChannelReady$2;->onMessageChannelReady:Lo/sendAdRevenue$onMessageChannelReady;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 162
    iget-object v0, p0, Lo/sendAdRevenue$onMessageChannelReady$2;->onMessageChannelReady:Lo/sendAdRevenue$onMessageChannelReady;

    monitor-enter v0

    .line 164
    :try_start_0
    iget-object v1, p0, Lo/sendAdRevenue$onMessageChannelReady$2;->onMessageChannelReady:Lo/sendAdRevenue$onMessageChannelReady;

    .line 1069
    iget-object v1, v1, Lo/sendAdRevenue$onMessageChannelReady;->extraCallback:Lo/getRootAlpha;

    .line 165
    iget-object v2, p0, Lo/sendAdRevenue$onMessageChannelReady$2;->onMessageChannelReady:Lo/sendAdRevenue$onMessageChannelReady;

    .line 2069
    iget v2, v2, Lo/sendAdRevenue$onMessageChannelReady;->onTransact:I

    .line 166
    iget-object v3, p0, Lo/sendAdRevenue$onMessageChannelReady$2;->onMessageChannelReady:Lo/sendAdRevenue$onMessageChannelReady;

    const/4 v4, 0x0

    .line 3069
    iput-object v4, v3, Lo/sendAdRevenue$onMessageChannelReady;->extraCallback:Lo/getRootAlpha;

    .line 167
    iget-object v3, p0, Lo/sendAdRevenue$onMessageChannelReady$2;->onMessageChannelReady:Lo/sendAdRevenue$onMessageChannelReady;

    const/4 v5, 0x0

    .line 4069
    iput-boolean v5, v3, Lo/sendAdRevenue$onMessageChannelReady;->onRelationshipValidationResult:Z

    .line 168
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 170
    invoke-static {v1}, Lo/getRootAlpha;->ICustomTabsCallback(Lo/getRootAlpha;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 172
    :try_start_1
    iget-object v0, p0, Lo/sendAdRevenue$onMessageChannelReady$2;->onMessageChannelReady:Lo/sendAdRevenue$onMessageChannelReady;

    .line 5205
    invoke-static {v1}, Lo/getRootAlpha;->ICustomTabsCallback(Lo/getRootAlpha;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5206
    invoke-virtual {v1}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/convertToJsonObject;

    .line 6238
    instance-of v3, v3, Lo/onAppLinkFetchFailed;

    if-nez v3, :cond_0

    .line 5207
    invoke-virtual {v0, v1, v2}, Lo/sendAdRevenue$onMessageChannelReady;->onPostMessage(Lo/getRootAlpha;I)V

    goto :goto_1

    .line 5210
    :cond_0
    iget-object v3, v0, Lo/sendAdRevenue$onMessageChannelReady;->onPostMessage:Lo/unregisterConversionListener;

    iget-object v6, v0, Lo/sendAdRevenue$onMessageChannelReady;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    const-string v7, "PostprocessorProducer"

    invoke-interface {v3, v6, v7}, Lo/unregisterConversionListener;->onMessageChannelReady(Lo/setPreinstallAttribution;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5214
    :try_start_2
    invoke-virtual {v1}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/convertToJsonObject;

    invoke-virtual {v0, v3}, Lo/sendAdRevenue$onMessageChannelReady;->ICustomTabsCallback(Lo/convertToJsonObject;)Lo/getRootAlpha;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5221
    :try_start_3
    iget-object v3, v0, Lo/sendAdRevenue$onMessageChannelReady;->onPostMessage:Lo/unregisterConversionListener;

    iget-object v6, v0, Lo/sendAdRevenue$onMessageChannelReady;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    const-string v7, "PostprocessorProducer"

    iget-object v8, v0, Lo/sendAdRevenue$onMessageChannelReady;->onPostMessage:Lo/unregisterConversionListener;

    iget-object v9, v0, Lo/sendAdRevenue$onMessageChannelReady;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    iget-object v10, v0, Lo/sendAdRevenue$onMessageChannelReady;->onMessageChannelReady:Lo/performOnAppAttribution;

    .line 5222
    invoke-static {v8, v9, v10}, Lo/sendAdRevenue$onMessageChannelReady;->extraCallback(Lo/unregisterConversionListener;Lo/setPreinstallAttribution;Lo/performOnAppAttribution;)Ljava/util/Map;

    move-result-object v8

    .line 5221
    invoke-interface {v3, v6, v7, v8}, Lo/unregisterConversionListener;->ICustomTabsCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/util/Map;)V

    .line 5223
    invoke-virtual {v0, v4, v2}, Lo/sendAdRevenue$onMessageChannelReady;->onPostMessage(Lo/getRootAlpha;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5225
    :cond_1
    :goto_0
    :try_start_4
    invoke-static {v4}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 5216
    :try_start_5
    iget-object v3, v0, Lo/sendAdRevenue$onMessageChannelReady;->onPostMessage:Lo/unregisterConversionListener;

    iget-object v6, v0, Lo/sendAdRevenue$onMessageChannelReady;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    const-string v7, "PostprocessorProducer"

    iget-object v8, v0, Lo/sendAdRevenue$onMessageChannelReady;->onPostMessage:Lo/unregisterConversionListener;

    iget-object v9, v0, Lo/sendAdRevenue$onMessageChannelReady;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    iget-object v10, v0, Lo/sendAdRevenue$onMessageChannelReady;->onMessageChannelReady:Lo/performOnAppAttribution;

    .line 5217
    invoke-static {v8, v9, v10}, Lo/sendAdRevenue$onMessageChannelReady;->extraCallback(Lo/unregisterConversionListener;Lo/setPreinstallAttribution;Lo/performOnAppAttribution;)Ljava/util/Map;

    move-result-object v8

    .line 5216
    invoke-interface {v3, v6, v7, v2, v8}, Lo/unregisterConversionListener;->extraCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 6266
    invoke-virtual {v0}, Lo/sendAdRevenue$onMessageChannelReady;->onMessageChannelReady()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7020
    iget-object v0, v0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 6267
    invoke-interface {v0, v2}, Lo/waitForCustomerUserId;->onPostMessage(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 174
    :goto_1
    invoke-static {v1}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    goto :goto_3

    .line 5225
    :goto_2
    :try_start_6
    invoke-static {v4}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    throw v0

    .line 6111
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    .line 174
    invoke-static {v1}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    throw v0

    .line 177
    :cond_3
    :goto_3
    iget-object v0, p0, Lo/sendAdRevenue$onMessageChannelReady$2;->onMessageChannelReady:Lo/sendAdRevenue$onMessageChannelReady;

    .line 7184
    monitor-enter v0

    .line 7185
    :try_start_7
    iput-boolean v5, v0, Lo/sendAdRevenue$onMessageChannelReady;->ICustomTabsCallback$Stub:Z

    .line 7186
    invoke-virtual {v0}, Lo/sendAdRevenue$onMessageChannelReady;->onPostMessage()Z

    move-result v1

    .line 7187
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v1, :cond_4

    .line 8156
    iget-object v1, v0, Lo/sendAdRevenue$onMessageChannelReady;->asInterface:Lo/sendAdRevenue;

    .line 9032
    iget-object v1, v1, Lo/sendAdRevenue;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    .line 8156
    new-instance v2, Lo/sendAdRevenue$onMessageChannelReady$2;

    invoke-direct {v2, v0}, Lo/sendAdRevenue$onMessageChannelReady$2;-><init>(Lo/sendAdRevenue$onMessageChannelReady;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_4
    return-void

    :catchall_2
    move-exception v1

    .line 7187
    monitor-exit v0

    throw v1

    :catchall_3
    move-exception v1

    .line 168
    monitor-exit v0

    throw v1
.end method
