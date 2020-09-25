.class final Lo/sendAdRevenue$onMessageChannelReady;
.super Lo/setAdditionalData;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/sendAdRevenue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onMessageChannelReady"
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
.field final ICustomTabsCallback:Lo/setPreinstallAttribution;

.field ICustomTabsCallback$Stub:Z

.field private asBinder:Z

.field final synthetic asInterface:Lo/sendAdRevenue;

.field extraCallback:Lo/getRootAlpha;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;"
        }
    .end annotation
.end field

.field final onMessageChannelReady:Lo/performOnAppAttribution;

.field final onPostMessage:Lo/unregisterConversionListener;

.field onRelationshipValidationResult:Z

.field onTransact:I


# direct methods
.method public constructor <init>(Lo/sendAdRevenue;Lo/waitForCustomerUserId;Lo/unregisterConversionListener;Lo/performOnAppAttribution;Lo/setPreinstallAttribution;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/waitForCustomerUserId<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;",
            "Lo/unregisterConversionListener;",
            "Lo/performOnAppAttribution;",
            "Lo/setPreinstallAttribution;",
            ")V"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lo/sendAdRevenue$onMessageChannelReady;->asInterface:Lo/sendAdRevenue;

    .line 98
    invoke-direct {p0, p2}, Lo/setAdditionalData;-><init>(Lo/waitForCustomerUserId;)V

    const/4 p1, 0x0

    .line 80
    iput-object p1, p0, Lo/sendAdRevenue$onMessageChannelReady;->extraCallback:Lo/getRootAlpha;

    const/4 p1, 0x0

    .line 84
    iput p1, p0, Lo/sendAdRevenue$onMessageChannelReady;->onTransact:I

    .line 87
    iput-boolean p1, p0, Lo/sendAdRevenue$onMessageChannelReady;->onRelationshipValidationResult:Z

    .line 90
    iput-boolean p1, p0, Lo/sendAdRevenue$onMessageChannelReady;->ICustomTabsCallback$Stub:Z

    .line 99
    iput-object p3, p0, Lo/sendAdRevenue$onMessageChannelReady;->onPostMessage:Lo/unregisterConversionListener;

    .line 100
    iput-object p4, p0, Lo/sendAdRevenue$onMessageChannelReady;->onMessageChannelReady:Lo/performOnAppAttribution;

    .line 101
    iput-object p5, p0, Lo/sendAdRevenue$onMessageChannelReady;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    .line 102
    new-instance p1, Lo/sendAdRevenue$onMessageChannelReady$1;

    invoke-direct {p1, p0}, Lo/sendAdRevenue$onMessageChannelReady$1;-><init>(Lo/sendAdRevenue$onMessageChannelReady;)V

    invoke-interface {p5, p1}, Lo/setPreinstallAttribution;->onPostMessage(Lo/releaseGlows$onPostMessage$onMessageChannelReady;)V

    return-void
.end method

.method static extraCallback(Lo/unregisterConversionListener;Lo/setPreinstallAttribution;Lo/performOnAppAttribution;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/unregisterConversionListener;",
            "Lo/setPreinstallAttribution;",
            "Lo/performOnAppAttribution;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "PostprocessorProducer"

    .line 231
    invoke-interface {p0, p1, v0}, Lo/unregisterConversionListener;->extraCallback(Lo/setPreinstallAttribution;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 234
    :cond_0
    invoke-interface {p2}, Lo/performOnAppAttribution;->onPostMessage()Ljava/lang/String;

    move-result-object p0

    .line 3033
    new-instance p1, Ljava/util/HashMap;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    const-string p2, "Postprocessor"

    .line 3034
    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3035
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized extraCallback()Z
    .locals 1

    monitor-enter p0

    .line 278
    :try_start_0
    iget-boolean v0, p0, Lo/sendAdRevenue$onMessageChannelReady;->asBinder:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method final ICustomTabsCallback(Lo/convertToJsonObject;)Lo/getRootAlpha;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/convertToJsonObject;",
            ")",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;"
        }
    .end annotation

    .line 242
    move-object v0, p1

    check-cast v0, Lo/onAppLinkFetchFailed;

    .line 3159
    iget-object v1, v0, Lo/onAppLinkFetchFailed;->extraCallback:Landroid/graphics/Bitmap;

    .line 244
    iget-object v1, p0, Lo/sendAdRevenue$onMessageChannelReady;->onMessageChannelReady:Lo/performOnAppAttribution;

    invoke-interface {v1}, Lo/performOnAppAttribution;->onNavigationEvent()Lo/getRootAlpha;

    move-result-object v1

    .line 4200
    iget v2, v0, Lo/onAppLinkFetchFailed;->ICustomTabsCallback:I

    .line 4205
    iget v3, v0, Lo/onAppLinkFetchFailed;->onNavigationEvent:I

    .line 248
    :try_start_0
    new-instance v4, Lo/onAppLinkFetchFailed;

    .line 250
    invoke-virtual {p1}, Lo/convertToJsonObject;->asBinder()Lo/AFKeystoreWrapper;

    move-result-object p1

    invoke-direct {v4, v1, p1, v2, v3}, Lo/onAppLinkFetchFailed;-><init>(Lo/getRootAlpha;Lo/AFKeystoreWrapper;II)V

    .line 5062
    iget-object p1, v0, Lo/convertToJsonObject;->onPostMessage:Ljava/util/Map;

    .line 251
    invoke-virtual {v4, p1}, Lo/convertToJsonObject;->extraCallback(Ljava/util/Map;)V

    .line 252
    invoke-static {v4}, Lo/getRootAlpha;->ICustomTabsCallback(Ljava/io/Closeable;)Lo/getRootAlpha;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    invoke-static {v1}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {v1}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    throw p1
.end method

.method protected final synthetic onMessageChannelReady(Ljava/lang/Object;I)V
    .locals 2

    .line 69
    check-cast p1, Lo/getRootAlpha;

    .line 7114
    invoke-static {p1}, Lo/getRootAlpha;->ICustomTabsCallback(Lo/getRootAlpha;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    and-int/lit8 p1, p2, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const/4 p1, 0x0

    .line 7117
    invoke-virtual {p0, p1, p2}, Lo/sendAdRevenue$onMessageChannelReady;->onPostMessage(Lo/getRootAlpha;I)V

    :cond_1
    return-void

    .line 8139
    :cond_2
    monitor-enter p0

    .line 8140
    :try_start_0
    iget-boolean v0, p0, Lo/sendAdRevenue$onMessageChannelReady;->asBinder:Z

    if-eqz v0, :cond_3

    .line 8141
    monitor-exit p0

    return-void

    .line 8143
    :cond_3
    iget-object v0, p0, Lo/sendAdRevenue$onMessageChannelReady;->extraCallback:Lo/getRootAlpha;

    .line 8144
    invoke-static {p1}, Lo/getRootAlpha;->onNavigationEvent(Lo/getRootAlpha;)Lo/getRootAlpha;

    move-result-object p1

    iput-object p1, p0, Lo/sendAdRevenue$onMessageChannelReady;->extraCallback:Lo/getRootAlpha;

    .line 8145
    iput p2, p0, Lo/sendAdRevenue$onMessageChannelReady;->onTransact:I

    .line 8146
    iput-boolean v1, p0, Lo/sendAdRevenue$onMessageChannelReady;->onRelationshipValidationResult:Z

    .line 8147
    invoke-virtual {p0}, Lo/sendAdRevenue$onMessageChannelReady;->onPostMessage()Z

    move-result p1

    .line 8148
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8149
    invoke-static {v0}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    if-eqz p1, :cond_4

    .line 8156
    iget-object p1, p0, Lo/sendAdRevenue$onMessageChannelReady;->asInterface:Lo/sendAdRevenue;

    .line 9032
    iget-object p1, p1, Lo/sendAdRevenue;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    .line 8156
    new-instance p2, Lo/sendAdRevenue$onMessageChannelReady$2;

    invoke-direct {p2, p0}, Lo/sendAdRevenue$onMessageChannelReady$2;-><init>(Lo/sendAdRevenue$onMessageChannelReady;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 8148
    monitor-exit p0

    throw p1
.end method

.method protected final onMessageChannelReady(Ljava/lang/Throwable;)V
    .locals 1

    .line 1266
    invoke-virtual {p0}, Lo/sendAdRevenue$onMessageChannelReady;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2020
    iget-object v0, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 1267
    invoke-interface {v0, p1}, Lo/waitForCustomerUserId;->onPostMessage(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method final onMessageChannelReady()Z
    .locals 2

    .line 283
    monitor-enter p0

    .line 284
    :try_start_0
    iget-boolean v0, p0, Lo/sendAdRevenue$onMessageChannelReady;->asBinder:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 285
    monitor-exit p0

    return v0

    .line 287
    :cond_0
    iget-object v0, p0, Lo/sendAdRevenue$onMessageChannelReady;->extraCallback:Lo/getRootAlpha;

    const/4 v1, 0x0

    .line 288
    iput-object v1, p0, Lo/sendAdRevenue$onMessageChannelReady;->extraCallback:Lo/getRootAlpha;

    const/4 v1, 0x1

    .line 289
    iput-boolean v1, p0, Lo/sendAdRevenue$onMessageChannelReady;->asBinder:Z

    .line 290
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    invoke-static {v0}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    return v1

    :catchall_0
    move-exception v0

    .line 290
    monitor-exit p0

    throw v0
.end method

.method protected final onNavigationEvent()V
    .locals 1

    .line 2272
    invoke-virtual {p0}, Lo/sendAdRevenue$onMessageChannelReady;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3020
    iget-object v0, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 2273
    invoke-interface {v0}, Lo/waitForCustomerUserId;->ICustomTabsCallback()V

    :cond_0
    return-void
.end method

.method final onPostMessage(Lo/getRootAlpha;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;I)V"
        }
    .end annotation

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 260
    invoke-direct {p0}, Lo/sendAdRevenue$onMessageChannelReady;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lo/sendAdRevenue$onMessageChannelReady;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7020
    :cond_2
    iget-object v0, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 261
    invoke-interface {v0, p1, p2}, Lo/waitForCustomerUserId;->onNavigationEvent(Ljava/lang/Object;I)V

    :cond_3
    return-void
.end method

.method final declared-synchronized onPostMessage()Z
    .locals 1

    monitor-enter p0

    .line 194
    :try_start_0
    iget-boolean v0, p0, Lo/sendAdRevenue$onMessageChannelReady;->asBinder:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lo/sendAdRevenue$onMessageChannelReady;->onRelationshipValidationResult:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/sendAdRevenue$onMessageChannelReady;->ICustomTabsCallback$Stub:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/sendAdRevenue$onMessageChannelReady;->extraCallback:Lo/getRootAlpha;

    .line 197
    invoke-static {v0}, Lo/getRootAlpha;->ICustomTabsCallback(Lo/getRootAlpha;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 198
    iput-boolean v0, p0, Lo/sendAdRevenue$onMessageChannelReady;->ICustomTabsCallback$Stub:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 201
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
