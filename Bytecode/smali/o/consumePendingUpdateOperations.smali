.class public final Lo/consumePendingUpdateOperations;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\r\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001e\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020\t2\u0006\u00100\u001a\u00020\t2\u0006\u00101\u001a\u00020\tJ\u0006\u00102\u001a\u00020.J\u0010\u00103\u001a\u00020.2\u0008\u00104\u001a\u0004\u0018\u000105J>\u00106\u001a\u00020.2\"\u0008\u0002\u00107\u001a\u001c\u0012\u0004\u0012\u00020\t\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00100\u000f\u0018\u00010\u000f2\u0010\u0008\u0002\u00108\u001a\n\u0012\u0004\u0012\u00020.\u0018\u000109H\u0002J\u0018\u0010:\u001a\u00020.2\u0006\u0010;\u001a\u00020\t2\u0008\u0008\u0002\u0010<\u001a\u00020\u0016J8\u0010=\u001a\u0008\u0012\u0004\u0012\u00020>0*2\u0008\u0008\u0002\u0010?\u001a\u00020\u00162 \u0008\u0002\u0010@\u001a\u001a\u0012\u0004\u0012\u00020\t\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00100\u000f0\u000fJ(\u0010A\u001a\u0004\u0018\u00010\t2\u0006\u0010B\u001a\u00020!2\u0014\u0010C\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fH\u0002J\u0008\u0010D\u001a\u00020.H\u0002J\u0006\u0010E\u001a\u00020.J\u0008\u0010F\u001a\u00020.H\u0002J$\u0010G\u001a\u00020.2\u0006\u0010B\u001a\u00020!2\u0008\u0008\u0002\u0010<\u001a\u00020\u00162\u0008\u0008\u0002\u0010H\u001a\u00020\u0016H\u0002J\u0006\u0010I\u001a\u00020.J\u0018\u0010J\u001a\u00020.2\u000e\u0010K\u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010\u0006H\u0002J\u001e\u0010L\u001a\u00020.2\u0006\u0010/\u001a\u00020\t2\u0006\u00100\u001a\u00020\t2\u0006\u0010;\u001a\u00020\tR\u0016\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001d\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00100\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R,\u0010\u0013\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00170\u00150\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR&\u0010\u001c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001d0\u00060\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u0019\"\u0004\u0008\u001f\u0010\u001bR\u001d\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020!0\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u0012R\u001b\u0010#\u001a\u00020$8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\'\u0010(\u001a\u0004\u0008%\u0010&R\u0014\u0010)\u001a\u0008\u0012\u0004\u0012\u00020!0*X\u0082\u0004\u00a2\u0006\u0002\n\u0000R&\u0010+\u001a\u001a\u0012\u0004\u0012\u00020\t\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00100\u000f0\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006M"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/redemption/PostSliderFormEntity;",
        "",
        "viewModel",
        "Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemViewModel;",
        "(Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemViewModel;)V",
        "components",
        "",
        "Lcom/dreamplug/fabrik/ui/lifestyle/redemption/ComponentListItem;",
        "currentSectionId",
        "",
        "getCurrentSectionId",
        "()Ljava/lang/String;",
        "setCurrentSectionId",
        "(Ljava/lang/String;)V",
        "currentSelections",
        "",
        "Lcom/dreamplug/fabrik/ui/lifestyle/redemption/FieldSelectionValuesModel;",
        "getCurrentSelections",
        "()Ljava/util/Map;",
        "formCtaData",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lkotlin/Pair;",
        "",
        "",
        "getFormCtaData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "setFormCtaData",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "formUiData",
        "Lcom/dreamplug/utils/list/ListItem;",
        "getFormUiData",
        "setFormUiData",
        "idSectionMap",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;",
        "getIdSectionMap",
        "onTextChange",
        "Lcom/dreamplug/fabrik/ui/lifestyle/redemption/UserInputTypeListItem$OnTextChange;",
        "getOnTextChange",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/redemption/UserInputTypeListItem$OnTextChange;",
        "onTextChange$delegate",
        "Lkotlin/Lazy;",
        "originalSectionList",
        "",
        "userSelections",
        "validateInputs",
        "candidateSelected",
        "",
        "sectionId",
        "fieldId",
        "text",
        "failedSaveSelection",
        "fetchAddressIfRequired",
        "sectionsResponse",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/SectionsResponse;",
        "fetchSections",
        "selection",
        "onDone",
        "Lkotlin/Function0;",
        "fillSection",
        "id",
        "addNewValue",
        "getSelectionList",
        "Lcom/dreamplug/fabrik/ui/lifestyle/redemption/SectionsRequestModel;",
        "removePI",
        "proposedSelection",
        "getUserSelection",
        "section",
        "userSelection",
        "refreshSection",
        "saveSelection",
        "updateFormCta",
        "updateInputList",
        "clear",
        "updateSectionList",
        "updateSections",
        "sections",
        "valueClicked",
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
.field final ICustomTabsCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/removeOnScrollListener;",
            ">;>;"
        }
    .end annotation
.end field

.field final ICustomTabsCallback$Stub:Lo/pullGlows;

.field final asBinder:Lo/isSameListener;

.field asInterface:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lo/addWrite<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation
.end field

.field final extraCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;",
            ">;"
        }
    .end annotation
.end field

.field final onMessageChannelReady:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/removeOnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field final onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;",
            ">;"
        }
    .end annotation
.end field

.field onPostMessage:Ljava/lang/String;

.field onRelationshipValidationResult:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Ljava/util/List<",
            "Lo/StaggeredGridLayoutManager;",
            ">;>;"
        }
    .end annotation
.end field

.field onTransact:Z


# direct methods
.method public constructor <init>(Lo/pullGlows;)V
    .locals 1

    const-string/jumbo v0, "viewModel"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/consumePendingUpdateOperations;->ICustomTabsCallback$Stub:Lo/pullGlows;

    .line 23
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lo/consumePendingUpdateOperations;->ICustomTabsCallback:Ljava/util/Map;

    .line 24
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lo/consumePendingUpdateOperations;->onMessageChannelReady:Ljava/util/Map;

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lo/consumePendingUpdateOperations;->onNavigationEvent:Ljava/util/List;

    .line 27
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lo/consumePendingUpdateOperations;->extraCallback:Ljava/util/Map;

    .line 28
    new-instance p1, Lo/setActive;

    invoke-direct {p1}, Lo/setActive;-><init>()V

    iput-object p1, p0, Lo/consumePendingUpdateOperations;->onRelationshipValidationResult:Lo/setActive;

    .line 30
    new-instance p1, Lo/setActive;

    invoke-direct {p1}, Lo/setActive;-><init>()V

    iput-object p1, p0, Lo/consumePendingUpdateOperations;->asInterface:Lo/setActive;

    .line 34
    new-instance p1, Lo/consumePendingUpdateOperations$onPostMessage;

    invoke-direct {p1, p0}, Lo/consumePendingUpdateOperations$onPostMessage;-><init>(Lo/consumePendingUpdateOperations;)V

    check-cast p1, Lo/getServerTime;

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50239
    new-instance v0, Lo/fromChildMerge;

    invoke-direct {v0, p1}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v0, Lo/isSameListener;

    .line 34
    iput-object v0, p0, Lo/consumePendingUpdateOperations;->asBinder:Lo/isSameListener;

    return-void
.end method

.method public static synthetic extraCallback(Lo/consumePendingUpdateOperations;Ljava/util/Map;I)Ljava/util/List;
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    .line 320
    iget-object p1, p0, Lo/consumePendingUpdateOperations;->ICustomTabsCallback:Ljava/util/Map;

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lo/consumePendingUpdateOperations;->ICustomTabsCallback(ZLjava/util/Map;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic onMessageChannelReady(Lo/consumePendingUpdateOperations;Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;)V
    .locals 1

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p0, p1, v0, v0}, Lo/consumePendingUpdateOperations;->onPostMessage(Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;ZZ)V

    return-void
.end method

