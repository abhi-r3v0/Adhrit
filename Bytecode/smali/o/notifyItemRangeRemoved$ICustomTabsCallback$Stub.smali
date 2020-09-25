.class final Lo/notifyItemRangeRemoved$ICustomTabsCallback$Stub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/notifyItemRangeRemoved;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "Lo/notifyItemMoved$onMessageChannelReady;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/fabrik/ui/main/ProfilePicViewModel$LoaderStatus;",
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
.field private synthetic onPostMessage:Lo/notifyItemRangeRemoved;


# direct methods
.method constructor <init>(Lo/notifyItemRangeRemoved;)V
    .locals 0

    iput-object p1, p0, Lo/notifyItemRangeRemoved$ICustomTabsCallback$Stub;->onPostMessage:Lo/notifyItemRangeRemoved;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 3

    .line 47
    check-cast p1, Lo/notifyItemMoved$onMessageChannelReady;

    .line 2024
    iget-boolean v0, p1, Lo/notifyItemMoved$onMessageChannelReady;->extraCallback:Z

    const-string v1, "loaderView"

    if-eqz v0, :cond_0

    .line 1106
    iget-object v0, p0, Lo/notifyItemRangeRemoved$ICustomTabsCallback$Stub;->onPostMessage:Lo/notifyItemRangeRemoved;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->loaderView:I

    invoke-virtual {v0, v2}, Lo/notifyItemRangeRemoved;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onDestroyView;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1108
    :cond_0
    iget-object v0, p0, Lo/notifyItemRangeRemoved$ICustomTabsCallback$Stub;->onPostMessage:Lo/notifyItemRangeRemoved;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->loaderView:I

    invoke-virtual {v0, v2}, Lo/notifyItemRangeRemoved;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onDestroyView;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3024
    :goto_0
    iget-object v0, p1, Lo/notifyItemMoved$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1112
    iget-object v0, p0, Lo/notifyItemRangeRemoved$ICustomTabsCallback$Stub;->onPostMessage:Lo/notifyItemRangeRemoved;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->error_view:I

    invoke-virtual {v0, v1}, Lo/notifyItemRangeRemoved;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/setLayoutStateDirection;

    .line 4024
    iget-object p1, p1, Lo/notifyItemMoved$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v1, 0x1

    .line 1112
    invoke-static {v0, p1, v1}, Lo/setLayoutStateDirection;->extraCallback(Lo/setLayoutStateDirection;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method
