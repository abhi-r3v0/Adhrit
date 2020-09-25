.class public final Lo/shouldCollapse;
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
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u001a\u001a\u00020\u001bJ\u0006\u0010\u001c\u001a\u00020\u001bJ*\u0010\u001d\u001a\u00020\u001b2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001f2\u0016\u0008\u0002\u0010 \u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010!H\u0007J\u0006\u0010\"\u001a\u00020\u001bR(\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR \u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u0019\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000eR\u001b\u0010\u0014\u001a\u00020\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006#"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/profile/ProfileDataStore;",
        "",
        "()V",
        "networkCall",
        "Lcom/dreamplug/network/helper/NetworkCall;",
        "Lcom/dreamplug/androidapp/profile/ProfileResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "getNetworkCall",
        "()Lcom/dreamplug/network/helper/NetworkCall;",
        "setNetworkCall",
        "(Lcom/dreamplug/network/helper/NetworkCall;)V",
        "profileData",
        "Landroidx/lifecycle/MutableLiveData;",
        "getProfileData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "setProfileData",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "profilePicUrl",
        "",
        "getProfilePicUrl",
        "profileService",
        "Lcom/dreamplug/androidapp/profile/ProfileService;",
        "getProfileService",
        "()Lcom/dreamplug/androidapp/profile/ProfileService;",
        "profileService$delegate",
        "Lkotlin/Lazy;",
        "cancelFetch",
        "",
        "clear",
        "fetchProfileData",
        "enableFabrik",
        "",
        "callback",
        "Lcom/dreamplug/network/helper/BaseCallback;",
        "getProfileImage",
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
.field public static final ICustomTabsCallback:Lo/shouldCollapse;

.field private static extraCallback:Lo/tryBindViewHolderByDeadline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/tryBindViewHolderByDeadline<",
            "Lcom/dreamplug/androidapp/profile/ProfileResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final onMessageChannelReady:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static onNavigationEvent:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lcom/dreamplug/androidapp/profile/ProfileResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final onPostMessage:Lo/isSameListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lo/shouldCollapse;

    invoke-direct {v0}, Lo/shouldCollapse;-><init>()V

    sput-object v0, Lo/shouldCollapse;->ICustomTabsCallback:Lo/shouldCollapse;

    .line 17
    new-instance v0, Lo/setActive;

    invoke-direct {v0}, Lo/setActive;-><init>()V

    sput-object v0, Lo/shouldCollapse;->onNavigationEvent:Lo/setActive;

    .line 18
    new-instance v0, Lo/setActive;

    invoke-direct {v0}, Lo/setActive;-><init>()V

    sput-object v0, Lo/shouldCollapse;->onMessageChannelReady:Lo/setActive;

    .line 20
    sget-object v0, Lo/shouldCollapse$onNavigationEvent;->onNavigationEvent:Lo/shouldCollapse$onNavigationEvent;

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 20
    sput-object v1, Lo/shouldCollapse;->onPostMessage:Lo/isSameListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback()V
    .locals 2

    .line 85
    sget-object v0, Lo/shouldCollapse;->onMessageChannelReady:Lo/setActive;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method

.method public static ICustomTabsCallback(Lo/tryBindViewHolderByDeadline;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/tryBindViewHolderByDeadline<",
            "Lcom/dreamplug/androidapp/profile/ProfileResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const/4 p0, 0x0

    .line 23
    sput-object p0, Lo/shouldCollapse;->extraCallback:Lo/tryBindViewHolderByDeadline;

    return-void
.end method

.method public static extraCallback()Lo/setActive;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setActive<",
            "Lcom/dreamplug/androidapp/profile/ProfileResponse;",
            ">;"
        }
    .end annotation

    .line 17
    sget-object v0, Lo/shouldCollapse;->onNavigationEvent:Lo/setActive;

    return-object v0
.end method

.method public static onMessageChannelReady()V
    .locals 1

    .line 81
    sget-object v0, Lo/shouldCollapse;->extraCallback:Lo/tryBindViewHolderByDeadline;

    if-eqz v0, :cond_0

    .line 3063
    iget-object v0, v0, Lo/tryBindViewHolderByDeadline;->onMessageChannelReady:Lo/clearScrap;

    invoke-interface {v0}, Lo/clearScrap;->ICustomTabsCallback()V

    :cond_0
    return-void
.end method

.method public static onPostMessage()Lo/setActive;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setActive<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 18
    sget-object v0, Lo/shouldCollapse;->onMessageChannelReady:Lo/setActive;

    return-object v0
.end method

.method public static synthetic onPostMessage(Lo/shouldCollapse;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 25
    invoke-virtual {p0, v0, v1}, Lo/shouldCollapse;->ICustomTabsCallback(ZLo/RecyclerView$Recycler;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(ZLo/RecyclerView$Recycler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lo/RecyclerView$Recycler<",
            "Lcom/dreamplug/androidapp/profile/ProfileResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    .line 1000
    sget-object v0, Lo/shouldCollapse;->onPostMessage:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/layoutChildRight;

    .line 26
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/layoutChildRight;->ICustomTabsCallback(Ljava/lang/Boolean;)Lo/tryBindViewHolderByDeadline;

    move-result-object p1

    .line 27
    sput-object p1, Lo/shouldCollapse;->extraCallback:Lo/tryBindViewHolderByDeadline;

    if-eqz p1, :cond_0

    new-instance v0, Lo/shouldCollapse$onPostMessage;

    invoke-direct {v0, p2}, Lo/shouldCollapse$onPostMessage;-><init>(Lo/RecyclerView$Recycler;)V

    check-cast v0, Lo/RecyclerView$Recycler;

    const-string p2, "getProfile"

    const-string/jumbo v1, "tag"

    invoke-static {p2, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "callback"

    invoke-static {v0, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3044
    iget-object p1, p1, Lo/tryBindViewHolderByDeadline;->onMessageChannelReady:Lo/clearScrap;

    new-instance p2, Lo/tryBindViewHolderByDeadline$ICustomTabsCallback;

    invoke-direct {p2, v0}, Lo/tryBindViewHolderByDeadline$ICustomTabsCallback;-><init>(Lo/RecyclerView$Recycler;)V

    check-cast p2, Lo/getScrapOrCachedViewForId;

    invoke-interface {p1, p2}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    :cond_0
    return-void
.end method
