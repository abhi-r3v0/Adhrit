.class public final Lo/onViewRecycled;
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
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J \u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\r\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0008\u0010\u0015\u001a\u00020\u000cH\u0002J\u0008\u0010\u0016\u001a\u00020\u000cH\u0002J\u0018\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\r\u001a\u00020\u0012H\u0002J\u0010\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0010\u0010\u001b\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0018\u0010\u001c\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\r\u001a\u00020\u0012H\u0002J\u0010\u0010\u001d\u001a\u00020\u000c2\u0006\u0010\u001e\u001a\u00020\u001aH\u0002R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/trophyroom/winnings/TrophyWinType1Holder;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "binding",
        "Lcom/dreamplug/androidapp/databinding/ItemTrophyWinType1Binding;",
        "roundedButtonBackground",
        "Landroid/graphics/drawable/PaintDrawable;",
        "bind",
        "",
        "item",
        "Lcom/dreamplug/utils/list/ListItem;",
        "onCopyCodeClicked",
        "winVoucherSection",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinVoucherSection;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/trophyroom/WinTypeCardsItem;",
        "view",
        "Landroid/view/View;",
        "setExpiresView",
        "setLoaderView",
        "setRewardDetailsUi",
        "setWinSectionButtonView",
        "text",
        "",
        "setWinSectionDisplayView",
        "setWinSectionDisplayWithCopyView",
        "updateMode",
        "mode",
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
.field private final extraCallback:Lo/checkAppCompatTheme;

