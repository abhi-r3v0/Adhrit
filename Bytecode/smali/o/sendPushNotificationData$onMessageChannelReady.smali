.class public final Lo/sendPushNotificationData$onMessageChannelReady;
.super Lo/getId;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/sendPushNotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field onMessageChannelReady:J

.field onPostMessage:J

.field onRelationshipValidationResult:J


# direct methods
.method public constructor <init>(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V
    .locals 0
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

    .line 45
    invoke-direct {p0, p1, p2}, Lo/getId;-><init>(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V

    return-void
.end method
