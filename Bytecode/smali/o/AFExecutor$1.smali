.class public final Lo/AFExecutor$1;
.super Lo/addChannel;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/addChannel<",
        "Lo/getRootAlpha<",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lo/setDeviceTrackingDisabled;Lo/isPreInstalledApp;Lo/AFLogger;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getRootAlpha<",
            "TT;>;>;",
            "Lo/isPreInstalledApp;",
            "Lo/AFLogger;",
            ")V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lo/addChannel;-><init>(Lo/setDeviceTrackingDisabled;Lo/isPreInstalledApp;Lo/AFLogger;)V

    return-void
.end method


# virtual methods
.method protected final synthetic extraCallback(Ljava/lang/Object;ILo/setPreinstallAttribution;)V
    .locals 0

    .line 25
    check-cast p1, Lo/getRootAlpha;

    .line 1065
    invoke-static {p1}, Lo/getRootAlpha;->onNavigationEvent(Lo/getRootAlpha;)Lo/getRootAlpha;

    move-result-object p1

    invoke-super {p0, p1, p2, p3}, Lo/addChannel;->extraCallback(Ljava/lang/Object;ILo/setPreinstallAttribution;)V

    return-void
.end method

.method public final bridge synthetic onNavigationEvent()Ljava/lang/Object;
    .locals 1

    .line 3054
    invoke-super {p0}, Lo/addChannel;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getRootAlpha;

    invoke-static {v0}, Lo/getRootAlpha;->onNavigationEvent(Lo/getRootAlpha;)Lo/getRootAlpha;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lo/getRootAlpha;

    .line 2059
    invoke-static {p1}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    return-void
.end method
