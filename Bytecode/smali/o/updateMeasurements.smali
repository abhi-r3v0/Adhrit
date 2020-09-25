.class public final Lo/updateMeasurements;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "hasFocus",
        "",
        "onFocusChange"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/createFullSpanItemFromEnd;

.field final ICustomTabsCallback$Stub:Landroid/view/View;

.field ICustomTabsCallback$Stub$Proxy:Lo/updateDxDy$onMessageChannelReady;

.field final ICustomTabsService:Lo/isSameListener;

.field private final IPostMessageService$Stub:Lo/setRecycleChildrenOnDetach;

.field final asBinder:Lo/findFirstVisibleItemClosestToStart;

.field final asInterface:Landroid/widget/EditText;

.field final extraCallback:Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

.field final extraCommand:Lo/getSpanIndex;

.field getInterfaceDescriptor:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Steps;",
            ">;"
        }
    .end annotation
.end field

.field final mayLaunchUrl:Lo/getSpanGroupIndex;

.field final newSession:Lo/createFullSpanItemFromEnd;

.field final onMessageChannelReady:Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

.field final onNavigationEvent:Lo/createFullSpanItemFromEnd;

.field final onPostMessage:Lo/onChildrenLoaded;

.field final onRelationshipValidationResult:Lo/createFullSpanItemFromEnd;

.field final onTransact:Lo/onChildrenLoaded;

.field final postMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

.field private requestPostMessageChannel:D

.field final updateVisuals:Landroid/view/View;

.field final warmup:Lo/createFullSpanItemFromEnd;


