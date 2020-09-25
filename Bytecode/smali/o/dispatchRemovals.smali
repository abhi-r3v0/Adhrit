.class public final Lo/dispatchRemovals;
.super Lo/MediaControllerCompat$TransportControlsApi24;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/dispatchRemovals$onNavigationEvent;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u0001+B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&H\u0002J\u000e\u0010\'\u001a\u00020\"2\u0006\u0010(\u001a\u00020\u0008J\u000e\u0010)\u001a\u00020\"2\u0006\u0010(\u001a\u00020\u0008J\u0006\u0010*\u001a\u00020\"R\u001a\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001d\u0010\u000f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u00108F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u001c\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0017\u001a\u00020\u00188BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u0019\u0010\u001aR\u0017\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 \u00a8\u0006,"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/fileUpload/FileUploadViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "application",
        "Landroid/app/Application;",
        "(Landroid/app/Application;)V",
        "_selectedFilesList",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "Lcom/dreamplug/utils/list/ListItem;",
        "fileUploadConfig",
        "Lcom/dreamplug/fabrik/ui/fileUpload/FileUploadConfig;",
        "getFileUploadConfig",
        "()Lcom/dreamplug/fabrik/ui/fileUpload/FileUploadConfig;",
        "setFileUploadConfig",
        "(Lcom/dreamplug/fabrik/ui/fileUpload/FileUploadConfig;)V",
        "selectedFilesList",
        "Landroidx/lifecycle/LiveData;",
        "getSelectedFilesList",
        "()Landroidx/lifecycle/LiveData;",
        "uploadFilesCallRequest",
        "Lcom/dreamplug/network/internals/call/CallRequest;",
        "Ljava/lang/Void;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "uploadService",
        "Lcom/dreamplug/fabrik/ui/fileUpload/FileUploadService;",
        "getUploadService",
        "()Lcom/dreamplug/fabrik/ui/fileUpload/FileUploadService;",
        "uploadService$delegate",
        "Lkotlin/Lazy;",
        "uploadStatusLiveData",
        "Lcom/dreamplug/fabrik/ui/fileUpload/FileUploadViewModel$UploadStatus;",
        "getUploadStatusLiveData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "addFileFormData",
        "",
        "fileModel",
        "Lcom/dreamplug/fabrik/ui/fileUpload/FileUploadDisplayModel;",
        "partBuilder",
        "Lokhttp3/MultipartBody$Builder;",
        "addFileToList",
        "item",
        "removeFileFromList",
        "uploadFiles",
        "UploadStatus",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Ljava/util/List<",
            "Lo/StaggeredGridLayoutManager;",
            ">;>;"
        }
    .end annotation
.end field

.field ICustomTabsCallback$Stub:Lo/clearScrap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/clearScrap<",
            "Ljava/lang/Void;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation
.end field

.field final extraCallback:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lo/dispatchRemovals$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field

.field final onMessageChannelReady:Lo/isSameListener;

.field onNavigationEvent:Lcom/dreamplug/fabrik/ui/fileUpload/FileUploadConfig;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1}, Lo/MediaControllerCompat$TransportControlsApi24;-><init>(Landroid/app/Application;)V

    .line 29
    new-instance p1, Lo/setActive;

    invoke-direct {p1}, Lo/setActive;-><init>()V

    iput-object p1, p0, Lo/dispatchRemovals;->extraCallback:Lo/setActive;

    .line 36
    new-instance p1, Lo/setActive;

    invoke-direct {p1}, Lo/setActive;-><init>()V

    iput-object p1, p0, Lo/dispatchRemovals;->ICustomTabsCallback:Lo/setActive;

    .line 38
    sget-object p1, Lo/dispatchRemovals$onPostMessage;->onMessageChannelReady:Lo/dispatchRemovals$onPostMessage;

    check-cast p1, Lo/getServerTime;

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    new-instance v0, Lo/fromChildMerge;

    invoke-direct {v0, p1}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v0, Lo/isSameListener;

    .line 38
    iput-object v0, p0, Lo/dispatchRemovals;->onMessageChannelReady:Lo/isSameListener;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/dispatchRemovals;)Lo/clearScrap;
    .locals 0

    .line 25
    iget-object p0, p0, Lo/dispatchRemovals;->ICustomTabsCallback$Stub:Lo/clearScrap;

    return-object p0
.end method
