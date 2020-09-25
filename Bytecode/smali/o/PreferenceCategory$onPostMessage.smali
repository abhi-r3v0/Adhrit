.class public final Lo/PreferenceCategory$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasGapsToFix$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/PreferenceCategory;-><init>()V
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
        "com/dreamplug/fabrik/ui/control/bankoffers/BankOffersFragment$clickListener$1",
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
.field private synthetic onNavigationEvent:Lo/PreferenceCategory;


# direct methods
.method constructor <init>(Lo/PreferenceCategory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lo/PreferenceCategory$onPostMessage;->onNavigationEvent:Lo/PreferenceCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
    .locals 3

    const-string/jumbo p3, "type"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "data"

    invoke-static {p2, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p3

    const v0, 0x35870a20

    if-eq p3, v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string/jumbo p3, "reward_card"

    .line 132
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 133
    instance-of p1, p2, Lo/SeekBarPreference;

    if-eqz p1, :cond_6

    .line 134
    iget-object p1, p0, Lo/PreferenceCategory$onPostMessage;->onNavigationEvent:Lo/PreferenceCategory;

    invoke-static {p1}, Lo/PreferenceCategory;->onNavigationEvent(Lo/PreferenceCategory;)Lo/PreferenceGroup;

    move-result-object p1

    .line 1032
    iget-object p1, p1, Lo/PreferenceGroup;->onPostMessage:Lo/setActive;

    .line 1320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 1321
    sget-object p3, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v0, 0x0

    if-eq p1, p3, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v0

    .line 134
    :goto_0
    check-cast p1, Lo/onDetach$onRelationshipValidationResult;

    if-eqz p1, :cond_2

    .line 2081
    iget-object p1, p1, Lo/onDetach$onRelationshipValidationResult;->extraCallback:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object p1, v0

    .line 135
    :goto_1
    iget-object p3, p0, Lo/PreferenceCategory$onPostMessage;->onNavigationEvent:Lo/PreferenceCategory;

    invoke-static {p3}, Lo/PreferenceCategory;->onNavigationEvent(Lo/PreferenceCategory;)Lo/PreferenceGroup;

    move-result-object p3

    .line 3032
    iget-object p3, p3, Lo/PreferenceGroup;->onPostMessage:Lo/setActive;

    .line 3320
    iget-object p3, p3, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 3321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq p3, v1, :cond_3

    goto :goto_2

    :cond_3
    move-object p3, v0

    .line 135
    :goto_2
    check-cast p3, Lo/onDetach$onRelationshipValidationResult;

    if-eqz p3, :cond_6

    const-string v1, "bank_offer"

    const/4 v2, 0x1

    if-eqz p1, :cond_5

    .line 136
    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    :goto_3
    if-ne p1, v2, :cond_5

    .line 140
    iget-object p1, p0, Lo/PreferenceCategory$onPostMessage;->onNavigationEvent:Lo/PreferenceCategory;

    invoke-static {p1}, Lo/PreferenceCategory;->extraCallback(Lo/PreferenceCategory;)Lo/getMoveDuration;

    move-result-object p1

    check-cast p2, Lo/SeekBarPreference;

    .line 4033
    iget-object p2, p2, Lo/SeekBarPreference;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/control/bankoffers/RewardData;

    .line 5028
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/control/bankoffers/RewardData;->onPostMessage:Ljava/lang/String;

    .line 5081
    iget-object v0, p3, Lo/onDetach$onRelationshipValidationResult;->extraCallback:Ljava/lang/String;

    .line 140
    invoke-virtual {p1, v1, p2, p3, v0}, Lo/getMoveDuration;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Lo/onDetach$onRelationshipValidationResult;Ljava/lang/String;)V

    return-void

    .line 141
    :cond_5
    check-cast p2, Lo/SeekBarPreference;

    .line 6033
    iget-object p1, p2, Lo/SeekBarPreference;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/control/bankoffers/RewardData;

    .line 7032
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/control/bankoffers/RewardData;->onRelationshipValidationResult:Ljava/util/List;

    if-eqz p1, :cond_6

    .line 141
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    if-ne p1, v2, :cond_6

    .line 145
    iget-object p1, p0, Lo/PreferenceCategory$onPostMessage;->onNavigationEvent:Lo/PreferenceCategory;

    invoke-static {p1}, Lo/PreferenceCategory;->extraCallback(Lo/PreferenceCategory;)Lo/getMoveDuration;

    move-result-object p1

    .line 7033
    iget-object p3, p2, Lo/SeekBarPreference;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/control/bankoffers/RewardData;

    .line 8028
    iget-object p3, p3, Lcom/dreamplug/fabrik/ui/control/bankoffers/RewardData;->onPostMessage:Ljava/lang/String;

    .line 8033
    iget-object p2, p2, Lo/SeekBarPreference;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/control/bankoffers/RewardData;

    .line 9032
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/control/bankoffers/RewardData;->onRelationshipValidationResult:Ljava/util/List;

    .line 145
    invoke-static {p2}, Lo/getSessionPersistenceKey;->onPostMessage(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, v1, p3, v0, p2}, Lo/getMoveDuration;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Lo/onDetach$onRelationshipValidationResult;Ljava/lang/String;)V

    :cond_6
    :goto_4
    return-void
.end method
