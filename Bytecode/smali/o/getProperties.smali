.class public interface abstract Lo/getProperties;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getProperties$ICustomTabsCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J@\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u00072\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010\u00072\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0003\u0010\n\u001a\u00020\u0007H\'J(\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0001\u0010\r\u001a\u00020\u000eH\'J\u001e\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\u0010\u001a\u00020\u0011H\'\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/sms/BankSmsService;",
        "",
        "getBankSms",
        "Lcom/dreamplug/network/internals/call/CallRequest;",
        "Lcom/dreamplug/fabrik/ui/sms/BankSmsResponseModel;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "instrumentationId",
        "",
        "channel",
        "month",
        "entityType",
        "sendAck",
        "Ljava/lang/Void;",
        "body",
        "Lcom/dreamplug/fabrik/ui/sms/BankSmsAckRequest;",
        "setSmsConsent",
        "consentRequest",
        "Lcom/dreamplug/fabrik/ui/sms/SmsConsentRequest;",
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
.method public abstract ICustomTabsCallback(Lcom/dreamplug/fabrik/ui/sms/SmsConsentRequest;)Lo/clearScrap;
    .param p1    # Lcom/dreamplug/fabrik/ui/sms/SmsConsentRequest;
        .annotation runtime Lo/setEventHandler;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dreamplug/fabrik/ui/sms/SmsConsentRequest;",
            ")",
            "Lo/clearScrap<",
            "Ljava/lang/Void;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/verifyServerStatusLine;
        onPostMessage = "/concord/internal/v1/consentAttribute/sms"
    .end annotation
.end method

.method public abstract onMessageChannelReady(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/sms/BankSmsAckRequest;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "instrumentation_id"
        .end annotation
    .end param
    .param p2    # Lcom/dreamplug/fabrik/ui/sms/BankSmsAckRequest;
        .annotation runtime Lo/setEventHandler;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/dreamplug/fabrik/ui/sms/BankSmsAckRequest;",
            ")",
            "Lo/clearScrap<",
            "Ljava/lang/Void;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/verifyServerStatusLine;
        onPostMessage = "dagger/v2/bank-sms/acknowledge/{instrumentation_id}"
    .end annotation
.end method

.method public abstract onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "instrumentation_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lo/isText;
            onNavigationEvent = "channel"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lo/isText;
            onNavigationEvent = "month"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lo/isText;
            onNavigationEvent = "entity_type"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/sms/BankSmsResponseModel;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "dagger/v2/bank-sms/{instrumentation_id}"
    .end annotation
.end method
