.class public final Lo/setUserProperties$ICustomTabsService$Stub$Proxy$onMessageChannelReady;
.super Lo/RealtimeSinceBootClock$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setUserProperties$ICustomTabsService$Stub$Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/RealtimeSinceBootClock$ICustomTabsCallback<",
        "Lo/setUserProperties$ICustomTabsService$Stub$Proxy;",
        "Lo/setUserProperties$ICustomTabsService$Stub$Proxy$onMessageChannelReady;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lo/setUserProperties$ICustomTabsService$Stub$Proxy;->extraCallback()Lo/setUserProperties$ICustomTabsService$Stub$Proxy;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/RealtimeSinceBootClock$ICustomTabsCallback;-><init>(Lo/RealtimeSinceBootClock;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/setConversationBannerMessage;)V
    .locals 0

    invoke-direct {p0}, Lo/setUserProperties$ICustomTabsService$Stub$Proxy$onMessageChannelReady;-><init>()V

    return-void
.end method
