.class public abstract Lo/ActivityChooserView;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/dismissPopup;
.implements Lo/getWindowAnimations;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ActivityChooserView$onMessageChannelReady;
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:I

.field public ICustomTabsCallback$Stub:Z

.field public ICustomTabsCallback$Stub$Proxy:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/isShowingPopup;",
            ">;"
        }
    .end annotation
.end field

.field public ICustomTabsService:Lo/getWindowAnimations;

.field private ICustomTabsService$Stub$Proxy:Lo/ActivityChooserModel$HistoricalRecord;

.field public asBinder:I

.field public asInterface:I

.field public extraCallback:I

.field private extraCommand:Lo/ActivityChooserModel$ActivityChooserModelClient;

.field private getInterfaceDescriptor:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

.field private mayLaunchUrl:Lo/setAutoSizeTextTypeWithDefaults;

.field public newSession:Lo/setSupportCompoundDrawablesTintMode;

.field public onMessageChannelReady:I

.field public onNavigationEvent:I

.field onPostMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/graphics/Rect;",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field public onRelationshipValidationResult:I

.field public onTransact:I

.field private postMessage:Lo/onChooseActivity;

.field private requestPostMessageChannel:Lo/needsDividerBefore;

.field private updateVisuals:Lo/setActivityChooserModel;

.field public warmup:Lo/getSupportCompoundDrawablesTintList;


