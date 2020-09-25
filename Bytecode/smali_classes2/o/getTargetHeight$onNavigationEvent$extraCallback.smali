.class public final Lo/getTargetHeight$onNavigationEvent$extraCallback;
.super Lo/RealtimeSinceBootClock$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getTargetHeight$onNavigationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/RealtimeSinceBootClock$ICustomTabsCallback<",
        "Lo/getTargetHeight$onNavigationEvent;",
        "Lo/getTargetHeight$onNavigationEvent$extraCallback;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lo/getTargetHeight$onNavigationEvent;->extraCallback()Lo/getTargetHeight$onNavigationEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/RealtimeSinceBootClock$ICustomTabsCallback;-><init>(Lo/RealtimeSinceBootClock;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/FreshchatImageLoaderRequest;)V
    .locals 0

    invoke-direct {p0}, Lo/getTargetHeight$onNavigationEvent$extraCallback;-><init>()V

    return-void
.end method
