.class public final Lo/onAnimationStarted;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onAnimationStarted$onMessageChannelReady;,
        Lo/onAnimationStarted$extraCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
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
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0003\u0018\u0000 \u00192\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0019\u001aB\u000f\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\rH\u0016J\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\rH\u0016J\u0018\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\rH\u0016J\u0016\u0010\u0017\u001a\u00020\u00112\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0018R\u001e\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\u00080\u0007j\u0008\u0012\u0004\u0012\u00020\u0008`\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/main/remotecontrol/RCTemplateAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "onItemClickListener",
        "Lcom/dreamplug/fabrik/ui/main/remotecontrol/RCTemplateAdapter$OnItemClickListener;",
        "(Lcom/dreamplug/fabrik/ui/main/remotecontrol/RCTemplateAdapter$OnItemClickListener;)V",
        "listItems",
        "Ljava/util/ArrayList;",
        "Lcom/dreamplug/utils/list/ListItem;",
        "Lkotlin/collections/ArrayList;",
        "getOnItemClickListener",
        "()Lcom/dreamplug/fabrik/ui/main/remotecontrol/RCTemplateAdapter$OnItemClickListener;",
        "getItemCount",
        "",
        "getItemViewType",
        "position",
        "onBindViewHolder",
        "",
        "holder",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "setData",
        "",
        "Companion",
        "OnItemClickListener",
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
.field private final ICustomTabsCallback:Lo/onAnimationStarted$onMessageChannelReady;

.field final onMessageChannelReady:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/StaggeredGridLayoutManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/onAnimationStarted$onMessageChannelReady;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lo/onAnimationStarted;->ICustomTabsCallback:Lo/onAnimationStarted$onMessageChannelReady;

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/onAnimationStarted;->onMessageChannelReady:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 2

    .line 58
    iget-object v0, p0, Lo/onAnimationStarted;->onMessageChannelReady:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return v1

    .line 59
    :cond_2
    iget-object v0, p0, Lo/onAnimationStarted;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method

.method public final getItemViewType(I)I
    .locals 3

    .line 41
    iget-object v0, p0, Lo/onAnimationStarted;->onMessageChannelReady:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/4 v2, -0x1

    if-nez v0, :cond_5

    if-ne p1, v2, :cond_2

    goto :goto_3

    .line 42
    :cond_2
    iget-object v0, p0, Lo/onAnimationStarted;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;

    .line 1032
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;->onPostMessage:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string v0, "rc3"

    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x3

    return p1

    :pswitch_1
    const-string v0, "rc2"

    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    return p1

    :pswitch_2
    const-string v0, "rc1"

    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    :goto_2
    return v2

    .line 42
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.dreamplug.fabrik.ui.main.remotecontrol.RemoteControlCard"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_3
    return v2

    :pswitch_data_0
    .packed-switch 0x1b820
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "holder"

    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v3

    const-string v4, "itemView"

    const/high16 v9, 0x3f800000    # 1.0f

    const-string v10, "image"

    const-string v11, "item"

    const-string v12, "listItems[position]"

    const-string v13, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    const-string v14, "Resources.getSystem()"

    const-string/jumbo v15, "text_2"

    const-string/jumbo v6, "text_1"

    const/4 v5, 0x1

    const/4 v7, 0x0

    if-eq v3, v5, :cond_15

    const/4 v8, 0x2

    if-eq v3, v8, :cond_9

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    goto/16 :goto_4

    .line 76
    :cond_0
    check-cast v1, Lo/animatePersistence;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 77
    check-cast v1, Lo/animatePersistence;

    iget-object v3, v0, Lo/onAnimationStarted;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lo/StaggeredGridLayoutManager;

    invoke-static {v2, v11}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20175
    instance-of v3, v2, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;

    if-eqz v3, :cond_8

    .line 20177
    iget-object v3, v1, Lo/animatePersistence;->extraCallback:Landroidx/appcompat/widget/AppCompatTextView;

    move-object v4, v2

    check-cast v4, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;

    .line 21034
    iget-object v8, v4, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/main/remotecontrol/TemplateProperties;

    .line 21052
    iget-object v8, v8, Lcom/dreamplug/fabrik/ui/main/remotecontrol/TemplateProperties;->onMessageChannelReady:Ljava/util/Map;

    if-eqz v8, :cond_1

    .line 20177
    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/getTargetScrollPosition;

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20178
    iget-object v3, v1, Lo/animatePersistence;->onMessageChannelReady:Lo/setSpeed;

    .line 22034
    iget-object v6, v4, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/main/remotecontrol/TemplateProperties;

    .line 22052
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/main/remotecontrol/TemplateProperties;->onMessageChannelReady:Ljava/util/Map;

    if-eqz v6, :cond_2

    .line 20178
    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/getTargetScrollPosition;

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x3e

    move-object/from16 v17, v3

    invoke-static/range {v17 .. v24}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 20179
    iget-object v3, v1, Lo/animatePersistence;->onPostMessage:Lo/setSpeed;

    .line 23034
    iget-object v6, v4, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/main/remotecontrol/TemplateProperties;

    .line 23052
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/main/remotecontrol/TemplateProperties;->onMessageChannelReady:Ljava/util/Map;

    if-eqz v6, :cond_3

    const-string v8, "arrow"

    .line 20179
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lo/getTargetScrollPosition;

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    :goto_2
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x3e

    move-object/from16 v25, v3

    invoke-static/range {v25 .. v32}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 24034
    iget-object v3, v4, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/main/remotecontrol/TemplateProperties;

    .line 25067
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/main/remotecontrol/TemplateProperties;->ICustomTabsService:Lcom/dreamplug/fabrik/ui/main/remotecontrol/Badge;

    if-nez v3, :cond_4

    .line 24190
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 26000
    :cond_4
    iget-object v4, v3, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Badge;->onPostMessage:Lo/getTargetScrollPosition;

    .line 27000
    iget-object v6, v3, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Badge;->ICustomTabsCallback:Ljava/lang/String;

    .line 28000
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Badge;->onNavigationEvent:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 24192
    iget-object v8, v1, Lo/animatePersistence;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    .line 24193
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 24194
    iget-object v7, v1, Lo/animatePersistence;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    if-eqz v7, :cond_5

    check-cast v7, Lo/onChildrenLoaded$onPostMessage;

    .line 28009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v10, v14}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    const/high16 v11, 0x41000000    # 8.0f

    .line 28010
    invoke-static {v5, v11, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    float-to-int v10, v10

    .line 24195
    invoke-virtual {v7, v10}, Lo/onChildrenLoaded$onPostMessage;->setMarginEnd(I)V

    .line 29009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v10, v14}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 29010
    invoke-static {v5, v11, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    float-to-int v10, v10

    .line 24196
    invoke-virtual {v7, v10}, Lo/onChildrenLoaded$onPostMessage;->setMarginStart(I)V

    .line 24197
    move-object/from16 v16, v8

    check-cast v16, Landroid/view/View;

    .line 30009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v14}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 30010
    invoke-static {v5, v9, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    .line 24197
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    const/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x72

    move-object/from16 v17, v6

    move-object/from16 v19, v3

    invoke-static/range {v16 .. v23}, Lo/missCount;->onNavigationEvent(Landroid/view/View;Ljava/lang/String;FLjava/lang/String;Ljava/lang/Float;[FLjava/lang/Integer;I)V

    .line 24198
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 24194
    :cond_5
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v13}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 24201
    :cond_6
    iget-object v3, v1, Lo/animatePersistence;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_7

    check-cast v3, Lo/onChildrenLoaded$onPostMessage;

    .line 24202
    invoke-virtual {v3, v7}, Lo/onChildrenLoaded$onPostMessage;->setMarginEnd(I)V

    .line 24203
    invoke-virtual {v3, v7}, Lo/onChildrenLoaded$onPostMessage;->setMarginStart(I)V

    .line 24204
    iget-object v3, v1, Lo/animatePersistence;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 20182
    :goto_3
    iget-object v3, v1, Lo/animatePersistence;->ICustomTabsCallback:Lo/onChildrenLoaded;

    check-cast v3, Landroid/view/View;

    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Lo/animatePersistence$ICustomTabsCallback;

    invoke-direct {v5, v1, v2}, Lo/animatePersistence$ICustomTabsCallback;-><init>(Lo/animatePersistence;Lo/StaggeredGridLayoutManager;)V

    check-cast v5, Lo/onDisconnectSetValue;

    invoke-static {v3, v4, v5}, Lo/extraCallback;->onMessageChannelReady(Landroid/view/View;Ljava/lang/Long;Lo/onDisconnectSetValue;)V

    goto :goto_4

    .line 24201
    :cond_7
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v13}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    :goto_4
    return-void

    .line 71
    :cond_9
    check-cast v1, Lo/dispatchAnimationFinished;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 72
    check-cast v1, Lo/dispatchAnimationFinished;

    iget-object v3, v0, Lo/onAnimationStarted;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lo/StaggeredGridLayoutManager;

    invoke-static {v2, v11}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10110
    instance-of v3, v2, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;

    if-eqz v3, :cond_14

    .line 10111
    move-object v3, v2

    check-cast v3, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;

    .line 11034
    iget-object v8, v3, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/main/remotecontrol/TemplateProperties;

    .line 11052
    iget-object v8, v8, Lcom/dreamplug/fabrik/ui/main/remotecontrol/TemplateProperties;->onMessageChannelReady:Ljava/util/Map;

    .line 12034
    iget-object v11, v3, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/main/remotecontrol/TemplateProperties;

    .line 12067
    iget-object v11, v11, Lcom/dreamplug/fabrik/ui/main/remotecontrol/TemplateProperties;->ICustomTabsService:Lcom/dreamplug/fabrik/ui/main/remotecontrol/Badge;

    if-nez v11, :cond_a

    .line 10113
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 13000
    :cond_a
    iget-object v11, v11, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Badge;->onPostMessage:Lo/getTargetScrollPosition;

    .line 10115
    iget-object v12, v1, Lo/dispatchAnimationFinished;->onNavigationEvent:Lo/setSpeed;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    if-eqz v12, :cond_13

    check-cast v12, Lo/onChildrenLoaded$onPostMessage;

    if-nez v11, :cond_c

    if-eqz v8, :cond_b

    .line 10116
    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo/getTargetScrollPosition;

    goto :goto_5

    :cond_b
    const/4 v11, 0x0

    :goto_5
    if-nez v11, :cond_c

    const/high16 v11, 0x3f000000    # 0.5f

    .line 10117
    iput v11, v12, Lo/onChildrenLoaded$onPostMessage;->INotificationSideChannel:F

    goto :goto_6

    :cond_c
    const v11, 0x3dcccccd    # 0.1f

    .line 10119
    iput v11, v12, Lo/onChildrenLoaded$onPostMessage;->INotificationSideChannel:F

    .line 10121
    :goto_6
    iget-object v11, v1, Lo/dispatchAnimationFinished;->onNavigationEvent:Lo/setSpeed;

    check-cast v12, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v11, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10123
    iget-object v11, v1, Lo/dispatchAnimationFinished;->onPostMessage:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v8, :cond_d

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/getTargetScrollPosition;

    goto :goto_7

    :cond_d
    const/4 v6, 0x0

    :goto_7
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v8, :cond_e

    .line 10124
    invoke-interface {v8, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/getTargetScrollPosition;

    goto :goto_8

    :cond_e
    const/4 v6, 0x0

    :goto_8
    if-eqz v6, :cond_f

    .line 10125
    iget-object v6, v1, Lo/dispatchAnimationFinished;->onMessageChannelReady:Lo/createFullSpanItemFromEnd;

    .line 10126
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 15034
    iget-object v11, v3, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/main/remotecontrol/TemplateProperties;

    .line 15052
    iget-object v11, v11, Lcom/dreamplug/fabrik/ui/main/remotecontrol/TemplateProperties;->onMessageChannelReady:Ljava/util/Map;

    .line 10127
    invoke-interface {v11, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 10129
    :cond_f
    iget-object v6, v1, Lo/dispatchAnimationFinished;->onMessageChannelReady:Lo/createFullSpanItemFromEnd;

    const/16 v11, 0x8

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 10130
    :goto_9
    iget-object v6, v1, Lo/dispatchAnimationFinished;->onNavigationEvent:Lo/setSpeed;

    if-eqz v8, :cond_10

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo/getTargetScrollPosition;

    goto :goto_a

    :cond_10
    const/4 v8, 0x0

    :goto_a
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x3e

    move-object/from16 v17, v6

    invoke-static/range {v17 .. v24}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 16034
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/main/remotecontrol/TemplateProperties;

    .line 17067
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/main/remotecontrol/TemplateProperties;->ICustomTabsService:Lcom/dreamplug/fabrik/ui/main/remotecontrol/Badge;

    if-nez v3, :cond_11

    .line 16154
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 18000
    :cond_11
    iget-object v6, v3, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Badge;->onPostMessage:Lo/getTargetScrollPosition;

    .line 19000
    iget-object v8, v3, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Badge;->ICustomTabsCallback:Ljava/lang/String;

    .line 20000
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Badge;->onNavigationEvent:Ljava/lang/String;

    if-eqz v6, :cond_12

    .line 16156
    iget-object v10, v1, Lo/dispatchAnimationFinished;->extraCallback:Lo/createFullSpanItemFromEnd;

    .line 16157
    invoke-virtual {v10, v7}, Landroid/view/View;->setVisibility(I)V

    .line 16158
    move-object/from16 v16, v10

    check-cast v16, Landroid/view/View;

    .line 20009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v14}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 20010
    invoke-static {v5, v9, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    .line 16158
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    const/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x72

    move-object/from16 v17, v8

    move-object/from16 v19, v3

    invoke-static/range {v16 .. v23}, Lo/missCount;->onNavigationEvent(Landroid/view/View;Ljava/lang/String;FLjava/lang/String;Ljava/lang/Float;[FLjava/lang/Integer;I)V

    .line 16159
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 16161
    :cond_12
    iget-object v3, v1, Lo/dispatchAnimationFinished;->extraCallback:Lo/createFullSpanItemFromEnd;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 10133
    :goto_b
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Lo/dispatchAnimationFinished$extraCallback;

    invoke-direct {v5, v1, v2}, Lo/dispatchAnimationFinished$extraCallback;-><init>(Lo/dispatchAnimationFinished;Lo/StaggeredGridLayoutManager;)V

    check-cast v5, Lo/onDisconnectSetValue;

    invoke-static {v3, v4, v5}, Lo/extraCallback;->onMessageChannelReady(Landroid/view/View;Ljava/lang/Long;Lo/onDisconnectSetValue;)V

    goto :goto_c

    .line 10115
    :cond_13
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v13}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    :goto_c
    return-void

    .line 66
    :cond_15
    check-cast v1, Lo/recordPostLayoutInformation;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 67
    check-cast v1, Lo/recordPostLayoutInformation;

    iget-object v3, v0, Lo/onAnimationStarted;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lo/StaggeredGridLayoutManager;

    invoke-static {v2, v11}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1039
    instance-of v3, v2, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;

    if-eqz v3, :cond_21

    .line 1040
    move-object v3, v2

    check-cast v3, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;

    .line 2034
    iget-object v8, v3, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/main/remotecontrol/TemplateProperties;

    .line 2052
    iget-object v8, v8, Lcom/dreamplug/fabrik/ui/main/remotecontrol/TemplateProperties;->onMessageChannelReady:Ljava/util/Map;

    .line 3034
    iget-object v11, v3, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/main/remotecontrol/TemplateProperties;

    .line 3067
    iget-object v11, v11, Lcom/dreamplug/fabrik/ui/main/remotecontrol/TemplateProperties;->ICustomTabsService:Lcom/dreamplug/fabrik/ui/main/remotecontrol/Badge;

    if-nez v11, :cond_16

    .line 1041
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 4000
    :cond_16
    iget-object v11, v11, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Badge;->onPostMessage:Lo/getTargetScrollPosition;

    .line 1043
    iget-object v12, v1, Lo/recordPostLayoutInformation;->onMessageChannelReady:Lo/setSpeed;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    if-eqz v12, :cond_20

    check-cast v12, Lo/onChildrenLoaded$onPostMessage;

    if-nez v11, :cond_18

    if-eqz v8, :cond_17

    .line 1044
    invoke-interface {v8, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo/getTargetScrollPosition;

    goto :goto_d

    :cond_17
    const/4 v11, 0x0

    :goto_d
    if-nez v11, :cond_18

    const/high16 v11, 0x3f000000    # 0.5f

    .line 1045
    iput v11, v12, Lo/onChildrenLoaded$onPostMessage;->INotificationSideChannel:F

    goto :goto_e

    :cond_18
    const v11, 0x3dcccccd    # 0.1f

    .line 1047
    iput v11, v12, Lo/onChildrenLoaded$onPostMessage;->INotificationSideChannel:F

    .line 1049
    :goto_e
    iget-object v11, v1, Lo/recordPostLayoutInformation;->onMessageChannelReady:Lo/setSpeed;

    check-cast v12, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v11, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v8, :cond_19

    .line 1051
    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo/getTargetScrollPosition;

    goto :goto_f

    :cond_19
    const/4 v11, 0x0

    :goto_f
    if-eqz v11, :cond_1a

    .line 1052
    iget-object v11, v1, Lo/recordPostLayoutInformation;->extraCallback:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1053
    invoke-virtual {v11, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1054
    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10

    .line 1056
    :cond_1a
    iget-object v6, v1, Lo/recordPostLayoutInformation;->extraCallback:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v11, 0x8

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    :goto_10
    if-eqz v8, :cond_1b

    .line 1058
    invoke-interface {v8, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/getTargetScrollPosition;

    goto :goto_11

    :cond_1b
    const/4 v6, 0x0

    :goto_11
    if-eqz v6, :cond_1c

    .line 1059
    iget-object v6, v1, Lo/recordPostLayoutInformation;->ICustomTabsCallback:Lo/createFullSpanItemFromEnd;

    .line 1060
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1061
    invoke-interface {v8, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_12

    .line 1063
    :cond_1c
    iget-object v6, v1, Lo/recordPostLayoutInformation;->ICustomTabsCallback:Lo/createFullSpanItemFromEnd;

    const/16 v11, 0x8

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1065
    :goto_12
    iget-object v6, v1, Lo/recordPostLayoutInformation;->onMessageChannelReady:Lo/setSpeed;

    if-eqz v8, :cond_1d

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo/getTargetScrollPosition;

    goto :goto_13

    :cond_1d
    const/4 v8, 0x0

    :goto_13
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x3e

    move-object/from16 v17, v6

    invoke-static/range {v17 .. v24}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 6034
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/main/remotecontrol/TemplateProperties;

    .line 7067
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/main/remotecontrol/TemplateProperties;->ICustomTabsService:Lcom/dreamplug/fabrik/ui/main/remotecontrol/Badge;

    if-nez v3, :cond_1e

    .line 6089
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 8000
    :cond_1e
    iget-object v6, v3, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Badge;->onPostMessage:Lo/getTargetScrollPosition;

    .line 9000
    iget-object v8, v3, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Badge;->ICustomTabsCallback:Ljava/lang/String;

    .line 10000
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Badge;->onNavigationEvent:Ljava/lang/String;

    if-eqz v6, :cond_1f

    .line 6091
    iget-object v10, v1, Lo/recordPostLayoutInformation;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    .line 6092
    invoke-virtual {v10, v7}, Landroid/view/View;->setVisibility(I)V

    .line 6093
    move-object/from16 v16, v10

    check-cast v16, Landroid/view/View;

    .line 10009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v14}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 10010
    invoke-static {v5, v9, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    .line 6093
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    const/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x72

    move-object/from16 v17, v8

    move-object/from16 v19, v3

    invoke-static/range {v16 .. v23}, Lo/missCount;->onNavigationEvent(Landroid/view/View;Ljava/lang/String;FLjava/lang/String;Ljava/lang/Float;[FLjava/lang/Integer;I)V

    .line 6094
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_14

    .line 6096
    :cond_1f
    iget-object v3, v1, Lo/recordPostLayoutInformation;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1069
    :goto_14
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Lo/recordPostLayoutInformation$ICustomTabsCallback;

    invoke-direct {v5, v1, v2}, Lo/recordPostLayoutInformation$ICustomTabsCallback;-><init>(Lo/recordPostLayoutInformation;Lo/StaggeredGridLayoutManager;)V

    check-cast v5, Lo/onDisconnectSetValue;

    invoke-static {v3, v4, v5}, Lo/extraCallback;->onMessageChannelReady(Landroid/view/View;Ljava/lang/Long;Lo/onDisconnectSetValue;)V

    goto :goto_15

    .line 1043
    :cond_20
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v13}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_21
    :goto_15
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 32
    new-instance p2, Lo/animatePersistence;

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0e0303

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(pare\u2026ol_3_item, parent, false)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lo/onAnimationStarted;->ICustomTabsCallback:Lo/onAnimationStarted$onMessageChannelReady;

    .line 32
    invoke-direct {p2, p1, v0}, Lo/animatePersistence;-><init>(Landroid/view/View;Lo/onAnimationStarted$onMessageChannelReady;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p2

    .line 25
    :cond_0
    new-instance p2, Lo/dispatchAnimationFinished;

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0e0302

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(pare\u2026ol_2_item, parent, false)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lo/onAnimationStarted;->ICustomTabsCallback:Lo/onAnimationStarted$onMessageChannelReady;

    .line 25
    invoke-direct {p2, p1, v0}, Lo/dispatchAnimationFinished;-><init>(Landroid/view/View;Lo/onAnimationStarted$onMessageChannelReady;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p2

    .line 19
    :cond_1
    new-instance p2, Lo/recordPostLayoutInformation;

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0e0301

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(pare\u2026ol_1_item, parent, false)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lo/onAnimationStarted;->ICustomTabsCallback:Lo/onAnimationStarted$onMessageChannelReady;

    .line 19
    invoke-direct {p2, p1, v0}, Lo/recordPostLayoutInformation;-><init>(Landroid/view/View;Lo/onAnimationStarted$onMessageChannelReady;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p2
.end method
