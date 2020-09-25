.class public final Lo/getHorizontalSnapPreference;
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
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0015\u0010\u0015\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0016\u001a\u00020\u0010\u00a2\u0006\u0002\u0010\u0017J\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0019J\u001a\u0010\u001a\u001a\u00020\u001b2\u0012\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u001b0\u001dJ\u000e\u0010\u001e\u001a\u00020\u001b2\u0006\u0010\u001f\u001a\u00020\u0010J\u0006\u0010 \u001a\u00020\u001bJ\u000e\u0010!\u001a\u00020\u001b2\u0006\u0010\u001f\u001a\u00020\u0010R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u0008\u001a\u0004\u0008\u000b\u0010\u000cR*\u0010\u000e\u001a\u001e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000fj\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0011`\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/batcher/WishListHelper;",
        "",
        "()V",
        "handler",
        "Landroid/os/Handler;",
        "getHandler",
        "()Landroid/os/Handler;",
        "handler$delegate",
        "Lkotlin/Lazy;",
        "lifestyleService",
        "Lcom/dreamplug/fabrik/ui/lifestyle/LifestyleService;",
        "getLifestyleService",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/LifestyleService;",
        "lifestyleService$delegate",
        "likeUnlikeStatus",
        "Ljava/util/HashMap;",
        "",
        "",
        "Lkotlin/collections/HashMap;",
        "loadingLiveData",
        "Landroidx/lifecycle/MutableLiveData;",
        "getLikeStatus",
        "lifestyleId",
        "(Ljava/lang/String;)Ljava/lang/Boolean;",
        "getSyncingLiveData",
        "Landroidx/lifecycle/LiveData;",
        "hasCachedItems",
        "",
        "callback",
        "Lkotlin/Function1;",
        "like",
        "id",
        "syncLikeStatus",
        "unlike",
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
.field public static final ICustomTabsCallback:Lo/getHorizontalSnapPreference;

.field public static final extraCallback:Lo/isSameListener;

.field private static final onMessageChannelReady:Lo/isSameListener;

.field private static final onNavigationEvent:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final onPostMessage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 18
    new-instance v0, Lo/getHorizontalSnapPreference;

    invoke-direct {v0}, Lo/getHorizontalSnapPreference;-><init>()V

    sput-object v0, Lo/getHorizontalSnapPreference;->ICustomTabsCallback:Lo/getHorizontalSnapPreference;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lo/getHorizontalSnapPreference;->onPostMessage:Ljava/util/HashMap;

    .line 26
    sget-object v0, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    .line 126
    sget-object v0, Lo/getHorizontalSnapPreference$extraCallback;->ICustomTabsCallback:Lo/getHorizontalSnapPreference$extraCallback;

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 126
    sput-object v2, Lo/getHorizontalSnapPreference;->onMessageChannelReady:Lo/isSameListener;

    .line 28
    new-instance v0, Lo/setActive;

    invoke-direct {v0}, Lo/setActive;-><init>()V

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    sput-object v0, Lo/getHorizontalSnapPreference;->onNavigationEvent:Lo/setActive;

    .line 32
    sget-object v0, Lo/getHorizontalSnapPreference$onNavigationEvent;->ICustomTabsCallback:Lo/getHorizontalSnapPreference$onNavigationEvent;

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 4000
    sput-object v1, Lo/getHorizontalSnapPreference;->extraCallback:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 39
    sget-object v1, Lo/getHorizontalSnapPreference$5;->extraCallback:Lo/getHorizontalSnapPreference$5;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extraCallback()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 29
    sget-object v0, Lo/getHorizontalSnapPreference;->onNavigationEvent:Lo/setActive;

    if-eqz v0, :cond_0

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type androidx.lifecycle.LiveData<kotlin.Boolean>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final synthetic onNavigationEvent(Lo/getHorizontalSnapPreference;)Lo/computeHorizontalScrollExtent;
    .locals 0

    .line 5000
    sget-object p0, Lo/getHorizontalSnapPreference;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/computeHorizontalScrollExtent;

    return-object p0
.end method

.method public static final synthetic onNavigationEvent()Lo/setActive;
    .locals 1

    .line 18
    sget-object v0, Lo/getHorizontalSnapPreference;->onNavigationEvent:Lo/setActive;

    return-object v0
.end method

.method public static onPostMessage(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "lifestyleId"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    sget-object v0, Lo/getHorizontalSnapPreference;->onPostMessage:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method public static final synthetic onPostMessage()Ljava/util/HashMap;
    .locals 1

    .line 18
    sget-object v0, Lo/getHorizontalSnapPreference;->onPostMessage:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2

    .line 92
    sget-object v0, Lo/getHorizontalSnapPreference;->onNavigationEvent:Lo/setActive;

    .line 1320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 1321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 92
    :goto_0
    check-cast v0, Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    sget-object v0, Lo/getHorizontalSnapPreference;->onNavigationEvent:Lo/setActive;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 2000
    sget-object v0, Lo/getHorizontalSnapPreference;->extraCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 94
    sget-object v1, Lo/getHorizontalSnapPreference$onPostMessage;->onMessageChannelReady:Lo/getHorizontalSnapPreference$onPostMessage;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final extraCallback(Ljava/lang/String;)V
    .locals 2

    const-string v0, "id"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    sget-object v0, Lo/getHorizontalSnapPreference;->onPostMessage:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    sget-object v0, Lo/getHorizontalSnapPreference;->extraCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 64
    new-instance v1, Lo/getHorizontalSnapPreference$onTransact;

    invoke-direct {v1, p1}, Lo/getHorizontalSnapPreference$onTransact;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
