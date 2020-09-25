.class public final Lo/DialogPreference;
.super Lo/createOrientationHelpers;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/control/bankoffers/BankOfferRewardHolder;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "view",
        "Landroid/view/ViewGroup;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "background",
        "Lcom/facebook/drawee/view/SimpleDraweeView;",
        "merchant",
        "Landroid/widget/TextView;",
        "title",
        "bind",
        "",
        "item",
        "Lcom/dreamplug/utils/list/ListItem;",
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
.field private final extraCallback:Landroid/widget/TextView;

.field private final onMessageChannelReady:Lo/setSpeed;

.field private final onNavigationEvent:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 3

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$inflate"

    .line 5010
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5011
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e017a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1, p2}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    .line 21
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0b056a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.findViewById(R.id.merchant)"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/DialogPreference;->onNavigationEvent:Landroid/widget/TextView;

    .line 22
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0b08b5

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.findViewById(R.id.title)"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/DialogPreference;->extraCallback:Landroid/widget/TextView;

    .line 23
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0b00b1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.findViewById(R.id.backgroundImage)"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/setSpeed;

    iput-object p1, p0, Lo/DialogPreference;->onMessageChannelReady:Lo/setSpeed;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "item"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    instance-of v2, v1, Lo/SeekBarPreference;

    if-eqz v2, :cond_2

    .line 26
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v3, "itemView"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lo/DialogPreference$ICustomTabsCallback;

    invoke-direct {v4, v0}, Lo/DialogPreference$ICustomTabsCallback;-><init>(Lo/DialogPreference;)V

    check-cast v4, Lo/onDisconnectSetValue;

    invoke-static {v2, v4}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 29
    iget-object v2, v0, Lo/DialogPreference;->onMessageChannelReady:Lo/setSpeed;

    move-object v4, v2

    check-cast v4, Landroid/view/View;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x7e

    const-string v5, "#4b5150"

    invoke-static/range {v4 .. v11}, Lo/missCount;->onNavigationEvent(Landroid/view/View;Ljava/lang/String;FLjava/lang/String;Ljava/lang/Float;[FLjava/lang/Integer;I)V

    .line 30
    iget-object v12, v0, Lo/DialogPreference;->onMessageChannelReady:Lo/setSpeed;

    check-cast v1, Lo/SeekBarPreference;

    .line 1033
    iget-object v2, v1, Lo/SeekBarPreference;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/control/bankoffers/RewardData;

    .line 2026
    iget-object v13, v2, Lcom/dreamplug/fabrik/ui/control/bankoffers/RewardData;->onMessageChannelReady:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x3e

    .line 30
    invoke-static/range {v12 .. v19}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 31
    iget-object v2, v0, Lo/DialogPreference;->onNavigationEvent:Landroid/widget/TextView;

    .line 2033
    iget-object v4, v1, Lo/SeekBarPreference;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/control/bankoffers/RewardData;

    .line 3027
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/control/bankoffers/RewardData;->ICustomTabsCallback:Ljava/lang/String;

    .line 31
    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v2, v0, Lo/DialogPreference;->extraCallback:Landroid/widget/TextView;

    .line 3033
    iget-object v1, v1, Lo/SeekBarPreference;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/control/bankoffers/RewardData;

    .line 4029
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/control/bankoffers/RewardData;->extraCallback:Ljava/lang/String;

    .line 32
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v1, v0, Lo/DialogPreference;->extraCallback:Landroid/widget/TextView;

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-static {}, Lo/setTrackTintMode;->ICustomTabsService()Z

    move-result v4

    const v5, 0x7f060238

    const v6, 0x7f0600ff

    if-eqz v4, :cond_0

    const v4, 0x7f060238

    goto :goto_0

    :cond_0
    const v4, 0x7f0600ff

    :goto_0
    invoke-static {v2, v4}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    iget-object v1, v0, Lo/DialogPreference;->onNavigationEvent:Landroid/widget/TextView;

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-static {}, Lo/setTrackTintMode;->ICustomTabsService()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const v5, 0x7f0600ff

    :goto_1
    invoke-static {v2, v5}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    return-void
.end method
