.class public Lo/PlaybackStateCompat;
.super Landroid/view/ViewGroup;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/PlaybackStateCompat$asInterface;,
        Lo/PlaybackStateCompat$onMessageChannelReady;,
        Lo/PlaybackStateCompat$onRelationshipValidationResult;,
        Lo/PlaybackStateCompat$ICustomTabsCallback;,
        Lo/PlaybackStateCompat$asBinder;,
        Lo/PlaybackStateCompat$onNavigationEvent;,
        Lo/PlaybackStateCompat$onTransact;,
        Lo/PlaybackStateCompat$ICustomTabsCallback$Stub;,
        Lo/PlaybackStateCompat$onPostMessage;,
        Lo/PlaybackStateCompat$extraCallback;
    }
.end annotation


# static fields
.field static final ICustomTabsCallback:[I

.field private static final asBinder:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lo/PlaybackStateCompat$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final asInterface:Landroid/view/animation/Interpolator;

.field private static final search:Lo/PlaybackStateCompat$asInterface;


# instance fields
.field private AudioAttributesCompatParcelizer:I

.field private AudioAttributesImplApi21Parcelizer:I

.field private AudioAttributesImplBaseParcelizer:Landroid/widget/EdgeEffect;

.field private final ICustomTabsCallback$Stub:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/PlaybackStateCompat$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field private ICustomTabsCallback$Stub$Proxy:Ljava/lang/ClassLoader;

.field private ICustomTabsService:I

.field private ICustomTabsService$Stub:F

.field private ICustomTabsService$Stub$Proxy:Z

.field private INotificationSideChannel:Z

.field private INotificationSideChannel$Default:I

.field private INotificationSideChannel$Stub:F

.field private INotificationSideChannel$Stub$Proxy:F

.field private IPostMessageService:F

.field private IPostMessageService$Stub:Z

.field private IPostMessageService$Stub$Proxy:I

.field private IconCompatParcelizer:Landroid/view/VelocityTracker;

.field private MediaBrowserCompat:Z

.field private RemoteActionCompatParcelizer:I

.field private cancel:I

.field private cancelAll:Z

.field private connect:Landroid/widget/EdgeEffect;

.field private disconnect:I

.field public extraCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/PlaybackStateCompat$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private extraCommand:I

.field private getDefaultImpl:F

.field private getExtras:I

.field private getInterfaceDescriptor:Landroid/widget/Scroller;

.field private getItem:I

.field private getRoot:Lo/PlaybackStateCompat$onPostMessage;

.field private getServiceComponent:Lo/PlaybackStateCompat$onTransact;

.field private getSessionToken:Z

.field private isConnected:I

.field private mayLaunchUrl:Lo/PlaybackStateCompat$onRelationshipValidationResult;

.field private newSession:Z

.field private notify:Z

.field public onMessageChannelReady:I

.field public onNavigationEvent:Lo/toKeyCode;

.field private onPostMessage:I

.field private final onRelationshipValidationResult:Lo/PlaybackStateCompat$extraCallback;

.field private final onTransact:Landroid/graphics/Rect;

.field private postMessage:Landroid/graphics/drawable/Drawable;

.field private read:F

.field private requestPostMessageChannel:I

.field private final sendCustomAction:Ljava/lang/Runnable;

.field private setDefaultImpl:I

.field private subscribe:I

.field private unsubscribe:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private updateVisuals:I

.field private validateRelationship:I

.field private warmup:Landroid/os/Parcelable;

.field private write:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    .line 122
    sput-object v0, Lo/PlaybackStateCompat;->ICustomTabsCallback:[I

    .line 140
    new-instance v0, Lo/PlaybackStateCompat$3;

    invoke-direct {v0}, Lo/PlaybackStateCompat$3;-><init>()V

    sput-object v0, Lo/PlaybackStateCompat;->asBinder:Ljava/util/Comparator;

    .line 147
    new-instance v0, Lo/PlaybackStateCompat$1;

    invoke-direct {v0}, Lo/PlaybackStateCompat$1;-><init>()V

    sput-object v0, Lo/PlaybackStateCompat;->asInterface:Landroid/view/animation/Interpolator;

    .line 251
    new-instance v0, Lo/PlaybackStateCompat$asInterface;

    invoke-direct {v0}, Lo/PlaybackStateCompat$asInterface;-><init>()V

    sput-object v0, Lo/PlaybackStateCompat;->search:Lo/PlaybackStateCompat$asInterface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 391
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 155
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    .line 156
    new-instance p1, Lo/PlaybackStateCompat$extraCallback;

    invoke-direct {p1}, Lo/PlaybackStateCompat$extraCallback;-><init>()V

    iput-object p1, p0, Lo/PlaybackStateCompat;->onRelationshipValidationResult:Lo/PlaybackStateCompat$extraCallback;

    .line 158
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lo/PlaybackStateCompat;->onTransact:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 162
    iput p1, p0, Lo/PlaybackStateCompat;->ICustomTabsService:I

    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lo/PlaybackStateCompat;->warmup:Landroid/os/Parcelable;

    .line 164
    iput-object v0, p0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/ClassLoader;

    const v0, -0x800001

    .line 179
    iput v0, p0, Lo/PlaybackStateCompat;->IPostMessageService:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 180
    iput v0, p0, Lo/PlaybackStateCompat;->ICustomTabsService$Stub:F

    const/4 v0, 0x1

    .line 189
    iput v0, p0, Lo/PlaybackStateCompat;->cancel:I

    .line 207
    iput p1, p0, Lo/PlaybackStateCompat;->write:I

    .line 234
    iput-boolean v0, p0, Lo/PlaybackStateCompat;->MediaBrowserCompat:Z

    .line 269
    new-instance p1, Lo/PlaybackStateCompat$2;

    invoke-direct {p1, p0}, Lo/PlaybackStateCompat$2;-><init>(Lo/PlaybackStateCompat;)V

    iput-object p1, p0, Lo/PlaybackStateCompat;->sendCustomAction:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 277
    iput p1, p0, Lo/PlaybackStateCompat;->subscribe:I

    .line 392
    invoke-direct {p0}, Lo/PlaybackStateCompat;->onPostMessage()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 396
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 155
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    .line 156
    new-instance p1, Lo/PlaybackStateCompat$extraCallback;

    invoke-direct {p1}, Lo/PlaybackStateCompat$extraCallback;-><init>()V

    iput-object p1, p0, Lo/PlaybackStateCompat;->onRelationshipValidationResult:Lo/PlaybackStateCompat$extraCallback;

    .line 158
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lo/PlaybackStateCompat;->onTransact:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 162
    iput p1, p0, Lo/PlaybackStateCompat;->ICustomTabsService:I

    const/4 p2, 0x0

    .line 163
    iput-object p2, p0, Lo/PlaybackStateCompat;->warmup:Landroid/os/Parcelable;

    .line 164
    iput-object p2, p0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/ClassLoader;

    const p2, -0x800001

    .line 179
    iput p2, p0, Lo/PlaybackStateCompat;->IPostMessageService:F

    const p2, 0x7f7fffff    # Float.MAX_VALUE

    .line 180
    iput p2, p0, Lo/PlaybackStateCompat;->ICustomTabsService$Stub:F

    const/4 p2, 0x1

    .line 189
    iput p2, p0, Lo/PlaybackStateCompat;->cancel:I

    .line 207
    iput p1, p0, Lo/PlaybackStateCompat;->write:I

    .line 234
    iput-boolean p2, p0, Lo/PlaybackStateCompat;->MediaBrowserCompat:Z

    .line 269
    new-instance p1, Lo/PlaybackStateCompat$2;

    invoke-direct {p1, p0}, Lo/PlaybackStateCompat$2;-><init>(Lo/PlaybackStateCompat;)V

    iput-object p1, p0, Lo/PlaybackStateCompat;->sendCustomAction:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 277
    iput p1, p0, Lo/PlaybackStateCompat;->subscribe:I

    .line 397
    invoke-direct {p0}, Lo/PlaybackStateCompat;->onPostMessage()V

    return-void
.end method

.method private ICustomTabsCallback(Landroid/view/View;)Lo/PlaybackStateCompat$extraCallback;
    .locals 1

    .line 1523
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_2

    if-eqz v0, :cond_1

    .line 1524
    instance-of p1, v0, Landroid/view/View;

    if-nez p1, :cond_0

    goto :goto_1

    .line 1527
    :cond_0
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return-object p1

    .line 1529
    :cond_2
    invoke-direct {p0, p1}, Lo/PlaybackStateCompat;->onPostMessage(Landroid/view/View;)Lo/PlaybackStateCompat$extraCallback;

    move-result-object p1

    return-object p1
.end method

.method private ICustomTabsCallback()V
    .locals 4

    .line 1282
    iget v0, p0, Lo/PlaybackStateCompat;->getItem:I

    if-eqz v0, :cond_2

    .line 1283
    iget-object v0, p0, Lo/PlaybackStateCompat;->unsubscribe:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/PlaybackStateCompat;->unsubscribe:Ljava/util/ArrayList;

    goto :goto_0

    .line 1286
    :cond_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 1288
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 1290
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1291
    iget-object v3, p0, Lo/PlaybackStateCompat;->unsubscribe:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1293
    :cond_1
    iget-object v0, p0, Lo/PlaybackStateCompat;->unsubscribe:Ljava/util/ArrayList;

    sget-object v1, Lo/PlaybackStateCompat;->search:Lo/PlaybackStateCompat$asInterface;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-void
.end method

.method private ICustomTabsCallback(II)V
    .locals 10

    .line 950
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 12669
    iget-boolean p1, p0, Lo/PlaybackStateCompat;->ICustomTabsService$Stub$Proxy:Z

    if-eqz p1, :cond_0

    .line 12670
    iput-boolean v1, p0, Lo/PlaybackStateCompat;->ICustomTabsService$Stub$Proxy:Z

    :cond_0
    return-void

    .line 957
    :cond_1
    iget-object v0, p0, Lo/PlaybackStateCompat;->getInterfaceDescriptor:Landroid/widget/Scroller;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 963
    iget-boolean v0, p0, Lo/PlaybackStateCompat;->newSession:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/PlaybackStateCompat;->getInterfaceDescriptor:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lo/PlaybackStateCompat;->getInterfaceDescriptor:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartX()I

    move-result v0

    .line 965
    :goto_1
    iget-object v3, p0, Lo/PlaybackStateCompat;->getInterfaceDescriptor:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 13669
    iget-boolean v3, p0, Lo/PlaybackStateCompat;->ICustomTabsService$Stub$Proxy:Z

    if-eqz v3, :cond_5

    .line 13670
    iput-boolean v1, p0, Lo/PlaybackStateCompat;->ICustomTabsService$Stub$Proxy:Z

    goto :goto_2

    .line 968
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    :cond_5
    :goto_2
    move v4, v0

    .line 970
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v5

    sub-int v6, p1, v4

    rsub-int/lit8 v7, v5, 0x0

    if-nez v6, :cond_6

    if-nez v7, :cond_6

    .line 974
    invoke-direct {p0, v1}, Lo/PlaybackStateCompat;->onNavigationEvent(Z)V

    .line 14092
    iget p1, p0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    invoke-virtual {p0, p1}, Lo/PlaybackStateCompat;->onPostMessage(I)V

    .line 976
    invoke-virtual {p0, v1}, Lo/PlaybackStateCompat;->onNavigationEvent(I)V

    return-void

    .line 14669
    :cond_6
    iget-boolean p1, p0, Lo/PlaybackStateCompat;->ICustomTabsService$Stub$Proxy:Z

    if-eq p1, v2, :cond_7

    .line 14670
    iput-boolean v2, p0, Lo/PlaybackStateCompat;->ICustomTabsService$Stub$Proxy:Z

    :cond_7
    const/4 p1, 0x2

    .line 981
    invoke-virtual {p0, p1}, Lo/PlaybackStateCompat;->onNavigationEvent(I)V

    .line 15600
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    .line 984
    div-int/lit8 v0, p1, 0x2

    .line 985
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    int-to-float p1, p1

    div-float/2addr v2, p1

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float v0, v0

    const/high16 v8, 0x3f000000    # 0.5f

    sub-float/2addr v2, v8

    const v8, 0x3ef1463b

    mul-float v2, v2, v8

    float-to-double v8, v2

    .line 15929
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v2, v8

    mul-float v2, v2, v0

    add-float/2addr v0, v2

    .line 990
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lez p2, :cond_8

    const/high16 p1, 0x447a0000    # 1000.0f

    int-to-float p2, p2

    div-float/2addr v0, p2

    .line 992
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float p2, p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_3

    .line 995
    :cond_8
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    iget v0, p0, Lo/PlaybackStateCompat;->requestPostMessageChannel:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    div-float/2addr p2, p1

    add-float/2addr p2, v3

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float p2, p2, p1

    float-to-int p1, p2

    :goto_3
    const/16 p2, 0x258

    .line 998
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1002
    iput-boolean v1, p0, Lo/PlaybackStateCompat;->newSession:Z

    .line 1003
    iget-object v3, p0, Lo/PlaybackStateCompat;->getInterfaceDescriptor:Landroid/widget/Scroller;

    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1004
    invoke-static {p0}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;)V

    return-void
.end method

.method private ICustomTabsCallback(F)Z
    .locals 9

    .line 2312
    iget v0, p0, Lo/PlaybackStateCompat;->getDefaultImpl:F

    sub-float/2addr v0, p1

    .line 2313
    iput p1, p0, Lo/PlaybackStateCompat;->getDefaultImpl:F

    .line 2315
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v0

    .line 29600
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 2319
    iget v1, p0, Lo/PlaybackStateCompat;->IPostMessageService:F

    mul-float v1, v1, v0

    .line 2320
    iget v2, p0, Lo/PlaybackStateCompat;->ICustomTabsService$Stub:F

    mul-float v2, v2, v0

    .line 2324
    iget-object v3, p0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/PlaybackStateCompat$extraCallback;

    .line 2325
    iget-object v5, p0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/PlaybackStateCompat$extraCallback;

    .line 2326
    iget v6, v3, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    if-eqz v6, :cond_0

    .line 2328
    iget v1, v3, Lo/PlaybackStateCompat$extraCallback;->extraCallback:F

    mul-float v1, v1, v0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    .line 2330
    :goto_0
    iget v6, v5, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    iget-object v8, p0, Lo/PlaybackStateCompat;->onNavigationEvent:Lo/toKeyCode;

    invoke-virtual {v8}, Lo/toKeyCode;->extraCallback()I

    move-result v8

    sub-int/2addr v8, v7

    if-eq v6, v8, :cond_1

    .line 2332
    iget v2, v5, Lo/PlaybackStateCompat$extraCallback;->extraCallback:F

    mul-float v2, v2, v0

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    :goto_1
    cmpg-float v6, p1, v1

    if-gez v6, :cond_3

    if-eqz v3, :cond_2

    sub-float p1, v1, p1

    .line 2338
    iget-object v2, p0, Lo/PlaybackStateCompat;->AudioAttributesImplBaseParcelizer:Landroid/widget/EdgeEffect;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v0

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    const/4 v4, 0x1

    :cond_2
    move p1, v1

    goto :goto_2

    :cond_3
    cmpl-float v1, p1, v2

    if-lez v1, :cond_5

    if-eqz v5, :cond_4

    sub-float/2addr p1, v2

    .line 2345
    iget-object v1, p0, Lo/PlaybackStateCompat;->connect:Landroid/widget/EdgeEffect;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    const/4 v4, 0x1

    :cond_4
    move p1, v2

    .line 2351
    :cond_5
    :goto_2
    iget v0, p0, Lo/PlaybackStateCompat;->getDefaultImpl:F

    float-to-int v1, p1

    int-to-float v2, v1

    sub-float/2addr p1, v2

    add-float/2addr v0, p1

    iput v0, p0, Lo/PlaybackStateCompat;->getDefaultImpl:F

    .line 2352
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroid/view/View;->scrollTo(II)V

    .line 2353
    invoke-direct {p0, v1}, Lo/PlaybackStateCompat;->ICustomTabsCallback(I)Z

    return v4
.end method

.method private ICustomTabsCallback(I)Z
    .locals 7

    .line 1818
    iget-object v0, p0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const-string v1, "onPageScrolled did not call superclass implementation"

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 1819
    iget-boolean p1, p0, Lo/PlaybackStateCompat;->MediaBrowserCompat:Z

    if-eqz p1, :cond_0

    return v2

    .line 1824
    :cond_0
    iput-boolean v2, p0, Lo/PlaybackStateCompat;->getSessionToken:Z

    const/4 p1, 0x0

    .line 1825
    invoke-direct {p0, v2, p1, v2}, Lo/PlaybackStateCompat;->onMessageChannelReady(IFI)V

    .line 1826
    iget-boolean p1, p0, Lo/PlaybackStateCompat;->getSessionToken:Z

    if-eqz p1, :cond_1

    return v2

    .line 1827
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1832
    :cond_2
    invoke-direct {p0}, Lo/PlaybackStateCompat;->onNavigationEvent()Lo/PlaybackStateCompat$extraCallback;

    move-result-object v0

    .line 22600
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1834
    iget v4, p0, Lo/PlaybackStateCompat;->requestPostMessageChannel:I

    add-int v5, v3, v4

    int-to-float v4, v4

    int-to-float v3, v3

    div-float/2addr v4, v3

    .line 1836
    iget v6, v0, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    int-to-float p1, p1

    div-float/2addr p1, v3

    .line 1837
    iget v3, v0, Lo/PlaybackStateCompat$extraCallback;->extraCallback:F

    sub-float/2addr p1, v3

    iget v0, v0, Lo/PlaybackStateCompat$extraCallback;->onNavigationEvent:F

    add-float/2addr v0, v4

    div-float/2addr p1, v0

    int-to-float v0, v5

    mul-float v0, v0, p1

    float-to-int v0, v0

    .line 1841
    iput-boolean v2, p0, Lo/PlaybackStateCompat;->getSessionToken:Z

    .line 1842
    invoke-direct {p0, v6, p1, v0}, Lo/PlaybackStateCompat;->onMessageChannelReady(IFI)V

    .line 1843
    iget-boolean p1, p0, Lo/PlaybackStateCompat;->getSessionToken:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    return p1

    .line 1844
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private ICustomTabsCallback$Stub(I)Z
    .locals 6

    .line 2793
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, p0, :cond_0

    :goto_0
    move-object v0, v1

    goto :goto_4

    :cond_0
    if-eqz v0, :cond_4

    .line 2798
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    :goto_1
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    if-ne v4, p0, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    .line 2799
    :cond_1
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_4

    .line 2807
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2808
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2809
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_3
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    const-string v5, " => "

    .line 2811
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2810
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_3

    .line 2813
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2814
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ViewPager"

    .line 2813
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2821
    :cond_4
    :goto_4
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    const/16 v4, 0x42

    const/16 v5, 0x11

    if-eqz v1, :cond_8

    if-eq v1, v0, :cond_8

    if-ne p1, v5, :cond_6

    .line 2827
    iget-object v4, p0, Lo/PlaybackStateCompat;->onTransact:Landroid/graphics/Rect;

    invoke-direct {p0, v4, v1}, Lo/PlaybackStateCompat;->extraCallback(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 2828
    iget-object v5, p0, Lo/PlaybackStateCompat;->onTransact:Landroid/graphics/Rect;

    invoke-direct {p0, v5, v0}, Lo/PlaybackStateCompat;->extraCallback(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_5

    if-lt v4, v5, :cond_5

    .line 32885
    iget v0, p0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    if-lez v0, :cond_c

    sub-int/2addr v0, v3

    .line 32886
    invoke-virtual {p0, v0, v3}, Lo/PlaybackStateCompat;->setCurrentItem(IZ)V

    :goto_5
    const/4 v2, 0x1

    goto :goto_7

    .line 2832
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v2

    goto :goto_7

    :cond_6
    if-ne p1, v4, :cond_c

    .line 2837
    iget-object v2, p0, Lo/PlaybackStateCompat;->onTransact:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v1}, Lo/PlaybackStateCompat;->extraCallback(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 2838
    iget-object v3, p0, Lo/PlaybackStateCompat;->onTransact:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Lo/PlaybackStateCompat;->extraCallback(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_7

    if-le v2, v3, :cond_a

    .line 2842
    :cond_7
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v2

    goto :goto_7

    :cond_8
    if-eq p1, v5, :cond_b

    if-ne p1, v3, :cond_9

    goto :goto_6

    :cond_9
    if-eq p1, v4, :cond_a

    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 2850
    :cond_a
    invoke-direct {p0}, Lo/PlaybackStateCompat;->onRelationshipValidationResult()Z

    move-result v2

    goto :goto_7

    .line 33885
    :cond_b
    :goto_6
    iget v0, p0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    if-lez v0, :cond_c

    sub-int/2addr v0, v3

    .line 33886
    invoke-virtual {p0, v0, v3}, Lo/PlaybackStateCompat;->setCurrentItem(IZ)V

    goto :goto_5

    :cond_c
    :goto_7
    if-eqz v2, :cond_d

    .line 2853
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->playSoundEffect(I)V

    :cond_d
    return v2
.end method

.method private extraCallback(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 2

    if-nez p1, :cond_0

    .line 2860
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 2863
    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-object p1

    .line 2866
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2867
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2868
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2869
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2871
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .line 2872
    :goto_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    if-eq p2, p0, :cond_2

    .line 2873
    check-cast p2, Landroid/view/ViewGroup;

    .line 2874
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2875
    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2876
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2877
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2879
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private extraCallback(I)Lo/PlaybackStateCompat$extraCallback;
    .locals 3

    const/4 v0, 0x0

    .line 1533
    :goto_0
    iget-object v1, p0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1534
    iget-object v1, p0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/PlaybackStateCompat$extraCallback;

    .line 1535
    iget v2, v1, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private extraCallback(II)Lo/PlaybackStateCompat$extraCallback;
    .locals 2

    .line 1008
    new-instance v0, Lo/PlaybackStateCompat$extraCallback;

    invoke-direct {v0}, Lo/PlaybackStateCompat$extraCallback;-><init>()V

    .line 1009
    iput p1, v0, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    .line 1010
    iget-object v1, p0, Lo/PlaybackStateCompat;->onNavigationEvent:Lo/toKeyCode;

    invoke-virtual {v1, p0, p1}, Lo/toKeyCode;->extraCallback(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lo/PlaybackStateCompat$extraCallback;->ICustomTabsCallback:Ljava/lang/Object;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1011
    iput p1, v0, Lo/PlaybackStateCompat$extraCallback;->onNavigationEvent:F

    if-ltz p2, :cond_1

    .line 1012
    iget-object p1, p0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    if-lt p2, p1, :cond_0

    goto :goto_0

    .line 1015
    :cond_0
    iget-object p1, p0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 1013
    :cond_1
    :goto_0
    iget-object p1, p0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :goto_1
    return-object v0
.end method

.method private onMessageChannelReady(I)V
    .locals 3

    .line 1940
    iget-object v0, p0, Lo/PlaybackStateCompat;->getRoot:Lo/PlaybackStateCompat$onPostMessage;

    if-eqz v0, :cond_0

    .line 1941
    invoke-interface {v0, p1}, Lo/PlaybackStateCompat$onPostMessage;->onMessageChannelReady(I)V

    .line 1943
    :cond_0
    iget-object v0, p0, Lo/PlaybackStateCompat;->extraCallback:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 1944
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1945
    iget-object v2, p0, Lo/PlaybackStateCompat;->extraCallback:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/PlaybackStateCompat$onPostMessage;

    if-eqz v2, :cond_1

    .line 1947
    invoke-interface {v2, p1}, Lo/PlaybackStateCompat$onPostMessage;->onMessageChannelReady(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private onMessageChannelReady(IFI)V
    .locals 12

    .line 1865
    iget v0, p0, Lo/PlaybackStateCompat;->isConnected:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_5

    .line 1866
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    .line 1867
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    .line 1868
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .line 1869
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 1870
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_5

    .line 1872
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1873
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lo/PlaybackStateCompat$onMessageChannelReady;

    .line 1874
    iget-boolean v10, v9, Lo/PlaybackStateCompat$onMessageChannelReady;->ICustomTabsCallback:Z

    if-eqz v10, :cond_4

    .line 1876
    iget v9, v9, Lo/PlaybackStateCompat$onMessageChannelReady;->onNavigationEvent:I

    and-int/lit8 v9, v9, 0x7

    if-eq v9, v2, :cond_2

    const/4 v10, 0x3

    if-eq v9, v10, :cond_1

    const/4 v10, 0x5

    if-eq v9, v10, :cond_0

    move v9, v3

    goto :goto_2

    :cond_0
    sub-int v9, v5, v4

    .line 1891
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v9, v10

    .line 1892
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v4, v10

    goto :goto_1

    .line 1884
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v9, v3

    goto :goto_2

    .line 1887
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int v9, v5, v9

    div-int/lit8 v9, v9, 0x2

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    :goto_1
    move v11, v9

    move v9, v3

    move v3, v11

    :goto_2
    add-int/2addr v3, v0

    .line 1897
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int/2addr v3, v10

    if-eqz v3, :cond_3

    .line 1899
    invoke-virtual {v8, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_3
    move v3, v9

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1904
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lo/PlaybackStateCompat;->onPostMessage(IFI)V

    .line 1906
    iget-object p1, p0, Lo/PlaybackStateCompat;->getServiceComponent:Lo/PlaybackStateCompat$onTransact;

    if-eqz p1, :cond_7

    .line 1907
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p1

    .line 1908
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    :goto_3
    if-ge v1, p2, :cond_7

    .line 1910
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 1911
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lo/PlaybackStateCompat$onMessageChannelReady;

    .line 1913
    iget-boolean v0, v0, Lo/PlaybackStateCompat$onMessageChannelReady;->ICustomTabsCallback:Z

    if-nez v0, :cond_6

    .line 1914
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v0, p1

    int-to-float v0, v0

    .line 23600
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 1915
    iget-object v3, p0, Lo/PlaybackStateCompat;->getServiceComponent:Lo/PlaybackStateCompat$onTransact;

    invoke-interface {v3, p3, v0}, Lo/PlaybackStateCompat$onTransact;->extraCallback(Landroid/view/View;F)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1919
    :cond_7
    iput-boolean v2, p0, Lo/PlaybackStateCompat;->getSessionToken:Z

    return-void
.end method

.method private onMessageChannelReady(IZIZ)V
    .locals 5

    .line 676
    invoke-direct {p0, p1}, Lo/PlaybackStateCompat;->extraCallback(I)Lo/PlaybackStateCompat$extraCallback;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 10600
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 680
    iget v3, p0, Lo/PlaybackStateCompat;->IPostMessageService:F

    iget v0, v0, Lo/PlaybackStateCompat$extraCallback;->extraCallback:F

    iget v4, p0, Lo/PlaybackStateCompat;->ICustomTabsService$Stub:F

    .line 681
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 680
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float v2, v2, v0

    float-to-int v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 684
    invoke-direct {p0, v0, p3}, Lo/PlaybackStateCompat;->ICustomTabsCallback(II)V

    if-eqz p4, :cond_3

    .line 686
    invoke-direct {p0, p1}, Lo/PlaybackStateCompat;->onMessageChannelReady(I)V

    return-void

    :cond_1
    if-eqz p4, :cond_2

    .line 690
    invoke-direct {p0, p1}, Lo/PlaybackStateCompat;->onMessageChannelReady(I)V

    .line 692
    :cond_2
    invoke-direct {p0, v1}, Lo/PlaybackStateCompat;->onNavigationEvent(Z)V

    .line 693
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->scrollTo(II)V

    .line 694
    invoke-direct {p0, v0}, Lo/PlaybackStateCompat;->ICustomTabsCallback(I)Z

    :cond_3
    return-void
.end method

.method private onMessageChannelReady(Lo/PlaybackStateCompat$extraCallback;ILo/PlaybackStateCompat$extraCallback;)V
    .locals 8

    .line 1298
    iget-object v0, p0, Lo/PlaybackStateCompat;->onNavigationEvent:Lo/toKeyCode;

    invoke-virtual {v0}, Lo/toKeyCode;->extraCallback()I

    move-result v0

    .line 18600
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    if-lez v1, :cond_0

    .line 1300
    iget v2, p0, Lo/PlaybackStateCompat;->requestPostMessageChannel:I

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p3, :cond_6

    .line 1303
    iget v3, p3, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    .line 1305
    iget v4, p1, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    if-ge v3, v4, :cond_3

    const/4 v4, 0x0

    .line 1308
    iget v5, p3, Lo/PlaybackStateCompat$extraCallback;->extraCallback:F

    iget p3, p3, Lo/PlaybackStateCompat$extraCallback;->onNavigationEvent:F

    add-float/2addr v5, p3

    add-float/2addr v5, v2

    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 1310
    iget p3, p1, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    if-gt v3, p3, :cond_6

    iget-object p3, p0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    move-result p3

    if-ge v4, p3, :cond_6

    .line 1311
    iget-object p3, p0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {p3, v4}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/PlaybackStateCompat$extraCallback;

    .line 1312
    :goto_2
    iget v6, p3, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    if-le v3, v6, :cond_1

    iget-object v6, p0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/AbstractCollection;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    .line 1314
    iget-object p3, p0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {p3, v4}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/PlaybackStateCompat$extraCallback;

    goto :goto_2

    .line 1316
    :cond_1
    :goto_3
    iget v6, p3, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    if-ge v3, v6, :cond_2

    add-float v6, v2, v1

    add-float/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1322
    :cond_2
    iput v5, p3, Lo/PlaybackStateCompat$extraCallback;->extraCallback:F

    .line 1323
    iget p3, p3, Lo/PlaybackStateCompat$extraCallback;->onNavigationEvent:F

    add-float/2addr p3, v2

    add-float/2addr v5, p3

    goto :goto_1

    .line 1325
    :cond_3
    iget v4, p1, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    if-le v3, v4, :cond_6

    .line 1326
    iget-object v4, p0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 1328
    iget p3, p3, Lo/PlaybackStateCompat$extraCallback;->extraCallback:F

    add-int/lit8 v3, v3, -0x1

    .line 1330
    :goto_4
    iget v5, p1, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    if-lt v3, v5, :cond_6

    if-ltz v4, :cond_6

    .line 1331
    iget-object v5, p0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/PlaybackStateCompat$extraCallback;

    .line 1332
    :goto_5
    iget v6, v5, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    if-ge v3, v6, :cond_4

    if-lez v4, :cond_4

    add-int/lit8 v4, v4, -0x1

    .line 1334
    iget-object v5, p0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/PlaybackStateCompat$extraCallback;

    goto :goto_5

    .line 1336
    :cond_4
    :goto_6
    iget v6, v5, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    if-le v3, v6, :cond_5

    add-float v6, v2, v1

    sub-float/2addr p3, v6

    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .line 1342
    :cond_5
    iget v6, v5, Lo/PlaybackStateCompat$extraCallback;->onNavigationEvent:F

    add-float/2addr v6, v2

    sub-float/2addr p3, v6

    .line 1343
    iput p3, v5, Lo/PlaybackStateCompat$extraCallback;->extraCallback:F

    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 1349
    :cond_6
    iget-object p3, p0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    move-result p3

    .line 1350
    iget v3, p1, Lo/PlaybackStateCompat$extraCallback;->extraCallback:F

    .line 1351
    iget v4, p1, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    add-int/lit8 v4, v4, -0x1

    .line 1352
    iget v5, p1, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    if-nez v5, :cond_7

    iget v5, p1, Lo/PlaybackStateCompat$extraCallback;->extraCallback:F

    goto :goto_7

    :cond_7
    const v5, -0x800001

    :goto_7
    iput v5, p0, Lo/PlaybackStateCompat;->IPostMessageService:F

    .line 1353
    iget v5, p1, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    add-int/lit8 v0, v0, -0x1

    if-ne v5, v0, :cond_8

    iget v5, p1, Lo/PlaybackStateCompat$extraCallback;->extraCallback:F

    iget v6, p1, Lo/PlaybackStateCompat$extraCallback;->onNavigationEvent:F

    add-float/2addr v5, v6

    sub-float/2addr v5, v1

    goto :goto_8

    :cond_8
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    :goto_8
    iput v5, p0, Lo/PlaybackStateCompat;->ICustomTabsService$Stub:F

    add-int/lit8 v5, p2, -0x1

    :goto_9
    if-ltz v5, :cond_b

    .line 1357
    iget-object v6, p0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/PlaybackStateCompat$extraCallback;

    .line 1358
    :goto_a
    iget v7, v6, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    if-le v4, v7, :cond_9

    add-int/lit8 v4, v4, -0x1

    add-float v7, v2, v1

    sub-float/2addr v3, v7

    goto :goto_a

    .line 1361
    :cond_9
    iget v7, v6, Lo/PlaybackStateCompat$extraCallback;->onNavigationEvent:F

    add-float/2addr v7, v2

    sub-float/2addr v3, v7

    .line 1362
    iput v3, v6, Lo/PlaybackStateCompat$extraCallback;->extraCallback:F

    .line 1363
    iget v6, v6, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    if-nez v6, :cond_a

    iput v3, p0, Lo/PlaybackStateCompat;->IPostMessageService:F

    :cond_a
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_9

    .line 1365
    :cond_b
    iget v3, p1, Lo/PlaybackStateCompat$extraCallback;->extraCallback:F

    iget v4, p1, Lo/PlaybackStateCompat$extraCallback;->onNavigationEvent:F

    add-float/2addr v3, v4

    add-float/2addr v3, v2

    .line 1366
    iget p1, p1, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    :goto_b
    if-ge p2, p3, :cond_e

    .line 1369
    iget-object v4, p0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/PlaybackStateCompat$extraCallback;

    .line 1370
    :goto_c
    iget v5, v4, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    if-ge p1, v5, :cond_c

    add-int/lit8 p1, p1, 0x1

    add-float v5, v2, v1

    add-float/2addr v3, v5

    goto :goto_c

    .line 1373
    :cond_c
    iget v5, v4, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    if-ne v5, v0, :cond_d

    .line 1374
    iget v5, v4, Lo/PlaybackStateCompat$extraCallback;->onNavigationEvent:F

    add-float/2addr v5, v3

    sub-float/2addr v5, v1

    iput v5, p0, Lo/PlaybackStateCompat;->ICustomTabsService$Stub:F

    .line 1376
    :cond_d
    iput v3, v4, Lo/PlaybackStateCompat$extraCallback;->extraCallback:F

    .line 1377
    iget v4, v4, Lo/PlaybackStateCompat$extraCallback;->onNavigationEvent:F

    add-float/2addr v4, v2

    add-float/2addr v3, v4

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_e
    return-void
.end method

.method private onMessageChannelReady()Z
    .locals 2

    const/4 v0, -0x1

    .line 2294
    iput v0, p0, Lo/PlaybackStateCompat;->write:I

    const/4 v0, 0x0

    .line 28659
    iput-boolean v0, p0, Lo/PlaybackStateCompat;->cancelAll:Z

    .line 28660
    iput-boolean v0, p0, Lo/PlaybackStateCompat;->INotificationSideChannel:Z

    .line 28662
    iget-object v1, p0, Lo/PlaybackStateCompat;->IconCompatParcelizer:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_0

    .line 28663
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v1, 0x0

    .line 28664
    iput-object v1, p0, Lo/PlaybackStateCompat;->IconCompatParcelizer:Landroid/view/VelocityTracker;

    .line 2296
    :cond_0
    iget-object v1, p0, Lo/PlaybackStateCompat;->AudioAttributesImplBaseParcelizer:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2297
    iget-object v1, p0, Lo/PlaybackStateCompat;->connect:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2298
    iget-object v1, p0, Lo/PlaybackStateCompat;->AudioAttributesImplBaseParcelizer:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lo/PlaybackStateCompat;->connect:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private onNavigationEvent()Lo/PlaybackStateCompat$extraCallback;
    .locals 12

    .line 30600
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 2364
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-lez v0, :cond_1

    .line 2365
    iget v3, p0, Lo/PlaybackStateCompat;->requestPostMessageChannel:I

    int-to-float v3, v3

    int-to-float v0, v0

    div-float/2addr v3, v0

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 2372
    :goto_2
    iget-object v10, p0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/AbstractCollection;->size()I

    move-result v10

    if-ge v8, v10, :cond_7

    .line 2373
    iget-object v10, p0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lo/PlaybackStateCompat$extraCallback;

    if-nez v9, :cond_2

    .line 2375
    iget v11, v10, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    add-int/2addr v7, v6

    if-eq v11, v7, :cond_2

    .line 2377
    iget-object v10, p0, Lo/PlaybackStateCompat;->onRelationshipValidationResult:Lo/PlaybackStateCompat$extraCallback;

    add-float/2addr v1, v5

    add-float/2addr v1, v3

    .line 2378
    iput v1, v10, Lo/PlaybackStateCompat$extraCallback;->extraCallback:F

    .line 2379
    iput v7, v10, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2380
    iput v1, v10, Lo/PlaybackStateCompat$extraCallback;->onNavigationEvent:F

    add-int/lit8 v8, v8, -0x1

    .line 2383
    :cond_2
    iget v1, v10, Lo/PlaybackStateCompat$extraCallback;->extraCallback:F

    .line 2386
    iget v5, v10, Lo/PlaybackStateCompat$extraCallback;->onNavigationEvent:F

    add-float/2addr v5, v1

    add-float/2addr v5, v3

    if-nez v9, :cond_4

    cmpl-float v7, v2, v1

    if-ltz v7, :cond_3

    goto :goto_3

    :cond_3
    return-object v0

    :cond_4
    :goto_3
    cmpg-float v0, v2, v5

    if-ltz v0, :cond_6

    .line 2388
    iget-object v0, p0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    sub-int/2addr v0, v6

    if-ne v8, v0, :cond_5

    goto :goto_4

    .line 2395
    :cond_5
    iget v7, v10, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    .line 2397
    iget v5, v10, Lo/PlaybackStateCompat$extraCallback;->onNavigationEvent:F

    add-int/lit8 v8, v8, 0x1

    move-object v0, v10

    const/4 v9, 0x0

    goto :goto_2

    :cond_6
    :goto_4
    return-object v10

    :cond_7
    return-object v0
.end method

.method private onNavigationEvent(IIII)V
    .locals 1

    if-lez p2, :cond_1

    .line 1655
    iget-object v0, p0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1656
    iget-object v0, p0, Lo/PlaybackStateCompat;->getInterfaceDescriptor:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1657
    iget-object p1, p0, Lo/PlaybackStateCompat;->getInterfaceDescriptor:Landroid/widget/Scroller;

    .line 20627
    iget p2, p0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    .line 21600
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p4

    sub-int/2addr p3, p4

    mul-int p2, p2, p3

    .line 1657
    invoke-virtual {p1, p2}, Landroid/widget/Scroller;->setFinalX(I)V

    return-void

    .line 1659
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/2addr p1, p3

    .line 1660
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p3

    sub-int/2addr p2, p3

    add-int/2addr p2, p4

    .line 1662
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p3

    int-to-float p3, p3

    int-to-float p2, p2

    div-float/2addr p3, p2

    int-to-float p1, p1

    mul-float p3, p3, p1

    float-to-int p1, p3

    .line 1666
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    return-void

    .line 1669
    :cond_1
    iget p2, p0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    invoke-direct {p0, p2}, Lo/PlaybackStateCompat;->extraCallback(I)Lo/PlaybackStateCompat$extraCallback;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1670
    iget p2, p2, Lo/PlaybackStateCompat$extraCallback;->extraCallback:F

    iget p3, p0, Lo/PlaybackStateCompat;->ICustomTabsService$Stub:F

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 1672
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    int-to-float p1, p1

    mul-float p2, p2, p1

    float-to-int p1, p2

    .line 1673
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x0

    .line 1674
    invoke-direct {p0, p2}, Lo/PlaybackStateCompat;->onNavigationEvent(Z)V

    .line 1675
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    :cond_3
    return-void
.end method

.method private onNavigationEvent(Z)V
    .locals 7

    .line 1974
    iget v0, p0, Lo/PlaybackStateCompat;->subscribe:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 23669
    iget-boolean v3, p0, Lo/PlaybackStateCompat;->ICustomTabsService$Stub$Proxy:Z

    if-eqz v3, :cond_1

    .line 23670
    iput-boolean v2, p0, Lo/PlaybackStateCompat;->ICustomTabsService$Stub$Proxy:Z

    .line 1978
    :cond_1
    iget-object v3, p0, Lo/PlaybackStateCompat;->getInterfaceDescriptor:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    xor-int/2addr v3, v1

    if-eqz v3, :cond_3

    .line 1980
    iget-object v3, p0, Lo/PlaybackStateCompat;->getInterfaceDescriptor:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1981
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 1982
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 1983
    iget-object v5, p0, Lo/PlaybackStateCompat;->getInterfaceDescriptor:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1984
    iget-object v6, p0, Lo/PlaybackStateCompat;->getInterfaceDescriptor:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    if-ne v3, v5, :cond_2

    if-eq v4, v6, :cond_3

    .line 1986
    :cond_2
    invoke-virtual {p0, v5, v6}, Landroid/view/View;->scrollTo(II)V

    if-eq v5, v3, :cond_3

    .line 1988
    invoke-direct {p0, v5}, Lo/PlaybackStateCompat;->ICustomTabsCallback(I)Z

    .line 1993
    :cond_3
    iput-boolean v2, p0, Lo/PlaybackStateCompat;->notify:Z

    const/4 v3, 0x0

    .line 1994
    :goto_1
    iget-object v4, p0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 1995
    iget-object v4, p0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/PlaybackStateCompat$extraCallback;

    .line 1996
    iget-boolean v5, v4, Lo/PlaybackStateCompat$extraCallback;->onPostMessage:Z

    if-eqz v5, :cond_4

    .line 1998
    iput-boolean v2, v4, Lo/PlaybackStateCompat$extraCallback;->onPostMessage:Z

    const/4 v0, 0x1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_7

    if-eqz p1, :cond_6

    .line 2003
    iget-object p1, p0, Lo/PlaybackStateCompat;->sendCustomAction:Ljava/lang/Runnable;

    invoke-static {p0, p1}, Lo/unregisterCallbackListener;->onPostMessage(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void

    .line 2005
    :cond_6
    iget-object p1, p0, Lo/PlaybackStateCompat;->sendCustomAction:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_7
    return-void
.end method

.method private onNavigationEvent(Landroid/view/View;ZIII)Z
    .locals 12

    move-object v0, p1

    .line 2719
    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2720
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 2721
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 2722
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 2723
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_0
    if-ltz v5, :cond_1

    .line 2728
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v6, p4, v3

    .line 2729
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v6, v8, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v6, v8, :cond_0

    add-int v8, p5, v4

    .line 2730
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v8, v9, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v8, v9, :cond_0

    const/4 v9, 0x1

    .line 2731
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v6, v10

    .line 2732
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v11, v8, v6

    move-object v6, p0

    move v8, v9

    move v9, p3

    .line 2731
    invoke-direct/range {v6 .. v11}, Lo/PlaybackStateCompat;->onNavigationEvent(Landroid/view/View;ZIII)Z

    move-result v6

    if-eqz v6, :cond_0

    return v2

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move v1, p3

    neg-int v1, v1

    .line 2738
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private onPostMessage(Landroid/view/View;)Lo/PlaybackStateCompat$extraCallback;
    .locals 4

    const/4 v0, 0x0

    .line 1512
    :goto_0
    iget-object v1, p0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1513
    iget-object v1, p0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/PlaybackStateCompat$extraCallback;

    .line 1514
    iget-object v2, p0, Lo/PlaybackStateCompat;->onNavigationEvent:Lo/toKeyCode;

    iget-object v3, v1, Lo/PlaybackStateCompat$extraCallback;->ICustomTabsCallback:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lo/toKeyCode;->onMessageChannelReady(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private onPostMessage()V
    .locals 5

    const/4 v0, 0x0

    .line 401
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    const/high16 v0, 0x40000

    .line 402
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    const/4 v0, 0x1

    .line 403
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 404
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 405
    new-instance v2, Landroid/widget/Scroller;

    sget-object v3, Lo/PlaybackStateCompat;->asInterface:Landroid/view/animation/Interpolator;

    invoke-direct {v2, v1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lo/PlaybackStateCompat;->getInterfaceDescriptor:Landroid/widget/Scroller;

    .line 406
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 407
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 409
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v4

    iput v4, p0, Lo/PlaybackStateCompat;->INotificationSideChannel$Default:I

    const/high16 v4, 0x43c80000    # 400.0f

    mul-float v4, v4, v3

    float-to-int v4, v4

    .line 410
    iput v4, p0, Lo/PlaybackStateCompat;->RemoteActionCompatParcelizer:I

    .line 411
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lo/PlaybackStateCompat;->AudioAttributesCompatParcelizer:I

    .line 412
    new-instance v2, Landroid/widget/EdgeEffect;

    invoke-direct {v2, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lo/PlaybackStateCompat;->AudioAttributesImplBaseParcelizer:Landroid/widget/EdgeEffect;

    .line 413
    new-instance v2, Landroid/widget/EdgeEffect;

    invoke-direct {v2, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lo/PlaybackStateCompat;->connect:Landroid/widget/EdgeEffect;

    const/high16 v1, 0x41c80000    # 25.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    .line 415
    iput v1, p0, Lo/PlaybackStateCompat;->AudioAttributesImplApi21Parcelizer:I

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    .line 416
    iput v1, p0, Lo/PlaybackStateCompat;->disconnect:I

    const/high16 v1, 0x41800000    # 16.0f

    mul-float v3, v3, v1

    float-to-int v1, v3

    .line 417
    iput v1, p0, Lo/PlaybackStateCompat;->IPostMessageService$Stub$Proxy:I

    .line 419
    new-instance v1, Lo/PlaybackStateCompat$ICustomTabsCallback;

    invoke-direct {v1, p0}, Lo/PlaybackStateCompat$ICustomTabsCallback;-><init>(Lo/PlaybackStateCompat;)V

    invoke-static {p0, v1}, Lo/unregisterCallbackListener;->onMessageChannelReady(Landroid/view/View;Lo/onSessionDestroyed;)V

    .line 421
    invoke-static {p0}, Lo/unregisterCallbackListener;->asBinder(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    .line 423
    invoke-static {p0, v0}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;I)V

    .line 427
    :cond_0
    new-instance v0, Lo/PlaybackStateCompat$5;

    invoke-direct {v0, p0}, Lo/PlaybackStateCompat$5;-><init>(Lo/PlaybackStateCompat;)V

    invoke-static {p0, v0}, Lo/unregisterCallbackListener;->ICustomTabsCallback(Landroid/view/View;Lo/ArrayCreatingInputMerger$extraCallback;)V

    return-void
.end method

.method private onPostMessage(IFI)V
    .locals 2

    .line 1923
    iget-object p3, p0, Lo/PlaybackStateCompat;->getRoot:Lo/PlaybackStateCompat$onPostMessage;

    if-eqz p3, :cond_0

    .line 1924
    invoke-interface {p3, p1, p2}, Lo/PlaybackStateCompat$onPostMessage;->onMessageChannelReady(IF)V

    .line 1926
    :cond_0
    iget-object p3, p0, Lo/PlaybackStateCompat;->extraCallback:Ljava/util/List;

    if-eqz p3, :cond_2

    const/4 v0, 0x0

    .line 1927
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    :goto_0
    if-ge v0, p3, :cond_2

    .line 1928
    iget-object v1, p0, Lo/PlaybackStateCompat;->extraCallback:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/PlaybackStateCompat$onPostMessage;

    if-eqz v1, :cond_1

    .line 1930
    invoke-interface {v1, p1, p2}, Lo/PlaybackStateCompat$onPostMessage;->onMessageChannelReady(IF)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private onPostMessage(IZZI)V
    .locals 4

    .line 635
    iget-object v0, p0, Lo/PlaybackStateCompat;->onNavigationEvent:Lo/toKeyCode;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lo/toKeyCode;->extraCallback()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_2

    :cond_0
    if-nez p3, :cond_2

    .line 639
    iget p3, p0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    if-ne p3, p1, :cond_2

    iget-object p3, p0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    move-result p3

    if-eqz p3, :cond_2

    .line 9669
    iget-boolean p1, p0, Lo/PlaybackStateCompat;->ICustomTabsService$Stub$Proxy:Z

    if-eqz p1, :cond_1

    .line 9670
    iput-boolean v1, p0, Lo/PlaybackStateCompat;->ICustomTabsService$Stub$Proxy:Z

    :cond_1
    return-void

    :cond_2
    const/4 p3, 0x1

    if-gez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    .line 646
    :cond_3
    iget-object v0, p0, Lo/PlaybackStateCompat;->onNavigationEvent:Lo/toKeyCode;

    invoke-virtual {v0}, Lo/toKeyCode;->extraCallback()I

    move-result v0

    if-lt p1, v0, :cond_4

    .line 647
    iget-object p1, p0, Lo/PlaybackStateCompat;->onNavigationEvent:Lo/toKeyCode;

    invoke-virtual {p1}, Lo/toKeyCode;->extraCallback()I

    move-result p1

    sub-int/2addr p1, p3

    .line 649
    :cond_4
    :goto_0
    iget v0, p0, Lo/PlaybackStateCompat;->cancel:I

    .line 650
    iget v2, p0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    add-int v3, v2, v0

    if-gt p1, v3, :cond_5

    sub-int/2addr v2, v0

    if-ge p1, v2, :cond_6

    :cond_5
    const/4 v0, 0x0

    .line 654
    :goto_1
    iget-object v2, p0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 655
    iget-object v2, p0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/PlaybackStateCompat$extraCallback;

    iput-boolean p3, v2, Lo/PlaybackStateCompat$extraCallback;->onPostMessage:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 658
    :cond_6
    iget v0, p0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    if-eq v0, p1, :cond_7

    const/4 v1, 0x1

    .line 660
    :cond_7
    iget-boolean p3, p0, Lo/PlaybackStateCompat;->MediaBrowserCompat:Z

    if-eqz p3, :cond_9

    .line 663
    iput p1, p0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    if-eqz v1, :cond_8

    .line 665
    invoke-direct {p0, p1}, Lo/PlaybackStateCompat;->onMessageChannelReady(I)V

    .line 667
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    .line 669
    :cond_9
    invoke-virtual {p0, p1}, Lo/PlaybackStateCompat;->onPostMessage(I)V

    .line 670
    invoke-direct {p0, p1, p2, p4, v1}, Lo/PlaybackStateCompat;->onMessageChannelReady(IZIZ)V

    return-void

    .line 8669
    :cond_a
    :goto_2
    iget-boolean p1, p0, Lo/PlaybackStateCompat;->ICustomTabsService$Stub$Proxy:Z

    if-eqz p1, :cond_b

    .line 8670
    iput-boolean v1, p0, Lo/PlaybackStateCompat;->ICustomTabsService$Stub$Proxy:Z

    :cond_b
    return-void
.end method

.method private onPostMessage(Landroid/view/MotionEvent;)V
    .locals 3

    .line 2644
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2645
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 2646
    iget v2, p0, Lo/PlaybackStateCompat;->write:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2650
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lo/PlaybackStateCompat;->getDefaultImpl:F

    .line 2651
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lo/PlaybackStateCompat;->write:I

    .line 2652
    iget-object p1, p0, Lo/PlaybackStateCompat;->IconCompatParcelizer:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    .line 2653
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method private onRelationshipValidationResult()Z
    .locals 3

    .line 2893
    iget-object v0, p0, Lo/PlaybackStateCompat;->onNavigationEvent:Lo/toKeyCode;

    if-eqz v0, :cond_0

    iget v1, p0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    invoke-virtual {v0}, Lo/toKeyCode;->extraCallback()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_0

    .line 2894
    iget v0, p0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Lo/PlaybackStateCompat;->setCurrentItem(IZ)V

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 2905
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    .line 2907
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    .line 2910
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2911
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2912
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 2913
    invoke-direct {p0, v3}, Lo/PlaybackStateCompat;->onPostMessage(Landroid/view/View;)Lo/PlaybackStateCompat$extraCallback;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2914
    iget v4, v4, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    iget v5, p0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    if-ne v4, v5, :cond_0

    .line 2915
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/high16 p2, 0x40000

    if-ne v1, p2, :cond_2

    .line 2926
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p2

    if-ne v0, p2, :cond_5

    .line 2929
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result p2

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/4 p2, 0x1

    and-int/2addr p3, p2

    if-ne p3, p2, :cond_4

    .line 2933
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result p2

    if-nez p2, :cond_4

    return-void

    :cond_4
    if-eqz p1, :cond_5

    .line 2937
    invoke-virtual {p1, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2950
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2951
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2952
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 2953
    invoke-direct {p0, v1}, Lo/PlaybackStateCompat;->onPostMessage(Landroid/view/View;)Lo/PlaybackStateCompat$extraCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2954
    iget v2, v2, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    iget v3, p0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    if-ne v2, v3, :cond_0

    .line 2955
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .line 1472
    invoke-virtual {p0, p3}, Lo/PlaybackStateCompat;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1473
    invoke-virtual {p0, p3}, Lo/PlaybackStateCompat;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 1475
    :cond_0
    move-object v0, p3

    check-cast v0, Lo/PlaybackStateCompat$onMessageChannelReady;

    .line 1477
    iget-boolean v1, v0, Lo/PlaybackStateCompat$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 19498
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 19499
    const-class v3, Lo/PlaybackStateCompat$onNavigationEvent;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    or-int/2addr v1, v2

    .line 1477
    iput-boolean v1, v0, Lo/PlaybackStateCompat$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 1478
    iget-boolean v1, p0, Lo/PlaybackStateCompat;->IPostMessageService$Stub:Z

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    .line 1479
    iget-boolean v1, v0, Lo/PlaybackStateCompat$onMessageChannelReady;->ICustomTabsCallback:Z

    if-nez v1, :cond_2

    goto :goto_1

    .line 1480
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot add pager decor view during layout"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1482
    :cond_3
    :goto_1
    iput-boolean v3, v0, Lo/PlaybackStateCompat$onMessageChannelReady;->onMessageChannelReady:Z

    .line 1483
    invoke-virtual {p0, p1, p2, p3}, Lo/PlaybackStateCompat;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    return-void

    .line 1485
    :cond_4
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public canScrollHorizontally(I)Z
    .locals 4

    .line 2692
    iget-object v0, p0, Lo/PlaybackStateCompat;->onNavigationEvent:Lo/toKeyCode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 31600
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 2697
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    const/4 v3, 0x1

    if-gez p1, :cond_2

    int-to-float p1, v0

    .line 2699
    iget v0, p0, Lo/PlaybackStateCompat;->IPostMessageService:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    if-le v2, p1, :cond_1

    return v3

    :cond_1
    return v1

    :cond_2
    if-lez p1, :cond_3

    int-to-float p1, v0

    .line 2701
    iget v0, p0, Lo/PlaybackStateCompat;->ICustomTabsService$Stub:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    if-ge v2, p1, :cond_3

    return v3

    :cond_3
    return v1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 3029
    instance-of v0, p1, Lo/PlaybackStateCompat$onMessageChannelReady;

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

.method public computeScroll()V
    .locals 4

    const/4 v0, 0x1

    .line 1793
    iput-boolean v0, p0, Lo/PlaybackStateCompat;->newSession:Z

    .line 1794
    iget-object v1, p0, Lo/PlaybackStateCompat;->getInterfaceDescriptor:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lo/PlaybackStateCompat;->getInterfaceDescriptor:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1795
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    .line 1796
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    .line 1797
    iget-object v2, p0, Lo/PlaybackStateCompat;->getInterfaceDescriptor:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1798
    iget-object v3, p0, Lo/PlaybackStateCompat;->getInterfaceDescriptor:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 1801
    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->scrollTo(II)V

    .line 1802
    invoke-direct {p0, v2}, Lo/PlaybackStateCompat;->ICustomTabsCallback(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1803
    iget-object v0, p0, Lo/PlaybackStateCompat;->getInterfaceDescriptor:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v0, 0x0

    .line 1804
    invoke-virtual {p0, v0, v3}, Landroid/view/View;->scrollTo(II)V

    .line 1809
    :cond_1
    invoke-static {p0}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;)V

    return-void

    .line 1814
    :cond_2
    invoke-direct {p0, v0}, Lo/PlaybackStateCompat;->onNavigationEvent(Z)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 2744
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 31757
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_6

    .line 31758
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x15

    const/4 v4, 0x2

    if-eq v0, v3, :cond_4

    const/16 v3, 0x16

    if-eq v0, v3, :cond_2

    const/16 v3, 0x3d

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 31774
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31775
    invoke-direct {p0, v4}, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub(I)Z

    move-result p1

    goto :goto_1

    .line 31776
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 31777
    invoke-direct {p0, v1}, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub(I)Z

    move-result p1

    goto :goto_1

    .line 31767
    :cond_2
    invoke-virtual {p1, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 31768
    invoke-direct {p0}, Lo/PlaybackStateCompat;->onRelationshipValidationResult()Z

    move-result p1

    goto :goto_1

    :cond_3
    const/16 p1, 0x42

    .line 31770
    invoke-direct {p0, p1}, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub(I)Z

    move-result p1

    goto :goto_1

    .line 31760
    :cond_4
    invoke-virtual {p1, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 31885
    iget p1, p0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    if-lez p1, :cond_6

    sub-int/2addr p1, v1

    .line 31886
    invoke-virtual {p0, p1, v1}, Lo/PlaybackStateCompat;->setCurrentItem(IZ)V

    const/4 p1, 0x1

    goto :goto_1

    :cond_5
    const/16 p1, 0x11

    .line 31763
    invoke-direct {p0, p1}, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub(I)Z

    move-result p1

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    return v2

    :cond_8
    :goto_2
    return v1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    .line 2997
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    .line 2998
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    .line 3002
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 3004
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3005
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 3006
    invoke-direct {p0, v3}, Lo/PlaybackStateCompat;->onPostMessage(Landroid/view/View;)Lo/PlaybackStateCompat$extraCallback;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 3007
    iget v4, v4, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    iget v5, p0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    if-ne v4, v5, :cond_1

    .line 3008
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 2426
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2429
    invoke-virtual {p0}, Lo/PlaybackStateCompat;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2430
    iget-object v0, p0, Lo/PlaybackStateCompat;->onNavigationEvent:Lo/toKeyCode;

    if-eqz v0, :cond_0

    .line 2432
    invoke-virtual {v0}, Lo/toKeyCode;->extraCallback()I

    move-result v0

    if-le v0, v2, :cond_0

    goto :goto_0

    .line 2456
    :cond_0
    iget-object p1, p0, Lo/PlaybackStateCompat;->AudioAttributesImplBaseParcelizer:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    .line 2457
    iget-object p1, p0, Lo/PlaybackStateCompat;->connect:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    goto/16 :goto_1

    .line 2433
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/PlaybackStateCompat;->AudioAttributesImplBaseParcelizer:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2434
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2435
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2436
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    const/high16 v4, 0x43870000    # 270.0f

    .line 2438
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v4, v2

    .line 2439
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lo/PlaybackStateCompat;->IPostMessageService:F

    int-to-float v6, v3

    mul-float v5, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2440
    iget-object v4, p0, Lo/PlaybackStateCompat;->AudioAttributesImplBaseParcelizer:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2441
    iget-object v2, p0, Lo/PlaybackStateCompat;->AudioAttributesImplBaseParcelizer:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 2442
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2444
    :cond_2
    iget-object v0, p0, Lo/PlaybackStateCompat;->connect:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2445
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2446
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 2447
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x42b40000    # 90.0f

    .line 2449
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2450
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Lo/PlaybackStateCompat;->ICustomTabsService$Stub:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    neg-float v5, v5

    int-to-float v6, v2

    mul-float v5, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2451
    iget-object v4, p0, Lo/PlaybackStateCompat;->connect:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v3, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2452
    iget-object v2, p0, Lo/PlaybackStateCompat;->connect:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 2453
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 2462
    invoke-static {p0}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 915
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 916
    iget-object v0, p0, Lo/PlaybackStateCompat;->postMessage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 917
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 918
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method final extraCallback()V
    .locals 10

    .line 1023
    iget-object v0, p0, Lo/PlaybackStateCompat;->onNavigationEvent:Lo/toKeyCode;

    invoke-virtual {v0}, Lo/toKeyCode;->extraCallback()I

    move-result v0

    .line 1024
    iput v0, p0, Lo/PlaybackStateCompat;->onPostMessage:I

    .line 1025
    iget-object v1, p0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    iget v2, p0, Lo/PlaybackStateCompat;->cancel:I

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    add-int/2addr v2, v3

    const/4 v4, 0x0

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    .line 1026
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1027
    :goto_0
    iget v2, p0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1030
    :goto_1
    iget-object v7, p0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/AbstractCollection;->size()I

    move-result v7

    if-ge v5, v7, :cond_6

    .line 1031
    iget-object v7, p0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/PlaybackStateCompat$extraCallback;

    .line 1032
    iget-object v8, p0, Lo/PlaybackStateCompat;->onNavigationEvent:Lo/toKeyCode;

    iget-object v9, v7, Lo/PlaybackStateCompat$extraCallback;->ICustomTabsCallback:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Lo/toKeyCode;->ICustomTabsCallback(Ljava/lang/Object;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_5

    const/4 v9, -0x2

    if-ne v8, v9, :cond_3

    .line 1039
    iget-object v1, p0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v5, v5, -0x1

    if-nez v6, :cond_1

    .line 1043
    iget-object v1, p0, Lo/PlaybackStateCompat;->onNavigationEvent:Lo/toKeyCode;

    invoke-virtual {v1, p0}, Lo/toKeyCode;->onNavigationEvent(Landroid/view/ViewGroup;)V

    const/4 v6, 0x1

    .line 1047
    :cond_1
    iget-object v1, p0, Lo/PlaybackStateCompat;->onNavigationEvent:Lo/toKeyCode;

    iget v8, v7, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    iget-object v9, v7, Lo/PlaybackStateCompat$extraCallback;->ICustomTabsCallback:Ljava/lang/Object;

    invoke-virtual {v1, p0, v8, v9}, Lo/toKeyCode;->extraCallback(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1050
    iget v1, p0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    iget v7, v7, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    if-ne v1, v7, :cond_2

    .line 1052
    iget v1, p0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v2, v1

    :cond_2
    :goto_2
    const/4 v1, 0x1

    goto :goto_3

    .line 1058
    :cond_3
    iget v9, v7, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    if-eq v9, v8, :cond_5

    .line 1059
    iget v1, v7, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    iget v9, p0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    if-ne v1, v9, :cond_4

    move v2, v8

    .line 1064
    :cond_4
    iput v8, v7, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    goto :goto_2

    :cond_5
    :goto_3
    add-int/2addr v5, v3

    goto :goto_1

    :cond_6
    if-eqz v6, :cond_7

    .line 1070
    iget-object v0, p0, Lo/PlaybackStateCompat;->onNavigationEvent:Lo/toKeyCode;

    invoke-virtual {v0}, Lo/toKeyCode;->onPostMessage()V

    .line 1073
    :cond_7
    iget-object v0, p0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    sget-object v5, Lo/PlaybackStateCompat;->asBinder:Ljava/util/Comparator;

    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v1, :cond_a

    .line 1077
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_9

    .line 1079
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1080
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lo/PlaybackStateCompat$onMessageChannelReady;

    .line 1081
    iget-boolean v6, v5, Lo/PlaybackStateCompat$onMessageChannelReady;->ICustomTabsCallback:Z

    if-nez v6, :cond_8

    const/4 v6, 0x0

    .line 1082
    iput v6, v5, Lo/PlaybackStateCompat$onMessageChannelReady;->onPostMessage:F

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 16631
    :cond_9
    invoke-direct {p0, v2, v4, v3, v4}, Lo/PlaybackStateCompat;->onPostMessage(IZZI)V

    .line 1087
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_a
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 3019
    new-instance v0, Lo/PlaybackStateCompat$onMessageChannelReady;

    invoke-direct {v0}, Lo/PlaybackStateCompat$onMessageChannelReady;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 3034
    new-instance v0, Lo/PlaybackStateCompat$onMessageChannelReady;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lo/PlaybackStateCompat$onMessageChannelReady;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 3024
    invoke-virtual {p0}, Lo/PlaybackStateCompat;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2

    .line 802
    iget v0, p0, Lo/PlaybackStateCompat;->getItem:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    sub-int p2, p1, p2

    .line 803
    :cond_0
    iget-object p1, p0, Lo/PlaybackStateCompat;->unsubscribe:Ljava/util/ArrayList;

    .line 804
    invoke-virtual {p1, p2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lo/PlaybackStateCompat$onMessageChannelReady;

    iget p1, p1, Lo/PlaybackStateCompat$onMessageChannelReady;->onTransact:I

    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1544
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 1545
    iput-boolean v0, p0, Lo/PlaybackStateCompat;->MediaBrowserCompat:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 479
    iget-object v0, p0, Lo/PlaybackStateCompat;->sendCustomAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 481
    iget-object v0, p0, Lo/PlaybackStateCompat;->getInterfaceDescriptor:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    iget-object v0, p0, Lo/PlaybackStateCompat;->getInterfaceDescriptor:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 484
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    .line 2468
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2471
    iget v1, v0, Lo/PlaybackStateCompat;->requestPostMessageChannel:I

    if-lez v1, :cond_3

    iget-object v1, v0, Lo/PlaybackStateCompat;->postMessage:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, v0, Lo/PlaybackStateCompat;->onNavigationEvent:Lo/toKeyCode;

    if-eqz v1, :cond_3

    .line 2472
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    .line 2473
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 2475
    iget v3, v0, Lo/PlaybackStateCompat;->requestPostMessageChannel:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    .line 2477
    iget-object v5, v0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/PlaybackStateCompat$extraCallback;

    .line 2478
    iget v7, v5, Lo/PlaybackStateCompat$extraCallback;->extraCallback:F

    .line 2479
    iget-object v8, v0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/AbstractCollection;->size()I

    move-result v8

    .line 2480
    iget v9, v5, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    .line 2481
    iget-object v10, v0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    add-int/lit8 v11, v8, -0x1

    invoke-virtual {v10, v11}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lo/PlaybackStateCompat$extraCallback;

    iget v10, v10, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    :goto_0
    if-ge v9, v10, :cond_3

    .line 2483
    :goto_1
    iget v11, v5, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    if-le v9, v11, :cond_0

    if-ge v6, v8, :cond_0

    .line 2484
    iget-object v5, v0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/PlaybackStateCompat$extraCallback;

    goto :goto_1

    .line 2488
    :cond_0
    iget v11, v5, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    if-ne v9, v11, :cond_1

    .line 2489
    iget v7, v5, Lo/PlaybackStateCompat$extraCallback;->extraCallback:F

    iget v11, v5, Lo/PlaybackStateCompat$extraCallback;->onNavigationEvent:F

    add-float/2addr v7, v11

    mul-float v7, v7, v4

    .line 2490
    iget v11, v5, Lo/PlaybackStateCompat$extraCallback;->extraCallback:F

    iget v12, v5, Lo/PlaybackStateCompat$extraCallback;->onNavigationEvent:F

    add-float/2addr v11, v12

    add-float/2addr v11, v3

    goto :goto_2

    :cond_1
    const/high16 v11, 0x3f800000    # 1.0f

    add-float v12, v7, v11

    mul-float v12, v12, v4

    add-float/2addr v11, v3

    add-float/2addr v7, v11

    move v11, v7

    move v7, v12

    .line 2497
    :goto_2
    iget v12, v0, Lo/PlaybackStateCompat;->requestPostMessageChannel:I

    int-to-float v12, v12

    add-float/2addr v12, v7

    int-to-float v13, v1

    cmpl-float v12, v12, v13

    if-lez v12, :cond_2

    .line 2498
    iget-object v12, v0, Lo/PlaybackStateCompat;->postMessage:Landroid/graphics/drawable/Drawable;

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v13

    iget v14, v0, Lo/PlaybackStateCompat;->extraCommand:I

    iget v15, v0, Lo/PlaybackStateCompat;->requestPostMessageChannel:I

    int-to-float v15, v15

    add-float/2addr v15, v7

    .line 2499
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    move/from16 v16, v3

    iget v3, v0, Lo/PlaybackStateCompat;->updateVisuals:I

    .line 2498
    invoke-virtual {v12, v13, v14, v15, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2500
    iget-object v3, v0, Lo/PlaybackStateCompat;->postMessage:Landroid/graphics/drawable/Drawable;

    move-object/from16 v12, p1

    invoke-virtual {v3, v12}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_2
    move-object/from16 v12, p1

    move/from16 v16, v3

    :goto_3
    add-int v3, v1, v2

    int-to-float v3, v3

    cmpl-float v3, v7, v3

    if-gtz v3, :cond_3

    add-int/lit8 v9, v9, 0x1

    move v7, v11

    move/from16 v3, v16

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15

    move-object v6, p0

    move-object/from16 v7, p1

    .line 2031
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v8, 0x0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_12

    const/4 v9, 0x1

    if-ne v0, v9, :cond_0

    goto/16 :goto_4

    :cond_0
    if-eqz v0, :cond_2

    .line 2044
    iget-boolean v1, v6, Lo/PlaybackStateCompat;->cancelAll:Z

    if-eqz v1, :cond_1

    return v9

    .line 2048
    :cond_1
    iget-boolean v1, v6, Lo/PlaybackStateCompat;->INotificationSideChannel:Z

    if-eqz v1, :cond_2

    return v8

    :cond_2
    const/4 v1, 0x2

    if-eqz v0, :cond_d

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    goto/16 :goto_3

    .line 2148
    :cond_3
    invoke-direct/range {p0 .. p1}, Lo/PlaybackStateCompat;->onPostMessage(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 2065
    :cond_4
    iget v0, v6, Lo/PlaybackStateCompat;->write:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    .line 2071
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 2072
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    .line 2073
    iget v1, v6, Lo/PlaybackStateCompat;->getDefaultImpl:F

    sub-float v1, v10, v1

    .line 2074
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 2075
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    .line 2076
    iget v0, v6, Lo/PlaybackStateCompat;->read:F

    sub-float v0, v12, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/4 v0, 0x0

    cmpl-float v14, v1, v0

    if-eqz v14, :cond_8

    .line 2079
    iget v2, v6, Lo/PlaybackStateCompat;->getDefaultImpl:F

    .line 24011
    iget v3, v6, Lo/PlaybackStateCompat;->setDefaultImpl:I

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gez v3, :cond_5

    if-gtz v14, :cond_6

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v6, Lo/PlaybackStateCompat;->setDefaultImpl:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    cmpg-float v0, v1, v0

    if-gez v0, :cond_7

    :cond_6
    const/4 v0, 0x1

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_8

    const/4 v2, 0x0

    float-to-int v3, v1

    float-to-int v4, v10

    float-to-int v5, v12

    move-object v0, p0

    move-object v1, p0

    .line 2080
    invoke-direct/range {v0 .. v5}, Lo/PlaybackStateCompat;->onNavigationEvent(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2082
    iput v10, v6, Lo/PlaybackStateCompat;->getDefaultImpl:F

    .line 2083
    iput v12, v6, Lo/PlaybackStateCompat;->INotificationSideChannel$Stub$Proxy:F

    .line 2084
    iput-boolean v9, v6, Lo/PlaybackStateCompat;->INotificationSideChannel:Z

    return v8

    .line 2087
    :cond_8
    iget v0, v6, Lo/PlaybackStateCompat;->INotificationSideChannel$Default:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_b

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v11, v11, v0

    cmpl-float v0, v11, v13

    if-lez v0, :cond_b

    .line 2089
    iput-boolean v9, v6, Lo/PlaybackStateCompat;->cancelAll:Z

    .line 24303
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 24305
    invoke-interface {v0, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2091
    :cond_9
    invoke-virtual {p0, v9}, Lo/PlaybackStateCompat;->onNavigationEvent(I)V

    .line 2092
    iget v0, v6, Lo/PlaybackStateCompat;->INotificationSideChannel$Stub:F

    iget v1, v6, Lo/PlaybackStateCompat;->INotificationSideChannel$Default:I

    int-to-float v1, v1

    if-lez v14, :cond_a

    add-float/2addr v0, v1

    goto :goto_1

    :cond_a
    sub-float/2addr v0, v1

    :goto_1
    iput v0, v6, Lo/PlaybackStateCompat;->getDefaultImpl:F

    .line 2094
    iput v12, v6, Lo/PlaybackStateCompat;->INotificationSideChannel$Stub$Proxy:F

    .line 24669
    iget-boolean v0, v6, Lo/PlaybackStateCompat;->ICustomTabsService$Stub$Proxy:Z

    if-eq v0, v9, :cond_c

    .line 24670
    iput-boolean v9, v6, Lo/PlaybackStateCompat;->ICustomTabsService$Stub$Proxy:Z

    goto :goto_2

    .line 2096
    :cond_b
    iget v0, v6, Lo/PlaybackStateCompat;->INotificationSideChannel$Default:I

    int-to-float v0, v0

    cmpl-float v0, v13, v0

    if-lez v0, :cond_c

    .line 2102
    iput-boolean v9, v6, Lo/PlaybackStateCompat;->INotificationSideChannel:Z

    .line 2104
    :cond_c
    :goto_2
    iget-boolean v0, v6, Lo/PlaybackStateCompat;->cancelAll:Z

    if-eqz v0, :cond_10

    .line 2106
    invoke-direct {p0, v10}, Lo/PlaybackStateCompat;->ICustomTabsCallback(F)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2107
    invoke-static {p0}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;)V

    goto :goto_3

    .line 2118
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, v6, Lo/PlaybackStateCompat;->INotificationSideChannel$Stub:F

    iput v0, v6, Lo/PlaybackStateCompat;->getDefaultImpl:F

    .line 2119
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v6, Lo/PlaybackStateCompat;->read:F

    iput v0, v6, Lo/PlaybackStateCompat;->INotificationSideChannel$Stub$Proxy:F

    .line 2120
    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Lo/PlaybackStateCompat;->write:I

    .line 2121
    iput-boolean v8, v6, Lo/PlaybackStateCompat;->INotificationSideChannel:Z

    .line 2123
    iput-boolean v9, v6, Lo/PlaybackStateCompat;->newSession:Z

    .line 2124
    iget-object v0, v6, Lo/PlaybackStateCompat;->getInterfaceDescriptor:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 2125
    iget v0, v6, Lo/PlaybackStateCompat;->subscribe:I

    if-ne v0, v1, :cond_f

    iget-object v0, v6, Lo/PlaybackStateCompat;->getInterfaceDescriptor:Landroid/widget/Scroller;

    .line 2126
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, v6, Lo/PlaybackStateCompat;->getInterfaceDescriptor:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v6, Lo/PlaybackStateCompat;->disconnect:I

    if-le v0, v1, :cond_f

    .line 2128
    iget-object v0, v6, Lo/PlaybackStateCompat;->getInterfaceDescriptor:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2129
    iput-boolean v8, v6, Lo/PlaybackStateCompat;->notify:Z

    .line 25092
    iget v0, v6, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    invoke-virtual {p0, v0}, Lo/PlaybackStateCompat;->onPostMessage(I)V

    .line 2131
    iput-boolean v9, v6, Lo/PlaybackStateCompat;->cancelAll:Z

    .line 25303
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 25305
    invoke-interface {v0, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2133
    :cond_e
    invoke-virtual {p0, v9}, Lo/PlaybackStateCompat;->onNavigationEvent(I)V

    goto :goto_3

    .line 2135
    :cond_f
    invoke-direct {p0, v8}, Lo/PlaybackStateCompat;->onNavigationEvent(Z)V

    .line 2136
    iput-boolean v8, v6, Lo/PlaybackStateCompat;->cancelAll:Z

    .line 2152
    :cond_10
    :goto_3
    iget-object v0, v6, Lo/PlaybackStateCompat;->IconCompatParcelizer:Landroid/view/VelocityTracker;

    if-nez v0, :cond_11

    .line 2153
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Lo/PlaybackStateCompat;->IconCompatParcelizer:Landroid/view/VelocityTracker;

    .line 2155
    :cond_11
    iget-object v0, v6, Lo/PlaybackStateCompat;->IconCompatParcelizer:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2161
    iget-boolean v0, v6, Lo/PlaybackStateCompat;->cancelAll:Z

    return v0

    .line 2037
    :cond_12
    :goto_4
    invoke-direct {p0}, Lo/PlaybackStateCompat;->onMessageChannelReady()Z

    return v8
.end method

.method protected onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    .line 1682
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    .line 1685
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    .line 1686
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    .line 1687
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    .line 1688
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    .line 1689
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    const/16 v12, 0x8

    if-ge v10, v1, :cond_7

    .line 1696
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1697
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eq v14, v12, :cond_6

    .line 1698
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lo/PlaybackStateCompat$onMessageChannelReady;

    .line 1701
    iget-boolean v14, v12, Lo/PlaybackStateCompat$onMessageChannelReady;->ICustomTabsCallback:Z

    if-eqz v14, :cond_6

    .line 1702
    iget v14, v12, Lo/PlaybackStateCompat$onMessageChannelReady;->onNavigationEvent:I

    and-int/lit8 v14, v14, 0x7

    .line 1703
    iget v12, v12, Lo/PlaybackStateCompat$onMessageChannelReady;->onNavigationEvent:I

    and-int/lit8 v12, v12, 0x70

    const/4 v15, 0x1

    if-eq v14, v15, :cond_2

    const/4 v15, 0x3

    if-eq v14, v15, :cond_1

    const/4 v15, 0x5

    if-eq v14, v15, :cond_0

    move v14, v4

    goto :goto_2

    :cond_0
    sub-int v14, v2, v6

    .line 1717
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int/2addr v14, v15

    .line 1718
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v6, v15

    goto :goto_1

    .line 1710
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v4

    goto :goto_2

    .line 1713
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int v14, v2, v14

    div-int/lit8 v14, v14, 0x2

    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    move-result v14

    :goto_1
    move/from16 v17, v14

    move v14, v4

    move/from16 v4, v17

    :goto_2
    const/16 v15, 0x10

    if-eq v12, v15, :cond_5

    const/16 v15, 0x30

    if-eq v12, v15, :cond_4

    const/16 v15, 0x50

    if-eq v12, v15, :cond_3

    move v12, v5

    goto :goto_4

    :cond_3
    sub-int v12, v3, v7

    .line 1734
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int/2addr v12, v15

    .line 1735
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v7, v15

    goto :goto_3

    .line 1727
    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v5

    goto :goto_4

    .line 1730
    :cond_5
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int v12, v3, v12

    div-int/lit8 v12, v12, 0x2

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v12

    :goto_3
    move/from16 v17, v12

    move v12, v5

    move/from16 v5, v17

    :goto_4
    add-int/2addr v4, v8

    .line 1740
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v4

    .line 1741
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v9, v5, v16

    .line 1739
    invoke-virtual {v13, v4, v5, v15, v9}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v11, v11, 0x1

    move v5, v12

    move v4, v14

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_7
    sub-int/2addr v2, v4

    sub-int/2addr v2, v6

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v1, :cond_a

    .line 1750
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1751
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eq v9, v12, :cond_9

    .line 1752
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lo/PlaybackStateCompat$onMessageChannelReady;

    .line 1754
    iget-boolean v10, v9, Lo/PlaybackStateCompat$onMessageChannelReady;->ICustomTabsCallback:Z

    if-nez v10, :cond_9

    invoke-direct {v0, v8}, Lo/PlaybackStateCompat;->onPostMessage(Landroid/view/View;)Lo/PlaybackStateCompat$extraCallback;

    move-result-object v10

    if-eqz v10, :cond_9

    int-to-float v13, v2

    .line 1755
    iget v10, v10, Lo/PlaybackStateCompat$extraCallback;->extraCallback:F

    mul-float v10, v10, v13

    float-to-int v10, v10

    add-int/2addr v10, v4

    .line 1758
    iget-boolean v14, v9, Lo/PlaybackStateCompat$onMessageChannelReady;->onMessageChannelReady:Z

    if-eqz v14, :cond_8

    const/4 v14, 0x0

    .line 1761
    iput-boolean v14, v9, Lo/PlaybackStateCompat$onMessageChannelReady;->onMessageChannelReady:Z

    .line 1762
    iget v9, v9, Lo/PlaybackStateCompat$onMessageChannelReady;->onPostMessage:F

    mul-float v13, v13, v9

    float-to-int v9, v13

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v9, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    sub-int v14, v3, v5

    sub-int/2addr v14, v7

    .line 1765
    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 1768
    invoke-virtual {v8, v9, v13}, Landroid/view/View;->measure(II)V

    .line 1776
    :cond_8
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v10

    .line 1777
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v5

    .line 1775
    invoke-virtual {v8, v10, v5, v9, v13}, Landroid/view/View;->layout(IIII)V

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 1781
    :cond_a
    iput v5, v0, Lo/PlaybackStateCompat;->extraCommand:I

    sub-int/2addr v3, v7

    .line 1782
    iput v3, v0, Lo/PlaybackStateCompat;->updateVisuals:I

    .line 1783
    iput v11, v0, Lo/PlaybackStateCompat;->isConnected:I

    .line 1785
    iget-boolean v1, v0, Lo/PlaybackStateCompat;->MediaBrowserCompat:Z

    if-eqz v1, :cond_b

    .line 1786
    iget v1, v0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lo/PlaybackStateCompat;->onMessageChannelReady(IZIZ)V

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    .line 1788
    :goto_6
    iput-boolean v2, v0, Lo/PlaybackStateCompat;->MediaBrowserCompat:Z

    return-void
.end method

.method public onMeasure(II)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move/from16 v2, p1

    .line 1555
    invoke-static {v1, v2}, Lo/PlaybackStateCompat;->getDefaultSize(II)I

    move-result v2

    move/from16 v3, p2

    .line 1556
    invoke-static {v1, v3}, Lo/PlaybackStateCompat;->getDefaultSize(II)I

    move-result v3

    .line 1555
    invoke-virtual {v0, v2, v3}, Lo/PlaybackStateCompat;->setMeasuredDimension(II)V

    .line 1558
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1559
    div-int/lit8 v3, v2, 0xa

    .line 1560
    iget v4, v0, Lo/PlaybackStateCompat;->IPostMessageService$Stub$Proxy:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Lo/PlaybackStateCompat;->setDefaultImpl:I

    .line 1563
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1564
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1571
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0x8

    const/4 v7, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    if-ge v5, v4, :cond_c

    .line 1573
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1574
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eq v10, v6, :cond_b

    .line 1575
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lo/PlaybackStateCompat$onMessageChannelReady;

    if-eqz v6, :cond_b

    .line 1576
    iget-boolean v10, v6, Lo/PlaybackStateCompat$onMessageChannelReady;->ICustomTabsCallback:Z

    if-eqz v10, :cond_b

    .line 1577
    iget v10, v6, Lo/PlaybackStateCompat$onMessageChannelReady;->onNavigationEvent:I

    and-int/lit8 v10, v10, 0x7

    .line 1578
    iget v11, v6, Lo/PlaybackStateCompat$onMessageChannelReady;->onNavigationEvent:I

    and-int/lit8 v11, v11, 0x70

    const/16 v12, 0x30

    if-eq v11, v12, :cond_1

    const/16 v12, 0x50

    if-ne v11, v12, :cond_0

    goto :goto_1

    :cond_0
    const/4 v11, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v11, 0x1

    :goto_2
    const/4 v12, 0x3

    if-eq v10, v12, :cond_3

    const/4 v12, 0x5

    if-ne v10, v12, :cond_2

    goto :goto_3

    :cond_2
    const/4 v7, 0x0

    :cond_3
    :goto_3
    const/high16 v10, -0x80000000

    if-eqz v11, :cond_4

    const/high16 v10, 0x40000000    # 2.0f

    goto :goto_4

    :cond_4
    if-eqz v7, :cond_5

    const/high16 v12, 0x40000000    # 2.0f

    goto :goto_5

    :cond_5
    :goto_4
    const/high16 v12, -0x80000000

    .line 1592
    :goto_5
    iget v13, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v14, -0x1

    const/4 v15, -0x2

    if-eq v13, v15, :cond_7

    .line 1594
    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v10, v14, :cond_6

    .line 1595
    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    move v13, v10

    goto :goto_6

    :cond_6
    move v13, v2

    :goto_6
    const/high16 v10, 0x40000000    # 2.0f

    goto :goto_7

    :cond_7
    move v13, v2

    .line 1598
    :goto_7
    iget v1, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v1, v15, :cond_9

    .line 1600
    iget v1, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v1, v14, :cond_8

    .line 1601
    iget v1, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_8

    :cond_8
    move v1, v3

    goto :goto_8

    :cond_9
    move v1, v3

    move v8, v12

    .line 1604
    :goto_8
    invoke-static {v13, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1605
    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1606
    invoke-virtual {v9, v6, v1}, Landroid/view/View;->measure(II)V

    if-eqz v11, :cond_a

    .line 1609
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v3, v1

    goto :goto_9

    :cond_a
    if-eqz v7, :cond_b

    .line 1611
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v2, v1

    :cond_b
    :goto_9
    add-int/lit8 v5, v5, 0x1

    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1617
    :cond_c
    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 1618
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, v0, Lo/PlaybackStateCompat;->validateRelationship:I

    .line 1621
    iput-boolean v7, v0, Lo/PlaybackStateCompat;->IPostMessageService$Stub:Z

    .line 20092
    iget v1, v0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    invoke-virtual {v0, v1}, Lo/PlaybackStateCompat;->onPostMessage(I)V

    const/4 v1, 0x0

    .line 1623
    iput-boolean v1, v0, Lo/PlaybackStateCompat;->IPostMessageService$Stub:Z

    .line 1626
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    :goto_a
    if-ge v1, v3, :cond_f

    .line 1628
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1629
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v6, :cond_e

    .line 1634
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lo/PlaybackStateCompat$onMessageChannelReady;

    if-eqz v5, :cond_d

    .line 1635
    iget-boolean v7, v5, Lo/PlaybackStateCompat$onMessageChannelReady;->ICustomTabsCallback:Z

    if-nez v7, :cond_e

    :cond_d
    int-to-float v7, v2

    .line 1636
    iget v5, v5, Lo/PlaybackStateCompat$onMessageChannelReady;->onPostMessage:F

    mul-float v7, v7, v5

    float-to-int v5, v7

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1638
    iget v7, v0, Lo/PlaybackStateCompat;->validateRelationship:I

    invoke-virtual {v4, v5, v7}, Landroid/view/View;->measure(II)V

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_f
    return-void
.end method

.method final onNavigationEvent(I)V
    .locals 7

    .line 488
    iget v0, p0, Lo/PlaybackStateCompat;->subscribe:I

    if-ne v0, p1, :cond_0

    return-void

    .line 492
    :cond_0
    iput p1, p0, Lo/PlaybackStateCompat;->subscribe:I

    .line 493
    iget-object v0, p0, Lo/PlaybackStateCompat;->getServiceComponent:Lo/PlaybackStateCompat$onTransact;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4015
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    if-eqz v0, :cond_2

    .line 4017
    iget v4, p0, Lo/PlaybackStateCompat;->getExtras:I

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 4019
    :goto_2
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4957
    :cond_3
    iget-object v0, p0, Lo/PlaybackStateCompat;->getRoot:Lo/PlaybackStateCompat$onPostMessage;

    if-eqz v0, :cond_4

    .line 4958
    invoke-interface {v0, p1}, Lo/PlaybackStateCompat$onPostMessage;->extraCallback(I)V

    .line 4960
    :cond_4
    iget-object v0, p0, Lo/PlaybackStateCompat;->extraCallback:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 4961
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_3
    if-ge v1, v0, :cond_6

    .line 4962
    iget-object v2, p0, Lo/PlaybackStateCompat;->extraCallback:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/PlaybackStateCompat$onPostMessage;

    if-eqz v2, :cond_5

    .line 4964
    invoke-interface {v2, p1}, Lo/PlaybackStateCompat$onPostMessage;->extraCallback(I)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method final onPostMessage(I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1097
    iget v2, v0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    if-eq v2, v1, :cond_0

    .line 1098
    invoke-direct {v0, v2}, Lo/PlaybackStateCompat;->extraCallback(I)Lo/PlaybackStateCompat$extraCallback;

    move-result-object v2

    .line 1099
    iput v1, v0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1102
    :goto_0
    iget-object v1, v0, Lo/PlaybackStateCompat;->onNavigationEvent:Lo/toKeyCode;

    if-nez v1, :cond_1

    .line 1103
    invoke-direct/range {p0 .. p0}, Lo/PlaybackStateCompat;->ICustomTabsCallback()V

    return-void

    .line 1111
    :cond_1
    iget-boolean v1, v0, Lo/PlaybackStateCompat;->notify:Z

    if-eqz v1, :cond_2

    .line 1113
    invoke-direct/range {p0 .. p0}, Lo/PlaybackStateCompat;->ICustomTabsCallback()V

    return-void

    .line 1120
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    .line 1124
    :cond_3
    iget-object v1, v0, Lo/PlaybackStateCompat;->onNavigationEvent:Lo/toKeyCode;

    invoke-virtual {v1, v0}, Lo/toKeyCode;->onNavigationEvent(Landroid/view/ViewGroup;)V

    .line 1126
    iget v1, v0, Lo/PlaybackStateCompat;->cancel:I

    .line 1127
    iget v4, v0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    sub-int/2addr v4, v1

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1128
    iget-object v6, v0, Lo/PlaybackStateCompat;->onNavigationEvent:Lo/toKeyCode;

    invoke-virtual {v6}, Lo/toKeyCode;->extraCallback()I

    move-result v6

    add-int/lit8 v7, v6, -0x1

    .line 1129
    iget v8, v0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    add-int/2addr v8, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1131
    iget v7, v0, Lo/PlaybackStateCompat;->onPostMessage:I

    if-ne v6, v7, :cond_1c

    const/4 v7, 0x0

    .line 1149
    :goto_1
    iget-object v8, v0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/AbstractCollection;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 1150
    iget-object v8, v0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo/PlaybackStateCompat$extraCallback;

    .line 1151
    iget v9, v8, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    iget v10, v0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    if-lt v9, v10, :cond_4

    .line 1152
    iget v9, v8, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    iget v10, v0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    if-ne v9, v10, :cond_5

    goto :goto_2

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    :goto_2
    if-nez v8, :cond_6

    if-lez v6, :cond_6

    .line 1158
    iget v8, v0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    invoke-direct {v0, v8, v7}, Lo/PlaybackStateCompat;->extraCallback(II)Lo/PlaybackStateCompat$extraCallback;

    move-result-object v8

    :cond_6
    const/4 v9, 0x0

    if-eqz v8, :cond_15

    add-int/lit8 v10, v7, -0x1

    if-ltz v10, :cond_7

    .line 1167
    iget-object v11, v0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo/PlaybackStateCompat$extraCallback;

    goto :goto_3

    :cond_7
    const/4 v11, 0x0

    .line 17600
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v13

    sub-int/2addr v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    if-gtz v12, :cond_8

    const/4 v14, 0x0

    goto :goto_4

    .line 1169
    :cond_8
    iget v14, v8, Lo/PlaybackStateCompat$extraCallback;->onNavigationEvent:F

    sub-float v14, v13, v14

    .line 1170
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v15

    int-to-float v15, v15

    int-to-float v3, v12

    div-float/2addr v15, v3

    add-float/2addr v14, v15

    .line 1171
    :goto_4
    iget v3, v0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    add-int/lit8 v3, v3, -0x1

    const/4 v15, 0x0

    :goto_5
    if-ltz v3, :cond_d

    cmpl-float v16, v15, v14

    if-ltz v16, :cond_9

    if-ge v3, v4, :cond_9

    if-eqz v11, :cond_d

    .line 1176
    iget v5, v11, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    if-ne v3, v5, :cond_c

    iget-boolean v5, v11, Lo/PlaybackStateCompat$extraCallback;->onPostMessage:Z

    if-nez v5, :cond_c

    .line 1177
    iget-object v5, v0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    .line 1178
    iget-object v5, v0, Lo/PlaybackStateCompat;->onNavigationEvent:Lo/toKeyCode;

    iget-object v11, v11, Lo/PlaybackStateCompat$extraCallback;->ICustomTabsCallback:Ljava/lang/Object;

    invoke-virtual {v5, v0, v3, v11}, Lo/toKeyCode;->extraCallback(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v7, v7, -0x1

    if-ltz v10, :cond_b

    .line 1185
    iget-object v5, v0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/PlaybackStateCompat$extraCallback;

    goto :goto_6

    :cond_9
    if-eqz v11, :cond_a

    .line 1187
    iget v5, v11, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    if-ne v3, v5, :cond_a

    .line 1188
    iget v5, v11, Lo/PlaybackStateCompat$extraCallback;->onNavigationEvent:F

    add-float/2addr v15, v5

    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_b

    .line 1190
    iget-object v5, v0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/PlaybackStateCompat$extraCallback;

    goto :goto_6

    :cond_a
    add-int/lit8 v5, v10, 0x1

    .line 1192
    invoke-direct {v0, v3, v5}, Lo/PlaybackStateCompat;->extraCallback(II)Lo/PlaybackStateCompat$extraCallback;

    move-result-object v5

    .line 1193
    iget v5, v5, Lo/PlaybackStateCompat$extraCallback;->onNavigationEvent:F

    add-float/2addr v15, v5

    add-int/lit8 v7, v7, 0x1

    if-ltz v10, :cond_b

    .line 1195
    iget-object v5, v0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/PlaybackStateCompat$extraCallback;

    goto :goto_6

    :cond_b
    const/4 v5, 0x0

    :goto_6
    move-object v11, v5

    :cond_c
    add-int/lit8 v3, v3, -0x1

    const/4 v5, 0x0

    goto :goto_5

    .line 1199
    :cond_d
    iget v3, v8, Lo/PlaybackStateCompat$extraCallback;->onNavigationEvent:F

    add-int/lit8 v4, v7, 0x1

    cmpg-float v5, v3, v13

    if-gez v5, :cond_14

    .line 1202
    iget-object v5, v0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->size()I

    move-result v5

    if-ge v4, v5, :cond_e

    iget-object v5, v0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/PlaybackStateCompat$extraCallback;

    goto :goto_7

    :cond_e
    const/4 v5, 0x0

    :goto_7
    if-gtz v12, :cond_f

    const/4 v10, 0x0

    goto :goto_8

    .line 1204
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, v12

    div-float/2addr v10, v11

    add-float/2addr v10, v13

    .line 1205
    :goto_8
    iget v11, v0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    :goto_9
    add-int/lit8 v11, v11, 0x1

    if-ge v11, v6, :cond_14

    cmpl-float v12, v3, v10

    if-ltz v12, :cond_11

    if-le v11, v1, :cond_11

    if-eqz v5, :cond_14

    .line 1210
    iget v12, v5, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    if-ne v11, v12, :cond_13

    iget-boolean v12, v5, Lo/PlaybackStateCompat$extraCallback;->onPostMessage:Z

    if-nez v12, :cond_13

    .line 1211
    iget-object v12, v0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    .line 1212
    iget-object v12, v0, Lo/PlaybackStateCompat;->onNavigationEvent:Lo/toKeyCode;

    iget-object v5, v5, Lo/PlaybackStateCompat$extraCallback;->ICustomTabsCallback:Ljava/lang/Object;

    invoke-virtual {v12, v0, v11, v5}, Lo/toKeyCode;->extraCallback(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1217
    iget-object v5, v0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->size()I

    move-result v5

    if-ge v4, v5, :cond_10

    iget-object v5, v0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/PlaybackStateCompat$extraCallback;

    goto :goto_a

    :cond_10
    const/4 v5, 0x0

    goto :goto_a

    :cond_11
    if-eqz v5, :cond_12

    .line 1219
    iget v12, v5, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    if-ne v11, v12, :cond_12

    .line 1220
    iget v5, v5, Lo/PlaybackStateCompat$extraCallback;->onNavigationEvent:F

    add-float/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    .line 1222
    iget-object v5, v0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->size()I

    move-result v5

    if-ge v4, v5, :cond_10

    iget-object v5, v0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/PlaybackStateCompat$extraCallback;

    goto :goto_a

    .line 1224
    :cond_12
    invoke-direct {v0, v11, v4}, Lo/PlaybackStateCompat;->extraCallback(II)Lo/PlaybackStateCompat$extraCallback;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    .line 1226
    iget v5, v5, Lo/PlaybackStateCompat$extraCallback;->onNavigationEvent:F

    add-float/2addr v3, v5

    .line 1227
    iget-object v5, v0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->size()I

    move-result v5

    if-ge v4, v5, :cond_10

    iget-object v5, v0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/PlaybackStateCompat$extraCallback;

    :cond_13
    :goto_a
    goto :goto_9

    .line 1232
    :cond_14
    invoke-direct {v0, v8, v7, v2}, Lo/PlaybackStateCompat;->onMessageChannelReady(Lo/PlaybackStateCompat$extraCallback;ILo/PlaybackStateCompat$extraCallback;)V

    .line 1234
    iget-object v1, v0, Lo/PlaybackStateCompat;->onNavigationEvent:Lo/toKeyCode;

    iget-object v2, v8, Lo/PlaybackStateCompat$extraCallback;->ICustomTabsCallback:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lo/toKeyCode;->onPostMessage(Ljava/lang/Object;)V

    .line 1244
    :cond_15
    iget-object v1, v0, Lo/PlaybackStateCompat;->onNavigationEvent:Lo/toKeyCode;

    invoke-virtual {v1}, Lo/toKeyCode;->onPostMessage()V

    .line 1248
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_17

    .line 1250
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1251
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lo/PlaybackStateCompat$onMessageChannelReady;

    .line 1252
    iput v2, v4, Lo/PlaybackStateCompat$onMessageChannelReady;->onTransact:I

    .line 1253
    iget-boolean v5, v4, Lo/PlaybackStateCompat$onMessageChannelReady;->ICustomTabsCallback:Z

    if-nez v5, :cond_16

    iget v5, v4, Lo/PlaybackStateCompat$onMessageChannelReady;->onPostMessage:F

    cmpl-float v5, v5, v9

    if-nez v5, :cond_16

    .line 1255
    invoke-direct {v0, v3}, Lo/PlaybackStateCompat;->onPostMessage(Landroid/view/View;)Lo/PlaybackStateCompat$extraCallback;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 1257
    iget v5, v3, Lo/PlaybackStateCompat$extraCallback;->onNavigationEvent:F

    iput v5, v4, Lo/PlaybackStateCompat$onMessageChannelReady;->onPostMessage:F

    .line 1258
    iget v3, v3, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    iput v3, v4, Lo/PlaybackStateCompat$onMessageChannelReady;->extraCallback:I

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1262
    :cond_17
    invoke-direct/range {p0 .. p0}, Lo/PlaybackStateCompat;->ICustomTabsCallback()V

    .line 1264
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1265
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 1266
    invoke-direct {v0, v1}, Lo/PlaybackStateCompat;->ICustomTabsCallback(Landroid/view/View;)Lo/PlaybackStateCompat$extraCallback;

    move-result-object v3

    goto :goto_c

    :cond_18
    const/4 v3, 0x0

    :goto_c
    if-eqz v3, :cond_19

    .line 1267
    iget v1, v3, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    iget v2, v0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    if-eq v1, v2, :cond_1b

    :cond_19
    const/4 v5, 0x0

    .line 1268
    :goto_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v5, v1, :cond_1b

    .line 1269
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1270
    invoke-direct {v0, v1}, Lo/PlaybackStateCompat;->onPostMessage(Landroid/view/View;)Lo/PlaybackStateCompat$extraCallback;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 1271
    iget v2, v2, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    iget v3, v0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    if-ne v2, v3, :cond_1a

    const/4 v2, 0x2

    .line 1272
    invoke-virtual {v1, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-nez v1, :cond_1b

    :cond_1a
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_1b
    return-void

    .line 1134
    :cond_1c
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_e

    .line 1136
    :catch_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 1138
    :goto_e
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lo/PlaybackStateCompat;->onPostMessage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Pager id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Pager class: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1142
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Problematic adapter: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lo/PlaybackStateCompat;->onNavigationEvent:Lo/toKeyCode;

    .line 1143
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    .line 2970
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    move v3, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    :goto_0
    if-eq v0, v3, :cond_2

    .line 2981
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2982
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 2983
    invoke-direct {p0, v5}, Lo/PlaybackStateCompat;->onPostMessage(Landroid/view/View;)Lo/PlaybackStateCompat$extraCallback;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 2984
    iget v6, v6, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    iget v7, p0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    if-ne v6, v7, :cond_1

    .line 2985
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v4

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 1452
    instance-of v0, p1, Lo/PlaybackStateCompat$asBinder;

    if-nez v0, :cond_0

    .line 1453
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 1457
    :cond_0
    check-cast p1, Lo/PlaybackStateCompat$asBinder;

    .line 1458
    invoke-virtual {p1}, Lo/pause;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1460
    iget-object v0, p0, Lo/PlaybackStateCompat;->onNavigationEvent:Lo/toKeyCode;

    if-eqz v0, :cond_1

    .line 1461
    iget-object v1, p1, Lo/PlaybackStateCompat$asBinder;->ICustomTabsCallback:Landroid/os/Parcelable;

    iget-object v2, p1, Lo/PlaybackStateCompat$asBinder;->onPostMessage:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Lo/toKeyCode;->onMessageChannelReady(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1462
    iget p1, p1, Lo/PlaybackStateCompat$asBinder;->extraCallback:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 18631
    invoke-direct {p0, p1, v1, v0, v1}, Lo/PlaybackStateCompat;->onPostMessage(IZZI)V

    return-void

    .line 1464
    :cond_1
    iget v0, p1, Lo/PlaybackStateCompat$asBinder;->extraCallback:I

    iput v0, p0, Lo/PlaybackStateCompat;->ICustomTabsService:I

    .line 1465
    iget-object v0, p1, Lo/PlaybackStateCompat$asBinder;->ICustomTabsCallback:Landroid/os/Parcelable;

    iput-object v0, p0, Lo/PlaybackStateCompat;->warmup:Landroid/os/Parcelable;

    .line 1466
    iget-object p1, p1, Lo/PlaybackStateCompat$asBinder;->onPostMessage:Ljava/lang/ClassLoader;

    iput-object p1, p0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/ClassLoader;

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1441
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1442
    new-instance v1, Lo/PlaybackStateCompat$asBinder;

    invoke-direct {v1, v0}, Lo/PlaybackStateCompat$asBinder;-><init>(Landroid/os/Parcelable;)V

    .line 1443
    iget v0, p0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    iput v0, v1, Lo/PlaybackStateCompat$asBinder;->extraCallback:I

    .line 1444
    iget-object v0, p0, Lo/PlaybackStateCompat;->onNavigationEvent:Lo/toKeyCode;

    if-eqz v0, :cond_0

    .line 1445
    invoke-virtual {v0}, Lo/toKeyCode;->ICustomTabsCallback()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Lo/PlaybackStateCompat$asBinder;->ICustomTabsCallback:Landroid/os/Parcelable;

    :cond_0
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1646
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    .line 1650
    iget p2, p0, Lo/PlaybackStateCompat;->requestPostMessageChannel:I

    invoke-direct {p0, p1, p3, p2, p2}, Lo/PlaybackStateCompat;->onNavigationEvent(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 2173
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 2179
    :cond_0
    iget-object v0, p0, Lo/PlaybackStateCompat;->onNavigationEvent:Lo/toKeyCode;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lo/toKeyCode;->extraCallback()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    .line 2184
    :cond_1
    iget-object v0, p0, Lo/PlaybackStateCompat;->IconCompatParcelizer:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2

    .line 2185
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lo/PlaybackStateCompat;->IconCompatParcelizer:Landroid/view/VelocityTracker;

    .line 2187
    :cond_2
    iget-object v0, p0, Lo/PlaybackStateCompat;->IconCompatParcelizer:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    if-eq v0, v2, :cond_c

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5

    const/4 v3, 0x5

    if-eq v0, v3, :cond_4

    const/4 v3, 0x6

    if-eq v0, v3, :cond_3

    goto/16 :goto_3

    .line 2282
    :cond_3
    invoke-direct {p0, p1}, Lo/PlaybackStateCompat;->onPostMessage(Landroid/view/MotionEvent;)V

    .line 2283
    iget v0, p0, Lo/PlaybackStateCompat;->write:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iput p1, p0, Lo/PlaybackStateCompat;->getDefaultImpl:F

    goto/16 :goto_3

    .line 2275
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2276
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 2277
    iput v3, p0, Lo/PlaybackStateCompat;->getDefaultImpl:F

    .line 2278
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lo/PlaybackStateCompat;->write:I

    goto/16 :goto_3

    .line 2269
    :cond_5
    iget-boolean p1, p0, Lo/PlaybackStateCompat;->cancelAll:Z

    if-eqz p1, :cond_12

    .line 2270
    iget p1, p0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    invoke-direct {p0, p1, v2, v1, v1}, Lo/PlaybackStateCompat;->onMessageChannelReady(IZIZ)V

    .line 2271
    invoke-direct {p0}, Lo/PlaybackStateCompat;->onMessageChannelReady()Z

    move-result v1

    goto/16 :goto_3

    .line 2205
    :cond_6
    iget-boolean v0, p0, Lo/PlaybackStateCompat;->cancelAll:Z

    if-nez v0, :cond_b

    .line 2206
    iget v0, p0, Lo/PlaybackStateCompat;->write:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_7

    .line 2210
    invoke-direct {p0}, Lo/PlaybackStateCompat;->onMessageChannelReady()Z

    move-result v1

    goto/16 :goto_3

    .line 2213
    :cond_7
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 2214
    iget v4, p0, Lo/PlaybackStateCompat;->getDefaultImpl:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 2215
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 2216
    iget v5, p0, Lo/PlaybackStateCompat;->INotificationSideChannel$Stub$Proxy:F

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 2220
    iget v6, p0, Lo/PlaybackStateCompat;->INotificationSideChannel$Default:I

    int-to-float v6, v6

    cmpl-float v6, v4, v6

    if-lez v6, :cond_b

    cmpl-float v4, v4, v5

    if-lez v4, :cond_b

    .line 2222
    iput-boolean v2, p0, Lo/PlaybackStateCompat;->cancelAll:Z

    .line 26303
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 26305
    invoke-interface {v4, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2224
    :cond_8
    iget v4, p0, Lo/PlaybackStateCompat;->INotificationSideChannel$Stub:F

    sub-float/2addr v3, v4

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_9

    iget v3, p0, Lo/PlaybackStateCompat;->INotificationSideChannel$Default:I

    int-to-float v3, v3

    add-float/2addr v4, v3

    goto :goto_0

    :cond_9
    iget v3, p0, Lo/PlaybackStateCompat;->INotificationSideChannel$Default:I

    int-to-float v3, v3

    sub-float/2addr v4, v3

    :goto_0
    iput v4, p0, Lo/PlaybackStateCompat;->getDefaultImpl:F

    .line 2226
    iput v0, p0, Lo/PlaybackStateCompat;->INotificationSideChannel$Stub$Proxy:F

    .line 2227
    invoke-virtual {p0, v2}, Lo/PlaybackStateCompat;->onNavigationEvent(I)V

    .line 26669
    iget-boolean v0, p0, Lo/PlaybackStateCompat;->ICustomTabsService$Stub$Proxy:Z

    if-eq v0, v2, :cond_a

    .line 26670
    iput-boolean v2, p0, Lo/PlaybackStateCompat;->ICustomTabsService$Stub$Proxy:Z

    .line 2231
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2233
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2238
    :cond_b
    iget-boolean v0, p0, Lo/PlaybackStateCompat;->cancelAll:Z

    if-eqz v0, :cond_12

    .line 2240
    iget v0, p0, Lo/PlaybackStateCompat;->write:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 2241
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 2242
    invoke-direct {p0, p1}, Lo/PlaybackStateCompat;->ICustomTabsCallback(F)Z

    move-result p1

    or-int/2addr v1, p1

    goto/16 :goto_3

    .line 2246
    :cond_c
    iget-boolean v0, p0, Lo/PlaybackStateCompat;->cancelAll:Z

    if-eqz v0, :cond_12

    .line 2247
    iget-object v0, p0, Lo/PlaybackStateCompat;->IconCompatParcelizer:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    .line 2248
    iget v4, p0, Lo/PlaybackStateCompat;->AudioAttributesCompatParcelizer:I

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2249
    iget v3, p0, Lo/PlaybackStateCompat;->write:I

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    .line 2250
    iput-boolean v2, p0, Lo/PlaybackStateCompat;->notify:Z

    .line 27600
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2252
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v4

    .line 2253
    invoke-direct {p0}, Lo/PlaybackStateCompat;->onNavigationEvent()Lo/PlaybackStateCompat$extraCallback;

    move-result-object v5

    .line 2254
    iget v6, p0, Lo/PlaybackStateCompat;->requestPostMessageChannel:I

    int-to-float v6, v6

    int-to-float v3, v3

    div-float/2addr v6, v3

    .line 2255
    iget v7, v5, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    .line 2256
    iget v3, v5, Lo/PlaybackStateCompat$extraCallback;->extraCallback:F

    sub-float/2addr v4, v3

    iget v3, v5, Lo/PlaybackStateCompat$extraCallback;->onNavigationEvent:F

    add-float/2addr v3, v6

    div-float/2addr v4, v3

    .line 2258
    iget v3, p0, Lo/PlaybackStateCompat;->write:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 2259
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 2260
    iget v3, p0, Lo/PlaybackStateCompat;->INotificationSideChannel$Stub:F

    sub-float/2addr p1, v3

    float-to-int p1, p1

    .line 28406
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v3, p0, Lo/PlaybackStateCompat;->AudioAttributesImplApi21Parcelizer:I

    if-le p1, v3, :cond_e

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v3, p0, Lo/PlaybackStateCompat;->RemoteActionCompatParcelizer:I

    if-le p1, v3, :cond_e

    if-lez v0, :cond_d

    goto :goto_2

    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 28409
    :cond_e
    iget p1, p0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    if-lt v7, p1, :cond_f

    const p1, 0x3ecccccd    # 0.4f

    goto :goto_1

    :cond_f
    const p1, 0x3f19999a    # 0.6f

    :goto_1
    add-float/2addr v4, p1

    float-to-int p1, v4

    add-int/2addr v7, p1

    .line 28413
    :goto_2
    iget-object p1, p0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    if-lez p1, :cond_10

    .line 28414
    iget-object p1, p0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/PlaybackStateCompat$extraCallback;

    .line 28415
    iget-object v1, p0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/PlaybackStateCompat$extraCallback;

    .line 28418
    iget p1, p1, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    iget v1, v1, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2263
    :cond_10
    invoke-direct {p0, v7, v2, v2, v0}, Lo/PlaybackStateCompat;->onPostMessage(IZZI)V

    .line 2265
    invoke-direct {p0}, Lo/PlaybackStateCompat;->onMessageChannelReady()Z

    move-result v1

    goto :goto_3

    .line 2194
    :cond_11
    iget-object v0, p0, Lo/PlaybackStateCompat;->getInterfaceDescriptor:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2195
    iput-boolean v1, p0, Lo/PlaybackStateCompat;->notify:Z

    .line 26092
    iget v0, p0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    invoke-virtual {p0, v0}, Lo/PlaybackStateCompat;->onPostMessage(I)V

    .line 2199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lo/PlaybackStateCompat;->INotificationSideChannel$Stub:F

    iput v0, p0, Lo/PlaybackStateCompat;->getDefaultImpl:F

    .line 2200
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lo/PlaybackStateCompat;->read:F

    iput v0, p0, Lo/PlaybackStateCompat;->INotificationSideChannel$Stub$Proxy:F

    .line 2201
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lo/PlaybackStateCompat;->write:I

    :cond_12
    :goto_3
    if-eqz v1, :cond_13

    .line 2287
    invoke-static {p0}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;)V

    :cond_13
    return v2

    :cond_14
    :goto_4
    return v1
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 1504
    iget-boolean v0, p0, Lo/PlaybackStateCompat;->IPostMessageService$Stub:Z

    if-eqz v0, :cond_0

    .line 1505
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    return-void

    .line 1507
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public setAdapter(Lo/toKeyCode;)V
    .locals 7

    .line 506
    iget-object v0, p0, Lo/PlaybackStateCompat;->onNavigationEvent:Lo/toKeyCode;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 5316
    monitor-enter v0

    .line 5317
    :try_start_0
    iput-object v1, v0, Lo/toKeyCode;->ICustomTabsCallback:Landroid/database/DataSetObserver;

    .line 5318
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    iget-object v0, p0, Lo/PlaybackStateCompat;->onNavigationEvent:Lo/toKeyCode;

    invoke-virtual {v0, p0}, Lo/toKeyCode;->onNavigationEvent(Landroid/view/ViewGroup;)V

    const/4 v0, 0x0

    .line 509
    :goto_0
    iget-object v4, p0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 510
    iget-object v4, p0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/PlaybackStateCompat$extraCallback;

    .line 511
    iget-object v5, p0, Lo/PlaybackStateCompat;->onNavigationEvent:Lo/toKeyCode;

    iget v6, v4, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    iget-object v4, v4, Lo/PlaybackStateCompat$extraCallback;->ICustomTabsCallback:Ljava/lang/Object;

    invoke-virtual {v5, p0, v6, v4}, Lo/toKeyCode;->extraCallback(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 513
    :cond_0
    iget-object v0, p0, Lo/PlaybackStateCompat;->onNavigationEvent:Lo/toKeyCode;

    invoke-virtual {v0}, Lo/toKeyCode;->onPostMessage()V

    .line 514
    iget-object v0, p0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    const/4 v0, 0x0

    .line 5555
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 5556
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 5557
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lo/PlaybackStateCompat$onMessageChannelReady;

    .line 5558
    iget-boolean v4, v4, Lo/PlaybackStateCompat$onMessageChannelReady;->ICustomTabsCallback:Z

    if-nez v4, :cond_1

    .line 5559
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    :cond_1
    add-int/2addr v0, v2

    goto :goto_1

    .line 516
    :cond_2
    iput v3, p0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    .line 517
    invoke-virtual {p0, v3, v3}, Landroid/view/View;->scrollTo(II)V

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 5318
    monitor-exit v0

    throw p1

    .line 521
    :cond_3
    :goto_2
    iput-object p1, p0, Lo/PlaybackStateCompat;->onNavigationEvent:Lo/toKeyCode;

    .line 522
    iput v3, p0, Lo/PlaybackStateCompat;->onPostMessage:I

    if-eqz p1, :cond_7

    .line 525
    iget-object p1, p0, Lo/PlaybackStateCompat;->mayLaunchUrl:Lo/PlaybackStateCompat$onRelationshipValidationResult;

    if-nez p1, :cond_4

    .line 526
    new-instance p1, Lo/PlaybackStateCompat$onRelationshipValidationResult;

    invoke-direct {p1, p0}, Lo/PlaybackStateCompat$onRelationshipValidationResult;-><init>(Lo/PlaybackStateCompat;)V

    iput-object p1, p0, Lo/PlaybackStateCompat;->mayLaunchUrl:Lo/PlaybackStateCompat$onRelationshipValidationResult;

    .line 528
    :cond_4
    iget-object p1, p0, Lo/PlaybackStateCompat;->onNavigationEvent:Lo/toKeyCode;

    iget-object v0, p0, Lo/PlaybackStateCompat;->mayLaunchUrl:Lo/PlaybackStateCompat$onRelationshipValidationResult;

    .line 6316
    monitor-enter p1

    .line 6317
    :try_start_1
    iput-object v0, p1, Lo/toKeyCode;->ICustomTabsCallback:Landroid/database/DataSetObserver;

    .line 6318
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 529
    iput-boolean v3, p0, Lo/PlaybackStateCompat;->notify:Z

    .line 530
    iget-boolean p1, p0, Lo/PlaybackStateCompat;->MediaBrowserCompat:Z

    .line 531
    iput-boolean v2, p0, Lo/PlaybackStateCompat;->MediaBrowserCompat:Z

    .line 532
    iget-object v0, p0, Lo/PlaybackStateCompat;->onNavigationEvent:Lo/toKeyCode;

    invoke-virtual {v0}, Lo/toKeyCode;->extraCallback()I

    move-result v0

    iput v0, p0, Lo/PlaybackStateCompat;->onPostMessage:I

    .line 533
    iget v0, p0, Lo/PlaybackStateCompat;->ICustomTabsService:I

    if-ltz v0, :cond_5

    .line 534
    iget-object p1, p0, Lo/PlaybackStateCompat;->onNavigationEvent:Lo/toKeyCode;

    iget-object v0, p0, Lo/PlaybackStateCompat;->warmup:Landroid/os/Parcelable;

    iget-object v4, p0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0, v4}, Lo/toKeyCode;->onMessageChannelReady(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 535
    iget p1, p0, Lo/PlaybackStateCompat;->ICustomTabsService:I

    .line 6631
    invoke-direct {p0, p1, v3, v2, v3}, Lo/PlaybackStateCompat;->onPostMessage(IZZI)V

    const/4 p1, -0x1

    .line 536
    iput p1, p0, Lo/PlaybackStateCompat;->ICustomTabsService:I

    .line 537
    iput-object v1, p0, Lo/PlaybackStateCompat;->warmup:Landroid/os/Parcelable;

    .line 538
    iput-object v1, p0, Lo/PlaybackStateCompat;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/ClassLoader;

    return-void

    :cond_5
    if-nez p1, :cond_6

    .line 7092
    iget p1, p0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    invoke-virtual {p0, p1}, Lo/PlaybackStateCompat;->onPostMessage(I)V

    return-void

    .line 542
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 6318
    monitor-exit p1

    throw v0

    :cond_7
    :goto_3
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    const/4 v0, 0x0

    .line 611
    iput-boolean v0, p0, Lo/PlaybackStateCompat;->notify:Z

    .line 612
    iget-boolean v1, p0, Lo/PlaybackStateCompat;->MediaBrowserCompat:Z

    xor-int/lit8 v1, v1, 0x1

    .line 7631
    invoke-direct {p0, p1, v1, v0, v0}, Lo/PlaybackStateCompat;->onPostMessage(IZZI)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 622
    iput-boolean v0, p0, Lo/PlaybackStateCompat;->notify:Z

    .line 8631
    invoke-direct {p0, p1, p2, v0, v0}, Lo/PlaybackStateCompat;->onPostMessage(IZZI)V

    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 2

    if-gtz p1, :cond_0

    .line 850
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Requested offscreen page limit "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " too small; defaulting to 1"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ViewPager"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 854
    :cond_0
    iget v0, p0, Lo/PlaybackStateCompat;->cancel:I

    if-eq p1, v0, :cond_1

    .line 855
    iput p1, p0, Lo/PlaybackStateCompat;->cancel:I

    .line 12092
    iget p1, p0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    invoke-virtual {p0, p1}, Lo/PlaybackStateCompat;->onPostMessage(I)V

    :cond_1
    return-void
.end method

.method public setOnPageChangeListener(Lo/PlaybackStateCompat$onPostMessage;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 709
    iput-object p1, p0, Lo/PlaybackStateCompat;->getRoot:Lo/PlaybackStateCompat$onPostMessage;

    return-void
.end method

.method public setPageMargin(I)V
    .locals 2

    .line 869
    iget v0, p0, Lo/PlaybackStateCompat;->requestPostMessageChannel:I

    .line 870
    iput p1, p0, Lo/PlaybackStateCompat;->requestPostMessageChannel:I

    .line 872
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 873
    invoke-direct {p0, v1, v1, p1, v0}, Lo/PlaybackStateCompat;->onNavigationEvent(IIII)V

    .line 875
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1

    .line 905
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lo/fromParcel;->onPostMessage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/PlaybackStateCompat;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 893
    iput-object p1, p0, Lo/PlaybackStateCompat;->postMessage:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 894
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 895
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 896
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPageTransformer(ZLo/PlaybackStateCompat$onTransact;)V
    .locals 1

    const/4 v0, 0x2

    .line 769
    invoke-virtual {p0, p1, p2, v0}, Lo/PlaybackStateCompat;->setPageTransformer(ZLo/PlaybackStateCompat$onTransact;I)V

    return-void
.end method

.method public setPageTransformer(ZLo/PlaybackStateCompat$onTransact;I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 788
    :goto_0
    iget-object v3, p0, Lo/PlaybackStateCompat;->getServiceComponent:Lo/PlaybackStateCompat$onTransact;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eq v2, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 789
    :goto_2
    iput-object p2, p0, Lo/PlaybackStateCompat;->getServiceComponent:Lo/PlaybackStateCompat$onTransact;

    .line 790
    invoke-virtual {p0, v2}, Lo/PlaybackStateCompat;->setChildrenDrawingOrderEnabled(Z)V

    if-eqz v2, :cond_4

    if-eqz p1, :cond_3

    const/4 v0, 0x2

    .line 792
    :cond_3
    iput v0, p0, Lo/PlaybackStateCompat;->getItem:I

    .line 793
    iput p3, p0, Lo/PlaybackStateCompat;->getExtras:I

    goto :goto_3

    .line 795
    :cond_4
    iput v1, p0, Lo/PlaybackStateCompat;->getItem:I

    :goto_3
    if-eqz v3, :cond_5

    .line 11092
    iget p1, p0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    invoke-virtual {p0, p1}, Lo/PlaybackStateCompat;->onPostMessage(I)V

    :cond_5
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 910
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/PlaybackStateCompat;->postMessage:Landroid/graphics/drawable/Drawable;

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
