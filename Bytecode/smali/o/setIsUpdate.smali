.class public final Lo/setIsUpdate;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setDeviceTrackingDisabled;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setDeviceTrackingDisabled<",
        "Lo/getCardBackgroundColor;",
        ">;"
    }
.end annotation


# instance fields
.field final extraCallback:Lo/CustomVersionedParcelable;

.field final onMessageChannelReady:Lo/enableFacebookDeferredApplinks;

.field final onPostMessage:Lo/getTranslateY;


# direct methods
.method public constructor <init>(Lo/CustomVersionedParcelable;Lo/getTranslateY;Lo/enableFacebookDeferredApplinks;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lo/setIsUpdate;->extraCallback:Lo/CustomVersionedParcelable;

    .line 57
    iput-object p2, p0, Lo/setIsUpdate;->onPostMessage:Lo/getTranslateY;

    .line 58
    iput-object p3, p0, Lo/setIsUpdate;->onMessageChannelReady:Lo/enableFacebookDeferredApplinks;

    return-void
.end method

.method static onNavigationEvent(Lo/setRootAlpha;ILo/logWarn;Lo/waitForCustomerUserId;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setRootAlpha;",
            "I",
            "Lo/logWarn;",
            "Lo/waitForCustomerUserId<",
            "Lo/getCardBackgroundColor;",
            ">;)V"
        }
    .end annotation

    .line 180
    invoke-virtual {p0}, Lo/setRootAlpha;->onPostMessage()Lcom/facebook/common/memory/PooledByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lo/getRootAlpha;->ICustomTabsCallback(Ljava/io/Closeable;)Lo/getRootAlpha;

    move-result-object p0

    const/4 v0, 0x0

    .line 183
    :try_start_0
    new-instance v1, Lo/getCardBackgroundColor;

    invoke-direct {v1, p0}, Lo/getCardBackgroundColor;-><init>(Lo/getRootAlpha;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1203
    :try_start_1
    iput-object p2, v1, Lo/getCardBackgroundColor;->ICustomTabsCallback$Stub:Lo/logWarn;

    .line 185
    invoke-virtual {v1}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 186
    sget-object p2, Lo/onAppLinkFetchFinished;->ICustomTabsCallback:Lo/onAppLinkFetchFinished;

    .line 187
    invoke-interface {p3, v1, p1}, Lo/waitForCustomerUserId;->onNavigationEvent(Ljava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1425
    invoke-virtual {v1}, Lo/getCardBackgroundColor;->close()V

    .line 190
    invoke-static {p0}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_0

    .line 2425
    invoke-virtual {v0}, Lo/getCardBackgroundColor;->close()V

    .line 190
    :cond_0
    invoke-static {p0}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    throw p1
.end method


# virtual methods
.method public final extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/waitForCustomerUserId<",
            "Lo/getCardBackgroundColor;",
            ">;",
            "Lo/setPreinstallAttribution;",
            ")V"
        }
    .end annotation

    .line 63
    invoke-interface {p2}, Lo/setPreinstallAttribution;->ICustomTabsCallback()Lo/unregisterConversionListener;

    move-result-object v0

    const-string v1, "NetworkFetchProducer"

    invoke-interface {v0, p2, v1}, Lo/unregisterConversionListener;->onMessageChannelReady(Lo/setPreinstallAttribution;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lo/setIsUpdate;->onMessageChannelReady:Lo/enableFacebookDeferredApplinks;

    invoke-interface {v0, p1, p2}, Lo/enableFacebookDeferredApplinks;->onPostMessage(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)Lo/getId;

    move-result-object p1

    .line 65
    iget-object p2, p0, Lo/setIsUpdate;->onMessageChannelReady:Lo/enableFacebookDeferredApplinks;

    new-instance v0, Lo/setIsUpdate$3;

    invoke-direct {v0, p0, p1}, Lo/setIsUpdate$3;-><init>(Lo/setIsUpdate;Lo/getId;)V

    invoke-interface {p2, p1, v0}, Lo/enableFacebookDeferredApplinks;->onMessageChannelReady(Lo/getId;Lo/enableFacebookDeferredApplinks$extraCallback;)V

    return-void
.end method
