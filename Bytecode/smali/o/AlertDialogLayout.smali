.class public final Lo/AlertDialogLayout;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public ICustomTabsCallback:Lo/setSupportCompoundDrawablesTintList;

.field private ICustomTabsCallback$Stub:Lo/onChooseActivity;

.field private asInterface:Lo/ActivityChooserModel$ActivityChooserModelClient;

.field private extraCallback:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

.field private onMessageChannelReady:Lo/needsDividerBefore;

.field private onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/isShowingPopup;",
            ">;"
        }
    .end annotation
.end field

.field public onPostMessage:Lo/getSupportButtonTintMode;

.field private onRelationshipValidationResult:Lo/setOnDismissListener;

.field private onTransact:Lo/setTextSize;


# direct methods
.method constructor <init>(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;Lo/setOnDismissListener;Lo/setTextSize;Lo/setSupportCompoundDrawablesTintList;Lo/getSupportButtonTintMode;Lo/ActivityChooserModel$ActivityChooserModelClient;Lo/onChooseActivity;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/AlertDialogLayout;->onNavigationEvent:Ljava/util/List;

    .line 40
    iput-object p2, p0, Lo/AlertDialogLayout;->onRelationshipValidationResult:Lo/setOnDismissListener;

    .line 1275
    iget-object p2, p1, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->asInterface:Lo/needsDividerBefore;

    .line 41
    iput-object p2, p0, Lo/AlertDialogLayout;->onMessageChannelReady:Lo/needsDividerBefore;

    .line 42
    iput-object p1, p0, Lo/AlertDialogLayout;->extraCallback:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 43
    iput-object p3, p0, Lo/AlertDialogLayout;->onTransact:Lo/setTextSize;

    .line 44
    iput-object p4, p0, Lo/AlertDialogLayout;->ICustomTabsCallback:Lo/setSupportCompoundDrawablesTintList;

    .line 45
    iput-object p5, p0, Lo/AlertDialogLayout;->onPostMessage:Lo/getSupportButtonTintMode;

    .line 46
    iput-object p6, p0, Lo/AlertDialogLayout;->asInterface:Lo/ActivityChooserModel$ActivityChooserModelClient;

    .line 47
    iput-object p7, p0, Lo/AlertDialogLayout;->ICustomTabsCallback$Stub:Lo/onChooseActivity;

    return-void
.end method

.method private extraCallback(Lo/ActivityChooserView$onMessageChannelReady;)Lo/ActivityChooserView$onMessageChannelReady;
    .locals 2

    .line 75
    iget-object v0, p0, Lo/AlertDialogLayout;->extraCallback:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 1357
    iput-object v0, p1, Lo/ActivityChooserView$onMessageChannelReady;->extraCallback:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 2070
    iget-object v0, p0, Lo/AlertDialogLayout;->extraCallback:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 2280
    iget-object v0, v0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsCallback:Lo/setExpandActivityOverflowButtonDrawable;

    .line 2375
    iput-object v0, p1, Lo/ActivityChooserView$onMessageChannelReady;->onPostMessage:Lo/getWindowAnimations;

    .line 76
    iget-object v0, p0, Lo/AlertDialogLayout;->extraCallback:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 3216
    iget-object v0, v0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->onPostMessage:Lo/setActivityChooserModel;

    .line 3387
    iput-object v0, p1, Lo/ActivityChooserView$onMessageChannelReady;->onNavigationEvent:Lo/setActivityChooserModel;

    .line 77
    iget-object v0, p0, Lo/AlertDialogLayout;->onMessageChannelReady:Lo/needsDividerBefore;

    .line 4363
    iput-object v0, p1, Lo/ActivityChooserView$onMessageChannelReady;->onMessageChannelReady:Lo/needsDividerBefore;

    .line 78
    iget-object v0, p0, Lo/AlertDialogLayout;->asInterface:Lo/ActivityChooserModel$ActivityChooserModelClient;

    .line 4381
    iput-object v0, p1, Lo/ActivityChooserView$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/ActivityChooserModel$ActivityChooserModelClient;

    .line 79
    iget-object v0, p0, Lo/AlertDialogLayout;->onNavigationEvent:Ljava/util/List;

    .line 4421
    iget-object v1, p1, Lo/ActivityChooserView$onMessageChannelReady;->onTransact:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-object p1
.end method


# virtual methods
.method public final extraCallback(Lo/dispatchPopulateAccessibilityEvent;)Lo/dismissPopup;
    .locals 3

    .line 7061
    iget-object v0, p0, Lo/AlertDialogLayout;->onRelationshipValidationResult:Lo/setOnDismissListener;

    invoke-interface {v0}, Lo/setOnDismissListener;->extraCallback()Lo/ActivityChooserView$onMessageChannelReady;

    move-result-object v0

    .line 97
    invoke-direct {p0, v0}, Lo/AlertDialogLayout;->extraCallback(Lo/ActivityChooserView$onMessageChannelReady;)Lo/ActivityChooserView$onMessageChannelReady;

    move-result-object v0

    .line 7067
    iget-object v1, p0, Lo/AlertDialogLayout;->onRelationshipValidationResult:Lo/setOnDismissListener;

    invoke-interface {v1, p1}, Lo/setOnDismissListener;->onNavigationEvent(Lo/dispatchPopulateAccessibilityEvent;)Landroid/graphics/Rect;

    move-result-object p1

    .line 7351
    iput-object p1, v0, Lo/ActivityChooserView$onMessageChannelReady;->asBinder:Landroid/graphics/Rect;

    .line 98
    iget-object p1, p0, Lo/AlertDialogLayout;->onTransact:Lo/setTextSize;

    .line 99
    invoke-interface {p1}, Lo/setTextSize;->onMessageChannelReady()Lo/setAutoSizeTextTypeWithDefaults;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/ActivityChooserView$onMessageChannelReady;->onNavigationEvent(Lo/setAutoSizeTextTypeWithDefaults;)Lo/ActivityChooserView$onMessageChannelReady;

    move-result-object p1

    iget-object v0, p0, Lo/AlertDialogLayout;->ICustomTabsCallback:Lo/setSupportCompoundDrawablesTintList;

    .line 100
    invoke-interface {v0}, Lo/setSupportCompoundDrawablesTintList;->onMessageChannelReady()Lo/getSupportCompoundDrawablesTintList;

    move-result-object v0

    .line 7393
    iput-object v0, p1, Lo/ActivityChooserView$onMessageChannelReady;->ICustomTabsCallback:Lo/getSupportCompoundDrawablesTintList;

    .line 100
    new-instance v0, Lo/ActivityChooserModel$OnChooseActivityListener;

    iget-object v1, p0, Lo/AlertDialogLayout;->ICustomTabsCallback$Stub:Lo/onChooseActivity;

    iget-object v2, p0, Lo/AlertDialogLayout;->extraCallback:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 8270
    iget-boolean v2, v2, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->onTransact:Z

    xor-int/lit8 v2, v2, 0x1

    .line 101
    invoke-direct {v0, v1, v2}, Lo/ActivityChooserModel$OnChooseActivityListener;-><init>(Lo/onChooseActivity;Z)V

    .line 8369
    iput-object v0, p1, Lo/ActivityChooserView$onMessageChannelReady;->newSession:Lo/onChooseActivity;

    .line 101
    iget-object v0, p0, Lo/AlertDialogLayout;->onPostMessage:Lo/getSupportButtonTintMode;

    .line 102
    invoke-interface {v0}, Lo/getSupportButtonTintMode;->onPostMessage()Lo/setSupportCompoundDrawablesTintMode;

    move-result-object v0

    .line 8399
    iput-object v0, p1, Lo/ActivityChooserView$onMessageChannelReady;->onRelationshipValidationResult:Lo/setSupportCompoundDrawablesTintMode;

    .line 102
    new-instance v0, Lo/setDefaultActionButtonContentDescription;

    iget-object v1, p0, Lo/AlertDialogLayout;->extraCallback:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 103
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v1

    invoke-direct {v0, v1}, Lo/setDefaultActionButtonContentDescription;-><init>(I)V

    .line 8427
    iput-object v0, p1, Lo/ActivityChooserView$onMessageChannelReady;->warmup:Lo/ActivityChooserModel$HistoricalRecord;

    .line 104
    invoke-virtual {p1}, Lo/ActivityChooserView$onMessageChannelReady;->extraCallback()Lo/ActivityChooserView;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent(Lo/dispatchPopulateAccessibilityEvent;)Lo/dismissPopup;
    .locals 2

    .line 5057
    iget-object v0, p0, Lo/AlertDialogLayout;->onRelationshipValidationResult:Lo/setOnDismissListener;

    invoke-interface {v0}, Lo/setOnDismissListener;->ICustomTabsCallback()Lo/ActivityChooserView$onMessageChannelReady;

    move-result-object v0

    .line 85
    invoke-direct {p0, v0}, Lo/AlertDialogLayout;->extraCallback(Lo/ActivityChooserView$onMessageChannelReady;)Lo/ActivityChooserView$onMessageChannelReady;

    move-result-object v0

    .line 5064
    iget-object v1, p0, Lo/AlertDialogLayout;->onRelationshipValidationResult:Lo/setOnDismissListener;

    invoke-interface {v1, p1}, Lo/setOnDismissListener;->extraCallback(Lo/dispatchPopulateAccessibilityEvent;)Landroid/graphics/Rect;

    move-result-object p1

    .line 5351
    iput-object p1, v0, Lo/ActivityChooserView$onMessageChannelReady;->asBinder:Landroid/graphics/Rect;

    .line 86
    iget-object p1, p0, Lo/AlertDialogLayout;->onTransact:Lo/setTextSize;

    .line 87
    invoke-interface {p1}, Lo/setTextSize;->ICustomTabsCallback()Lo/setAutoSizeTextTypeWithDefaults;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/ActivityChooserView$onMessageChannelReady;->onNavigationEvent(Lo/setAutoSizeTextTypeWithDefaults;)Lo/ActivityChooserView$onMessageChannelReady;

    move-result-object p1

    iget-object v0, p0, Lo/AlertDialogLayout;->ICustomTabsCallback:Lo/setSupportCompoundDrawablesTintList;

    .line 88
    invoke-interface {v0}, Lo/setSupportCompoundDrawablesTintList;->extraCallback()Lo/getSupportCompoundDrawablesTintList;

    move-result-object v0

    .line 5393
    iput-object v0, p1, Lo/ActivityChooserView$onMessageChannelReady;->ICustomTabsCallback:Lo/getSupportCompoundDrawablesTintList;

    .line 88
    iget-object v0, p0, Lo/AlertDialogLayout;->ICustomTabsCallback$Stub:Lo/onChooseActivity;

    .line 6369
    iput-object v0, p1, Lo/ActivityChooserView$onMessageChannelReady;->newSession:Lo/onChooseActivity;

    .line 89
    iget-object v0, p0, Lo/AlertDialogLayout;->onPostMessage:Lo/getSupportButtonTintMode;

    .line 90
    invoke-interface {v0}, Lo/getSupportButtonTintMode;->onMessageChannelReady()Lo/setSupportCompoundDrawablesTintMode;

    move-result-object v0

    .line 6399
    iput-object v0, p1, Lo/ActivityChooserView$onMessageChannelReady;->onRelationshipValidationResult:Lo/setSupportCompoundDrawablesTintMode;

    .line 90
    new-instance v0, Lo/showPopupUnchecked;

    iget-object v1, p0, Lo/AlertDialogLayout;->extraCallback:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 91
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v1

    invoke-direct {v0, v1}, Lo/showPopupUnchecked;-><init>(I)V

    .line 6427
    iput-object v0, p1, Lo/ActivityChooserView$onMessageChannelReady;->warmup:Lo/ActivityChooserModel$HistoricalRecord;

    .line 92
    invoke-virtual {p1}, Lo/ActivityChooserView$onMessageChannelReady;->extraCallback()Lo/ActivityChooserView;

    move-result-object p1

    return-object p1
.end method
