.class public final Lo/PreferenceCategory$onRelationshipValidationResult$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/rollbackContentChanged$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PreferenceCategory$onRelationshipValidationResult;
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
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0002\u0010\u0008\u00a8\u0006\t\u00b8\u0006\u0000"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/control/bankoffers/BankOffersFragment$onViewCreated$5$1$2",
        "Lcom/dreamplug/fabrik/ui/control/bankoffers/BankOfferCategoryBottomSheet$OnBottomSheetCtaClicked;",
        "onCtaClicked",
        "",
        "category",
        "",
        "id",
        "",
        "(Ljava/lang/String;Ljava/lang/Integer;)V",
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
.field private synthetic ICustomTabsCallback:Lo/PreferenceCategory$onRelationshipValidationResult;


# direct methods
.method constructor <init>(Lo/PreferenceCategory$onRelationshipValidationResult;)V
    .locals 0

    iput-object p1, p0, Lo/PreferenceCategory$onRelationshipValidationResult$onMessageChannelReady;->ICustomTabsCallback:Lo/PreferenceCategory$onRelationshipValidationResult;

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 3

    const-string v0, "category"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lo/PreferenceCategory$onRelationshipValidationResult$onMessageChannelReady;->ICustomTabsCallback:Lo/PreferenceCategory$onRelationshipValidationResult;

    iget-object v0, v0, Lo/PreferenceCategory$onRelationshipValidationResult;->ICustomTabsCallback:Lo/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v0

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 1212
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    .line 268
    iget-object v0, p0, Lo/PreferenceCategory$onRelationshipValidationResult$onMessageChannelReady;->ICustomTabsCallback:Lo/PreferenceCategory$onRelationshipValidationResult;

    iget-object v0, v0, Lo/PreferenceCategory$onRelationshipValidationResult;->ICustomTabsCallback:Lo/PreferenceCategory;

    invoke-static {v0}, Lo/PreferenceCategory;->onMessageChannelReady(Lo/PreferenceCategory;)V

    const-string v0, "<set-?>"

    if-nez p2, :cond_1

    goto :goto_1

    .line 269
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    .line 270
    iget-object p2, p0, Lo/PreferenceCategory$onRelationshipValidationResult$onMessageChannelReady;->ICustomTabsCallback:Lo/PreferenceCategory$onRelationshipValidationResult;

    iget-object p2, p2, Lo/PreferenceCategory$onRelationshipValidationResult;->ICustomTabsCallback:Lo/PreferenceCategory;

    invoke-static {p2}, Lo/PreferenceCategory;->onNavigationEvent(Lo/PreferenceCategory;)Lo/PreferenceGroup;

    move-result-object p2

    const-string v2, "All offers"

    invoke-static {v2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2034
    iput-object v2, p2, Lo/PreferenceGroup;->onNavigationEvent:Ljava/lang/String;

    goto :goto_2

    .line 272
    :cond_2
    :goto_1
    iget-object p2, p0, Lo/PreferenceCategory$onRelationshipValidationResult$onMessageChannelReady;->ICustomTabsCallback:Lo/PreferenceCategory$onRelationshipValidationResult;

    iget-object p2, p2, Lo/PreferenceCategory$onRelationshipValidationResult;->ICustomTabsCallback:Lo/PreferenceCategory;

    invoke-static {p2}, Lo/PreferenceCategory;->onNavigationEvent(Lo/PreferenceCategory;)Lo/PreferenceGroup;

    move-result-object p2

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3034
    iput-object p1, p2, Lo/PreferenceGroup;->onNavigationEvent:Ljava/lang/String;

    .line 274
    :goto_2
    iget-object p2, p0, Lo/PreferenceCategory$onRelationshipValidationResult$onMessageChannelReady;->ICustomTabsCallback:Lo/PreferenceCategory$onRelationshipValidationResult;

    iget-object p2, p2, Lo/PreferenceCategory$onRelationshipValidationResult;->ICustomTabsCallback:Lo/PreferenceCategory;

    invoke-static {p2}, Lo/PreferenceCategory;->onNavigationEvent(Lo/PreferenceCategory;)Lo/PreferenceGroup;

    move-result-object p2

    .line 3106
    iput v1, p2, Lo/PreferenceGroup;->postMessage:I

    .line 3107
    iput-boolean v1, p2, Lo/PreferenceGroup;->updateVisuals:Z

    .line 3108
    iget-object p2, p2, Lo/PreferenceGroup;->extraCommand:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 275
    iget-object p2, p0, Lo/PreferenceCategory$onRelationshipValidationResult$onMessageChannelReady;->ICustomTabsCallback:Lo/PreferenceCategory$onRelationshipValidationResult;

    iget-object p2, p2, Lo/PreferenceCategory$onRelationshipValidationResult;->ICustomTabsCallback:Lo/PreferenceCategory;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->categoryName:I

    invoke-virtual {p2, v0}, Lo/PreferenceCategory;->onPostMessage(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/saveOldPosition;

    const-string v0, "categoryName"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object p1, p0, Lo/PreferenceCategory$onRelationshipValidationResult$onMessageChannelReady;->ICustomTabsCallback:Lo/PreferenceCategory$onRelationshipValidationResult;

    iget-object p1, p1, Lo/PreferenceCategory$onRelationshipValidationResult;->ICustomTabsCallback:Lo/PreferenceCategory;

    invoke-static {p1}, Lo/PreferenceCategory;->onNavigationEvent(Lo/PreferenceCategory;)Lo/PreferenceGroup;

    move-result-object p1

    iget-object p2, p0, Lo/PreferenceCategory$onRelationshipValidationResult$onMessageChannelReady;->ICustomTabsCallback:Lo/PreferenceCategory$onRelationshipValidationResult;

    iget-object p2, p2, Lo/PreferenceCategory$onRelationshipValidationResult;->ICustomTabsCallback:Lo/PreferenceCategory;

    invoke-static {p2}, Lo/PreferenceCategory;->onNavigationEvent(Lo/PreferenceCategory;)Lo/PreferenceGroup;

    move-result-object p2

    .line 4032
    iget-object p2, p2, Lo/PreferenceGroup;->onPostMessage:Lo/setActive;

    .line 4320
    iget-object p2, p2, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 4321
    sget-object v0, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eq p2, v0, :cond_3

    goto :goto_3

    :cond_3
    move-object p2, v1

    .line 276
    :goto_3
    check-cast p2, Lo/onDetach$onRelationshipValidationResult;

    if-eqz p2, :cond_4

    .line 5081
    iget-object v1, p2, Lo/onDetach$onRelationshipValidationResult;->extraCallback:Ljava/lang/String;

    .line 276
    :cond_4
    invoke-virtual {p1, v1}, Lo/PreferenceGroup;->extraCallback(Ljava/lang/String;)V

    .line 277
    iget-object p1, p0, Lo/PreferenceCategory$onRelationshipValidationResult$onMessageChannelReady;->ICustomTabsCallback:Lo/PreferenceCategory$onRelationshipValidationResult;

    iget-object p1, p1, Lo/PreferenceCategory$onRelationshipValidationResult;->ICustomTabsCallback:Lo/PreferenceCategory;

    const-string p2, "bank_offer_category_select"

    invoke-static {p1, p2}, Lo/PreferenceCategory;->onNavigationEvent(Lo/PreferenceCategory;Ljava/lang/String;)Lo/onSupportContentChanged;

    :cond_5
    return-void
.end method
