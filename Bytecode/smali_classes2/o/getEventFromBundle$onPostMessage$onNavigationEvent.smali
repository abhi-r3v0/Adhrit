.class public final Lo/getEventFromBundle$onPostMessage$onNavigationEvent;
.super Lo/RealtimeSinceBootClock$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getEventFromBundle$onPostMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/RealtimeSinceBootClock$ICustomTabsCallback<",
        "Lo/getEventFromBundle$onPostMessage;",
        "Lo/getEventFromBundle$onPostMessage$onNavigationEvent;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lo/getEventFromBundle$onPostMessage;->extraCallback()Lo/getEventFromBundle$onPostMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/RealtimeSinceBootClock$ICustomTabsCallback;-><init>(Lo/RealtimeSinceBootClock;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/FreshchatActionListener;)V
    .locals 0

    invoke-direct {p0}, Lo/getEventFromBundle$onPostMessage$onNavigationEvent;-><init>()V

    return-void
.end method
