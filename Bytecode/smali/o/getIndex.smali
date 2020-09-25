.class public interface abstract Lo/getIndex;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J(\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0008\u001a\u00020\tH\'J(\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0008\u001a\u00020\tH\'\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/deviceattributes/AttributeService;",
        "",
        "sendDeviceAttributes",
        "Lcom/dreamplug/network/helper/NetworkCall;",
        "Lcom/dreamplug/androidapp/deviceattributes/DeviceAttrResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "header",
        "",
        "data",
        "Lcom/dreamplug/deviceattributes/models/AttributesClass;",
        "sendDeviceAttributesUnAuth",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# virtual methods
.method public abstract onMessageChannelReady(Ljava/lang/String;Lcom/dreamplug/deviceattributes/models/AttributesClass;)Lo/tryBindViewHolderByDeadline;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/sendCloseHandshake;
            extraCallback = "X-PERMS"
        .end annotation
    .end param
    .param p2    # Lcom/dreamplug/deviceattributes/models/AttributesClass;
        .annotation runtime Lo/setEventHandler;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/dreamplug/deviceattributes/models/AttributesClass;",
            ")",
            "Lo/tryBindViewHolderByDeadline<",
            "Lcom/dreamplug/androidapp/deviceattributes/DeviceAttrResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/getChangedScrapViewForPosition;
    .end annotation

    .annotation runtime Lo/verifyServerHandshakeHeaders;
        extraCallback = "device-service/v1/devices/auth"
    .end annotation
.end method

.method public abstract onNavigationEvent(Ljava/lang/String;Lcom/dreamplug/deviceattributes/models/AttributesClass;)Lo/tryBindViewHolderByDeadline;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/sendCloseHandshake;
            extraCallback = "X-PERMS"
        .end annotation
    .end param
    .param p2    # Lcom/dreamplug/deviceattributes/models/AttributesClass;
        .annotation runtime Lo/setEventHandler;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/dreamplug/deviceattributes/models/AttributesClass;",
            ")",
            "Lo/tryBindViewHolderByDeadline<",
            "Lcom/dreamplug/androidapp/deviceattributes/DeviceAttrResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/getChangedScrapViewForPosition;
    .end annotation

    .annotation runtime Lo/getInnerThread;
        onMessageChannelReady = {
            "NoAuth: true"
        }
    .end annotation

    .annotation runtime Lo/verifyServerHandshakeHeaders;
        extraCallback = "device-service/v1/devices"
    .end annotation
.end method
