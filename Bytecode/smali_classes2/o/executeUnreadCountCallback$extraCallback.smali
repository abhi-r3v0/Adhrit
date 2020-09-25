.class public final Lo/executeUnreadCountCallback$extraCallback;
.super Lo/RealtimeSinceBootClock$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/executeUnreadCountCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/RealtimeSinceBootClock$onNavigationEvent<",
        "Lo/executeUnreadCountCallback;",
        "Lo/executeUnreadCountCallback$extraCallback;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lo/executeUnreadCountCallback;->newSession()Lo/executeUnreadCountCallback;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/RealtimeSinceBootClock$onNavigationEvent;-><init>(Lo/RealtimeSinceBootClock$onMessageChannelReady;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/getUnreadCountAsync;)V
    .locals 0

    invoke-direct {p0}, Lo/executeUnreadCountCallback$extraCallback;-><init>()V

    return-void
.end method
