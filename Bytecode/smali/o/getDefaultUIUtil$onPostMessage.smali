.class public final Lo/getDefaultUIUtil$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasGapsToFix$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getDefaultUIUtil;-><init>()V
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
        "com/dreamplug/fabrik/ui/lending/exitintent/StashExitIntentVariant2$clickListener$1",
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
.field private synthetic onPostMessage:Lo/getDefaultUIUtil;


# direct methods
.method constructor <init>(Lo/getDefaultUIUtil;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lo/getDefaultUIUtil$onPostMessage;->onPostMessage:Lo/getDefaultUIUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
    .locals 5

    const-string/jumbo p3, "type"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "data"

    invoke-static {p2, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p3

    const v0, 0x2c3ecfa7

    if-eq p3, v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string p3, "checked"

    .line 126
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 127
    instance-of p1, p2, Lcom/dreamplug/fabrik/ui/lending/model/CommonPitchItem;

    if-eqz p1, :cond_c

    .line 131
    iget-object p1, p0, Lo/getDefaultUIUtil$onPostMessage;->onPostMessage:Lo/getDefaultUIUtil;

    check-cast p2, Lcom/dreamplug/fabrik/ui/lending/model/CommonPitchItem;

    .line 2015
    iget-object p3, p2, Lcom/dreamplug/fabrik/ui/lending/model/CommonPitchItem;->onNavigationEvent:Ljava/lang/String;

    .line 2046
    iput-object p3, p1, Lo/getDefaultUIUtil;->asInterface:Ljava/lang/String;

    .line 132
    iget-object p1, p0, Lo/getDefaultUIUtil$onPostMessage;->onPostMessage:Lo/getDefaultUIUtil;

    invoke-static {p1}, Lo/getDefaultUIUtil;->extraCallback(Lo/getDefaultUIUtil;)Ljava/util/List;

    move-result-object p3

    .line 183
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 184
    check-cast v2, Lcom/dreamplug/fabrik/ui/lending/model/CommonPitchItem;

    .line 3015
    iget-object v3, p2, Lcom/dreamplug/fabrik/ui/lending/model/CommonPitchItem;->onNavigationEvent:Ljava/lang/String;

    .line 4015
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lending/model/CommonPitchItem;->onNavigationEvent:Ljava/lang/String;

    .line 133
    invoke-static {v3, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    .line 4044
    :goto_1
    iput v1, p1, Lo/getDefaultUIUtil;->onPostMessage:I

    .line 137
    iget-object p1, p0, Lo/getDefaultUIUtil$onPostMessage;->onPostMessage:Lo/getDefaultUIUtil;

    .line 4045
    iget-object p1, p1, Lo/getDefaultUIUtil;->onNavigationEvent:Lo/repositionToWrapContentIfNecessary;

    if-nez p1, :cond_3

    const-string p3, "adapter"

    invoke-static {p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 135
    :cond_3
    iget-object p3, p0, Lo/getDefaultUIUtil$onPostMessage;->onPostMessage:Lo/getDefaultUIUtil;

    invoke-static {p3}, Lo/getDefaultUIUtil;->extraCallback(Lo/getDefaultUIUtil;)Ljava/util/List;

    move-result-object p3

    check-cast p3, Ljava/lang/Iterable;

    .line 189
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "$this$collectionSizeOrDefault"

    invoke-static {p3, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5039
    instance-of v2, p3, Ljava/util/Collection;

    if-eqz v2, :cond_4

    move-object v2, p3

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    goto :goto_2

    :cond_4
    const/16 v2, 0xa

    .line 189
    :goto_2
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 190
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 191
    check-cast v2, Lcom/dreamplug/fabrik/ui/lending/model/CommonPitchItem;

    .line 6015
    iget-object v3, p2, Lcom/dreamplug/fabrik/ui/lending/model/CommonPitchItem;->onNavigationEvent:Ljava/lang/String;

    .line 7015
    iget-object v4, v2, Lcom/dreamplug/fabrik/ui/lending/model/CommonPitchItem;->onNavigationEvent:Ljava/lang/String;

    .line 136
    invoke-static {v3, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/dreamplug/fabrik/ui/lending/model/CommonPitchItem;->extraCallback(Lcom/dreamplug/fabrik/ui/lending/model/CommonPitchItem;Z)Lcom/dreamplug/fabrik/ui/lending/model/CommonPitchItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 192
    :cond_5
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    const-string p2, "$this$toMutableList"

    .line 137
    invoke-static {v1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7246
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast p2, Ljava/util/List;

    const-string/jumbo p3, "value"

    .line 137
    invoke-static {p2, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9000
    iget-object p1, p1, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/checkSpanForGap;

    .line 8038
    invoke-virtual {p1, p2}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    .line 138
    iget-object p1, p0, Lo/getDefaultUIUtil$onPostMessage;->onPostMessage:Lo/getDefaultUIUtil;

    invoke-static {p1}, Lo/getDefaultUIUtil;->extraCallback(Lo/getDefaultUIUtil;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lo/getDefaultUIUtil$onPostMessage;->onPostMessage:Lo/getDefaultUIUtil;

    .line 9044
    iget p2, p2, Lo/getDefaultUIUtil;->onPostMessage:I

    const-string p3, "$this$getOrNull"

    .line 138
    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p2, :cond_6

    const-string p3, "$this$lastIndex"

    .line 9266
    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10210
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-gt p2, p3, :cond_6

    .line 9266
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_4

    :cond_6
    const/4 p1, 0x0

    .line 138
    :goto_4
    check-cast p1, Lcom/dreamplug/fabrik/ui/lending/model/CommonPitchItem;

    if-eqz p1, :cond_c

    .line 139
    iget-object p2, p0, Lo/getDefaultUIUtil$onPostMessage;->onPostMessage:Lo/getDefaultUIUtil;

    .line 11038
    iget-object p2, p2, Lo/getDefaultUIUtil;->onMessageChannelReady:Landroid/widget/TextView;

    if-nez p2, :cond_7

    const-string p3, "primaryButton"

    invoke-static {p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 12019
    :cond_7
    iget-object p3, p1, Lcom/dreamplug/fabrik/ui/lending/model/CommonPitchItem;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    if-eqz p3, :cond_8

    .line 13015
    iget-object p3, p3, Lcom/dreamplug/fabrik/ui/lending/model/Cta;->onMessageChannelReady:Lo/getTargetScrollPosition;

    if-eqz p3, :cond_8

    .line 14000
    iget-object p3, p3, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    if-nez p3, :cond_9

    :cond_8
    const-string p3, ""

    .line 139
    check-cast p3, Ljava/lang/CharSequence;

    :cond_9
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object p2, p0, Lo/getDefaultUIUtil$onPostMessage;->onPostMessage:Lo/getDefaultUIUtil;

    .line 14040
    iget-object p2, p2, Lo/getDefaultUIUtil;->ICustomTabsCallback:Landroid/widget/TextView;

    if-nez p2, :cond_a

    const-string p3, "noteText"

    invoke-static {p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 15017
    :cond_a
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/CommonPitchItem;->ICustomTabsCallback:Ljava/lang/String;

    .line 140
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object p1, p0, Lo/getDefaultUIUtil$onPostMessage;->onPostMessage:Lo/getDefaultUIUtil;

    .line 15042
    iget-object p1, p1, Lo/getDefaultUIUtil;->extraCallback:Landroid/view/View;

    if-nez p1, :cond_b

    const-string/jumbo p2, "selectedLayout"

    invoke-static {p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_b
    const-string p2, "$this$visible"

    .line 141
    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16009
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    :goto_5
    return-void
.end method
