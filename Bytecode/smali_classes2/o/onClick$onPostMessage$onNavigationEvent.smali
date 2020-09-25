.class public final Lo/onClick$onPostMessage$onNavigationEvent;
.super Lo/RealtimeSinceBootClock$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onClick$onPostMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/RealtimeSinceBootClock$ICustomTabsCallback<",
        "Lo/onClick$onPostMessage;",
        "Lo/onClick$onPostMessage$onNavigationEvent;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lo/onClick$onPostMessage;->ICustomTabsService()Lo/onClick$onPostMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/RealtimeSinceBootClock$ICustomTabsCallback;-><init>(Lo/RealtimeSinceBootClock;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/Freshchat$1$1;)V
    .locals 0

    invoke-direct {p0}, Lo/onClick$onPostMessage$onNavigationEvent;-><init>()V

    return-void
.end method
