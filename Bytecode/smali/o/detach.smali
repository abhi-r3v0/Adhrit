.class public interface abstract Lo/detach;
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
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J,\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00032\u0016\u0008\u0001\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0007H\'J,\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00032\u0016\u0008\u0001\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0007H\'\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/whatsapp/WhatsappService;",
        "",
        "generateOtp",
        "Lcom/dreamplug/network/internals/call/CallRequest;",
        "Lcom/dreamplug/androidapp/login/model/OtpGenerateResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "data",
        "",
        "",
        "updateSecondaryPhone",
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
.method public abstract onMessageChannelReady(Ljava/util/Map;)Lo/clearScrap;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lo/setEventHandler;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lo/clearScrap<",
            "Lcom/dreamplug/androidapp/login/model/OtpGenerateResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/verifyServerStatusLine;
        onPostMessage = "otp/v2/generate-otp"
    .end annotation
.end method

.method public abstract onPostMessage(Ljava/util/Map;)Lo/clearScrap;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lo/setEventHandler;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lo/clearScrap<",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/verifyServerStatusLine;
        onPostMessage = "aggregator/v1/secondary-phone-number"
    .end annotation
.end method
