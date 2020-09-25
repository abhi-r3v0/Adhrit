.class public final Lo/dispatchAttachedToWindow$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasGapsToFix$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/dispatchAttachedToWindow;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/nba/NBAFragment$listItemClickListener$1",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "onClick",
        "",
        "type",
        "",
        "data",
        "Lcom/dreamplug/utils/list/ListItem;",
        "holder",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
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
.field public final synthetic onMessageChannelReady:Lo/dispatchAttachedToWindow;


# direct methods
.method constructor <init>(Lo/dispatchAttachedToWindow;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 307
    iput-object p1, p0, Lo/dispatchAttachedToWindow$onPostMessage;->onMessageChannelReady:Lo/dispatchAttachedToWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v5, p2

    const-string/jumbo v1, "type"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "data"

    invoke-static {v5, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    instance-of v1, v5, Lo/detachAndScrapViewAt;

    if-eqz v1, :cond_1b

    .line 311
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const-string v2, "pairs"

    const-string v3, "aspect_ratio"

    const-string v7, "instrument_id"

    const/4 v8, 0x3

    const-string/jumbo v9, "template_id"

    const/4 v10, 0x2

    const-string v11, "nba_position"

    const-string v12, "category"

    const/4 v13, 0x5

    const/4 v14, 0x0

    const/4 v15, 0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_e

    :sswitch_0
    const-string v1, "nba_home_remind_later"

    .line 378
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    new-array v0, v13, [Lo/addWrite;

    .line 381
    move-object v1, v5

    check-cast v1, Lo/detachAndScrapViewAt;

    .line 31007
    iget-object v5, v1, Lo/detachAndScrapViewAt;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 31020
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onPostMessage:Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;

    .line 31138
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;->onPostMessage:Ljava/lang/String;

    .line 32043
    new-instance v4, Lo/addWrite;

    invoke-direct {v4, v12, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v14

    if-eqz p3, :cond_0

    .line 382
    invoke-virtual/range {p3 .. p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v4

    add-int/2addr v4, v15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 33043
    :goto_0
    new-instance v5, Lo/addWrite;

    invoke-direct {v5, v11, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v0, v15

    .line 34007
    iget-object v4, v1, Lo/detachAndScrapViewAt;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 34021
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->ICustomTabsCallback:Ljava/lang/String;

    .line 34043
    new-instance v5, Lo/addWrite;

    invoke-direct {v5, v9, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v0, v10

    .line 35007
    iget-object v4, v1, Lo/detachAndScrapViewAt;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 35020
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onPostMessage:Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;

    .line 35137
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;->ICustomTabsCallback:Ljava/lang/String;

    .line 36043
    new-instance v5, Lo/addWrite;

    invoke-direct {v5, v7, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v0, v8

    .line 37007
    iget-object v4, v1, Lo/detachAndScrapViewAt;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 37024
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 37032
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Background;

    if-eqz v4, :cond_1

    .line 37106
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/nba/helper/Background;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Asset;

    if-eqz v4, :cond_1

    .line 37180
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/nba/helper/Asset;->extraCallback:Ljava/lang/Float;

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 38043
    :goto_1
    new-instance v5, Lo/addWrite;

    invoke-direct {v5, v3, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x4

    aput-object v5, v0, v3

    .line 380
    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38088
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-static {v13}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v0, "nba_swipe_remind_later_cta"

    .line 379
    invoke-static {v0, v2}, Lo/dispatchAttachedToWindow;->ICustomTabsCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 388
    sget-object v0, Lo/setItemPrefetchEnabled;->onNavigationEvent:Lo/setItemPrefetchEnabled;

    .line 39007
    iget-object v2, v1, Lo/detachAndScrapViewAt;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 39021
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->ICustomTabsCallback:Ljava/lang/String;

    .line 388
    invoke-virtual {v0, v2}, Lo/setItemPrefetchEnabled;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 389
    iget-object v0, v6, Lo/dispatchAttachedToWindow$onPostMessage;->onMessageChannelReady:Lo/dispatchAttachedToWindow;

    invoke-static {v0}, Lo/dispatchAttachedToWindow;->onMessageChannelReady(Lo/dispatchAttachedToWindow;)Lo/dispatchDetachedFromWindow;

    .line 40007
    iget-object v0, v1, Lo/detachAndScrapViewAt;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 40021
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->ICustomTabsCallback:Ljava/lang/String;

    .line 389
    invoke-static {v0}, Lo/dispatchDetachedFromWindow;->extraCallback(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1b

    .line 391
    iget-object v1, v6, Lo/dispatchAttachedToWindow$onPostMessage;->onMessageChannelReady:Lo/dispatchAttachedToWindow;

    invoke-static {v1}, Lo/dispatchAttachedToWindow;->onMessageChannelReady(Lo/dispatchAttachedToWindow;)Lo/dispatchDetachedFromWindow;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/dispatchDetachedFromWindow;->onPostMessage(I)V

    return-void

    :sswitch_1
    const-string v1, "nba_home_card_expanded"

    .line 394
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x6

    new-array v1, v0, [Lo/addWrite;

    .line 397
    move-object v4, v5

    check-cast v4, Lo/detachAndScrapViewAt;

    .line 41007
    iget-object v5, v4, Lo/detachAndScrapViewAt;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 41020
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onPostMessage:Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;

    .line 41138
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;->onPostMessage:Ljava/lang/String;

    .line 42043
    new-instance v0, Lo/addWrite;

    invoke-direct {v0, v12, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, v1, v14

    if-eqz p3, :cond_2

    .line 398
    invoke-virtual/range {p3 .. p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    add-int/2addr v0, v15

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 43043
    :goto_2
    new-instance v5, Lo/addWrite;

    invoke-direct {v5, v11, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v1, v15

    .line 44007
    iget-object v0, v4, Lo/detachAndScrapViewAt;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 44020
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onPostMessage:Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;

    .line 44043
    new-instance v5, Lo/addWrite;

    invoke-direct {v5, v9, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v1, v10

    .line 45007
    iget-object v0, v4, Lo/detachAndScrapViewAt;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 45020
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onPostMessage:Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;

    .line 45137
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;->ICustomTabsCallback:Ljava/lang/String;

    .line 46043
    new-instance v5, Lo/addWrite;

    invoke-direct {v5, v7, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v1, v8

    .line 47007
    iget-object v0, v4, Lo/detachAndScrapViewAt;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 47022
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Metadata;

    if-eqz v0, :cond_3

    .line 47127
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/Metadata;->extraCallback:Ljava/lang/Boolean;

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    .line 48043
    :goto_3
    new-instance v5, Lo/addWrite;

    const-string v7, "nba_card_is_dismissible"

    invoke-direct {v5, v7, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x4

    aput-object v5, v1, v0

    .line 49007
    iget-object v0, v4, Lo/detachAndScrapViewAt;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 49024
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 49032
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Background;

    if-eqz v0, :cond_4

    .line 49106
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/Background;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Asset;

    if-eqz v0, :cond_4

    .line 49180
    iget-object v4, v0, Lcom/dreamplug/fabrik/ui/nba/helper/Asset;->extraCallback:Ljava/lang/Float;

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    .line 50043
    :goto_4
    new-instance v0, Lo/addWrite;

    invoke-direct {v0, v3, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, v1, v13

    .line 396
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50044
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v2, 0x6

    invoke-static {v2}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v1, "nba_swipe"

    .line 395
    invoke-static {v1, v0}, Lo/dispatchAttachedToWindow;->ICustomTabsCallback(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_e

    :sswitch_2
    const-string v1, "nba_home_cta"

    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    new-array v0, v13, [Lo/addWrite;

    .line 326
    move-object v1, v5

    check-cast v1, Lo/detachAndScrapViewAt;

    .line 9007
    iget-object v4, v1, Lo/detachAndScrapViewAt;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 9020
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onPostMessage:Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;

    .line 9138
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;->onPostMessage:Ljava/lang/String;

    .line 10043
    new-instance v13, Lo/addWrite;

    invoke-direct {v13, v12, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v0, v14

    if-eqz p3, :cond_5

    .line 327
    invoke-virtual/range {p3 .. p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v4

    add-int/2addr v4, v15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_5

    :cond_5
    const/4 v4, 0x0

    .line 11043
    :goto_5
    new-instance v12, Lo/addWrite;

    invoke-direct {v12, v11, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v12, v0, v15

    .line 12007
    iget-object v4, v1, Lo/detachAndScrapViewAt;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 12021
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->ICustomTabsCallback:Ljava/lang/String;

    .line 12043
    new-instance v11, Lo/addWrite;

    invoke-direct {v11, v9, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v11, v0, v10

    .line 13007
    iget-object v4, v1, Lo/detachAndScrapViewAt;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 13020
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onPostMessage:Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;

    .line 13137
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;->ICustomTabsCallback:Ljava/lang/String;

    .line 14043
    new-instance v9, Lo/addWrite;

    invoke-direct {v9, v7, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, v0, v8

    .line 15007
    iget-object v4, v1, Lo/detachAndScrapViewAt;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 15024
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 15032
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Background;

    if-eqz v4, :cond_6

    .line 15106
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/nba/helper/Background;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Asset;

    if-eqz v4, :cond_6

    .line 15180
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/nba/helper/Asset;->extraCallback:Ljava/lang/Float;

    goto :goto_6

    :cond_6
    const/4 v4, 0x0

    .line 16043
    :goto_6
    new-instance v7, Lo/addWrite;

    invoke-direct {v7, v3, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x4

    aput-object v7, v0, v3

    .line 325
    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16088
    new-instance v2, Ljava/util/LinkedHashMap;

    const/4 v3, 0x5

    invoke-static {v3}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v0, "nba_card_cta"

    .line 324
    invoke-static {v0, v2}, Lo/dispatchAttachedToWindow;->ICustomTabsCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 17007
    iget-object v0, v1, Lo/detachAndScrapViewAt;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 17024
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 17035
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->onTransact:Lcom/dreamplug/fabrik/ui/nba/helper/Footer;

    if-eqz v0, :cond_16

    .line 17116
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/nba/helper/Footer;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

    if-eqz v2, :cond_7

    .line 334
    invoke-virtual {v2}, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;->getType()Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    if-nez v2, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const v4, 0x30012e

    const-string v7, "lifecycle"

    if-eq v3, v4, :cond_10

    const v4, 0x258156e6

    if-eq v3, v4, :cond_a

    :cond_9
    :goto_8
    const/4 v4, 0x0

    goto/16 :goto_b

    :cond_a
    const-string v3, "deeplink"

    .line 335
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 18116
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/Footer;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

    .line 336
    invoke-virtual {v0}, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;->getDeeplink()Lcom/dreamplug/fabrik/ui/nba/helper/Deeplink;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 337
    iget-object v0, v6, Lo/dispatchAttachedToWindow$onPostMessage;->onMessageChannelReady:Lo/dispatchAttachedToWindow;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v8

    invoke-static {v8, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    new-instance v2, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v2}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    iput-boolean v14, v2, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 457
    new-instance v7, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v7}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v0, 0x0

    iput-object v0, v7, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 458
    invoke-virtual {v8}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v0

    sget-object v4, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 18212
    invoke-virtual {v0, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_b

    const/4 v14, 0x1

    :cond_b
    if-eqz v14, :cond_d

    .line 338
    sget-object v0, Lo/setItemPrefetchEnabled;->onNavigationEvent:Lo/setItemPrefetchEnabled;

    .line 339
    iget-object v0, v6, Lo/dispatchAttachedToWindow$onPostMessage;->onMessageChannelReady:Lo/dispatchAttachedToWindow;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v0

    if-nez v0, :cond_c

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_c
    const-string v4, "activity!!"

    invoke-static {v0, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/Context;

    .line 19007
    iget-object v1, v1, Lo/detachAndScrapViewAt;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 19020
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onPostMessage:Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;

    .line 338
    invoke-static {v0, v3, v1}, Lo/setItemPrefetchEnabled;->onPostMessage(Landroid/content/Context;Lcom/dreamplug/fabrik/ui/nba/helper/Deeplink;Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;)V

    .line 460
    iput-boolean v15, v2, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_9

    .line 461
    :cond_d
    invoke-virtual {v8}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v0

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v0, v1, :cond_e

    .line 462
    new-instance v9, Lcom/dreamplug/fabrik/ui/nba/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$1;

    move-object v0, v9

    move-object v1, v8

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/dreamplug/fabrik/ui/nba/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lcom/dreamplug/fabrik/ui/nba/helper/Deeplink;Lo/dispatchAttachedToWindow$onPostMessage;Lo/StaggeredGridLayoutManager;)V

    check-cast v9, Lo/createCallback;

    iput-object v9, v7, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 463
    iget-object v0, v7, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v0, Lo/createCallback;

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v8, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 465
    :cond_e
    :goto_9
    new-instance v0, Lo/dispatchAttachedToWindow$onPostMessage$onNavigationEvent;

    invoke-direct {v0, v7, v8}, Lo/dispatchAttachedToWindow$onPostMessage$onNavigationEvent;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    :cond_f
    return-void

    :cond_10
    const-string v1, "flow"

    .line 346
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 19116
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/Footer;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

    .line 347
    invoke-virtual {v0}, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;->getFlow()Lcom/dreamplug/fabrik/ui/nba/helper/Flow;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 348
    iget-object v1, v6, Lo/dispatchAttachedToWindow$onPostMessage;->onMessageChannelReady:Lo/dispatchAttachedToWindow;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v1

    invoke-static {v1, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 466
    new-instance v2, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v2}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    iput-boolean v14, v2, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 467
    new-instance v3, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v3}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v4, 0x0

    iput-object v4, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 468
    invoke-virtual {v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v4

    sget-object v5, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 19212
    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-ltz v4, :cond_11

    const/4 v14, 0x1

    :cond_11
    if-eqz v14, :cond_12

    .line 349
    sget-object v4, Lo/setItemPrefetchEnabled;->onNavigationEvent:Lo/setItemPrefetchEnabled;

    .line 350
    iget-object v5, v6, Lo/dispatchAttachedToWindow$onPostMessage;->onMessageChannelReady:Lo/dispatchAttachedToWindow;

    move-object v7, v5

    check-cast v7, Landroidx/fragment/app/Fragment;

    .line 351
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v5

    const-string v8, "childFragmentManager"

    invoke-static {v5, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    new-instance v8, Lo/detachViewInternal;

    invoke-virtual {v0}, Lcom/dreamplug/fabrik/ui/nba/helper/Flow;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/dreamplug/fabrik/ui/nba/helper/Flow;->getData()Lcom/dreamplug/fabrik/ui/nba/helper/Meta;

    move-result-object v0

    invoke-direct {v8, v9, v0}, Lo/detachViewInternal;-><init>(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/nba/helper/Meta;)V

    const-string v0, "nba_screen"

    .line 349
    invoke-static {v4, v7, v5, v8, v0}, Lo/setItemPrefetchEnabled;->ICustomTabsCallback(Lo/setItemPrefetchEnabled;Landroidx/fragment/app/Fragment;Lo/requestExtraBinder;Lo/detachViewInternal;Ljava/lang/String;)V

    .line 470
    iput-boolean v15, v2, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_a

    .line 471
    :cond_12
    invoke-virtual {v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v4

    sget-object v5, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v4, v5, :cond_13

    .line 472
    new-instance v4, Lcom/dreamplug/fabrik/ui/nba/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$2;

    invoke-direct {v4, v1, v2, v0, v6}, Lcom/dreamplug/fabrik/ui/nba/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$2;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lcom/dreamplug/fabrik/ui/nba/helper/Flow;Lo/dispatchAttachedToWindow$onPostMessage;)V

    check-cast v4, Lo/createCallback;

    iput-object v4, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 473
    iget-object v0, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v0, Lo/createCallback;

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 475
    :cond_13
    :goto_a
    new-instance v0, Lo/dispatchAttachedToWindow$onPostMessage$ICustomTabsCallback;

    invoke-direct {v0, v3, v1}, Lo/dispatchAttachedToWindow$onPostMessage$ICustomTabsCallback;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    :cond_14
    return-void

    .line 358
    :goto_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unknown cta type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20116
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/Footer;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

    if-eqz v0, :cond_15

    .line 358
    invoke-virtual {v0}, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;->getType()Ljava/lang/String;

    move-result-object v4

    :cond_15
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    :cond_16
    return-void

    :sswitch_3
    const/4 v4, 0x0

    const-string v1, "nba_land"

    .line 312
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x5

    new-array v1, v0, [Lo/addWrite;

    .line 315
    move-object v0, v5

    check-cast v0, Lo/detachAndScrapViewAt;

    .line 1007
    iget-object v5, v0, Lo/detachAndScrapViewAt;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 1020
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onPostMessage:Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;

    .line 1138
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;->onPostMessage:Ljava/lang/String;

    .line 2043
    new-instance v13, Lo/addWrite;

    invoke-direct {v13, v12, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v1, v14

    if-eqz p3, :cond_17

    .line 316
    invoke-virtual/range {p3 .. p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v5

    add-int/2addr v5, v15

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_c

    :cond_17
    move-object v5, v4

    .line 3043
    :goto_c
    new-instance v12, Lo/addWrite;

    invoke-direct {v12, v11, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v12, v1, v15

    .line 4007
    iget-object v5, v0, Lo/detachAndScrapViewAt;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 4021
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->ICustomTabsCallback:Ljava/lang/String;

    .line 4043
    new-instance v11, Lo/addWrite;

    invoke-direct {v11, v9, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v11, v1, v10

    .line 5007
    iget-object v5, v0, Lo/detachAndScrapViewAt;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 5020
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onPostMessage:Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;

    .line 5137
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;->ICustomTabsCallback:Ljava/lang/String;

    .line 6043
    new-instance v9, Lo/addWrite;

    invoke-direct {v9, v7, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, v1, v8

    .line 7007
    iget-object v0, v0, Lo/detachAndScrapViewAt;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 7024
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 7032
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Background;

    if-eqz v0, :cond_18

    .line 7106
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/Background;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Asset;

    if-eqz v0, :cond_18

    .line 7180
    iget-object v4, v0, Lcom/dreamplug/fabrik/ui/nba/helper/Asset;->extraCallback:Ljava/lang/Float;

    .line 8043
    :cond_18
    new-instance v0, Lo/addWrite;

    invoke-direct {v0, v3, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x4

    aput-object v0, v1, v3

    .line 314
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8088
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v2, 0x5

    invoke-static {v2}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v1, "nba_card_land"

    .line 313
    invoke-static {v1, v0}, Lo/dispatchAttachedToWindow;->ICustomTabsCallback(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :sswitch_4
    const/4 v4, 0x0

    const-string v1, "nba_home_dismiss"

    .line 362
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x5

    new-array v1, v0, [Lo/addWrite;

    .line 365
    move-object v0, v5

    check-cast v0, Lo/detachAndScrapViewAt;

    .line 21007
    iget-object v5, v0, Lo/detachAndScrapViewAt;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 21020
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onPostMessage:Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;

    .line 21138
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;->onPostMessage:Ljava/lang/String;

    .line 22043
    new-instance v13, Lo/addWrite;

    invoke-direct {v13, v12, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v1, v14

    if-eqz p3, :cond_19

    .line 366
    invoke-virtual/range {p3 .. p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v5

    add-int/2addr v5, v15

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_d

    :cond_19
    move-object v5, v4

    .line 23043
    :goto_d
    new-instance v12, Lo/addWrite;

    invoke-direct {v12, v11, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v12, v1, v15

    .line 24007
    iget-object v5, v0, Lo/detachAndScrapViewAt;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 24021
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->ICustomTabsCallback:Ljava/lang/String;

    .line 24043
    new-instance v11, Lo/addWrite;

    invoke-direct {v11, v9, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v11, v1, v10

    .line 25007
    iget-object v5, v0, Lo/detachAndScrapViewAt;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 25020
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onPostMessage:Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;

    .line 25137
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;->ICustomTabsCallback:Ljava/lang/String;

    .line 26043
    new-instance v9, Lo/addWrite;

    invoke-direct {v9, v7, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, v1, v8

    .line 27007
    iget-object v5, v0, Lo/detachAndScrapViewAt;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 27024
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 27032
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Background;

    if-eqz v5, :cond_1a

    .line 27106
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/nba/helper/Background;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Asset;

    if-eqz v5, :cond_1a

    .line 27180
    iget-object v4, v5, Lcom/dreamplug/fabrik/ui/nba/helper/Asset;->extraCallback:Ljava/lang/Float;

    .line 28043
    :cond_1a
    new-instance v5, Lo/addWrite;

    invoke-direct {v5, v3, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x4

    aput-object v5, v1, v3

    .line 364
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28088
    new-instance v2, Ljava/util/LinkedHashMap;

    const/4 v3, 0x5

    invoke-static {v3}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v1, "nba_swipe_dismiss_cta"

    .line 363
    invoke-static {v1, v2}, Lo/dispatchAttachedToWindow;->ICustomTabsCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 372
    sget-object v1, Lo/setItemPrefetchEnabled;->onNavigationEvent:Lo/setItemPrefetchEnabled;

    .line 29007
    iget-object v1, v0, Lo/detachAndScrapViewAt;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 29021
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->ICustomTabsCallback:Ljava/lang/String;

    const-string v2, "externalId"

    .line 372
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30000
    sget-object v2, Lo/setItemPrefetchEnabled;->onPostMessage:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/removeAndRecycleView;

    .line 29117
    invoke-interface {v2, v1}, Lo/removeAndRecycleView;->onMessageChannelReady(Ljava/lang/String;)Lo/clearScrap;

    move-result-object v1

    .line 29118
    new-instance v2, Lo/setItemPrefetchEnabled$onPostMessage;

    invoke-direct {v2}, Lo/setItemPrefetchEnabled$onPostMessage;-><init>()V

    check-cast v2, Lo/getScrapOrCachedViewForId;

    invoke-interface {v1, v2}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    .line 373
    iget-object v1, v6, Lo/dispatchAttachedToWindow$onPostMessage;->onMessageChannelReady:Lo/dispatchAttachedToWindow;

    invoke-static {v1}, Lo/dispatchAttachedToWindow;->onMessageChannelReady(Lo/dispatchAttachedToWindow;)Lo/dispatchDetachedFromWindow;

    .line 30007
    iget-object v0, v0, Lo/detachAndScrapViewAt;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 30021
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->ICustomTabsCallback:Ljava/lang/String;

    .line 373
    invoke-static {v0}, Lo/dispatchDetachedFromWindow;->extraCallback(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1b

    .line 375
    iget-object v1, v6, Lo/dispatchAttachedToWindow$onPostMessage;->onMessageChannelReady:Lo/dispatchAttachedToWindow;

    invoke-static {v1}, Lo/dispatchAttachedToWindow;->onMessageChannelReady(Lo/dispatchAttachedToWindow;)Lo/dispatchDetachedFromWindow;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/dispatchDetachedFromWindow;->onPostMessage(I)V

    :cond_1b
    :goto_e
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x73de2f04 -> :sswitch_4
        -0x7228aa43 -> :sswitch_3
        -0x39db567e -> :sswitch_2
        0x4ec9d5fa -> :sswitch_1
        0x5dc687a0 -> :sswitch_0
    .end sparse-switch
.end method
