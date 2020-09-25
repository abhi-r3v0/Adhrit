.class public final Lo/onItemRangeRemoved;
.super Lo/hasGapsToFix;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/hasGapsToFix<",
        "Lo/createOrientationHelpers;",
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
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0005J\u0018\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/main/menu/MenuAdapter;",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "onItemClickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/hasGapsToFix$onMessageChannelReady;


# direct methods
.method public constructor <init>(Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lo/hasGapsToFix;-><init>()V

    iput-object p1, p0, Lo/onItemRangeRemoved;->ICustomTabsCallback:Lo/hasGapsToFix$onMessageChannelReady;

    return-void
.end method


# virtual methods
.method public final synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const-string p2, "parent"

    .line 16
    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1018
    new-instance p2, Lo/onItemRangeChanged;

    iget-object v0, p0, Lo/onItemRangeRemoved;->ICustomTabsCallback:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/onItemRangeChanged;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    .line 1019
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string/jumbo v0, "this.itemView"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lo/onItemRangeRemoved$extraCallback;

    invoke-direct {v0, p2}, Lo/onItemRangeRemoved$extraCallback;-><init>(Lo/onItemRangeChanged;)V

    check-cast v0, Lo/onDisconnectSetValue;

    invoke-static {p1, v0}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 1018
    check-cast p2, Lo/createOrientationHelpers;

    .line 16
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p2
.end method
