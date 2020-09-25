.class final Lo/updateVisuals;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/updateVisuals$onNavigationEvent;
    }
.end annotation


# static fields
.field static onPostMessage:Lo/updateVisuals;


# instance fields
.field final ICustomTabsCallback:Lo/updateVisuals$onNavigationEvent;

.field final extraCallback:Landroid/content/Context;

.field private final onMessageChannelReady:Landroid/location/LocationManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lo/updateVisuals$onNavigationEvent;

    invoke-direct {v0}, Lo/updateVisuals$onNavigationEvent;-><init>()V

    iput-object v0, p0, Lo/updateVisuals;->ICustomTabsCallback:Lo/updateVisuals$onNavigationEvent;

    .line 70
    iput-object p1, p0, Lo/updateVisuals;->extraCallback:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lo/updateVisuals;->onMessageChannelReady:Landroid/location/LocationManager;

    return-void
.end method


# virtual methods
.method final extraCallback(Ljava/lang/String;)Landroid/location/Location;
    .locals 2

    .line 134
    :try_start_0
    iget-object v0, p0, Lo/updateVisuals;->onMessageChannelReady:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lo/updateVisuals;->onMessageChannelReady:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "TwilightManager"

    const-string v1, "Failed to get last known location"

    .line 138
    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