# direct methods
.method public constructor <init>(Landroid/view/View;Lo/MediaControllerCompatApi21$CallbackProxy;Lo/getSpanIndex;Lo/setRecycleChildrenOnDetach;Lo/getSpanGroupIndex;)V
    .locals 8

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycle"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lendingViewModel"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sharedViewModel"

    invoke-static {p4, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p5, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/updateMeasurements;->updateVisuals:Landroid/view/View;

    iput-object p2, p0, Lo/updateMeasurements;->postMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p3, p0, Lo/updateMeasurements;->extraCommand:Lo/getSpanIndex;

    iput-object p4, p0, Lo/updateMeasurements;->IPostMessageService$Stub:Lo/setRecycleChildrenOnDetach;

    iput-object p5, p0, Lo/updateMeasurements;->mayLaunchUrl:Lo/getSpanGroupIndex;

    .line 23
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->amountGroupExpanded:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    iput-object p1, p0, Lo/updateMeasurements;->extraCallback:Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    .line 24
    iget-object p1, p0, Lo/updateMeasurements;->updateVisuals:Landroid/view/View;

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->amountGroupCollapsed:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onChildrenLoaded;

    iput-object p1, p0, Lo/updateMeasurements;->onPostMessage:Lo/onChildrenLoaded;

    .line 25
    iget-object p1, p0, Lo/updateMeasurements;->updateVisuals:Landroid/view/View;

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->amountGroupExpanded:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    iput-object p1, p0, Lo/updateMeasurements;->onMessageChannelReady:Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    .line 26
    iget-object p1, p0, Lo/updateMeasurements;->updateVisuals:Landroid/view/View;

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->loanAmountText:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/updateMeasurements;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    .line 27
    iget-object p1, p0, Lo/updateMeasurements;->updateVisuals:Landroid/view/View;

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->interestText:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/updateMeasurements;->ICustomTabsCallback:Lo/createFullSpanItemFromEnd;

    .line 28
    iget-object p1, p0, Lo/updateMeasurements;->updateVisuals:Landroid/view/View;

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->seeker:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/findFirstVisibleItemClosestToStart;

    iput-object p1, p0, Lo/updateMeasurements;->asBinder:Lo/findFirstVisibleItemClosestToStart;

    .line 29
    iget-object p1, p0, Lo/updateMeasurements;->updateVisuals:Landroid/view/View;

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->constraintLayout2:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onChildrenLoaded;

    iput-object p1, p0, Lo/updateMeasurements;->onTransact:Lo/onChildrenLoaded;

    .line 30
    iget-object p1, p0, Lo/updateMeasurements;->updateVisuals:Landroid/view/View;

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->loanAmount:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lo/updateMeasurements;->asInterface:Landroid/widget/EditText;

    .line 31
    iget-object p1, p0, Lo/updateMeasurements;->updateVisuals:Landroid/view/View;

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->amountLayout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lo/updateMeasurements;->ICustomTabsCallback$Stub:Landroid/view/View;

    .line 32
    iget-object p1, p0, Lo/updateMeasurements;->updateVisuals:Landroid/view/View;

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->amountDialNote:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/updateMeasurements;->onRelationshipValidationResult:Lo/createFullSpanItemFromEnd;

    .line 33
    iget-object p1, p0, Lo/updateMeasurements;->updateVisuals:Landroid/view/View;

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/updateMeasurements;->newSession:Lo/createFullSpanItemFromEnd;

    .line 34
    iget-object p1, p0, Lo/updateMeasurements;->updateVisuals:Landroid/view/View;

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->subTitle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/updateMeasurements;->warmup:Lo/createFullSpanItemFromEnd;

    .line 9009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    const-string p2, "Resources.getSystem()"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 p2, 0x1

    const p3, 0x41d9999a    # 27.2f

    .line 9010
    invoke-static {p2, p3, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    .line 41
    iget-object v0, p0, Lo/updateMeasurements;->ICustomTabsCallback$Stub:Landroid/view/View;

    const-string p3, "amountLayout"

    invoke-static {v0, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lo/updateMeasurements;->updateVisuals:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const p4, 0x7f06008c

    invoke-static {p3, p4}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 p3, 0x8

    new-array v5, p3, [F

    const/4 p3, 0x0

    aput p1, v5, p3

    aput p1, v5, p2

    const/4 p2, 0x2

    aput p1, v5, p2

    const/4 p2, 0x3

    aput p1, v5, p2

    const/4 p1, 0x0

    const/4 p2, 0x4

    aput p1, v5, p2

    const/4 p2, 0x5

    aput p1, v5, p2

    const/4 p2, 0x6

    aput p1, v5, p2

    const/4 p2, 0x7

    aput p1, v5, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v7, 0x2f

    invoke-static/range {v0 .. v7}, Lo/missCount;->onNavigationEvent(Landroid/view/View;Ljava/lang/String;FLjava/lang/String;Ljava/lang/Float;[FLjava/lang/Integer;I)V

    .line 162
    new-instance p1, Lo/updateMeasurements$ICustomTabsCallback;

    invoke-direct {p1, p0}, Lo/updateMeasurements$ICustomTabsCallback;-><init>(Lo/updateMeasurements;)V

    check-cast p1, Lo/getServerTime;

    const-string p2, "initializer"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9021
    new-instance p2, Lo/fromChildMerge;

    invoke-direct {p2, p1}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast p2, Lo/isSameListener;

    .line 162
    iput-object p2, p0, Lo/updateMeasurements;->ICustomTabsService:Lo/isSameListener;

    return-void
.end method

.method public static final synthetic extraCallback(Lo/updateMeasurements;)V
    .locals 9

    .line 9186
    sget-object v0, Lo/replaceAll;->ICustomTabsCallback:Lo/replaceAll;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "callback "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/updateMeasurements;->asInterface:Landroid/widget/EditText;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AmountChangedListener"

    invoke-static {v1, v0}, Lo/replaceAll;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 9187
    iget-object v0, p0, Lo/updateMeasurements;->asInterface:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v3, ","

    const-string v4, ""

    .line 10075
    invoke-static {v0, v3, v4, v1}, Lo/childWrites;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 9188
    invoke-static {v0}, Lo/childWrites;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    float-to-double v5, v3

    iget-object v3, p0, Lo/updateMeasurements;->extraCommand:Lo/getSpanIndex;

    .line 10076
    iget-wide v7, v3, Lo/getSpanIndex;->IPostMessageService$Stub$Proxy:D

    cmpl-double v3, v5, v7

    if-ltz v3, :cond_3

    .line 9189
    iget-object v3, p0, Lo/updateMeasurements;->extraCommand:Lo/getSpanIndex;

    .line 11053
    iget-object v3, v3, Lo/getSpanIndex;->newSession:Ljava/lang/Double;

    .line 9189
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lo/access$3000;->ICustomTabsCallback(Ljava/lang/Double;D)Z

    move-result v3

    xor-int/2addr v3, v4

    if-eqz v3, :cond_2

    iget-object v3, p0, Lo/updateMeasurements;->IPostMessageService$Stub:Lo/setRecycleChildrenOnDetach;

    .line 11055
    iput-object v2, v3, Lo/setRecycleChildrenOnDetach;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 11056
    iget-object v2, v3, Lo/setRecycleChildrenOnDetach;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    iput-object v2, v3, Lo/setRecycleChildrenOnDetach;->warmup:Ljava/lang/String;

    .line 9190
    :cond_2
    iget-object v2, p0, Lo/updateMeasurements;->extraCommand:Lo/getSpanIndex;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 12053
    iput-object v0, v2, Lo/getSpanIndex;->newSession:Ljava/lang/Double;

    goto :goto_2

    .line 9192
    :cond_3
    iget-object v0, p0, Lo/updateMeasurements;->asInterface:Landroid/widget/EditText;

    iget-object v3, p0, Lo/updateMeasurements;->extraCommand:Lo/getSpanIndex;

    .line 12076
    iget-wide v5, v3, Lo/getSpanIndex;->IPostMessageService$Stub$Proxy:D

    .line 9192
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    const/16 v5, 0x3e

    invoke-static {v3, v1, v2, v2, v5}, Lo/extraCallback;->ICustomTabsCallback(Ljava/lang/Number;ZLjava/lang/String;Ljava/util/Locale;I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9193
    iget-object v0, p0, Lo/updateMeasurements;->extraCommand:Lo/getSpanIndex;

    .line 13076
    iget-wide v2, v0, Lo/getSpanIndex;->IPostMessageService$Stub$Proxy:D

    .line 9193
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 14053
    iput-object v2, v0, Lo/getSpanIndex;->newSession:Ljava/lang/Double;

    .line 9194
    iget-object v0, p0, Lo/updateMeasurements;->asInterface:Landroid/widget/EditText;

    const-string v2, "loanAmount"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    :goto_2
    new-array v0, v4, [Lo/addWrite;

    .line 9197
    iget-object p0, p0, Lo/updateMeasurements;->extraCommand:Lo/getSpanIndex;

    .line 15053
    iget-object p0, p0, Lo/getSpanIndex;->newSession:Ljava/lang/Double;

    .line 16043
    new-instance v2, Lo/addWrite;

    const-string/jumbo v3, "stash"

    invoke-direct {v2, v3, p0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const-string p0, "pairs"

    .line 9197
    invoke-static {v0, p0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16088
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-static {v4}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast p0, Ljava/util/Map;

    invoke-static {p0, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo v0, "stash_amount_screen_slide_amount"

    .line 9197
    invoke-static {v0, p0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 17021
    iget-object p1, p0, Lo/updateMeasurements;->extraCommand:Lo/getSpanIndex;

    .line 17072
    iget-object p1, p1, Lo/getSpanIndex;->IPostMessageService:Lo/setActive;

    .line 16127
    sget-object v0, Lo/onAnchorReady$ICustomTabsCallback;->extraCallback:Lo/onAnchorReady$ICustomTabsCallback;

    invoke-virtual {p1, v0}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 6

    const-string p1, "loanAmount.text"

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "loanAmount"

    if-eqz p2, :cond_2

    .line 18021
    iget-object p2, p0, Lo/updateMeasurements;->asInterface:Landroid/widget/EditText;

    .line 17136
    invoke-static {p2, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-static {p2, p1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 19021
    iget-object p1, p0, Lo/updateMeasurements;->asInterface:Landroid/widget/EditText;

    .line 17136
    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lo/extraCallback;->ICustomTabsCallback(Ljava/lang/CharSequence;)D

    move-result-wide p1

    goto :goto_1

    .line 20021
    :cond_1
    iget-object p1, p0, Lo/updateMeasurements;->extraCommand:Lo/getSpanIndex;

    .line 20076
    iget-wide p1, p1, Lo/getSpanIndex;->IPostMessageService$Stub$Proxy:D

    .line 21021
    :goto_1
    iput-wide p1, p0, Lo/updateMeasurements;->requestPostMessageChannel:D

    return-void

    :cond_2
    const/4 p2, 0x2

    new-array v3, p2, [Lo/addWrite;

    .line 22021
    iget-object v4, p0, Lo/updateMeasurements;->asInterface:Landroid/widget/EditText;

    .line 17139
    invoke-static {v4, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4, p1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_4

    .line 23021
    iget-object p1, p0, Lo/updateMeasurements;->asInterface:Landroid/widget/EditText;

    .line 17139
    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lo/extraCallback;->ICustomTabsCallback(Ljava/lang/CharSequence;)D

    move-result-wide v4

    goto :goto_3

    .line 24021
    :cond_4
    iget-object p1, p0, Lo/updateMeasurements;->extraCommand:Lo/getSpanIndex;

    .line 24076
    iget-wide v4, p1, Lo/getSpanIndex;->IPostMessageService$Stub$Proxy:D

    .line 17139
    :goto_3
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 25043
    new-instance v2, Lo/addWrite;

    const-string v4, "end"

    invoke-direct {v2, v4, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v3, v1

    .line 26021
    iget-wide v1, p0, Lo/updateMeasurements;->requestPostMessageChannel:D

    .line 17140
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 26043
    new-instance v1, Lo/addWrite;

    const-string/jumbo v2, "start"

    invoke-direct {v1, v2, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v3, v0

    const-string p1, "pairs"

    .line 17138
    invoke-static {v3, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26088
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-static {p2}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast p1, Ljava/util/Map;

    invoke-static {p1, v3}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo p2, "stash_amount_screen_click_edit_amount"

    .line 17138
    invoke-static {p2, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 5

    .line 47
    iget-object v0, p0, Lo/updateMeasurements;->extraCommand:Lo/getSpanIndex;

    .line 1040
    iget-object v0, v0, Lo/getSpanIndex;->ICustomTabsCallback$Stub:Lo/setActive;

    .line 47
    new-instance v1, Lo/throwIfInMutationOperation;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v2}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 48
    iget-object v0, p0, Lo/updateMeasurements;->updateVisuals:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 49
    iget-object v0, p0, Lo/updateMeasurements;->onPostMessage:Lo/onChildrenLoaded;

    const-string v1, "collapsedGroup"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    .line 201
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lo/updateMeasurements;->onPostMessage:Lo/onChildrenLoaded;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const-string v1, "$this$gone"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 2017
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    :cond_1
    iget-object v0, p0, Lo/updateMeasurements;->extraCallback:Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    const-string v1, "expandedGroup"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    .line 202
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_4

    .line 53
    iget-object v0, p0, Lo/updateMeasurements;->ICustomTabsCallback$Stub$Proxy:Lo/updateDxDy$onMessageChannelReady;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lo/updateDxDy$onMessageChannelReady;->ICustomTabsCallback()V

    .line 54
    :cond_3
    iget-object v0, p0, Lo/updateMeasurements;->extraCallback:Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lo/updateMeasurements;->postMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

    const-wide/16 v2, 0xc8

    .line 203
    new-instance v4, Lo/updateMeasurements$onNavigationEvent;

    invoke-direct {v4, v0, p0}, Lo/updateMeasurements$onNavigationEvent;-><init>(Landroid/view/View;Lo/updateMeasurements;)V

    check-cast v4, Lo/getServerTime;

    invoke-static {v0, v1, v2, v3, v4}, Lo/getTextOn;->ICustomTabsCallback(Landroid/view/View;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    move-result-object v0

    iput-object v0, p0, Lo/updateMeasurements;->ICustomTabsCallback$Stub$Proxy:Lo/updateDxDy$onMessageChannelReady;

    :cond_4
    return-void
.end method

.method public final onPostMessage()V
    .locals 9

    .line 147
    iget-object v0, p0, Lo/updateMeasurements;->asInterface:Landroid/widget/EditText;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, ","

    const-string v4, ""

    .line 2075
    invoke-static {v0, v3, v4, v2}, Lo/childWrites;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-static {v0}, Lo/childWrites;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    float-to-double v5, v3

    iget-object v3, p0, Lo/updateMeasurements;->extraCommand:Lo/getSpanIndex;

    .line 2076
    iget-wide v7, v3, Lo/getSpanIndex;->IPostMessageService$Stub$Proxy:D

    cmpl-double v3, v5, v7

    if-ltz v3, :cond_2

    .line 149
    iget-object v3, p0, Lo/updateMeasurements;->extraCommand:Lo/getSpanIndex;

    .line 3053
    iget-object v3, v3, Lo/getSpanIndex;->newSession:Ljava/lang/Double;

    .line 149
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lo/access$3000;->ICustomTabsCallback(Ljava/lang/Double;D)Z

    move-result v3

    xor-int/2addr v3, v4

    if-eqz v3, :cond_1

    iget-object v3, p0, Lo/updateMeasurements;->IPostMessageService$Stub:Lo/setRecycleChildrenOnDetach;

    .line 3055
    iput-object v1, v3, Lo/setRecycleChildrenOnDetach;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 3056
    iget-object v1, v3, Lo/setRecycleChildrenOnDetach;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    iput-object v1, v3, Lo/setRecycleChildrenOnDetach;->warmup:Ljava/lang/String;

    .line 150
    :cond_1
    iget-object v1, p0, Lo/updateMeasurements;->extraCommand:Lo/getSpanIndex;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 4053
    iput-object v0, v1, Lo/getSpanIndex;->newSession:Ljava/lang/Double;

    .line 151
    iget-object v0, p0, Lo/updateMeasurements;->extraCommand:Lo/getSpanIndex;

    .line 4072
    iget-object v0, v0, Lo/getSpanIndex;->IPostMessageService:Lo/setActive;

    .line 151
    sget-object v1, Lo/onAnchorReady$onNavigationEvent;->extraCallback:Lo/onAnchorReady$onNavigationEvent;

    invoke-virtual {v0, v1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    const/4 v0, 0x2

    new-array v1, v0, [Lo/addWrite;

    .line 153
    iget-object v3, p0, Lo/updateMeasurements;->extraCommand:Lo/getSpanIndex;

    .line 5060
    iget-object v3, v3, Lo/getSpanIndex;->postMessage:Ljava/lang/String;

    .line 6043
    new-instance v5, Lo/addWrite;

    const-string/jumbo v6, "source"

    invoke-direct {v5, v6, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v1, v2

    .line 154
    iget-object v2, p0, Lo/updateMeasurements;->extraCommand:Lo/getSpanIndex;

    .line 6053
    iget-object v2, v2, Lo/getSpanIndex;->newSession:Ljava/lang/Double;

    .line 7043
    new-instance v3, Lo/addWrite;

    const-string/jumbo v5, "stash"

    invoke-direct {v3, v5, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v4

    const-string v2, "pairs"

    .line 152
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7088
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo v0, "stash_amount_screen_click_proceed"

    .line 152
    invoke-static {v0, v2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void

    .line 157
    :cond_2
    iget-object v0, p0, Lo/updateMeasurements;->extraCommand:Lo/getSpanIndex;

    .line 8038
    iget-object v0, v0, Lo/getSpanIndex;->onPostMessage:Lo/setActive;

    .line 157
    new-instance v3, Lo/throwIfInMutationOperation;

    new-instance v5, Lo/addWrite;

    sget-object v6, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v6, 0x7f130290

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lo/updateMeasurements;->extraCommand:Lo/getSpanIndex;

    .line 8076
    iget-wide v7, v7, Lo/getSpanIndex;->IPostMessageService$Stub$Proxy:D

    double-to-int v7, v7

    .line 157
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v2

    invoke-static {v6, v4}, Lo/setInterpolator;->onMessageChannelReady(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v3, v5}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method