# direct methods
.method constructor <init>(Lo/ActivityChooserView$onMessageChannelReady;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lo/ActivityChooserView;->onPostMessage:Ljava/util/List;

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lo/ActivityChooserView;->asInterface:I

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/ActivityChooserView;->ICustomTabsCallback$Stub$Proxy:Ljava/util/Set;

    .line 1332
    iget-object v0, p1, Lo/ActivityChooserView$onMessageChannelReady;->extraCallback:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 79
    iput-object v0, p0, Lo/ActivityChooserView;->getInterfaceDescriptor:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 2332
    iget-object v0, p1, Lo/ActivityChooserView$onMessageChannelReady;->onMessageChannelReady:Lo/needsDividerBefore;

    .line 80
    iput-object v0, p0, Lo/ActivityChooserView;->requestPostMessageChannel:Lo/needsDividerBefore;

    .line 3332
    iget-object v0, p1, Lo/ActivityChooserView$onMessageChannelReady;->onPostMessage:Lo/getWindowAnimations;

    .line 81
    iput-object v0, p0, Lo/ActivityChooserView;->ICustomTabsService:Lo/getWindowAnimations;

    .line 4332
    iget-object v0, p1, Lo/ActivityChooserView$onMessageChannelReady;->onNavigationEvent:Lo/setActivityChooserModel;

    .line 82
    iput-object v0, p0, Lo/ActivityChooserView;->updateVisuals:Lo/setActivityChooserModel;

    .line 5332
    iget-object v0, p1, Lo/ActivityChooserView$onMessageChannelReady;->ICustomTabsCallback:Lo/getSupportCompoundDrawablesTintList;

    .line 83
    iput-object v0, p0, Lo/ActivityChooserView;->warmup:Lo/getSupportCompoundDrawablesTintList;

    .line 6332
    iget-object v0, p1, Lo/ActivityChooserView$onMessageChannelReady;->onRelationshipValidationResult:Lo/setSupportCompoundDrawablesTintMode;

    .line 84
    iput-object v0, p0, Lo/ActivityChooserView;->newSession:Lo/setSupportCompoundDrawablesTintMode;

    .line 7332
    iget-object v0, p1, Lo/ActivityChooserView$onMessageChannelReady;->asBinder:Landroid/graphics/Rect;

    .line 85
    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lo/ActivityChooserView;->asBinder:I

    .line 8332
    iget-object v0, p1, Lo/ActivityChooserView$onMessageChannelReady;->asBinder:Landroid/graphics/Rect;

    .line 86
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lo/ActivityChooserView;->ICustomTabsCallback:I

    .line 9332
    iget-object v0, p1, Lo/ActivityChooserView$onMessageChannelReady;->asBinder:Landroid/graphics/Rect;

    .line 87
    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lo/ActivityChooserView;->onTransact:I

    .line 10332
    iget-object v0, p1, Lo/ActivityChooserView$onMessageChannelReady;->asBinder:Landroid/graphics/Rect;

    .line 88
    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lo/ActivityChooserView;->onRelationshipValidationResult:I

    .line 11332
    iget-object v0, p1, Lo/ActivityChooserView$onMessageChannelReady;->onTransact:Ljava/util/HashSet;

    .line 89
    iput-object v0, p0, Lo/ActivityChooserView;->ICustomTabsCallback$Stub$Proxy:Ljava/util/Set;

    .line 12332
    iget-object v0, p1, Lo/ActivityChooserView$onMessageChannelReady;->asInterface:Lo/setAutoSizeTextTypeWithDefaults;

    .line 90
    iput-object v0, p0, Lo/ActivityChooserView;->mayLaunchUrl:Lo/setAutoSizeTextTypeWithDefaults;

    .line 13332
    iget-object v0, p1, Lo/ActivityChooserView$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/ActivityChooserModel$ActivityChooserModelClient;

    .line 91
    iput-object v0, p0, Lo/ActivityChooserView;->extraCommand:Lo/ActivityChooserModel$ActivityChooserModelClient;

    .line 14332
    iget-object v0, p1, Lo/ActivityChooserView$onMessageChannelReady;->newSession:Lo/onChooseActivity;

    .line 92
    iput-object v0, p0, Lo/ActivityChooserView;->postMessage:Lo/onChooseActivity;

    .line 15332
    iget-object p1, p1, Lo/ActivityChooserView$onMessageChannelReady;->warmup:Lo/ActivityChooserModel$HistoricalRecord;

    .line 93
    iput-object p1, p0, Lo/ActivityChooserView;->ICustomTabsService$Stub$Proxy:Lo/ActivityChooserModel$HistoricalRecord;

    return-void
.end method

.method private extraCallback(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2

    .line 275
    iget-object v0, p0, Lo/ActivityChooserView;->updateVisuals:Lo/setActivityChooserModel;

    .line 18282
    iget-object v1, p0, Lo/ActivityChooserView;->getInterfaceDescriptor:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 275
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    invoke-interface {v0}, Lo/setActivityChooserModel;->onPostMessage()I

    move-result p1

    .line 276
    iget-object v0, p0, Lo/ActivityChooserView;->extraCommand:Lo/ActivityChooserModel$ActivityChooserModelClient;

    invoke-interface {v0, p1}, Lo/ActivityChooserModel$ActivityChooserModelClient;->extraCallback(I)Lo/ActivityChooserModel$ActivitySorter;

    move-result-object p1

    .line 277
    invoke-virtual {p0}, Lo/ActivityChooserView;->newSession()I

    move-result v0

    invoke-virtual {p0}, Lo/ActivityChooserView;->warmup()I

    move-result v1

    invoke-interface {p1, v0, v1, p2}, Lo/ActivityChooserModel$ActivitySorter;->onMessageChannelReady(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method private mayLaunchUrl()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/databinding/ViewDataBinding$4;",
            ">;"
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 112
    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Lo/ActivityChooserView;->onPostMessage:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 113
    invoke-virtual {p0}, Lo/ActivityChooserView;->asBinder()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 116
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 117
    new-instance v3, Landroidx/databinding/ViewDataBinding$4;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Rect;

    iget-object v5, p0, Lo/ActivityChooserView;->getInterfaceDescriptor:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    invoke-direct {v3, v4, v2}, Landroidx/databinding/ViewDataBinding$4;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private onMessageChannelReady(Landroid/view/View;)V
    .locals 1

    .line 153
    iget-object v0, p0, Lo/ActivityChooserView;->getInterfaceDescriptor:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lo/ActivityChooserView;->onMessageChannelReady:I

    .line 154
    iget-object v0, p0, Lo/ActivityChooserView;->getInterfaceDescriptor:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lo/ActivityChooserView;->onNavigationEvent:I

    .line 155
    iget-object v0, p0, Lo/ActivityChooserView;->getInterfaceDescriptor:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lo/ActivityChooserView;->extraCallback:I

    return-void
.end method

.method private postMessage()V
    .locals 2

    .line 141
    iget-object v0, p0, Lo/ActivityChooserView;->ICustomTabsCallback$Stub$Proxy:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/isShowingPopup;

    .line 142
    invoke-interface {v1, p0}, Lo/isShowingPopup;->extraCallback(Lo/dismissPopup;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 1

    .line 485
    iget-object v0, p0, Lo/ActivityChooserView;->ICustomTabsService:Lo/getWindowAnimations;

    invoke-interface {v0}, Lo/getWindowAnimations;->ICustomTabsCallback()I

    move-result v0

    return v0
.end method

.method abstract ICustomTabsCallback(Landroid/view/View;)Z
.end method

.method abstract ICustomTabsCallback$Stub()Landroid/graphics/Rect;
.end method

.method public final ICustomTabsCallback$Stub$Proxy()Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;
    .locals 1

    .line 282
    iget-object v0, p0, Lo/ActivityChooserView;->getInterfaceDescriptor:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    return-object v0
.end method

.method public final ICustomTabsService()V
    .locals 9

    .line 238
    invoke-virtual {p0}, Lo/ActivityChooserView;->asInterface()V

    .line 241
    iget-object v0, p0, Lo/ActivityChooserView;->onPostMessage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 242
    iget-object v0, p0, Lo/ActivityChooserView;->postMessage:Lo/onChooseActivity;

    invoke-direct {p0}, Lo/ActivityChooserView;->mayLaunchUrl()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lo/onChooseActivity;->onMessageChannelReady(Lo/ActivityChooserView;Ljava/util/List;)V

    .line 246
    :cond_0
    iget-object v0, p0, Lo/ActivityChooserView;->onPostMessage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 247
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    .line 248
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Landroid/view/View;

    .line 250
    invoke-direct {p0, v4, v2}, Lo/ActivityChooserView;->extraCallback(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 252
    iget-object v2, p0, Lo/ActivityChooserView;->newSession:Lo/setSupportCompoundDrawablesTintMode;

    invoke-interface {v2, v4}, Lo/setSupportCompoundDrawablesTintMode;->onMessageChannelReady(Landroid/view/View;)V

    .line 255
    iget-object v3, p0, Lo/ActivityChooserView;->getInterfaceDescriptor:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    iget v7, v1, Landroid/graphics/Rect;->right:I

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {v3 .. v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    goto :goto_0

    .line 258
    :cond_1
    invoke-virtual {p0}, Lo/ActivityChooserView;->onRelationshipValidationResult()V

    .line 260
    invoke-direct {p0}, Lo/ActivityChooserView;->postMessage()V

    const/4 v0, 0x0

    .line 265
    iput v0, p0, Lo/ActivityChooserView;->asInterface:I

    .line 266
    iget-object v1, p0, Lo/ActivityChooserView;->onPostMessage:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 267
    iput-boolean v0, p0, Lo/ActivityChooserView;->ICustomTabsCallback$Stub:Z

    return-void
.end method

.method abstract asBinder()Z
.end method

.method abstract asInterface()V
.end method

.method public final extraCallback()Lo/ActivityChooserModel$HistoricalRecord;
    .locals 1

    .line 103
    iget-object v0, p0, Lo/ActivityChooserView;->ICustomTabsService$Stub$Proxy:Lo/ActivityChooserModel$HistoricalRecord;

    return-object v0
.end method

.method public final extraCallback(Landroid/view/View;)Z
    .locals 4

    .line 163
    iget-object v0, p0, Lo/ActivityChooserView;->getInterfaceDescriptor:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 164
    invoke-direct {p0, p1}, Lo/ActivityChooserView;->onMessageChannelReady(Landroid/view/View;)V

    .line 16189
    iget-object v0, p0, Lo/ActivityChooserView;->mayLaunchUrl:Lo/setAutoSizeTextTypeWithDefaults;

    invoke-interface {v0, p0}, Lo/setAutoSizeTextTypeWithDefaults;->onNavigationEvent(Lo/ActivityChooserView;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 167
    iput-boolean v2, p0, Lo/ActivityChooserView;->ICustomTabsCallback$Stub:Z

    .line 168
    invoke-virtual {p0}, Lo/ActivityChooserView;->ICustomTabsService()V

    .line 17182
    :cond_0
    iget-object v0, p0, Lo/ActivityChooserView;->warmup:Lo/getSupportCompoundDrawablesTintList;

    invoke-interface {v0, p0}, Lo/getSupportCompoundDrawablesTintList;->ICustomTabsCallback(Lo/ActivityChooserView;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 173
    :cond_1
    iget v0, p0, Lo/ActivityChooserView;->asInterface:I

    add-int/2addr v0, v2

    iput v0, p0, Lo/ActivityChooserView;->asInterface:I

    .line 174
    invoke-virtual {p0}, Lo/ActivityChooserView;->ICustomTabsCallback$Stub()Landroid/graphics/Rect;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lo/ActivityChooserView;->onPostMessage:Ljava/util/List;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v2
.end method

.method public abstract getInterfaceDescriptor()I
.end method

.method public abstract newSession()I
.end method

.method public final onMessageChannelReady()I
    .locals 1

    .line 489
    iget-object v0, p0, Lo/ActivityChooserView;->ICustomTabsService:Lo/getWindowAnimations;

    invoke-interface {v0}, Lo/getWindowAnimations;->onMessageChannelReady()I

    move-result v0

    return v0
.end method

.method public final onNavigationEvent()I
    .locals 1

    .line 481
    iget-object v0, p0, Lo/ActivityChooserView;->ICustomTabsService:Lo/getWindowAnimations;

    invoke-interface {v0}, Lo/getWindowAnimations;->onNavigationEvent()I

    move-result v0

    return v0
.end method

.method public final onNavigationEvent(Landroid/view/View;)Z
    .locals 2

    .line 218
    invoke-direct {p0, p1}, Lo/ActivityChooserView;->onMessageChannelReady(Landroid/view/View;)V

    .line 220
    invoke-virtual {p0, p1}, Lo/ActivityChooserView;->ICustomTabsCallback(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 222
    invoke-direct {p0}, Lo/ActivityChooserView;->postMessage()V

    .line 223
    iput v1, p0, Lo/ActivityChooserView;->asInterface:I

    .line 226
    :cond_0
    invoke-virtual {p0, p1}, Lo/ActivityChooserView;->onPostMessage(Landroid/view/View;)V

    .line 18182
    iget-object v0, p0, Lo/ActivityChooserView;->warmup:Lo/getSupportCompoundDrawablesTintList;

    invoke-interface {v0, p0}, Lo/getSupportCompoundDrawablesTintList;->ICustomTabsCallback(Lo/ActivityChooserView;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 230
    :cond_1
    iget v0, p0, Lo/ActivityChooserView;->asInterface:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lo/ActivityChooserView;->asInterface:I

    .line 231
    iget-object v0, p0, Lo/ActivityChooserView;->getInterfaceDescriptor:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->attachView(Landroid/view/View;)V

    return v1
.end method

.method public final onPostMessage()I
    .locals 1

    .line 477
    iget-object v0, p0, Lo/ActivityChooserView;->ICustomTabsService:Lo/getWindowAnimations;

    invoke-interface {v0}, Lo/getWindowAnimations;->onPostMessage()I

    move-result v0

    return v0
.end method

.method abstract onPostMessage(Landroid/view/View;)V
.end method

.method abstract onRelationshipValidationResult()V
.end method

.method final onTransact()Lo/needsDividerBefore;
    .locals 1

    .line 127
    iget-object v0, p0, Lo/ActivityChooserView;->requestPostMessageChannel:Lo/needsDividerBefore;

    return-object v0
.end method

.method public abstract warmup()I
.end method
