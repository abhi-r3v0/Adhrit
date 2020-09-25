.class public abstract Lo/setResolveDeepLinkURLs;
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
.field private final onMessageChannelReady:Ljava/util/concurrent/Executor;

.field private final onPostMessage:Lo/CustomVersionedParcelable;


# direct methods
.method protected constructor <init>(Ljava/util/concurrent/Executor;Lo/CustomVersionedParcelable;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lo/setResolveDeepLinkURLs;->onMessageChannelReady:Ljava/util/concurrent/Executor;

    .line 29
    iput-object p2, p0, Lo/setResolveDeepLinkURLs;->onPostMessage:Lo/CustomVersionedParcelable;

    return-void
.end method


# virtual methods
.method protected final ICustomTabsCallback(Ljava/io/InputStream;I)Lo/getCardBackgroundColor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-virtual {p0, p1, p2}, Lo/setResolveDeepLinkURLs;->onMessageChannelReady(Ljava/io/InputStream;I)Lo/getCardBackgroundColor;

    move-result-object p1

    return-object p1
.end method

.method public final extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V
    .locals 10
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

    .line 36
    invoke-interface {p2}, Lo/setPreinstallAttribution;->ICustomTabsCallback()Lo/unregisterConversionListener;

    move-result-object v7

    .line 37
    invoke-interface {p2}, Lo/setPreinstallAttribution;->onMessageChannelReady()Lo/getHostPrefix;

    move-result-object v6

    const-string v0, "local"

    const-string v1, "fetch"

    .line 38
    invoke-interface {p2, v0, v1}, Lo/setPreinstallAttribution;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v9, Lo/setResolveDeepLinkURLs$4;

    .line 41
    invoke-virtual {p0}, Lo/setResolveDeepLinkURLs;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v5

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, v7

    move-object v4, p2

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lo/setResolveDeepLinkURLs$4;-><init>(Lo/setResolveDeepLinkURLs;Lo/waitForCustomerUserId;Lo/unregisterConversionListener;Lo/setPreinstallAttribution;Ljava/lang/String;Lo/getHostPrefix;Lo/unregisterConversionListener;Lo/setPreinstallAttribution;)V

    .line 63
    new-instance p1, Lo/setResolveDeepLinkURLs$3;

    invoke-direct {p1, v9}, Lo/setResolveDeepLinkURLs$3;-><init>(Lo/validateAndTrackInAppPurchase;)V

    invoke-interface {p2, p1}, Lo/setPreinstallAttribution;->onPostMessage(Lo/releaseGlows$onPostMessage$onMessageChannelReady;)V

    .line 70
    iget-object p1, p0, Lo/setResolveDeepLinkURLs;->onMessageChannelReady:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected abstract onMessageChannelReady()Ljava/lang/String;
.end method

.method protected final onMessageChannelReady(Ljava/io/InputStream;I)Lo/getCardBackgroundColor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-gtz p2, :cond_0

    .line 79
    :try_start_0
    iget-object p2, p0, Lo/setResolveDeepLinkURLs;->onPostMessage:Lo/CustomVersionedParcelable;

    invoke-interface {p2, p1}, Lo/CustomVersionedParcelable;->extraCallback(Ljava/io/InputStream;)Lcom/facebook/common/memory/PooledByteBuffer;

    move-result-object p2

    invoke-static {p2}, Lo/getRootAlpha;->ICustomTabsCallback(Ljava/io/Closeable;)Lo/getRootAlpha;

    move-result-object p2

    goto :goto_0

    .line 81
    :cond_0
    iget-object v1, p0, Lo/setResolveDeepLinkURLs;->onPostMessage:Lo/CustomVersionedParcelable;

    invoke-interface {v1, p1, p2}, Lo/CustomVersionedParcelable;->onPostMessage(Ljava/io/InputStream;I)Lcom/facebook/common/memory/PooledByteBuffer;

    move-result-object p2

    invoke-static {p2}, Lo/getRootAlpha;->ICustomTabsCallback(Ljava/io/Closeable;)Lo/getRootAlpha;

    move-result-object p2

    :goto_0
    move-object v0, p2

    .line 83
    new-instance p2, Lo/getCardBackgroundColor;

    invoke-direct {p2, v0}, Lo/getCardBackgroundColor;-><init>(Lo/getRootAlpha;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    invoke-static {p1}, Lo/getTrimPathStart;->onNavigationEvent(Ljava/io/InputStream;)V

    .line 86
    invoke-static {v0}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    return-object p2

    :catchall_0
    move-exception p2

    .line 85
    invoke-static {p1}, Lo/getTrimPathStart;->onNavigationEvent(Ljava/io/InputStream;)V

    .line 86
    invoke-static {v0}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    throw p2
.end method

.method protected abstract onMessageChannelReady(Lo/getHostPrefix;)Lo/getCardBackgroundColor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
