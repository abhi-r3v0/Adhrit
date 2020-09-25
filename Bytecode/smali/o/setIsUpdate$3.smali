.class final Lo/setIsUpdate$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/enableFacebookDeferredApplinks$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setIsUpdate;->extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/getId;

.field private synthetic onMessageChannelReady:Lo/setIsUpdate;


# direct methods
.method constructor <init>(Lo/setIsUpdate;Lo/getId;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lo/setIsUpdate$3;->onMessageChannelReady:Lo/setIsUpdate;

    iput-object p2, p0, Lo/setIsUpdate$3;->ICustomTabsCallback:Lo/getId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 5

    .line 86
    iget-object v0, p0, Lo/setIsUpdate$3;->ICustomTabsCallback:Lo/getId;

    .line 21049
    iget-object v1, v0, Lo/getId;->onNavigationEvent:Lo/setPreinstallAttribution;

    invoke-interface {v1}, Lo/setPreinstallAttribution;->ICustomTabsCallback()Lo/unregisterConversionListener;

    move-result-object v1

    .line 22041
    iget-object v2, v0, Lo/getId;->onNavigationEvent:Lo/setPreinstallAttribution;

    const-string v3, "NetworkFetchProducer"

    const/4 v4, 0x0

    .line 20208
    invoke-interface {v1, v2, v3, v4}, Lo/unregisterConversionListener;->extraCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/util/Map;)V

    .line 23037
    iget-object v0, v0, Lo/getId;->ICustomTabsCallback:Lo/waitForCustomerUserId;

    .line 20209
    invoke-interface {v0}, Lo/waitForCustomerUserId;->ICustomTabsCallback()V

    return-void
.end method

