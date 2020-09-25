.class public Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.super Landroid/view/ViewGroup;
.source ""

# interfaces
.implements Lo/IMediaControllerCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/coordinatorlayout/widget/CoordinatorLayout$onRelationshipValidationResult;,
        Landroidx/coordinatorlayout/widget/CoordinatorLayout$onMessageChannelReady;,
        Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;,
        Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;,
        Landroidx/coordinatorlayout/widget/CoordinatorLayout$extraCallback;,
        Landroidx/coordinatorlayout/widget/CoordinatorLayout$ICustomTabsCallback;,
        Landroidx/coordinatorlayout/widget/CoordinatorLayout$onTransact;,
        Landroidx/coordinatorlayout/widget/CoordinatorLayout$asBinder;
    }
.end annotation


# static fields
.field private static asBinder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static onNavigationEvent:Ljava/lang/String;

.field private static onPostMessage:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static onRelationshipValidationResult:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static final onTransact:Lo/RatingCompat$StarStyle$extraCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/RatingCompat$StarStyle$extraCallback<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field ICustomTabsCallback:Z

.field private final ICustomTabsCallback$Stub:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final ICustomTabsCallback$Stub$Proxy:[I

.field private final ICustomTabsService:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private ICustomTabsService$Stub:Lo/ArrayCreatingInputMerger$extraCallback;

.field private final IPostMessageService:Lo/sendCommand;

.field private IPostMessageService$Stub:Z

.field private final asInterface:Lo/getMediaUri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getMediaUri<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public extraCallback:Lo/getVolumeAttributes;

.field private extraCommand:Landroidx/coordinatorlayout/widget/CoordinatorLayout$asBinder;

.field private final getInterfaceDescriptor:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mayLaunchUrl:Landroid/view/View;

.field private final newSession:[I

.field onMessageChannelReady:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private postMessage:[I

.field private requestPostMessageChannel:Z

.field private updateVisuals:Landroid/view/View;

.field private validateRelationship:Landroid/graphics/drawable/Drawable;

.field private warmup:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 118
    const-class v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onNavigationEvent:Ljava/lang/String;

    .line 126
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    .line 127
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onTransact;

    invoke-direct {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onTransact;-><init>()V

    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onRelationshipValidationResult:Ljava/util/Comparator;

    goto :goto_1

    .line 129
    :cond_1
    sput-object v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onRelationshipValidationResult:Ljava/util/Comparator;

    :goto_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 133
    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onPostMessage:[Ljava/lang/Class;

    .line 138
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->asBinder:Ljava/lang/ThreadLocal;

    .line 152
    new-instance v0, Lo/RatingCompat$StarStyle$onMessageChannelReady;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lo/RatingCompat$StarStyle$onMessageChannelReady;-><init>(I)V

    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onTransact:Lo/RatingCompat$StarStyle$extraCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 207
    invoke-direct {p0, p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 211
    sget v0, Lo/getIconBitmap$onNavigationEvent;->coordinatorLayoutStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .line 216
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ICustomTabsCallback$Stub:Ljava/util/List;

    .line 169
    new-instance v0, Lo/getMediaUri;

    invoke-direct {v0}, Lo/getMediaUri;-><init>()V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->asInterface:Lo/getMediaUri;

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getInterfaceDescriptor:Ljava/util/List;

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ICustomTabsService:Ljava/util/List;

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 178
    iput-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->newSession:[I

    new-array v0, v0, [I

    .line 182
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ICustomTabsCallback$Stub$Proxy:[I

    .line 203
    new-instance v0, Lo/sendCommand;

    invoke-direct {v0}, Lo/sendCommand;-><init>()V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->IPostMessageService:Lo/sendCommand;

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 218
    sget-object v1, Lo/getIconBitmap$extraCallback;->CoordinatorLayout:[I

    sget v2, Lo/getIconBitmap$onPostMessage;->Widget_Support_CoordinatorLayout:I

    .line 219
    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Lo/getIconBitmap$extraCallback;->CoordinatorLayout:[I

    .line 221
    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 223
    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_2

    if-nez p3, :cond_1

    .line 225
    sget-object v4, Lo/getIconBitmap$extraCallback;->CoordinatorLayout:[I

    const/4 v7, 0x0

    sget v8, Lo/getIconBitmap$onPostMessage;->Widget_Support_CoordinatorLayout:I

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, v1

    invoke-virtual/range {v2 .. v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    goto :goto_1

    .line 229
    :cond_1
    sget-object v4, Lo/getIconBitmap$extraCallback;->CoordinatorLayout:[I

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, v1

    move v7, p3

    invoke-virtual/range {v2 .. v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 234
    :cond_2
    :goto_1
    sget p2, Lo/getIconBitmap$extraCallback;->CoordinatorLayout_keylines:I

    invoke-virtual {v1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_3

    .line 236
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 237
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p2

    iput-object p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->postMessage:[I

    .line 238
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 239
    iget-object p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->postMessage:[I

    array-length p2, p2

    :goto_2
    if-ge v0, p2, :cond_3

    .line 241
    iget-object p3, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->postMessage:[I

    aget v2, p3, v0

    int-to-float v2, v2

    mul-float v2, v2, p1

    float-to-int v2, v2

    aput v2, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 244
    :cond_3
    sget p1, Lo/getIconBitmap$extraCallback;->CoordinatorLayout_statusBarBackground:I

    invoke-virtual {v1, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->validateRelationship:Landroid/graphics/drawable/Drawable;

    .line 245
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 247
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onNavigationEvent()V

    .line 248
    new-instance p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onMessageChannelReady;

    invoke-direct {p1, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onMessageChannelReady;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 250
    invoke-static {p0}, Lo/unregisterCallbackListener;->asBinder(Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x1

    .line 252
    invoke-static {p0, p1}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;I)V

    :cond_4
    return-void
.end method

.method private extraCallback()V
    .locals 10

    .line 1585
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    .line 1587
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 50123
    iget-object v5, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->asInterface:Lo/getMediaUri;

    .line 50124
    iget-object v6, v5, Lo/getMediaUri;->onMessageChannelReady:Lo/fromMediaItemList;

    invoke-virtual {v6}, Lo/fromMediaItemList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_1

    .line 50125
    iget-object v8, v5, Lo/getMediaUri;->onMessageChannelReady:Lo/fromMediaItemList;

    .line 50131
    iget-object v8, v8, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 v9, v7, 0x1

    add-int/2addr v9, v3

    aget-object v8, v8, v9

    .line 50125
    check-cast v8, Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    .line 50126
    invoke-virtual {v8, v4}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v4, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_2

    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 1594
    :goto_3
    iget-boolean v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->IPostMessageService$Stub:Z

    if-eq v0, v2, :cond_8

    if-eqz v0, :cond_6

    .line 50132
    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->requestPostMessageChannel:Z

    if-eqz v0, :cond_5

    .line 50134
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->extraCommand:Landroidx/coordinatorlayout/widget/CoordinatorLayout$asBinder;

    if-nez v0, :cond_4

    .line 50135
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$asBinder;

    invoke-direct {v0, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$asBinder;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->extraCommand:Landroidx/coordinatorlayout/widget/CoordinatorLayout$asBinder;

    .line 50137
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 50138
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->extraCommand:Landroidx/coordinatorlayout/widget/CoordinatorLayout$asBinder;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 50143
    :cond_5
    iput-boolean v3, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->IPostMessageService$Stub:Z

    return-void

    .line 50145
    :cond_6
    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->requestPostMessageChannel:Z

    if-eqz v0, :cond_7

    .line 50146
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->extraCommand:Landroidx/coordinatorlayout/widget/CoordinatorLayout$asBinder;

    if-eqz v0, :cond_7

    .line 50147
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 50148
    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->extraCommand:Landroidx/coordinatorlayout/widget/CoordinatorLayout$asBinder;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 50151
    :cond_7
    iput-boolean v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->IPostMessageService$Stub:Z

    :cond_8
    return-void
.end method

.method private static extraCallback(Landroid/view/View;I)V
    .locals 2

    .line 1494
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    .line 1495
    iget v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->asInterface:I

    if-eq v1, p1, :cond_0

    .line 1496
    iget v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->asInterface:I

    sub-int v1, p1, v1

    .line 1497
    invoke-static {p0, v1}, Lo/unregisterCallbackListener;->asBinder(Landroid/view/View;I)V

    .line 1498
    iput p1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->asInterface:I

    :cond_0
    return-void
.end method

.method private onMessageChannelReady(I)I
    .locals 4

    .line 600
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->postMessage:[I

    const/4 v1, 0x0

    const-string v2, "CoordinatorLayout"

    if-nez v0, :cond_0

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "No keylines defined for "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " - attempted index lookup "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-ltz p1, :cond_2

    .line 605
    array-length v3, v0

    if-lt p1, v3, :cond_1

    goto :goto_0

    .line 610
    :cond_1
    aget p1, v0, p1

    return p1

    .line 606
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Keyline index "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " out of range for "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private onMessageChannelReady(Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;Landroid/graphics/Rect;II)V
    .locals 5

    .line 1066
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1067
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1070
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->left:I

    .line 1072
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v0, v4

    sub-int/2addr v0, p3

    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v0, v4

    .line 1071
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1070
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1073
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->top:I

    .line 1075
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v1, v4

    sub-int/2addr v1, p4

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v1, p1

    .line 1074
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1073
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p3, v0

    add-int/2addr p4, p1

    .line 1077
    invoke-virtual {p2, v0, p1, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private onMessageChannelReady(Z)V
    .locals 13

    .line 412
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 414
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 415
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    .line 3952
    iget-object v4, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onMessageChannelReady:Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;

    if-eqz v4, :cond_1

    .line 418
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide v5, v7

    .line 419
    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v5

    if-eqz p1, :cond_0

    .line 422
    invoke-virtual {v4, p0, v3, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;->extraCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 424
    :cond_0
    invoke-virtual {v4, p0, v3, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;->onNavigationEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 426
    :goto_1
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_2
    if-ge p1, v0, :cond_3

    .line 431
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 432
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    .line 4050
    iput-boolean v1, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->ICustomTabsService:Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    .line 435
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->updateVisuals:Landroid/view/View;

    .line 436
    iput-boolean v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->warmup:Z

    return-void
.end method

.method private onNavigationEvent()V
    .locals 2

    .line 3305
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    return-void

    .line 3309
    :cond_0
    invoke-static {p0}, Lo/unregisterCallbackListener;->extraCommand(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3310
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ICustomTabsService$Stub:Lo/ArrayCreatingInputMerger$extraCallback;

    if-nez v0, :cond_1

    .line 3311
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$4;

    invoke-direct {v0, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$4;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ICustomTabsService$Stub:Lo/ArrayCreatingInputMerger$extraCallback;

    .line 3321
    :cond_1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ICustomTabsService$Stub:Lo/ArrayCreatingInputMerger$extraCallback;

    invoke-static {p0, v0}, Lo/unregisterCallbackListener;->ICustomTabsCallback(Landroid/view/View;Lo/ArrayCreatingInputMerger$extraCallback;)V

    const/16 v0, 0x500

    .line 3324
    invoke-virtual {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setSystemUiVisibility(I)V

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 3327
    invoke-static {p0, v0}, Lo/unregisterCallbackListener;->ICustomTabsCallback(Landroid/view/View;Lo/ArrayCreatingInputMerger$extraCallback;)V

    return-void
.end method

.method static onPostMessage(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;
    .locals 5

    .line 615
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "."

    .line 620
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/16 v0, 0x2e

    .line 623
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_2

    goto :goto_0

    .line 628
    :cond_2
    sget-object v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onNavigationEvent:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 634
    :cond_3
    :goto_0
    :try_start_0
    sget-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->asBinder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_4

    .line 636
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 637
    sget-object v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->asBinder:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 639
    :cond_4
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_5

    .line 642
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p2, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 643
    sget-object v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onPostMessage:[Ljava/lang/Class;

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 644
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 645
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v3

    aput-object p1, v0, v2

    .line 647
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 649
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Could not inflate Behavior subclass "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static onPostMessage(Landroid/view/View;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;
    .locals 6

    .line 654
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    .line 655
    iget-boolean v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onPostMessage:Z

    if-nez v1, :cond_4

    .line 656
    instance-of v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$extraCallback;

    const-string v2, "CoordinatorLayout"

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 657
    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$extraCallback;

    invoke-interface {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$extraCallback;->onPostMessage()Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;

    move-result-object p0

    if-nez p0, :cond_0

    const-string v1, "Attached behavior class is null"

    .line 659
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_0
    invoke-virtual {v0, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onNavigationEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;)V

    .line 662
    iput-boolean v3, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onPostMessage:Z

    goto :goto_2

    .line 665
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 667
    const-class v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$ICustomTabsCallback;

    .line 668
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$ICustomTabsCallback;

    if-nez v1, :cond_2

    .line 670
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 675
    :try_start_0
    invoke-interface {v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$ICustomTabsCallback;->extraCallback()Ljava/lang/Class;

    move-result-object p0

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {p0, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;

    .line 674
    invoke-virtual {v0, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onNavigationEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 677
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Default behavior class "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$ICustomTabsCallback;->extraCallback()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " could not be instantiated. Did you forget a default constructor?"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 682
    :cond_3
    :goto_1
    iput-boolean v3, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onPostMessage:Z

    :cond_4
    :goto_2
    return-object v0
.end method

.method private static onPostMessage(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;II)V
    .locals 6

    .line 992
    iget v0, p3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->ICustomTabsCallback:I

    if-nez v0, :cond_0

    const/16 v0, 0x11

    :cond_0
    invoke-static {v0, p0}, Lo/onQueueChanged;->onMessageChannelReady(II)I

    move-result v0

    .line 994
    iget p3, p3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onNavigationEvent:I

    and-int/lit8 v1, p3, 0x7

    if-nez v1, :cond_1

    const v1, 0x800003

    or-int/2addr p3, v1

    :cond_1
    and-int/lit8 v1, p3, 0x70

    if-nez v1, :cond_2

    or-int/lit8 p3, p3, 0x30

    :cond_2
    invoke-static {p3, p0}, Lo/onQueueChanged;->onMessageChannelReady(II)I

    move-result p0

    and-int/lit8 p3, v0, 0x7

    and-int/lit8 v0, v0, 0x70

    and-int/lit8 v1, p0, 0x7

    and-int/lit8 p0, p0, 0x70

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    if-eq v1, v2, :cond_3

    .line 1012
    iget v1, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 1015
    :cond_3
    iget v1, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 1018
    :cond_4
    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    :goto_0
    const/16 v4, 0x50

    const/16 v5, 0x10

    if-eq p0, v5, :cond_6

    if-eq p0, v4, :cond_5

    .line 1025
    iget p0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 1028
    :cond_5
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 1031
    :cond_6
    iget p0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p0, p1

    :goto_1
    if-eq p3, v3, :cond_7

    if-eq p3, v2, :cond_8

    sub-int/2addr v1, p4

    goto :goto_2

    .line 1045
    :cond_7
    div-int/lit8 p1, p4, 0x2

    sub-int/2addr v1, p1

    :cond_8
    :goto_2
    if-eq v0, v5, :cond_9

    if-eq v0, v4, :cond_a

    sub-int/2addr p0, p5

    goto :goto_3

    .line 1058
    :cond_9
    div-int/lit8 p1, p5, 0x2

    sub-int/2addr p0, p1

    :cond_a
    :goto_3
    add-int/2addr p4, v1

    add-int/2addr p5, p0

    .line 1062
    invoke-virtual {p2, v1, p0, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private static onPostMessage(Landroid/view/View;I)V
    .locals 2

    .line 1503
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    .line 1504
    iget v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->asBinder:I

    if-eq v1, p1, :cond_0

    .line 1505
    iget v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->asBinder:I

    sub-int v1, p1, v1

    .line 1506
    invoke-static {p0, v1}, Lo/unregisterCallbackListener;->ICustomTabsCallback(Landroid/view/View;I)V

    .line 1507
    iput p1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->asBinder:I

    :cond_0
    return-void
.end method

.method private onPostMessage(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 2

    .line 979
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 27732
    invoke-static {p0, p1, p3}, Lo/getSubtitle;->onNavigationEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    return-void

    .line 986
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-virtual {p3, p2, v0, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 980
    :cond_2
    :goto_0
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method private onPostMessage(Landroid/view/MotionEvent;I)Z
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 466
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 468
    iget-object v4, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getInterfaceDescriptor:Ljava/util/List;

    .line 4444
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 4446
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isChildrenDrawingOrderEnabled()Z

    move-result v5

    .line 4447
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/lit8 v7, v6, -0x1

    :goto_0
    if-ltz v7, :cond_1

    if-eqz v5, :cond_0

    .line 4449
    invoke-virtual {v0, v6, v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildDrawingOrder(II)I

    move-result v8

    goto :goto_1

    :cond_0
    move v8, v7

    .line 4450
    :goto_1
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 4451
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 4454
    :cond_1
    sget-object v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onRelationshipValidationResult:Ljava/util/Comparator;

    if-eqz v5, :cond_2

    .line 4455
    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 472
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2
    if-ge v8, v5, :cond_f

    .line 474
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 475
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    .line 4952
    iget-object v13, v12, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onMessageChannelReady:Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;

    const/4 v14, 0x1

    if-nez v9, :cond_3

    if-eqz v10, :cond_7

    :cond_3
    if-eqz v3, :cond_7

    if-eqz v13, :cond_e

    if-nez v7, :cond_4

    .line 483
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    const/16 v19, 0x3

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-wide/from16 v15, v17

    .line 484
    invoke-static/range {v15 .. v22}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v7

    :cond_4
    if-eqz v2, :cond_6

    if-eq v2, v14, :cond_5

    goto :goto_6

    .line 492
    :cond_5
    invoke-virtual {v13, v0, v11, v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;->onNavigationEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_6

    .line 489
    :cond_6
    invoke-virtual {v13, v0, v11, v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;->extraCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_6

    :cond_7
    if-nez v9, :cond_a

    if-eqz v13, :cond_a

    if-eqz v2, :cond_9

    if-eq v2, v14, :cond_8

    goto :goto_3

    .line 505
    :cond_8
    invoke-virtual {v13, v0, v11, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;->onNavigationEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v9

    goto :goto_3

    .line 502
    :cond_9
    invoke-virtual {v13, v0, v11, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;->extraCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v9

    :goto_3
    if-eqz v9, :cond_a

    .line 509
    iput-object v11, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->updateVisuals:Landroid/view/View;

    .line 5014
    :cond_a
    iget-object v10, v12, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onMessageChannelReady:Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;

    if-nez v10, :cond_b

    .line 5015
    iput-boolean v6, v12, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->ICustomTabsService:Z

    .line 5017
    :cond_b
    iget-boolean v10, v12, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->ICustomTabsService:Z

    .line 5033
    iget-boolean v11, v12, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->ICustomTabsService:Z

    if-eqz v11, :cond_c

    const/4 v11, 0x1

    goto :goto_4

    .line 5037
    :cond_c
    iget-boolean v11, v12, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->ICustomTabsService:Z

    .line 5038
    iput-boolean v11, v12, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->ICustomTabsService:Z

    :goto_4
    if-eqz v11, :cond_d

    if-nez v10, :cond_d

    const/4 v10, 0x1

    goto :goto_5

    :cond_d
    const/4 v10, 0x0

    :goto_5
    if-eqz v11, :cond_e

    if-eqz v10, :cond_f

    :cond_e
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 525
    :cond_f
    invoke-interface {v4}, Ljava/util/List;->clear()V

    return v9
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/view/View;)V
    .locals 4

    .line 1523
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->asInterface:Lo/getMediaUri;

    .line 49098
    iget-object v0, v0, Lo/getMediaUri;->onMessageChannelReady:Lo/fromMediaItemList;

    invoke-virtual {v0, p1}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1524
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 1525
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1526
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1528
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    .line 49952
    iget-object v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onMessageChannelReady:Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;

    if-eqz v3, :cond_0

    .line 1531
    invoke-virtual {v3, p0, v2, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;->extraCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final ICustomTabsCallback(Landroid/view/View;IIII)V
    .locals 0

    .line 760
    invoke-virtual/range {p0 .. p5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 1760
    instance-of v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    .line 1253
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1277
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method protected drawableStateChanged()V
    .locals 4

    .line 332
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 334
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    .line 337
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->validateRelationship:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 338
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 339
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v2, v0

    :cond_0
    if-eqz v2, :cond_1

    .line 343
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 50193
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    invoke-direct {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;-><init>()V

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 50200
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 50194
    instance-of v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    if-eqz v0, :cond_0

    .line 50195
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    invoke-direct {v0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;)V

    return-object v0

    .line 50196
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 50197
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 50199
    :cond_1
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    invoke-direct {v0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getNestedScrollAxes()I
    .locals 2

    .line 2017
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->IPostMessageService:Lo/sendCommand;

    .line 50189
    iget v1, v0, Lo/sendCommand;->onMessageChannelReady:I

    iget v0, v0, Lo/sendCommand;->onNavigationEvent:I

    or-int/2addr v0, v1

    return v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 3

    .line 742
    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 3

    .line 737
    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 264
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x0

    .line 265
    invoke-direct {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onMessageChannelReady(Z)V

    .line 266
    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->IPostMessageService$Stub:Z

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->extraCommand:Landroidx/coordinatorlayout/widget/CoordinatorLayout$asBinder;

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$asBinder;

    invoke-direct {v0, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$asBinder;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->extraCommand:Landroidx/coordinatorlayout/widget/CoordinatorLayout$asBinder;

    .line 270
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 271
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->extraCommand:Landroidx/coordinatorlayout/widget/CoordinatorLayout$asBinder;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 273
    :cond_1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->extraCallback:Lo/getVolumeAttributes;

    if-nez v0, :cond_2

    invoke-static {p0}, Lo/unregisterCallbackListener;->extraCommand(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 276
    invoke-static {p0}, Lo/unregisterCallbackListener;->updateVisuals(Landroid/view/View;)V

    :cond_2
    const/4 v0, 0x1

    .line 278
    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->requestPostMessageChannel:Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .line 283
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 284
    invoke-direct {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onMessageChannelReady(Z)V

    .line 285
    iget-boolean v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->IPostMessageService$Stub:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->extraCommand:Landroidx/coordinatorlayout/widget/CoordinatorLayout$asBinder;

    if-eqz v1, :cond_0

    .line 286
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 287
    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->extraCommand:Landroidx/coordinatorlayout/widget/CoordinatorLayout$asBinder;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 289
    :cond_0
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mayLaunchUrl:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 290
    invoke-virtual {p0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onStopNestedScroll(Landroid/view/View;)V

    .line 292
    :cond_1
    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->requestPostMessageChannel:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 926
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 927
    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ICustomTabsCallback:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->validateRelationship:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 928
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->extraCallback:Lo/getVolumeAttributes;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/getVolumeAttributes;->extraCallback()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_1

    .line 930
    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->validateRelationship:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2, v1, v1, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 931
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->validateRelationship:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 532
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 536
    invoke-direct {p0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onMessageChannelReady(Z)V

    :cond_0
    const/4 v2, 0x0

    .line 539
    invoke-direct {p0, p1, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onPostMessage(Landroid/view/MotionEvent;I)Z

    move-result p1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 542
    :cond_1
    invoke-direct {p0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onMessageChannelReady(Z)V

    :cond_2
    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 906
    invoke-static {p0}, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub(Landroid/view/View;)I

    move-result p1

    .line 907
    iget-object p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ICustomTabsCallback$Stub:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_2

    .line 909
    iget-object p4, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ICustomTabsCallback$Stub:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    .line 910
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result p5

    const/16 v0, 0x8

    if-eq p5, v0, :cond_1

    .line 915
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    check-cast p5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    .line 26952
    iget-object p5, p5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onMessageChannelReady:Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;

    if-eqz p5, :cond_0

    .line 918
    invoke-virtual {p5, p0, p4, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;->ICustomTabsCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result p5

    if-nez p5, :cond_1

    .line 919
    :cond_0
    invoke-virtual {p0, p4, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onNavigationEvent(Landroid/view/View;I)V

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 30

    move-object/from16 v7, p0

    .line 6689
    iget-object v0, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ICustomTabsCallback$Stub:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6690
    iget-object v0, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->asInterface:Lo/getMediaUri;

    .line 7143
    iget-object v1, v0, Lo/getMediaUri;->onMessageChannelReady:Lo/fromMediaItemList;

    invoke-virtual {v1}, Lo/fromMediaItemList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_1

    .line 7144
    iget-object v4, v0, Lo/getMediaUri;->onMessageChannelReady:Lo/fromMediaItemList;

    .line 7399
    iget-object v4, v4, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 v5, v2, 0x1

    add-int/2addr v5, v3

    aget-object v3, v4, v5

    .line 7144
    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 8213
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->clear()V

    .line 8214
    iget-object v4, v0, Lo/getMediaUri;->ICustomTabsCallback:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {v4, v3}, Lo/RatingCompat$StarStyle$extraCallback;->onMessageChannelReady(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7149
    :cond_1
    iget-object v0, v0, Lo/getMediaUri;->onMessageChannelReady:Lo/fromMediaItemList;

    invoke-virtual {v0}, Lo/fromMediaItemList;->clear()V

    .line 6692
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1c

    .line 6693
    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 6695
    invoke-static {v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onPostMessage(Landroid/view/View;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    move-result-object v4

    .line 9125
    iget v5, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onRelationshipValidationResult:I

    const/4 v6, -0x1

    const/4 v9, 0x0

    if-ne v5, v6, :cond_2

    .line 9126
    iput-object v9, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->newSession:Landroid/view/View;

    iput-object v9, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->getInterfaceDescriptor:Landroid/view/View;

    goto/16 :goto_7

    .line 9130
    :cond_2
    iget-object v5, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->getInterfaceDescriptor:Landroid/view/View;

    if-eqz v5, :cond_8

    .line 9186
    iget-object v5, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->getInterfaceDescriptor:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    iget v6, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onRelationshipValidationResult:I

    if-eq v5, v6, :cond_3

    :goto_2
    const/4 v5, 0x0

    goto :goto_5

    .line 9190
    :cond_3
    iget-object v5, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->getInterfaceDescriptor:Landroid/view/View;

    .line 9191
    iget-object v6, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->getInterfaceDescriptor:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    :goto_3
    if-eq v6, v7, :cond_7

    if-eqz v6, :cond_6

    if-ne v6, v2, :cond_4

    goto :goto_4

    .line 9198
    :cond_4
    instance-of v10, v6, Landroid/view/View;

    if-eqz v10, :cond_5

    .line 9199
    move-object v5, v6

    check-cast v5, Landroid/view/View;

    .line 9193
    :cond_5
    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    goto :goto_3

    .line 9195
    :cond_6
    :goto_4
    iput-object v9, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->newSession:Landroid/view/View;

    iput-object v9, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->getInterfaceDescriptor:Landroid/view/View;

    goto :goto_2

    .line 9202
    :cond_7
    iput-object v5, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->newSession:Landroid/view/View;

    const/4 v5, 0x1

    :goto_5
    if-nez v5, :cond_10

    .line 10141
    :cond_8
    iget v5, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onRelationshipValidationResult:I

    invoke-virtual {v7, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->getInterfaceDescriptor:Landroid/view/View;

    .line 10142
    iget-object v5, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->getInterfaceDescriptor:Landroid/view/View;

    if-eqz v5, :cond_f

    .line 10143
    iget-object v5, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->getInterfaceDescriptor:Landroid/view/View;

    if-ne v5, v7, :cond_a

    .line 10144
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 10145
    iput-object v9, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->newSession:Landroid/view/View;

    iput-object v9, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->getInterfaceDescriptor:Landroid/view/View;

    goto :goto_7

    .line 10148
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "View can not be anchored to the the parent CoordinatorLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10152
    :cond_a
    iget-object v5, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->getInterfaceDescriptor:Landroid/view/View;

    .line 10153
    iget-object v6, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->getInterfaceDescriptor:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    :goto_6
    if-eq v6, v7, :cond_e

    if-eqz v6, :cond_e

    if-ne v6, v2, :cond_c

    .line 10157
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 10158
    iput-object v9, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->newSession:Landroid/view/View;

    iput-object v9, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->getInterfaceDescriptor:Landroid/view/View;

    goto :goto_7

    .line 10161
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Anchor must not be a descendant of the anchored view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10164
    :cond_c
    instance-of v10, v6, Landroid/view/View;

    if-eqz v10, :cond_d

    .line 10165
    move-object v5, v6

    check-cast v5, Landroid/view/View;

    .line 10155
    :cond_d
    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    goto :goto_6

    .line 10168
    :cond_e
    iput-object v5, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->newSession:Landroid/view/View;

    goto :goto_7

    .line 10170
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 10171
    iput-object v9, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->newSession:Landroid/view/View;

    iput-object v9, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->getInterfaceDescriptor:Landroid/view/View;

    .line 6698
    :cond_10
    :goto_7
    iget-object v5, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->asInterface:Lo/getMediaUri;

    .line 11054
    iget-object v6, v5, Lo/getMediaUri;->onMessageChannelReady:Lo/fromMediaItemList;

    invoke-virtual {v6, v2}, Lo/fromMediaItemList;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 11055
    iget-object v5, v5, Lo/getMediaUri;->onMessageChannelReady:Lo/fromMediaItemList;

    invoke-virtual {v5, v2, v9}, Lo/fromMediaItemList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    const/4 v5, 0x0

    :goto_8
    if-ge v5, v0, :cond_1a

    if-eq v5, v1, :cond_19

    .line 6705
    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 11100
    iget-object v10, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->newSession:Landroid/view/View;

    if-eq v6, v10, :cond_14

    .line 11101
    invoke-static/range {p0 .. p0}, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub(Landroid/view/View;)I

    move-result v10

    .line 11210
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    .line 11211
    iget v11, v11, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->ICustomTabsCallback$Stub:I

    invoke-static {v11, v10}, Lo/onQueueChanged;->onMessageChannelReady(II)I

    move-result v11

    if-eqz v11, :cond_12

    .line 11212
    iget v12, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onTransact:I

    .line 11213
    invoke-static {v12, v10}, Lo/onQueueChanged;->onMessageChannelReady(II)I

    move-result v10

    and-int/2addr v10, v11

    if-ne v10, v11, :cond_12

    const/4 v10, 0x1

    goto :goto_9

    :cond_12
    const/4 v10, 0x0

    :goto_9
    if-nez v10, :cond_14

    .line 11101
    iget-object v10, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onMessageChannelReady:Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;

    if-eqz v10, :cond_13

    iget-object v10, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onMessageChannelReady:Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;

    .line 11102
    invoke-virtual {v10, v2, v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;->onNavigationEvent(Landroid/view/View;Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_13

    goto :goto_a

    :cond_13
    const/4 v10, 0x0

    goto :goto_b

    :cond_14
    :goto_a
    const/4 v10, 0x1

    :goto_b
    if-eqz v10, :cond_19

    .line 6707
    iget-object v10, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->asInterface:Lo/getMediaUri;

    .line 12063
    iget-object v10, v10, Lo/getMediaUri;->onMessageChannelReady:Lo/fromMediaItemList;

    invoke-virtual {v10, v6}, Lo/fromMediaItemList;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_15

    .line 6709
    iget-object v10, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->asInterface:Lo/getMediaUri;

    .line 13054
    iget-object v11, v10, Lo/getMediaUri;->onMessageChannelReady:Lo/fromMediaItemList;

    invoke-virtual {v11, v6}, Lo/fromMediaItemList;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_15

    .line 13055
    iget-object v10, v10, Lo/getMediaUri;->onMessageChannelReady:Lo/fromMediaItemList;

    invoke-virtual {v10, v6, v9}, Lo/fromMediaItemList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6712
    :cond_15
    iget-object v10, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->asInterface:Lo/getMediaUri;

    .line 13076
    iget-object v11, v10, Lo/getMediaUri;->onMessageChannelReady:Lo/fromMediaItemList;

    invoke-virtual {v11, v6}, Lo/fromMediaItemList;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18

    iget-object v11, v10, Lo/getMediaUri;->onMessageChannelReady:Lo/fromMediaItemList;

    invoke-virtual {v11, v2}, Lo/fromMediaItemList;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18

    .line 13081
    iget-object v11, v10, Lo/getMediaUri;->onMessageChannelReady:Lo/fromMediaItemList;

    invoke-virtual {v11, v6}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    if-nez v11, :cond_17

    .line 13205
    iget-object v11, v10, Lo/getMediaUri;->ICustomTabsCallback:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {v11}, Lo/RatingCompat$StarStyle$extraCallback;->onPostMessage()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    if-nez v11, :cond_16

    .line 13207
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 13085
    :cond_16
    iget-object v10, v10, Lo/getMediaUri;->onMessageChannelReady:Lo/fromMediaItemList;

    invoke-virtual {v10, v6, v11}, Lo/fromMediaItemList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13088
    :cond_17
    invoke-virtual {v11, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 13077
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All nodes must be present in the graph before being added as an edge"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    :goto_c
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_8

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 10174
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Could not find CoordinatorLayout descendant view with id "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10175
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onRelationshipValidationResult:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to anchor view "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6718
    :cond_1c
    iget-object v0, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ICustomTabsCallback$Stub:Ljava/util/List;

    iget-object v1, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->asInterface:Lo/getMediaUri;

    invoke-virtual {v1}, Lo/getMediaUri;->ICustomTabsCallback()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6721
    iget-object v0, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ICustomTabsCallback$Stub:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 768
    invoke-direct/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->extraCallback()V

    .line 770
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    .line 771
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    .line 772
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    .line 773
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 774
    invoke-static/range {p0 .. p0}, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub(Landroid/view/View;)I

    move-result v11

    if-ne v11, v3, :cond_1d

    const/4 v12, 0x1

    goto :goto_d

    :cond_1d
    const/4 v12, 0x0

    .line 776
    :goto_d
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 777
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 778
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 779
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    add-int v17, v9, v10

    add-int v18, v0, v1

    .line 783
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getSuggestedMinimumWidth()I

    move-result v0

    .line 784
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getSuggestedMinimumHeight()I

    move-result v1

    .line 787
    iget-object v2, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->extraCallback:Lo/getVolumeAttributes;

    if-eqz v2, :cond_1e

    invoke-static/range {p0 .. p0}, Lo/unregisterCallbackListener;->extraCommand(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/16 v19, 0x1

    goto :goto_e

    :cond_1e
    const/16 v19, 0x0

    .line 789
    :goto_e
    iget-object v2, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ICustomTabsCallback$Stub:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    move v5, v0

    move v4, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v6, :cond_2b

    .line 791
    iget-object v0, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ICustomTabsCallback$Stub:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/view/View;

    .line 792
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2a

    .line 797
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    .line 800
    iget v0, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->extraCallback:I

    if-ltz v0, :cond_25

    if-eqz v13, :cond_25

    .line 801
    iget v0, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->extraCallback:I

    invoke-direct {v7, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onMessageChannelReady(I)I

    move-result v0

    .line 802
    iget v8, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->ICustomTabsCallback:I

    if-nez v8, :cond_1f

    const v8, 0x800035

    :cond_1f
    invoke-static {v8, v11}, Lo/onQueueChanged;->onMessageChannelReady(II)I

    move-result v8

    and-int/lit8 v8, v8, 0x7

    move/from16 v22, v2

    const/4 v2, 0x3

    if-ne v8, v2, :cond_20

    if-eqz v12, :cond_21

    :cond_20
    const/4 v2, 0x5

    if-ne v8, v2, :cond_22

    if-eqz v12, :cond_22

    :cond_21
    sub-int v2, v14, v10

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    .line 807
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v21, v2

    const/4 v8, 0x0

    goto :goto_10

    :cond_22
    if-ne v8, v2, :cond_23

    if-eqz v12, :cond_24

    :cond_23
    const/4 v2, 0x3

    if-ne v8, v2, :cond_26

    if-eqz v12, :cond_26

    :cond_24
    sub-int/2addr v0, v9

    const/4 v8, 0x0

    .line 810
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move/from16 v21, v0

    goto :goto_10

    :cond_25
    move/from16 v22, v2

    :cond_26
    const/4 v8, 0x0

    const/16 v21, 0x0

    :goto_10
    if-eqz v19, :cond_27

    .line 816
    invoke-static/range {v20 .. v20}, Lo/unregisterCallbackListener;->extraCommand(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 819
    iget-object v0, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->extraCallback:Lo/getVolumeAttributes;

    invoke-virtual {v0}, Lo/getVolumeAttributes;->onPostMessage()I

    move-result v0

    iget-object v2, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->extraCallback:Lo/getVolumeAttributes;

    .line 820
    invoke-virtual {v2}, Lo/getVolumeAttributes;->ICustomTabsCallback()I

    move-result v2

    add-int/2addr v0, v2

    .line 821
    iget-object v2, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->extraCallback:Lo/getVolumeAttributes;

    invoke-virtual {v2}, Lo/getVolumeAttributes;->extraCallback()I

    move-result v2

    iget-object v8, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->extraCallback:Lo/getVolumeAttributes;

    .line 822
    invoke-virtual {v8}, Lo/getVolumeAttributes;->onNavigationEvent()I

    move-result v8

    add-int/2addr v2, v8

    sub-int v0, v14, v0

    .line 824
    invoke-static {v0, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sub-int v2, v16, v2

    .line 826
    invoke-static {v2, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    move v8, v0

    move/from16 v23, v2

    goto :goto_11

    :cond_27
    move/from16 v8, p1

    move/from16 v23, p2

    .line 13952
    :goto_11
    iget-object v0, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onMessageChannelReady:Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;

    if-eqz v0, :cond_28

    const/16 v24, 0x0

    move-object v2, v1

    move-object/from16 v1, p0

    move-object/from16 v26, v2

    move/from16 v25, v22

    move-object/from16 v2, v20

    move/from16 v22, v3

    move v3, v8

    move/from16 v27, v4

    move/from16 v4, v21

    move/from16 v28, v9

    move v9, v5

    move/from16 v5, v23

    move/from16 v29, v6

    move/from16 v6, v24

    .line 831
    invoke-virtual/range {v0 .. v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;->onMessageChannelReady(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result v0

    if-nez v0, :cond_29

    goto :goto_12

    :cond_28
    move-object/from16 v26, v1

    move/from16 v27, v4

    move/from16 v29, v6

    move/from16 v28, v9

    move/from16 v25, v22

    move/from16 v22, v3

    move v9, v5

    :goto_12
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move v2, v8

    move/from16 v3, v21

    move/from16 v4, v23

    .line 14760
    invoke-virtual/range {v0 .. v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 837
    :cond_29
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int v0, v17, v0

    move-object/from16 v1, v26

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v0, v2

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v2

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 840
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int v2, v18, v2

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v1

    move/from16 v1, v27

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 842
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    move/from16 v8, v25

    invoke-static {v8, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    move v5, v0

    move v4, v1

    goto :goto_13

    :cond_2a
    move v8, v2

    move/from16 v22, v3

    move v1, v4

    move/from16 v29, v6

    move/from16 v28, v9

    move v9, v5

    :goto_13
    add-int/lit8 v3, v22, 0x1

    move/from16 v9, v28

    move/from16 v6, v29

    goto/16 :goto_f

    :cond_2b
    move v8, v2

    move v1, v4

    move v9, v5

    const/high16 v0, -0x1000000

    and-int/2addr v0, v8

    move/from16 v2, p1

    .line 845
    invoke-static {v9, v2, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    shl-int/lit8 v2, v8, 0x10

    move/from16 v3, p2

    .line 847
    invoke-static {v1, v3, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    .line 849
    invoke-virtual {v7, v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onMessageChannelReady(Landroid/view/View;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1547
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->asInterface:Lo/getMediaUri;

    .line 50110
    iget-object v1, v0, Lo/getMediaUri;->onMessageChannelReady:Lo/fromMediaItemList;

    invoke-virtual {v1}, Lo/fromMediaItemList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 50111
    iget-object v4, v0, Lo/getMediaUri;->onMessageChannelReady:Lo/fromMediaItemList;

    .line 50120
    iget-object v4, v4, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 v5, v3, 0x1

    add-int/lit8 v6, v5, 0x1

    aget-object v4, v4, v6

    .line 50111
    check-cast v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 50112
    invoke-virtual {v4, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v2, :cond_0

    .line 50114
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 50116
    :cond_0
    iget-object v4, v0, Lo/getMediaUri;->onMessageChannelReady:Lo/fromMediaItemList;

    .line 50121
    iget-object v4, v4, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    aget-object v4, v4, v5

    .line 50116
    invoke-virtual {v2, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1548
    :cond_2
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ICustomTabsService:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    if-eqz v2, :cond_3

    .line 1550
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ICustomTabsService:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1552
    :cond_3
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ICustomTabsService:Ljava/util/List;

    return-object p1
.end method

.method public final onMessageChannelReady(Landroid/view/View;II)Z
    .locals 1

    .line 50153
    sget-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onTransact:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {v0}, Lo/RatingCompat$StarStyle$extraCallback;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 50155
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 50158
    :cond_0
    invoke-static {p0, p1, v0}, Lo/getSubtitle;->onNavigationEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1707
    :try_start_0
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50160
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 50161
    sget-object p2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onTransact:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {p2, v0}, Lo/RatingCompat$StarStyle$extraCallback;->onMessageChannelReady(Ljava/lang/Object;)Z

    return p1

    :catchall_0
    move-exception p1

    .line 50163
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 50164
    sget-object p2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onTransact:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {p2, v0}, Lo/RatingCompat$StarStyle$extraCallback;->onMessageChannelReady(Ljava/lang/Object;)Z

    .line 1710
    throw p1
.end method

.method public final onNavigationEvent(Landroid/view/View;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1566
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->asInterface:Lo/getMediaUri;

    .line 50122
    iget-object v0, v0, Lo/getMediaUri;->onMessageChannelReady:Lo/fromMediaItemList;

    invoke-virtual {v0, p1}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 1567
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ICustomTabsService:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 1569
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ICustomTabsService:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1571
    :cond_0
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ICustomTabsService:Ljava/util/List;

    return-object p1
.end method

.method public final onNavigationEvent(Landroid/view/View;I)V
    .locals 11

    .line 889
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    .line 15003
    iget-object v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->getInterfaceDescriptor:Landroid/view/View;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onRelationshipValidationResult:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_10

    .line 894
    iget-object v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->getInterfaceDescriptor:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 895
    iget-object v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->getInterfaceDescriptor:Landroid/view/View;

    .line 15156
    sget-object v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onTransact:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {v1}, Lo/RatingCompat$StarStyle$extraCallback;->onPostMessage()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    if-nez v1, :cond_1

    .line 15158
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 16156
    :cond_1
    sget-object v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onTransact:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {v2}, Lo/RatingCompat$StarStyle$extraCallback;->onPostMessage()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    if-nez v2, :cond_2

    .line 16158
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    :cond_2
    move-object v8, v2

    .line 16732
    :try_start_0
    invoke-static {p0, v0, v1}, Lo/getSubtitle;->onNavigationEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 17090
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    .line 17091
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 17092
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    move v2, p2

    move-object v3, v1

    move-object v4, v8

    move-object v5, v0

    move v6, v9

    move v7, v10

    .line 17093
    invoke-static/range {v2 .. v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onPostMessage(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;II)V

    .line 17095
    invoke-direct {p0, v0, v8, v9, v10}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onMessageChannelReady(Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;Landroid/graphics/Rect;II)V

    .line 15111
    iget p2, v8, Landroid/graphics/Rect;->left:I

    iget v0, v8, Landroid/graphics/Rect;->top:I

    iget v2, v8, Landroid/graphics/Rect;->right:I

    iget v3, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2, v0, v2, v3}, Landroid/view/View;->layout(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17164
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 17165
    sget-object p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onTransact:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {p1, v1}, Lo/RatingCompat$StarStyle$extraCallback;->onMessageChannelReady(Ljava/lang/Object;)Z

    .line 18164
    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    .line 18165
    sget-object p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onTransact:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {p1, v8}, Lo/RatingCompat$StarStyle$extraCallback;->onMessageChannelReady(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 19164
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 19165
    sget-object p2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onTransact:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {p2, v1}, Lo/RatingCompat$StarStyle$extraCallback;->onMessageChannelReady(Ljava/lang/Object;)Z

    .line 20164
    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    .line 20165
    sget-object p2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onTransact:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {p2, v8}, Lo/RatingCompat$StarStyle$extraCallback;->onMessageChannelReady(Ljava/lang/Object;)Z

    .line 15115
    throw p1

    .line 896
    :cond_3
    iget v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->extraCallback:I

    if-ltz v1, :cond_a

    .line 897
    iget v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->extraCallback:I

    .line 21130
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    .line 21131
    iget v4, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->ICustomTabsCallback:I

    if-nez v4, :cond_4

    const v4, 0x800035

    :cond_4
    invoke-static {v4, p2}, Lo/onQueueChanged;->onMessageChannelReady(II)I

    move-result v4

    and-int/lit8 v5, v4, 0x7

    and-int/lit8 v4, v4, 0x70

    .line 21136
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 21137
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 21138
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 21139
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    if-ne p2, v2, :cond_5

    sub-int v0, v6, v0

    .line 21145
    :cond_5
    invoke-direct {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onMessageChannelReady(I)I

    move-result p2

    sub-int/2addr p2, v8

    if-eq v5, v2, :cond_7

    const/4 v0, 0x5

    if-eq v5, v0, :cond_6

    goto :goto_1

    :cond_6
    add-int/2addr p2, v8

    goto :goto_1

    .line 21157
    :cond_7
    div-int/lit8 v0, v8, 0x2

    add-int/2addr p2, v0

    :goto_1
    const/16 v0, 0x10

    if-eq v4, v0, :cond_9

    const/16 v0, 0x50

    if-eq v4, v0, :cond_8

    goto :goto_2

    :cond_8
    move v3, v9

    goto :goto_2

    .line 21170
    :cond_9
    div-int/lit8 v0, v9, 0x2

    add-int/2addr v3, v0

    .line 21175
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v0, v2

    .line 21177
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v6, v2

    sub-int/2addr v6, v8

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v6, v2

    .line 21176
    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 21175
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 21178
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, v2

    .line 21180
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v7, v2

    sub-int/2addr v7, v9

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v7, v1

    .line 21179
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 21178
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v8, p2

    add-int/2addr v9, v0

    .line 21182
    invoke-virtual {p1, p2, v0, v8, v9}, Landroid/view/View;->layout(IIII)V

    return-void

    .line 22193
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    .line 23156
    sget-object v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onTransact:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {v1}, Lo/RatingCompat$StarStyle$extraCallback;->onPostMessage()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    if-nez v1, :cond_b

    .line 23158
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 22195
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    .line 22196
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    .line 22197
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    .line 22198
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v5, v6

    .line 22195
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 22200
    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->extraCallback:Lo/getVolumeAttributes;

    if-eqz v2, :cond_c

    invoke-static {p0}, Lo/unregisterCallbackListener;->extraCommand(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 22201
    invoke-static {p1}, Lo/unregisterCallbackListener;->extraCommand(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 22204
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->extraCallback:Lo/getVolumeAttributes;

    invoke-virtual {v3}, Lo/getVolumeAttributes;->onPostMessage()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 22205
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->extraCallback:Lo/getVolumeAttributes;

    invoke-virtual {v3}, Lo/getVolumeAttributes;->extraCallback()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 22206
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->extraCallback:Lo/getVolumeAttributes;

    invoke-virtual {v3}, Lo/getVolumeAttributes;->ICustomTabsCallback()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 22207
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->extraCallback:Lo/getVolumeAttributes;

    invoke-virtual {v3}, Lo/getVolumeAttributes;->onNavigationEvent()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 24156
    :cond_c
    sget-object v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onTransact:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {v2}, Lo/RatingCompat$StarStyle$extraCallback;->onPostMessage()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    if-nez v2, :cond_d

    .line 24158
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    :cond_d
    move-object v8, v2

    .line 22211
    iget v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->ICustomTabsCallback:I

    and-int/lit8 v2, v0, 0x7

    if-nez v2, :cond_e

    const v2, 0x800003

    or-int/2addr v0, v2

    :cond_e
    and-int/lit8 v2, v0, 0x70

    if-nez v2, :cond_f

    or-int/lit8 v0, v0, 0x30

    :cond_f
    move v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 22212
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    move-object v5, v1

    move-object v6, v8

    move v7, p2

    .line 22211
    invoke-static/range {v2 .. v7}, Lo/onQueueChanged;->extraCallback(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 22213
    iget p2, v8, Landroid/graphics/Rect;->left:I

    iget v0, v8, Landroid/graphics/Rect;->top:I

    iget v2, v8, Landroid/graphics/Rect;->right:I

    iget v3, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2, v0, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 25164
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 25165
    sget-object p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onTransact:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {p1, v1}, Lo/RatingCompat$StarStyle$extraCallback;->onMessageChannelReady(Ljava/lang/Object;)Z

    .line 26164
    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    .line 26165
    sget-object p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onTransact:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {p1, v8}, Lo/RatingCompat$StarStyle$extraCallback;->onMessageChannelReady(Ljava/lang/Object;)Z

    return-void

    .line 891
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 2

    .line 1964
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_1

    .line 1966
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 1967
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 1972
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    .line 1973
    invoke-virtual {p4, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onNavigationEvent(I)Z

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 10

    .line 1994
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1996
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1997
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 2002
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    .line 2003
    invoke-virtual {v4, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onNavigationEvent(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 50188
    iget-object v4, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onMessageChannelReady:Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;

    if-eqz v4, :cond_0

    move-object v5, p0

    move-object v7, p1

    move v8, p2

    move v9, p3

    .line 2009
    invoke-virtual/range {v4 .. v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;->onNavigationEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result v4

    or-int/2addr v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 1913
    invoke-virtual/range {v0 .. v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onNestedPreScroll(Landroid/view/View;II[II)V

    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 16

    move-object/from16 v8, p0

    .line 1923
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    const/4 v10, 0x0

    const/4 v0, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    const/4 v14, 0x1

    if-ge v11, v9, :cond_4

    .line 1925
    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1926
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_2

    .line 1931
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    move/from16 v15, p5

    .line 1932
    invoke-virtual {v1, v15}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onNavigationEvent(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 50186
    iget-object v1, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onMessageChannelReady:Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;

    if-eqz v1, :cond_3

    .line 1938
    iget-object v6, v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->newSession:[I

    aput v10, v6, v10

    .line 1939
    aput v10, v6, v14

    move-object v0, v1

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p5

    .line 1940
    invoke-virtual/range {v0 .. v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;->onMessageChannelReady(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V

    .line 1942
    iget-object v0, v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->newSession:[I

    if-lez p2, :cond_0

    aget v0, v0, v10

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    :cond_0
    aget v0, v0, v10

    .line 1943
    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_1
    move v12, v0

    .line 1944
    iget-object v0, v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->newSession:[I

    if-lez p3, :cond_1

    aget v0, v0, v14

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2

    :cond_1
    aget v0, v0, v14

    .line 1945
    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_2
    move v13, v0

    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    move/from16 v15, p5

    :cond_3
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1951
    :cond_4
    aput v12, p4, v10

    .line 1952
    aput v13, p4, v14

    if-eqz v0, :cond_5

    .line 1955
    invoke-virtual {v8, v14}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onPostMessage(I)V

    :cond_5
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 1852
    invoke-virtual/range {v0 .. v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onNestedScroll(Landroid/view/View;IIIII)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .locals 8

    .line 1859
    iget-object v7, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ICustomTabsCallback$Stub$Proxy:[I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onNestedScroll(Landroid/view/View;IIIII[I)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I)V
    .locals 17

    move-object/from16 v10, p0

    .line 1868
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    const/4 v12, 0x0

    const/4 v0, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    const/4 v9, 0x1

    if-ge v13, v11, :cond_3

    .line 1874
    invoke-virtual {v10, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1875
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_2

    .line 1880
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    move/from16 v8, p6

    .line 1881
    invoke-virtual {v1, v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onNavigationEvent(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 50185
    iget-object v1, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onMessageChannelReady:Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;

    if-eqz v1, :cond_2

    .line 1888
    iget-object v7, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->newSession:[I

    aput v12, v7, v12

    .line 1889
    aput v12, v7, v9

    move-object v0, v1

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v16, v7

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, v16

    .line 1891
    invoke-virtual/range {v0 .. v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;->ICustomTabsCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII[I)V

    .line 1894
    iget-object v0, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->newSession:[I

    if-lez p4, :cond_0

    aget v0, v0, v12

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    :cond_0
    aget v0, v0, v12

    .line 1895
    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_1
    move v14, v0

    if-lez p5, :cond_1

    .line 1896
    iget-object v0, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->newSession:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2

    :cond_1
    const/4 v1, 0x1

    iget-object v0, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->newSession:[I

    aget v0, v0, v1

    .line 1897
    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_2
    move v15, v0

    const/4 v0, 0x1

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    .line 1903
    aget v2, p7, v12

    add-int/2addr v2, v14

    aput v2, p7, v12

    .line 1904
    aget v2, p7, v1

    add-int/2addr v2, v15

    aput v2, p7, v1

    if-eqz v0, :cond_4

    .line 1907
    invoke-virtual {v10, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onPostMessage(I)V

    :cond_4
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1796
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 1

    .line 1802
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->IPostMessageService:Lo/sendCommand;

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    .line 50168
    iput p3, p1, Lo/sendCommand;->onNavigationEvent:I

    goto :goto_0

    .line 50170
    :cond_0
    iput p3, p1, Lo/sendCommand;->onMessageChannelReady:I

    .line 1803
    :goto_0
    iput-object p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mayLaunchUrl:Landroid/view/View;

    .line 1805
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_1
    if-ge p2, p1, :cond_1

    .line 1807
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 1808
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    .line 1809
    invoke-virtual {p3, p4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onNavigationEvent(I)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method final onPostMessage(I)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1307
    invoke-static/range {p0 .. p0}, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub(Landroid/view/View;)I

    move-result v8

    .line 1308
    iget-object v2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ICustomTabsCallback$Stub:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    .line 30156
    sget-object v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onTransact:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {v2}, Lo/RatingCompat$StarStyle$extraCallback;->onPostMessage()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    if-nez v2, :cond_0

    .line 30158
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    move-object v10, v2

    .line 31156
    sget-object v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onTransact:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {v2}, Lo/RatingCompat$StarStyle$extraCallback;->onPostMessage()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    if-nez v2, :cond_1

    .line 31158
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    :cond_1
    move-object v11, v2

    .line 32156
    sget-object v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onTransact:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {v2}, Lo/RatingCompat$StarStyle$extraCallback;->onPostMessage()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    if-nez v2, :cond_2

    .line 32158
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    :cond_2
    move-object v12, v2

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v9, :cond_28

    .line 1314
    iget-object v2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ICustomTabsCallback$Stub:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/view/View;

    .line 1315
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    if-nez v1, :cond_5

    .line 1316
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_3

    goto :goto_2

    :cond_3
    move v3, v9

    move/from16 v21, v14

    :cond_4
    :goto_1
    const/4 v7, 0x0

    goto/16 :goto_11

    :cond_5
    :goto_2
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v14, :cond_f

    .line 1323
    iget-object v2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ICustomTabsCallback$Stub:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1325
    iget-object v3, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->newSession:Landroid/view/View;

    if-ne v3, v2, :cond_e

    .line 32653
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    .line 32654
    iget-object v2, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->getInterfaceDescriptor:Landroid/view/View;

    if-eqz v2, :cond_e

    .line 33156
    sget-object v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onTransact:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {v2}, Lo/RatingCompat$StarStyle$extraCallback;->onPostMessage()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    if-nez v2, :cond_6

    .line 33158
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    :cond_6
    move-object v3, v2

    .line 34156
    sget-object v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onTransact:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {v2}, Lo/RatingCompat$StarStyle$extraCallback;->onPostMessage()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    if-nez v2, :cond_7

    .line 34158
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 35156
    :cond_7
    sget-object v16, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onTransact:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface/range {v16 .. v16}, Lo/RatingCompat$StarStyle$extraCallback;->onPostMessage()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/graphics/Rect;

    if-nez v16, :cond_8

    .line 35158
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    :cond_8
    move-object/from16 v17, v16

    .line 32659
    iget-object v5, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->getInterfaceDescriptor:Landroid/view/View;

    .line 35732
    invoke-static {v0, v5, v3}, Lo/getSubtitle;->onNavigationEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 32660
    invoke-direct {v0, v15, v13, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onPostMessage(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 32662
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 32663
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    move/from16 v18, v9

    move-object v9, v2

    move v2, v8

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v4, v17

    move/from16 v16, v5

    move/from16 v21, v14

    const/4 v14, 0x1

    move-object/from16 v5, v20

    move/from16 v22, v6

    move/from16 v6, v16

    move-object/from16 v23, v7

    move v7, v13

    .line 32664
    invoke-static/range {v2 .. v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onPostMessage(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;II)V

    move-object/from16 v2, v17

    .line 32666
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v9, Landroid/graphics/Rect;->left:I

    if-ne v3, v4, :cond_a

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, v9, Landroid/graphics/Rect;->top:I

    if-eq v3, v4, :cond_9

    goto :goto_4

    :cond_9
    move/from16 v4, v16

    move-object/from16 v3, v20

    const/4 v5, 0x0

    goto :goto_5

    :cond_a
    :goto_4
    move/from16 v4, v16

    move-object/from16 v3, v20

    const/4 v5, 0x1

    .line 32668
    :goto_5
    invoke-direct {v0, v3, v2, v4, v13}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onMessageChannelReady(Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;Landroid/graphics/Rect;II)V

    .line 32670
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v6, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v6

    .line 32671
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    if-eqz v4, :cond_b

    .line 32674
    invoke-static {v15, v4}, Lo/unregisterCallbackListener;->asBinder(Landroid/view/View;I)V

    :cond_b
    if-eqz v6, :cond_c

    .line 32677
    invoke-static {v15, v6}, Lo/unregisterCallbackListener;->ICustomTabsCallback(Landroid/view/View;I)V

    :cond_c
    if-eqz v5, :cond_d

    .line 35952
    iget-object v4, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onMessageChannelReady:Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;

    if-eqz v4, :cond_d

    .line 32684
    iget-object v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->getInterfaceDescriptor:Landroid/view/View;

    invoke-virtual {v4, v0, v15, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;->extraCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    .line 36164
    :cond_d
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->setEmpty()V

    .line 36165
    sget-object v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onTransact:Lo/RatingCompat$StarStyle$extraCallback;

    move-object/from16 v4, v19

    invoke-interface {v3, v4}, Lo/RatingCompat$StarStyle$extraCallback;->onMessageChannelReady(Ljava/lang/Object;)Z

    .line 37164
    invoke-virtual {v9}, Landroid/graphics/Rect;->setEmpty()V

    .line 37165
    sget-object v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onTransact:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {v3, v9}, Lo/RatingCompat$StarStyle$extraCallback;->onMessageChannelReady(Ljava/lang/Object;)Z

    .line 38164
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 38165
    sget-object v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onTransact:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {v3, v2}, Lo/RatingCompat$StarStyle$extraCallback;->onMessageChannelReady(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_e
    move/from16 v22, v6

    move-object/from16 v23, v7

    move/from16 v18, v9

    move/from16 v21, v14

    :goto_6
    add-int/lit8 v6, v22, 0x1

    move/from16 v9, v18

    move/from16 v14, v21

    move-object/from16 v7, v23

    const/4 v13, 0x0

    goto/16 :goto_3

    :cond_f
    move-object/from16 v23, v7

    move/from16 v18, v9

    move/from16 v21, v14

    const/4 v14, 0x1

    .line 1331
    invoke-direct {v0, v15, v14, v11}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onPostMessage(Landroid/view/View;ZLandroid/graphics/Rect;)V

    move-object/from16 v2, v23

    .line 1334
    iget v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->ICustomTabsCallback$Stub:I

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/16 v6, 0x50

    const/16 v7, 0x30

    if-eqz v3, :cond_14

    invoke-virtual {v11}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_14

    .line 1335
    iget v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->ICustomTabsCallback$Stub:I

    invoke-static {v3, v8}, Lo/onQueueChanged;->onMessageChannelReady(II)I

    move-result v3

    and-int/lit8 v9, v3, 0x70

    if-eq v9, v7, :cond_11

    if-eq v9, v6, :cond_10

    goto :goto_7

    .line 1342
    :cond_10
    iget v9, v10, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v13

    iget v14, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v14

    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v10, Landroid/graphics/Rect;->bottom:I

    goto :goto_7

    .line 1339
    :cond_11
    iget v9, v10, Landroid/graphics/Rect;->top:I

    iget v13, v11, Landroid/graphics/Rect;->bottom:I

    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v10, Landroid/graphics/Rect;->top:I

    :goto_7
    and-int/lit8 v3, v3, 0x7

    if-eq v3, v5, :cond_13

    if-eq v3, v4, :cond_12

    goto :goto_8

    .line 1350
    :cond_12
    iget v3, v10, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v9

    iget v13, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v13

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v10, Landroid/graphics/Rect;->right:I

    goto :goto_8

    .line 1347
    :cond_13
    iget v3, v10, Landroid/graphics/Rect;->left:I

    iget v9, v11, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v10, Landroid/graphics/Rect;->left:I

    .line 1356
    :cond_14
    :goto_8
    iget v2, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onTransact:I

    if-eqz v2, :cond_21

    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_21

    .line 38413
    invoke-static {v15}, Lo/unregisterCallbackListener;->cancelAll(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 38418
    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v2

    if-lez v2, :cond_21

    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v2

    if-gtz v2, :cond_15

    goto/16 :goto_c

    .line 38423
    :cond_15
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    .line 38952
    iget-object v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onMessageChannelReady:Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;

    .line 39156
    sget-object v9, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onTransact:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {v9}, Lo/RatingCompat$StarStyle$extraCallback;->onPostMessage()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    if-nez v9, :cond_16

    .line 39158
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 40156
    :cond_16
    sget-object v13, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onTransact:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {v13}, Lo/RatingCompat$StarStyle$extraCallback;->onPostMessage()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    if-nez v13, :cond_17

    .line 40158
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 38427
    :cond_17
    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    move-result v14

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v13, v14, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz v3, :cond_19

    .line 38429
    invoke-virtual {v3, v0, v15, v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;->extraCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 38431
    invoke-virtual {v13, v9}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_18

    goto :goto_9

    .line 38432
    :cond_18
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Rect should be within the child\'s bounds. Rect:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38433
    invoke-virtual {v9}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " | Bounds:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38434
    invoke-virtual {v13}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 38437
    :cond_19
    invoke-virtual {v9, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 40164
    :goto_9
    invoke-virtual {v13}, Landroid/graphics/Rect;->setEmpty()V

    .line 40165
    sget-object v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onTransact:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {v3, v13}, Lo/RatingCompat$StarStyle$extraCallback;->onMessageChannelReady(Ljava/lang/Object;)Z

    .line 38443
    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 41164
    invoke-virtual {v9}, Landroid/graphics/Rect;->setEmpty()V

    .line 41165
    sget-object v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onTransact:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {v2, v9}, Lo/RatingCompat$StarStyle$extraCallback;->onMessageChannelReady(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 38449
    :cond_1a
    iget v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onTransact:I

    invoke-static {v3, v8}, Lo/onQueueChanged;->onMessageChannelReady(II)I

    move-result v3

    and-int/lit8 v4, v3, 0x30

    if-ne v4, v7, :cond_1b

    .line 38454
    iget v4, v9, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    iget v5, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->asBinder:I

    sub-int/2addr v4, v5

    .line 38455
    iget v5, v10, Landroid/graphics/Rect;->top:I

    if-ge v4, v5, :cond_1b

    .line 38456
    iget v5, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v4

    invoke-static {v15, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onPostMessage(Landroid/view/View;I)V

    const/4 v5, 0x1

    goto :goto_a

    :cond_1b
    const/4 v5, 0x0

    :goto_a
    and-int/lit8 v4, v3, 0x50

    const/16 v6, 0x50

    if-ne v4, v6, :cond_1c

    .line 38461
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v6, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v6

    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v4, v6

    iget v6, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->asBinder:I

    add-int/2addr v4, v6

    .line 38462
    iget v6, v10, Landroid/graphics/Rect;->bottom:I

    if-ge v4, v6, :cond_1c

    .line 38463
    iget v5, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-static {v15, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onPostMessage(Landroid/view/View;I)V

    const/4 v5, 0x1

    :cond_1c
    if-nez v5, :cond_1d

    const/4 v4, 0x0

    .line 38468
    invoke-static {v15, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onPostMessage(Landroid/view/View;I)V

    :cond_1d
    and-int/lit8 v4, v3, 0x3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1e

    .line 38473
    iget v4, v9, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->asInterface:I

    sub-int/2addr v4, v5

    .line 38474
    iget v5, v10, Landroid/graphics/Rect;->left:I

    if-ge v4, v5, :cond_1e

    .line 38475
    iget v5, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v4

    invoke-static {v15, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->extraCallback(Landroid/view/View;I)V

    const/4 v5, 0x1

    goto :goto_b

    :cond_1e
    const/4 v5, 0x0

    :goto_b
    and-int/lit8 v3, v3, 0x5

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1f

    .line 38480
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v3, v4

    iget v2, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->asInterface:I

    add-int/2addr v3, v2

    .line 38481
    iget v2, v10, Landroid/graphics/Rect;->right:I

    if-ge v3, v2, :cond_1f

    .line 38482
    iget v2, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v2

    invoke-static {v15, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->extraCallback(Landroid/view/View;I)V

    const/4 v5, 0x1

    :cond_1f
    if-nez v5, :cond_20

    const/4 v2, 0x0

    .line 38487
    invoke-static {v15, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->extraCallback(Landroid/view/View;I)V

    .line 42164
    :cond_20
    invoke-virtual {v9}, Landroid/graphics/Rect;->setEmpty()V

    .line 42165
    sget-object v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onTransact:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {v2, v9}, Lo/RatingCompat$StarStyle$extraCallback;->onMessageChannelReady(Ljava/lang/Object;)Z

    :cond_21
    :goto_c
    const/4 v2, 0x2

    if-eq v1, v2, :cond_23

    .line 42965
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    .line 42995
    iget-object v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Rect;

    .line 42966
    invoke-virtual {v12, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1363
    invoke-virtual {v12, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 43953
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    .line 43987
    iget-object v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Rect;

    invoke-virtual {v3, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_d

    :cond_22
    move/from16 v3, v18

    goto/16 :goto_1

    :cond_23
    :goto_d
    add-int/lit8 v14, v21, 0x1

    move/from16 v3, v18

    :goto_e
    if-ge v14, v3, :cond_4

    .line 1371
    iget-object v4, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ICustomTabsCallback$Stub:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1372
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    .line 44952
    iget-object v6, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onMessageChannelReady:Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;

    if-eqz v6, :cond_26

    .line 1375
    invoke-virtual {v6, v4, v15}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;->onNavigationEvent(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_26

    if-nez v1, :cond_24

    .line 45079
    iget-boolean v7, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->warmup:Z

    if-eqz v7, :cond_24

    const/4 v7, 0x0

    .line 45087
    iput-boolean v7, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->warmup:Z

    const/4 v6, 0x1

    goto :goto_10

    :cond_24
    const/4 v7, 0x0

    if-eq v1, v2, :cond_25

    .line 1393
    invoke-virtual {v6, v0, v4, v15}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;->extraCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v4

    goto :goto_f

    :cond_25
    const/4 v4, 0x1

    :goto_f
    const/4 v6, 0x1

    if-ne v1, v6, :cond_27

    .line 46083
    iput-boolean v4, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->warmup:Z

    goto :goto_10

    :cond_26
    const/4 v6, 0x1

    const/4 v7, 0x0

    :cond_27
    :goto_10
    add-int/lit8 v14, v14, 0x1

    goto :goto_e

    :goto_11
    add-int/lit8 v14, v21, 0x1

    move v9, v3

    const/4 v13, 0x0

    goto/16 :goto_0

    .line 46164
    :cond_28
    invoke-virtual {v10}, Landroid/graphics/Rect;->setEmpty()V

    .line 46165
    sget-object v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onTransact:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {v1, v10}, Lo/RatingCompat$StarStyle$extraCallback;->onMessageChannelReady(Ljava/lang/Object;)Z

    .line 47164
    invoke-virtual {v11}, Landroid/graphics/Rect;->setEmpty()V

    .line 47165
    sget-object v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onTransact:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {v1, v11}, Lo/RatingCompat$StarStyle$extraCallback;->onMessageChannelReady(Ljava/lang/Object;)Z

    .line 48164
    invoke-virtual {v12}, Landroid/graphics/Rect;->setEmpty()V

    .line 48165
    sget-object v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onTransact:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {v1, v12}, Lo/RatingCompat$StarStyle$extraCallback;->onMessageChannelReady(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6

    .line 3241
    instance-of v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onRelationshipValidationResult;

    if-nez v0, :cond_0

    .line 3242
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3246
    :cond_0
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onRelationshipValidationResult;

    .line 3247
    invoke-virtual {p1}, Lo/pause;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3249
    iget-object p1, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onRelationshipValidationResult;->onNavigationEvent:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 3251
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 3252
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3253
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    .line 3254
    invoke-static {v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onPostMessage(Landroid/view/View;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    move-result-object v4

    .line 50190
    iget-object v4, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onMessageChannelReady:Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    if-eqz v4, :cond_1

    .line 3258
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    if-eqz v3, :cond_1

    .line 3260
    invoke-virtual {v4, p0, v2, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;->ICustomTabsCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    .line 3269
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onRelationshipValidationResult;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onRelationshipValidationResult;-><init>(Landroid/os/Parcelable;)V

    .line 3271
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 3272
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 3273
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3274
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    .line 3275
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    .line 50191
    iget-object v6, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onMessageChannelReady:Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;

    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    if-eqz v6, :cond_0

    .line 3280
    invoke-virtual {v6, p0, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;->onPostMessage(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3282
    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3286
    :cond_1
    iput-object v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onRelationshipValidationResult;->onNavigationEvent:Landroid/util/SparseArray;

    return-object v0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 1765
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 14

    move/from16 v7, p4

    .line 1773
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v10, v8, :cond_2

    move-object v12, p0

    .line 1775
    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1776
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 1780
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    .line 50166
    iget-object v0, v13, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onMessageChannelReady:Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    .line 1783
    invoke-virtual/range {v0 .. v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;->onNavigationEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z

    move-result v0

    or-int/2addr v11, v0

    .line 1786
    invoke-virtual {v13, v7, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onPostMessage(IZ)V

    goto :goto_1

    .line 1788
    :cond_0
    invoke-virtual {v13, v7, v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onPostMessage(IZ)V

    :cond_1
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    move-object v12, p0

    return v11
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 1823
    invoke-virtual {p0, p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onStopNestedScroll(Landroid/view/View;I)V

    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 6

    .line 1829
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->IPostMessageService:Lo/sendCommand;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v1, :cond_0

    .line 50175
    iput v2, v0, Lo/sendCommand;->onNavigationEvent:I

    goto :goto_0

    .line 50177
    :cond_0
    iput v2, v0, Lo/sendCommand;->onMessageChannelReady:I

    .line 1831
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 1833
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1834
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    .line 1835
    invoke-virtual {v4, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onNavigationEvent(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 50180
    iget-object v5, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onMessageChannelReady:Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;

    if-eqz v5, :cond_1

    .line 1841
    invoke-virtual {v5, p0, v3, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;->onMessageChannelReady(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V

    .line 50181
    :cond_1
    invoke-virtual {v4, p2, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onPostMessage(IZ)V

    .line 50183
    iput-boolean v2, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->warmup:Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 1846
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mayLaunchUrl:Landroid/view/View;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 555
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 557
    iget-object v3, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->updateVisuals:Landroid/view/View;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_0

    invoke-direct {v0, v1, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onPostMessage(Landroid/view/MotionEvent;I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 560
    :goto_0
    iget-object v6, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->updateVisuals:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    .line 5952
    iget-object v6, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onMessageChannelReady:Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;

    if-eqz v6, :cond_1

    .line 563
    iget-object v7, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->updateVisuals:Landroid/view/View;

    invoke-virtual {v6, v0, v7, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;->onNavigationEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 568
    :goto_1
    iget-object v7, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->updateVisuals:Landroid/view/View;

    const/4 v8, 0x0

    if-nez v7, :cond_2

    .line 569
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v6, v1

    goto :goto_2

    :cond_2
    if-eqz v3, :cond_3

    .line 572
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-wide v9, v11

    .line 573
    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 576
    invoke-super {v0, v8}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_3
    :goto_2
    if-eqz v8, :cond_4

    .line 580
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    :cond_4
    if-eq v2, v4, :cond_5

    const/4 v1, 0x3

    if-ne v2, v1, :cond_6

    .line 584
    :cond_5
    invoke-direct {v0, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onMessageChannelReady(Z)V

    :cond_6
    return v6
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1

    .line 3293
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    .line 50192
    iget-object v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onMessageChannelReady:Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;

    if-eqz v0, :cond_0

    .line 3297
    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;->onNavigationEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 3301
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result p1

    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 592
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    if-eqz p1, :cond_0

    .line 593
    iget-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->warmup:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 594
    invoke-direct {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onMessageChannelReady(Z)V

    const/4 p1, 0x1

    .line 595
    iput-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->warmup:Z

    :cond_0
    return-void
.end method

.method public setFitsSystemWindows(Z)V
    .locals 0

    .line 938
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 939
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onNavigationEvent()V

    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0

    .line 259
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onMessageChannelReady:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 302
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->validateRelationship:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_5

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 306
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->validateRelationship:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 308
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 309
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->validateRelationship:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 311
    :cond_2
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->validateRelationship:Landroid/graphics/drawable/Drawable;

    .line 312
    invoke-static {p0}, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub(Landroid/view/View;)I

    move-result v0

    .line 311
    invoke-static {p1, v0}, Lo/MediaMetadataCompat$BitmapKey;->extraCallback(Landroid/graphics/drawable/Drawable;I)Z

    .line 313
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->validateRelationship:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 314
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->validateRelationship:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 316
    :cond_4
    invoke-static {p0}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method public setStatusBarBackgroundColor(I)V
    .locals 1

    .line 380
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setStatusBarBackgroundResource(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 369
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lo/fromParcel;->onPostMessage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 354
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 357
    :goto_0
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->validateRelationship:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eq v1, p1, :cond_1

    .line 358
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->validateRelationship:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 349
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->validateRelationship:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
