.class public final Lo/setUserProperties$extraCallback$onMessageChannelReady;
.super Lo/RealtimeSinceBootClock$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setUserProperties$extraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/RealtimeSinceBootClock$onNavigationEvent<",
        "Lo/setUserProperties$extraCallback;",
        "Lo/setUserProperties$extraCallback$onMessageChannelReady;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lo/setUserProperties$extraCallback;->extraCallback()Lo/setUserProperties$extraCallback;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/RealtimeSinceBootClock$onNavigationEvent;-><init>(Lo/RealtimeSinceBootClock$onMessageChannelReady;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/setConversationBannerMessage;)V
    .locals 0

    invoke-direct {p0}, Lo/setUserProperties$extraCallback$onMessageChannelReady;-><init>()V

    return-void
.end method
