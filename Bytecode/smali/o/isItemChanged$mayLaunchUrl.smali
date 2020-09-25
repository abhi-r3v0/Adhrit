.class final Lo/isItemChanged$mayLaunchUrl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/isItemChanged;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lo/throwIfInMutationOperation<",
        "+",
        "Lo/RecyclerView$OnScrollListener$onMessageChannelReady;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/utils/Event;",
        "Lcom/dreamplug/fabrik/ui/track/bankbalance/ErrorBottomSheet$ErrorBottomSheetData;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic onPostMessage:Lo/isItemChanged;


# direct methods
.method constructor <init>(Lo/isItemChanged;)V
    .locals 0

    iput-object p1, p0, Lo/isItemChanged$mayLaunchUrl;->onPostMessage:Lo/isItemChanged;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 2

    .line 67
    check-cast p1, Lo/throwIfInMutationOperation;

    .line 2011
    iget-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2015
    iput-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    .line 2016
    iget-object p1, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 1341
    :goto_0
    check-cast p1, Lo/RecyclerView$OnScrollListener$onMessageChannelReady;

    if-eqz p1, :cond_1

    .line 1342
    new-instance v0, Lo/isItemChanged$mayLaunchUrl$ICustomTabsCallback;

    invoke-direct {v0, p1, p0}, Lo/isItemChanged$mayLaunchUrl$ICustomTabsCallback;-><init>(Lo/RecyclerView$OnScrollListener$onMessageChannelReady;Lo/isItemChanged$mayLaunchUrl;)V

    check-cast v0, Lo/onDisconnectSetValue;

    .line 2081
    iput-object v0, p1, Lo/RecyclerView$OnScrollListener$onMessageChannelReady;->onTransact:Lo/onDisconnectSetValue;

    .line 1358
    sget-object v0, Lo/RecyclerView$OnScrollListener;->onPostMessage:Lo/RecyclerView$OnScrollListener$ICustomTabsCallback;

    const-string/jumbo v0, "sheetData"

    .line 1359
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3069
    new-instance v0, Lo/RecyclerView$OnScrollListener;

    invoke-direct {v0}, Lo/RecyclerView$OnScrollListener;-><init>()V

    .line 3070
    invoke-static {v0, p1}, Lo/RecyclerView$OnScrollListener;->onMessageChannelReady(Lo/RecyclerView$OnScrollListener;Lo/RecyclerView$OnScrollListener$onMessageChannelReady;)V

    .line 1360
    iget-object p1, p0, Lo/isItemChanged$mayLaunchUrl;->onPostMessage:Lo/isItemChanged;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object p1

    const-string v1, "ErrorBottomSheet"

    invoke-virtual {v0, p1, v1}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
