.class public Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source ""

# interfaces
.implements Lo/setExpandedActionViewsExclusive$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager$extraCallback;,
        Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager$ICustomTabsCallback;
    }
.end annotation


# static fields
.field private static final ICustomTabsService:Ljava/lang/String;


# instance fields
.field public ICustomTabsCallback:Lo/setExpandActivityOverflowButtonDrawable;

.field public ICustomTabsCallback$Stub:Lo/dispatchPopulateAccessibilityEvent;

.field private ICustomTabsCallback$Stub$Proxy:Lo/invokeItem;

.field private ICustomTabsService$Stub:Lo/setMenuCallbacks;

.field private ICustomTabsService$Stub$Proxy:Lo/setSupportButtonTintList;

.field private IPostMessageService:Z

.field private IPostMessageService$Stub:Lo/onMenuItemClick;

.field public asBinder:I

.field public asInterface:Lo/needsDividerBefore;

.field public extraCallback:Lo/generateOverflowButtonLayoutParams;

.field private extraCommand:Z

.field private getInterfaceDescriptor:Ljava/lang/Integer;

.field private mayLaunchUrl:Lo/initialize;

.field private newSession:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public onMessageChannelReady:Z

.field public onNavigationEvent:Lo/MediaSessionCompat$1$onMessageChannelReady;

.field public onPostMessage:Lo/setActivityChooserModel;

.field public onRelationshipValidationResult:Lo/ActivityChooserView$InnerLayout;

.field public onTransact:Z

.field private postMessage:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private requestPostMessageChannel:I

.field private updateVisuals:Lo/getDrawable;

.field private validateRelationship:Lo/getDataModel;

.field private warmup:I
    .annotation build Lcom/beloo/widget/chipslayoutmanager/Orientation;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    const-class v0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsService:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 193
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    .line 91
    new-instance v0, Lo/generateOverflowButtonLayoutParams;

    invoke-direct {v0, p0}, Lo/generateOverflowButtonLayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->extraCallback:Lo/generateOverflowButtonLayoutParams;

    .line 93
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->newSession:Landroid/util/SparseArray;

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->onMessageChannelReady:Z

    .line 104
    new-instance v1, Lo/onPause$onNavigationEvent;

    invoke-direct {v1}, Lo/onPause$onNavigationEvent;-><init>()V

    iput-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->onNavigationEvent:Lo/MediaSessionCompat$1$onMessageChannelReady;

    .line 107
    iput v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->warmup:I

    .line 109
    iput v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->asBinder:I

    const/4 v1, 0x0

    .line 127
    iput-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getInterfaceDescriptor:Ljava/lang/Integer;

    .line 134
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->postMessage:Landroid/util/SparseArray;

    .line 139
    new-instance v1, Lo/initialize;

    invoke-direct {v1}, Lo/initialize;-><init>()V

    iput-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->mayLaunchUrl:Lo/initialize;

    const/4 v1, 0x0

    .line 150
    iput-boolean v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->extraCommand:Z

    .line 184
    new-instance v1, Lo/setSupportButtonTintList;

    invoke-direct {v1, p0}, Lo/setSupportButtonTintList;-><init>(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;)V

    iput-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsService$Stub$Proxy:Lo/setSupportButtonTintList;

    .line 195
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 196
    iput p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->requestPostMessageChannel:I

    .line 199
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->postMessage:Landroid/util/SparseArray;

    .line 2010
    new-instance v1, Lo/setQueueTitle;

    invoke-direct {v1, p1}, Lo/setQueueTitle;-><init>(Landroid/util/SparseArray;)V

    .line 199
    iput-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->updateVisuals:Lo/getDrawable;

    .line 201
    new-instance p1, Lo/ActionMenuView$OnMenuItemClickListener;

    invoke-direct {p1, p0}, Lo/ActionMenuView$OnMenuItemClickListener;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2014
    new-instance v1, Lo/ActivityChooserModel$ActivityResolveInfo;

    iget-object p1, p1, Lo/ActionMenuView$OnMenuItemClickListener;->onMessageChannelReady:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-direct {v1, p1}, Lo/ActivityChooserModel$ActivityResolveInfo;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 201
    iput-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->asInterface:Lo/needsDividerBefore;

    .line 202
    new-instance p1, Lo/forceUniformWidth;

    invoke-direct {p1, p0}, Lo/forceUniformWidth;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->validateRelationship:Lo/getDataModel;

    .line 203
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setAutoMeasureEnabled(Z)V

    return-void
.end method

.method public static synthetic ICustomTabsCallback(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;I)I
    .locals 0

    const/4 p1, 0x5

    .line 49
    iput p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->asBinder:I

    return p1
.end method

.method public static synthetic ICustomTabsCallback(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;Lo/ActivityChooserView$InnerLayout;)Lo/ActivityChooserView$InnerLayout;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->onRelationshipValidationResult:Lo/ActivityChooserView$InnerLayout;

    return-object p1
.end method

.method public static synthetic ICustomTabsCallback(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;Lo/invokeItem;)Lo/invokeItem;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsCallback$Stub$Proxy:Lo/invokeItem;

    return-object p1
.end method

.method public static synthetic ICustomTabsCallback(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;Lo/onMenuItemClick;)Lo/onMenuItemClick;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->IPostMessageService$Stub:Lo/onMenuItemClick;

    return-object p1
.end method

