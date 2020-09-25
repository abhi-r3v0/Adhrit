.class public final Lo/getDimension;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getArguments;


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/deviceattributes/OnDeviceAttrsReadyImpl;",
        "Lcom/dreamplug/deviceattributes/OnDeviceAttributesReady;",
        "()V",
        "onReady",
        "",
        "attributesClass",
        "Lcom/dreamplug/deviceattributes/models/AttributesClass;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final extraCallback:Lo/getDimension;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lo/getDimension;

    invoke-direct {v0}, Lo/getDimension;-><init>()V

    sput-object v0, Lo/getDimension;->extraCallback:Lo/getDimension;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lcom/dreamplug/deviceattributes/models/AttributesClass;)V
    .locals 5

    const-string v0, "attributesClass"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1019
    sget-object v0, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    const-class v0, Lo/getIndex;

    invoke-static {v0}, Lo/factorInBindTime;->onPostMessage(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getIndex;

    .line 1024
    sget-object v1, Lo/getTrackTintList;->extraCallback:Lo/getTrackTintList;

    invoke-static {}, Lo/getTrackTintList;->mayLaunchUrl()Ljava/lang/String;

    move-result-object v1

    .line 1025
    sget-object v2, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 2000
    sget-object v2, Lo/setTrackTintMode;->extraCommand:Lo/setTitleTextColor;

    sget-object v3, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v4, 0x11

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1026
    invoke-interface {v0, v1, p1}, Lo/getIndex;->onMessageChannelReady(Ljava/lang/String;Lcom/dreamplug/deviceattributes/models/AttributesClass;)Lo/tryBindViewHolderByDeadline;

    move-result-object p1

    goto :goto_0

    .line 1028
    :cond_0
    invoke-interface {v0, v1, p1}, Lo/getIndex;->onNavigationEvent(Ljava/lang/String;Lcom/dreamplug/deviceattributes/models/AttributesClass;)Lo/tryBindViewHolderByDeadline;

    move-result-object p1

    .line 1031
    :goto_0
    new-instance v0, Lo/getBoolean$5;

    invoke-direct {v0}, Lo/getBoolean$5;-><init>()V

    const-string v1, "DeviceAttributesRegisterCommand"

    const-string/jumbo v2, "tag"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "callback"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4044
    iget-object p1, p1, Lo/tryBindViewHolderByDeadline;->onMessageChannelReady:Lo/clearScrap;

    new-instance v1, Lo/tryBindViewHolderByDeadline$ICustomTabsCallback;

    invoke-direct {v1, v0}, Lo/tryBindViewHolderByDeadline$ICustomTabsCallback;-><init>(Lo/RecyclerView$Recycler;)V

    check-cast v1, Lo/getScrapOrCachedViewForId;

    invoke-interface {p1, v1}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    .line 15
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object p1

    sget-object v0, Lo/initLifecycle;->ICustomTabsCallback:Lo/initLifecycle;

    .line 4211
    iget-object v0, v0, Lo/initLifecycle;->onPostMessage:Lcom/dreamplug/deviceattributes/DeviceFingerPrint;

    .line 15
    iget-object v0, v0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->imei:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/appsflyer/AppsFlyerLib;->setImeiData(Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object p1

    sget-object v0, Lo/initLifecycle;->ICustomTabsCallback:Lo/initLifecycle;

    .line 5211
    iget-object v0, v0, Lo/initLifecycle;->onPostMessage:Lcom/dreamplug/deviceattributes/DeviceFingerPrint;

    const-string v1, "DeviceAttributes.INSTANCE.deviceFingerPrint"

    .line 16
    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/appsflyer/AppsFlyerLib;->setAndroidIdData(Ljava/lang/String;)V

    .line 17
    sget-object p1, Lo/getTrackTintMode;->onMessageChannelReady:Lo/getTrackTintMode;

    invoke-static {p1}, Lo/getTrackTintMode;->onNavigationEvent(Lo/getTrackTintMode;)V

    return-void
.end method
