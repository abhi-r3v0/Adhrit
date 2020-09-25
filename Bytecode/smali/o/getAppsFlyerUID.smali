.class public final Lo/getAppsFlyerUID;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setDeviceTrackingDisabled;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setDeviceTrackingDisabled<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final extraCallback:Lo/setDeviceTrackingDisabled;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setDeviceTrackingDisabled<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/setDeviceTrackingDisabled;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setDeviceTrackingDisabled<",
            "TT;>;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lo/getAppsFlyerUID;->extraCallback:Lo/setDeviceTrackingDisabled;

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/waitForCustomerUserId<",
            "Ljava/lang/Void;",
            ">;",
            "Lo/setPreinstallAttribution;",
            ")V"
        }
    .end annotation

    .line 24
    new-instance v0, Lo/getAppsFlyerUID$1;

    invoke-direct {v0, p1}, Lo/getAppsFlyerUID$1;-><init>(Lo/waitForCustomerUserId;)V

    .line 33
    iget-object p1, p0, Lo/getAppsFlyerUID;->extraCallback:Lo/setDeviceTrackingDisabled;

    invoke-interface {p1, v0, p2}, Lo/setDeviceTrackingDisabled;->extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V

    return-void
.end method
