.class final Lo/isItemChanged$ICustomTabsService$Stub;
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
        "Lo/addWrite<",
        "+",
        "Ljava/lang/Boolean;",
        "+",
        "Ljava/lang/String;",
        ">;>;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u000122\u0010\u0002\u001a.\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004 \u0007*\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/utils/Event;",
        "Lkotlin/Pair;",
        "",
        "",
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
.field private synthetic ICustomTabsCallback:Lo/isItemChanged;


# direct methods
.method constructor <init>(Lo/isItemChanged;)V
    .locals 0

    iput-object p1, p0, Lo/isItemChanged$ICustomTabsService$Stub;->ICustomTabsCallback:Lo/isItemChanged;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 6

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

    .line 1166
    :goto_0
    check-cast p1, Lo/addWrite;

    if-eqz p1, :cond_2

    .line 2027
    iget-object v0, p1, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 1167
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string/jumbo v1, "text"

    const-string v2, "context"

    const/4 v3, 0x0

    const-string v4, "requireContext()"

    if-eqz v0, :cond_1

    .line 1168
    iget-object v0, p0, Lo/isItemChanged$ICustomTabsService$Stub;->ICustomTabsCallback:Lo/isItemChanged;

    invoke-static {v0}, Lo/isItemChanged;->extraCallback(Lo/isItemChanged;)Lo/onActivityResult;

    move-result-object v0

    iget-object v5, p0, Lo/isItemChanged$ICustomTabsService$Stub;->ICustomTabsCallback:Lo/isItemChanged;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2028
    iget-object p1, p1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 1168
    check-cast p1, Ljava/lang/String;

    .line 3027
    invoke-static {v5, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3028
    sget v1, Lo/preferLastSpan$ICustomTabsCallback$Stub;->success_toast_layout:I

    invoke-virtual {v0, v5, p1, v3, v1}, Lo/onActivityResult;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;ZI)V

    return-void

    .line 1170
    :cond_1
    iget-object v0, p0, Lo/isItemChanged$ICustomTabsService$Stub;->ICustomTabsCallback:Lo/isItemChanged;

    invoke-static {v0}, Lo/isItemChanged;->extraCallback(Lo/isItemChanged;)Lo/onActivityResult;

    move-result-object v0

    iget-object v5, p0, Lo/isItemChanged$ICustomTabsService$Stub;->ICustomTabsCallback:Lo/isItemChanged;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4028
    iget-object p1, p1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 1170
    check-cast p1, Ljava/lang/String;

    .line 4031
    invoke-static {v5, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4032
    sget v1, Lo/preferLastSpan$ICustomTabsCallback$Stub;->error_toast_layout:I

    invoke-virtual {v0, v5, p1, v3, v1}, Lo/onActivityResult;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;ZI)V

    :cond_2
    return-void
.end method
