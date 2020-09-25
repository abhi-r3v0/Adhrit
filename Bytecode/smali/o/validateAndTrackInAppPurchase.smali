.class public abstract Lo/validateAndTrackInAppPurchase;
.super Lo/setTrimPathEnd;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/setTrimPathEnd<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/String;

.field private final extraCallback:Lo/unregisterConversionListener;

.field private final onMessageChannelReady:Lo/setPreinstallAttribution;

.field private final onNavigationEvent:Lo/waitForCustomerUserId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/waitForCustomerUserId<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/waitForCustomerUserId;Lo/unregisterConversionListener;Lo/setPreinstallAttribution;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/waitForCustomerUserId<",
            "TT;>;",
            "Lo/unregisterConversionListener;",
            "Lo/setPreinstallAttribution;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lo/setTrimPathEnd;-><init>()V

    .line 32
    iput-object p1, p0, Lo/validateAndTrackInAppPurchase;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 33
    iput-object p2, p0, Lo/validateAndTrackInAppPurchase;->extraCallback:Lo/unregisterConversionListener;

    .line 34
    iput-object p4, p0, Lo/validateAndTrackInAppPurchase;->ICustomTabsCallback:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lo/validateAndTrackInAppPurchase;->onMessageChannelReady:Lo/setPreinstallAttribution;

    .line 37
    invoke-interface {p2, p3, p4}, Lo/unregisterConversionListener;->onMessageChannelReady(Lo/setPreinstallAttribution;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public extraCallback()V
    .locals 4

    .line 65
    iget-object v0, p0, Lo/validateAndTrackInAppPurchase;->extraCallback:Lo/unregisterConversionListener;

    iget-object v1, p0, Lo/validateAndTrackInAppPurchase;->onMessageChannelReady:Lo/setPreinstallAttribution;

    iget-object v2, p0, Lo/validateAndTrackInAppPurchase;->ICustomTabsCallback:Ljava/lang/String;

    .line 68
    invoke-interface {v0, v1, v2}, Lo/unregisterConversionListener;->extraCallback(Lo/setPreinstallAttribution;Ljava/lang/String;)Z

    const/4 v3, 0x0

    .line 65
    invoke-interface {v0, v1, v2, v3}, Lo/unregisterConversionListener;->extraCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/util/Map;)V

    .line 71
    iget-object v0, p0, Lo/validateAndTrackInAppPurchase;->onNavigationEvent:Lo/waitForCustomerUserId;

    invoke-interface {v0}, Lo/waitForCustomerUserId;->ICustomTabsCallback()V

    return-void
.end method

.method public extraCallback(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lo/validateAndTrackInAppPurchase;->extraCallback:Lo/unregisterConversionListener;

    iget-object v1, p0, Lo/validateAndTrackInAppPurchase;->onMessageChannelReady:Lo/setPreinstallAttribution;

    iget-object v2, p0, Lo/validateAndTrackInAppPurchase;->ICustomTabsCallback:Ljava/lang/String;

    .line 45
    invoke-interface {v0, v1, v2}, Lo/unregisterConversionListener;->extraCallback(Lo/setPreinstallAttribution;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 46
    invoke-virtual {p0, p1}, Lo/validateAndTrackInAppPurchase;->onPostMessage(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 42
    :goto_0
    invoke-interface {v0, v1, v2, v3}, Lo/unregisterConversionListener;->ICustomTabsCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/util/Map;)V

    .line 48
    iget-object v0, p0, Lo/validateAndTrackInAppPurchase;->onNavigationEvent:Lo/waitForCustomerUserId;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lo/waitForCustomerUserId;->onNavigationEvent(Ljava/lang/Object;I)V

    return-void
.end method

.method public abstract onMessageChannelReady(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected onPostMessage(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onPostMessage(Ljava/lang/Exception;)V
    .locals 4

    .line 53
    iget-object v0, p0, Lo/validateAndTrackInAppPurchase;->extraCallback:Lo/unregisterConversionListener;

    iget-object v1, p0, Lo/validateAndTrackInAppPurchase;->onMessageChannelReady:Lo/setPreinstallAttribution;

    iget-object v2, p0, Lo/validateAndTrackInAppPurchase;->ICustomTabsCallback:Ljava/lang/String;

    .line 57
    invoke-interface {v0, v1, v2}, Lo/unregisterConversionListener;->extraCallback(Lo/setPreinstallAttribution;Ljava/lang/String;)Z

    const/4 v3, 0x0

    .line 53
    invoke-interface {v0, v1, v2, p1, v3}, Lo/unregisterConversionListener;->extraCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 60
    iget-object v0, p0, Lo/validateAndTrackInAppPurchase;->onNavigationEvent:Lo/waitForCustomerUserId;

    invoke-interface {v0, p1}, Lo/waitForCustomerUserId;->onPostMessage(Ljava/lang/Throwable;)V

    return-void
.end method
