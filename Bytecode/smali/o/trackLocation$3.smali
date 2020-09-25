.class final Lo/trackLocation$3;
.super Lo/validateAndTrackInAppPurchase;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/trackLocation;->extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/validateAndTrackInAppPurchase<",
        "Lo/getRootAlpha<",
        "Lo/convertToJsonObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/getHostPrefix;

.field private synthetic onMessageChannelReady:Lo/unregisterConversionListener;

.field private synthetic onNavigationEvent:Lo/trackLocation;

.field private synthetic onPostMessage:Lo/setPreinstallAttribution;


# direct methods
.method constructor <init>(Lo/trackLocation;Lo/waitForCustomerUserId;Lo/unregisterConversionListener;Lo/setPreinstallAttribution;Ljava/lang/String;Lo/unregisterConversionListener;Lo/setPreinstallAttribution;Lo/getHostPrefix;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lo/trackLocation$3;->onNavigationEvent:Lo/trackLocation;

    iput-object p6, p0, Lo/trackLocation$3;->onMessageChannelReady:Lo/unregisterConversionListener;

    iput-object p7, p0, Lo/trackLocation$3;->onPostMessage:Lo/setPreinstallAttribution;

    iput-object p8, p0, Lo/trackLocation$3;->ICustomTabsCallback:Lo/getHostPrefix;

    invoke-direct {p0, p2, p3, p4, p5}, Lo/validateAndTrackInAppPurchase;-><init>(Lo/waitForCustomerUserId;Lo/unregisterConversionListener;Lo/setPreinstallAttribution;Ljava/lang/String;)V

    return-void
.end method

.method private onMessageChannelReady()Lo/getRootAlpha;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 83
    :try_start_0
    iget-object v1, p0, Lo/trackLocation$3;->onNavigationEvent:Lo/trackLocation;

    iget-object v2, p0, Lo/trackLocation$3;->ICustomTabsCallback:Lo/getHostPrefix;

    .line 1040
    invoke-virtual {v1, v2}, Lo/trackLocation;->extraCallback(Lo/getHostPrefix;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_4

    .line 87
    iget-object v2, p0, Lo/trackLocation$3;->ICustomTabsCallback:Lo/getHostPrefix;

    .line 2158
    iget-object v3, v2, Lo/getHostPrefix;->asBinder:Lo/ǃ;

    const/16 v4, 0x800

    if-eqz v3, :cond_0

    iget-object v3, v2, Lo/getHostPrefix;->asBinder:Lo/ǃ;

    iget v3, v3, Lo/ǃ;->extraCallback:I

    goto :goto_1

    :cond_0
    const/16 v3, 0x800

    :goto_1
    const/16 v5, 0x60

    if-gt v3, v5, :cond_3

    .line 2162
    iget-object v3, v2, Lo/getHostPrefix;->asBinder:Lo/ǃ;

    if-eqz v3, :cond_1

    iget-object v2, v2, Lo/getHostPrefix;->asBinder:Lo/ǃ;

    iget v4, v2, Lo/ǃ;->onPostMessage:I

    :cond_1
    if-le v4, v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x3

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v2, 0x1

    .line 89
    :goto_3
    invoke-static {v1, v2}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lo/trackLocation$3;->onNavigationEvent:Lo/trackLocation;

    .line 3040
    iget-object v1, v1, Lo/trackLocation;->extraCallback:Landroid/content/ContentResolver;

    .line 91
    iget-object v2, p0, Lo/trackLocation$3;->ICustomTabsCallback:Lo/getHostPrefix;

    .line 3150
    iget-object v2, v2, Lo/getHostPrefix;->ICustomTabsCallback:Landroid/net/Uri;

    .line 4040
    invoke-static {v1, v2}, Lo/trackLocation;->onNavigationEvent(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_4
    if-nez v1, :cond_5

    return-object v0

    .line 97
    :cond_5
    new-instance v0, Lo/onAppLinkFetchFailed;

    .line 5019
    sget-object v2, Lo/setSelectionAnimationInterpolator;->extraCallback:Lo/setSelectionAnimationInterpolator;

    if-nez v2, :cond_6

    .line 5020
    new-instance v2, Lo/setSelectionAnimationInterpolator;

    invoke-direct {v2}, Lo/setSelectionAnimationInterpolator;-><init>()V

    sput-object v2, Lo/setSelectionAnimationInterpolator;->extraCallback:Lo/setSelectionAnimationInterpolator;

    .line 5022
    :cond_6
    sget-object v2, Lo/setSelectionAnimationInterpolator;->extraCallback:Lo/setSelectionAnimationInterpolator;

    .line 100
    sget-object v3, Lo/ı;->ICustomTabsCallback:Lo/AFKeystoreWrapper;

    invoke-direct {v0, v1, v2, v3}, Lo/onAppLinkFetchFailed;-><init>(Landroid/graphics/Bitmap;Lo/setPageMargin;Lo/AFKeystoreWrapper;)V

    .line 103
    iget-object v1, p0, Lo/trackLocation$3;->onPostMessage:Lo/setPreinstallAttribution;

    const-string v2, "image_format"

    const-string/jumbo v3, "thumbnail"

    invoke-interface {v1, v2, v3}, Lo/setPreinstallAttribution;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    iget-object v1, p0, Lo/trackLocation$3;->onPostMessage:Lo/setPreinstallAttribution;

    invoke-interface {v1}, Lo/setPreinstallAttribution;->newSession()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/convertToJsonObject;->extraCallback(Ljava/util/Map;)V

    .line 105
    invoke-static {v0}, Lo/getRootAlpha;->ICustomTabsCallback(Ljava/io/Closeable;)Lo/getRootAlpha;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Object;)V
    .locals 3

    .line 63
    check-cast p1, Lo/getRootAlpha;

    .line 7066
    invoke-super {p0, p1}, Lo/validateAndTrackInAppPurchase;->extraCallback(Ljava/lang/Object;)V

    .line 7067
    iget-object v0, p0, Lo/trackLocation$3;->onMessageChannelReady:Lo/unregisterConversionListener;

    iget-object v1, p0, Lo/trackLocation$3;->onPostMessage:Lo/setPreinstallAttribution;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v2, "VideoThumbnailProducer"

    invoke-interface {v0, v1, v2, p1}, Lo/unregisterConversionListener;->onPostMessage(Lo/setPreinstallAttribution;Ljava/lang/String;Z)V

    .line 7068
    iget-object p1, p0, Lo/trackLocation$3;->onPostMessage:Lo/setPreinstallAttribution;

    const-string v0, "local"

    invoke-interface {p1, v0}, Lo/setPreinstallAttribution;->onPostMessage(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)V
    .locals 0

    .line 63
    check-cast p1, Lo/getRootAlpha;

    .line 5116
    invoke-static {p1}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    return-void
.end method

.method public final synthetic onNavigationEvent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Lo/trackLocation$3;->onMessageChannelReady()Lo/getRootAlpha;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostMessage(Ljava/lang/Object;)Ljava/util/Map;
    .locals 2

    .line 63
    check-cast p1, Lo/getRootAlpha;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6111
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    .line 7033
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    const-string v0, "createdThumbnail"

    .line 7034
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7035
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage(Ljava/lang/Exception;)V
    .locals 3

    .line 73
    invoke-super {p0, p1}, Lo/validateAndTrackInAppPurchase;->onPostMessage(Ljava/lang/Exception;)V

    .line 74
    iget-object p1, p0, Lo/trackLocation$3;->onMessageChannelReady:Lo/unregisterConversionListener;

    iget-object v0, p0, Lo/trackLocation$3;->onPostMessage:Lo/setPreinstallAttribution;

    const-string v1, "VideoThumbnailProducer"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lo/unregisterConversionListener;->onPostMessage(Lo/setPreinstallAttribution;Ljava/lang/String;Z)V

    .line 75
    iget-object p1, p0, Lo/trackLocation$3;->onPostMessage:Lo/setPreinstallAttribution;

    const-string v0, "local"

    invoke-interface {p1, v0}, Lo/setPreinstallAttribution;->onPostMessage(Ljava/lang/String;)V

    return-void
.end method
