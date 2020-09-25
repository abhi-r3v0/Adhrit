.class final Lo/AsyncListDiffer$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/AsyncListDiffer;->ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
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
        "Lcom/dreamplug/fabrik/ui/control/CardDetails;",
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
        "Lcom/dreamplug/fabrik/ui/control/CardDetails;",
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
.field private synthetic ICustomTabsCallback:Lo/AsyncListDiffer;

.field private synthetic extraCallback:Lo/StaggeredGridLayoutManager;


# direct methods
.method constructor <init>(Lo/AsyncListDiffer;Lo/StaggeredGridLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lo/AsyncListDiffer$onPostMessage;->ICustomTabsCallback:Lo/AsyncListDiffer;

    iput-object p2, p0, Lo/AsyncListDiffer$onPostMessage;->extraCallback:Lo/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 5

    .line 25
    check-cast p1, Lcom/dreamplug/fabrik/ui/control/CardDetails;

    .line 1054
    iget-object v0, p0, Lo/AsyncListDiffer$onPostMessage;->ICustomTabsCallback:Lo/AsyncListDiffer;

    invoke-static {v0}, Lo/AsyncListDiffer;->onNavigationEvent(Lo/AsyncListDiffer;)Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/AsyncListDiffer$onPostMessage;->extraCallback:Lo/StaggeredGridLayoutManager;

    check-cast v2, Lcom/dreamplug/fabrik/ui/control/CardDetails;

    invoke-virtual {v2}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lo/AsyncListDiffer;->ICustomTabsCallback()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lo/AsyncListDiffer;->onNavigationEvent()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1055
    iget-object v0, p0, Lo/AsyncListDiffer$onPostMessage;->ICustomTabsCallback:Lo/AsyncListDiffer;

    invoke-static {v0}, Lo/AsyncListDiffer;->onPostMessage(Lo/AsyncListDiffer;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lo/AsyncListDiffer$onPostMessage;->ICustomTabsCallback:Lo/AsyncListDiffer;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "itemView"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lo/AsyncListDiffer$onPostMessage;->extraCallback:Lo/StaggeredGridLayoutManager;

    check-cast v4, Lcom/dreamplug/fabrik/ui/control/CardDetails;

    invoke-virtual {v4}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lo/AsyncListDiffer;->onMessageChannelReady()I

    move-result v3

    goto :goto_1

    :cond_1
    invoke-static {}, Lo/AsyncListDiffer;->extraCallback()I

    move-result v3

    :goto_1
    invoke-static {v1, v3}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1056
    iget-object v0, p0, Lo/AsyncListDiffer$onPostMessage;->ICustomTabsCallback:Lo/AsyncListDiffer;

    invoke-static {v0}, Lo/AsyncListDiffer;->ICustomTabsCallback(Lo/AsyncListDiffer;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lo/AsyncListDiffer$onPostMessage;->ICustomTabsCallback:Lo/AsyncListDiffer;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lo/AsyncListDiffer$onPostMessage;->extraCallback:Lo/StaggeredGridLayoutManager;

    check-cast v2, Lcom/dreamplug/fabrik/ui/control/CardDetails;

    invoke-virtual {v2}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lo/AsyncListDiffer;->onMessageChannelReady()I

    move-result p1

    goto :goto_2

    :cond_2
    invoke-static {}, Lo/AsyncListDiffer;->extraCallback()I

    move-result p1

    :goto_2
    invoke-static {v1, p1}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
