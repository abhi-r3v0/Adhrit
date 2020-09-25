.class public final Lo/GridLayoutManager$DefaultSpanSizeLookup;
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
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0016\u0010\u000c\u001a\n \t*\u0004\u0018\u00010\r0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n \t*\u0004\u0018\u00010\u000f0\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\n \t*\u0004\u0018\u00010\u000f0\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0014\u001a\n \t*\u0004\u0018\u00010\u00150\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0016\u001a\n \t*\u0004\u0018\u00010\u000f0\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/adapter/AmountBreakupViewHolder;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "arrow",
        "Landroid/widget/ImageView;",
        "kotlin.jvm.PlatformType",
        "getClickListener",
        "()Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "divider",
        "Landroid/view/View;",
        "extra",
        "Lcom/dreamplug/widget/CredTextView;",
        "info",
        "key",
        "getParent",
        "()Landroid/view/ViewGroup;",
        "seeSchedule",
        "Landroid/widget/TextView;",
        "value",
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
.field private final ICustomTabsCallback:Lo/createFullSpanItemFromEnd;

.field private final ICustomTabsCallback$Stub:Landroid/widget/ImageView;

.field private final asInterface:Landroid/widget/TextView;

.field final extraCallback:Lo/hasGapsToFix$onMessageChannelReady;

.field private final onMessageChannelReady:Landroid/view/View;

.field private final onNavigationEvent:Lo/createFullSpanItemFromEnd;

.field private final onPostMessage:Lo/createFullSpanItemFromEnd;

.field private final onTransact:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$inflate"

    .line 14010
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14011
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e014f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-direct {p0, p1, p2}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    iput-object p2, p0, Lo/GridLayoutManager$DefaultSpanSizeLookup;->extraCallback:Lo/hasGapsToFix$onMessageChannelReady;

    .line 128
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->key:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/GridLayoutManager$DefaultSpanSizeLookup;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    .line 129
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->value:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/GridLayoutManager$DefaultSpanSizeLookup;->onPostMessage:Lo/createFullSpanItemFromEnd;

    .line 130
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->extra:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/GridLayoutManager$DefaultSpanSizeLookup;->ICustomTabsCallback:Lo/createFullSpanItemFromEnd;

    .line 131
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lo/GridLayoutManager$DefaultSpanSizeLookup;->onMessageChannelReady:Landroid/view/View;

    .line 132
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->seeSchedule:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/GridLayoutManager$DefaultSpanSizeLookup;->asInterface:Landroid/widget/TextView;

    .line 133
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->info:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lo/GridLayoutManager$DefaultSpanSizeLookup;->onTransact:Landroid/widget/ImageView;

    .line 134
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->arrow:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lo/GridLayoutManager$DefaultSpanSizeLookup;->ICustomTabsCallback$Stub:Landroid/widget/ImageView;

    return-void
.end method

