.class final Lo/setResolveDeepLinkURLs$4;
.super Lo/validateAndTrackInAppPurchase;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setResolveDeepLinkURLs;->extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V
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
.field private synthetic ICustomTabsCallback:Lo/unregisterConversionListener;

.field private synthetic extraCallback:Lo/setPreinstallAttribution;

.field private synthetic onNavigationEvent:Lo/setResolveDeepLinkURLs;

.field private synthetic onPostMessage:Lo/getHostPrefix;


# direct methods
.method constructor <init>(Lo/setResolveDeepLinkURLs;Lo/waitForCustomerUserId;Lo/unregisterConversionListener;Lo/setPreinstallAttribution;Ljava/lang/String;Lo/getHostPrefix;Lo/unregisterConversionListener;Lo/setPreinstallAttribution;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lo/setResolveDeepLinkURLs$4;->onNavigationEvent:Lo/setResolveDeepLinkURLs;

    iput-object p6, p0, Lo/setResolveDeepLinkURLs$4;->onPostMessage:Lo/getHostPrefix;

    iput-object p7, p0, Lo/setResolveDeepLinkURLs$4;->ICustomTabsCallback:Lo/unregisterConversionListener;

    iput-object p8, p0, Lo/setResolveDeepLinkURLs$4;->extraCallback:Lo/setPreinstallAttribution;

    invoke-direct {p0, p2, p3, p4, p5}, Lo/validateAndTrackInAppPurchase;-><init>(Lo/waitForCustomerUserId;Lo/unregisterConversionListener;Lo/setPreinstallAttribution;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p1, Lo/getCardBackgroundColor;

    if-eqz p1, :cond_0

    .line 1425
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->close()V

    :cond_0
    return-void
.end method

.method public final synthetic onNavigationEvent()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2045
    iget-object v0, p0, Lo/setResolveDeepLinkURLs$4;->onNavigationEvent:Lo/setResolveDeepLinkURLs;

    iget-object v1, p0, Lo/setResolveDeepLinkURLs$4;->onPostMessage:Lo/getHostPrefix;

    invoke-virtual {v0, v1}, Lo/setResolveDeepLinkURLs;->onMessageChannelReady(Lo/getHostPrefix;)Lo/getCardBackgroundColor;

    move-result-object v0

    const-string v1, "local"

    if-nez v0, :cond_0

    .line 2047
    iget-object v0, p0, Lo/setResolveDeepLinkURLs$4;->ICustomTabsCallback:Lo/unregisterConversionListener;

    iget-object v2, p0, Lo/setResolveDeepLinkURLs$4;->extraCallback:Lo/setPreinstallAttribution;

    iget-object v3, p0, Lo/setResolveDeepLinkURLs$4;->onNavigationEvent:Lo/setResolveDeepLinkURLs;

    invoke-virtual {v3}, Lo/setResolveDeepLinkURLs;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lo/unregisterConversionListener;->onPostMessage(Lo/setPreinstallAttribution;Ljava/lang/String;Z)V

    .line 2048
    iget-object v0, p0, Lo/setResolveDeepLinkURLs$4;->extraCallback:Lo/setPreinstallAttribution;

    invoke-interface {v0, v1}, Lo/setPreinstallAttribution;->onPostMessage(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 2051
    :cond_0
    invoke-virtual {v0}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 2052
    iget-object v2, p0, Lo/setResolveDeepLinkURLs$4;->ICustomTabsCallback:Lo/unregisterConversionListener;

    iget-object v3, p0, Lo/setResolveDeepLinkURLs$4;->extraCallback:Lo/setPreinstallAttribution;

    iget-object v4, p0, Lo/setResolveDeepLinkURLs$4;->onNavigationEvent:Lo/setResolveDeepLinkURLs;

    invoke-virtual {v4}, Lo/setResolveDeepLinkURLs;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Lo/unregisterConversionListener;->onPostMessage(Lo/setPreinstallAttribution;Ljava/lang/String;Z)V

    .line 2053
    iget-object v2, p0, Lo/setResolveDeepLinkURLs$4;->extraCallback:Lo/setPreinstallAttribution;

    invoke-interface {v2, v1}, Lo/setPreinstallAttribution;->onPostMessage(Ljava/lang/String;)V

    return-object v0
.end method
