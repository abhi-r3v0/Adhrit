.class public final Lo/setCustomerIdAndTrack;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setDeviceTrackingDisabled;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setCustomerIdAndTrack$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setDeviceTrackingDisabled<",
        "Lo/getCardBackgroundColor;",
        ">;"
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/setDeviceTrackingDisabled;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getCardBackgroundColor;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Lo/setDeviceTrackingDisabled;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getCardBackgroundColor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/setDeviceTrackingDisabled;Lo/setDeviceTrackingDisabled;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getCardBackgroundColor;",
            ">;",
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getCardBackgroundColor;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lo/setCustomerIdAndTrack;->extraCallback:Lo/setDeviceTrackingDisabled;

    .line 26
    iput-object p2, p0, Lo/setCustomerIdAndTrack;->ICustomTabsCallback:Lo/setDeviceTrackingDisabled;

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V
    .locals 2
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

    .line 31
    new-instance v0, Lo/setCustomerIdAndTrack$onNavigationEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lo/setCustomerIdAndTrack$onNavigationEvent;-><init>(Lo/setCustomerIdAndTrack;Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;B)V

    .line 32
    iget-object p1, p0, Lo/setCustomerIdAndTrack;->extraCallback:Lo/setDeviceTrackingDisabled;

    invoke-interface {p1, v0, p2}, Lo/setDeviceTrackingDisabled;->extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V

    return-void
.end method
