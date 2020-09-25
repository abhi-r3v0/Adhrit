.class public final Lo/cB$ICustomTabsCallback$onMessageChannelReady;
.super Lo/fa$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cB$ICustomTabsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fa$onNavigationEvent<",
        "Lo/cB$ICustomTabsCallback;",
        "Lo/cB$ICustomTabsCallback$onMessageChannelReady;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lo/cB$ICustomTabsCallback;->warmup()Lo/cB$ICustomTabsCallback;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fa$onNavigationEvent;-><init>(Lo/fa;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/f$a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lo/cB$ICustomTabsCallback$onMessageChannelReady;-><init>()V

    return-void
.end method
