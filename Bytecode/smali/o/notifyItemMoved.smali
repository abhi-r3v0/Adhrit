.class public final Lo/notifyItemMoved;
.super Lo/MediaControllerCompat$TransportControlsApi24;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/notifyItemMoved$onMessageChannelReady;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001#B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0019\u001a\u00020\u001aJ\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001cJ\u0014\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001c2\u0006\u0010\u001f\u001a\u00020\u000cJ\u000e\u0010 \u001a\u00020\u001a2\u0006\u0010!\u001a\u00020\"R\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0019\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u00a2\u0006\n\n\u0002\u0010\u000f\u001a\u0004\u0008\r\u0010\u000eR\u001b\u0010\u0010\u001a\u00020\u00118BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0012\u0010\u0013R\u0017\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\t\u00a8\u0006$"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/main/ProfilePicViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "application",
        "Landroid/app/Application;",
        "(Landroid/app/Application;)V",
        "loaderLiveData",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/dreamplug/fabrik/ui/main/ProfilePicViewModel$LoaderStatus;",
        "getLoaderLiveData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "profileAvators",
        "",
        "",
        "getProfileAvators",
        "()[Ljava/lang/Integer;",
        "[Ljava/lang/Integer;",
        "profileService",
        "Lcom/dreamplug/androidapp/profile/ProfileService;",
        "getProfileService",
        "()Lcom/dreamplug/androidapp/profile/ProfileService;",
        "profileService$delegate",
        "Lkotlin/Lazy;",
        "profileUploadResult",
        "",
        "getProfileUploadResult",
        "deleteProfliePic",
        "",
        "getAvatarList",
        "",
        "Lcom/dreamplug/fabrik/ui/main/ProfileAvatorItem;",
        "getSelectedAvatarList",
        "index",
        "uploadProfilePic",
        "fileUrl",
        "",
        "LoaderStatus",
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
.field final ICustomTabsCallback:[Ljava/lang/Integer;

.field final extraCallback:Lo/isSameListener;

.field final onMessageChannelReady:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final onNavigationEvent:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lo/notifyItemMoved$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 2

    const-string v0, "application"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1}, Lo/MediaControllerCompat$TransportControlsApi24;-><init>(Landroid/app/Application;)V

    .line 26
    new-instance p1, Lo/setActive;

    invoke-direct {p1}, Lo/setActive;-><init>()V

    iput-object p1, p0, Lo/notifyItemMoved;->onMessageChannelReady:Lo/setActive;

    .line 27
    new-instance p1, Lo/setActive;

    invoke-direct {p1}, Lo/setActive;-><init>()V

    iput-object p1, p0, Lo/notifyItemMoved;->onNavigationEvent:Lo/setActive;

    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Integer;

    const v0, 0x7f080416

    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const v0, 0x7f080418

    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    const v0, 0x7f080419

    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p1, v1

    const v0, 0x7f08041a

    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p1, v1

    const v0, 0x7f08041b

    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, p1, v1

    const v0, 0x7f08041c

    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, p1, v1

    const v0, 0x7f08041d

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, p1, v1

    const v0, 0x7f08041e

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, p1, v1

    const v0, 0x7f08041f

    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x8

    aput-object v0, p1, v1

    const v0, 0x7f080417

    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x9

    aput-object v0, p1, v1

    .line 29
    iput-object p1, p0, Lo/notifyItemMoved;->ICustomTabsCallback:[Ljava/lang/Integer;

    .line 39
    sget-object p1, Lo/notifyItemMoved$onNavigationEvent;->onNavigationEvent:Lo/notifyItemMoved$onNavigationEvent;

    check-cast p1, Lo/getServerTime;

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4021
    new-instance v0, Lo/fromChildMerge;

    invoke-direct {v0, p1}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v0, Lo/isSameListener;

    .line 39
    iput-object v0, p0, Lo/notifyItemMoved;->extraCallback:Lo/isSameListener;

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;)V
    .locals 4

    const-string v0, "fileUrl"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lo/notifyItemMoved;->onNavigationEvent:Lo/setActive;

    new-instance v1, Lo/notifyItemMoved$onMessageChannelReady;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lo/notifyItemMoved$onMessageChannelReady;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 65
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "text/plain"

    .line 66
    invoke-static {p1}, Lo/isFiltered;->ICustomTabsCallback(Ljava/lang/String;)Lo/isFiltered;

    move-result-object v1

    const-string v2, "profilepic1234"

    invoke-static {v1, v2}, Lo/isCompleteForPath;->extraCallback(Lo/isFiltered;Ljava/lang/String;)Lo/isCompleteForPath;

    move-result-object v1

    .line 67
    invoke-static {p1}, Lo/isFiltered;->ICustomTabsCallback(Ljava/lang/String;)Lo/isFiltered;

    move-result-object p1

    const-string v2, "image/jpeg"

    invoke-static {p1, v2}, Lo/isCompleteForPath;->extraCallback(Lo/isFiltered;Ljava/lang/String;)Lo/isCompleteForPath;

    move-result-object p1

    .line 70
    invoke-static {v2}, Lo/isFiltered;->ICustomTabsCallback(Ljava/lang/String;)Lo/isFiltered;

    move-result-object v2

    .line 69
    invoke-static {v2, v0}, Lo/isCompleteForPath;->onPostMessage(Lo/isFiltered;Ljava/io/File;)Lo/isCompleteForPath;

    move-result-object v2

    .line 73
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "file"

    invoke-static {v3, v0, v2}, Lo/serializedName$ICustomTabsCallback;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Lo/isCompleteForPath;)Lo/serializedName$ICustomTabsCallback;

    move-result-object v0

    .line 1000
    iget-object v3, p0, Lo/notifyItemMoved;->extraCallback:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/layoutChildRight;

    .line 74
    invoke-interface {v3, v2, v0, v1, p1}, Lo/layoutChildRight;->onPostMessage(Lo/isCompleteForPath;Lo/serializedName$ICustomTabsCallback;Lo/isCompleteForPath;Lo/isCompleteForPath;)Lo/tryBindViewHolderByDeadline;

    move-result-object p1

    new-instance v0, Lo/notifyItemMoved$onPostMessage;

    invoke-direct {v0, p0}, Lo/notifyItemMoved$onPostMessage;-><init>(Lo/notifyItemMoved;)V

    check-cast v0, Lo/RecyclerView$Recycler;

    const-string v1, "profliePicUpload"

    const-string/jumbo v2, "tag"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "callback"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3044
    iget-object p1, p1, Lo/tryBindViewHolderByDeadline;->onMessageChannelReady:Lo/clearScrap;

    new-instance v1, Lo/tryBindViewHolderByDeadline$ICustomTabsCallback;

    invoke-direct {v1, v0}, Lo/tryBindViewHolderByDeadline$ICustomTabsCallback;-><init>(Lo/RecyclerView$Recycler;)V

    check-cast v1, Lo/getScrapOrCachedViewForId;

    invoke-interface {p1, v1}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    return-void
.end method
