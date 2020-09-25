.class public final Lo/onActivityPostCreated;
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
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0013J\u0010\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u0012\u0010\u0015\u001a\u00020\u00042\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017J\u0010\u0010\u0018\u001a\u00020\u00102\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0019J\u000e\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u0004J\u0016\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u0012\u001a\u00020\u001eR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000c\u001a\u0012\u0012\u0004\u0012\u00020\u00040\rj\u0008\u0012\u0004\u0012\u00020\u0004`\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/contacts/manager/ContactBookManager;",
        "",
        "()V",
        "batchSize",
        "",
        "contactService",
        "Lcom/dreamplug/fabrik/ui/contacts/helper/ContactBookService;",
        "getContactService",
        "()Lcom/dreamplug/fabrik/ui/contacts/helper/ContactBookService;",
        "contactService$delegate",
        "Lkotlin/Lazy;",
        "pageSize",
        "profilePicArray",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "clear",
        "",
        "fetch",
        "listener",
        "Lcom/dreamplug/contacthelper/listeners/OnPullCallback;",
        "fetchDelta",
        "getProfilePicPlaceholder",
        "salt",
        "",
        "syncDelta",
        "Lcom/dreamplug/fabrik/ui/contacts/helper/OnSyncCompleteListener;",
        "syncReverse",
        "page",
        "thumbnail",
        "id",
        "Lcom/dreamplug/contacthelper/listeners/OnProfilePicFetchListener;",
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
.field private static final ICustomTabsCallback:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final extraCallback:Lo/onActivityPostCreated;

.field private static final onMessageChannelReady:Lo/isSameListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 18
    new-instance v0, Lo/onActivityPostCreated;

    invoke-direct {v0}, Lo/onActivityPostCreated;-><init>()V

    sput-object v0, Lo/onActivityPostCreated;->extraCallback:Lo/onActivityPostCreated;

    .line 23
    sget-object v0, Lo/onActivityPostCreated$onMessageChannelReady;->onPostMessage:Lo/onActivityPostCreated$onMessageChannelReady;

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 23
    sput-object v1, Lo/onActivityPostCreated;->onMessageChannelReady:Lo/isSameListener;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, 0x7f0803c4

    .line 125
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f0803c5

    .line 126
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x7f0803c6

    .line 127
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0x7f0803c7

    .line 128
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const v1, 0x7f0803c8

    .line 129
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const v1, 0x7f0803c9

    .line 130
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 124
    invoke-static {v0}, Lo/getSessionPersistenceKey;->extraCallback([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lo/onActivityPostCreated;->ICustomTabsCallback:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback(Ljava/lang/String;)I
    .locals 1

    if-eqz p0, :cond_0

    .line 133
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    .line 134
    sget-object v0, Lo/onActivityPostCreated;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    rem-int/2addr p0, v0

    .line 135
    sget-object v0, Lo/onActivityPostCreated;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "profilePicArray[index]"

    invoke-static {p0, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public static ICustomTabsCallback(Lo/setChildInsets;)V
    .locals 3

    .line 100
    sget-object v0, Lo/setSubUiVisibilityListener;->extraCallback:Lo/setSubUiVisibilityListener$ICustomTabsCallback;

    .line 4029
    iget-object v0, v0, Lo/subUiVisibilityChanged;->onMessageChannelReady:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 100
    check-cast v0, Lo/setSubUiVisibilityListener;

    const-string v1, "listener"

    invoke-static {p0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4038
    sget-object v1, Lo/onPerformDefaultAction;->extraCallback:Lo/onPerformDefaultAction;

    new-instance v2, Lo/setSubUiVisibilityListener$onNavigationEvent;

    invoke-direct {v2, v0, p0}, Lo/setSubUiVisibilityListener$onNavigationEvent;-><init>(Lo/setSubUiVisibilityListener;Lo/setChildInsets;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 4034
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "class not initialized"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method public static onMessageChannelReady(Lo/setChildInsets;)V
    .locals 3

    const-string v0, "listener"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    sget-object v1, Lo/setSubUiVisibilityListener;->extraCallback:Lo/setSubUiVisibilityListener$ICustomTabsCallback;

    .line 2029
    iget-object v1, v1, Lo/subUiVisibilityChanged;->onMessageChannelReady:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 96
    check-cast v1, Lo/setSubUiVisibilityListener;

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3023
    sget-object v0, Lo/onPerformDefaultAction;->extraCallback:Lo/onPerformDefaultAction;

    new-instance v2, Lo/setSubUiVisibilityListener$onMessageChannelReady;

    invoke-direct {v2, v1, p0}, Lo/setSubUiVisibilityListener$onMessageChannelReady;-><init>(Lo/setSubUiVisibilityListener;Lo/setChildInsets;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 2034
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "class not initialized"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method public static final synthetic onPostMessage(Lo/onActivityPostCreated;)Lo/onActivityPreCreated;
    .locals 0

    .line 8000
    sget-object p0, Lo/onActivityPostCreated;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/onActivityPreCreated;

    return-object p0
.end method

.method public static onPostMessage(Ljava/lang/String;Lo/setNestedScrollingEnabled;)V
    .locals 4

    const-string v0, "id"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    sget-object v1, Lo/setSubUiVisibilityListener;->extraCallback:Lo/setSubUiVisibilityListener$ICustomTabsCallback;

    .line 6029
    iget-object v1, v1, Lo/subUiVisibilityChanged;->onMessageChannelReady:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 121
    check-cast v1, Lo/setSubUiVisibilityListener;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6057
    sget-object p0, Lo/onPerformDefaultAction;->extraCallback:Lo/onPerformDefaultAction;

    new-instance v0, Lo/setSubUiVisibilityListener$onRelationshipValidationResult;

    invoke-direct {v0, v1, p1, v2, v3}, Lo/setSubUiVisibilityListener$onRelationshipValidationResult;-><init>(Lo/setSubUiVisibilityListener;Lo/setNestedScrollingEnabled;J)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 6034
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "class not initialized"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method


# virtual methods
.method public final extraCallback(I)V
    .locals 4

    .line 1000
    sget-object v0, Lo/onActivityPostCreated;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/onActivityPreCreated;

    .line 70
    sget-object v1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 2000
    sget-object v1, Lo/setTrackTintMode;->getServiceComponent:Lo/getNavigationContentDescription;

    sget-object v2, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v3, 0x2e

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    const/16 v3, 0x32

    .line 70
    invoke-interface {v0, v1, v2, v3, p1}, Lo/onActivityPreCreated;->onPostMessage(JII)Lo/clearScrap;

    move-result-object v0

    .line 71
    new-instance v1, Lo/onActivityPostCreated$extraCallback;

    invoke-direct {v1, p1}, Lo/onActivityPostCreated$extraCallback;-><init>(I)V

    check-cast v1, Lo/getScrapOrCachedViewForId;

    invoke-interface {v0, v1}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 3

    .line 104
    sget-object v0, Lo/setSubUiVisibilityListener;->extraCallback:Lo/setSubUiVisibilityListener$ICustomTabsCallback;

    .line 5029
    iget-object v0, v0, Lo/subUiVisibilityChanged;->onMessageChannelReady:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 104
    check-cast v0, Lo/setSubUiVisibilityListener;

    .line 5122
    sget-object v1, Lo/onPerformDefaultAction;->extraCallback:Lo/onPerformDefaultAction;

    new-instance v2, Lo/setSubUiVisibilityListener$extraCallback;

    invoke-direct {v2, v0}, Lo/setSubUiVisibilityListener$extraCallback;-><init>(Lo/setSubUiVisibilityListener;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6000
    sget-object v0, Lo/onActivityPostCreated;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/onActivityPreCreated;

    .line 105
    invoke-interface {v0}, Lo/onActivityPreCreated;->onPostMessage()Lo/clearScrap;

    move-result-object v0

    new-instance v1, Lo/onActivityPostCreated$ICustomTabsCallback;

    invoke-direct {v1}, Lo/onActivityPostCreated$ICustomTabsCallback;-><init>()V

    check-cast v1, Lo/getScrapOrCachedViewForId;

    invoke-interface {v0, v1}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    return-void

    .line 5034
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "class not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
