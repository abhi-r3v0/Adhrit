.class final Lo/startPostponedEnterTransition$2$2;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/startPostponedEnterTransition$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Lcom/dreamplug/fabrik/ui/cm/models/Template;",
        "Lo/addWrites;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/fabrik/ui/cm/models/Template;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/startPostponedEnterTransition$2;


# direct methods
.method constructor <init>(Lo/startPostponedEnterTransition$2;)V
    .locals 0

    iput-object p1, p0, Lo/startPostponedEnterTransition$2$2;->onPostMessage:Lo/startPostponedEnterTransition$2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    .line 21
    move-object/from16 v1, p1

    check-cast v1, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    const-string v2, "it"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1046
    iget-object v2, v0, Lo/startPostponedEnterTransition$2$2;->onPostMessage:Lo/startPostponedEnterTransition$2;

    iget-object v2, v2, Lo/startPostponedEnterTransition$2;->onNavigationEvent:Lo/startPostponedEnterTransition;

    .line 2027
    iget-object v3, v1, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 2088
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->extraCommand:Lcom/dreamplug/fabrik/ui/control/CardDetails;

    const-string v4, "most recent"

    if-eqz v3, :cond_0

    .line 1046
    invoke-virtual {v3}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getSortKey()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    move-object v3, v4

    :cond_1
    invoke-static {v2, v3}, Lo/startPostponedEnterTransition;->onNavigationEvent(Lo/startPostponedEnterTransition;Ljava/lang/String;)V

    .line 1047
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 1048
    iget-object v3, v0, Lo/startPostponedEnterTransition$2$2;->onPostMessage:Lo/startPostponedEnterTransition$2;

    iget-object v3, v3, Lo/startPostponedEnterTransition$2;->onNavigationEvent:Lo/startPostponedEnterTransition;

    invoke-static {v3}, Lo/startPostponedEnterTransition;->onPostMessage(Lo/startPostponedEnterTransition;)Lcom/dreamplug/fabrik/ui/cm/models/Template;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 3027
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    if-eqz v3, :cond_2

    .line 3071
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->getInterfaceDescriptor:Lcom/dreamplug/fabrik/ui/cm/models/Ctas;

    if-eqz v3, :cond_2

    .line 3175
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/cm/models/Ctas;->extraCallback:Lcom/dreamplug/fabrik/ui/cm/models/Cta;

    if-eqz v3, :cond_2

    .line 4018
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/cm/models/Cta;->asBinder:Lcom/dreamplug/fabrik/ui/cm/models/Cta$Flow;

    if-eqz v3, :cond_2

    .line 4031
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/cm/models/Cta$Flow;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/cm/models/MyCardsResponse;

    goto :goto_0

    :cond_2
    move-object v3, v5

    :goto_0
    const/4 v6, 0x0

    const-string v7, "$this$firstOrNull"

    if-eqz v3, :cond_5

    .line 5016
    iget-object v8, v3, Lcom/dreamplug/fabrik/ui/cm/models/MyCardsResponse;->extraCallback:Ljava/util/List;

    if-eqz v8, :cond_5

    .line 1049
    invoke-static {v8, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5243
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v8, v5

    goto :goto_1

    :cond_3
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 1049
    :goto_1
    check-cast v8, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    if-eqz v8, :cond_5

    .line 6027
    iget-object v8, v8, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    if-eqz v8, :cond_5

    .line 6076
    iget-object v8, v8, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->ICustomTabsService:Ljava/util/List;

    if-eqz v8, :cond_5

    .line 1049
    check-cast v8, Ljava/lang/Iterable;

    .line 1112
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 7027
    iget-object v9, v10, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 1050
    iget-object v13, v0, Lo/startPostponedEnterTransition$2$2;->onPostMessage:Lo/startPostponedEnterTransition$2;

    iget-object v13, v13, Lo/startPostponedEnterTransition$2;->onNavigationEvent:Lo/startPostponedEnterTransition;

    invoke-static {v13}, Lo/startPostponedEnterTransition;->onNavigationEvent(Lo/startPostponedEnterTransition;)Ljava/lang/String;

    move-result-object v13

    .line 8027
    iget-object v14, v10, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 8088
    iget-object v14, v14, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->extraCommand:Lcom/dreamplug/fabrik/ui/control/CardDetails;

    if-eqz v14, :cond_4

    .line 1050
    invoke-virtual {v14}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getSortKey()Ljava/lang/String;

    move-result-object v14

    goto :goto_3

    :cond_4
    move-object v14, v5

    :goto_3
    invoke-static {v13, v14}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    invoke-static {v9, v13}, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->ICustomTabsCallback(Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;Z)Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x7b

    invoke-static/range {v10 .. v18}, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback(Lcom/dreamplug/fabrik/ui/cm/models/Template;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;Lcom/dreamplug/fabrik/ui/control/CardDetails;ZLjava/lang/String;Ljava/lang/String;I)Lcom/dreamplug/fabrik/ui/cm/models/Template;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    if-eqz v3, :cond_7

    .line 9016
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/cm/models/MyCardsResponse;->extraCallback:Ljava/util/List;

    if-eqz v3, :cond_7

    .line 1052
    invoke-static {v3, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9243
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    move-object v3, v5

    goto :goto_4

    :cond_6
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 1052
    :goto_4
    check-cast v3, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    if-eqz v3, :cond_7

    .line 10027
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    if-eqz v3, :cond_7

    .line 10076
    iput-object v2, v3, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->ICustomTabsService:Ljava/util/List;

    .line 1053
    :cond_7
    iget-object v2, v0, Lo/startPostponedEnterTransition$2$2;->onPostMessage:Lo/startPostponedEnterTransition$2;

    iget-object v2, v2, Lo/startPostponedEnterTransition$2;->onNavigationEvent:Lo/startPostponedEnterTransition;

    .line 11027
    iget-object v3, v1, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 11088
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->extraCommand:Lcom/dreamplug/fabrik/ui/control/CardDetails;

    if-eqz v3, :cond_9

    .line 1053
    invoke-virtual {v3}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getSortKey()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    goto :goto_5

    :cond_8
    move-object v4, v3

    :cond_9
    :goto_5
    invoke-static {v2, v4}, Lo/startPostponedEnterTransition;->onNavigationEvent(Lo/startPostponedEnterTransition;Ljava/lang/String;)V

    .line 1054
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 1055
    iget-object v3, v0, Lo/startPostponedEnterTransition$2$2;->onPostMessage:Lo/startPostponedEnterTransition$2;

    iget-object v3, v3, Lo/startPostponedEnterTransition$2;->onNavigationEvent:Lo/startPostponedEnterTransition;

    invoke-static {v3}, Lo/startPostponedEnterTransition;->onPostMessage(Lo/startPostponedEnterTransition;)Lcom/dreamplug/fabrik/ui/cm/models/Template;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 12027
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    if-eqz v3, :cond_b

    .line 12076
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->ICustomTabsService:Ljava/util/List;

    if-eqz v3, :cond_b

    .line 1055
    check-cast v3, Ljava/lang/Iterable;

    .line 1114
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 13029
    iget-object v4, v6, Lcom/dreamplug/fabrik/ui/cm/models/Template;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/control/CardDetails;

    if-eqz v4, :cond_a

    .line 1056
    invoke-virtual {v4}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getSortKey()Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_a
    move-object v4, v5

    :goto_7
    iget-object v11, v0, Lo/startPostponedEnterTransition$2$2;->onPostMessage:Lo/startPostponedEnterTransition$2;

    iget-object v11, v11, Lo/startPostponedEnterTransition$2;->onNavigationEvent:Lo/startPostponedEnterTransition;

    invoke-static {v11}, Lo/startPostponedEnterTransition;->onNavigationEvent(Lo/startPostponedEnterTransition;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x6f

    invoke-static/range {v6 .. v14}, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback(Lcom/dreamplug/fabrik/ui/cm/models/Template;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;Lcom/dreamplug/fabrik/ui/control/CardDetails;ZLjava/lang/String;Ljava/lang/String;I)Lcom/dreamplug/fabrik/ui/cm/models/Template;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1058
    :cond_b
    iget-object v3, v0, Lo/startPostponedEnterTransition$2$2;->onPostMessage:Lo/startPostponedEnterTransition$2;

    iget-object v3, v3, Lo/startPostponedEnterTransition$2;->onNavigationEvent:Lo/startPostponedEnterTransition;

    invoke-static {v3}, Lo/startPostponedEnterTransition;->onNavigationEvent(Lo/startPostponedEnterTransition;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lo/startPostponedEnterTransition;->onPostMessage(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 1059
    iget-object v3, v0, Lo/startPostponedEnterTransition$2$2;->onPostMessage:Lo/startPostponedEnterTransition$2;

    iget-object v3, v3, Lo/startPostponedEnterTransition$2;->onNavigationEvent:Lo/startPostponedEnterTransition;

    invoke-static {v3}, Lo/startPostponedEnterTransition;->extraCallback(Lo/startPostponedEnterTransition;)Lo/repositionToWrapContentIfNecessary;

    move-result-object v3

    const-string/jumbo v4, "value"

    invoke-static {v2, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14000
    iget-object v3, v3, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/checkSpanForGap;

    .line 13038
    invoke-virtual {v3, v2}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    .line 1060
    iget-object v2, v0, Lo/startPostponedEnterTransition$2$2;->onPostMessage:Lo/startPostponedEnterTransition$2;

    iget-object v2, v2, Lo/startPostponedEnterTransition$2;->onNavigationEvent:Lo/startPostponedEnterTransition;

    invoke-static {v2}, Lo/startPostponedEnterTransition;->extraCallback(Lo/startPostponedEnterTransition;)Lo/repositionToWrapContentIfNecessary;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1062
    :cond_c
    iget-object v2, v0, Lo/startPostponedEnterTransition$2$2;->onPostMessage:Lo/startPostponedEnterTransition$2;

    iget-object v2, v2, Lo/startPostponedEnterTransition$2;->onNavigationEvent:Lo/startPostponedEnterTransition;

    invoke-static {v2}, Lo/startPostponedEnterTransition;->ICustomTabsCallback(Lo/startPostponedEnterTransition;)Landroid/widget/TextView;

    move-result-object v2

    .line 14027
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 14051
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->ICustomTabsCallback:Lo/getTargetScrollPosition;

    if-eqz v1, :cond_d

    .line 15000
    iget-object v1, v1, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/CharSequence;

    .line 1062
    :cond_d
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v1
.end method
