.class public final Lo/merge;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/findSameItem;


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0016J \u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u000e\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0001R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/dreamplug/utils/DevLog;",
        "Lcom/dreamplug/utils/DevLogInterface;",
        "()V",
        "impl",
        "log",
        "",
        "string",
        "",
        "logException",
        "throwable",
        "",
        "logLifecycle",
        "ownerName",
        "lifecycle",
        "Landroidx/lifecycle/Lifecycle;",
        "trackTimeSpent",
        "",
        "setLogger",
        "devLogInterface",
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
.field public static final extraCallback:Lo/merge;

.field public static onPostMessage:Lo/findSameItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    new-instance v0, Lo/merge;

    invoke-direct {v0}, Lo/merge;-><init>()V

    sput-object v0, Lo/merge;->extraCallback:Lo/merge;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onNavigationEvent(Lo/findSameItem;)V
    .locals 1

    const-string v0, "devLogInterface"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sput-object p0, Lo/merge;->onPostMessage:Lo/findSameItem;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;Lo/MediaControllerCompatApi21$CallbackProxy;Z)V
    .locals 1

    const-string v0, "ownerName"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycle"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v0, Lo/merge;->onPostMessage:Lo/findSameItem;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lo/findSameItem;->ICustomTabsCallback(Ljava/lang/String;Lo/MediaControllerCompatApi21$CallbackProxy;Z)V

    :cond_0
    return-void
.end method

.method public final onPostMessage(Ljava/lang/Throwable;)V
    .locals 1

    const-string/jumbo v0, "throwable"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lo/merge;->onPostMessage:Lo/findSameItem;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lo/findSameItem;->onPostMessage(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