.method public static final synthetic extraCallback(Lo/GridLayoutManager$DefaultSpanSizeLookup;)Landroid/widget/ImageView;
    .locals 0

    .line 121
    iget-object p0, p0, Lo/GridLayoutManager$DefaultSpanSizeLookup;->onTransact:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "item"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    instance-of v2, v1, Lo/computeHorizontalScrollOffset;

    if-eqz v2, :cond_a

    .line 137
    iget-object v2, v0, Lo/GridLayoutManager$DefaultSpanSizeLookup;->onMessageChannelReady:Landroid/view/View;

    const-string v3, "divider"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$this$gone"

    invoke-static {v2, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v5, 0x8

    .line 1017
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 138
    iget-object v2, v0, Lo/GridLayoutManager$DefaultSpanSizeLookup;->asInterface:Landroid/widget/TextView;

    const-string/jumbo v6, "seeSchedule"

    invoke-static {v2, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2017
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 139
    iget-object v2, v0, Lo/GridLayoutManager$DefaultSpanSizeLookup;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    const-string v7, "key"

    invoke-static {v2, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    move-object v8, v1

    check-cast v8, Lo/computeHorizontalScrollOffset;

    .line 2054
    iget-object v9, v8, Lo/computeHorizontalScrollOffset;->extraCallback:Ljava/lang/CharSequence;

    .line 139
    invoke-static {v2, v9}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 140
    iget-object v2, v0, Lo/GridLayoutManager$DefaultSpanSizeLookup;->ICustomTabsCallback:Lo/createFullSpanItemFromEnd;

    const-string v9, "extra"

    invoke-static {v2, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    .line 3054
    iget-object v9, v8, Lo/computeHorizontalScrollOffset;->onNavigationEvent:Ljava/lang/CharSequence;

    .line 140
    invoke-static {v2, v9}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 141
    iget-object v2, v0, Lo/GridLayoutManager$DefaultSpanSizeLookup;->onPostMessage:Lo/createFullSpanItemFromEnd;

    const-string/jumbo v9, "value"

    invoke-static {v2, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    .line 4054
    iget-object v10, v8, Lo/computeHorizontalScrollOffset;->ICustomTabsCallback:Ljava/lang/CharSequence;

    .line 141
    invoke-static {v2, v10}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 5054
    iget-object v2, v8, Lo/computeHorizontalScrollOffset;->onMessageChannelReady:Ljava/lang/String;

    .line 142
    check-cast v2, Ljava/lang/CharSequence;

    const/4 v11, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const-string v12, "info"

    if-eqz v2, :cond_2

    .line 143
    iget-object v2, v0, Lo/GridLayoutManager$DefaultSpanSizeLookup;->onTransact:Landroid/widget/ImageView;

    invoke-static {v2, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 145
    :cond_2
    iget-object v2, v0, Lo/GridLayoutManager$DefaultSpanSizeLookup;->onTransact:Landroid/widget/ImageView;

    invoke-static {v2, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 146
    iget-object v2, v0, Lo/GridLayoutManager$DefaultSpanSizeLookup;->onTransact:Landroid/widget/ImageView;

    invoke-static {v2, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    new-instance v12, Lo/GridLayoutManager$DefaultSpanSizeLookup$onMessageChannelReady;

    invoke-direct {v12, v0, v1}, Lo/GridLayoutManager$DefaultSpanSizeLookup$onMessageChannelReady;-><init>(Lo/GridLayoutManager$DefaultSpanSizeLookup;Lo/StaggeredGridLayoutManager;)V

    check-cast v12, Lo/onDisconnectSetValue;

    invoke-static {v2, v12}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 6054
    :goto_2
    iget-object v2, v8, Lo/computeHorizontalScrollOffset;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$BreakDownData;

    if-eqz v2, :cond_3

    .line 6208
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$BreakDownData;->extraCallback:Ljava/util/List;

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    .line 151
    :goto_3
    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v2, 0x1

    :goto_5
    const-string v12, "$this$visible"

    const-string v13, "arrow"

    if-eqz v2, :cond_6

    .line 152
    iget-object v1, v0, Lo/GridLayoutManager$DefaultSpanSizeLookup;->ICustomTabsCallback$Stub:Landroid/widget/ImageView;

    invoke-static {v1, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    invoke-static {v1, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7017
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 154
    :cond_6
    iget-object v2, v0, Lo/GridLayoutManager$DefaultSpanSizeLookup;->ICustomTabsCallback$Stub:Landroid/widget/ImageView;

    invoke-static {v2, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v12}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8009
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 155
    iget-object v2, v0, Lo/GridLayoutManager$DefaultSpanSizeLookup;->ICustomTabsCallback$Stub:Landroid/widget/ImageView;

    invoke-static {v2, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    new-instance v13, Lo/GridLayoutManager$DefaultSpanSizeLookup$onPostMessage;

    invoke-direct {v13, v0, v1}, Lo/GridLayoutManager$DefaultSpanSizeLookup$onPostMessage;-><init>(Lo/GridLayoutManager$DefaultSpanSizeLookup;Lo/StaggeredGridLayoutManager;)V

    check-cast v13, Lo/onDisconnectSetValue;

    invoke-static {v2, v13}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 8054
    :goto_6
    iget-object v1, v8, Lo/computeHorizontalScrollOffset;->onPostMessage:Ljava/lang/String;

    if-nez v1, :cond_7

    return-void

    .line 161
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const v13, 0x3f666666    # 0.9f

    const v14, 0x7f0600b2

    const-string v15, "itemView.context"

    const-string v10, "itemView"

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_9

    :sswitch_0
    const-string/jumbo v2, "section"

    .line 176
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 177
    iget-object v1, v0, Lo/GridLayoutManager$DefaultSpanSizeLookup;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    .line 178
    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v3, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v15}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x7f140390

    invoke-static {v2, v3, v4}, Lo/missCount;->onNavigationEvent(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 179
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v14}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 180
    invoke-virtual {v1, v13}, Lo/createFullSpanItemFromEnd;->setAlpha(F)V

    .line 182
    iget-object v1, v0, Lo/GridLayoutManager$DefaultSpanSizeLookup;->onPostMessage:Lo/createFullSpanItemFromEnd;

    .line 183
    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v3, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v15}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3, v4}, Lo/missCount;->onNavigationEvent(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 184
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v14}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 185
    invoke-virtual {v1, v13}, Lo/createFullSpanItemFromEnd;->setAlpha(F)V

    return-void

    .line 212
    :sswitch_1
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 213
    iget-object v1, v0, Lo/GridLayoutManager$DefaultSpanSizeLookup;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    invoke-static {v1, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    invoke-static {v1, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11017
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 214
    iget-object v1, v0, Lo/GridLayoutManager$DefaultSpanSizeLookup;->onPostMessage:Lo/createFullSpanItemFromEnd;

    invoke-static {v1, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    invoke-static {v1, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12017
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 215
    iget-object v1, v0, Lo/GridLayoutManager$DefaultSpanSizeLookup;->onMessageChannelReady:Landroid/view/View;

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x3e4ccccd    # 0.2f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 216
    iget-object v1, v0, Lo/GridLayoutManager$DefaultSpanSizeLookup;->onMessageChannelReady:Landroid/view/View;

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v12}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13009
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    :sswitch_2
    const-string/jumbo v2, "subSection"

    .line 188
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 189
    iget-object v1, v0, Lo/GridLayoutManager$DefaultSpanSizeLookup;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    .line 190
    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v3, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v15}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x7f140368

    invoke-static {v2, v3, v4}, Lo/missCount;->onNavigationEvent(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 191
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v14}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x3f19999a    # 0.6f

    .line 192
    invoke-virtual {v1, v2}, Lo/createFullSpanItemFromEnd;->setAlpha(F)V

    .line 194
    iget-object v1, v0, Lo/GridLayoutManager$DefaultSpanSizeLookup;->onPostMessage:Lo/createFullSpanItemFromEnd;

    .line 195
    move-object v3, v1

    check-cast v3, Landroid/widget/TextView;

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v5, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v15}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v5, v4}, Lo/missCount;->onNavigationEvent(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 196
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v14}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 197
    invoke-virtual {v1, v2}, Lo/createFullSpanItemFromEnd;->setAlpha(F)V

    return-void

    :sswitch_3
    const-string v2, "header"

    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 163
    iget-object v1, v0, Lo/GridLayoutManager$DefaultSpanSizeLookup;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    .line 164
    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v3, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v15}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const v7, 0x7f140394

    invoke-static {v2, v3, v7}, Lo/missCount;->onNavigationEvent(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 165
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f06009b

    invoke-static {v2, v3}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 166
    invoke-virtual {v1, v2}, Lo/createFullSpanItemFromEnd;->setAlpha(F)V

    .line 9054
    iget-object v1, v8, Lo/computeHorizontalScrollOffset;->ICustomTabsCallback:Ljava/lang/CharSequence;

    if-eqz v1, :cond_9

    .line 168
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_8

    goto :goto_7

    :cond_8
    const/4 v10, 0x0

    goto :goto_8

    :cond_9
    :goto_7
    const/4 v10, 0x1

    :goto_8
    if-nez v10, :cond_a

    .line 169
    iget-object v1, v0, Lo/GridLayoutManager$DefaultSpanSizeLookup;->onPostMessage:Lo/createFullSpanItemFromEnd;

    invoke-static {v1, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    invoke-static {v1, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10017
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 170
    iget-object v1, v0, Lo/GridLayoutManager$DefaultSpanSizeLookup;->asInterface:Landroid/widget/TextView;

    invoke-static {v1, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10054
    iget-object v2, v8, Lo/computeHorizontalScrollOffset;->ICustomTabsCallback:Ljava/lang/CharSequence;

    .line 170
    invoke-static {v1, v2}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 171
    iget-object v1, v0, Lo/GridLayoutManager$DefaultSpanSizeLookup;->asInterface:Landroid/widget/TextView;

    new-instance v2, Lo/GridLayoutManager$DefaultSpanSizeLookup$ICustomTabsCallback;

    invoke-direct {v2, v0}, Lo/GridLayoutManager$DefaultSpanSizeLookup$ICustomTabsCallback;-><init>(Lo/GridLayoutManager$DefaultSpanSizeLookup;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :sswitch_4
    const-string v2, "footer"

    .line 200
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 201
    iget-object v1, v0, Lo/GridLayoutManager$DefaultSpanSizeLookup;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    .line 202
    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v3, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v15}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x7f140391

    invoke-static {v2, v3, v4}, Lo/missCount;->onNavigationEvent(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 203
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v14}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 204
    invoke-virtual {v1, v13}, Lo/createFullSpanItemFromEnd;->setAlpha(F)V

    .line 206
    iget-object v1, v0, Lo/GridLayoutManager$DefaultSpanSizeLookup;->onPostMessage:Lo/createFullSpanItemFromEnd;

    .line 207
    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v3, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v15}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3, v4}, Lo/missCount;->onNavigationEvent(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 208
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v14}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 209
    invoke-virtual {v1, v13}, Lo/createFullSpanItemFromEnd;->setAlpha(F)V

    :cond_a
    :goto_9
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4ba14a65 -> :sswitch_4
        -0x48cb1d73 -> :sswitch_3
        0x1d1fd085 -> :sswitch_2
        0x63cc1319 -> :sswitch_1
        0x756f7ee5 -> :sswitch_0
    .end sparse-switch
.end method
