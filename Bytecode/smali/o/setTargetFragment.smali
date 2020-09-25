.class public final Lo/setTargetFragment;
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
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\r\u001a\u00020\u000eJ$\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u00052\u0014\u0010\u0011\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u000e0\u0012R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/helper/assets/AssetsRepository;",
        "",
        "()V",
        "assetsCache",
        "",
        "",
        "Lcom/dreamplug/fabrik/helper/assets/Background;",
        "assetsService",
        "Lcom/dreamplug/fabrik/helper/assets/helper/AssetsService;",
        "getAssetsService",
        "()Lcom/dreamplug/fabrik/helper/assets/helper/AssetsService;",
        "assetsService$delegate",
        "Lkotlin/Lazy;",
        "fetch",
        "",
        "get",
        "id",
        "resultCallback",
        "Lkotlin/Function1;",
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
.field private static final ICustomTabsCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/setInitialSavedState;",
            ">;"
        }
    .end annotation
.end field

.field private static final onMessageChannelReady:Lo/isSameListener;

.field public static final onPostMessage:Lo/setTargetFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lo/setTargetFragment;

    invoke-direct {v0}, Lo/setTargetFragment;-><init>()V

    sput-object v0, Lo/setTargetFragment;->onPostMessage:Lo/setTargetFragment;

    .line 16
    sget-object v0, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    .line 69
    sget-object v0, Lo/setTargetFragment$ICustomTabsCallback;->onMessageChannelReady:Lo/setTargetFragment$ICustomTabsCallback;

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 69
    sput-object v1, Lo/setTargetFragment;->onMessageChannelReady:Lo/isSameListener;

    .line 17
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lo/setTargetFragment;->ICustomTabsCallback:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic onMessageChannelReady()Ljava/util/Map;
    .locals 1

    .line 14
    sget-object v0, Lo/setTargetFragment;->ICustomTabsCallback:Ljava/util/Map;

    return-object v0
.end method

.method public static onPostMessage(Ljava/lang/String;Lo/onDisconnectSetValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/onDisconnectSetValue<",
            "-",
            "Lo/setInitialSavedState;",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "resultCallback"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget-object v0, Lo/setTargetFragment;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setInitialSavedState;

    if-eqz v0, :cond_0

    .line 51
    invoke-interface {p1, v0}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_0
    sget-object v0, Lo/addAll;->ICustomTabsCallback:Lo/addAll;

    new-instance v1, Lo/setTargetFragment$onNavigationEvent;

    invoke-direct {v1, p0, p1}, Lo/setTargetFragment$onNavigationEvent;-><init>(Ljava/lang/String;Lo/onDisconnectSetValue;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()V
    .locals 9

    .line 1000
    sget-object v0, Lo/setTargetFragment;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getFragmentManager;

    .line 20
    invoke-interface {v0}, Lo/getFragmentManager;->onMessageChannelReady()Lo/clearScrap;

    move-result-object v0

    .line 21
    sget-object v1, Lo/validateViewHolderForOffsetPosition;->onNavigationEvent:Lo/validateViewHolderForOffsetPosition$onPostMessage;

    const/4 v2, 0x5

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/16 v8, 0xe

    invoke-static/range {v2 .. v8}, Lo/validateViewHolderForOffsetPosition$onPostMessage;->onNavigationEvent(IJIJI)Lo/validateViewHolderForOffsetPosition;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/clearScrap;->onMessageChannelReady(Lo/validateViewHolderForOffsetPosition;)V

    .line 22
    new-instance v1, Lo/setTargetFragment$onPostMessage;

    invoke-direct {v1}, Lo/setTargetFragment$onPostMessage;-><init>()V

    check-cast v1, Lo/getScrapOrCachedViewForId;

    invoke-interface {v0, v1}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    return-void
.end method
