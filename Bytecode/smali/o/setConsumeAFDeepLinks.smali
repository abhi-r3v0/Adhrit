.class public final Lo/setConsumeAFDeepLinks;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setDeviceTrackingDisabled;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setConsumeAFDeepLinks$onPostMessage;
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

.field final extraCallback:Ljava/util/concurrent/Executor;

.field final onMessageChannelReady:Lo/CustomVersionedParcelable;

.field private final onNavigationEvent:Lo/handleDeepLinkCallback;

.field private final onPostMessage:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lo/CustomVersionedParcelable;Lo/setDeviceTrackingDisabled;ZLo/handleDeepLinkCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lo/CustomVersionedParcelable;",
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getCardBackgroundColor;",
            ">;Z",
            "Lo/handleDeepLinkCallback;",
            ")V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 68
    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lo/setConsumeAFDeepLinks;->extraCallback:Ljava/util/concurrent/Executor;

    if-eqz p2, :cond_2

    .line 69
    check-cast p2, Lo/CustomVersionedParcelable;

    iput-object p2, p0, Lo/setConsumeAFDeepLinks;->onMessageChannelReady:Lo/CustomVersionedParcelable;

    if-eqz p3, :cond_1

    .line 70
    check-cast p3, Lo/setDeviceTrackingDisabled;

    iput-object p3, p0, Lo/setConsumeAFDeepLinks;->ICustomTabsCallback:Lo/setDeviceTrackingDisabled;

    if-eqz p5, :cond_0

    .line 71
    check-cast p5, Lo/handleDeepLinkCallback;

    iput-object p5, p0, Lo/setConsumeAFDeepLinks;->onNavigationEvent:Lo/handleDeepLinkCallback;

    .line 72
    iput-boolean p4, p0, Lo/setConsumeAFDeepLinks;->onPostMessage:Z

    return-void

    .line 4215
    :cond_0
    throw v0

    .line 3215
    :cond_1
    throw v0

    .line 2215
    :cond_2
    throw v0

    .line 1215
    :cond_3
    throw v0
.end method


# virtual methods
.method public final extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V
    .locals 8
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

    .line 77
    iget-object v0, p0, Lo/setConsumeAFDeepLinks;->ICustomTabsCallback:Lo/setDeviceTrackingDisabled;

    new-instance v7, Lo/setConsumeAFDeepLinks$onPostMessage;

    iget-boolean v5, p0, Lo/setConsumeAFDeepLinks;->onPostMessage:Z

    iget-object v6, p0, Lo/setConsumeAFDeepLinks;->onNavigationEvent:Lo/handleDeepLinkCallback;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lo/setConsumeAFDeepLinks$onPostMessage;-><init>(Lo/setConsumeAFDeepLinks;Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;ZLo/handleDeepLinkCallback;)V

    invoke-interface {v0, v7, p2}, Lo/setDeviceTrackingDisabled;->extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V

    return-void
.end method
