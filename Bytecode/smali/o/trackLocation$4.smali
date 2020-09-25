.class final Lo/trackLocation$4;
.super Lo/releaseGlows$onPostMessage$onMessageChannelReady;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/trackLocation;->extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V
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

    .line 120
    iput-object p1, p0, Lo/trackLocation$4;->onNavigationEvent:Lo/validateAndTrackInAppPurchase;

    invoke-direct {p0}, Lo/releaseGlows$onPostMessage$onMessageChannelReady;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 1

    .line 123
    iget-object v0, p0, Lo/trackLocation$4;->onNavigationEvent:Lo/validateAndTrackInAppPurchase;

    invoke-virtual {v0}, Lo/setTrimPathEnd;->ICustomTabsCallback()V

    return-void
.end method
