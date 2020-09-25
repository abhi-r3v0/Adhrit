.class public final Lo/measureChildWithDecorationsAndMargin;
.super Lo/setQueue;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/measureChildWithDecorationsAndMargin$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000S\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0015\u0018\u00002\u00020\u0001:\u0001%B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010!\u001a\u00020\"J\u0006\u0010#\u001a\u00020$R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R&\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001b\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0010\u0010\u0011R\u0010\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0016R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u0017\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u001e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010 \u00a8\u0006&"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/StashLandingViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "()V",
        "_state",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/dreamplug/fabrik/ui/lending/StashLandingViewModel$State;",
        "instrumentMap",
        "",
        "",
        "",
        "getInstrumentMap",
        "()Ljava/util/Map;",
        "setInstrumentMap",
        "(Ljava/util/Map;)V",
        "lendingService",
        "Lcom/dreamplug/fabrik/ui/lending/LendingService;",
        "getLendingService",
        "()Lcom/dreamplug/fabrik/ui/lending/LendingService;",
        "lendingService$delegate",
        "Lkotlin/Lazy;",
        "response",
        "com/dreamplug/fabrik/ui/lending/StashLandingViewModel$response$1",
        "Lcom/dreamplug/fabrik/ui/lending/StashLandingViewModel$response$1;",
        "screenCommonData",
        "Lcom/dreamplug/fabrik/ui/lending/model/ScreenCommonData;",
        "getScreenCommonData",
        "()Lcom/dreamplug/fabrik/ui/lending/model/ScreenCommonData;",
        "setScreenCommonData",
        "(Lcom/dreamplug/fabrik/ui/lending/model/ScreenCommonData;)V",
        "state",
        "Landroidx/lifecycle/LiveData;",
        "getState",
        "()Landroidx/lifecycle/LiveData;",
        "getDummyFailureTemplate",
        "Lcom/dreamplug/fabrik/ui/lending/StashLandingViewModel$State$ShowList;",
        "getLandingData",
        "",
        "State",
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
.field ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/ScreenCommonData;

.field extraCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final onMessageChannelReady:Lo/measureChildWithDecorationsAndMargin$ICustomTabsCallback;

.field final onNavigationEvent:Lo/isSameListener;

.field final onPostMessage:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lo/measureChildWithDecorationsAndMargin$onPostMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Lo/setQueue;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lo/measureChildWithDecorationsAndMargin;->extraCallback:Ljava/util/Map;

    .line 21
    sget-object v0, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    .line 74
    sget-object v0, Lo/measureChildWithDecorationsAndMargin$onMessageChannelReady;->onNavigationEvent:Lo/measureChildWithDecorationsAndMargin$onMessageChannelReady;

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 74
    iput-object v1, p0, Lo/measureChildWithDecorationsAndMargin;->onNavigationEvent:Lo/isSameListener;

    .line 25
    new-instance v0, Lo/setActive;

    invoke-direct {v0}, Lo/setActive;-><init>()V

    iput-object v0, p0, Lo/measureChildWithDecorationsAndMargin;->onPostMessage:Lo/setActive;

    .line 29
    new-instance v0, Lo/measureChildWithDecorationsAndMargin$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/measureChildWithDecorationsAndMargin$ICustomTabsCallback;-><init>(Lo/measureChildWithDecorationsAndMargin;)V

    iput-object v0, p0, Lo/measureChildWithDecorationsAndMargin;->onMessageChannelReady:Lo/measureChildWithDecorationsAndMargin$ICustomTabsCallback;

    return-void
.end method

.method public static final synthetic extraCallback(Lo/measureChildWithDecorationsAndMargin;)Lo/setActive;
    .locals 0

    .line 17
    iget-object p0, p0, Lo/measureChildWithDecorationsAndMargin;->onPostMessage:Lo/setActive;

    return-object p0
.end method

.method public static onPostMessage()Lo/measureChildWithDecorationsAndMargin$onPostMessage$onNavigationEvent;
    .locals 26

    .line 56
    new-instance v0, Lcom/dreamplug/fabrik/ui/lending/model/Background;

    move-object v2, v0

    new-instance v1, Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;

    sget-object v3, Lcom/dreamplug/utils/helpers/MoshiColorAdapter;->onNavigationEvent:Lcom/dreamplug/utils/helpers/MoshiColorAdapter;

    const-string v4, "#685967"

    invoke-virtual {v3, v4}, Lcom/dreamplug/utils/helpers/MoshiColorAdapter;->fromJson(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1019
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const-string v15, "java.util.Collections.singletonList(element)"

    invoke-static {v5, v15}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v8, 0x0

    move-object v3, v1

    .line 56
    invoke-direct/range {v3 .. v8}, Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;Ljava/util/List;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v3, 0x0

    const-string v4, "light"

    invoke-direct {v0, v1, v3, v4}, Lcom/dreamplug/fabrik/ui/lending/model/Background;-><init>(Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v23, Lcom/dreamplug/fabrik/ui/lending/model/StashLandingItem;

    .line 59
    new-instance v24, Lcom/dreamplug/fabrik/ui/lending/model/TemplateProperties;

    move-object/from16 v0, v24

    .line 60
    new-instance v1, Lo/getTargetScrollPosition;

    move-object v13, v1

    sget-object v3, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v3, 0x7f13043e

    invoke-static {v3}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lo/getTargetScrollPosition;-><init>(Ljava/lang/String;)V

    .line 61
    new-instance v1, Lo/getTargetScrollPosition;

    move-object v14, v1

    sget-object v3, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v3, 0x7f13043f

    invoke-static {v3}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lo/getTargetScrollPosition;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "stash_error_card"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    move-object/from16 v25, v15

    move-object/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const v21, 0xfcffc

    const/16 v22, 0x0

    .line 59
    invoke-direct/range {v0 .. v22}, Lcom/dreamplug/fabrik/ui/lending/model/TemplateProperties;-><init>(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/Background;Lcom/dreamplug/fabrik/ui/lending/model/Background;Ljava/util/List;Ljava/util/List;Lcom/dreamplug/fabrik/ui/lending/model/Cta;Lcom/dreamplug/fabrik/ui/lending/model/Cta;Lo/getTargetScrollPosition;Lcom/dreamplug/fabrik/ui/lending/model/ImageCustom;Lcom/dreamplug/fabrik/ui/lending/model/ImageCustom;Lcom/dreamplug/fabrik/ui/lending/model/ImageCustom;Lcom/dreamplug/fabrik/ui/lending/model/ImageCustom;Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v6, ""

    const-string v7, "default_stash_error_card"

    const/16 v10, 0x8

    move-object/from16 v5, v23

    move-object/from16 v8, v24

    .line 58
    invoke-direct/range {v5 .. v11}, Lcom/dreamplug/fabrik/ui/lending/model/StashLandingItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/TemplateProperties;Lcom/dreamplug/fabrik/ui/lending/model/TemplateData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 62
    new-instance v0, Lo/measureChildWithDecorationsAndMargin$onPostMessage$onNavigationEvent;

    .line 2019
    invoke-static/range {v23 .. v23}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v2, v25

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-direct {v0, v1}, Lo/measureChildWithDecorationsAndMargin$onPostMessage$onNavigationEvent;-><init>(Ljava/util/List;)V

    return-object v0
.end method
