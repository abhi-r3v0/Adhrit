.class public final Lo/getChildItemId;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getChildItemId$extraCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0001\'B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\u001a\u001a\u00020\u001b2\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001dH\u0002J\u0016\u0010\u001f\u001a\u00020\u001b2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020!0\u001dH\u0002J\u0008\u0010\"\u001a\u00020\u001bH\u0002J\u000e\u0010#\u001a\u00020\u001b2\u0006\u0010$\u001a\u00020%J\u0008\u0010&\u001a\u00020\u001bH\u0002R\u0016\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R \u0010\n\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u000c\u0012\u0004\u0012\u00020\u000e0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010\u0015\u001a\u0016\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u0016\u0012\u0004\u0012\u00020\u00180\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/slotmachine/SlotMachinePreFetcher;",
        "",
        "application",
        "Landroid/app/Application;",
        "(Landroid/app/Application;)V",
        "_progressLiveData",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "fetchingComplete",
        "",
        "lottieUpdaterMap",
        "",
        "Lcom/airbnb/lottie/LottieTask;",
        "Lcom/airbnb/lottie/LottieComposition;",
        "",
        "numLottieFailure",
        "progressLiveData",
        "Landroidx/lifecycle/LiveData;",
        "getProgressLiveData",
        "()Landroidx/lifecycle/LiveData;",
        "successful",
        "symbolsUpdaterMap",
        "Lcom/facebook/datasource/DataSource;",
        "Ljava/lang/Void;",
        "",
        "total",
        "addImagePrefetchTasks",
        "",
        "reelSymbols",
        "",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ReelSymbol;",
        "addLottiePrefetchTasks",
        "urls",
        "",
        "reset",
        "setData",
        "meta",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/MetaSlotMachine;",
        "updateProgress",
        "ImagePrefetchObserver",
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
.field ICustomTabsCallback:I

.field private ICustomTabsCallback$Stub:I

.field final asBinder:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field final asInterface:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field extraCallback:I

.field final onMessageChannelReady:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/createSeekBar<",
            "Lo/createCheckBox;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final onNavigationEvent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/WorkDatabase<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field onPostMessage:Z

