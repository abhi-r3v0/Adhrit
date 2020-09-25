.class public final Lo/animateThumbToCheckedState$onTransact;
.super Lo/setActive;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/animateThumbToCheckedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setActive<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0004H\u0014\u00a8\u0006\u0005"
    }
    d2 = {
        "com/dreamplug/androidapp/data/repository/maintainence/MaintenanceManager$underMaintenanceTimeState$1",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "onActive",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lo/setActive;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage()V
    .locals 3

    .line 21
    invoke-super {p0}, Lo/setActive;->onPostMessage()V

    .line 22
    sget-object v0, Lo/animateThumbToCheckedState;->extraCallback:Lo/animateThumbToCheckedState;

    invoke-static {}, Lo/animateThumbToCheckedState;->onPostMessage()V

    .line 23
    sget-object v0, Lo/getTrackTintMode;->onMessageChannelReady:Lo/getTrackTintMode;

    sget-object v0, Lo/animateThumbToCheckedState$onTransact$onMessageChannelReady;->extraCallback:Lo/animateThumbToCheckedState$onTransact$onMessageChannelReady;

    check-cast v0, Lo/getServerTime;

    const-string v1, "block"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1326
    new-instance v1, Lo/getTrackTintMode$onPostMessage;

    invoke-direct {v1, v0}, Lo/getTrackTintMode$onPostMessage;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/SettingsRequest;

    .line 1327
    sget-object v2, Lo/getTrackTintMode;->onNavigationEvent:Ljava/util/HashMap;

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2000
    sget-object v0, Lo/getTrackTintMode;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Settings;

    .line 2206
    iget-object v0, v0, Lo/Settings;->ICustomTabsCallback:Lo/Settings$extraCallback;

    .line 1328
    invoke-interface {v0, v1}, Lo/Settings$onMessageChannelReady;->ICustomTabsCallback(Lo/SettingsRequest;)V

    return-void
.end method
