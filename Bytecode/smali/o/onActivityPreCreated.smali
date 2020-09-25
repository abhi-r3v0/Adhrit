.class public interface abstract Lo/onActivityPreCreated;
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
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J$\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00032\u000e\u0008\u0001\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\'J\u0014\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0003H\'J2\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0001\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0001\u0010\u0010\u001a\u00020\u000fH\'\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/contacts/helper/ContactBookService;",
        "",
        "deltaSync",
        "Lcom/dreamplug/network/internals/call/CallRequest;",
        "Lcom/dreamplug/fabrik/ui/contacts/helper/ContactSyncResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "contacts",
        "",
        "Lcom/dreamplug/fabrik/ui/contacts/helper/Contact;",
        "flush",
        "requestSync",
        "Lcom/dreamplug/fabrik/ui/contacts/helper/ContactReverseSyncResponse;",
        "lastSync",
        "",
        "perPage",
        "",
        "page",
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
.method public abstract onMessageChannelReady(Ljava/util/List;)Lo/clearScrap;
    .param p1    # Ljava/util/List;
        .annotation runtime Lo/setEventHandler;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/contacts/helper/Contact;",
            ">;)",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/contacts/helper/ContactSyncResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/verifyServerStatusLine;
        onPostMessage = "/referral-service/v1/contacts/sync"
    .end annotation
.end method

.method public abstract onPostMessage()Lo/clearScrap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/clearScrap<",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/verifyServerHandshakeHeaders;
        extraCallback = "/referral-service/v1/contacts/flush"
    .end annotation
.end method

.method public abstract onPostMessage(JII)Lo/clearScrap;
    .param p1    # J
        .annotation runtime Lo/isText;
            onNavigationEvent = "last_sync_time"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lo/isText;
            onNavigationEvent = "per_page"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lo/isText;
            onNavigationEvent = "page_no"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII)",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/contacts/helper/ContactReverseSyncResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/referral-service/v1/contacts/reverse-sync"
    .end annotation
.end method
