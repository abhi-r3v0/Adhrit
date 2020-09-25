.class public final Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy$extraCallback;
.super Lo/RealtimeSinceBootClock$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/RealtimeSinceBootClock$onNavigationEvent<",
        "Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy;",
        "Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy$extraCallback;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy;->extraCallback()Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/RealtimeSinceBootClock$onNavigationEvent;-><init>(Lo/RealtimeSinceBootClock$onMessageChannelReady;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/setConversationBannerMessage;)V
    .locals 0

    invoke-direct {p0}, Lo/setUserProperties$ICustomTabsCallback$Stub$Proxy$extraCallback;-><init>()V

    return-void
.end method
