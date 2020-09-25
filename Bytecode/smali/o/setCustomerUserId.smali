.class public final Lo/setCustomerUserId;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setDeviceTrackingDisabled;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setCustomerUserId$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setDeviceTrackingDisabled<",
        "Lo/getRootAlpha<",
        "Lo/convertToJsonObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:I

.field private final extraCallback:Lo/setDeviceTrackingDisabled;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Z

.field private final onPostMessage:I


# direct methods
.method public constructor <init>(Lo/setDeviceTrackingDisabled;IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;IIZ)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gt p2, p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 46
    check-cast p1, Lo/setDeviceTrackingDisabled;

    iput-object p1, p0, Lo/setCustomerUserId;->extraCallback:Lo/setDeviceTrackingDisabled;

    .line 47
    iput p2, p0, Lo/setCustomerUserId;->onPostMessage:I

    .line 48
    iput p3, p0, Lo/setCustomerUserId;->ICustomTabsCallback:I

    .line 49
    iput-boolean p4, p0, Lo/setCustomerUserId;->onMessageChannelReady:Z

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 1215
    throw p1

    .line 1111
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/waitForCustomerUserId<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;",
            "Lo/setPreinstallAttribution;",
            ")V"
        }
    .end annotation

    .line 57
    invoke-interface {p2}, Lo/setPreinstallAttribution;->onRelationshipValidationResult()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/setCustomerUserId;->onMessageChannelReady:Z

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lo/setCustomerUserId;->extraCallback:Lo/setDeviceTrackingDisabled;

    invoke-interface {v0, p1, p2}, Lo/setDeviceTrackingDisabled;->extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V

    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lo/setCustomerUserId;->extraCallback:Lo/setDeviceTrackingDisabled;

    new-instance v1, Lo/setCustomerUserId$ICustomTabsCallback;

    iget v2, p0, Lo/setCustomerUserId;->onPostMessage:I

    iget v3, p0, Lo/setCustomerUserId;->ICustomTabsCallback:I

    invoke-direct {v1, p1, v2, v3}, Lo/setCustomerUserId$ICustomTabsCallback;-><init>(Lo/waitForCustomerUserId;II)V

    invoke-interface {v0, v1, p2}, Lo/setDeviceTrackingDisabled;->extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V

    return-void
.end method
