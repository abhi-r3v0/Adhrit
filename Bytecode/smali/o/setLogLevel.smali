.class public final Lo/setLogLevel;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setDeviceTrackingDisabled;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setLogLevel$ICustomTabsCallback;
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
.field private final ICustomTabsCallback:Lo/setDeviceTrackingDisabled;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getCardBackgroundColor;",
            ">;"
        }
    .end annotation
.end field

.field final extraCallback:Lo/CustomVersionedParcelable;

.field final onMessageChannelReady:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lo/CustomVersionedParcelable;Lo/setDeviceTrackingDisabled;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lo/CustomVersionedParcelable;",
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getCardBackgroundColor;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 48
    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lo/setLogLevel;->onMessageChannelReady:Ljava/util/concurrent/Executor;

    if-eqz p2, :cond_1

    .line 49
    check-cast p2, Lo/CustomVersionedParcelable;

    iput-object p2, p0, Lo/setLogLevel;->extraCallback:Lo/CustomVersionedParcelable;

    if-eqz p3, :cond_0

    .line 50
    check-cast p3, Lo/setDeviceTrackingDisabled;

    iput-object p3, p0, Lo/setLogLevel;->ICustomTabsCallback:Lo/setDeviceTrackingDisabled;

    return-void

    .line 3215
    :cond_0
    throw v0

    .line 2215
    :cond_1
    throw v0

    .line 1215
    :cond_2
    throw v0
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

    .line 55
    iget-object v0, p0, Lo/setLogLevel;->ICustomTabsCallback:Lo/setDeviceTrackingDisabled;

    new-instance v1, Lo/setLogLevel$ICustomTabsCallback;

    invoke-direct {v1, p0, p1, p2}, Lo/setLogLevel$ICustomTabsCallback;-><init>(Lo/setLogLevel;Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V

    invoke-interface {v0, v1, p2}, Lo/setDeviceTrackingDisabled;->extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V

    return-void
.end method
