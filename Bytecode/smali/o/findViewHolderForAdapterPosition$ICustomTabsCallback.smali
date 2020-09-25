.class final Lo/findViewHolderForAdapterPosition$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/findViewHolderForAdapterPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "com/dreamplug/fabrik/ui/lifestyle/win/slotmachine/widget/SlotMachineView$initViews$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/findViewHolderForAdapterPosition;

.field private synthetic onMessageChannelReady:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Lo/findViewHolderForAdapterPosition;)V
    .locals 0

    iput-object p1, p0, Lo/findViewHolderForAdapterPosition$ICustomTabsCallback;->onMessageChannelReady:Ljava/util/List;

    iput-object p2, p0, Lo/findViewHolderForAdapterPosition$ICustomTabsCallback;->ICustomTabsCallback:Lo/findViewHolderForAdapterPosition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 141
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lo/findViewHolderForAdapterPosition$ICustomTabsCallback;->ICustomTabsCallback:Lo/findViewHolderForAdapterPosition;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 142
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x11

    .line 143
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v1, 0x0

    .line 144
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 146
    iget-object v2, p0, Lo/findViewHolderForAdapterPosition$ICustomTabsCallback;->ICustomTabsCallback:Lo/findViewHolderForAdapterPosition;

    invoke-static {v2}, Lo/findViewHolderForAdapterPosition;->onMessageChannelReady(Lo/findViewHolderForAdapterPosition;)I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 147
    iget-object v3, p0, Lo/findViewHolderForAdapterPosition$ICustomTabsCallback;->ICustomTabsCallback:Lo/findViewHolderForAdapterPosition;

    iget-object v4, p0, Lo/findViewHolderForAdapterPosition$ICustomTabsCallback;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v1}, Lo/findViewHolderForAdapterPosition;->extraCallback(Lo/findViewHolderForAdapterPosition;Ljava/util/List;I)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    .line 148
    iget-object v4, p0, Lo/findViewHolderForAdapterPosition$ICustomTabsCallback;->ICustomTabsCallback:Lo/findViewHolderForAdapterPosition;

    invoke-static {v4}, Lo/findViewHolderForAdapterPosition;->extraCallback(Lo/findViewHolderForAdapterPosition;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    check-cast v3, Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 151
    iget-object v3, p0, Lo/findViewHolderForAdapterPosition$ICustomTabsCallback;->ICustomTabsCallback:Lo/findViewHolderForAdapterPosition;

    invoke-static {v3}, Lo/findViewHolderForAdapterPosition;->onMessageChannelReady(Lo/findViewHolderForAdapterPosition;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    .line 152
    iget-object v3, p0, Lo/findViewHolderForAdapterPosition$ICustomTabsCallback;->ICustomTabsCallback:Lo/findViewHolderForAdapterPosition;

    invoke-static {v3}, Lo/findViewHolderForAdapterPosition;->onPostMessage(Lo/findViewHolderForAdapterPosition;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    :cond_1
    iget-object v1, p0, Lo/findViewHolderForAdapterPosition$ICustomTabsCallback;->ICustomTabsCallback:Lo/findViewHolderForAdapterPosition;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 156
    iget-object v0, p0, Lo/findViewHolderForAdapterPosition$ICustomTabsCallback;->ICustomTabsCallback:Lo/findViewHolderForAdapterPosition;

    invoke-static {v0}, Lo/findViewHolderForAdapterPosition;->onNavigationEvent(Lo/findViewHolderForAdapterPosition;)Lo/findViewHolderForAdapterPosition$onMessageChannelReady;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method
