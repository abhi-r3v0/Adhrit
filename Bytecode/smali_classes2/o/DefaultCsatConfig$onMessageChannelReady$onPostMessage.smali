.class public final Lo/DefaultCsatConfig$onMessageChannelReady$onPostMessage;
.super Lo/MarketingMessageStatus$extraCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DefaultCsatConfig$onMessageChannelReady;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/MarketingMessageStatus$extraCallback<",
        "Lo/DefaultCsatConfig$onMessageChannelReady;",
        "Lo/DefaultCsatConfig$onMessageChannelReady$onPostMessage;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lo/DefaultCsatConfig$onMessageChannelReady;->updateVisuals()Lo/DefaultCsatConfig$onMessageChannelReady;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/MarketingMessageStatus$extraCallback;-><init>(Lo/MarketingMessageStatus;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/setCsatExpiryInterval;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lo/DefaultCsatConfig$onMessageChannelReady$onPostMessage;-><init>()V

    return-void
.end method