.method public static synthetic ICustomTabsCallback(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;)Lo/setExpandActivityOverflowButtonDrawable;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsCallback:Lo/setExpandActivityOverflowButtonDrawable;

    return-object p0
.end method

.method public static synthetic ICustomTabsCallback(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;Lo/setMenuCallbacks;)Lo/setMenuCallbacks;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsService$Stub:Lo/setMenuCallbacks;

    return-object p1
.end method

.method public static synthetic ICustomTabsCallback(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;Z)Z
    .locals 0

    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->onTransact:Z

    return p1
.end method

.method public static synthetic ICustomTabsCallback$Stub(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;)Lo/generateOverflowButtonLayoutParams;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->extraCallback:Lo/generateOverflowButtonLayoutParams;

    return-object p0
.end method

.method public static extraCallback(Landroid/content/Context;)Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager$extraCallback;
    .locals 2

    if-eqz p0, :cond_0

    .line 212
    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager$ICustomTabsCallback;

    new-instance v1, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-direct {v1, p0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager$ICustomTabsCallback;-><init>(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;)V

    return-object v0

    .line 211
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "you have passed null context to builder"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic extraCallback(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;)Lo/ActivityChooserView$InnerLayout;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->onRelationshipValidationResult:Lo/ActivityChooserView$InnerLayout;

    return-object p0
.end method

.method public static synthetic extraCallback(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;Lo/setActivityChooserModel;)Lo/setActivityChooserModel;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->onPostMessage:Lo/setActivityChooserModel;

    return-object p1
.end method

.method public static synthetic onMessageChannelReady(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->warmup:I

    return p0
.end method

.method public static synthetic onMessageChannelReady(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;Lo/dispatchPopulateAccessibilityEvent;)Lo/dispatchPopulateAccessibilityEvent;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsCallback$Stub:Lo/dispatchPopulateAccessibilityEvent;

    return-object p1
.end method

.method private onMessageChannelReady(I)V
    .locals 1

    .line 1030
    invoke-static {}, Lo/setCheckMarkDrawable;->onPostMessage()I

    .line 1031
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->asInterface:Lo/needsDividerBefore;

    invoke-interface {v0, p1}, Lo/needsDividerBefore;->onNavigationEvent(I)V

    .line 1032
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->asInterface:Lo/needsDividerBefore;

    invoke-interface {v0, p1}, Lo/needsDividerBefore;->extraCallback(I)I

    move-result p1

    .line 1033
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getInterfaceDescriptor:Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1034
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1033
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getInterfaceDescriptor:Ljava/lang/Integer;

    return-void
.end method

.method private onMessageChannelReady(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lo/dismissPopup;Lo/dismissPopup;)V
    .locals 5

    .line 754
    new-instance v0, Lo/getAutoSizeMaxTextSize;

    invoke-direct {v0}, Lo/getAutoSizeMaxTextSize;-><init>()V

    .line 755
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->onRelationshipValidationResult:Lo/ActivityChooserView$InnerLayout;

    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsService$Stub$Proxy:Lo/setSupportButtonTintList;

    .line 15018
    new-instance v3, Lo/getCompoundPaddingLeft;

    iget-object v2, v2, Lo/setSupportButtonTintList;->onPostMessage:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-direct {v3, v2}, Lo/getCompoundPaddingLeft;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 755
    invoke-interface {v1, v0, v3}, Lo/ActivityChooserView$InnerLayout;->onPostMessage(Lo/setSupportCompoundDrawablesTintList;Lo/getSupportButtonTintMode;)Lo/AlertDialogLayout;

    move-result-object v0

    .line 757
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsCallback$Stub$Proxy:Lo/invokeItem;

    invoke-interface {v1, p1}, Lo/invokeItem;->extraCallback(Landroidx/recyclerview/widget/RecyclerView$Recycler;)Lo/measureChildForCells$extraCallback;

    move-result-object v1

    .line 15033
    iget-object v2, v1, Lo/measureChildForCells$extraCallback;->onMessageChannelReady:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    iget-object v3, v1, Lo/measureChildForCells$extraCallback;->onPostMessage:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/2addr v2, v3

    if-lez v2, :cond_2

    .line 16033
    iget-object v2, v1, Lo/measureChildForCells$extraCallback;->onMessageChannelReady:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    iget-object v2, v1, Lo/measureChildForCells$extraCallback;->onPostMessage:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 760
    invoke-static {}, Lo/setCheckMarkDrawable;->onPostMessage()I

    .line 761
    invoke-static {}, Lo/setCheckMarkDrawable;->onPostMessage()I

    .line 16109
    check-cast p3, Lo/ActivityChooserView;

    .line 16110
    iget-object v2, v0, Lo/AlertDialogLayout;->ICustomTabsCallback:Lo/setSupportCompoundDrawablesTintList;

    invoke-interface {v2}, Lo/setSupportCompoundDrawablesTintList;->onMessageChannelReady()Lo/getSupportCompoundDrawablesTintList;

    move-result-object v2

    .line 17098
    iput-object v2, p3, Lo/ActivityChooserView;->warmup:Lo/getSupportCompoundDrawablesTintList;

    .line 16111
    iget-object v2, v0, Lo/AlertDialogLayout;->onPostMessage:Lo/getSupportButtonTintMode;

    invoke-interface {v2}, Lo/getSupportButtonTintMode;->onPostMessage()Lo/setSupportCompoundDrawablesTintMode;

    move-result-object v2

    .line 17209
    iput-object v2, p3, Lo/ActivityChooserView;->newSession:Lo/setSupportCompoundDrawablesTintMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 18041
    :goto_0
    iget-object v4, v1, Lo/measureChildForCells$extraCallback;->onPostMessage:Landroid/util/SparseArray;

    .line 765
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 19041
    iget-object v4, v1, Lo/measureChildForCells$extraCallback;->onPostMessage:Landroid/util/SparseArray;

    .line 766
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 767
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {p3, v4}, Lo/dismissPopup;->extraCallback(Landroid/view/View;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 770
    :cond_0
    invoke-interface {p3}, Lo/dismissPopup;->ICustomTabsService()V

    .line 19118
    check-cast p2, Lo/ActivityChooserView;

    .line 19119
    iget-object p3, v0, Lo/AlertDialogLayout;->ICustomTabsCallback:Lo/setSupportCompoundDrawablesTintList;

    invoke-interface {p3}, Lo/setSupportCompoundDrawablesTintList;->extraCallback()Lo/getSupportCompoundDrawablesTintList;

    move-result-object p3

    .line 20098
    iput-object p3, p2, Lo/ActivityChooserView;->warmup:Lo/getSupportCompoundDrawablesTintList;

    .line 19120
    iget-object p3, v0, Lo/AlertDialogLayout;->onPostMessage:Lo/getSupportButtonTintMode;

    invoke-interface {p3}, Lo/getSupportButtonTintMode;->onMessageChannelReady()Lo/setSupportCompoundDrawablesTintMode;

    move-result-object p3

    .line 20209
    iput-object p3, p2, Lo/ActivityChooserView;->newSession:Lo/setSupportCompoundDrawablesTintMode;

    .line 21037
    :goto_1
    iget-object p3, v1, Lo/measureChildForCells$extraCallback;->onMessageChannelReady:Landroid/util/SparseArray;

    .line 774
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge v2, p3, :cond_1

    .line 22037
    iget-object p3, v1, Lo/measureChildForCells$extraCallback;->onMessageChannelReady:Landroid/util/SparseArray;

    .line 775
    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p3

    .line 776
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object p3

    invoke-interface {p2, p3}, Lo/dismissPopup;->extraCallback(Landroid/view/View;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 780
    :cond_1
    invoke-interface {p2}, Lo/dismissPopup;->ICustomTabsService()V

    :cond_2
    return-void
.end method

.method public static synthetic onNavigationEvent(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;)Lo/onMenuItemClick;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->IPostMessageService$Stub:Lo/onMenuItemClick;

    return-object p0
.end method

.method public static synthetic onNavigationEvent(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;Lo/setExpandActivityOverflowButtonDrawable;)Lo/setExpandActivityOverflowButtonDrawable;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsCallback:Lo/setExpandActivityOverflowButtonDrawable;

    return-object p1
.end method

.method private onNavigationEvent(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lo/dismissPopup;Lo/dismissPopup;)V
    .locals 7

    .line 799
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsCallback$Stub:Lo/dispatchPopulateAccessibilityEvent;

    .line 23035
    iget-object v0, v0, Lo/dispatchPopulateAccessibilityEvent;->ICustomTabsCallback:Ljava/lang/Integer;

    .line 799
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 23788
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 23789
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 23790
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v5

    .line 23791
    iget-object v6, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->postMessage:Landroid/util/SparseArray;

    invoke-virtual {v6, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 803
    :goto_1
    iget-object v3, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->postMessage:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 804
    iget-object v3, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->postMessage:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 807
    :cond_1
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->updateVisuals:Lo/getDrawable;

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v1, v3}, Lo/getDrawable;->onMessageChannelReady(I)V

    .line 812
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsCallback$Stub:Lo/dispatchPopulateAccessibilityEvent;

    .line 24043
    iget-object v1, v1, Lo/dispatchPopulateAccessibilityEvent;->onNavigationEvent:Landroid/graphics/Rect;

    if-eqz v1, :cond_2

    .line 815
    invoke-direct {p0, p1, p2, v3}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->onPostMessage(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lo/dismissPopup;I)V

    .line 818
    :cond_2
    iget-object p2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->updateVisuals:Lo/getDrawable;

    invoke-interface {p2, v0}, Lo/getDrawable;->onMessageChannelReady(I)V

    .line 821
    invoke-direct {p0, p1, p3, v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->onPostMessage(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lo/dismissPopup;I)V

    .line 823
    iget-object p2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->updateVisuals:Lo/getDrawable;

    invoke-interface {p2}, Lo/getDrawable;->extraCallback()V

    .line 826
    :goto_2
    iget-object p2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->postMessage:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge v2, p2, :cond_3

    .line 827
    iget-object p2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->postMessage:Landroid/util/SparseArray;

    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 828
    iget-object p2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->updateVisuals:Lo/getDrawable;

    invoke-interface {p2, v2}, Lo/getDrawable;->onNavigationEvent(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 831
    :cond_3
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsCallback:Lo/setExpandActivityOverflowButtonDrawable;

    invoke-interface {p1}, Lo/setExpandActivityOverflowButtonDrawable;->extraCallback()V

    .line 24839
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->newSession:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 24840
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->extraCallback:Lo/generateOverflowButtonLayoutParams;

    invoke-virtual {p1}, Lo/generateOverflowButtonLayoutParams;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 24841
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p3

    .line 24842
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->newSession:Landroid/util/SparseArray;

    invoke-virtual {v0, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 834
    :cond_4
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->postMessage:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 835
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->updateVisuals:Lo/getDrawable;

    invoke-interface {p1}, Lo/getDrawable;->onNavigationEvent()V

    return-void
.end method

.method public static synthetic onPostMessage(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;I)I
    .locals 0

    const/4 p1, 0x1

    .line 49
    iput p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->warmup:I

    return p1
.end method

.method public static synthetic onPostMessage(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;)Lo/setActivityChooserModel;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->onPostMessage:Lo/setActivityChooserModel;

    return-object p0
.end method

.method private onPostMessage(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lo/dismissPopup;I)V
    .locals 2

    if-gez p3, :cond_0

    return-void

    .line 851
    :cond_0
    invoke-interface {p2}, Lo/dismissPopup;->extraCallback()Lo/ActivityChooserModel$HistoricalRecord;

    move-result-object v0

    .line 852
    invoke-virtual {v0, p3}, Lo/ActivityChooserModel$HistoricalRecord;->onPostMessage(I)V

    .line 853
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lo/ActivityChooserModel$HistoricalRecord;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 854
    invoke-virtual {v0}, Lo/ActivityChooserModel$HistoricalRecord;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    .line 855
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->postMessage:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_2

    .line 858
    :try_start_0
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 867
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->updateVisuals:Lo/getDrawable;

    invoke-interface {v1}, Lo/getDrawable;->onMessageChannelReady()V

    .line 869
    invoke-interface {p2, p3}, Lo/dismissPopup;->extraCallback(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 873
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    .line 874
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->updateVisuals:Lo/getDrawable;

    invoke-interface {p1}, Lo/getDrawable;->onPostMessage()V

    goto :goto_1

    .line 880
    :cond_2
    invoke-interface {p2, v1}, Lo/dismissPopup;->onNavigationEvent(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 885
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->postMessage:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    .line 890
    :catch_0
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->updateVisuals:Lo/getDrawable;

    invoke-interface {p1}, Lo/getDrawable;->ICustomTabsCallback()V

    .line 893
    invoke-interface {p2}, Lo/dismissPopup;->ICustomTabsService()V

    return-void
.end method


# virtual methods
.method public canScrollHorizontally()Z
    .locals 1

    .line 1127
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsService$Stub:Lo/setMenuCallbacks;

    invoke-interface {v0}, Lo/setMenuCallbacks;->onMessageChannelReady()Z

    move-result v0

    return v0
.end method

.method public canScrollVertically()Z
    .locals 1

    .line 1132
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsService$Stub:Lo/setMenuCallbacks;

    invoke-interface {v0}, Lo/setMenuCallbacks;->extraCallback()Z

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    .line 1191
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsService$Stub:Lo/setMenuCallbacks;

    invoke-interface {v0, p1}, Lo/setMenuCallbacks;->onMessageChannelReady(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeHorizontalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    .line 1197
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsService$Stub:Lo/setMenuCallbacks;

    invoke-interface {v0, p1}, Lo/setMenuCallbacks;->onPostMessage(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeHorizontalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    .line 1203
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsService$Stub:Lo/setMenuCallbacks;

    invoke-interface {v0, p1}, Lo/setMenuCallbacks;->ICustomTabsCallback$Stub(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    .line 1179
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsService$Stub:Lo/setMenuCallbacks;

    invoke-interface {v0, p1}, Lo/setMenuCallbacks;->extraCallback(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    .line 1173
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsService$Stub:Lo/setMenuCallbacks;

    invoke-interface {v0, p1}, Lo/setMenuCallbacks;->ICustomTabsCallback(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    .line 1185
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsService$Stub:Lo/setMenuCallbacks;

    invoke-interface {v0, p1}, Lo/setMenuCallbacks;->onNavigationEvent(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 0

    .line 747
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 748
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->newSession:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 2

    .line 431
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .line 642
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsCallback$Stub$Proxy:Lo/invokeItem;

    invoke-interface {v1}, Lo/invokeItem;->onNavigationEvent()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 951
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->validateRelationship:Lo/getDataModel;

    invoke-interface {v0}, Lo/getDataModel;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 953
    :try_start_0
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->validateRelationship:Lo/getDataModel;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lo/getDataModel;->onPostMessage(Z)V

    .line 954
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->validateRelationship:Lo/getDataModel;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 960
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->validateRelationship:Lo/getDataModel;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lo/getDataModel;->onPostMessage(Z)V

    .line 961
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->validateRelationship:Lo/getDataModel;

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 964
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAllViews()V

    return-void
.end method

.method public onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

    .line 984
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "starts from = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", item count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onItemsAdded"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lo/setCheckMarkDrawable;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;I)I

    .line 985
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 986
    invoke-direct {p0, p2}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->onMessageChannelReady(I)V

    return-void
.end method

.method public onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    const-string v0, "onItemsChanged"

    const-string v1, ""

    const/4 v2, 0x1

    .line 994
    invoke-static {v0, v1, v2}, Lo/setCheckMarkDrawable;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;I)I

    .line 995
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 996
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->asInterface:Lo/needsDividerBefore;

    invoke-interface {p1}, Lo/needsDividerBefore;->extraCallback()V

    const/4 p1, 0x0

    .line 997
    invoke-direct {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->onMessageChannelReady(I)V

    return-void
.end method

.method public onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 5

    .line 1023
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const-string v2, "from = %d, to = %d, itemCount = %d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onItemsMoved"

    invoke-static {v1, v0, v3}, Lo/setCheckMarkDrawable;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;I)I

    .line 1024
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V

    .line 1025
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->onMessageChannelReady(I)V

    return-void
.end method

.method public onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

    .line 972
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "starts from = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", item count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onItemsRemoved"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lo/setCheckMarkDrawable;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;I)I

    .line 973
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 974
    invoke-direct {p0, p2}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->onMessageChannelReady(I)V

    .line 976
    iget-object p2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->validateRelationship:Lo/getDataModel;

    invoke-interface {p2, p1}, Lo/getDataModel;->ICustomTabsCallback(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

    .line 1005
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "starts from = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", item count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onItemsUpdated"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lo/setCheckMarkDrawable;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;I)I

    .line 1006
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 1007
    invoke-direct {p0, p2}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->onMessageChannelReady(I)V

    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0

    .line 1015
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 6

    .line 651
    invoke-static {}, Lo/setCheckMarkDrawable;->onPostMessage()I

    .line 653
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 654
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    return-void

    .line 658
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isPreLayout = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLayoutChildren"

    invoke-static {v1, v0}, Lo/setCheckMarkDrawable;->extraCallback(Ljava/lang/String;Ljava/lang/String;)I

    .line 7623
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 660
    :goto_0
    iget-boolean v3, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->extraCommand:Z

    if-eq v0, v3, :cond_3

    .line 8623
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v0

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 662
    :goto_1
    iput-boolean v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->extraCommand:Z

    .line 664
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    :cond_3
    const/16 v0, 0x14

    .line 8901
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->setViewCacheSize(I)V

    .line 669
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    const/4 v3, 0x5

    if-eqz v0, :cond_5

    .line 673
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsCallback$Stub$Proxy:Lo/invokeItem;

    invoke-interface {v0, p1}, Lo/invokeItem;->onMessageChannelReady(Landroidx/recyclerview/widget/RecyclerView$Recycler;)I

    move-result v0

    .line 675
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "height ="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    const-string v5, "LayoutManager"

    invoke-static {v5, v1, v4}, Lo/setCheckMarkDrawable;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;I)I

    .line 676
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "additional height  = "

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "onDeletingHeightCalc"

    invoke-static {v5, v1, v4}, Lo/setCheckMarkDrawable;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;I)I

    .line 678
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->IPostMessageService$Stub:Lo/onMenuItemClick;

    invoke-interface {v1}, Lo/onMenuItemClick;->onPostMessage()Lo/dispatchPopulateAccessibilityEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsCallback$Stub:Lo/dispatchPopulateAccessibilityEvent;

    .line 679
    iget-object v4, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->IPostMessageService$Stub:Lo/onMenuItemClick;

    invoke-interface {v4, v1}, Lo/onMenuItemClick;->extraCallback(Lo/dispatchPopulateAccessibilityEvent;)V

    .line 680
    invoke-static {}, Lo/setCheckMarkDrawable;->onMessageChannelReady()I

    .line 681
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 684
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->onRelationshipValidationResult:Lo/ActivityChooserView$InnerLayout;

    invoke-interface {v1}, Lo/ActivityChooserView$InnerLayout;->onPostMessage()Lo/onTextChanged;

    move-result-object v1

    .line 9015
    iput v3, v1, Lo/onTextChanged;->onNavigationEvent:I

    if-ltz v0, :cond_4

    .line 10011
    iput v0, v1, Lo/onTextChanged;->ICustomTabsCallback:I

    .line 688
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->onRelationshipValidationResult:Lo/ActivityChooserView$InnerLayout;

    iget-object v3, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsService$Stub$Proxy:Lo/setSupportButtonTintList;

    .line 10014
    new-instance v4, Lo/getSupportButtonTintList;

    iget-object v3, v3, Lo/setSupportButtonTintList;->onPostMessage:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-direct {v4, v3}, Lo/getSupportButtonTintList;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 688
    invoke-interface {v0, v1, v4}, Lo/ActivityChooserView$InnerLayout;->onPostMessage(Lo/setSupportCompoundDrawablesTintList;Lo/getSupportButtonTintMode;)Lo/AlertDialogLayout;

    move-result-object v0

    .line 690
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->updateVisuals:Lo/getDrawable;

    iget-object v3, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsCallback$Stub:Lo/dispatchPopulateAccessibilityEvent;

    invoke-interface {v1, v3}, Lo/getDrawable;->onNavigationEvent(Lo/dispatchPopulateAccessibilityEvent;)V

    .line 691
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsCallback$Stub:Lo/dispatchPopulateAccessibilityEvent;

    .line 692
    invoke-virtual {v0, v1}, Lo/AlertDialogLayout;->onNavigationEvent(Lo/dispatchPopulateAccessibilityEvent;)Lo/dismissPopup;

    move-result-object v1

    iget-object v3, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsCallback$Stub:Lo/dispatchPopulateAccessibilityEvent;

    .line 693
    invoke-virtual {v0, v3}, Lo/AlertDialogLayout;->extraCallback(Lo/dispatchPopulateAccessibilityEvent;)Lo/dismissPopup;

    move-result-object v0

    .line 691
    invoke-direct {p0, p1, v1, v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->onNavigationEvent(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lo/dismissPopup;Lo/dismissPopup;)V

    .line 695
    iput-boolean v2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->IPostMessageService:Z

    goto/16 :goto_2

    .line 10010
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "additional height can\'t be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 697
    :cond_5
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 700
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->asInterface:Lo/needsDividerBefore;

    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsCallback$Stub:Lo/dispatchPopulateAccessibilityEvent;

    .line 10035
    iget-object v2, v2, Lo/dispatchPopulateAccessibilityEvent;->ICustomTabsCallback:Ljava/lang/Integer;

    .line 700
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-interface {v0, v2}, Lo/needsDividerBefore;->onNavigationEvent(I)V

    .line 701
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getInterfaceDescriptor:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsCallback$Stub:Lo/dispatchPopulateAccessibilityEvent;

    .line 11035
    iget-object v0, v0, Lo/dispatchPopulateAccessibilityEvent;->ICustomTabsCallback:Ljava/lang/Integer;

    .line 701
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getInterfaceDescriptor:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-gt v0, v2, :cond_6

    const/4 v0, 0x0

    .line 702
    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getInterfaceDescriptor:Ljava/lang/Integer;

    .line 712
    :cond_6
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->onRelationshipValidationResult:Lo/ActivityChooserView$InnerLayout;

    invoke-interface {v0}, Lo/ActivityChooserView$InnerLayout;->onPostMessage()Lo/onTextChanged;

    move-result-object v0

    .line 12015
    iput v3, v0, Lo/onTextChanged;->onNavigationEvent:I

    .line 715
    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->onRelationshipValidationResult:Lo/ActivityChooserView$InnerLayout;

    iget-object v3, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsService$Stub$Proxy:Lo/setSupportButtonTintList;

    .line 13014
    new-instance v4, Lo/getSupportButtonTintList;

    iget-object v3, v3, Lo/setSupportButtonTintList;->onPostMessage:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-direct {v4, v3}, Lo/getSupportButtonTintList;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 715
    invoke-interface {v2, v0, v4}, Lo/ActivityChooserView$InnerLayout;->onPostMessage(Lo/setSupportCompoundDrawablesTintList;Lo/getSupportButtonTintMode;)Lo/AlertDialogLayout;

    move-result-object v0

    .line 716
    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsCallback$Stub:Lo/dispatchPopulateAccessibilityEvent;

    invoke-virtual {v0, v2}, Lo/AlertDialogLayout;->onNavigationEvent(Lo/dispatchPopulateAccessibilityEvent;)Lo/dismissPopup;

    move-result-object v2

    .line 717
    iget-object v3, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsCallback$Stub:Lo/dispatchPopulateAccessibilityEvent;

    invoke-virtual {v0, v3}, Lo/AlertDialogLayout;->extraCallback(Lo/dispatchPopulateAccessibilityEvent;)Lo/dismissPopup;

    move-result-object v0

    .line 719
    invoke-direct {p0, p1, v2, v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->onNavigationEvent(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lo/dismissPopup;Lo/dismissPopup;)V

    .line 722
    iget-object v3, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsService$Stub:Lo/setMenuCallbacks;

    invoke-interface {v3, p1}, Lo/setMenuCallbacks;->onMessageChannelReady(Landroidx/recyclerview/widget/RecyclerView$Recycler;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 723
    invoke-static {}, Lo/setCheckMarkDrawable;->onPostMessage()I

    .line 725
    iget-object v3, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->IPostMessageService$Stub:Lo/onMenuItemClick;

    invoke-interface {v3}, Lo/onMenuItemClick;->onPostMessage()Lo/dispatchPopulateAccessibilityEvent;

    move-result-object v3

    iput-object v3, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsCallback$Stub:Lo/dispatchPopulateAccessibilityEvent;

    .line 14011
    new-instance v3, Lo/preload$5;

    invoke-direct {v3, p0}, Lo/preload$5;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 729
    :cond_7
    iget-boolean v3, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->IPostMessageService:Z

    if-eqz v3, :cond_8

    .line 731
    invoke-direct {p0, p1, v2, v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->onMessageChannelReady(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lo/dismissPopup;Lo/dismissPopup;)V

    .line 734
    :cond_8
    iput-boolean v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->IPostMessageService:Z

    .line 737
    :goto_2
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsCallback$Stub$Proxy:Lo/invokeItem;

    invoke-interface {p1}, Lo/invokeItem;->onPostMessage()V

    .line 739
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isMeasuring()Z

    move-result p1

    if-nez p1, :cond_9

    .line 740
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->validateRelationship:Lo/getDataModel;

    invoke-interface {p1}, Lo/getDataModel;->onPostMessage()V

    :cond_9
    return-void
.end method

.method public final onNavigationEvent(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 4

    .line 25910
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getInterfaceDescriptor:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 25911
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 25912
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 25914
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getInterfaceDescriptor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getInterfaceDescriptor:Ljava/lang/Integer;

    .line 25915
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getInterfaceDescriptor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 25917
    :cond_0
    invoke-static {}, Lo/setCheckMarkDrawable;->onPostMessage()I

    .line 25918
    invoke-static {}, Lo/setCheckMarkDrawable;->onPostMessage()I

    .line 25919
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->asInterface:Lo/needsDividerBefore;

    invoke-interface {v1, v0}, Lo/needsDividerBefore;->onNavigationEvent(I)V

    const/4 v0, 0x0

    .line 25921
    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getInterfaceDescriptor:Ljava/lang/Integer;

    .line 27011
    new-instance v0, Lo/preload$5;

    invoke-direct {v0, p0}, Lo/preload$5;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 1159
    :cond_1
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->IPostMessageService$Stub:Lo/onMenuItemClick;

    invoke-interface {v0}, Lo/onMenuItemClick;->onPostMessage()Lo/dispatchPopulateAccessibilityEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsCallback$Stub:Lo/dispatchPopulateAccessibilityEvent;

    .line 1161
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->onRelationshipValidationResult:Lo/ActivityChooserView$InnerLayout;

    invoke-interface {v0}, Lo/ActivityChooserView$InnerLayout;->onPostMessage()Lo/onTextChanged;

    move-result-object v0

    const/4 v1, 0x1

    .line 28015
    iput v1, v0, Lo/onTextChanged;->onNavigationEvent:I

    .line 1163
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->onRelationshipValidationResult:Lo/ActivityChooserView$InnerLayout;

    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsService$Stub$Proxy:Lo/setSupportButtonTintList;

    .line 29014
    new-instance v3, Lo/getSupportButtonTintList;

    iget-object v2, v2, Lo/setSupportButtonTintList;->onPostMessage:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-direct {v3, v2}, Lo/getSupportButtonTintList;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1163
    invoke-interface {v1, v0, v3}, Lo/ActivityChooserView$InnerLayout;->onPostMessage(Lo/setSupportCompoundDrawablesTintList;Lo/getSupportButtonTintMode;)Lo/AlertDialogLayout;

    move-result-object v0

    .line 1165
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsCallback$Stub:Lo/dispatchPopulateAccessibilityEvent;

    .line 1166
    invoke-virtual {v0, v1}, Lo/AlertDialogLayout;->onNavigationEvent(Lo/dispatchPopulateAccessibilityEvent;)Lo/dismissPopup;

    move-result-object v1

    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsCallback$Stub:Lo/dispatchPopulateAccessibilityEvent;

    .line 1167
    invoke-virtual {v0, v2}, Lo/AlertDialogLayout;->extraCallback(Lo/dispatchPopulateAccessibilityEvent;)Lo/dismissPopup;

    move-result-object v0

    .line 1165
    invoke-direct {p0, p1, v1, v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->onNavigationEvent(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lo/dismissPopup;Lo/dismissPopup;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 449
    check-cast p1, Lo/initialize;

    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->mayLaunchUrl:Lo/initialize;

    .line 2033
    iget-object p1, p1, Lo/initialize;->onMessageChannelReady:Lo/dispatchPopulateAccessibilityEvent;

    .line 451
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsCallback$Stub:Lo/dispatchPopulateAccessibilityEvent;

    .line 452
    iget p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->requestPostMessageChannel:I

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->mayLaunchUrl:Lo/initialize;

    .line 2038
    iget v0, v0, Lo/initialize;->onNavigationEvent:I

    if-eq p1, v0, :cond_0

    .line 454
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsCallback$Stub:Lo/dispatchPopulateAccessibilityEvent;

    .line 3035
    iget-object p1, p1, Lo/dispatchPopulateAccessibilityEvent;->ICustomTabsCallback:Ljava/lang/Integer;

    .line 454
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 455
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->IPostMessageService$Stub:Lo/onMenuItemClick;

    invoke-interface {v0}, Lo/onMenuItemClick;->onNavigationEvent()Lo/dispatchPopulateAccessibilityEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsCallback$Stub:Lo/dispatchPopulateAccessibilityEvent;

    .line 456
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 3039
    iput-object p1, v0, Lo/dispatchPopulateAccessibilityEvent;->ICustomTabsCallback:Ljava/lang/Integer;

    .line 459
    :cond_0
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->asInterface:Lo/needsDividerBefore;

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->mayLaunchUrl:Lo/initialize;

    iget v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->requestPostMessageChannel:I

    .line 3071
    iget-object v0, v0, Lo/initialize;->extraCallback:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 459
    invoke-interface {p1, v0}, Lo/needsDividerBefore;->onMessageChannelReady(Landroid/os/Parcelable;)V

    .line 460
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->mayLaunchUrl:Lo/initialize;

    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->requestPostMessageChannel:I

    .line 3077
    iget-object p1, p1, Lo/initialize;->ICustomTabsCallback:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 460
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getInterfaceDescriptor:Ljava/lang/Integer;

    .line 462
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->asInterface:Lo/needsDividerBefore;

    invoke-interface {p1}, Lo/needsDividerBefore;->onNavigationEvent()Ljava/lang/Integer;

    invoke-static {}, Lo/setCheckMarkDrawable;->onPostMessage()I

    .line 463
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getInterfaceDescriptor:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 464
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->asInterface:Lo/needsDividerBefore;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lo/needsDividerBefore;->onNavigationEvent(I)V

    .line 466
    :cond_1
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->asInterface:Lo/needsDividerBefore;

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsCallback$Stub:Lo/dispatchPopulateAccessibilityEvent;

    .line 4035
    iget-object v0, v0, Lo/dispatchPopulateAccessibilityEvent;->ICustomTabsCallback:Ljava/lang/Integer;

    .line 466
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Lo/needsDividerBefore;->onNavigationEvent(I)V

    .line 467
    invoke-static {}, Lo/setCheckMarkDrawable;->onPostMessage()I

    .line 468
    invoke-static {}, Lo/setCheckMarkDrawable;->onPostMessage()I

    .line 469
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->asInterface:Lo/needsDividerBefore;

    invoke-interface {p1}, Lo/needsDividerBefore;->onNavigationEvent()Ljava/lang/Integer;

    invoke-static {}, Lo/setCheckMarkDrawable;->onPostMessage()I

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 478
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->mayLaunchUrl:Lo/initialize;

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsCallback$Stub:Lo/dispatchPopulateAccessibilityEvent;

    .line 6029
    iput-object v1, v0, Lo/initialize;->onMessageChannelReady:Lo/dispatchPopulateAccessibilityEvent;

    .line 479
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->mayLaunchUrl:Lo/initialize;

    iget v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->requestPostMessageChannel:I

    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->asInterface:Lo/needsDividerBefore;

    invoke-interface {v2}, Lo/needsDividerBefore;->onPostMessage()Landroid/os/Parcelable;

    move-result-object v2

    .line 6062
    iget-object v0, v0, Lo/initialize;->extraCallback:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 480
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->mayLaunchUrl:Lo/initialize;

    iget v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->requestPostMessageChannel:I

    .line 7042
    iput v1, v0, Lo/initialize;->onNavigationEvent:I

    .line 481
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->asInterface:Lo/needsDividerBefore;

    invoke-interface {v0}, Lo/needsDividerBefore;->onNavigationEvent()Ljava/lang/Integer;

    invoke-static {}, Lo/setCheckMarkDrawable;->onPostMessage()I

    .line 483
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getInterfaceDescriptor:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->asInterface:Lo/needsDividerBefore;

    invoke-interface {v0}, Lo/needsDividerBefore;->onNavigationEvent()Ljava/lang/Integer;

    move-result-object v0

    .line 485
    :goto_0
    invoke-static {}, Lo/setCheckMarkDrawable;->onPostMessage()I

    .line 487
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->mayLaunchUrl:Lo/initialize;

    iget v2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->requestPostMessageChannel:I

    .line 7066
    iget-object v1, v1, Lo/initialize;->ICustomTabsCallback:Landroid/util/SparseArray;

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 489
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->mayLaunchUrl:Lo/initialize;

    return-object v0
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    .line 1144
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsService$Stub:Lo/setMenuCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lo/setMenuCallbacks;->ICustomTabsCallback(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public scrollToPosition(I)V
    .locals 2

    .line 1090
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_3

    if-gez p1, :cond_0

    goto :goto_1

    .line 1095
    :cond_0
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->asInterface:Lo/needsDividerBefore;

    invoke-interface {v0}, Lo/needsDividerBefore;->onNavigationEvent()Ljava/lang/Integer;

    move-result-object v0

    .line 1097
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getInterfaceDescriptor:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getInterfaceDescriptor:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 1099
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 1100
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->asInterface:Lo/needsDividerBefore;

    invoke-interface {v0, p1}, Lo/needsDividerBefore;->extraCallback(I)I

    move-result p1

    .line 1103
    :cond_2
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->IPostMessageService$Stub:Lo/onMenuItemClick;

    invoke-interface {v0}, Lo/onMenuItemClick;->onNavigationEvent()Lo/dispatchPopulateAccessibilityEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsCallback$Stub:Lo/dispatchPopulateAccessibilityEvent;

    .line 1104
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 25039
    iput-object p1, v0, Lo/dispatchPopulateAccessibilityEvent;->ICustomTabsCallback:Ljava/lang/Integer;

    .line 1107
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    return-void

    .line 1091
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    invoke-static {}, Lo/setCheckMarkDrawable;->onNavigationEvent()I

    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    .line 1138
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsService$Stub:Lo/setMenuCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lo/setMenuCallbacks;->onPostMessage(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public setMeasuredDimension(II)V
    .locals 1

    .line 936
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->validateRelationship:Lo/getDataModel;

    invoke-interface {v0, p1, p2}, Lo/getDataModel;->onMessageChannelReady(II)V

    .line 937
    invoke-static {}, Lo/setCheckMarkDrawable;->extraCallback()I

    .line 938
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->validateRelationship:Lo/getDataModel;

    invoke-interface {p1}, Lo/getDataModel;->extraCallback()I

    move-result p1

    iget-object p2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->validateRelationship:Lo/getDataModel;

    invoke-interface {p2}, Lo/getDataModel;->ICustomTabsCallback()I

    move-result p2

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasuredDimension(II)V

    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 1

    .line 1115
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p2

    if-ge p3, p2, :cond_1

    if-gez p3, :cond_0

    goto :goto_0

    .line 1120
    :cond_0
    iget-object p2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsService$Stub:Lo/setMenuCallbacks;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsCallback$Stub:Lo/dispatchPopulateAccessibilityEvent;

    invoke-interface {p2, p1, p3, v0}, Lo/setMenuCallbacks;->ICustomTabsCallback(Landroid/content/Context;ILo/dispatchPopulateAccessibilityEvent;)Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    move-result-object p1

    .line 1121
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 1122
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void

    .line 1116
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    invoke-static {}, Lo/setCheckMarkDrawable;->onNavigationEvent()I

    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
