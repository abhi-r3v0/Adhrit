.class final Lo/setLogLevel$1;
.super Lo/validateAndTrackInAppPurchase;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setLogLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/validateAndTrackInAppPurchase<",
        "Lo/getCardBackgroundColor;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/setLogLevel;

.field private synthetic onMessageChannelReady:Lo/getCardBackgroundColor;


# direct methods
.method constructor <init>(Lo/setLogLevel;Lo/waitForCustomerUserId;Lo/unregisterConversionListener;Lo/setPreinstallAttribution;Ljava/lang/String;Lo/getCardBackgroundColor;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lo/setLogLevel$1;->ICustomTabsCallback:Lo/setLogLevel;

    iput-object p6, p0, Lo/setLogLevel$1;->onMessageChannelReady:Lo/getCardBackgroundColor;

    invoke-direct {p0, p2, p3, p4, p5}, Lo/validateAndTrackInAppPurchase;-><init>(Lo/waitForCustomerUserId;Lo/unregisterConversionListener;Lo/setPreinstallAttribution;Ljava/lang/String;)V

    return-void
.end method

.method private onPostMessage()Lo/getCardBackgroundColor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lo/setLogLevel$1;->ICustomTabsCallback:Lo/setLogLevel;

    .line 1035
    iget-object v0, v0, Lo/setLogLevel;->extraCallback:Lo/CustomVersionedParcelable;

    .line 103
    invoke-interface {v0}, Lo/CustomVersionedParcelable;->extraCallback()Lo/setRootAlpha;

    move-result-object v0

    .line 105
    :try_start_0
    iget-object v1, p0, Lo/setLogLevel$1;->onMessageChannelReady:Lo/getCardBackgroundColor;

    .line 2168
    invoke-virtual {v1}, Lo/getCardBackgroundColor;->extraCallback()Ljava/io/InputStream;

    move-result-object v2

    .line 2169
    invoke-static {v2}, Lo/pauseAnimation;->onPostMessage(Ljava/io/InputStream;)Lo/setProgress;

    move-result-object v2

    .line 2170
    sget-object v3, Lo/getFrame;->asInterface:Lo/setProgress;

    if-eq v2, v3, :cond_3

    sget-object v3, Lo/getFrame;->ICustomTabsCallback$Stub:Lo/setProgress;

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 2175
    :cond_0
    sget-object v3, Lo/getFrame;->onRelationshipValidationResult:Lo/setProgress;

    if-eq v2, v3, :cond_2

    sget-object v3, Lo/getFrame;->asBinder:Lo/setProgress;

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 2181
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Wrong image format"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2178
    :cond_2
    :goto_0
    invoke-static {}, Lo/AppsFlyerInAppPurchaseValidatorListener;->ICustomTabsCallback()Lo/onPostMessage$extraCallback;

    .line 2179
    sget-object v2, Lo/getFrame;->onMessageChannelReady:Lo/setProgress;

    .line 4165
    iput-object v2, v1, Lo/getCardBackgroundColor;->onMessageChannelReady:Lo/setProgress;

    goto :goto_2

    .line 2172
    :cond_3
    :goto_1
    invoke-static {}, Lo/AppsFlyerInAppPurchaseValidatorListener;->ICustomTabsCallback()Lo/onPostMessage$extraCallback;

    .line 2174
    sget-object v2, Lo/getFrame;->ICustomTabsCallback:Lo/setProgress;

    .line 3165
    iput-object v2, v1, Lo/getCardBackgroundColor;->onMessageChannelReady:Lo/setProgress;

    .line 107
    :goto_2
    invoke-virtual {v0}, Lo/setRootAlpha;->onPostMessage()Lcom/facebook/common/memory/PooledByteBuffer;

    move-result-object v1

    invoke-static {v1}, Lo/getRootAlpha;->ICustomTabsCallback(Ljava/io/Closeable;)Lo/getRootAlpha;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 109
    :try_start_1
    new-instance v2, Lo/getCardBackgroundColor;

    invoke-direct {v2, v1}, Lo/getCardBackgroundColor;-><init>(Lo/getRootAlpha;)V

    .line 110
    iget-object v3, p0, Lo/setLogLevel$1;->onMessageChannelReady:Lo/getCardBackgroundColor;

    invoke-virtual {v2, v3}, Lo/getCardBackgroundColor;->ICustomTabsCallback(Lo/getCardBackgroundColor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    :try_start_2
    invoke-static {v1}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 116
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 113
    :try_start_3
    invoke-static {v1}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    .line 116
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    throw v1
.end method


# virtual methods
.method public final extraCallback()V
    .locals 1

    .line 139
    iget-object v0, p0, Lo/setLogLevel$1;->onMessageChannelReady:Lo/getCardBackgroundColor;

    if-eqz v0, :cond_0

    .line 5425
    invoke-virtual {v0}, Lo/getCardBackgroundColor;->close()V

    .line 140
    :cond_0
    invoke-super {p0}, Lo/validateAndTrackInAppPurchase;->extraCallback()V

    return-void
.end method

.method public final synthetic extraCallback(Ljava/lang/Object;)V
    .locals 1

    .line 100
    check-cast p1, Lo/getCardBackgroundColor;

    .line 7127
    iget-object v0, p0, Lo/setLogLevel$1;->onMessageChannelReady:Lo/getCardBackgroundColor;

    if-eqz v0, :cond_0

    .line 7425
    invoke-virtual {v0}, Lo/getCardBackgroundColor;->close()V

    .line 7128
    :cond_0
    invoke-super {p0, p1}, Lo/validateAndTrackInAppPurchase;->extraCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)V
    .locals 0

    .line 100
    check-cast p1, Lo/getCardBackgroundColor;

    if-eqz p1, :cond_0

    .line 6425
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->close()V

    :cond_0
    return-void
.end method

.method public final synthetic onNavigationEvent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Lo/setLogLevel$1;->onPostMessage()Lo/getCardBackgroundColor;

    move-result-object v0

    return-object v0
.end method

.method public final onPostMessage(Ljava/lang/Exception;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lo/setLogLevel$1;->onMessageChannelReady:Lo/getCardBackgroundColor;

    if-eqz v0, :cond_0

    .line 4425
    invoke-virtual {v0}, Lo/getCardBackgroundColor;->close()V

    .line 134
    :cond_0
    invoke-super {p0, p1}, Lo/validateAndTrackInAppPurchase;->onPostMessage(Ljava/lang/Exception;)V

    return-void
.end method
