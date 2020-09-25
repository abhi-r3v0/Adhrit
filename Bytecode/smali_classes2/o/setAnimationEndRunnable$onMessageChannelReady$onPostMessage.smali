.class public final Lo/setAnimationEndRunnable$onMessageChannelReady$onPostMessage;
.super Lo/RealtimeSinceBootClock$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setAnimationEndRunnable$onMessageChannelReady;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/RealtimeSinceBootClock$ICustomTabsCallback<",
        "Lo/setAnimationEndRunnable$onMessageChannelReady;",
        "Lo/setAnimationEndRunnable$onMessageChannelReady$onPostMessage;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lo/setAnimationEndRunnable$onMessageChannelReady;->extraCallback()Lo/setAnimationEndRunnable$onMessageChannelReady;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/RealtimeSinceBootClock$ICustomTabsCallback;-><init>(Lo/RealtimeSinceBootClock;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/ErrorView$show$1$onAnimationEnd$1$$special$$inlined$executeOnResume$1;)V
    .locals 0

    invoke-direct {p0}, Lo/setAnimationEndRunnable$onMessageChannelReady$onPostMessage;-><init>()V

    return-void
.end method
