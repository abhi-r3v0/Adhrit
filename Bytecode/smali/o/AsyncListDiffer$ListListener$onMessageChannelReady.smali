.class final Lo/AsyncListDiffer$ListListener$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/AsyncListDiffer$ListListener;->ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
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
        "Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;",
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
        "Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;",
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
.field private synthetic extraCallback:Lo/AsyncListDiffer$ListListener;

.field private synthetic onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

.field private synthetic onPostMessage:Lo/StaggeredGridLayoutManager;


# direct methods
.method constructor <init>(Lo/AsyncListDiffer$ListListener;Lo/toDebugString$onMessageChannelReady;Lo/StaggeredGridLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lo/AsyncListDiffer$ListListener$onMessageChannelReady;->extraCallback:Lo/AsyncListDiffer$ListListener;

    iput-object p2, p0, Lo/AsyncListDiffer$ListListener$onMessageChannelReady;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lo/AsyncListDiffer$ListListener$onMessageChannelReady;->onPostMessage:Lo/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 2

    .line 19
    check-cast p1, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;

    .line 1042
    iget-object v0, p0, Lo/AsyncListDiffer$ListListener$onMessageChannelReady;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lo/AsyncListDiffer$ListListener$onMessageChannelReady;->onPostMessage:Lo/StaggeredGridLayoutManager;

    check-cast v1, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;

    invoke-virtual {v1}, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, v0, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 1043
    iget-object p1, p0, Lo/AsyncListDiffer$ListListener$onMessageChannelReady;->extraCallback:Lo/AsyncListDiffer$ListListener;

    invoke-static {p1}, Lo/AsyncListDiffer$ListListener;->onMessageChannelReady(Lo/AsyncListDiffer$ListListener;)Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p1

    iget-object v0, p0, Lo/AsyncListDiffer$ListListener$onMessageChannelReady;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

    iget-boolean v0, v0, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lo/AsyncListDiffer$ListListener;->onNavigationEvent()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lo/AsyncListDiffer$ListListener;->extraCallback()I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1044
    iget-object p1, p0, Lo/AsyncListDiffer$ListListener$onMessageChannelReady;->extraCallback:Lo/AsyncListDiffer$ListListener;

    invoke-static {p1}, Lo/AsyncListDiffer$ListListener;->onNavigationEvent(Lo/AsyncListDiffer$ListListener;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lo/AsyncListDiffer$ListListener$onMessageChannelReady;->extraCallback:Lo/AsyncListDiffer$ListListener;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lo/AsyncListDiffer$ListListener$onMessageChannelReady;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

    iget-boolean v1, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    if-eqz v1, :cond_1

    const v1, 0x7f060091

    goto :goto_1

    :cond_1
    const v1, 0x7f06022d

    :goto_1
    invoke-static {v0, v1}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
