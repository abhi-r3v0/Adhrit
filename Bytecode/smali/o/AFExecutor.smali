.class public final Lo/AFExecutor;
.super Lo/addChannel;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/addChannel<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lo/setDeviceTrackingDisabled;Lo/isPreInstalledApp;Lo/AFLogger;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setDeviceTrackingDisabled<",
            "TT;>;",
            "Lo/isPreInstalledApp;",
            "Lo/AFLogger;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lo/addChannel;-><init>(Lo/setDeviceTrackingDisabled;Lo/isPreInstalledApp;Lo/AFLogger;)V

    return-void
.end method
