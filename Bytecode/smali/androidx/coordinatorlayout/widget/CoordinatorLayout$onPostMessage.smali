.class public final Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onPostMessage"
.end annotation


# instance fields
.field public ICustomTabsCallback:I

.field public ICustomTabsCallback$Stub:I

.field final ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Rect;

.field ICustomTabsService:Z

.field asBinder:I

.field asInterface:I

.field public extraCallback:I

.field getInterfaceDescriptor:Landroid/view/View;

.field private mayLaunchUrl:Z

.field newSession:Landroid/view/View;

.field public onMessageChannelReady:Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;

.field public onNavigationEvent:I

.field onPostMessage:Z

.field public onRelationshipValidationResult:I

.field public onTransact:I

.field private requestPostMessageChannel:Z

.field warmup:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, -0x2

    .line 2869
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v0, 0x0

    .line 2809
    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onPostMessage:Z

    .line 2818
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->ICustomTabsCallback:I

    .line 2824
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onNavigationEvent:I

    const/4 v1, -0x1

    .line 2831
    iput v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->extraCallback:I

    .line 2837
    iput v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onRelationshipValidationResult:I

    .line 2844
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->ICustomTabsCallback$Stub:I

    .line 2851
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onTransact:I

    .line 2864
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Rect;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 2873
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 2809
    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onPostMessage:Z

    .line 2818
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->ICustomTabsCallback:I

    .line 2824
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onNavigationEvent:I

    const/4 v1, -0x1

    .line 2831
    iput v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->extraCallback:I

    .line 2837
    iput v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onRelationshipValidationResult:I

    .line 2844
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->ICustomTabsCallback$Stub:I

    .line 2851
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onTransact:I

    .line 2864
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Rect;

    .line 2875
    sget-object v2, Lo/getIconBitmap$extraCallback;->CoordinatorLayout_Layout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 2878
    sget v3, Lo/getIconBitmap$extraCallback;->CoordinatorLayout_Layout_android_layout_gravity:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->ICustomTabsCallback:I

    .line 2881
    sget v3, Lo/getIconBitmap$extraCallback;->CoordinatorLayout_Layout_layout_anchor:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onRelationshipValidationResult:I

    .line 2883
    sget v3, Lo/getIconBitmap$extraCallback;->CoordinatorLayout_Layout_layout_anchorGravity:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onNavigationEvent:I

    .line 2887
    sget v3, Lo/getIconBitmap$extraCallback;->CoordinatorLayout_Layout_layout_keyline:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->extraCallback:I

    .line 2890
    sget v1, Lo/getIconBitmap$extraCallback;->CoordinatorLayout_Layout_layout_insetEdge:I

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->ICustomTabsCallback$Stub:I

    .line 2891
    sget v1, Lo/getIconBitmap$extraCallback;->CoordinatorLayout_Layout_layout_dodgeInsetEdges:I

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onTransact:I

    .line 2893
    sget v0, Lo/getIconBitmap$extraCallback;->CoordinatorLayout_Layout_layout_behavior:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 2896
    sget v0, Lo/getIconBitmap$extraCallback;->CoordinatorLayout_Layout_layout_behavior:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onPostMessage(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;

    move-result-object p1

    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onMessageChannelReady:Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;

    .line 2899
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2901
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onMessageChannelReady:Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;

    if-eqz p1, :cond_1

    .line 2903
    invoke-virtual {p1, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;->extraCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 2916
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 2809
    iput-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onPostMessage:Z

    .line 2818
    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->ICustomTabsCallback:I

    .line 2824
    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onNavigationEvent:I

    const/4 v0, -0x1

    .line 2831
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->extraCallback:I

    .line 2837
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onRelationshipValidationResult:I

    .line 2844
    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->ICustomTabsCallback$Stub:I

    .line 2851
    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onTransact:I

    .line 2864
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .line 2912
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, 0x0

    .line 2809
    iput-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onPostMessage:Z

    .line 2818
    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->ICustomTabsCallback:I

    .line 2824
    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onNavigationEvent:I

    const/4 v0, -0x1

    .line 2831
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->extraCallback:I

    .line 2837
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onRelationshipValidationResult:I

    .line 2844
    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->ICustomTabsCallback$Stub:I

    .line 2851
    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onTransact:I

    .line 2864
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;)V
    .locals 1

    .line 2908
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, 0x0

    .line 2809
    iput-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onPostMessage:Z

    .line 2818
    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->ICustomTabsCallback:I

    .line 2824
    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onNavigationEvent:I

    const/4 v0, -0x1

    .line 2831
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->extraCallback:I

    .line 2837
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onRelationshipValidationResult:I

    .line 2844
    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->ICustomTabsCallback$Stub:I

    .line 2851
    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onTransact:I

    .line 2864
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;)V
    .locals 1

    .line 2965
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onMessageChannelReady:Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    .line 2968
    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;->ICustomTabsCallback()V

    .line 2971
    :cond_0
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onMessageChannelReady:Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;

    const/4 v0, 0x1

    .line 2973
    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onPostMessage:Z

    if-eqz p1, :cond_1

    .line 2977
    invoke-virtual {p1, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;->extraCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;)V

    :cond_1
    return-void
.end method

.method final onNavigationEvent(I)Z
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3073
    :cond_0
    iget-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->mayLaunchUrl:Z

    return p1

    .line 3071
    :cond_1
    iget-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->requestPostMessageChannel:Z

    return p1
.end method

.method final onPostMessage(IZ)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3063
    :cond_0
    iput-boolean p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->mayLaunchUrl:Z

    :goto_0
    return-void

    .line 3060
    :cond_1
    iput-boolean p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->requestPostMessageChannel:Z

    return-void
.end method
