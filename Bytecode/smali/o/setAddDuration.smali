.class public final Lo/setAddDuration;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/addBackgroundStateChangeListener;


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a&\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0017\u0010\u0003\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u0004\u00a2\u0006\u0002\u0008\u0005H\u0086\u0008\u001a\u000e\u0010\u0006\u001a\u0004\u0018\u00010\u0007*\u00020\u0008H\u0002\u001a\u0010\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00020\n*\u00020\u0008\u001a\u0012\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\n*\u00020\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "batch",
        "",
        "Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
        "getNavigatorParent",
        "Landroidx/lifecycle/ViewModelStoreOwner;",
        "Landroidx/fragment/app/Fragment;",
        "lazyNavigator",
        "Lkotlin/Lazy;",
        "lazySafeNavigator",
        "app_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final synthetic zza:Lo/removeBackgroundStateChangeListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/sendSessionReports;Lo/removeBackgroundStateChangeListener;)V
    .locals 0

    .line 3001
    iput-object p2, p0, Lo/setAddDuration;->zza:Lo/removeBackgroundStateChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final extraCallback(Landroidx/fragment/app/Fragment;)Lo/removeOnActiveChangeListener;
    .locals 2

    .line 91
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 93
    instance-of v1, p0, Lo/getChangeDuration;

    if-eqz v1, :cond_0

    check-cast p0, Lo/removeOnActiveChangeListener;

    return-object p0

    :cond_0
    if-eqz v0, :cond_1

    move-object p0, v0

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v0

    instance-of v0, v0, Lo/getChangeDuration;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object p0

    check-cast p0, Lo/removeOnActiveChangeListener;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final onNavigationEvent(Landroidx/fragment/app/Fragment;)Lo/isSameListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            ")",
            "Lo/isSameListener<",
            "Lo/getMoveDuration;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$lazyNavigator"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    new-instance v0, Lo/setAddDuration$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/setAddDuration$onMessageChannelReady;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v0, Lo/getServerTime;

    const-string p0, "initializer"

    invoke-static {v0, p0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    new-instance p0, Lo/fromChildMerge;

    invoke-direct {p0, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast p0, Lo/isSameListener;

    return-object p0
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 1

    .line 3002
    iget-object v0, p0, Lo/setAddDuration;->zza:Lo/removeBackgroundStateChangeListener;

    .line 3011
    iget-object v0, v0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {v0, p1}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    .line 3003
    invoke-static {}, Lo/sendSessionReports;->zzb()V

    return-void
.end method
