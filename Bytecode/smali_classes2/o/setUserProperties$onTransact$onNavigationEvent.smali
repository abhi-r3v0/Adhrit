.class public final Lo/setUserProperties$onTransact$onNavigationEvent;
.super Lo/RealtimeSinceBootClock$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setUserProperties$onTransact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/RealtimeSinceBootClock$ICustomTabsCallback<",
        "Lo/setUserProperties$onTransact;",
        "Lo/setUserProperties$onTransact$onNavigationEvent;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lo/setUserProperties$onTransact;->extraCallback()Lo/setUserProperties$onTransact;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/RealtimeSinceBootClock$ICustomTabsCallback;-><init>(Lo/RealtimeSinceBootClock;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/setConversationBannerMessage;)V
    .locals 0

    invoke-direct {p0}, Lo/setUserProperties$onTransact$onNavigationEvent;-><init>()V

    return-void
.end method