.field private onPostMessage:Landroid/graphics/drawable/PaintDrawable;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "parent"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$this$inflate"

    .line 35010
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35011
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0e01a4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const-string v2, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p2

    .line 33
    invoke-direct {v0, v1, v2}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    .line 36
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lo/onViewRecycled$5;

    invoke-direct {v2, v0}, Lo/onViewRecycled$5;-><init>(Lo/onViewRecycled;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0b00ac

    .line 35157
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_15

    const v2, 0x7f0b00f5

    .line 35162
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/cardview/widget/CardView;

    if-eqz v2, :cond_14

    const v2, 0x7f0b0138

    .line 35167
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lo/createFullSpanItemFromEnd;

    if-eqz v5, :cond_13

    const v2, 0x7f0b014b

    .line 35172
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lo/unScrap;

    if-eqz v6, :cond_12

    const v2, 0x7f0b015f

    .line 35177
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lo/setSpeed;

    if-eqz v7, :cond_11

    const v2, 0x7f0b026d

    .line 35182
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_10

    const v2, 0x7f0b0279

    .line 35187
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lo/onChildrenLoaded;

    if-eqz v9, :cond_f

    const v2, 0x7f0b027a

    .line 35192
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_e

    const v2, 0x7f0b030d

    .line 35197
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lo/createFullSpanItemFromEnd;

    if-eqz v11, :cond_d

    const v2, 0x7f0b031b

    .line 35202
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lo/hasStableIds;

    if-eqz v12, :cond_c

    const v2, 0x7f0b03fb

    .line 35207
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/applyOptions;

    if-eqz v2, :cond_b

    const v2, 0x7f0b056d

    .line 35212
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lo/setSpeed;

    if-eqz v13, :cond_a

    const v2, 0x7f0b056f

    .line 35217
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_9

    const v2, 0x7f0b060f

    .line 35222
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroidx/cardview/widget/CardView;

    if-eqz v15, :cond_8

    const v2, 0x7f0b07ae

    .line 35227
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lo/registerAdapterDataObserver;

    if-eqz v16, :cond_7

    const v2, 0x7f0b08b5

    .line 35232
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lo/createFullSpanItemFromEnd;

    if-eqz v17, :cond_6

    const v2, 0x7f0b099a

    .line 35237
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lo/createFullSpanItemFromEnd;

    if-eqz v18, :cond_5

    const v2, 0x7f0b099f

    .line 35242
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/onChildrenLoaded;

    if-eqz v2, :cond_4

    const v2, 0x7f0b09a0

    .line 35247
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Lo/createFullSpanItemFromEnd;

    if-eqz v19, :cond_3

    const v2, 0x7f0b09a2

    .line 35252
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_2

    const v2, 0x7f0b09a3

    .line 35257
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_1

    const v2, 0x7f0b09a4

    .line 35262
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Lo/onChildrenLoaded;

    if-eqz v22, :cond_0

    .line 35267
    new-instance v1, Lo/checkAppCompatTheme;

    move-object v3, v1

    invoke-direct/range {v3 .. v22}, Lo/checkAppCompatTheme;-><init>(Landroid/view/View;Lo/createFullSpanItemFromEnd;Lo/unScrap;Lo/setSpeed;Landroid/widget/TextView;Lo/onChildrenLoaded;Landroid/widget/TextView;Lo/createFullSpanItemFromEnd;Lo/hasStableIds;Lo/setSpeed;Landroid/widget/TextView;Landroidx/cardview/widget/CardView;Lo/registerAdapterDataObserver;Lo/createFullSpanItemFromEnd;Lo/createFullSpanItemFromEnd;Lo/createFullSpanItemFromEnd;Landroid/widget/TextView;Landroid/widget/TextView;Lo/onChildrenLoaded;)V

    const-string v2, "ItemTrophyWinType1Binding.bind(itemView)"

    .line 41
    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lo/onViewRecycled;->extraCallback:Lo/checkAppCompatTheme;

    return-void

    :cond_0
    const-string/jumbo v1, "voucherTypeDisplayCopy"

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "voucherTypeDisplay"

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "voucherTypeButton"

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "voucherTitle"

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "voucherSection"

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "voucherCode"

    goto :goto_0

    :cond_6
    const-string/jumbo v1, "title"

    goto :goto_0

    :cond_7
    const-string/jumbo v1, "slitView"

    goto :goto_0

    :cond_8
    const-string v1, "overlay"

    goto :goto_0

    :cond_9
    const-string v1, "merchantName"

    goto :goto_0

    :cond_a
    const-string v1, "merchantLogo"

    goto :goto_0

    :cond_b
    const-string v1, "guideline"

    goto :goto_0

    :cond_c
    const-string v1, "fadedBorder"

    goto :goto_0

    :cond_d
    const-string v1, "expires"

    goto :goto_0

    :cond_e
    const-string v1, "detailsText"

    goto :goto_0

    :cond_f
    const-string v1, "details"

    goto :goto_0

    :cond_10
    const-string v1, "description"

    goto :goto_0

    :cond_11
    const-string v1, "cardImage"

    goto :goto_0

    :cond_12
    const-string v1, "cardBackGroundView"

    goto :goto_0

    :cond_13
    const-string v1, "buttonCopyCode"

    goto :goto_0

    :cond_14
    const-string v1, "border"

    goto :goto_0

    :cond_15
    const-string v1, "backGroundView"

    .line 35273
    :goto_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final synthetic onPostMessage(Lo/onViewRecycled;)Lo/checkAppCompatTheme;
    .locals 0

    .line 32
    iget-object p0, p0, Lo/onViewRecycled;->extraCallback:Lo/checkAppCompatTheme;

    return-object p0
.end method

.method public static final synthetic onPostMessage(Lo/onViewRecycled;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinVoucherSection;Lo/RecyclerView$Adapter;Landroid/view/View;)V
    .locals 5

    .line 36170
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "clipboard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Landroid/content/ClipboardManager;

    .line 37096
    iget-object v2, p0, Lo/createOrientationHelpers;->onRelationshipValidationResult:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 36172
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    const-wide/16 v3, 0xa

    .line 38014
    invoke-static {v2, v3, v4}, Lo/addAllInternal;->onNavigationEvent(Landroid/content/Context;J)V

    const-string/jumbo v2, "text"

    .line 36173
    check-cast v2, Ljava/lang/CharSequence;

    .line 38076
    iget-object v3, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinVoucherSection;->onMessageChannelReady:Ljava/lang/String;

    .line 36173
    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    .line 36174
    invoke-virtual {v0, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 36175
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "itemView.context"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Code Copied"

    check-cast v1, Ljava/lang/CharSequence;

    const/16 v2, 0x50

    const/4 v3, 0x0

    .line 38168
    invoke-static {v0, v1, v2, v3}, Lo/setInflatedId;->onMessageChannelReady(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    const/4 v0, 0x1

    new-array v1, v0, [Lo/addWrite;

    .line 39014
    iget-object p2, p2, Lo/RecyclerView$Adapter;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;

    .line 39046
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;->ICustomTabsCallback:Ljava/lang/String;

    .line 40043
    new-instance v2, Lo/addWrite;

    const-string v4, "game_id"

    invoke-direct {v2, v4, p2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v3

    const-string p2, "pairs"

    .line 36176
    invoke-static {v1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40105
    new-instance p2, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(I)V

    check-cast p2, Ljava/util/Map;

    invoke-static {p2, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo v0, "trophy_room_voucher_copied"

    .line 36176
    invoke-static {v0, p2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 41077
    iget-object p2, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinVoucherSection;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    if-eqz p2, :cond_2

    .line 36180
    iget-object p2, p0, Lo/onViewRecycled;->extraCallback:Lo/checkAppCompatTheme;

    iget-object p2, p2, Lo/checkAppCompatTheme;->extraCallback:Lo/createFullSpanItemFromEnd;

    const-string v0, "binding.buttonCopyCode"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "cta"

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 36181
    new-instance p2, Landroid/animation/LayoutTransition;

    invoke-direct {p2}, Landroid/animation/LayoutTransition;-><init>()V

    const/4 v1, 0x4

    .line 36182
    invoke-virtual {p2, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 36183
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    if-eqz p3, :cond_1

    check-cast p3, Landroid/view/ViewGroup;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 36184
    iget-object p0, p0, Lo/onViewRecycled;->extraCallback:Lo/checkAppCompatTheme;

    iget-object p0, p0, Lo/checkAppCompatTheme;->extraCallback:Lo/createFullSpanItemFromEnd;

    invoke-static {p0, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42077
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinVoucherSection;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    .line 43052
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;->onPostMessage:Ljava/lang/String;

    .line 36184
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 36183
    :cond_1
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-void

    .line 36170
    :cond_3
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.content.ClipboardManager"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "item"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v2, Landroid/graphics/drawable/PaintDrawable;

    const/high16 v3, -0x1000000

    invoke-direct {v2, v3}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    .line 1021
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "Resources.getSystem()"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/4 v5, 0x1

    const/high16 v6, 0x41a80000    # 21.0f

    .line 1022
    invoke-static {v5, v6, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    .line 46
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadius(F)V

    iput-object v2, v0, Lo/onViewRecycled;->onPostMessage:Landroid/graphics/drawable/PaintDrawable;

    .line 47
    iget-object v2, v0, Lo/onViewRecycled;->extraCallback:Lo/checkAppCompatTheme;

    .line 48
    instance-of v3, v1, Lo/RecyclerView$Adapter;

    if-eqz v3, :cond_2a

    .line 49
    check-cast v1, Lo/RecyclerView$Adapter;

    .line 2014
    iget-object v3, v1, Lo/RecyclerView$Adapter;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;

    .line 2051
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    .line 2057
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;->onPostMessage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v3, v6

    :goto_0
    const-string/jumbo v7, "win_type_loader"

    .line 49
    invoke-static {v3, v7}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 50
    iget-object v7, v2, Lo/checkAppCompatTheme;->ICustomTabsCallback:Lo/setSpeed;

    const-string v8, "cardImage"

    invoke-static {v7, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/view/View;

    if-eqz v3, :cond_1

    const/4 v10, 0x0

    goto :goto_1

    :cond_1
    const/16 v10, 0x8

    .line 211
    :goto_1
    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 51
    iget-object v7, v2, Lo/checkAppCompatTheme;->warmup:Landroidx/cardview/widget/CardView;

    const-string v10, "overlay"

    invoke-static {v7, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/view/View;

    const/4 v10, 0x4

    if-eqz v3, :cond_2

    const/4 v11, 0x4

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    .line 213
    :goto_2
    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-object v7, v2, Lo/checkAppCompatTheme;->asBinder:Lo/onChildrenLoaded;

    const-string v11, "details"

    invoke-static {v7, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/view/View;

    if-eqz v3, :cond_3

    const/4 v11, 0x4

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    .line 215
    :goto_3
    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 53
    iget-object v7, v2, Lo/checkAppCompatTheme;->onMessageChannelReady:Landroid/view/View;

    const-string v11, "backGroundView"

    invoke-static {v7, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_4

    const/4 v12, 0x4

    goto :goto_4

    :cond_4
    const/4 v12, 0x0

    .line 217
    :goto_4
    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 54
    iget-object v7, v2, Lo/checkAppCompatTheme;->onPostMessage:Lo/unScrap;

    const-string v12, "cardBackGroundView"

    invoke-static {v7, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/view/View;

    if-eqz v3, :cond_5

    goto :goto_5

    :cond_5
    const/4 v10, 0x0

    .line 219
    :goto_5
    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    if-eqz v3, :cond_6

    .line 2097
    iget-object v1, v0, Lo/onViewRecycled;->extraCallback:Lo/checkAppCompatTheme;

    iget-object v1, v1, Lo/checkAppCompatTheme;->ICustomTabsCallback:Lo/setSpeed;

    const-string v2, "binding.cardImage"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v3, "binding.cardImage.layoutParams"

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const v4, 0x438c8000    # 281.0f

    .line 3010
    invoke-static {v5, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    .line 2098
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2099
    iget-object v3, v0, Lo/onViewRecycled;->extraCallback:Lo/checkAppCompatTheme;

    iget-object v3, v3, Lo/checkAppCompatTheme;->ICustomTabsCallback:Lo/setSpeed;

    invoke-static {v3, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2100
    iget-object v1, v0, Lo/onViewRecycled;->extraCallback:Lo/checkAppCompatTheme;

    iget-object v1, v1, Lo/checkAppCompatTheme;->ICustomTabsCallback:Lo/setSpeed;

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v3, "itemView"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08042f

    invoke-static {v2, v3}, Lo/fromParcel;->onPostMessage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/setSpeed;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 58
    :cond_6
    iget-object v3, v2, Lo/checkAppCompatTheme;->ICustomTabsService:Lo/registerAdapterDataObserver;

    .line 3014
    iget-object v7, v1, Lo/RecyclerView$Adapter;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;

    .line 3051
    iget-object v7, v7, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;

    if-eqz v7, :cond_7

    .line 3066
    iget-object v7, v7, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;

    if-eqz v7, :cond_7

    .line 3078
    iget-object v7, v7, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;->onMessageChannelReady:Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;

    if-eqz v7, :cond_7

    .line 4039
    iget-object v7, v7, Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;->ICustomTabsCallback:Ljava/util/List;

    goto :goto_6

    :cond_7
    move-object v7, v6

    :goto_6
    if-nez v7, :cond_8

    .line 4070
    sget-object v7, Lo/getEventTarget;->extraCallback:Lo/getEventTarget;

    check-cast v7, Ljava/util/List;

    .line 58
    :cond_8
    invoke-virtual {v3, v7}, Lo/registerAdapterDataObserver;->setData(Ljava/util/List;)V

    .line 59
    iget-object v3, v2, Lo/checkAppCompatTheme;->onMessageChannelReady:Landroid/view/View;

    invoke-static {v3, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5014
    iget-object v7, v1, Lo/RecyclerView$Adapter;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;

    .line 5051
    iget-object v7, v7, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;

    if-eqz v7, :cond_9

    .line 5066
    iget-object v7, v7, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;

    if-eqz v7, :cond_9

    .line 5078
    iget-object v7, v7, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;->onMessageChannelReady:Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;

    goto :goto_7

    :cond_9
    move-object v7, v6

    .line 6021
    :goto_7
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v10, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    const/high16 v11, 0x41800000    # 16.0f

    .line 6022
    invoke-static {v5, v11, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    .line 59
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/4 v11, 0x5

    invoke-static {v7, v6, v10, v6, v11}, Lo/extraCallback;->onPostMessage(Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;Ljava/lang/String;Ljava/lang/Float;[FI)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 7014
    iget-object v3, v1, Lo/RecyclerView$Adapter;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;

    .line 7051
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;

    .line 61
    iget-object v7, v2, Lo/checkAppCompatTheme;->ICustomTabsCallback$Stub$Proxy:Lo/createFullSpanItemFromEnd;

    const-string/jumbo v10, "title"

    invoke-static {v7, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_a

    .line 7059
    iget-object v10, v3, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;->extraCallback:Lo/getTargetScrollPosition;

    if-eqz v10, :cond_a

    .line 8000
    iget-object v10, v10, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v10}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    goto :goto_8

    :cond_a
    move-object v10, v6

    .line 61
    :goto_8
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v7, v2, Lo/checkAppCompatTheme;->onRelationshipValidationResult:Lo/createFullSpanItemFromEnd;

    const-string v10, "expires"

    invoke-static {v7, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, ""

    if-eqz v3, :cond_b

    .line 8064
    iget-object v11, v3, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;->onRelationshipValidationResult:Lo/getTargetScrollPosition;

    if-eqz v11, :cond_b

    .line 9000
    iget-object v11, v11, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v11}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    if-nez v11, :cond_c

    .line 62
    :cond_b
    move-object v11, v10

    check-cast v11, Ljava/lang/CharSequence;

    :cond_c
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v7, v2, Lo/checkAppCompatTheme;->onNavigationEvent:Landroid/widget/TextView;

    const-string v11, "description"

    invoke-static {v7, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_d

    .line 9060
    iget-object v11, v3, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;->onMessageChannelReady:Lo/getTargetScrollPosition;

    if-eqz v11, :cond_d

    .line 10000
    iget-object v11, v11, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v11}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    goto :goto_9

    :cond_d
    move-object v11, v6

    .line 63
    :goto_9
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v7, v2, Lo/checkAppCompatTheme;->newSession:Landroid/widget/TextView;

    const-string v11, "merchantName"

    invoke-static {v7, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_e

    .line 10058
    iget-object v12, v3, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;->ICustomTabsCallback:Lo/getTargetScrollPosition;

    if-eqz v12, :cond_e

    .line 11000
    iget-object v12, v12, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v12}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    goto :goto_a

    :cond_e
    move-object v12, v6

    .line 64
    :goto_a
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v7, v2, Lo/checkAppCompatTheme;->asInterface:Lo/hasStableIds;

    iget-object v12, v2, Lo/checkAppCompatTheme;->newSession:Landroid/widget/TextView;

    invoke-static {v12, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v12

    iget-object v13, v2, Lo/checkAppCompatTheme;->newSession:Landroid/widget/TextView;

    invoke-static {v13, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v11

    invoke-virtual {v7, v11}, Lo/hasStableIds;->setTextWidth(F)V

    .line 11014
    iget-object v7, v1, Lo/RecyclerView$Adapter;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;

    .line 11051
    iget-object v7, v7, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;

    if-eqz v7, :cond_14

    .line 11062
    iget-object v12, v7, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;->onNavigationEvent:Ljava/lang/String;

    if-eqz v12, :cond_14

    .line 69
    iget-object v11, v2, Lo/checkAppCompatTheme;->onTransact:Lo/setSpeed;

    const-string v7, "merchantLogo"

    invoke-static {v11, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x3e

    invoke-static/range {v11 .. v18}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 70
    iget-object v11, v2, Lo/checkAppCompatTheme;->onTransact:Lo/setSpeed;

    invoke-static {v11, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11116
    iget-object v7, v11, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 11216
    iget-object v7, v7, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    if-eqz v7, :cond_13

    check-cast v7, Lo/setMaxFrame;

    .line 70
    check-cast v7, Lo/getComposition;

    const-string v11, "merchantLogo.hierarchy"

    invoke-static {v7, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v11, Lo/onRequestPermissionsResult;->onMessageChannelReady:Lo/onRequestPermissionsResult;

    invoke-static {}, Lo/onRequestPermissionsResult;->onPostMessage()Lo/setFailureListener$extraCallback;

    move-result-object v11

    if-eqz v11, :cond_12

    const/4 v12, 0x2

    .line 13369
    invoke-virtual {v7, v12}, Lo/getComposition;->onPostMessage(I)Lo/LottieAnimationView;

    move-result-object v7

    .line 13370
    instance-of v12, v7, Lo/fromAssets;

    if-eqz v12, :cond_f

    .line 13371
    check-cast v7, Lo/fromAssets;

    goto :goto_b

    .line 13373
    :cond_f
    sget-object v12, Lo/setFailureListener$extraCallback;->onTransact:Lo/setFailureListener$extraCallback;

    invoke-static {v7, v12}, Lo/playAnimation;->onMessageChannelReady(Lo/LottieAnimationView;Lo/setFailureListener$extraCallback;)Lo/fromAssets;

    move-result-object v7

    .line 14094
    :goto_b
    iget-object v12, v7, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    if-eq v12, v11, :cond_11

    if-eqz v12, :cond_10

    .line 15053
    invoke-virtual {v12, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    goto :goto_c

    :cond_10
    const/4 v12, 0x0

    goto :goto_d

    :cond_11
    :goto_c
    const/4 v12, 0x1

    :goto_d
    if-nez v12, :cond_14

    .line 14098
    iput-object v11, v7, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    .line 14099
    iput-object v6, v7, Lo/fromAssets;->extraCallback:Ljava/lang/Object;

    .line 14100
    invoke-virtual {v7}, Lo/fromAssets;->ICustomTabsCallback()V

    .line 14101
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_e

    .line 13215
    :cond_12
    throw v6

    .line 12215
    :cond_13
    throw v6

    .line 16014
    :cond_14
    :goto_e
    iget-object v7, v1, Lo/RecyclerView$Adapter;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;

    .line 16047
    iget-object v7, v7, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    if-eqz v7, :cond_15

    .line 16052
    iget-object v7, v7, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;->onPostMessage:Ljava/lang/String;

    goto :goto_f

    :cond_15
    move-object v7, v6

    :goto_f
    const-string v11, "detailsText"

    if-eqz v7, :cond_16

    .line 75
    iget-object v12, v2, Lo/checkAppCompatTheme;->ICustomTabsCallback$Stub:Landroid/widget/TextView;

    invoke-static {v12, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v7, v2, Lo/checkAppCompatTheme;->ICustomTabsCallback$Stub:Landroid/widget/TextView;

    new-instance v12, Lo/onViewRecycled$onPostMessage;

    invoke-direct {v12, v0}, Lo/onViewRecycled$onPostMessage;-><init>(Lo/onViewRecycled;)V

    check-cast v12, Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_16
    const-string v7, "dark"

    if-eqz v3, :cond_17

    .line 16066
    iget-object v12, v3, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;

    if-eqz v12, :cond_17

    .line 16080
    iget-object v12, v12, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;->onPostMessage:Ljava/lang/String;

    if-nez v12, :cond_18

    :cond_17
    move-object v12, v7

    .line 16190
    :cond_18
    iget-object v13, v0, Lo/onViewRecycled;->extraCallback:Lo/checkAppCompatTheme;

    .line 16192
    invoke-static {v12, v7}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const-string v12, "$this$getCompatColor"

    const-string/jumbo v14, "voucherTypeDisplayCopy"

    const-string v15, "$this$getCompatDrawable"

    const-string v6, "context"

    if-eqz v7, :cond_19

    .line 16193
    iget-object v7, v13, Lo/checkAppCompatTheme;->requestPostMessageChannel:Lo/onChildrenLoaded;

    invoke-static {v7, v14}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17096
    iget-object v9, v0, Lo/createOrientationHelpers;->onRelationshipValidationResult:Landroid/content/Context;

    .line 16193
    invoke-static {v9, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v15}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const v8, 0x7f0801fa

    .line 18021
    invoke-static {v9, v8}, Lo/fromParcel;->onPostMessage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 16193
    invoke-virtual {v7, v8}, Lo/onChildrenLoaded;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 18096
    iget-object v7, v0, Lo/createOrientationHelpers;->onRelationshipValidationResult:Landroid/content/Context;

    .line 16194
    invoke-static {v7, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v12}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const v8, 0x7f060220

    .line 19019
    invoke-static {v7, v8}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v7

    .line 16195
    iget-object v8, v13, Lo/checkAppCompatTheme;->ICustomTabsCallback$Stub:Landroid/widget/TextView;

    invoke-static {v8, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19096
    iget-object v9, v0, Lo/createOrientationHelpers;->onRelationshipValidationResult:Landroid/content/Context;

    .line 16195
    invoke-static {v9, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v15}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const v6, 0x7f0801fe

    .line 20021
    invoke-static {v9, v6}, Lo/fromParcel;->onPostMessage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 16195
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_10

    .line 20096
    :cond_19
    iget-object v7, v0, Lo/createOrientationHelpers;->onRelationshipValidationResult:Landroid/content/Context;

    .line 16197
    invoke-static {v7, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v12}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const v8, 0x7f0600c6

    .line 21019
    invoke-static {v7, v8}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v7

    .line 16198
    iget-object v8, v13, Lo/checkAppCompatTheme;->requestPostMessageChannel:Lo/onChildrenLoaded;

    invoke-static {v8, v14}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21096
    iget-object v9, v0, Lo/createOrientationHelpers;->onRelationshipValidationResult:Landroid/content/Context;

    .line 16198
    invoke-static {v9, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v15}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const v12, 0x7f0801f9

    .line 22021
    invoke-static {v9, v12}, Lo/fromParcel;->onPostMessage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 16198
    invoke-virtual {v8, v9}, Lo/onChildrenLoaded;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 16199
    iget-object v8, v13, Lo/checkAppCompatTheme;->ICustomTabsCallback$Stub:Landroid/widget/TextView;

    invoke-static {v8, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22096
    iget-object v9, v0, Lo/createOrientationHelpers;->onRelationshipValidationResult:Landroid/content/Context;

    .line 16199
    invoke-static {v9, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v15}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const v6, 0x7f0801fc

    .line 23021
    invoke-static {v9, v6}, Lo/fromParcel;->onPostMessage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 16199
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 16202
    :goto_10
    iget-object v6, v13, Lo/checkAppCompatTheme;->newSession:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 16203
    iget-object v6, v13, Lo/checkAppCompatTheme;->ICustomTabsCallback$Stub$Proxy:Lo/createFullSpanItemFromEnd;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 16204
    iget-object v6, v13, Lo/checkAppCompatTheme;->onNavigationEvent:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 16205
    iget-object v6, v13, Lo/checkAppCompatTheme;->extraCommand:Lo/createFullSpanItemFromEnd;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 16206
    iget-object v6, v13, Lo/checkAppCompatTheme;->getInterfaceDescriptor:Lo/createFullSpanItemFromEnd;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 16207
    iget-object v6, v13, Lo/checkAppCompatTheme;->ICustomTabsCallback$Stub:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    iget-object v2, v2, Lo/checkAppCompatTheme;->postMessage:Landroid/widget/TextView;

    const-string/jumbo v6, "voucherTypeDisplay"

    invoke-static {v2, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Landroid/graphics/drawable/PaintDrawable;

    const-string v8, "#33000000"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    .line 24021
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    const/high16 v9, 0x40a00000    # 5.0f

    .line 24022
    invoke-static {v5, v9, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    .line 85
    invoke-virtual {v7, v8}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadius(F)V

    .line 84
    check-cast v7, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 24104
    iget-object v2, v0, Lo/onViewRecycled;->extraCallback:Lo/checkAppCompatTheme;

    iget-object v2, v2, Lo/checkAppCompatTheme;->onRelationshipValidationResult:Lo/createFullSpanItemFromEnd;

    const-string v7, "binding.expires"

    invoke-static {v2, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Landroid/graphics/drawable/PaintDrawable;

    .line 25096
    iget-object v11, v0, Lo/createOrientationHelpers;->onRelationshipValidationResult:Landroid/content/Context;

    const v12, 0x7f060225

    .line 24104
    invoke-static {v11, v12}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v11

    invoke-direct {v8, v11}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    .line 26021
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    invoke-static {v11, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 26022
    invoke-static {v5, v9, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    .line 24105
    invoke-virtual {v8, v4}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadius(F)V

    .line 24104
    check-cast v8, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v8}, Lo/createFullSpanItemFromEnd;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 24108
    iget-object v2, v0, Lo/onViewRecycled;->extraCallback:Lo/checkAppCompatTheme;

    iget-object v2, v2, Lo/checkAppCompatTheme;->onRelationshipValidationResult:Lo/createFullSpanItemFromEnd;

    invoke-static {v2, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v4, "binding.expires.text"

    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1a

    const/4 v2, 0x1

    goto :goto_11

    :cond_1a
    const/4 v2, 0x0

    :goto_11
    if-eqz v2, :cond_1b

    .line 24109
    iget-object v2, v0, Lo/onViewRecycled;->extraCallback:Lo/checkAppCompatTheme;

    iget-object v2, v2, Lo/checkAppCompatTheme;->onRelationshipValidationResult:Lo/createFullSpanItemFromEnd;

    invoke-static {v2, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    const-string v4, "$this$gone"

    invoke-static {v2, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x8

    .line 27017
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    const/4 v7, 0x0

    goto :goto_12

    :cond_1b
    const/16 v4, 0x8

    .line 24111
    iget-object v2, v0, Lo/onViewRecycled;->extraCallback:Lo/checkAppCompatTheme;

    iget-object v2, v2, Lo/checkAppCompatTheme;->onRelationshipValidationResult:Lo/createFullSpanItemFromEnd;

    invoke-static {v2, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    const-string v7, "$this$visible"

    invoke-static {v2, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 28009
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    :goto_12
    if-eqz v3, :cond_2a

    .line 28065
    iget-object v2, v3, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;->ICustomTabsCallback$Stub:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinVoucherSection;

    if-eqz v2, :cond_2a

    .line 28116
    iget-object v3, v0, Lo/onViewRecycled;->extraCallback:Lo/checkAppCompatTheme;

    .line 28117
    iget-object v8, v3, Lo/checkAppCompatTheme;->requestPostMessageChannel:Lo/onChildrenLoaded;

    invoke-static {v8, v14}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/view/View;

    .line 29079
    iget-object v9, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinVoucherSection;->extraCallback:Ljava/lang/String;

    const-string v11, "display_w_copy"

    invoke-static {v9, v11}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c

    const/4 v9, 0x0

    goto :goto_13

    :cond_1c
    const/16 v9, 0x8

    .line 28221
    :goto_13
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 28118
    iget-object v8, v3, Lo/checkAppCompatTheme;->postMessage:Landroid/widget/TextView;

    invoke-static {v8, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/view/View;

    .line 29081
    iget-object v6, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinVoucherSection;->extraCallback:Ljava/lang/String;

    const-string v9, "display"

    invoke-static {v6, v9}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    const/4 v6, 0x0

    goto :goto_14

    :cond_1d
    const/16 v6, 0x8

    .line 28223
    :goto_14
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 28119
    iget-object v3, v3, Lo/checkAppCompatTheme;->mayLaunchUrl:Landroid/widget/TextView;

    const-string/jumbo v6, "voucherTypeButton"

    invoke-static {v3, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/View;

    .line 29083
    iget-object v8, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinVoucherSection;->extraCallback:Ljava/lang/String;

    const-string v9, "button"

    invoke-static {v8, v9}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    const/4 v8, 0x0

    goto :goto_15

    :cond_1e
    const/16 v8, 0x8

    .line 28225
    :goto_15
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 30079
    iget-object v3, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinVoucherSection;->extraCallback:Ljava/lang/String;

    const-string v8, "display_w_copy"

    invoke-static {v3, v8}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 30148
    iget-object v3, v0, Lo/onViewRecycled;->extraCallback:Lo/checkAppCompatTheme;

    .line 31014
    iget-object v4, v1, Lo/RecyclerView$Adapter;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;

    .line 31051
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;

    if-eqz v4, :cond_1f

    .line 31065
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;->ICustomTabsCallback$Stub:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinVoucherSection;

    goto :goto_16

    :cond_1f
    const/4 v4, 0x0

    .line 30150
    :goto_16
    iget-object v5, v3, Lo/checkAppCompatTheme;->extraCallback:Lo/createFullSpanItemFromEnd;

    const-string v6, "buttonCopyCode"

    invoke-static {v5, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "copy_code"

    invoke-virtual {v5, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 30151
    iget-object v5, v3, Lo/checkAppCompatTheme;->extraCallback:Lo/createFullSpanItemFromEnd;

    invoke-static {v5, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v7, 0x7f13012b

    invoke-static {v7}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30152
    iget-object v5, v3, Lo/checkAppCompatTheme;->extraCommand:Lo/createFullSpanItemFromEnd;

    const-string/jumbo v7, "voucherTitle"

    invoke-static {v5, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v4, :cond_20

    .line 31075
    iget-object v7, v4, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinVoucherSection;->onPostMessage:Ljava/lang/String;

    goto :goto_17

    :cond_20
    const/4 v7, 0x0

    .line 30152
    :goto_17
    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30153
    iget-object v5, v3, Lo/checkAppCompatTheme;->getInterfaceDescriptor:Lo/createFullSpanItemFromEnd;

    const-string/jumbo v7, "voucherCode"

    invoke-static {v5, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v4, :cond_21

    .line 31076
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinVoucherSection;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_18

    :cond_21
    const/4 v4, 0x0

    .line 30153
    :goto_18
    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30154
    iget-object v4, v3, Lo/checkAppCompatTheme;->extraCallback:Lo/createFullSpanItemFromEnd;

    invoke-static {v4, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v0, Lo/onViewRecycled;->onPostMessage:Landroid/graphics/drawable/PaintDrawable;

    if-nez v5, :cond_22

    const-string/jumbo v7, "roundedButtonBackground"

    invoke-static {v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_22
    check-cast v5, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Lo/createFullSpanItemFromEnd;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 30155
    iget-object v4, v3, Lo/checkAppCompatTheme;->extraCallback:Lo/createFullSpanItemFromEnd;

    invoke-static {v4, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/view/View;

    new-instance v5, Lo/onViewRecycled$onNavigationEvent;

    invoke-direct {v5, v3, v0, v1, v2}, Lo/onViewRecycled$onNavigationEvent;-><init>(Lo/checkAppCompatTheme;Lo/onViewRecycled;Lo/RecyclerView$Adapter;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinVoucherSection;)V

    check-cast v5, Lo/onDisconnectSetValue;

    invoke-static {v4, v5}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    return-void

    .line 31081
    :cond_23
    iget-object v3, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinVoucherSection;->extraCallback:Ljava/lang/String;

    const-string v8, "display"

    invoke-static {v3, v8}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 31144
    iget-object v1, v0, Lo/onViewRecycled;->extraCallback:Lo/checkAppCompatTheme;

    iget-object v1, v1, Lo/checkAppCompatTheme;->postMessage:Landroid/widget/TextView;

    const-string v3, "binding.voucherTypeDisplay"

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32076
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinVoucherSection;->onMessageChannelReady:Ljava/lang/String;

    .line 31144
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 32083
    :cond_24
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinVoucherSection;->extraCallback:Ljava/lang/String;

    const-string v3, "button"

    invoke-static {v2, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 33014
    iget-object v1, v1, Lo/RecyclerView$Adapter;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;

    .line 33051
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;

    if-eqz v1, :cond_26

    .line 33065
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;->ICustomTabsCallback$Stub:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinVoucherSection;

    if-eqz v1, :cond_26

    .line 33077
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinVoucherSection;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    if-eqz v1, :cond_26

    .line 34052
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;->onPostMessage:Ljava/lang/String;

    if-nez v1, :cond_25

    goto :goto_19

    :cond_25
    move-object v10, v1

    .line 34133
    :cond_26
    :goto_19
    iget-object v1, v0, Lo/onViewRecycled;->extraCallback:Lo/checkAppCompatTheme;

    .line 34134
    iget-object v2, v1, Lo/checkAppCompatTheme;->mayLaunchUrl:Landroid/widget/TextView;

    invoke-static {v2, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34135
    iget-object v2, v1, Lo/checkAppCompatTheme;->mayLaunchUrl:Landroid/widget/TextView;

    invoke-static {v2, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_27

    goto :goto_1a

    :cond_27
    const/4 v5, 0x0

    :goto_1a
    if-eqz v5, :cond_28

    const/4 v8, 0x0

    goto :goto_1b

    :cond_28
    const/16 v8, 0x8

    .line 34227
    :goto_1b
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 34136
    iget-object v2, v1, Lo/checkAppCompatTheme;->mayLaunchUrl:Landroid/widget/TextView;

    invoke-static {v2, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lo/onViewRecycled;->onPostMessage:Landroid/graphics/drawable/PaintDrawable;

    if-nez v3, :cond_29

    const-string/jumbo v4, "roundedButtonBackground"

    invoke-static {v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_29
    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 34137
    iget-object v1, v1, Lo/checkAppCompatTheme;->mayLaunchUrl:Landroid/widget/TextView;

    invoke-static {v1, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    new-instance v2, Lo/onViewRecycled$ICustomTabsCallback;

    invoke-direct {v2, v0}, Lo/onViewRecycled$ICustomTabsCallback;-><init>(Lo/onViewRecycled;)V

    check-cast v2, Lo/onDisconnectSetValue;

    invoke-static {v1, v2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    :cond_2a
    return-void
.end method
