.class public interface abstract Lo/performClickableSpanAction;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/performClickableSpanAction$onMessageChannelReady;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J(\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0008H\'J2\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0003\u0010\n\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0008H\'\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/dreamplug/batcher/network/BatcherNetworkService;",
        "",
        "postData",
        "Lcom/dreamplug/network/internals/call/CallRequest;",
        "Ljava/lang/Void;",
        "url",
        "",
        "data",
        "Lokhttp3/RequestBody;",
        "postDataCompressed",
        "header2",
        "batcher_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# virtual methods
.method public abstract onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Lo/isCompleteForPath;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/sendCloseHandshake;
            extraCallback = "Content-Encoding"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lo/getBytes;
        .end annotation
    .end param
    .param p3    # Lo/isCompleteForPath;
        .annotation runtime Lo/setEventHandler;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lo/isCompleteForPath;",
            ")",
            "Lo/clearScrap<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/verifyServerStatusLine;
    .end annotation
.end method

.method public abstract onPostMessage(Ljava/lang/String;Lo/isCompleteForPath;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/getBytes;
        .end annotation
    .end param
    .param p2    # Lo/isCompleteForPath;
        .annotation runtime Lo/setEventHandler;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/isCompleteForPath;",
            ")",
            "Lo/clearScrap<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/verifyServerStatusLine;
    .end annotation
.end method
