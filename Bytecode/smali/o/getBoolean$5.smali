.class final Lo/getBoolean$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RecyclerView$Recycler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getBoolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/RecyclerView$Recycler<",
        "Lcom/dreamplug/androidapp/deviceattributes/DeviceAttrResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 0

    .line 1035
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)V
    .locals 4

    .line 31
    check-cast p1, Lcom/dreamplug/androidapp/deviceattributes/DeviceAttrResponse;

    .line 1041
    sget-object v0, Lo/initLifecycle;->ICustomTabsCallback:Lo/initLifecycle;

    invoke-virtual {p1}, Lcom/dreamplug/androidapp/deviceattributes/DeviceAttrResponse;->getApplication_external_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dreamplug/androidapp/deviceattributes/DeviceAttrResponse;->getDevice_external_id()Ljava/lang/String;

    move-result-object v2

    const-string v3, "APP_EXTERNAL_ID"

    .line 1216
    invoke-virtual {v0, v3, v1}, Lo/initLifecycle;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DEVICE_EXTERNAL_ID"

    .line 1217
    invoke-virtual {v0, v1, v2}, Lo/initLifecycle;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dreamplug/androidapp/deviceattributes/DeviceAttrResponse;->getDevice_external_id()Ljava/lang/String;

    move-result-object p1

    const-string v1, "device_id"

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCustomKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
