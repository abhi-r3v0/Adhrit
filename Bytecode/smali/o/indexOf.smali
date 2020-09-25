.class public final Lo/indexOf;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/indexOf$ICustomTabsCallback;,
        Lo/indexOf$extraCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\r\u000eB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0006\u001a\u00020\u0007J \u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\n0\t\"\u0004\u0008\u0000\u0010\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\n0\u000cR\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/dreamplug/utils/SnapshotUtils;",
        "",
        "()V",
        "lazyItemList",
        "",
        "Lcom/dreamplug/utils/SnapshotUtils$Resettable;",
        "clearAll",
        "",
        "lazyInSession",
        "Lkotlin/Lazy;",
        "T",
        "initializer",
        "Lkotlin/Function0;",
        "Resettable",
        "SynchronizedLazyInSessionImpl",
        "utils_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lo/indexOf;

.field private static final onPostMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/indexOf$extraCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3
    new-instance v0, Lo/indexOf;

    invoke-direct {v0}, Lo/indexOf;-><init>()V

    sput-object v0, Lo/indexOf;->ICustomTabsCallback:Lo/indexOf;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    sput-object v0, Lo/indexOf;->onPostMessage:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback()V
    .locals 2

    .line 8
    sget-object v0, Lo/indexOf;->onPostMessage:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 55
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/indexOf$extraCallback;

    .line 8
    invoke-interface {v1}, Lo/indexOf$extraCallback;->extraCallback()V

    goto :goto_0

    .line 9
    :cond_0
    sget-object v0, Lo/indexOf;->onPostMessage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static final synthetic onMessageChannelReady()Ljava/util/List;
    .locals 1

    .line 3
    sget-object v0, Lo/indexOf;->onPostMessage:Ljava/util/List;

    return-object v0
.end method

.method public static onMessageChannelReady(Lo/getServerTime;)Lo/isSameListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/getServerTime<",
            "+TT;>;)",
            "Lo/isSameListener<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "initializer"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lo/indexOf$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/indexOf$ICustomTabsCallback;-><init>(Lo/getServerTime;)V

    check-cast v0, Lo/isSameListener;

    return-object v0
.end method
