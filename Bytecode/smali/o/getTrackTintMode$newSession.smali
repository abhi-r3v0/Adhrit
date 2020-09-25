.class final Lo/getTrackTintMode$newSession;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;
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

.field private synthetic onMessageChannelReady:Ljava/util/Map;

.field private synthetic onNavigationEvent:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lo/getTrackTintMode$newSession;->ICustomTabsCallback:Ljava/util/Map;

    iput-object p2, p0, Lo/getTrackTintMode$newSession;->onNavigationEvent:Ljava/lang/String;

    iput-object p3, p0, Lo/getTrackTintMode$newSession;->onMessageChannelReady:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 143
    sget-object v0, Lo/getTrackTintMode;->onMessageChannelReady:Lo/getTrackTintMode;

    iget-object v0, p0, Lo/getTrackTintMode$newSession;->ICustomTabsCallback:Ljava/util/Map;

    invoke-static {v0}, Lo/getTrackTintMode;->extraCallback(Ljava/util/Map;)Ljava/util/Map;

    .line 144
    sget-object v0, Lo/getTrackTintMode;->onMessageChannelReady:Lo/getTrackTintMode;

    invoke-static {v0}, Lo/getTrackTintMode;->ICustomTabsCallback(Lo/getTrackTintMode;)Lo/Settings;

    move-result-object v0

    iget-object v1, p0, Lo/getTrackTintMode$newSession;->onNavigationEvent:Ljava/lang/String;

    iget-object v2, p0, Lo/getTrackTintMode$newSession;->onMessageChannelReady:Ljava/util/Map;

    .line 2350
    iget-object v3, v0, Lo/Settings;->asInterface:Lo/AppSpiCall;

    iget-object v4, v0, Lo/Settings;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lo/AppSpiCall;->newSession(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 1807
    invoke-virtual {v0, v1, v2}, Lo/Settings;->extraCallback(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 1810
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v3}, Lo/Settings;->extraCallback(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "MixpanelAPI.API"

    const-string v1, "Can\'t have null keys in the properties of trackMap!"

    .line 1812
    invoke-static {v0, v1}, Lo/TrimmedThrowableData;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_1
    :goto_0
    sget-object v0, Lo/getParentFragment;->onPostMessage:Lo/getParentFragment;

    iget-object v0, p0, Lo/getTrackTintMode$newSession;->onNavigationEvent:Ljava/lang/String;

    iget-object v1, p0, Lo/getTrackTintMode$newSession;->onMessageChannelReady:Ljava/util/Map;

    invoke-static {v0, v1}, Lo/getParentFragment;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    .line 146
    sget-object v0, Lo/openOptionsMenu;->onMessageChannelReady:Lo/openOptionsMenu;

    iget-object v0, p0, Lo/getTrackTintMode$newSession;->onNavigationEvent:Ljava/lang/String;

    iget-object v1, p0, Lo/getTrackTintMode$newSession;->onMessageChannelReady:Ljava/util/Map;

    invoke-static {v0, v1}, Lo/openOptionsMenu;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
