.class public final Lo/setUserProperties$requestPostMessageChannel$onPostMessage;
.super Lo/RealtimeSinceBootClock$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setUserProperties$requestPostMessageChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/RealtimeSinceBootClock$ICustomTabsCallback<",
        "Lo/setUserProperties$requestPostMessageChannel;",
        "Lo/setUserProperties$requestPostMessageChannel$onPostMessage;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lo/setUserProperties$requestPostMessageChannel;->extraCallback()Lo/setUserProperties$requestPostMessageChannel;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/RealtimeSinceBootClock$ICustomTabsCallback;-><init>(Lo/RealtimeSinceBootClock;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/setConversationBannerMessage;)V
    .locals 0

    invoke-direct {p0}, Lo/setUserProperties$requestPostMessageChannel$onPostMessage;-><init>()V

    return-void
.end method
