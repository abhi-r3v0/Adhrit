.class final Lo/getTrackTintMode$ICustomTabsService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getTrackTintMode;->onNavigationEvent(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lo/getTrackTintMode$ICustomTabsService;->ICustomTabsCallback:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 283
    sget-object v0, Lo/openOptionsMenu;->onMessageChannelReady:Lo/openOptionsMenu;

    iget-object v0, p0, Lo/getTrackTintMode$ICustomTabsService;->ICustomTabsCallback:Ljava/util/Map;

    invoke-static {v0}, Lo/openOptionsMenu;->extraCallback(Ljava/util/Map;)V

    .line 284
    sget-object v0, Lo/getTrackTintMode;->onMessageChannelReady:Lo/getTrackTintMode;

    invoke-static {v0}, Lo/getTrackTintMode;->ICustomTabsCallback(Lo/getTrackTintMode;)Lo/Settings;

    move-result-object v0

    iget-object v1, p0, Lo/getTrackTintMode$ICustomTabsService;->ICustomTabsCallback:Ljava/util/Map;

    .line 2350
    iget-object v2, v0, Lo/Settings;->asInterface:Lo/AppSpiCall;

    iget-object v3, v0, Lo/Settings;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lo/AppSpiCall;->newSession(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "MixpanelAPI.API"

    if-nez v1, :cond_0

    const-string v0, "registerSuperPropertiesMap does not accept null properties"

    .line 1970
    invoke-static {v2, v0}, Lo/TrimmedThrowableData;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1975
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v3}, Lo/Settings;->onNavigationEvent(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Can\'t have null keys in the properties of registerSuperPropertiesMap"

    .line 1977
    invoke-static {v2, v0}, Lo/TrimmedThrowableData;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :cond_1
    :goto_0
    sget-object v0, Lo/getParentFragment;->onPostMessage:Lo/getParentFragment;

    iget-object v0, p0, Lo/getTrackTintMode$ICustomTabsService;->ICustomTabsCallback:Ljava/util/Map;

    invoke-static {v0}, Lo/getParentFragment;->extraCallback(Ljava/util/Map;)V

    return-void
.end method
