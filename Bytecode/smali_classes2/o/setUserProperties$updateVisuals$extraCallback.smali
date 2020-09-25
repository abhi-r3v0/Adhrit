.class public final Lo/setUserProperties$updateVisuals$extraCallback;
.super Lo/RealtimeSinceBootClock$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setUserProperties$updateVisuals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/RealtimeSinceBootClock$onNavigationEvent<",
        "Lo/setUserProperties$updateVisuals;",
        "Lo/setUserProperties$updateVisuals$extraCallback;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lo/setUserProperties$updateVisuals;->extraCallback()Lo/setUserProperties$updateVisuals;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/RealtimeSinceBootClock$onNavigationEvent;-><init>(Lo/RealtimeSinceBootClock$onMessageChannelReady;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/setConversationBannerMessage;)V
    .locals 0

    invoke-direct {p0}, Lo/setUserProperties$updateVisuals$extraCallback;-><init>()V

    return-void
.end method