.field private final onRelationshipValidationResult:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getChildItemId;->onRelationshipValidationResult:Landroid/app/Application;

    .line 19
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lo/getChildItemId;->onNavigationEvent:Ljava/util/Map;

    .line 20
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lo/getChildItemId;->onMessageChannelReady:Ljava/util/Map;

    .line 28
    new-instance p1, Lo/setActive;

    invoke-direct {p1}, Lo/setActive;-><init>()V

    iput-object p1, p0, Lo/getChildItemId;->asInterface:Lo/setActive;

    .line 29
    check-cast p1, Landroidx/lifecycle/LiveData;

    iput-object p1, p0, Lo/getChildItemId;->asBinder:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public static final synthetic onMessageChannelReady(Lo/getChildItemId;)V
    .locals 5

    .line 10085
    iget-boolean v0, p0, Lo/getChildItemId;->onPostMessage:Z

    if-nez v0, :cond_2

    .line 10087
    iget v0, p0, Lo/getChildItemId;->extraCallback:I

    iget v1, p0, Lo/getChildItemId;->ICustomTabsCallback:I

    add-int/2addr v0, v1

    iget v1, p0, Lo/getChildItemId;->ICustomTabsCallback$Stub:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 10088
    iput-boolean v0, p0, Lo/getChildItemId;->onPostMessage:Z

    .line 10089
    iget-object p0, p0, Lo/getChildItemId;->asInterface:Lo/setActive;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 10091
    :cond_0
    iget-object v0, p0, Lo/getChildItemId;->asInterface:Lo/setActive;

    iget-object v1, p0, Lo/getChildItemId;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    const-string v2, "$this$sum"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 10694
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    add-float/2addr v2, v3

    goto :goto_0

    :cond_1
    float-to-double v1, v2

    .line 10091
    iget p0, p0, Lo/getChildItemId;->ICustomTabsCallback$Stub:I

    int-to-double v3, p0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private final onPostMessage(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 54
    iget v0, p0, Lo/getChildItemId;->ICustomTabsCallback$Stub:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lo/getChildItemId;->ICustomTabsCallback$Stub:I

    .line 56
    check-cast p1, Ljava/lang/Iterable;

    .line 137
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 57
    iget-object v1, p0, Lo/getChildItemId;->onRelationshipValidationResult:Landroid/app/Application;

    check-cast v1, Landroid/content/Context;

    invoke-static {v1, v0}, Lo/createButton;->onPostMessage(Landroid/content/Context;Ljava/lang/String;)Lo/createSeekBar;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lo/getChildItemId;->onMessageChannelReady:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 9043
    new-instance v3, Lo/addWrite;

    invoke-direct {v3, v0, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10027
    iget-object v2, v3, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 10028
    iget-object v3, v3, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 58
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance v1, Lo/getChildItemId$ICustomTabsCallback;

    invoke-direct {v1, v0, p0}, Lo/getChildItemId$ICustomTabsCallback;-><init>(Lo/createSeekBar;Lo/getChildItemId;)V

    check-cast v1, Lo/createMultiAutoCompleteTextView;

    invoke-virtual {v0, v1}, Lo/createSeekBar;->onPostMessage(Lo/createMultiAutoCompleteTextView;)Lo/createSeekBar;

    .line 67
    new-instance v1, Lo/getChildItemId$onMessageChannelReady;

    invoke-direct {v1, p0}, Lo/getChildItemId$onMessageChannelReady;-><init>(Lo/getChildItemId;)V

    check-cast v1, Lo/createMultiAutoCompleteTextView;

    invoke-virtual {v0, v1}, Lo/createSeekBar;->ICustomTabsCallback(Lo/createMultiAutoCompleteTextView;)Lo/createSeekBar;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final extraCallback(Lcom/dreamplug/fabrik/ui/lifestyle/win/network/MetaSlotMachine;)V
    .locals 6

    const-string v0, "meta"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3075
    iput v0, p0, Lo/getChildItemId;->ICustomTabsCallback$Stub:I

    .line 3076
    iput v0, p0, Lo/getChildItemId;->extraCallback:I

    .line 3077
    iput v0, p0, Lo/getChildItemId;->ICustomTabsCallback:I

    .line 3078
    iput-boolean v0, p0, Lo/getChildItemId;->onPostMessage:Z

    .line 3080
    iget-object v1, p0, Lo/getChildItemId;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 3081
    iget-object v1, p0, Lo/getChildItemId;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 4036
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/MetaSlotMachine;->onNavigationEvent:Ljava/util/List;

    .line 4041
    iget v2, p0, Lo/getChildItemId;->ICustomTabsCallback$Stub:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lo/getChildItemId;->ICustomTabsCallback$Stub:I

    .line 4043
    check-cast v1, Ljava/lang/Iterable;

    .line 4135
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ReelSymbol;

    .line 4045
    invoke-static {}, Lo/CombineContinuationsWorker;->ICustomTabsCallback()Lo/weakContext;

    move-result-object v3

    .line 5056
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ReelSymbol;->ICustomTabsCallback:Ljava/lang/String;

    .line 4046
    invoke-static {v2}, Lo/getHostPrefix;->onNavigationEvent(Ljava/lang/String;)Lo/getHostPrefix;

    move-result-object v2

    const/4 v4, 0x0

    .line 5451
    sget-object v5, Lo/getInstallVersion;->extraCallback:Lo/getInstallVersion;

    invoke-virtual {v3, v2, v4, v5}, Lo/weakContext;->extraCallback(Lo/getHostPrefix;Ljava/lang/Object;Lo/getInstallVersion;)Lo/WorkDatabase;

    move-result-object v2

    .line 4048
    iget-object v3, p0, Lo/getChildItemId;->onNavigationEvent:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 6043
    new-instance v5, Lo/addWrite;

    invoke-direct {v5, v2, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7027
    iget-object v4, v5, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 7028
    iget-object v5, v5, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 4048
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4049
    new-instance v3, Lo/getChildItemId$extraCallback;

    invoke-direct {v3, p0}, Lo/getChildItemId$extraCallback;-><init>(Lo/getChildItemId;)V

    check-cast v3, Lo/ConstraintTrackingWorker;

    invoke-static {}, Lo/getTrimPathEnd;->onPostMessage()Lo/getTrimPathEnd;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Executor;

    invoke-interface {v2, v3, v4}, Lo/WorkDatabase;->onPostMessage(Lo/ConstraintTrackingWorker;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    .line 7038
    :cond_0
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/MetaSlotMachine;->onPostMessage:Ljava/util/List;

    if-eqz p1, :cond_7

    .line 37
    check-cast p1, Ljava/lang/Iterable;

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 121
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlabLevelMeta;

    .line 7065
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlabLevelMeta;->onNavigationEvent:Ljava/lang/String;

    .line 35
    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v3, 0x1

    :goto_3
    xor-int/2addr v3, v4

    if-eqz v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 122
    :cond_4
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 123
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/Collection;

    .line 132
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 131
    check-cast v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlabLevelMeta;

    .line 8065
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlabLevelMeta;->onNavigationEvent:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 131
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 134
    :cond_6
    check-cast p1, Ljava/util/List;

    .line 37
    invoke-direct {p0, p1}, Lo/getChildItemId;->onPostMessage(Ljava/util/List;)V

    :cond_7
    return-void
.end method