.method public final onMessageChannelReady(Ljava/io/InputStream;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 73
    iget-object v0, p0, Lo/setIsUpdate$3;->onMessageChannelReady:Lo/setIsUpdate;

    iget-object v1, p0, Lo/setIsUpdate$3;->ICustomTabsCallback:Lo/getId;

    .line 1098
    iget-object v2, v0, Lo/setIsUpdate;->extraCallback:Lo/CustomVersionedParcelable;

    invoke-interface {v2}, Lo/CustomVersionedParcelable;->extraCallback()Lo/setRootAlpha;

    move-result-object v2

    .line 1100
    iget-object v3, v0, Lo/setIsUpdate;->onPostMessage:Lo/getTranslateY;

    const/16 v4, 0x4000

    invoke-interface {v3, v4}, Lo/getTranslateY;->extraCallback(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 1103
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    const-string v6, "NetworkFetchProducer"

    if-ltz v4, :cond_2

    if-lez v4, :cond_0

    const/4 v7, 0x0

    .line 1105
    :try_start_1
    invoke-virtual {v2, v3, v7, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 1229
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 3041
    iget-object v4, v1, Lo/getId;->onNavigationEvent:Lo/setPreinstallAttribution;

    .line 2213
    invoke-interface {v4}, Lo/setPreinstallAttribution;->asBinder()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3057
    iget-wide v10, v1, Lo/getId;->extraCallback:J

    sub-long v10, v8, v10

    const-wide/16 v12, 0x64

    cmp-long v4, v10, v12

    if-ltz v4, :cond_1

    .line 3061
    iput-wide v8, v1, Lo/getId;->extraCallback:J

    .line 4049
    iget-object v4, v1, Lo/getId;->onNavigationEvent:Lo/setPreinstallAttribution;

    invoke-interface {v4}, Lo/setPreinstallAttribution;->ICustomTabsCallback()Lo/unregisterConversionListener;

    move-result-object v4

    .line 5041
    iget-object v8, v1, Lo/getId;->onNavigationEvent:Lo/setPreinstallAttribution;

    const-string v9, "intermediate_result"

    .line 1147
    invoke-interface {v4, v8, v6, v9}, Lo/unregisterConversionListener;->ICustomTabsCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/lang/String;)V

    .line 6037
    iget-object v4, v1, Lo/getId;->ICustomTabsCallback:Lo/waitForCustomerUserId;

    .line 6041
    iget-object v6, v1, Lo/getId;->onNavigationEvent:Lo/setPreinstallAttribution;

    .line 1149
    invoke-static {v2, v7, v5, v4}, Lo/setIsUpdate;->onNavigationEvent(Lo/setRootAlpha;ILo/logWarn;Lo/waitForCustomerUserId;)V

    .line 1107
    :cond_1
    invoke-virtual {v2}, Lo/setRootAlpha;->onMessageChannelReady()I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    neg-int v4, v4

    int-to-double v6, v4

    const-wide v8, 0x40e86a0000000000L    # 50000.0

    div-double/2addr v6, v8

    .line 6134
    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    double-to-float v4, v6

    sub-float/2addr v5, v4

    .line 7037
    iget-object v4, v1, Lo/getId;->ICustomTabsCallback:Lo/waitForCustomerUserId;

    .line 1108
    invoke-interface {v4, v5}, Lo/waitForCustomerUserId;->extraCallback(F)V

    goto :goto_0

    .line 1111
    :cond_2
    iget-object p1, v0, Lo/setIsUpdate;->onMessageChannelReady:Lo/enableFacebookDeferredApplinks;

    invoke-virtual {v2}, Lo/setRootAlpha;->onMessageChannelReady()I

    invoke-interface {p1, v1}, Lo/enableFacebookDeferredApplinks;->onNavigationEvent(Lo/getId;)V

    .line 7160
    invoke-virtual {v2}, Lo/setRootAlpha;->onMessageChannelReady()I

    move-result p1

    .line 8049
    iget-object v4, v1, Lo/getId;->onNavigationEvent:Lo/setPreinstallAttribution;

    invoke-interface {v4}, Lo/setPreinstallAttribution;->ICustomTabsCallback()Lo/unregisterConversionListener;

    move-result-object v4

    .line 9041
    iget-object v7, v1, Lo/getId;->onNavigationEvent:Lo/setPreinstallAttribution;

    .line 7221
    invoke-interface {v4, v7, v6}, Lo/unregisterConversionListener;->extraCallback(Lo/setPreinstallAttribution;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    move-object p1, v5

    goto :goto_1

    .line 7224
    :cond_3
    iget-object v4, v0, Lo/setIsUpdate;->onMessageChannelReady:Lo/enableFacebookDeferredApplinks;

    invoke-interface {v4, v1, p1}, Lo/enableFacebookDeferredApplinks;->extraCallback(Lo/getId;I)Ljava/util/Map;

    move-result-object p1

    .line 9049
    :goto_1
    iget-object v4, v1, Lo/getId;->onNavigationEvent:Lo/setPreinstallAttribution;

    invoke-interface {v4}, Lo/setPreinstallAttribution;->ICustomTabsCallback()Lo/unregisterConversionListener;

    move-result-object v4

    .line 10041
    iget-object v7, v1, Lo/getId;->onNavigationEvent:Lo/setPreinstallAttribution;

    .line 7162
    invoke-interface {v4, v7, v6, p1}, Lo/unregisterConversionListener;->ICustomTabsCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/util/Map;)V

    .line 11041
    iget-object p1, v1, Lo/getId;->onNavigationEvent:Lo/setPreinstallAttribution;

    const/4 v7, 0x1

    .line 7163
    invoke-interface {v4, p1, v6, v7}, Lo/unregisterConversionListener;->onPostMessage(Lo/setPreinstallAttribution;Ljava/lang/String;Z)V

    .line 12041
    iget-object p1, v1, Lo/getId;->onNavigationEvent:Lo/setPreinstallAttribution;

    const-string v4, "network"

    .line 7164
    invoke-interface {p1, v4}, Lo/setPreinstallAttribution;->onPostMessage(Ljava/lang/String;)V

    .line 13037
    iget-object p1, v1, Lo/getId;->ICustomTabsCallback:Lo/waitForCustomerUserId;

    .line 13041
    iget-object v1, v1, Lo/getId;->onNavigationEvent:Lo/setPreinstallAttribution;

    .line 7165
    invoke-static {v2, v7, v5, p1}, Lo/setIsUpdate;->onNavigationEvent(Lo/setRootAlpha;ILo/logWarn;Lo/waitForCustomerUserId;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1114
    iget-object p1, v0, Lo/setIsUpdate;->onPostMessage:Lo/getTranslateY;

    invoke-interface {p1, v3}, Lo/getTranslateY;->extraCallback(Ljava/lang/Object;)V

    .line 1115
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 74
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void

    :catchall_0
    move-exception p1

    .line 1114
    iget-object v0, v0, Lo/setIsUpdate;->onPostMessage:Lo/getTranslateY;

    invoke-interface {v0, v3}, Lo/getTranslateY;->extraCallback(Ljava/lang/Object;)V

    .line 1115
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    throw p1
.end method

.method public final onNavigationEvent(Ljava/lang/Throwable;)V
    .locals 5

    .line 81
    iget-object v0, p0, Lo/setIsUpdate$3;->ICustomTabsCallback:Lo/getId;

    .line 15049
    iget-object v1, v0, Lo/getId;->onNavigationEvent:Lo/setPreinstallAttribution;

    invoke-interface {v1}, Lo/setPreinstallAttribution;->ICustomTabsCallback()Lo/unregisterConversionListener;

    move-result-object v1

    .line 16041
    iget-object v2, v0, Lo/getId;->onNavigationEvent:Lo/setPreinstallAttribution;

    const-string v3, "NetworkFetchProducer"

    const/4 v4, 0x0

    .line 14197
    invoke-interface {v1, v2, v3, p1, v4}, Lo/unregisterConversionListener;->extraCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 16049
    iget-object v1, v0, Lo/getId;->onNavigationEvent:Lo/setPreinstallAttribution;

    invoke-interface {v1}, Lo/setPreinstallAttribution;->ICustomTabsCallback()Lo/unregisterConversionListener;

    move-result-object v1

    .line 17041
    iget-object v2, v0, Lo/getId;->onNavigationEvent:Lo/setPreinstallAttribution;

    const/4 v4, 0x0

    .line 14200
    invoke-interface {v1, v2, v3, v4}, Lo/unregisterConversionListener;->onPostMessage(Lo/setPreinstallAttribution;Ljava/lang/String;Z)V

    .line 18041
    iget-object v1, v0, Lo/getId;->onNavigationEvent:Lo/setPreinstallAttribution;

    const-string v2, "network"

    .line 14201
    invoke-interface {v1, v2}, Lo/setPreinstallAttribution;->onPostMessage(Ljava/lang/String;)V

    .line 19037
    iget-object v0, v0, Lo/getId;->ICustomTabsCallback:Lo/waitForCustomerUserId;

    .line 14202
    invoke-interface {v0, p1}, Lo/waitForCustomerUserId;->onPostMessage(Ljava/lang/Throwable;)V

    return-void
.end method
