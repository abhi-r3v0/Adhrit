.class final Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer$1;
.super Lo/validateAndTrackInAppPurchase;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer;->extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V
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
.field private synthetic ICustomTabsCallback:Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer;

.field private synthetic onNavigationEvent:Lo/getHostPrefix;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer;Lo/waitForCustomerUserId;Lo/unregisterConversionListener;Lo/setPreinstallAttribution;Ljava/lang/String;Lo/getHostPrefix;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer$1;->ICustomTabsCallback:Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer;

    iput-object p6, p0, Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer$1;->onNavigationEvent:Lo/getHostPrefix;

    invoke-direct {p0, p2, p3, p4, p5}, Lo/validateAndTrackInAppPurchase;-><init>(Lo/waitForCustomerUserId;Lo/unregisterConversionListener;Lo/setPreinstallAttribution;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)V
    .locals 0

    .line 91
    check-cast p1, Lo/getCardBackgroundColor;

    if-eqz p1, :cond_0

    .line 1425
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->close()V

    :cond_0
    return-void
.end method

.method public final synthetic onNavigationEvent()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3094
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer$1;->onNavigationEvent:Lo/getHostPrefix;

    .line 3150
    iget-object v0, v0, Lo/getHostPrefix;->ICustomTabsCallback:Landroid/net/Uri;

    .line 3096
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer$1;->ICustomTabsCallback:Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer;

    invoke-virtual {v1, v0}, Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer;->ICustomTabsCallback(Landroid/net/Uri;)Landroid/media/ExifInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3097
    invoke-virtual {v0}, Landroid/media/ExifInterface;->hasThumbnail()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3101
    :cond_0
    invoke-virtual {v0}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v1

    .line 3102
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer$1;->ICustomTabsCallback:Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer;

    invoke-static {v2}, Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer;->ICustomTabsCallback(Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer;)Lo/CustomVersionedParcelable;

    move-result-object v2

    invoke-interface {v2, v1}, Lo/CustomVersionedParcelable;->onPostMessage([B)Lcom/facebook/common/memory/PooledByteBuffer;

    move-result-object v1

    .line 3103
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer$1;->ICustomTabsCallback:Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer;

    invoke-static {v2, v1, v0}, Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer;->extraCallback(Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer;Lcom/facebook/common/memory/PooledByteBuffer;Landroid/media/ExifInterface;)Lo/getCardBackgroundColor;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic onPostMessage(Ljava/lang/Object;)Ljava/util/Map;
    .locals 2

    .line 91
    check-cast p1, Lo/getCardBackgroundColor;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2113
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    .line 3033
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    const-string v0, "createdThumbnail"

    .line 3034
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3035
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
