.class public interface abstract Lo/findMatchingItem;
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
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J.\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u00072\u000e\u0008\u0001\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\'\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/fileUpload/FileUploadService;",
        "",
        "uploadFiles",
        "Lcom/dreamplug/network/internals/call/CallRequest;",
        "Ljava/lang/Void;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "uploadUrl",
        "",
        "body",
        "",
        "Lokhttp3/MultipartBody$Part;",
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
.method public abstract ICustomTabsCallback(Ljava/lang/String;Ljava/util/List;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/getBytes;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Lo/rand;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lo/serializedName$ICustomTabsCallback;",
            ">;)",
            "Lo/clearScrap<",
            "Ljava/lang/Void;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/getHandshake;
    .end annotation

    .annotation runtime Lo/verifyServerStatusLine;
    .end annotation
.end method
