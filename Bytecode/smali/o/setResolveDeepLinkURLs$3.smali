.class final Lo/setResolveDeepLinkURLs$3;
.super Lo/releaseGlows$onPostMessage$onMessageChannelReady;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setResolveDeepLinkURLs;->extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/validateAndTrackInAppPurchase;


# direct methods
.method constructor <init>(Lo/validateAndTrackInAppPurchase;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lo/setResolveDeepLinkURLs$3;->onNavigationEvent:Lo/validateAndTrackInAppPurchase;

    invoke-direct {p0}, Lo/releaseGlows$onPostMessage$onMessageChannelReady;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 1

    .line 67
    iget-object v0, p0, Lo/setResolveDeepLinkURLs$3;->onNavigationEvent:Lo/validateAndTrackInAppPurchase;

    invoke-virtual {v0}, Lo/setTrimPathEnd;->ICustomTabsCallback()V

    return-void
.end method
