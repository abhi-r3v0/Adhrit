.class public final Lo/setUserProperties$warmup$ICustomTabsCallback;
.super Lo/RealtimeSinceBootClock$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setUserProperties$warmup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/RealtimeSinceBootClock$ICustomTabsCallback<",
        "Lo/setUserProperties$warmup;",
        "Lo/setUserProperties$warmup$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lo/setUserProperties$warmup;->extraCallback()Lo/setUserProperties$warmup;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/RealtimeSinceBootClock$ICustomTabsCallback;-><init>(Lo/RealtimeSinceBootClock;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/setConversationBannerMessage;)V
    .locals 0

    invoke-direct {p0}, Lo/setUserProperties$warmup$ICustomTabsCallback;-><init>()V

    return-void
.end method