.method private static onPostMessage(Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;Ljava/util/Map;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/removeOnScrollListener;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1f

    .line 50210
    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->ICustomTabsCallback:Ljava/lang/String;

    .line 454
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const v3, -0x4468640c

    const-string v4, ", "

    const-string v5, ""

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v2, v3, :cond_9

    const v3, 0x72c36256

    if-eq v2, v3, :cond_0

    goto/16 :goto_c

    :cond_0
    const-string/jumbo v2, "user_input"

    .line 455
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50211
    iget-object p0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/InputData;

    if-eqz p0, :cond_6

    .line 50212
    iget-object p0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/InputData;->onPostMessage:Ljava/util/List;

    if-eqz p0, :cond_6

    .line 457
    check-cast p0, Ljava/lang/Iterable;

    .line 572
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-ltz v2, :cond_5

    .line 50213
    check-cast v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;

    .line 50214
    iget-object v2, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;->onMessageChannelReady:Ljava/lang/String;

    .line 458
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/removeOnScrollListener;

    if-eqz v2, :cond_1

    .line 50215
    iget-object v2, v2, Lo/removeOnScrollListener;->ICustomTabsCallback:Ljava/util/List;

    goto :goto_1

    :cond_1
    move-object v2, v0

    .line 459
    :goto_1
    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v3, 0x1

    :goto_3
    if-nez v3, :cond_4

    .line 460
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",\n"

    .line 461
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    move v2, v4

    goto :goto_0

    .line 50213
    :cond_5
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "Index overflow has happened."

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    .line 464
    :cond_6
    move-object p0, v1

    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_7

    goto :goto_4

    :cond_7
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_8

    .line 465
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    invoke-virtual {v1, p0, p1, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const-string v2, "address"

    .line 469
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 50216
    iget-object p0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/InputData;

    if-eqz p0, :cond_a

    .line 50217
    iget-object p0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/InputData;->onPostMessage:Ljava/util/List;

    if-eqz p0, :cond_a

    .line 470
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;

    if-eqz p0, :cond_a

    .line 50218
    iget-object p0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_5

    :cond_a
    move-object p0, v0

    .line 470
    :goto_5
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/removeOnScrollListener;

    if-eqz p0, :cond_b

    .line 50219
    iget-object p0, p0, Lo/removeOnScrollListener;->ICustomTabsCallback:Ljava/util/List;

    goto :goto_6

    :cond_b
    move-object p0, v0

    :goto_6
    if-eqz p0, :cond_1f

    .line 472
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 473
    sget-object v1, Lo/onOptionsMenuClosed;->onPostMessage:Lo/onOptionsMenuClosed;

    invoke-static {}, Lo/onOptionsMenuClosed;->onNavigationEvent()Lo/MediaControllerCompatApi24$TransportControls;

    move-result-object v1

    .line 50220
    iget-object v1, v1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 50221
    sget-object v2, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v1, v2, :cond_c

    goto :goto_7

    :cond_c
    move-object v1, v0

    .line 473
    :goto_7
    check-cast v1, Ljava/util/List;

    .line 474
    check-cast p0, Ljava/lang/Iterable;

    .line 574
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 475
    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    .line 575
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/dreamplug/fabrik/ui/address/Address;

    .line 50225
    iget-object v9, v9, Lcom/dreamplug/fabrik/ui/address/Address;->onNavigationEvent:Ljava/lang/String;

    .line 476
    invoke-static {v9, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    goto :goto_9

    :cond_f
    move-object v8, v0

    .line 576
    :goto_9
    check-cast v8, Lcom/dreamplug/fabrik/ui/address/Address;

    goto :goto_a

    :cond_10
    move-object v8, v0

    :goto_a
    if-eqz v8, :cond_d

    .line 50226
    iget-object v2, v8, Lcom/dreamplug/fabrik/ui/address/Address;->extraCallback:Ljava/lang/String;

    .line 479
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    .line 480
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50227
    iget-object v3, v8, Lcom/dreamplug/fabrik/ui/address/Address;->onMessageChannelReady:Ljava/lang/String;

    .line 481
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50228
    iget-object v2, v8, Lcom/dreamplug/fabrik/ui/address/Address;->onPostMessage:Ljava/lang/String;

    .line 483
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 487
    :cond_11
    move-object p0, p1

    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_12

    goto :goto_b

    :cond_12
    const/4 v6, 0x0

    :goto_b
    if-eqz v6, :cond_13

    .line 488
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p1, p0, v0, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    :cond_13
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 50229
    :cond_14
    :goto_c
    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/InputData;

    if-eqz v1, :cond_15

    .line 50230
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/InputData;->onPostMessage:Ljava/util/List;

    if-eqz v1, :cond_15

    .line 494
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;

    if-eqz v1, :cond_15

    .line 50231
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_d

    :cond_15
    move-object v1, v0

    .line 494
    :goto_d
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/removeOnScrollListener;

    if-eqz p1, :cond_16

    .line 50232
    iget-object p1, p1, Lo/removeOnScrollListener;->ICustomTabsCallback:Ljava/util/List;

    goto :goto_e

    :cond_16
    move-object p1, v0

    :goto_e
    if-eqz p1, :cond_1f

    .line 496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50233
    iget-object p0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/InputData;

    if-eqz p0, :cond_17

    .line 50234
    iget-object p0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/InputData;->onPostMessage:Ljava/util/List;

    if-eqz p0, :cond_17

    .line 497
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;

    if-eqz p0, :cond_17

    .line 50235
    iget-object p0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;->onNavigationEvent:Ljava/util/List;

    goto :goto_f

    :cond_17
    move-object p0, v0

    .line 498
    :goto_f
    check-cast p1, Ljava/lang/Iterable;

    .line 578
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_18
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz p0, :cond_1b

    .line 499
    move-object v3, p0

    check-cast v3, Ljava/lang/Iterable;

    .line 579
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/dreamplug/fabrik/ui/lifestyle/models/Values;

    .line 50236
    iget-object v9, v9, Lcom/dreamplug/fabrik/ui/lifestyle/models/Values;->onNavigationEvent:Ljava/lang/String;

    .line 500
    invoke-static {v9, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    goto :goto_11

    :cond_1a
    move-object v8, v0

    .line 580
    :goto_11
    check-cast v8, Lcom/dreamplug/fabrik/ui/lifestyle/models/Values;

    goto :goto_12

    :cond_1b
    move-object v8, v0

    :goto_12
    if-eqz v8, :cond_18

    .line 50237
    iget-object v2, v8, Lcom/dreamplug/fabrik/ui/lifestyle/models/Values;->onPostMessage:Ljava/lang/String;

    .line 503
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 507
    :cond_1c
    move-object p0, v1

    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_1d

    goto :goto_13

    :cond_1d
    const/4 v6, 0x0

    :goto_13
    if-eqz v6, :cond_1e

    .line 508
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    invoke-virtual {v1, p0, p1, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    :cond_1e
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1f
    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback(ZLjava/util/Map;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/removeOnScrollListener;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/redemption/SectionsRequestModel;",
            ">;"
        }
    .end annotation

    const-string v0, "proposedSelection"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 323
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 324
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 325
    iget-object v3, p0, Lo/consumePendingUpdateOperations;->extraCallback:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 50138
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->ICustomTabsCallback:Ljava/lang/String;

    goto :goto_1

    :cond_0
    move-object v3, v4

    :goto_1
    const-string/jumbo v5, "user_input"

    .line 325
    invoke-static {v3, v5}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lo/consumePendingUpdateOperations;->extraCallback:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;

    if-eqz v3, :cond_1

    .line 50139
    iget-object v4, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->ICustomTabsCallback:Ljava/lang/String;

    :cond_1
    const-string v3, "address"

    .line 325
    invoke-static {v4, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 326
    :goto_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    .line 327
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 328
    new-instance v6, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/FieldRequestModel;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "java.util.Collections.singletonList(element)"

    const-string/jumbo v9, "true"

    if-eqz v3, :cond_4

    .line 50140
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-static {v10, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 328
    :cond_4
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lo/removeOnScrollListener;

    .line 50141
    iget-object v10, v10, Lo/removeOnScrollListener;->ICustomTabsCallback:Ljava/util/List;

    :goto_4
    if-eqz v3, :cond_5

    .line 50142
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .line 328
    :cond_5
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/removeOnScrollListener;

    .line 50143
    iget-object v5, v5, Lo/removeOnScrollListener;->onPostMessage:Ljava/util/List;

    .line 328
    :goto_5
    invoke-direct {v6, v7, v10, v5}, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/FieldRequestModel;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 330
    :cond_6
    new-instance v1, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/SectionsRequestModel;

    invoke-direct {v1, v2, v4}, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/SectionsRequestModel;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    return-object v0
.end method

.method public final ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string/jumbo v0, "sectionId"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fieldId"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lo/consumePendingUpdateOperations;->extraCallback:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    check-cast v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;

    invoke-static {v0, p3}, Lo/pullGlows;->ICustomTabsCallback(Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lo/consumePendingUpdateOperations;->extraCallback:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 50071
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->ICustomTabsCallback:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    const-string v3, "dropdown"

    .line 215
    invoke-static {v1, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v3, ""

    const/4 v4, 0x1

    if-nez v1, :cond_a

    iget-object v1, p0, Lo/consumePendingUpdateOperations;->extraCallback:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;

    if-eqz v1, :cond_2

    .line 50072
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->ICustomTabsCallback:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    const-string/jumbo v5, "slider"

    .line 215
    invoke-static {v1, v5}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lo/consumePendingUpdateOperations;->extraCallback:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;

    if-eqz v1, :cond_3

    .line 50073
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->ICustomTabsCallback:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    const-string v5, "address"

    .line 215
    invoke-static {v1, v5}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_4

    .line 219
    :cond_4
    iget-object v1, p0, Lo/consumePendingUpdateOperations;->extraCallback:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;

    if-eqz v1, :cond_5

    .line 50077
    iget-object v2, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->ICustomTabsCallback:Ljava/lang/String;

    :cond_5
    const-string v1, "checkbox"

    .line 219
    invoke-static {v2, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 220
    iget-object v1, p0, Lo/consumePendingUpdateOperations;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/removeOnScrollListener;

    .line 221
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/List;

    new-instance v6, Lo/removeOnScrollListener;

    invoke-direct {v6, v2, v5}, Lo/removeOnScrollListener;-><init>(Ljava/util/List;Ljava/util/List;)V

    if-eqz v1, :cond_7

    .line 50078
    iget-object v2, v1, Lo/removeOnScrollListener;->ICustomTabsCallback:Ljava/util/List;

    if-eqz v2, :cond_7

    .line 222
    invoke-interface {v2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v4, :cond_7

    .line 50079
    iget-object v2, v6, Lo/removeOnScrollListener;->ICustomTabsCallback:Ljava/util/List;

    .line 50080
    iget-object v3, v1, Lo/removeOnScrollListener;->ICustomTabsCallback:Ljava/util/List;

    .line 223
    check-cast v3, Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 50081
    iget-object v2, v6, Lo/removeOnScrollListener;->ICustomTabsCallback:Ljava/util/List;

    .line 224
    invoke-interface {v2, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 50082
    iget-object p3, v6, Lo/removeOnScrollListener;->onPostMessage:Ljava/util/List;

    .line 50083
    iget-object v1, v1, Lo/removeOnScrollListener;->onPostMessage:Ljava/util/List;

    .line 225
    check-cast v1, Ljava/util/Collection;

    invoke-interface {p3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 50084
    iget-object p3, v6, Lo/removeOnScrollListener;->onPostMessage:Ljava/util/List;

    .line 226
    check-cast p3, Ljava/util/Collection;

    if-eqz p3, :cond_6

    invoke-static {p3}, Lo/isDemoHost;->extraCallback(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.collections.MutableCollection<T>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    if-eqz v1, :cond_8

    .line 50085
    iget-object v2, v6, Lo/removeOnScrollListener;->ICustomTabsCallback:Ljava/util/List;

    .line 50086
    iget-object v5, v1, Lo/removeOnScrollListener;->ICustomTabsCallback:Ljava/util/List;

    .line 229
    check-cast v5, Ljava/util/Collection;

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 50087
    iget-object v2, v6, Lo/removeOnScrollListener;->onPostMessage:Ljava/util/List;

    .line 50088
    iget-object v1, v1, Lo/removeOnScrollListener;->onPostMessage:Ljava/util/List;

    .line 230
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 50089
    :cond_8
    iget-object v1, v6, Lo/removeOnScrollListener;->ICustomTabsCallback:Ljava/util/List;

    .line 233
    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50090
    iget-object p3, v6, Lo/removeOnScrollListener;->onPostMessage:Ljava/util/List;

    if-nez v0, :cond_9

    move-object v0, v3

    .line 234
    :cond_9
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    :goto_3
    iget-object p3, p0, Lo/consumePendingUpdateOperations;->ICustomTabsCallback$Stub:Lo/pullGlows;

    .line 50091
    iget-object p3, p3, Lo/pullGlows;->getInterfaceDescriptor:Lo/setActive;

    .line 50092
    iget-object v0, v6, Lo/removeOnScrollListener;->ICustomTabsCallback:Ljava/util/List;

    .line 236
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p3, v0}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 237
    iget-object p3, p0, Lo/consumePendingUpdateOperations;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {p3, p2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 216
    :cond_a
    :goto_4
    iget-object v1, p0, Lo/consumePendingUpdateOperations;->onMessageChannelReady:Ljava/util/Map;

    new-instance v2, Lo/removeOnScrollListener;

    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    const-string p3, "elements"

    invoke-static {v5, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50074
    new-instance v7, Ljava/util/ArrayList;

    new-instance v8, Lo/childCompoundWrite;

    invoke-direct {v8, v5, v4}, Lo/childCompoundWrite;-><init>([Ljava/lang/Object;Z)V

    check-cast v8, Ljava/util/Collection;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v7, Ljava/util/List;

    new-array v5, v4, [Ljava/lang/String;

    if-nez v0, :cond_b

    move-object v0, v3

    :cond_b
    aput-object v0, v5, v6

    .line 216
    invoke-static {v5, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50075
    new-instance p3, Ljava/util/ArrayList;

    new-instance v0, Lo/childCompoundWrite;

    invoke-direct {v0, v5, v4}, Lo/childCompoundWrite;-><init>([Ljava/lang/Object;Z)V

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast p3, Ljava/util/List;

    .line 216
    invoke-direct {v2, v7, p3}, Lo/removeOnScrollListener;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object p2, p0, Lo/consumePendingUpdateOperations;->ICustomTabsCallback$Stub:Lo/pullGlows;

    .line 50076
    iget-object p2, p2, Lo/pullGlows;->getInterfaceDescriptor:Lo/setActive;

    .line 218
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p3}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 239
    :cond_c
    :goto_5
    iget-object p2, p0, Lo/consumePendingUpdateOperations;->extraCallback:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_d

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_d
    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;

    invoke-static {p0, p1}, Lo/consumePendingUpdateOperations;->onMessageChannelReady(Lo/consumePendingUpdateOperations;Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;)V

    return-void
.end method

.method public final extraCallback()V
    .locals 10

    .line 243
    iget-object v0, p0, Lo/consumePendingUpdateOperations;->ICustomTabsCallback$Stub:Lo/pullGlows;

    .line 50093
    iget-object v0, v0, Lo/pullGlows;->ICustomTabsCallback$Stub$Proxy:Lo/setActive;

    .line 50094
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 50095
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 243
    :goto_0
    check-cast v0, Lo/scrollTo;

    if-eqz v0, :cond_1

    .line 50099
    iget-object v0, v0, Lo/scrollTo;->onPostMessage:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    if-nez v0, :cond_2

    .line 243
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 244
    :cond_2
    iget-object v1, p0, Lo/consumePendingUpdateOperations;->ICustomTabsCallback:Ljava/util/Map;

    const-string v3, "$this$toMutableMap"

    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50100
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    check-cast v3, Ljava/util/Map;

    .line 245
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 246
    iget-object v4, p0, Lo/consumePendingUpdateOperations;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 245
    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v1, p0, Lo/consumePendingUpdateOperations;->onNavigationEvent:Ljava/util/List;

    move-object v4, v1

    check-cast v4, Ljava/lang/Iterable;

    .line 554
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;

    .line 50101
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->onPostMessage:Ljava/lang/String;

    .line 248
    invoke-static {v6, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 249
    iget-object v4, p0, Lo/consumePendingUpdateOperations;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    :goto_2
    if-ge v1, v4, :cond_4

    .line 250
    iget-object v5, p0, Lo/consumePendingUpdateOperations;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;

    .line 50102
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->onPostMessage:Ljava/lang/String;

    .line 250
    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 252
    :cond_4
    new-instance v1, Lo/consumePendingUpdateOperations$ICustomTabsCallback;

    invoke-direct {v1, p0, v0, v3}, Lo/consumePendingUpdateOperations$ICustomTabsCallback;-><init>(Lo/consumePendingUpdateOperations;ILjava/util/Map;)V

    check-cast v1, Lo/getServerTime;

    const/4 v0, 0x1

    .line 50103
    invoke-static {p0, v3, v0}, Lo/consumePendingUpdateOperations;->extraCallback(Lo/consumePendingUpdateOperations;Ljava/util/Map;I)Ljava/util/List;

    move-result-object v0

    .line 50105
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 50106
    iget-object v0, p0, Lo/consumePendingUpdateOperations;->ICustomTabsCallback$Stub:Lo/pullGlows;

    .line 50129
    iget-object v0, v0, Lo/pullGlows;->ICustomTabsService$Stub$Proxy:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/computeHorizontalScrollExtent;

    .line 50107
    iget-object v3, p0, Lo/consumePendingUpdateOperations;->ICustomTabsCallback$Stub:Lo/pullGlows;

    .line 50130
    iget-object v3, v3, Lo/pullGlows;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;

    if-eqz v3, :cond_5

    .line 50131
    iget-object v2, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;->extraCallback:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_5
    const/4 v3, 0x0

    const/4 v4, 0x4

    const-string v5, "post_slider"

    .line 50106
    invoke-static {v0, v2, v5, v3, v4}, Lo/computeHorizontalScrollExtent$onNavigationEvent;->onNavigationEvent(Lo/computeHorizontalScrollExtent;Ljava/lang/String;Ljava/lang/String;ZI)Lo/clearScrap;

    move-result-object v0

    goto :goto_3

    .line 50110
    :cond_6
    iget-object v3, p0, Lo/consumePendingUpdateOperations;->ICustomTabsCallback$Stub:Lo/pullGlows;

    .line 50132
    iget-object v3, v3, Lo/pullGlows;->ICustomTabsService$Stub$Proxy:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lo/computeHorizontalScrollExtent;

    .line 50111
    iget-object v3, p0, Lo/consumePendingUpdateOperations;->ICustomTabsCallback$Stub:Lo/pullGlows;

    .line 50133
    iget-object v3, v3, Lo/pullGlows;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;

    if-eqz v3, :cond_7

    .line 50134
    iget-object v2, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;->extraCallback:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_7
    move-object v5, v2

    .line 50112
    new-instance v6, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/UserSelectionRequestModel;

    invoke-direct {v6, v0}, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/UserSelectionRequestModel;-><init>(Ljava/util/List;)V

    const/4 v8, 0x0

    const/16 v9, 0x8

    const-string v7, "post_slider"

    .line 50110
    invoke-static/range {v4 .. v9}, Lo/computeHorizontalScrollExtent$onNavigationEvent;->onPostMessage(Lo/computeHorizontalScrollExtent;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/redemption/UserSelectionRequestModel;Ljava/lang/String;ZI)Lo/clearScrap;

    move-result-object v0

    .line 50118
    :goto_3
    new-instance v2, Lo/consumePendingUpdateOperations$onNavigationEvent;

    invoke-direct {v2, p0, v1}, Lo/consumePendingUpdateOperations$onNavigationEvent;-><init>(Lo/consumePendingUpdateOperations;Lo/getServerTime;)V

    check-cast v2, Lo/getScrapOrCachedViewForId;

    invoke-interface {v0, v2}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    return-void

    .line 555
    :cond_8
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Collection contains no element matching the predicate."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final onMessageChannelReady(Lcom/dreamplug/fabrik/ui/lifestyle/models/SectionsResponse;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 50135
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/SectionsResponse;->onMessageChannelReady:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 293
    check-cast v1, Ljava/lang/Iterable;

    .line 556
    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 557
    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;

    .line 50136
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->ICustomTabsCallback:Ljava/lang/String;

    const-string v3, "address"

    .line 293
    invoke-static {v2, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 297
    sget-object v0, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    new-instance v1, Lo/consumePendingUpdateOperations$extraCallback;

    invoke-direct {v1, p0, p1}, Lo/consumePendingUpdateOperations$extraCallback;-><init>(Lo/consumePendingUpdateOperations;Lcom/dreamplug/fabrik/ui/lifestyle/models/SectionsResponse;)V

    check-cast v1, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/updateItemAt;->ICustomTabsCallback(Lo/updateItemAt;Lo/getServerTime;)Ljava/io/Closeable;

    return-void

    :cond_3
    if-eqz p1, :cond_4

    .line 50137
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/SectionsResponse;->onMessageChannelReady:Ljava/util/List;

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 311
    :goto_1
    invoke-virtual {p0, p1}, Lo/consumePendingUpdateOperations;->onMessageChannelReady(Ljava/util/List;)V

    .line 312
    invoke-virtual {p0}, Lo/consumePendingUpdateOperations;->onPostMessage()V

    return-void
.end method

.method final onMessageChannelReady(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;",
            ">;)V"
        }
    .end annotation

    .line 519
    iget-object v0, p0, Lo/consumePendingUpdateOperations;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 520
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .line 582
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;

    .line 521
    iget-object v2, p0, Lo/consumePendingUpdateOperations;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 524
    check-cast p1, Ljava/lang/Iterable;

    .line 584
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;

    .line 525
    iget-object v1, p0, Lo/consumePendingUpdateOperations;->extraCallback:Ljava/util/Map;

    .line 50238
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->onPostMessage:Ljava/lang/String;

    .line 525
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 527
    :cond_1
    invoke-virtual {p0}, Lo/consumePendingUpdateOperations;->onNavigationEvent()V

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 22

    move-object/from16 v0, p0

    .line 345
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 348
    iget-object v2, v0, Lo/consumePendingUpdateOperations;->onNavigationEvent:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    const-string v4, "Resources.getSystem()"

    if-eqz v2, :cond_12

    .line 350
    new-instance v2, Lo/onCreateView;

    .line 50144
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    const/high16 v11, 0x41200000    # 10.0f

    .line 50145
    invoke-static {v3, v11, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v7, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xc

    const-string/jumbo v6, "section_top_space"

    move-object v5, v2

    .line 350
    invoke-direct/range {v5 .. v10}, Lo/onCreateView;-><init>(Ljava/lang/String;IIII)V

    .line 349
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    iget-object v2, v0, Lo/consumePendingUpdateOperations;->onNavigationEvent:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .line 562
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;

    .line 356
    iget-object v6, v0, Lo/consumePendingUpdateOperations;->extraCallback:Ljava/util/Map;

    .line 50146
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->onPostMessage:Ljava/lang/String;

    .line 356
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    check-cast v5, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;

    .line 357
    iget-object v6, v0, Lo/consumePendingUpdateOperations;->ICustomTabsCallback:Ljava/util/Map;

    .line 50147
    iget-object v7, v5, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->onPostMessage:Ljava/lang/String;

    .line 357
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v6, :cond_c

    .line 50148
    iget-object v6, v5, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/InputData;

    if-eqz v6, :cond_c

    .line 50149
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/lifestyle/models/InputData;->onPostMessage:Ljava/util/List;

    if-eqz v6, :cond_c

    const-string v8, "$this$getOrNull"

    .line 358
    invoke-static {v6, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "$this$lastIndex"

    .line 50150
    invoke-static {v6, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50151
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v3

    if-ltz v10, :cond_1

    .line 50150
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 358
    :goto_1
    check-cast v6, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;

    if-eqz v6, :cond_c

    .line 50152
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;->ICustomTabsCallback$Stub:Ljava/lang/String;

    if-eqz v6, :cond_c

    .line 50153
    iget-object v10, v5, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->ICustomTabsCallback:Ljava/lang/String;

    const-string v13, "address"

    .line 359
    invoke-static {v10, v13}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    const-string v13, "pairs"

    if-eqz v10, :cond_8

    .line 360
    sget-object v10, Lo/onOptionsMenuClosed;->onPostMessage:Lo/onOptionsMenuClosed;

    invoke-static {}, Lo/onOptionsMenuClosed;->onNavigationEvent()Lo/MediaControllerCompatApi24$TransportControls;

    move-result-object v10

    .line 50154
    iget-object v10, v10, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 50155
    sget-object v14, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v10, v14, :cond_2

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    .line 360
    :goto_2
    check-cast v10, Ljava/util/List;

    if-eqz v10, :cond_c

    check-cast v10, Ljava/lang/Iterable;

    .line 563
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Lcom/dreamplug/fabrik/ui/address/Address;

    .line 50159
    iget-object v15, v15, Lcom/dreamplug/fabrik/ui/address/Address;->onNavigationEvent:Ljava/lang/String;

    .line 360
    invoke-static {v15, v6}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    goto :goto_3

    :cond_4
    const/4 v14, 0x0

    .line 564
    :goto_3
    check-cast v14, Lcom/dreamplug/fabrik/ui/address/Address;

    if-eqz v14, :cond_c

    .line 361
    iget-object v10, v0, Lo/consumePendingUpdateOperations;->ICustomTabsCallback:Ljava/util/Map;

    .line 50160
    iget-object v15, v5, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->onPostMessage:Ljava/lang/String;

    new-array v12, v3, [Lo/addWrite;

    .line 50161
    iget-object v11, v5, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/InputData;

    .line 50162
    iget-object v11, v11, Lcom/dreamplug/fabrik/ui/lifestyle/models/InputData;->onPostMessage:Ljava/util/List;

    .line 361
    invoke-static {v11, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50163
    invoke-static {v11, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50164
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v3

    if-ltz v8, :cond_5

    .line 50163
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    goto :goto_4

    :cond_5
    const/4 v8, 0x0

    .line 361
    :goto_4
    check-cast v8, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;

    if-eqz v8, :cond_6

    .line 50165
    iget-object v8, v8, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_5

    :cond_6
    const/4 v8, 0x0

    :goto_5
    if-nez v8, :cond_7

    .line 361
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_7
    new-instance v9, Lo/removeOnScrollListener;

    new-array v11, v3, [Ljava/lang/String;

    aput-object v6, v11, v7

    invoke-static {v11}, Lo/getSessionPersistenceKey;->extraCallback([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    new-array v11, v3, [Ljava/lang/String;

    invoke-static {v14}, Lo/pullGlows;->onPostMessage(Lcom/dreamplug/fabrik/ui/address/Address;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v7

    invoke-static {v11}, Lo/getSessionPersistenceKey;->extraCallback([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-direct {v9, v6, v11}, Lo/removeOnScrollListener;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 50166
    new-instance v6, Lo/addWrite;

    invoke-direct {v6, v8, v9}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v12, v7

    .line 361
    invoke-static {v12, v13}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50167
    new-instance v6, Ljava/util/HashMap;

    invoke-static {v3}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/HashMap;-><init>(I)V

    move-object v8, v6

    check-cast v8, Ljava/util/Map;

    invoke-static {v8, v12}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 361
    invoke-interface {v10, v15, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 364
    :cond_8
    iget-object v10, v0, Lo/consumePendingUpdateOperations;->ICustomTabsCallback:Ljava/util/Map;

    .line 50168
    iget-object v11, v5, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->onPostMessage:Ljava/lang/String;

    new-array v12, v3, [Lo/addWrite;

    .line 50169
    iget-object v14, v5, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/InputData;

    .line 50170
    iget-object v14, v14, Lcom/dreamplug/fabrik/ui/lifestyle/models/InputData;->onPostMessage:Ljava/util/List;

    .line 364
    invoke-static {v14, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50171
    invoke-static {v14, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50172
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v3

    if-ltz v8, :cond_9

    .line 50171
    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    goto :goto_6

    :cond_9
    const/4 v8, 0x0

    .line 364
    :goto_6
    check-cast v8, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;

    if-eqz v8, :cond_a

    .line 50173
    iget-object v8, v8, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_7

    :cond_a
    const/4 v8, 0x0

    :goto_7
    if-nez v8, :cond_b

    .line 364
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_b
    new-instance v9, Lo/removeOnScrollListener;

    new-array v14, v3, [Ljava/lang/String;

    aput-object v6, v14, v7

    invoke-static {v14}, Lo/getSessionPersistenceKey;->extraCallback([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    new-array v15, v3, [Ljava/lang/String;

    aput-object v6, v15, v7

    invoke-static {v15}, Lo/getSessionPersistenceKey;->extraCallback([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-direct {v9, v14, v6}, Lo/removeOnScrollListener;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 50174
    new-instance v6, Lo/addWrite;

    invoke-direct {v6, v8, v9}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v12, v7

    .line 364
    invoke-static {v12, v13}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50175
    new-instance v6, Ljava/util/HashMap;

    invoke-static {v3}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/HashMap;-><init>(I)V

    move-object v8, v6

    check-cast v8, Ljava/util/Map;

    invoke-static {v8, v12}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 364
    invoke-interface {v10, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50176
    :cond_c
    :goto_8
    iget-boolean v6, v5, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->onTransact:Z

    if-nez v6, :cond_10

    .line 369
    iget-object v6, v0, Lo/consumePendingUpdateOperations;->ICustomTabsCallback:Ljava/util/Map;

    .line 50177
    iget-object v8, v5, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->onPostMessage:Ljava/lang/String;

    .line 369
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 371
    invoke-static {v5, v6}, Lo/consumePendingUpdateOperations;->onPostMessage(Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    .line 50178
    iget-object v9, v5, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->onPostMessage:Ljava/lang/String;

    .line 50179
    iget-object v6, v5, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->extraCallback:Ljava/lang/String;

    const-string v8, ""

    if-nez v6, :cond_d

    move-object v10, v8

    goto :goto_9

    :cond_d
    move-object v10, v6

    .line 50180
    :goto_9
    iget-object v6, v5, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->onNavigationEvent:Ljava/lang/String;

    if-nez v6, :cond_e

    move-object v14, v8

    goto :goto_a

    :cond_e
    move-object v14, v6

    .line 50181
    :goto_a
    iget-object v12, v5, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->onMessageChannelReady:Ljava/lang/String;

    .line 50182
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/InputData;

    if-eqz v5, :cond_f

    .line 50183
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/lifestyle/models/InputData;->onPostMessage:Ljava/util/List;

    if-eqz v5, :cond_f

    .line 379
    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/lit8 v7, v5, 0x1

    move v13, v7

    goto :goto_b

    :cond_f
    const/4 v13, 0x0

    .line 373
    :goto_b
    new-instance v5, Lo/smoothScrollBy;

    move-object v8, v5

    invoke-direct/range {v8 .. v14}, Lo/smoothScrollBy;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 372
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    const/high16 v11, 0x41200000    # 10.0f

    goto/16 :goto_0

    .line 386
    :cond_11
    new-instance v2, Lo/onCreateView;

    .line 50184
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    const/high16 v6, 0x41200000    # 10.0f

    .line 50185
    invoke-static {v3, v6, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0xc

    const-string/jumbo v17, "section_bottom_space"

    move-object/from16 v16, v2

    move/from16 v18, v5

    .line 386
    invoke-direct/range {v16 .. v21}, Lo/onCreateView;-><init>(Ljava/lang/String;IIII)V

    .line 385
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    :cond_12
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v3

    if-eqz v2, :cond_13

    .line 413
    new-instance v2, Lo/onCreateView;

    .line 50186
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/high16 v5, 0x41f00000    # 30.0f

    .line 50187
    invoke-static {v3, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xc

    const-string v6, "bottom_space"

    move-object v5, v2

    .line 413
    invoke-direct/range {v5 .. v10}, Lo/onCreateView;-><init>(Ljava/lang/String;IIII)V

    .line 412
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    :cond_13
    iget-object v2, v0, Lo/consumePendingUpdateOperations;->onRelationshipValidationResult:Lo/setActive;

    invoke-virtual {v2, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 419
    invoke-virtual/range {p0 .. p0}, Lo/consumePendingUpdateOperations;->onPostMessage()V

    return-void
.end method

.method final onPostMessage()V
    .locals 14

    .line 424
    iget-object v0, p0, Lo/consumePendingUpdateOperations;->onNavigationEvent:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 566
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;

    .line 425
    iget-object v5, p0, Lo/consumePendingUpdateOperations;->ICustomTabsCallback:Ljava/util/Map;

    .line 50188
    iget-object v6, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->onPostMessage:Ljava/lang/String;

    .line 425
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 426
    iget-object v6, p0, Lo/consumePendingUpdateOperations;->extraCallback:Ljava/util/Map;

    .line 50189
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->onPostMessage:Ljava/lang/String;

    .line 426
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;

    if-nez v3, :cond_0

    .line 428
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 50190
    :cond_0
    iget-boolean v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->onTransact:Z

    if-nez v3, :cond_2

    if-eqz v5, :cond_1

    .line 428
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_3

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 430
    :cond_4
    iget-object v0, p0, Lo/consumePendingUpdateOperations;->asInterface:Lo/setActive;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v2, :cond_a

    .line 431
    iget-object v2, p0, Lo/consumePendingUpdateOperations;->ICustomTabsCallback$Stub:Lo/pullGlows;

    .line 50191
    invoke-virtual {v2}, Lo/pullGlows;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CRED_POINTS"

    invoke-static {v5, v6}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v2}, Lo/pullGlows;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v2

    const-string v5, "GEMS"

    invoke-static {v2, v5}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v2, 0x1

    :goto_4
    if-nez v2, :cond_7

    .line 432
    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v1, 0x7f13045b

    invoke-static {v1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto/16 :goto_6

    :cond_7
    const-string v2, "placeholderText"

    .line 435
    sget-object v5, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v5, 0x7f1302b5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v4

    invoke-static {v5, v1}, Lo/setInterpolator;->onMessageChannelReady(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 436
    move-object v5, v1

    check-cast v5, Ljava/lang/CharSequence;

    .line 50192
    invoke-static {v5, v2, v4, v4}, Lo/childWrites;->onNavigationEvent(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result v6

    .line 436
    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    .line 50193
    invoke-static {v5, v2, v4, v4}, Lo/childWrites;->onNavigationEvent(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result v2

    add-int/lit8 v2, v2, 0xf

    .line 437
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 439
    sget-object v2, Lo/setSwitchTypefaceByIndex;->onNavigationEvent:Lo/setSwitchTypefaceByIndex$onNavigationEvent;

    .line 50194
    invoke-static {}, Lo/setSwitchTypefaceByIndex;->onPostMessage()Lo/setSwitchTypefaceByIndex;

    move-result-object v2

    if-nez v2, :cond_8

    const-string v4, "context"

    invoke-static {v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 439
    :cond_8
    check-cast v2, Landroid/content/Context;

    .line 568
    new-instance v4, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;

    invoke-direct {v4, v2}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "span"

    .line 440
    invoke-static {v6, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50195
    iget-object v5, v4, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 441
    iget-object v5, p0, Lo/consumePendingUpdateOperations;->ICustomTabsCallback$Stub:Lo/pullGlows;

    .line 50197
    iget-object v5, v5, Lo/pullGlows;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;

    if-eqz v5, :cond_9

    .line 50198
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;->newSession:Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;

    if-eqz v5, :cond_9

    .line 50199
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/EntityData;

    if-eqz v5, :cond_9

    .line 50200
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/lifestyle/models/EntityData;->extraCallback:Ljava/lang/String;

    goto :goto_5

    :cond_9
    const/4 v5, 0x0

    .line 441
    :goto_5
    invoke-static {v5}, Lo/pullGlows;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50201
    iget-object v6, v4, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v5, " "

    .line 442
    invoke-virtual {v4, v5}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady(Ljava/lang/String;)V

    .line 443
    iget-object v5, p0, Lo/consumePendingUpdateOperations;->ICustomTabsCallback$Stub:Lo/pullGlows;

    .line 50203
    iget-wide v5, v5, Lo/pullGlows;->IPostMessageService:D

    .line 443
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/Number;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfe

    invoke-static/range {v6 .. v13}, Lo/extraCallback;->extraCallback(Ljava/lang/Number;ZZZLjava/lang/String;Ljava/util/Locale;II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50204
    iget-object v6, v4, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 444
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50206
    iget-object v2, v4, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 50208
    iget-object v1, v4, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_6

    .line 448
    :cond_a
    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v1, 0x7f13045f

    invoke-static {v1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 50209
    :goto_6
    new-instance v2, Lo/addWrite;

    invoke-direct {v2, v3, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 430
    invoke-virtual {v0, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method

.method final onPostMessage(Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;ZZ)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 126
    iget-object v3, v0, Lo/consumePendingUpdateOperations;->ICustomTabsCallback$Stub:Lo/pullGlows;

    .line 30048
    iput-boolean v2, v3, Lo/pullGlows;->ICustomTabsCallback:Z

    .line 31035
    iget-object v3, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->ICustomTabsCallback:Ljava/lang/String;

    const-string v4, "dropdown"

    .line 127
    invoke-static {v3, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0xa

    const-string v5, "$this$collectionSizeOrDefault"

    const/4 v6, 0x1

    const/4 v8, 0x0

    if-nez v3, :cond_2c

    .line 32035
    iget-object v3, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->ICustomTabsCallback:Ljava/lang/String;

    const-string v9, "checkbox"

    .line 127
    invoke-static {v3, v9}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 33035
    iget-object v3, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->ICustomTabsCallback:Ljava/lang/String;

    const-string/jumbo v9, "slider"

    .line 127
    invoke-static {v3, v9}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_1a

    .line 38035
    :cond_0
    iget-object v3, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->ICustomTabsCallback:Ljava/lang/String;

    const-string/jumbo v9, "user_input"

    .line 142
    invoke-static {v3, v9}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 38039
    iget-object v3, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/InputData;

    if-eqz v3, :cond_1

    .line 38055
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/InputData;->onPostMessage:Ljava/util/List;

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 144
    :goto_0
    move-object v9, v3

    check-cast v9, Ljava/util/Collection;

    if-eqz v9, :cond_3

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v9, 0x1

    :goto_2
    if-nez v9, :cond_15

    const-string v9, "$this$getOrNull"

    .line 145
    invoke-static {v3, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "$this$lastIndex"

    .line 38266
    invoke-static {v3, v10}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39210
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v6

    if-ltz v11, :cond_4

    .line 38266
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    goto :goto_3

    :cond_4
    const/4 v11, 0x0

    .line 145
    :goto_3
    check-cast v11, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;

    if-eqz v11, :cond_5

    .line 40071
    iget-object v11, v11, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;->onNavigationEvent:Ljava/util/List;

    if-nez v11, :cond_6

    .line 145
    :cond_5
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    check-cast v11, Ljava/util/List;

    .line 146
    :cond_6
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const-string v12, ""

    if-le v11, v6, :cond_e

    if-eqz v2, :cond_7

    goto/16 :goto_6

    .line 158
    :cond_7
    iget-object v2, v0, Lo/consumePendingUpdateOperations;->ICustomTabsCallback$Stub:Lo/pullGlows;

    .line 45067
    iget-object v2, v2, Lo/pullGlows;->warmup:Lo/setActive;

    .line 158
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;

    .line 45071
    iget-object v11, v11, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;->onNavigationEvent:Ljava/util/List;

    if-eqz v11, :cond_d

    .line 158
    check-cast v11, Ljava/lang/Iterable;

    .line 540
    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v11, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46039
    instance-of v5, v11, Ljava/util/Collection;

    if-eqz v5, :cond_8

    move-object v4, v11

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    .line 540
    :cond_8
    invoke-direct {v13, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v13, Ljava/util/Collection;

    .line 541
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 542
    check-cast v5, Lcom/dreamplug/fabrik/ui/lifestyle/models/Values;

    .line 159
    new-instance v11, Lo/jumpToPositionForSmoothScroller;

    .line 47027
    iget-object v15, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->onPostMessage:Ljava/lang/String;

    .line 161
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;

    .line 47063
    iget-object v14, v14, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;->onMessageChannelReady:Ljava/lang/String;

    .line 47113
    iget-object v7, v5, Lcom/dreamplug/fabrik/ui/lifestyle/models/Values;->onPostMessage:Ljava/lang/String;

    .line 162
    iget-object v6, v0, Lo/consumePendingUpdateOperations;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;

    .line 48063
    iget-object v8, v8, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;->onMessageChannelReady:Ljava/lang/String;

    .line 162
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/removeOnScrollListener;

    if-eqz v6, :cond_a

    .line 48109
    iget-object v6, v6, Lo/removeOnScrollListener;->ICustomTabsCallback:Ljava/util/List;

    if-eqz v6, :cond_a

    .line 162
    invoke-static {v6, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48266
    invoke-static {v6, v10}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49210
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    const/16 v16, 0x1

    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_9

    const/4 v8, 0x0

    .line 48266
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    goto :goto_5

    :cond_9
    const/4 v6, 0x0

    .line 162
    :goto_5
    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_b

    :cond_a
    move-object v6, v12

    :cond_b
    invoke-static {v7, v6}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v18

    .line 50035
    iget-object v6, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->ICustomTabsCallback:Ljava/lang/String;

    move-object v7, v14

    move-object v14, v11

    move-object/from16 v16, v7

    move-object/from16 v17, v6

    move-object/from16 v19, v5

    .line 159
    invoke-direct/range {v14 .. v19}, Lo/jumpToPositionForSmoothScroller;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/dreamplug/fabrik/ui/lifestyle/models/Values;)V

    .line 165
    invoke-interface {v13, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    const/4 v8, 0x0

    goto :goto_4

    .line 543
    :cond_c
    move-object v7, v13

    check-cast v7, Ljava/util/List;

    goto/16 :goto_b

    :cond_d
    const/4 v7, 0x0

    goto/16 :goto_b

    .line 147
    :cond_e
    :goto_6
    iget-object v6, v0, Lo/consumePendingUpdateOperations;->ICustomTabsCallback$Stub:Lo/pullGlows;

    .line 41067
    iget-object v6, v6, Lo/pullGlows;->warmup:Lo/setActive;

    .line 147
    check-cast v3, Ljava/lang/Iterable;

    .line 536
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v3, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42039
    instance-of v5, v3, Ljava/util/Collection;

    if-eqz v5, :cond_f

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    .line 536
    :cond_f
    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v7, Ljava/util/Collection;

    .line 537
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 538
    move-object v15, v4

    check-cast v15, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;

    if-eqz v2, :cond_10

    if-eqz p3, :cond_10

    .line 148
    iget-object v4, v0, Lo/consumePendingUpdateOperations;->onMessageChannelReady:Ljava/util/Map;

    .line 42063
    iget-object v5, v15, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;->onMessageChannelReady:Ljava/lang/String;

    .line 148
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/removeOnScrollListener;

    if-eqz v4, :cond_10

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/List;

    const-string v8, "<set-?>"

    invoke-static {v5, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42109
    iput-object v5, v4, Lo/removeOnScrollListener;->ICustomTabsCallback:Ljava/util/List;

    .line 149
    :cond_10
    new-instance v4, Lo/ensureRightGlow;

    .line 43027
    iget-object v14, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->onPostMessage:Ljava/lang/String;

    .line 152
    iget-object v5, v0, Lo/consumePendingUpdateOperations;->onMessageChannelReady:Ljava/util/Map;

    .line 43063
    iget-object v8, v15, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;->onMessageChannelReady:Ljava/lang/String;

    .line 152
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/removeOnScrollListener;

    if-eqz v5, :cond_13

    .line 43109
    iget-object v5, v5, Lo/removeOnScrollListener;->ICustomTabsCallback:Ljava/util/List;

    if-eqz v5, :cond_13

    .line 152
    invoke-static {v5, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43266
    invoke-static {v5, v10}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44210
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    const/4 v11, 0x1

    sub-int/2addr v8, v11

    if-ltz v8, :cond_11

    const/4 v8, 0x0

    .line 43266
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    goto :goto_8

    :cond_11
    const/4 v5, 0x0

    .line 152
    :goto_8
    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_12

    goto :goto_9

    :cond_12
    move-object/from16 v16, v5

    goto :goto_a

    :cond_13
    :goto_9
    move-object/from16 v16, v12

    .line 153
    :goto_a
    iget-boolean v5, v0, Lo/consumePendingUpdateOperations;->onTransact:Z

    .line 45000
    iget-object v8, v0, Lo/consumePendingUpdateOperations;->asBinder:Lo/isSameListener;

    invoke-interface {v8}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v18, v8

    check-cast v18, Lo/ensureRightGlow$extraCallback;

    move-object v13, v4

    move/from16 v17, v5

    .line 149
    invoke-direct/range {v13 .. v18}, Lo/ensureRightGlow;-><init>(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;Ljava/lang/String;ZLo/ensureRightGlow$extraCallback;)V

    .line 155
    invoke-interface {v7, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 539
    :cond_14
    check-cast v7, Ljava/util/List;

    move-object v2, v6

    .line 158
    :goto_b
    invoke-virtual {v2, v7}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 169
    :cond_15
    iget-object v1, v0, Lo/consumePendingUpdateOperations;->ICustomTabsCallback$Stub:Lo/pullGlows;

    .line 50036
    iget-object v1, v1, Lo/pullGlows;->ICustomTabsService:Lo/setActive;

    .line 169
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 50037
    :cond_16
    iget-object v2, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->ICustomTabsCallback:Ljava/lang/String;

    const-string v3, "address"

    .line 170
    invoke-static {v2, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 171
    sget-object v2, Lo/onOptionsMenuClosed;->onPostMessage:Lo/onOptionsMenuClosed;

    invoke-static {}, Lo/onOptionsMenuClosed;->onNavigationEvent()Lo/MediaControllerCompatApi24$TransportControls;

    move-result-object v2

    .line 50038
    iget-object v2, v2, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 50039
    sget-object v3, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v2, v3, :cond_17

    goto :goto_c

    :cond_17
    const/4 v2, 0x0

    .line 171
    :goto_c
    check-cast v2, Ljava/util/List;

    .line 50043
    iget-object v3, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/InputData;

    if-eqz v3, :cond_18

    .line 50044
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/InputData;->onPostMessage:Ljava/util/List;

    goto :goto_d

    :cond_18
    const/4 v3, 0x0

    .line 173
    :goto_d
    move-object v6, v2

    check-cast v6, Ljava/util/Collection;

    if-eqz v6, :cond_1a

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_19

    goto :goto_e

    :cond_19
    const/4 v6, 0x0

    goto :goto_f

    :cond_1a
    :goto_e
    const/4 v6, 0x1

    :goto_f
    if-nez v6, :cond_2a

    move-object v6, v3

    check-cast v6, Ljava/util/Collection;

    if-eqz v6, :cond_1c

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1b

    goto :goto_10

    :cond_1b
    const/4 v6, 0x0

    goto :goto_11

    :cond_1c
    :goto_10
    const/4 v6, 0x1

    :goto_11
    if-nez v6, :cond_2a

    .line 174
    iget-object v6, v0, Lo/consumePendingUpdateOperations;->ICustomTabsCallback$Stub:Lo/pullGlows;

    .line 50045
    iget-object v6, v6, Lo/pullGlows;->warmup:Lo/setActive;

    .line 174
    check-cast v2, Ljava/lang/Iterable;

    .line 544
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v2, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50046
    instance-of v8, v2, Ljava/util/Collection;

    if-eqz v8, :cond_1d

    move-object v8, v2

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v8

    goto :goto_12

    :cond_1d
    const/16 v8, 0xa

    .line 544
    :goto_12
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v7, Ljava/util/Collection;

    .line 545
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_13
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_20

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 546
    move-object v15, v9

    check-cast v15, Lcom/dreamplug/fabrik/ui/address/Address;

    .line 175
    new-instance v9, Lo/scrollByInternal;

    .line 50047
    iget-object v11, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->onPostMessage:Ljava/lang/String;

    const/4 v10, 0x0

    .line 177
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;

    .line 50048
    iget-object v12, v12, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;->onMessageChannelReady:Ljava/lang/String;

    .line 178
    iget-object v13, v0, Lo/consumePendingUpdateOperations;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;

    .line 50049
    iget-object v10, v14, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;->onMessageChannelReady:Ljava/lang/String;

    .line 178
    invoke-interface {v13, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lo/removeOnScrollListener;

    if-eqz v10, :cond_1e

    .line 50050
    iget-object v10, v10, Lo/removeOnScrollListener;->ICustomTabsCallback:Ljava/util/List;

    if-eqz v10, :cond_1e

    .line 50051
    iget-object v13, v15, Lcom/dreamplug/fabrik/ui/address/Address;->onNavigationEvent:Ljava/lang/String;

    .line 178
    invoke-interface {v10, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    goto :goto_14

    .line 50052
    :cond_1e
    iget-object v10, v15, Lcom/dreamplug/fabrik/ui/address/Address;->ICustomTabsCallback:Ljava/lang/Boolean;

    :goto_14
    if-eqz v10, :cond_1f

    .line 179
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    move v14, v10

    goto :goto_15

    :cond_1f
    const/4 v14, 0x0

    .line 50053
    :goto_15
    iget-object v13, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->ICustomTabsCallback:Ljava/lang/String;

    move-object v10, v9

    .line 175
    invoke-direct/range {v10 .. v15}, Lo/scrollByInternal;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/dreamplug/fabrik/ui/address/Address;)V

    .line 182
    invoke-interface {v7, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 547
    :cond_20
    check-cast v7, Ljava/util/List;

    .line 174
    invoke-virtual {v6, v7}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 548
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/dreamplug/fabrik/ui/address/Address;

    .line 50054
    iget-object v7, v7, Lcom/dreamplug/fabrik/ui/address/Address;->asInterface:Ljava/lang/Boolean;

    .line 185
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v7, v8}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_21

    goto :goto_16

    :cond_22
    const/4 v6, 0x0

    .line 184
    :goto_16
    check-cast v6, Lcom/dreamplug/fabrik/ui/address/Address;

    if-eqz v6, :cond_29

    .line 187
    iget-object v2, v0, Lo/consumePendingUpdateOperations;->onMessageChannelReady:Ljava/util/Map;

    const/4 v7, 0x0

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;

    .line 50055
    iget-object v7, v8, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;->onMessageChannelReady:Ljava/lang/String;

    .line 187
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/removeOnScrollListener;

    if-eqz v2, :cond_23

    .line 50056
    iget-object v2, v2, Lo/removeOnScrollListener;->ICustomTabsCallback:Ljava/util/List;

    if-eqz v2, :cond_23

    .line 50057
    iget-object v7, v6, Lcom/dreamplug/fabrik/ui/address/Address;->onNavigationEvent:Ljava/lang/String;

    .line 187
    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v7, 0x1

    if-eq v2, v7, :cond_29

    .line 50058
    :cond_23
    iget-object v2, v6, Lcom/dreamplug/fabrik/ui/address/Address;->onNavigationEvent:Ljava/lang/String;

    const/4 v6, 0x0

    .line 189
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;

    .line 50059
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;->onMessageChannelReady:Ljava/lang/String;

    .line 50060
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->onPostMessage:Ljava/lang/String;

    .line 191
    invoke-virtual {v0, v1, v3, v2}, Lo/consumePendingUpdateOperations;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    sget-object v1, Lo/onOptionsMenuClosed;->onPostMessage:Lo/onOptionsMenuClosed;

    invoke-static {}, Lo/onOptionsMenuClosed;->onNavigationEvent()Lo/MediaControllerCompatApi24$TransportControls;

    move-result-object v1

    sget-object v2, Lo/onOptionsMenuClosed;->onPostMessage:Lo/onOptionsMenuClosed;

    invoke-static {}, Lo/onOptionsMenuClosed;->onNavigationEvent()Lo/MediaControllerCompatApi24$TransportControls;

    move-result-object v2

    .line 50061
    iget-object v2, v2, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 50062
    sget-object v3, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v2, v3, :cond_24

    goto :goto_17

    :cond_24
    const/4 v2, 0x0

    .line 192
    :goto_17
    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_28

    check-cast v2, Ljava/lang/Iterable;

    .line 550
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50066
    instance-of v5, v2, Ljava/util/Collection;

    if-eqz v5, :cond_25

    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    .line 550
    :cond_25
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 551
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 552
    check-cast v4, Lcom/dreamplug/fabrik/ui/address/Address;

    .line 50067
    iget-object v5, v4, Lcom/dreamplug/fabrik/ui/address/Address;->asInterface:Ljava/lang/Boolean;

    .line 193
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v5, v6}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 194
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v4, v5}, Lcom/dreamplug/fabrik/ui/address/Address;->onPostMessage(Lcom/dreamplug/fabrik/ui/address/Address;Ljava/lang/Boolean;)Lcom/dreamplug/fabrik/ui/address/Address;

    move-result-object v4

    .line 197
    :cond_26
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 553
    :cond_27
    move-object v7, v3

    check-cast v7, Ljava/util/List;

    goto :goto_19

    :cond_28
    const/4 v7, 0x0

    .line 192
    :goto_19
    invoke-virtual {v1, v7}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 200
    :cond_29
    iget-object v1, v0, Lo/consumePendingUpdateOperations;->ICustomTabsCallback$Stub:Lo/pullGlows;

    .line 50068
    iget-object v1, v1, Lo/pullGlows;->ICustomTabsService:Lo/setActive;

    .line 200
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 202
    :cond_2a
    iget-object v1, v0, Lo/consumePendingUpdateOperations;->ICustomTabsCallback$Stub:Lo/pullGlows;

    .line 50069
    iget-object v1, v1, Lo/pullGlows;->ICustomTabsService:Lo/setActive;

    .line 202
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 203
    iget-object v1, v0, Lo/consumePendingUpdateOperations;->ICustomTabsCallback$Stub:Lo/pullGlows;

    .line 50070
    iget-object v2, v1, Lo/pullGlows;->onPostMessage:Lo/getMoveDuration;

    if-eqz v2, :cond_2b

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xa

    const-string v3, "addresses/add?source=app"

    .line 203
    invoke-static/range {v2 .. v7}, Lo/getMoveDuration;->extraCallback(Lo/getMoveDuration;Ljava/lang/String;Ljava/lang/String;ZZI)V

    :cond_2b
    return-void

    :cond_2c
    :goto_1a
    const/4 v7, 0x1

    .line 33039
    iget-object v2, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/InputData;

    if-eqz v2, :cond_2d

    .line 33055
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/InputData;->onPostMessage:Ljava/util/List;

    goto :goto_1b

    :cond_2d
    const/4 v2, 0x0

    .line 129
    :goto_1b
    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    if-eqz v3, :cond_2f

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_1c

    :cond_2e
    const/4 v6, 0x0

    goto :goto_1d

    :cond_2f
    :goto_1c
    const/4 v6, 0x1

    :goto_1d
    if-nez v6, :cond_34

    .line 130
    iget-object v3, v0, Lo/consumePendingUpdateOperations;->ICustomTabsCallback$Stub:Lo/pullGlows;

    .line 33067
    iget-object v3, v3, Lo/pullGlows;->warmup:Lo/setActive;

    const/4 v6, 0x0

    .line 130
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;

    .line 33071
    iget-object v6, v7, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;->onNavigationEvent:Ljava/util/List;

    if-eqz v6, :cond_33

    .line 130
    check-cast v6, Ljava/lang/Iterable;

    .line 532
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v6, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34039
    instance-of v5, v6, Ljava/util/Collection;

    if-eqz v5, :cond_30

    move-object v4, v6

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    .line 532
    :cond_30
    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v7, Ljava/util/Collection;

    .line 533
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 534
    move-object v13, v5

    check-cast v13, Lcom/dreamplug/fabrik/ui/lifestyle/models/Values;

    .line 131
    new-instance v5, Lo/scrollStep;

    .line 35027
    iget-object v9, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->onPostMessage:Ljava/lang/String;

    const/4 v6, 0x0

    .line 133
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;

    .line 35063
    iget-object v10, v8, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;->onMessageChannelReady:Ljava/lang/String;

    .line 134
    iget-object v8, v0, Lo/consumePendingUpdateOperations;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;

    .line 36063
    iget-object v11, v11, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;->onMessageChannelReady:Ljava/lang/String;

    .line 134
    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo/removeOnScrollListener;

    if-eqz v8, :cond_31

    .line 36109
    iget-object v8, v8, Lo/removeOnScrollListener;->ICustomTabsCallback:Ljava/util/List;

    if-eqz v8, :cond_31

    .line 36111
    iget-object v11, v13, Lcom/dreamplug/fabrik/ui/lifestyle/models/Values;->onNavigationEvent:Ljava/lang/String;

    .line 134
    invoke-interface {v8, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    move v12, v8

    goto :goto_1f

    :cond_31
    const/4 v12, 0x0

    .line 37035
    :goto_1f
    iget-object v11, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->ICustomTabsCallback:Ljava/lang/String;

    move-object v8, v5

    .line 131
    invoke-direct/range {v8 .. v13}, Lo/scrollStep;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/dreamplug/fabrik/ui/lifestyle/models/Values;)V

    .line 138
    invoke-interface {v7, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 535
    :cond_32
    check-cast v7, Ljava/util/List;

    goto :goto_20

    :cond_33
    const/4 v7, 0x0

    .line 130
    :goto_20
    invoke-virtual {v3, v7}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 141
    :cond_34
    iget-object v1, v0, Lo/consumePendingUpdateOperations;->ICustomTabsCallback$Stub:Lo/pullGlows;

    .line 37068
    iget-object v1, v1, Lo/pullGlows;->ICustomTabsService:Lo/setActive;

    .line 141
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;Z)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "id"

    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iput-object v1, v0, Lo/consumePendingUpdateOperations;->onPostMessage:Ljava/lang/String;

    .line 60
    iget-object v3, v0, Lo/consumePendingUpdateOperations;->extraCallback:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;

    if-eqz v3, :cond_19

    .line 2039
    iget-object v4, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/InputData;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 2055
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/InputData;->onPostMessage:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 62
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;

    if-eqz v4, :cond_0

    .line 2071
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;->onNavigationEvent:Ljava/util/List;

    if-nez v4, :cond_1

    .line 62
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    .line 3035
    :cond_1
    iget-object v6, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->ICustomTabsCallback:Ljava/lang/String;

    const-string v7, "address"

    .line 64
    invoke-static {v6, v7}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const-string/jumbo v8, "user_input"

    const/4 v9, 0x1

    if-nez v6, :cond_3

    .line 4035
    iget-object v6, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->ICustomTabsCallback:Ljava/lang/String;

    .line 64
    invoke-static {v6, v8}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v9, :cond_2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/16 v17, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/16 v17, 0x1

    .line 65
    :goto_1
    iget-object v6, v0, Lo/consumePendingUpdateOperations;->ICustomTabsCallback$Stub:Lo/pullGlows;

    .line 4069
    iget-object v6, v6, Lo/pullGlows;->ICustomTabsCallback$Stub$Proxy:Lo/setActive;

    .line 65
    new-instance v15, Lo/scrollTo;

    .line 5027
    iget-object v11, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->onPostMessage:Ljava/lang/String;

    .line 5039
    iget-object v10, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/InputData;

    const/16 v18, 0x0

    if-eqz v10, :cond_4

    .line 5053
    iget-object v10, v10, Lcom/dreamplug/fabrik/ui/lifestyle/models/InputData;->onNavigationEvent:Ljava/lang/String;

    move-object/from16 v16, v10

    goto :goto_2

    :cond_4
    move-object/from16 v16, v18

    .line 6039
    :goto_2
    iget-object v10, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/InputData;

    if-eqz v10, :cond_5

    .line 6047
    iget-object v10, v10, Lcom/dreamplug/fabrik/ui/lifestyle/models/InputData;->onMessageChannelReady:Ljava/lang/String;

    move-object v12, v10

    goto :goto_3

    :cond_5
    move-object/from16 v12, v18

    .line 7039
    :goto_3
    iget-object v10, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/InputData;

    if-eqz v10, :cond_6

    .line 7049
    iget-object v10, v10, Lcom/dreamplug/fabrik/ui/lifestyle/models/InputData;->ICustomTabsCallback:Ljava/lang/String;

    move-object v13, v10

    goto :goto_4

    :cond_6
    move-object/from16 v13, v18

    .line 8039
    :goto_4
    iget-object v10, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/InputData;

    if-eqz v10, :cond_7

    .line 8051
    iget-object v10, v10, Lcom/dreamplug/fabrik/ui/lifestyle/models/InputData;->extraCallback:Ljava/lang/String;

    move-object v14, v10

    goto :goto_5

    :cond_7
    move-object/from16 v14, v18

    .line 9035
    :goto_5
    iget-object v10, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->ICustomTabsCallback:Ljava/lang/String;

    move-object/from16 v19, v10

    move-object v10, v15

    move-object v9, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v19

    .line 65
    invoke-direct/range {v10 .. v17}, Lo/scrollTo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v6, v9}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 74
    iget-object v6, v0, Lo/consumePendingUpdateOperations;->ICustomTabsCallback:Ljava/util/Map;

    .line 10027
    iget-object v9, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->onPostMessage:Ljava/lang/String;

    .line 74
    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 10039
    iget-object v9, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/InputData;

    if-eqz v9, :cond_8

    .line 10055
    iget-object v9, v9, Lcom/dreamplug/fabrik/ui/lifestyle/models/InputData;->onPostMessage:Ljava/util/List;

    if-eqz v9, :cond_8

    .line 75
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;

    if-eqz v9, :cond_8

    .line 10063
    iget-object v9, v9, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_6

    :cond_8
    move-object/from16 v9, v18

    :goto_6
    if-eqz v6, :cond_9

    .line 76
    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lo/removeOnScrollListener;

    goto :goto_7

    :cond_9
    move-object/from16 v10, v18

    :goto_7
    if-nez v10, :cond_b

    iget-object v10, v0, Lo/consumePendingUpdateOperations;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    const/4 v11, 0x1

    xor-int/2addr v10, v11

    if-eqz v10, :cond_a

    goto :goto_8

    :cond_a
    const/4 v10, 0x0

    goto :goto_9

    :cond_b
    const/4 v11, 0x1

    :goto_8
    const/4 v10, 0x1

    .line 11035
    :goto_9
    iget-object v12, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->ICustomTabsCallback:Ljava/lang/String;

    .line 78
    invoke-static {v12, v8}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    if-le v12, v11, :cond_13

    if-nez v2, :cond_13

    if-eqz v6, :cond_c

    .line 79
    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo/removeOnScrollListener;

    goto :goto_a

    :cond_c
    move-object/from16 v11, v18

    :goto_a
    if-eqz v11, :cond_11

    .line 80
    check-cast v4, Ljava/lang/Iterable;

    .line 530
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Lcom/dreamplug/fabrik/ui/lifestyle/models/Values;

    .line 11113
    iget-object v12, v12, Lcom/dreamplug/fabrik/ui/lifestyle/models/Values;->onPostMessage:Ljava/lang/String;

    .line 80
    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_e

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_e
    check-cast v13, Lo/removeOnScrollListener;

    .line 12109
    iget-object v13, v13, Lo/removeOnScrollListener;->ICustomTabsCallback:Ljava/util/List;

    const-string v14, "$this$getOrNull"

    invoke-static {v13, v14}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "$this$lastIndex"

    .line 12266
    invoke-static {v13, v14}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13210
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    if-ltz v14, :cond_f

    .line 12266
    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    goto :goto_b

    :cond_f
    move-object/from16 v13, v18

    .line 80
    :goto_b
    check-cast v13, Ljava/lang/String;

    invoke-static {v12, v13}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    goto :goto_c

    :cond_10
    move-object/from16 v11, v18

    .line 531
    :goto_c
    check-cast v11, Lcom/dreamplug/fabrik/ui/lifestyle/models/Values;

    goto :goto_d

    :cond_11
    move-object/from16 v11, v18

    :goto_d
    if-eqz v10, :cond_12

    if-eqz v11, :cond_12

    const/4 v11, 0x1

    goto :goto_e

    :cond_12
    const/4 v11, 0x0

    :goto_e
    move v10, v11

    .line 84
    :cond_13
    iget-object v4, v0, Lo/consumePendingUpdateOperations;->ICustomTabsCallback$Stub:Lo/pullGlows;

    .line 14071
    iget-object v4, v4, Lo/pullGlows;->getInterfaceDescriptor:Lo/setActive;

    if-eqz v10, :cond_14

    if-nez v2, :cond_14

    const/4 v11, 0x1

    goto :goto_f

    :cond_14
    const/4 v11, 0x0

    .line 84
    :goto_f
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v4, v9}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    if-eqz v6, :cond_15

    .line 85
    iget-object v4, v0, Lo/consumePendingUpdateOperations;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 86
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 87
    iget-object v9, v0, Lo/consumePendingUpdateOperations;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    new-instance v11, Lo/removeOnScrollListener;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lo/removeOnScrollListener;

    .line 14109
    iget-object v12, v12, Lo/removeOnScrollListener;->ICustomTabsCallback:Ljava/util/List;

    .line 87
    check-cast v12, Ljava/util/Collection;

    const-string v13, "$this$toMutableList"

    invoke-static {v12, v13}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14246
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v13, Ljava/util/List;

    .line 87
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/removeOnScrollListener;

    .line 15110
    iget-object v6, v6, Lo/removeOnScrollListener;->onPostMessage:Ljava/util/List;

    .line 87
    invoke-direct {v11, v13, v6}, Lo/removeOnScrollListener;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 16035
    :cond_15
    iget-object v4, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->ICustomTabsCallback:Ljava/lang/String;

    .line 90
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_11

    .line 99
    :sswitch_0
    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 100
    iget-object v4, v0, Lo/consumePendingUpdateOperations;->ICustomTabsCallback$Stub:Lo/pullGlows;

    .line 18078
    iget-object v4, v4, Lo/pullGlows;->updateVisuals:Lo/setActive;

    .line 100
    invoke-virtual {v4, v8}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 101
    invoke-virtual {v0, v3, v2, v2}, Lo/consumePendingUpdateOperations;->onPostMessage(Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;ZZ)V

    goto :goto_11

    :sswitch_1
    const-string v2, "checkbox"

    .line 95
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 96
    iget-object v4, v0, Lo/consumePendingUpdateOperations;->ICustomTabsCallback$Stub:Lo/pullGlows;

    .line 17078
    iget-object v4, v4, Lo/pullGlows;->updateVisuals:Lo/setActive;

    .line 96
    invoke-virtual {v4, v2}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 97
    invoke-static {v0, v3}, Lo/consumePendingUpdateOperations;->onMessageChannelReady(Lo/consumePendingUpdateOperations;Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;)V

    goto :goto_11

    :sswitch_2
    const-string v2, "dropdown"

    .line 91
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 92
    iget-object v4, v0, Lo/consumePendingUpdateOperations;->ICustomTabsCallback$Stub:Lo/pullGlows;

    .line 16078
    iget-object v4, v4, Lo/pullGlows;->updateVisuals:Lo/setActive;

    .line 92
    invoke-virtual {v4, v2}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 93
    invoke-static {v0, v3}, Lo/consumePendingUpdateOperations;->onMessageChannelReady(Lo/consumePendingUpdateOperations;Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;)V

    goto :goto_11

    :sswitch_3
    const-string/jumbo v2, "slider"

    .line 103
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 104
    iget-object v4, v0, Lo/consumePendingUpdateOperations;->ICustomTabsCallback$Stub:Lo/pullGlows;

    .line 19078
    iget-object v4, v4, Lo/pullGlows;->updateVisuals:Lo/setActive;

    .line 104
    invoke-virtual {v4, v2}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 105
    invoke-static {v0, v3}, Lo/consumePendingUpdateOperations;->onMessageChannelReady(Lo/consumePendingUpdateOperations;Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;)V

    goto :goto_11

    .line 107
    :sswitch_4
    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 108
    iget-object v2, v0, Lo/consumePendingUpdateOperations;->ICustomTabsCallback$Stub:Lo/pullGlows;

    .line 20078
    iget-object v2, v2, Lo/pullGlows;->updateVisuals:Lo/setActive;

    .line 108
    invoke-virtual {v2, v7}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 109
    invoke-static {v0, v3}, Lo/consumePendingUpdateOperations;->onMessageChannelReady(Lo/consumePendingUpdateOperations;Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;)V

    :cond_16
    :goto_11
    const/4 v2, 0x6

    new-array v4, v2, [Lo/addWrite;

    .line 115
    iget-object v6, v0, Lo/consumePendingUpdateOperations;->ICustomTabsCallback$Stub:Lo/pullGlows;

    .line 21061
    iget-object v6, v6, Lo/pullGlows;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;

    if-eqz v6, :cond_17

    .line 22000
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v6}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/removeItemDecoration;

    if-eqz v6, :cond_17

    .line 22396
    iget-object v6, v6, Lo/removeItemDecoration;->onNavigationEvent:Ljava/lang/String;

    goto :goto_12

    :cond_17
    move-object/from16 v6, v18

    .line 23043
    :goto_12
    new-instance v7, Lo/addWrite;

    const-string/jumbo v8, "reward_ID"

    invoke-direct {v7, v8, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v4, v5

    .line 116
    iget-object v5, v0, Lo/consumePendingUpdateOperations;->ICustomTabsCallback$Stub:Lo/pullGlows;

    .line 23061
    iget-object v5, v5, Lo/pullGlows;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;

    if-eqz v5, :cond_18

    .line 24000
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v5}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/removeItemDecoration;

    if-eqz v5, :cond_18

    .line 24397
    iget-object v5, v5, Lo/removeItemDecoration;->ICustomTabsCallback:Ljava/lang/String;

    goto :goto_13

    :cond_18
    move-object/from16 v5, v18

    .line 25043
    :goto_13
    new-instance v6, Lo/addWrite;

    const-string/jumbo v7, "usage_id"

    invoke-direct {v6, v7, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x1

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 26043
    new-instance v6, Lo/addWrite;

    const-string/jumbo v7, "section_id"

    invoke-direct {v6, v7, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v4, v5

    const/4 v1, 0x3

    .line 27035
    iget-object v5, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->ICustomTabsCallback:Ljava/lang/String;

    .line 27043
    new-instance v6, Lo/addWrite;

    const-string/jumbo v7, "type"

    invoke-direct {v6, v7, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v4, v1

    const/4 v1, 0x4

    .line 28043
    new-instance v5, Lo/addWrite;

    const-string v6, "form_type"

    const-string v7, "post_slider"

    invoke-direct {v5, v6, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v4, v1

    const/4 v1, 0x5

    .line 120
    invoke-static {v3}, Lo/pullGlows;->extraCallback(Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 29043
    new-instance v5, Lo/addWrite;

    const-string v6, "input_fields"

    invoke-direct {v5, v6, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v4, v1

    const-string v1, "pairs"

    .line 114
    invoke-static {v4, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29088
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v4}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo v2, "reward_input_section_load"

    .line 113
    invoke-static {v2, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    :cond_19
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4468640c -> :sswitch_4
        -0x359f871f -> :sswitch_3
        -0x19c0bbef -> :sswitch_2
        0x5b9b1bc3 -> :sswitch_1
        0x72c36256 -> :sswitch_0
    .end sparse-switch
.end method
