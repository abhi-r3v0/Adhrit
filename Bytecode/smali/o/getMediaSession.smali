.class public final Lo/getMediaSession;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isSameListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VM:",
        "Lo/setQueue;",
        ">",
        "Ljava/lang/Object;",
        "Lo/isSameListener<",
        "TVM;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B/\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0007\u00a2\u0006\u0002\u0010\u000bJ\u0008\u0010\u0011\u001a\u00020\u0012H\u0016R\u0012\u0010\u000c\u001a\u0004\u0018\u00018\u0000X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\rR\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u00028\u00008VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Landroidx/lifecycle/ViewModelLazy;",
        "VM",
        "Landroidx/lifecycle/ViewModel;",
        "Lkotlin/Lazy;",
        "viewModelClass",
        "Lkotlin/reflect/KClass;",
        "storeProducer",
        "Lkotlin/Function0;",
        "Landroidx/lifecycle/ViewModelStore;",
        "factoryProducer",
        "Landroidx/lifecycle/ViewModelProvider$Factory;",
        "(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V",
        "cached",
        "Landroidx/lifecycle/ViewModel;",
        "value",
        "getValue",
        "()Landroidx/lifecycle/ViewModel;",
        "isInitialized",
        "",
        "lifecycle-viewmodel-ktx_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/getServerTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getServerTime<",
            "Lo/setMetadata$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Lo/viewExistsForQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/viewExistsForQuery<",
            "TVM;>;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Lo/getServerTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getServerTime<",
            "Lo/setRatingType;",
            ">;"
        }
    .end annotation
.end field

.field private onNavigationEvent:Lo/setQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TVM;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/viewExistsForQuery;Lo/getServerTime;Lo/getServerTime;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/viewExistsForQuery<",
            "TVM;>;",
            "Lo/getServerTime<",
            "+",
            "Lo/setRatingType;",
            ">;",
            "Lo/getServerTime<",
            "+",
            "Lo/setMetadata$onNavigationEvent;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "viewModelClass"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "storeProducer"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factoryProducer"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getMediaSession;->extraCallback:Lo/viewExistsForQuery;

    iput-object p2, p0, Lo/getMediaSession;->onMessageChannelReady:Lo/getServerTime;

    iput-object p3, p0, Lo/getMediaSession;->ICustomTabsCallback:Lo/getServerTime;

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent()Ljava/lang/Object;
    .locals 3

    .line 1050
    iget-object v0, p0, Lo/getMediaSession;->onNavigationEvent:Lo/setQueue;

    if-nez v0, :cond_1

    .line 1052
    iget-object v0, p0, Lo/getMediaSession;->ICustomTabsCallback:Lo/getServerTime;

    invoke-interface {v0}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setMetadata$onNavigationEvent;

    .line 1053
    iget-object v1, p0, Lo/getMediaSession;->onMessageChannelReady:Lo/getServerTime;

    invoke-interface {v1}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setRatingType;

    .line 1054
    new-instance v2, Lo/setMetadata;

    invoke-direct {v2, v1, v0}, Lo/setMetadata;-><init>(Lo/setRatingType;Lo/setMetadata$onNavigationEvent;)V

    iget-object v0, p0, Lo/getMediaSession;->extraCallback:Lo/viewExistsForQuery;

    const-string v1, "$this$java"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2028
    check-cast v0, Lo/getInfoSyncTree;

    invoke-interface {v0}, Lo/getInfoSyncTree;->onPostMessage()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1054
    invoke-virtual {v2, v0}, Lo/setMetadata;->onPostMessage(Ljava/lang/Class;)Lo/setQueue;

    move-result-object v0

    .line 1055
    iput-object v0, p0, Lo/getMediaSession;->onNavigationEvent:Lo/setQueue;

    const-string v1, "ViewModelProvider(store,\u2026ed = it\n                }"

    .line 1054
    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 2028
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.Class<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v0
.end method
