.class public Lo/isSessionReady;
.super Landroid/view/ViewGroup;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/isSessionReady$ICustomTabsCallback;,
        Lo/isSessionReady$onMessageChannelReady;,
        Lo/isSessionReady$onNavigationEvent;,
        Lo/isSessionReady$asBinder;,
        Lo/isSessionReady$extraCallback;,
        Lo/isSessionReady$onPostMessage;
    }
.end annotation


# static fields
.field static final ICustomTabsCallback:[I

.field private static final asBinder:[I

.field static final onNavigationEvent:Z

.field private static final warmup:Z


# instance fields
.field private AudioAttributesCompatParcelizer:Landroid/graphics/Matrix;

.field ICustomTabsCallback$Stub:Ljava/lang/CharSequence;

.field private ICustomTabsCallback$Stub$Proxy:F

.field private ICustomTabsService:I

.field private ICustomTabsService$Stub:I

.field private ICustomTabsService$Stub$Proxy:Z

.field private INotificationSideChannel:Lo/isSessionReady$onPostMessage;

.field private INotificationSideChannel$Default:Landroid/graphics/drawable/Drawable;

.field private INotificationSideChannel$Stub:Landroid/graphics/drawable/Drawable;

.field private INotificationSideChannel$Stub$Proxy:Ljava/lang/Object;

.field private IPostMessageService:I

.field private IPostMessageService$Stub:I

.field private IPostMessageService$Stub$Proxy:F

.field private IconCompatParcelizer:Landroid/graphics/drawable/Drawable;

.field private RemoteActionCompatParcelizer:Landroid/graphics/drawable/Drawable;

.field asInterface:Ljava/lang/CharSequence;

.field private cancel:Landroid/graphics/drawable/Drawable;

.field private cancelAll:F

.field final extraCallback:Lo/rate;

.field private extraCommand:Z

.field private getDefaultImpl:Z

.field private final getInterfaceDescriptor:Lo/isSessionReady$ICustomTabsCallback;

.field private final mayLaunchUrl:Lo/isSessionReady$asBinder;

.field private newSession:I

.field private notify:Landroid/graphics/drawable/Drawable;

.field onMessageChannelReady:I

.field final onPostMessage:Lo/rate;

.field onRelationshipValidationResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/isSessionReady$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field onTransact:Z

.field private postMessage:Landroid/graphics/Paint;

.field private read:Landroid/graphics/Rect;

.field private requestPostMessageChannel:F

.field private setDefaultImpl:Landroid/graphics/drawable/Drawable;

.field private final updateVisuals:Lo/isSessionReady$asBinder;

.field private validateRelationship:I

.field private final write:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x1010434

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 104
    sput-object v1, Lo/isSessionReady;->asBinder:[I

    new-array v1, v0, [I

    const v2, 0x10100b3

    aput v2, v1, v3

    .line 184
    sput-object v1, Lo/isSessionReady;->ICustomTabsCallback:[I

    .line 189
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lo/isSessionReady;->onNavigationEvent:Z

    .line 192
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    sput-boolean v0, Lo/isSessionReady;->warmup:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 306
    invoke-direct {p0, p1, v0}, Lo/isSessionReady;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 310
    invoke-direct {p0, p1, p2, v0}, Lo/isSessionReady;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 314
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 195
    new-instance p2, Lo/isSessionReady$ICustomTabsCallback;

    invoke-direct {p2}, Lo/isSessionReady$ICustomTabsCallback;-><init>()V

    iput-object p2, p0, Lo/isSessionReady;->getInterfaceDescriptor:Lo/isSessionReady$ICustomTabsCallback;

    const/high16 p2, -0x67000000

    .line 201
    iput p2, p0, Lo/isSessionReady;->newSession:I

    .line 203
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lo/isSessionReady;->postMessage:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 211
    iput-boolean p2, p0, Lo/isSessionReady;->ICustomTabsService$Stub$Proxy:Z

    const/4 p3, 0x3

    .line 213
    iput p3, p0, Lo/isSessionReady;->IPostMessageService$Stub:I

    .line 214
    iput p3, p0, Lo/isSessionReady;->IPostMessageService:I

    .line 215
    iput p3, p0, Lo/isSessionReady;->validateRelationship:I

    .line 216
    iput p3, p0, Lo/isSessionReady;->ICustomTabsService$Stub:I

    const/4 v0, 0x0

    .line 238
    iput-object v0, p0, Lo/isSessionReady;->INotificationSideChannel$Default:Landroid/graphics/drawable/Drawable;

    .line 239
    iput-object v0, p0, Lo/isSessionReady;->INotificationSideChannel$Stub:Landroid/graphics/drawable/Drawable;

    .line 240
    iput-object v0, p0, Lo/isSessionReady;->RemoteActionCompatParcelizer:Landroid/graphics/drawable/Drawable;

    .line 241
    iput-object v0, p0, Lo/isSessionReady;->IconCompatParcelizer:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x40000

    .line 315
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 316
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42800000    # 64.0f

    mul-float v2, v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 317
    iput v2, p0, Lo/isSessionReady;->ICustomTabsService:I

    const/high16 v2, 0x43c80000    # 400.0f

    mul-float v2, v2, v1

    .line 320
    new-instance v3, Lo/isSessionReady$asBinder;

    invoke-direct {v3, p0, p3}, Lo/isSessionReady$asBinder;-><init>(Lo/isSessionReady;I)V

    iput-object v3, p0, Lo/isSessionReady;->mayLaunchUrl:Lo/isSessionReady$asBinder;

    .line 321
    new-instance p3, Lo/isSessionReady$asBinder;

    const/4 v3, 0x5

    invoke-direct {p3, p0, v3}, Lo/isSessionReady$asBinder;-><init>(Lo/isSessionReady;I)V

    iput-object p3, p0, Lo/isSessionReady;->updateVisuals:Lo/isSessionReady$asBinder;

    .line 323
    iget-object p3, p0, Lo/isSessionReady;->mayLaunchUrl:Lo/isSessionReady$asBinder;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p0, v3, p3}, Lo/rate;->onNavigationEvent(Landroid/view/ViewGroup;FLo/rate$ICustomTabsCallback;)Lo/rate;

    move-result-object p3

    iput-object p3, p0, Lo/isSessionReady;->extraCallback:Lo/rate;

    .line 2447
    iput p2, p3, Lo/rate;->asInterface:I

    .line 325
    iget-object p3, p0, Lo/isSessionReady;->extraCallback:Lo/rate;

    .line 3411
    iput v2, p3, Lo/rate;->onRelationshipValidationResult:F

    .line 326
    iget-object p3, p0, Lo/isSessionReady;->mayLaunchUrl:Lo/isSessionReady$asBinder;

    iget-object v4, p0, Lo/isSessionReady;->extraCallback:Lo/rate;

    .line 4157
    iput-object v4, p3, Lo/isSessionReady$asBinder;->onNavigationEvent:Lo/rate;

    .line 328
    iget-object p3, p0, Lo/isSessionReady;->updateVisuals:Lo/isSessionReady$asBinder;

    invoke-static {p0, v3, p3}, Lo/rate;->onNavigationEvent(Landroid/view/ViewGroup;FLo/rate$ICustomTabsCallback;)Lo/rate;

    move-result-object p3

    iput-object p3, p0, Lo/isSessionReady;->onPostMessage:Lo/rate;

    const/4 v3, 0x2

    .line 4447
    iput v3, p3, Lo/rate;->asInterface:I

    .line 330
    iget-object p3, p0, Lo/isSessionReady;->onPostMessage:Lo/rate;

    .line 5411
    iput v2, p3, Lo/rate;->onRelationshipValidationResult:F

    .line 331
    iget-object p3, p0, Lo/isSessionReady;->updateVisuals:Lo/isSessionReady$asBinder;

    iget-object v2, p0, Lo/isSessionReady;->onPostMessage:Lo/rate;

    .line 6157
    iput-object v2, p3, Lo/isSessionReady$asBinder;->onNavigationEvent:Lo/rate;

    .line 334
    invoke-virtual {p0, p2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 336
    invoke-static {p0, p2}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;I)V

    .line 339
    new-instance p2, Lo/isSessionReady$onMessageChannelReady;

    invoke-direct {p2, p0}, Lo/isSessionReady$onMessageChannelReady;-><init>(Lo/isSessionReady;)V

    invoke-static {p0, p2}, Lo/unregisterCallbackListener;->onMessageChannelReady(Landroid/view/View;Lo/onSessionDestroyed;)V

    const/4 p2, 0x0

    .line 340
    invoke-virtual {p0, p2}, Lo/isSessionReady;->setMotionEventSplittingEnabled(Z)V

    .line 341
    invoke-static {p0}, Lo/unregisterCallbackListener;->extraCommand(Landroid/view/View;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 342
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt p3, v2, :cond_0

    .line 343
    new-instance p3, Lo/isSessionReady$4;

    invoke-direct {p3, p0}, Lo/isSessionReady$4;-><init>(Lo/isSessionReady;)V

    invoke-virtual {p0, p3}, Lo/isSessionReady;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    const/16 p3, 0x500

    .line 351
    invoke-virtual {p0, p3}, Lo/isSessionReady;->setSystemUiVisibility(I)V

    .line 353
    sget-object p3, Lo/isSessionReady;->asBinder:[I

    invoke-virtual {p1, p3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 355
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lo/isSessionReady;->cancel:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2

    .line 360
    :cond_0
    iput-object v0, p0, Lo/isSessionReady;->cancel:Landroid/graphics/drawable/Drawable;

    :cond_1
    :goto_0
    const/high16 p1, 0x41200000    # 10.0f

    mul-float v1, v1, p1

    .line 364
    iput v1, p0, Lo/isSessionReady;->ICustomTabsCallback$Stub$Proxy:F

    .line 366
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/isSessionReady;->write:Ljava/util/ArrayList;

    return-void
.end method

.method static ICustomTabsCallback(Landroid/view/View;)Z
    .locals 2

    .line 2085
    invoke-static {p0}, Lo/unregisterCallbackListener;->asBinder(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 2087
    invoke-static {p0}, Lo/unregisterCallbackListener;->asBinder(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private ICustomTabsCallback$Stub()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1166
    invoke-static {p0}, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_2

    .line 1169
    iget-object v1, p0, Lo/isSessionReady;->INotificationSideChannel$Default:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    if-eqz v1, :cond_1

    .line 10208
    invoke-static {v1}, Lo/MediaMetadataCompat$BitmapKey;->onNavigationEvent(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 10212
    :cond_0
    invoke-static {v1, v0}, Lo/MediaMetadataCompat$BitmapKey;->extraCallback(Landroid/graphics/drawable/Drawable;I)Z

    .line 1172
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/isSessionReady;->INotificationSideChannel$Default:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 1175
    :cond_2
    iget-object v1, p0, Lo/isSessionReady;->INotificationSideChannel$Stub:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    if-eqz v1, :cond_4

    .line 11208
    invoke-static {v1}, Lo/MediaMetadataCompat$BitmapKey;->onNavigationEvent(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 11212
    :cond_3
    invoke-static {v1, v0}, Lo/MediaMetadataCompat$BitmapKey;->extraCallback(Landroid/graphics/drawable/Drawable;I)Z

    .line 1178
    :cond_4
    :goto_1
    iget-object v0, p0, Lo/isSessionReady;->INotificationSideChannel$Stub:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 1181
    :cond_5
    iget-object v0, p0, Lo/isSessionReady;->RemoteActionCompatParcelizer:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private extraCallback(Landroid/view/View;Z)V
    .locals 3

    .line 1688
    invoke-static {p1}, Lo/isSessionReady;->extraCallback(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1692
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lo/isSessionReady$onNavigationEvent;

    .line 1693
    iget-boolean v0, p0, Lo/isSessionReady;->ICustomTabsService$Stub$Proxy:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1694
    iput v0, p2, Lo/isSessionReady$onNavigationEvent;->ICustomTabsCallback:F

    .line 1695
    iput v1, p2, Lo/isSessionReady$onNavigationEvent;->onPostMessage:I

    .line 1697
    invoke-virtual {p0, p1, v1}, Lo/isSessionReady;->onPostMessage(Landroid/view/View;Z)V

    goto :goto_1

    .line 1699
    :cond_0
    iget v0, p2, Lo/isSessionReady$onNavigationEvent;->onPostMessage:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p2, Lo/isSessionReady$onNavigationEvent;->onPostMessage:I

    const/4 p2, 0x3

    .line 31945
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lo/isSessionReady$onNavigationEvent;

    iget v0, v0, Lo/isSessionReady$onNavigationEvent;->extraCallback:I

    .line 31946
    invoke-static {p0}, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub(Landroid/view/View;)I

    move-result v2

    invoke-static {v0, v2}, Lo/onQueueChanged;->onMessageChannelReady(II)I

    move-result v0

    and-int/2addr v0, p2

    const/4 v2, 0x0

    if-ne v0, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 1702
    iget-object p2, p0, Lo/isSessionReady;->extraCallback:Lo/rate;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p2, p1, v2, v0}, Lo/rate;->onPostMessage(Landroid/view/View;II)Z

    goto :goto_1

    .line 1704
    :cond_2
    iget-object p2, p0, Lo/isSessionReady;->onPostMessage:Lo/rate;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1705
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1704
    invoke-virtual {p2, p1, v0, v1}, Lo/rate;->onPostMessage(Landroid/view/View;II)Z

    .line 1712
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 1689
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "View "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a sliding drawer"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private extraCallback(Z)V
    .locals 10

    .line 1642
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 1644
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1645
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lo/isSessionReady$onNavigationEvent;

    .line 1647
    invoke-static {v4}, Lo/isSessionReady;->extraCallback(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz p1, :cond_0

    iget-boolean v6, v5, Lo/isSessionReady$onNavigationEvent;->onMessageChannelReady:Z

    if-eqz v6, :cond_3

    .line 1651
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    const/4 v7, 0x3

    .line 28945
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lo/isSessionReady$onNavigationEvent;

    iget v8, v8, Lo/isSessionReady$onNavigationEvent;->extraCallback:I

    .line 28946
    invoke-static {p0}, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub(Landroid/view/View;)I

    move-result v9

    invoke-static {v8, v9}, Lo/onQueueChanged;->onMessageChannelReady(II)I

    move-result v8

    and-int/2addr v8, v7

    if-ne v8, v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_2

    .line 1654
    iget-object v7, p0, Lo/isSessionReady;->extraCallback:Lo/rate;

    neg-int v6, v6

    .line 1655
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    .line 1654
    invoke-virtual {v7, v4, v6, v8}, Lo/rate;->onPostMessage(Landroid/view/View;II)Z

    move-result v4

    goto :goto_2

    .line 1657
    :cond_2
    iget-object v6, p0, Lo/isSessionReady;->onPostMessage:Lo/rate;

    .line 1658
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    .line 1657
    invoke-virtual {v6, v4, v7, v8}, Lo/rate;->onPostMessage(Landroid/view/View;II)Z

    move-result v4

    :goto_2
    or-int/2addr v3, v4

    .line 1661
    iput-boolean v1, v5, Lo/isSessionReady$onNavigationEvent;->onMessageChannelReady:Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1664
    :cond_4
    iget-object p1, p0, Lo/isSessionReady;->mayLaunchUrl:Lo/isSessionReady$asBinder;

    .line 29161
    iget-object v0, p1, Lo/isSessionReady$asBinder;->ICustomTabsCallback:Lo/isSessionReady;

    iget-object p1, p1, Lo/isSessionReady$asBinder;->onPostMessage:Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1665
    iget-object p1, p0, Lo/isSessionReady;->updateVisuals:Lo/isSessionReady$asBinder;

    .line 30161
    iget-object v0, p1, Lo/isSessionReady$asBinder;->ICustomTabsCallback:Lo/isSessionReady;

    iget-object p1, p1, Lo/isSessionReady$asBinder;->onPostMessage:Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    if-eqz v3, :cond_5

    .line 1668
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_5
    return-void
.end method

.method static extraCallback(Landroid/view/View;)Z
    .locals 2

    .line 1468
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lo/isSessionReady$onNavigationEvent;

    iget v0, v0, Lo/isSessionReady$onNavigationEvent;->extraCallback:I

    .line 1470
    invoke-static {p0}, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub(Landroid/view/View;)I

    move-result p0

    .line 1469
    invoke-static {v0, p0}, Lo/onQueueChanged;->onMessageChannelReady(II)I

    move-result p0

    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    and-int/lit8 p0, p0, 0x5

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private onMessageChannelReady()Landroid/view/View;
    .locals 5

    .line 955
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 957
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 958
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lo/isSessionReady$onNavigationEvent;

    .line 959
    iget v3, v3, Lo/isSessionReady$onNavigationEvent;->onPostMessage:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static onNavigationEvent(Landroid/view/View;)F
    .locals 0

    .line 937
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lo/isSessionReady$onNavigationEvent;

    iget p0, p0, Lo/isSessionReady$onNavigationEvent;->ICustomTabsCallback:F

    return p0
.end method

.method public static onPostMessage(Landroid/view/View;)Z
    .locals 3

    .line 1819
    invoke-static {p0}, Lo/isSessionReady;->extraCallback(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1822
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lo/isSessionReady$onNavigationEvent;

    .line 1823
    iget p0, p0, Lo/isSessionReady$onNavigationEvent;->onPostMessage:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 1820
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "View "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is not a drawer"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private onTransact()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1185
    invoke-static {p0}, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_2

    .line 1187
    iget-object v1, p0, Lo/isSessionReady;->INotificationSideChannel$Stub:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    if-eqz v1, :cond_1

    .line 12208
    invoke-static {v1}, Lo/MediaMetadataCompat$BitmapKey;->onNavigationEvent(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 12212
    :cond_0
    invoke-static {v1, v0}, Lo/MediaMetadataCompat$BitmapKey;->extraCallback(Landroid/graphics/drawable/Drawable;I)Z

    .line 1190
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/isSessionReady;->INotificationSideChannel$Stub:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 1193
    :cond_2
    iget-object v1, p0, Lo/isSessionReady;->INotificationSideChannel$Default:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    if-eqz v1, :cond_4

    .line 13208
    invoke-static {v1}, Lo/MediaMetadataCompat$BitmapKey;->onNavigationEvent(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 13212
    :cond_3
    invoke-static {v1, v0}, Lo/MediaMetadataCompat$BitmapKey;->extraCallback(Landroid/graphics/drawable/Drawable;I)Z

    .line 1196
    :cond_4
    :goto_1
    iget-object v0, p0, Lo/isSessionReady;->INotificationSideChannel$Default:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 1199
    :cond_5
    iget-object v0, p0, Lo/isSessionReady;->IconCompatParcelizer:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method final ICustomTabsCallback()Landroid/view/View;
    .locals 6

    .line 1949
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 1951
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1952
    invoke-static {v3}, Lo/isSessionReady;->extraCallback(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 36852
    invoke-static {v3}, Lo/isSessionReady;->extraCallback(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 36855
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lo/isSessionReady$onNavigationEvent;

    iget v4, v4, Lo/isSessionReady$onNavigationEvent;->ICustomTabsCallback:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    return-object v3

    .line 36853
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "View "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

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

    .line 1911
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_0

    return-void

    .line 1917
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 1920
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1921
    invoke-static {v4}, Lo/isSessionReady;->extraCallback(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1922
    invoke-static {v4}, Lo/isSessionReady;->onPostMessage(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1924
    invoke-virtual {v4, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    const/4 v3, 0x1

    goto :goto_1

    .line 1927
    :cond_1
    iget-object v5, p0, Lo/isSessionReady;->write:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_5

    .line 1932
    iget-object v0, p0, Lo/isSessionReady;->write:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_5

    .line 1934
    iget-object v2, p0, Lo/isSessionReady;->write:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1935
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    .line 1936
    invoke-virtual {v2, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1941
    :cond_5
    iget-object p1, p0, Lo/isSessionReady;->write:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->clear()V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 2057
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2059
    invoke-direct {p0}, Lo/isSessionReady;->onMessageChannelReady()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_1

    .line 2060
    invoke-static {p1}, Lo/isSessionReady;->extraCallback(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 2068
    invoke-static {p1, p2}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x4

    .line 2063
    invoke-static {p1, p2}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;I)V

    .line 2074
    :goto_1
    sget-boolean p2, Lo/isSessionReady;->onNavigationEvent:Z

    if-nez p2, :cond_2

    .line 2075
    iget-object p2, p0, Lo/isSessionReady;->getInterfaceDescriptor:Lo/isSessionReady$ICustomTabsCallback;

    invoke-static {p1, p2}, Lo/unregisterCallbackListener;->onMessageChannelReady(Landroid/view/View;Lo/onSessionDestroyed;)V

    :cond_2
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 1901
    instance-of v0, p1, Lo/isSessionReady$onNavigationEvent;

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

    .line 1309
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1312
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lo/isSessionReady$onNavigationEvent;

    iget v3, v3, Lo/isSessionReady$onNavigationEvent;->ICustomTabsCallback:F

    .line 1313
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1315
    :cond_0
    iput v1, p0, Lo/isSessionReady;->requestPostMessageChannel:F

    .line 1317
    iget-object v0, p0, Lo/isSessionReady;->extraCallback:Lo/rate;

    invoke-virtual {v0}, Lo/rate;->ICustomTabsCallback()Z

    move-result v0

    .line 1318
    iget-object v1, p0, Lo/isSessionReady;->onPostMessage:Lo/rate;

    invoke-virtual {v1}, Lo/rate;->ICustomTabsCallback()Z

    move-result v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    .line 1320
    :cond_1
    invoke-static {p0}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1536
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    .line 1537
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_8

    iget v0, p0, Lo/isSessionReady;->requestPostMessageChannel:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto/16 :goto_2

    .line 1542
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 1544
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 1545
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_7

    .line 1549
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 25761
    iget-object v5, p0, Lo/isSessionReady;->read:Landroid/graphics/Rect;

    if-nez v5, :cond_2

    .line 25762
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lo/isSessionReady;->read:Landroid/graphics/Rect;

    .line 25764
    :cond_2
    iget-object v5, p0, Lo/isSessionReady;->read:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 25765
    iget-object v5, p0, Lo/isSessionReady;->read:Landroid/graphics/Rect;

    float-to-int v6, v2

    float-to-int v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 26464
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lo/isSessionReady$onNavigationEvent;

    iget v5, v5, Lo/isSessionReady$onNavigationEvent;->extraCallback:I

    const/4 v6, 0x1

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_1

    .line 26774
    invoke-virtual {v4}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    .line 26775
    invoke-virtual {v5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v5

    if-nez v5, :cond_6

    .line 26794
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int/2addr v5, v7

    int-to-float v5, v5

    .line 26795
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    .line 26796
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    .line 26797
    invoke-virtual {v8, v5, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 26798
    invoke-virtual {v4}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    .line 26799
    invoke-virtual {v5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v7

    if-nez v7, :cond_5

    .line 26800
    iget-object v7, p0, Lo/isSessionReady;->AudioAttributesCompatParcelizer:Landroid/graphics/Matrix;

    if-nez v7, :cond_4

    .line 26801
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    iput-object v7, p0, Lo/isSessionReady;->AudioAttributesCompatParcelizer:Landroid/graphics/Matrix;

    .line 26803
    :cond_4
    iget-object v7, p0, Lo/isSessionReady;->AudioAttributesCompatParcelizer:Landroid/graphics/Matrix;

    invoke-virtual {v5, v7}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 26804
    iget-object v5, p0, Lo/isSessionReady;->AudioAttributesCompatParcelizer:Landroid/graphics/Matrix;

    invoke-virtual {v8, v5}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 26777
    :cond_5
    invoke-virtual {v4, v8}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 26778
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_1

    .line 26780
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int/2addr v5, v7

    int-to-float v5, v5

    .line 26781
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    .line 26782
    invoke-virtual {p1, v5, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 26783
    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    neg-float v5, v5

    neg-float v7, v7

    .line 26784
    invoke-virtual {p1, v5, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :goto_1
    if-eqz v4, :cond_1

    return v6

    :cond_7
    return v1

    .line 1539
    :cond_8
    :goto_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1401
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 15464
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lo/isSessionReady$onNavigationEvent;

    iget v3, v3, Lo/isSessionReady$onNavigationEvent;->extraCallback:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1403
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 1405
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    const/4 v8, 0x3

    if-eqz v3, :cond_6

    .line 1407
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v10, v9, :cond_5

    .line 1409
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    move-object/from16 v13, p2

    if-eq v12, v13, :cond_4

    .line 1410
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-nez v14, :cond_4

    .line 16325
    invoke-virtual {v12}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 16327
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_1

    const/4 v14, 0x1

    goto :goto_2

    :cond_1
    const/4 v14, 0x0

    :goto_2
    if-eqz v14, :cond_4

    .line 1411
    invoke-static {v12}, Lo/isSessionReady;->extraCallback(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1412
    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v14

    if-lt v14, v2, :cond_4

    .line 17945
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lo/isSessionReady$onNavigationEvent;

    iget v14, v14, Lo/isSessionReady$onNavigationEvent;->extraCallback:I

    .line 17946
    invoke-static/range {p0 .. p0}, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub(Landroid/view/View;)I

    move-result v15

    invoke-static {v14, v15}, Lo/onQueueChanged;->onMessageChannelReady(II)I

    move-result v14

    and-int/2addr v14, v8

    if-ne v14, v8, :cond_2

    const/4 v14, 0x1

    goto :goto_3

    :cond_2
    const/4 v14, 0x0

    :goto_3
    if-eqz v14, :cond_3

    .line 1417
    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v12

    if-le v12, v11, :cond_4

    move v11, v12

    goto :goto_4

    .line 1420
    :cond_3
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v12

    if-ge v12, v6, :cond_4

    move v6, v12

    :cond_4
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_5
    move-object/from16 v13, p2

    .line 1424
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v1, v11, v5, v6, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_5

    :cond_6
    move-object/from16 v13, p2

    const/4 v11, 0x0

    .line 1426
    :goto_5
    invoke-super/range {p0 .. p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v9

    .line 1427
    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1429
    iget v2, v0, Lo/isSessionReady;->requestPostMessageChannel:F

    const/4 v7, 0x0

    cmpl-float v10, v2, v7

    if-lez v10, :cond_7

    if-eqz v3, :cond_7

    .line 1430
    iget v3, v0, Lo/isSessionReady;->newSession:I

    const/high16 v4, -0x1000000

    and-int/2addr v4, v3

    ushr-int/lit8 v4, v4, 0x18

    int-to-float v4, v4

    mul-float v4, v4, v2

    float-to-int v2, v4

    shl-int/lit8 v2, v2, 0x18

    const v4, 0xffffff

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    .line 1433
    iget-object v3, v0, Lo/isSessionReady;->postMessage:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v11

    const/4 v3, 0x0

    int-to-float v4, v6

    .line 1435
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lo/isSessionReady;->postMessage:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_8

    .line 1436
    :cond_7
    iget-object v2, v0, Lo/isSessionReady;->notify:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x437f0000    # 255.0f

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v2, :cond_9

    .line 18945
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lo/isSessionReady$onNavigationEvent;

    iget v2, v2, Lo/isSessionReady$onNavigationEvent;->extraCallback:I

    .line 18946
    invoke-static/range {p0 .. p0}, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub(Landroid/view/View;)I

    move-result v10

    invoke-static {v2, v10}, Lo/onQueueChanged;->onMessageChannelReady(II)I

    move-result v2

    and-int/2addr v2, v8

    if-ne v2, v8, :cond_8

    const/4 v2, 0x1

    goto :goto_6

    :cond_8
    const/4 v2, 0x0

    :goto_6
    if-eqz v2, :cond_9

    .line 1438
    iget-object v2, v0, Lo/isSessionReady;->notify:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 1439
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v4

    .line 1440
    iget-object v5, v0, Lo/isSessionReady;->extraCallback:Lo/rate;

    .line 19459
    iget v5, v5, Lo/rate;->asBinder:I

    int-to-float v8, v4

    int-to-float v5, v5

    div-float/2addr v8, v5

    .line 1442
    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 1443
    iget-object v6, v0, Lo/isSessionReady;->notify:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v7

    add-int/2addr v2, v4

    .line 1444
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 1443
    invoke-virtual {v6, v4, v7, v2, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1445
    iget-object v2, v0, Lo/isSessionReady;->notify:Landroid/graphics/drawable/Drawable;

    mul-float v5, v5, v3

    float-to-int v3, v5

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1446
    iget-object v2, v0, Lo/isSessionReady;->notify:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_8

    .line 1447
    :cond_9
    iget-object v2, v0, Lo/isSessionReady;->setDefaultImpl:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_b

    const/4 v2, 0x5

    .line 20945
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lo/isSessionReady$onNavigationEvent;

    iget v8, v8, Lo/isSessionReady$onNavigationEvent;->extraCallback:I

    .line 20946
    invoke-static/range {p0 .. p0}, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub(Landroid/view/View;)I

    move-result v10

    invoke-static {v8, v10}, Lo/onQueueChanged;->onMessageChannelReady(II)I

    move-result v8

    and-int/2addr v8, v2

    if-ne v8, v2, :cond_a

    goto :goto_7

    :cond_a
    const/4 v4, 0x0

    :goto_7
    if-eqz v4, :cond_b

    .line 1449
    iget-object v2, v0, Lo/isSessionReady;->setDefaultImpl:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 1450
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 1451
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v5, v4

    .line 1452
    iget-object v8, v0, Lo/isSessionReady;->onPostMessage:Lo/rate;

    .line 21459
    iget v8, v8, Lo/rate;->asBinder:I

    int-to-float v5, v5

    int-to-float v8, v8

    div-float/2addr v5, v8

    .line 1454
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 1455
    iget-object v6, v0, Lo/isSessionReady;->setDefaultImpl:Landroid/graphics/drawable/Drawable;

    sub-int v2, v4, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v7

    .line 1456
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 1455
    invoke-virtual {v6, v2, v7, v4, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1457
    iget-object v2, v0, Lo/isSessionReady;->setDefaultImpl:Landroid/graphics/drawable/Drawable;

    mul-float v5, v5, v3

    float-to-int v3, v5

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1458
    iget-object v2, v0, Lo/isSessionReady;->setDefaultImpl:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_b
    :goto_8
    return v9
.end method

.method public final extraCallback()V
    .locals 3

    const v0, 0x800005

    .line 32733
    invoke-virtual {p0, v0}, Lo/isSessionReady;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 32738
    invoke-direct {p0, v0, v1}, Lo/isSessionReady;->extraCallback(Landroid/view/View;Z)V

    return-void

    .line 32735
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No drawer view found with gravity RIGHT"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32736
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1887
    new-instance v0, Lo/isSessionReady$onNavigationEvent;

    invoke-direct {v0}, Lo/isSessionReady$onNavigationEvent;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1906
    new-instance v0, Lo/isSessionReady$onNavigationEvent;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lo/isSessionReady$onNavigationEvent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1892
    instance-of v0, p1, Lo/isSessionReady$onNavigationEvent;

    if-eqz v0, :cond_0

    new-instance v0, Lo/isSessionReady$onNavigationEvent;

    check-cast p1, Lo/isSessionReady$onNavigationEvent;

    invoke-direct {v0, p1}, Lo/isSessionReady$onNavigationEvent;-><init>(Lo/isSessionReady$onNavigationEvent;)V

    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Lo/isSessionReady$onNavigationEvent;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lo/isSessionReady$onNavigationEvent;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_1
    new-instance v0, Lo/isSessionReady$onNavigationEvent;

    invoke-direct {v0, p1}, Lo/isSessionReady$onNavigationEvent;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1022
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 1023
    iput-boolean v0, p0, Lo/isSessionReady;->ICustomTabsService$Stub$Proxy:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1016
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x1

    .line 1017
    iput-boolean v0, p0, Lo/isSessionReady;->ICustomTabsService$Stub$Proxy:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1383
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1384
    iget-boolean v0, p0, Lo/isSessionReady;->getDefaultImpl:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/isSessionReady;->cancel:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1386
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 1387
    iget-object v0, p0, Lo/isSessionReady;->INotificationSideChannel$Stub$Proxy:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/WindowInsets;

    .line 1388
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_1

    .line 1393
    iget-object v1, p0, Lo/isSessionReady;->cancel:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v1, v2, v2, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1394
    iget-object v0, p0, Lo/isSessionReady;->cancel:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1485
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1488
    iget-object v1, p0, Lo/isSessionReady;->extraCallback:Lo/rate;

    invoke-virtual {v1, p1}, Lo/rate;->onPostMessage(Landroid/view/MotionEvent;)Z

    move-result v1

    iget-object v2, p0, Lo/isSessionReady;->onPostMessage:Lo/rate;

    .line 1489
    invoke-virtual {v2, p1}, Lo/rate;->onPostMessage(Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    if-eq v0, v2, :cond_5

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_5

    goto :goto_4

    .line 1512
    :cond_0
    iget-object p1, p0, Lo/isSessionReady;->extraCallback:Lo/rate;

    .line 22334
    iget-object v0, p1, Lo/rate;->onPostMessage:[F

    array-length v0, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_4

    .line 22884
    iget v5, p1, Lo/rate;->onTransact:I

    shl-int v6, v2, v4

    and-int/2addr v5, v6

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    .line 22366
    iget-object v5, p1, Lo/rate;->ICustomTabsCallback:[F

    aget v5, v5, v4

    iget-object v6, p1, Lo/rate;->onPostMessage:[F

    aget v6, v6, v4

    sub-float/2addr v5, v6

    .line 22367
    iget-object v6, p1, Lo/rate;->ICustomTabsCallback$Stub:[F

    aget v6, v6, v4

    iget-object v7, p1, Lo/rate;->extraCallback:[F

    aget v7, v7, v4

    sub-float/2addr v6, v7

    mul-float v5, v5, v5

    mul-float v6, v6, v6

    add-float/2addr v5, v6

    .line 22370
    iget v6, p1, Lo/rate;->onMessageChannelReady:I

    iget v7, p1, Lo/rate;->onMessageChannelReady:I

    mul-int v6, v6, v7

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_6

    .line 1513
    iget-object p1, p0, Lo/isSessionReady;->mayLaunchUrl:Lo/isSessionReady$asBinder;

    .line 23161
    iget-object v0, p1, Lo/isSessionReady$asBinder;->ICustomTabsCallback:Lo/isSessionReady;

    iget-object p1, p1, Lo/isSessionReady$asBinder;->onPostMessage:Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1514
    iget-object p1, p0, Lo/isSessionReady;->updateVisuals:Lo/isSessionReady$asBinder;

    .line 24161
    iget-object v0, p1, Lo/isSessionReady$asBinder;->ICustomTabsCallback:Lo/isSessionReady;

    iget-object p1, p1, Lo/isSessionReady$asBinder;->onPostMessage:Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 1521
    :cond_5
    invoke-direct {p0, v2}, Lo/isSessionReady;->extraCallback(Z)V

    .line 1523
    iput-boolean v3, p0, Lo/isSessionReady;->onTransact:Z

    :cond_6
    :goto_4
    const/4 p1, 0x0

    goto :goto_7

    .line 1495
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1496
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 1497
    iput v0, p0, Lo/isSessionReady;->IPostMessageService$Stub$Proxy:F

    .line 1498
    iput p1, p0, Lo/isSessionReady;->cancelAll:F

    .line 1499
    iget v4, p0, Lo/isSessionReady;->requestPostMessageChannel:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_9

    .line 1500
    iget-object v4, p0, Lo/isSessionReady;->extraCallback:Lo/rate;

    float-to-int v0, v0

    float-to-int p1, p1

    invoke-virtual {v4, v0, p1}, Lo/rate;->extraCallback(II)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 21464
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lo/isSessionReady$onNavigationEvent;

    iget p1, p1, Lo/isSessionReady$onNavigationEvent;->extraCallback:I

    if-nez p1, :cond_8

    const/4 p1, 0x1

    goto :goto_5

    :cond_8
    const/4 p1, 0x0

    :goto_5
    if-eqz p1, :cond_9

    const/4 p1, 0x1

    goto :goto_6

    :cond_9
    const/4 p1, 0x0

    .line 1506
    :goto_6
    iput-boolean v3, p0, Lo/isSessionReady;->onTransact:Z

    :goto_7
    if-nez v1, :cond_d

    if-nez p1, :cond_d

    .line 24875
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, p1, :cond_b

    .line 24877
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lo/isSessionReady$onNavigationEvent;

    .line 24878
    iget-boolean v1, v1, Lo/isSessionReady$onNavigationEvent;->onMessageChannelReady:Z

    if-eqz v1, :cond_a

    const/4 p1, 0x1

    goto :goto_9

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_b
    const/4 p1, 0x0

    :goto_9
    if-nez p1, :cond_d

    .line 1527
    iget-boolean p1, p0, Lo/isSessionReady;->onTransact:Z

    if-eqz p1, :cond_c

    goto :goto_a

    :cond_c
    return v3

    :cond_d
    :goto_a
    return v2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 36945
    invoke-virtual {p0}, Lo/isSessionReady;->ICustomTabsCallback()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1977
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    return v1

    .line 1980
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 1986
    invoke-virtual {p0}, Lo/isSessionReady;->ICustomTabsCallback()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 1987
    invoke-virtual {p0, p1}, Lo/isSessionReady;->onMessageChannelReady(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 37637
    invoke-direct {p0, p2}, Lo/isSessionReady;->extraCallback(Z)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return p2

    .line 1992
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 1218
    iput-boolean v1, v0, Lo/isSessionReady;->extraCommand:Z

    sub-int v2, p4, p2

    .line 1220
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_c

    .line 1222
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1224
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_b

    .line 1228
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lo/isSessionReady$onNavigationEvent;

    .line 13464
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lo/isSessionReady$onNavigationEvent;

    iget v8, v8, Lo/isSessionReady$onNavigationEvent;->extraCallback:I

    if-nez v8, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_1

    .line 1231
    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v10, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1232
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v10, v11

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1233
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v7, v11

    .line 1231
    invoke-virtual {v6, v8, v9, v10, v7}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_8

    .line 1235
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 1236
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    const/4 v10, 0x3

    .line 14945
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lo/isSessionReady$onNavigationEvent;

    iget v11, v11, Lo/isSessionReady$onNavigationEvent;->extraCallback:I

    .line 14946
    invoke-static/range {p0 .. p0}, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub(Landroid/view/View;)I

    move-result v12

    invoke-static {v11, v12}, Lo/onQueueChanged;->onMessageChannelReady(II)I

    move-result v11

    and-int/2addr v11, v10

    if-ne v11, v10, :cond_2

    const/4 v10, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    :goto_2
    if-eqz v10, :cond_3

    neg-int v10, v8

    int-to-float v11, v8

    .line 1241
    iget v12, v7, Lo/isSessionReady$onNavigationEvent;->ICustomTabsCallback:F

    mul-float v12, v12, v11

    float-to-int v12, v12

    add-int/2addr v10, v12

    add-int v12, v8, v10

    int-to-float v12, v12

    div-float/2addr v12, v11

    goto :goto_3

    :cond_3
    int-to-float v10, v8

    .line 1244
    iget v11, v7, Lo/isSessionReady$onNavigationEvent;->ICustomTabsCallback:F

    mul-float v11, v11, v10

    float-to-int v11, v11

    sub-int v11, v2, v11

    sub-int v12, v2, v11

    int-to-float v12, v12

    div-float/2addr v12, v10

    move v10, v11

    .line 1248
    :goto_3
    iget v11, v7, Lo/isSessionReady$onNavigationEvent;->ICustomTabsCallback:F

    cmpl-float v11, v12, v11

    if-eqz v11, :cond_4

    const/4 v11, 0x1

    goto :goto_4

    :cond_4
    const/4 v11, 0x0

    .line 1250
    :goto_4
    iget v13, v7, Lo/isSessionReady$onNavigationEvent;->extraCallback:I

    and-int/lit8 v13, v13, 0x70

    const/16 v14, 0x10

    if-eq v13, v14, :cond_6

    const/16 v14, 0x50

    if-eq v13, v14, :cond_5

    .line 1255
    iget v13, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v10

    iget v14, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v14, v9

    invoke-virtual {v6, v10, v13, v8, v14}, Landroid/view/View;->layout(IIII)V

    goto :goto_6

    :cond_5
    sub-int v9, p5, p3

    .line 1262
    iget v13, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v13, v9, v13

    .line 1263
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v13, v14

    add-int/2addr v8, v10

    iget v14, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v9, v14

    .line 1262
    invoke-virtual {v6, v10, v13, v8, v9}, Landroid/view/View;->layout(IIII)V

    goto :goto_6

    :cond_6
    sub-int v13, p5, p3

    sub-int v14, v13, v9

    .line 1271
    div-int/lit8 v14, v14, 0x2

    .line 1275
    iget v15, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ge v14, v15, :cond_7

    .line 1276
    iget v14, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_5

    :cond_7
    add-int v15, v14, v9

    .line 1277
    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v1, v13, v1

    if-le v15, v1, :cond_8

    .line 1278
    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v13, v1

    sub-int v14, v13, v9

    :cond_8
    :goto_5
    add-int/2addr v8, v10

    add-int/2addr v9, v14

    .line 1280
    invoke-virtual {v6, v10, v14, v8, v9}, Landroid/view/View;->layout(IIII)V

    :goto_6
    if-eqz v11, :cond_9

    .line 1287
    invoke-virtual {v0, v6, v12}, Lo/isSessionReady;->onPostMessage(Landroid/view/View;F)V

    .line 1290
    :cond_9
    iget v1, v7, Lo/isSessionReady$onNavigationEvent;->ICustomTabsCallback:F

    const/4 v7, 0x0

    cmpl-float v1, v1, v7

    if-lez v1, :cond_a

    const/4 v1, 0x0

    goto :goto_7

    :cond_a
    const/4 v1, 0x4

    .line 1291
    :goto_7
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v1, :cond_b

    .line 1292
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    :goto_8
    add-int/lit8 v5, v5, 0x1

    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1296
    :cond_c
    iput-boolean v4, v0, Lo/isSessionReady;->extraCommand:Z

    .line 1297
    iput-boolean v4, v0, Lo/isSessionReady;->ICustomTabsService$Stub$Proxy:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 17

    move-object/from16 v0, p0

    .line 1029
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1030
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 1031
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 1032
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    const/16 v5, 0x12c

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v1, v6, :cond_0

    if-eq v2, v6, :cond_2

    .line 1035
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v7

    if-eqz v7, :cond_17

    const/high16 v7, -0x80000000

    if-eq v1, v7, :cond_1

    if-nez v1, :cond_1

    const/16 v3, 0x12c

    :cond_1
    if-eq v2, v7, :cond_2

    if-nez v2, :cond_2

    const/16 v4, 0x12c

    .line 1058
    :cond_2
    invoke-virtual {v0, v3, v4}, Lo/isSessionReady;->setMeasuredDimension(II)V

    .line 1060
    iget-object v1, v0, Lo/isSessionReady;->INotificationSideChannel$Stub$Proxy:Ljava/lang/Object;

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    invoke-static/range {p0 .. p0}, Lo/unregisterCallbackListener;->extraCommand(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 1061
    :goto_0
    invoke-static/range {p0 .. p0}, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub(Landroid/view/View;)I

    move-result v7

    .line 1067
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v9, v8, :cond_16

    .line 1069
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1071
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-eq v13, v14, :cond_15

    .line 1075
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lo/isSessionReady$onNavigationEvent;

    const/4 v15, 0x3

    if-eqz v1, :cond_9

    .line 1078
    iget v2, v13, Lo/isSessionReady$onNavigationEvent;->extraCallback:I

    invoke-static {v2, v7}, Lo/onQueueChanged;->onMessageChannelReady(II)I

    move-result v2

    .line 1079
    invoke-static {v12}, Lo/unregisterCallbackListener;->extraCommand(Landroid/view/View;)Z

    move-result v16

    const/16 v6, 0x15

    if-eqz v16, :cond_6

    .line 1080
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v14, v6, :cond_9

    .line 1081
    iget-object v6, v0, Lo/isSessionReady;->INotificationSideChannel$Stub$Proxy:Ljava/lang/Object;

    check-cast v6, Landroid/view/WindowInsets;

    if-ne v2, v15, :cond_4

    .line 1083
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    .line 1084
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v14

    .line 1085
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v15

    .line 1083
    invoke-virtual {v6, v2, v14, v5, v15}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v6

    goto :goto_2

    :cond_4
    const/4 v14, 0x5

    if-ne v2, v14, :cond_5

    .line 1087
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    .line 1088
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v14

    .line 1089
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v15

    .line 1087
    invoke-virtual {v6, v5, v2, v14, v15}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v6

    .line 1091
    :cond_5
    :goto_2
    invoke-virtual {v12, v6}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    goto :goto_4

    .line 1094
    :cond_6
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v14, v6, :cond_9

    .line 1095
    iget-object v6, v0, Lo/isSessionReady;->INotificationSideChannel$Stub$Proxy:Ljava/lang/Object;

    check-cast v6, Landroid/view/WindowInsets;

    const/4 v14, 0x3

    if-ne v2, v14, :cond_7

    .line 1097
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    .line 1098
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v14

    .line 1099
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v15

    .line 1097
    invoke-virtual {v6, v2, v14, v5, v15}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v6

    goto :goto_3

    :cond_7
    const/4 v14, 0x5

    if-ne v2, v14, :cond_8

    .line 1101
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    .line 1102
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v14

    .line 1103
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v15

    .line 1101
    invoke-virtual {v6, v5, v2, v14, v15}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v6

    .line 1105
    :cond_8
    :goto_3
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    iput v2, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1106
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    iput v2, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1107
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    iput v2, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1108
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    iput v2, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 9464
    :cond_9
    :goto_4
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lo/isSessionReady$onNavigationEvent;

    iget v2, v2, Lo/isSessionReady$onNavigationEvent;->extraCallback:I

    if-nez v2, :cond_a

    const/4 v2, 0x1

    goto :goto_5

    :cond_a
    const/4 v2, 0x0

    :goto_5
    if-eqz v2, :cond_b

    .line 1115
    iget v2, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v2, v3, v2

    iget v6, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v2, v6

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1117
    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int v14, v4, v14

    iget v13, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v14, v13

    invoke-static {v14, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 1119
    invoke-virtual {v12, v2, v13}, Landroid/view/View;->measure(II)V

    goto/16 :goto_9

    :cond_b
    const/high16 v6, 0x40000000    # 2.0f

    .line 1120
    invoke-static {v12}, Lo/isSessionReady;->extraCallback(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1121
    sget-boolean v2, Lo/isSessionReady;->warmup:Z

    if-eqz v2, :cond_c

    .line 1122
    invoke-static {v12}, Lo/unregisterCallbackListener;->mayLaunchUrl(Landroid/view/View;)F

    move-result v2

    iget v14, v0, Lo/isSessionReady;->ICustomTabsCallback$Stub$Proxy:F

    cmpl-float v2, v2, v14

    if-eqz v2, :cond_c

    .line 1123
    invoke-static {v12, v14}, Lo/unregisterCallbackListener;->onPostMessage(Landroid/view/View;F)V

    .line 9945
    :cond_c
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lo/isSessionReady$onNavigationEvent;

    iget v2, v2, Lo/isSessionReady$onNavigationEvent;->extraCallback:I

    .line 9946
    invoke-static/range {p0 .. p0}, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub(Landroid/view/View;)I

    move-result v14

    invoke-static {v2, v14}, Lo/onQueueChanged;->onMessageChannelReady(II)I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    const/4 v14, 0x3

    if-ne v2, v14, :cond_d

    const/4 v14, 0x1

    goto :goto_6

    :cond_d
    const/4 v14, 0x0

    :goto_6
    if-eqz v14, :cond_e

    if-nez v10, :cond_f

    :cond_e
    if-nez v14, :cond_12

    if-eqz v11, :cond_12

    .line 1133
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Child drawer has absolute gravity "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit8 v4, v2, 0x3

    const/4 v5, 0x3

    if-eq v4, v5, :cond_11

    and-int/lit8 v4, v2, 0x5

    const/4 v5, 0x5

    if-ne v4, v5, :cond_10

    const-string v2, "RIGHT"

    goto :goto_7

    .line 10011
    :cond_10
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_11
    const-string v2, "LEFT"

    .line 1134
    :goto_7
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but this DrawerLayout already has a drawer view along that edge"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    if-eqz v14, :cond_13

    const/4 v10, 0x1

    goto :goto_8

    :cond_13
    const/4 v11, 0x1

    .line 1142
    :goto_8
    iget v2, v0, Lo/isSessionReady;->ICustomTabsService:I

    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v14

    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v14

    iget v14, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v15, p1

    invoke-static {v15, v2, v14}, Lo/isSessionReady;->getChildMeasureSpec(III)I

    move-result v2

    .line 1145
    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v14, v5

    iget v5, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v13, p2

    invoke-static {v13, v14, v5}, Lo/isSessionReady;->getChildMeasureSpec(III)I

    move-result v5

    .line 1148
    invoke-virtual {v12, v2, v5}, Landroid/view/View;->measure(II)V

    goto :goto_a

    .line 1150
    :cond_14
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Child "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " does not have a valid layout_gravity - must be Gravity.LEFT, Gravity.RIGHT or Gravity.NO_GRAVITY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    :goto_9
    move/from16 v15, p1

    move/from16 v13, p2

    :goto_a
    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_16
    return-void

    .line 1053
    :cond_17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "DrawerLayout must be measured with MeasureSpec.EXACTLY."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final onMessageChannelReady(Landroid/view/View;)I
    .locals 3

    .line 709
    invoke-static {p1}, Lo/isSessionReady;->extraCallback(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 712
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lo/isSessionReady$onNavigationEvent;

    iget p1, p1, Lo/isSessionReady$onNavigationEvent;->extraCallback:I

    .line 8652
    invoke-static {p0}, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_9

    const/4 v2, 0x5

    if-eq p1, v2, :cond_6

    const v2, 0x800003

    if-eq p1, v2, :cond_3

    const v2, 0x800005

    if-eq p1, v2, :cond_0

    goto :goto_4

    .line 8686
    :cond_0
    iget p1, p0, Lo/isSessionReady;->ICustomTabsService$Stub:I

    if-eq p1, v1, :cond_1

    return p1

    :cond_1
    if-nez v0, :cond_2

    .line 8689
    iget p1, p0, Lo/isSessionReady;->IPostMessageService:I

    goto :goto_0

    :cond_2
    iget p1, p0, Lo/isSessionReady;->IPostMessageService$Stub:I

    :goto_0
    if-eq p1, v1, :cond_c

    return p1

    .line 8676
    :cond_3
    iget p1, p0, Lo/isSessionReady;->validateRelationship:I

    if-eq p1, v1, :cond_4

    return p1

    :cond_4
    if-nez v0, :cond_5

    .line 8679
    iget p1, p0, Lo/isSessionReady;->IPostMessageService$Stub:I

    goto :goto_1

    :cond_5
    iget p1, p0, Lo/isSessionReady;->IPostMessageService:I

    :goto_1
    if-eq p1, v1, :cond_c

    return p1

    .line 8666
    :cond_6
    iget p1, p0, Lo/isSessionReady;->IPostMessageService:I

    if-eq p1, v1, :cond_7

    return p1

    :cond_7
    if-nez v0, :cond_8

    .line 8669
    iget p1, p0, Lo/isSessionReady;->ICustomTabsService$Stub:I

    goto :goto_2

    :cond_8
    iget p1, p0, Lo/isSessionReady;->validateRelationship:I

    :goto_2
    if-eq p1, v1, :cond_c

    return p1

    .line 8656
    :cond_9
    iget p1, p0, Lo/isSessionReady;->IPostMessageService$Stub:I

    if-eq p1, v1, :cond_a

    return p1

    :cond_a
    if-nez v0, :cond_b

    .line 8659
    iget p1, p0, Lo/isSessionReady;->validateRelationship:I

    goto :goto_3

    :cond_b
    iget p1, p0, Lo/isSessionReady;->ICustomTabsService$Stub:I

    :goto_3
    if-eq p1, v1, :cond_c

    return p1

    :cond_c
    :goto_4
    const/4 p1, 0x0

    return p1

    .line 710
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "View "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a drawer"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onMessageChannelReady(Landroid/view/View;Z)V
    .locals 3

    .line 1757
    invoke-static {p1}, Lo/isSessionReady;->extraCallback(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1761
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lo/isSessionReady$onNavigationEvent;

    .line 1762
    iget-boolean v0, p0, Lo/isSessionReady;->ICustomTabsService$Stub$Proxy:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 1763
    iput p1, p2, Lo/isSessionReady$onNavigationEvent;->ICustomTabsCallback:F

    .line 1764
    iput v1, p2, Lo/isSessionReady$onNavigationEvent;->onPostMessage:I

    goto :goto_0

    .line 1766
    :cond_0
    iget v0, p2, Lo/isSessionReady$onNavigationEvent;->onPostMessage:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p2, Lo/isSessionReady$onNavigationEvent;->onPostMessage:I

    const/4 p2, 0x3

    .line 34945
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lo/isSessionReady$onNavigationEvent;

    iget v0, v0, Lo/isSessionReady$onNavigationEvent;->extraCallback:I

    .line 34946
    invoke-static {p0}, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub(Landroid/view/View;)I

    move-result v2

    invoke-static {v0, v2}, Lo/onQueueChanged;->onMessageChannelReady(II)I

    move-result v0

    and-int/2addr v0, p2

    if-ne v0, p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    .line 1769
    iget-object p2, p0, Lo/isSessionReady;->extraCallback:Lo/rate;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    .line 1770
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1769
    invoke-virtual {p2, p1, v0, v1}, Lo/rate;->onPostMessage(Landroid/view/View;II)Z

    goto :goto_0

    .line 1772
    :cond_2
    iget-object p2, p0, Lo/isSessionReady;->onPostMessage:Lo/rate;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p2, p1, v0, v1}, Lo/rate;->onPostMessage(Landroid/view/View;II)Z

    .line 1779
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 1758
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "View "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a sliding drawer"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final onNavigationEvent(I)Landroid/view/View;
    .locals 5

    .line 986
    invoke-static {p0}, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub(Landroid/view/View;)I

    move-result v0

    .line 985
    invoke-static {p1, v0}, Lo/onQueueChanged;->onMessageChannelReady(II)I

    move-result p1

    and-int/lit8 p1, p1, 0x7

    .line 987
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 989
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8945
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lo/isSessionReady$onNavigationEvent;

    iget v3, v3, Lo/isSessionReady$onNavigationEvent;->extraCallback:I

    .line 8946
    invoke-static {p0}, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub(Landroid/view/View;)I

    move-result v4

    invoke-static {v3, v4}, Lo/onQueueChanged;->onMessageChannelReady(II)I

    move-result v3

    and-int/lit8 v3, v3, 0x7

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final onNavigationEvent()V
    .locals 3

    const v0, 0x800005

    .line 35800
    invoke-virtual {p0, v0}, Lo/isSessionReady;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 35805
    invoke-virtual {p0, v0, v1}, Lo/isSessionReady;->onMessageChannelReady(Landroid/view/View;Z)V

    return-void

    .line 35802
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No drawer view found with gravity RIGHT"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35803
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final onPostMessage(Landroid/view/View;F)V
    .locals 2

    .line 927
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lo/isSessionReady$onNavigationEvent;

    .line 928
    iget v1, v0, Lo/isSessionReady$onNavigationEvent;->ICustomTabsCallback:F

    cmpl-float v1, p2, v1

    if-nez v1, :cond_0

    return-void

    .line 932
    :cond_0
    iput p2, v0, Lo/isSessionReady$onNavigationEvent;->ICustomTabsCallback:F

    .line 8916
    iget-object p2, p0, Lo/isSessionReady;->onRelationshipValidationResult:Ljava/util/List;

    if-eqz p2, :cond_1

    .line 8919
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_1

    .line 8921
    iget-object v0, p0, Lo/isSessionReady;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/isSessionReady$onPostMessage;

    invoke-interface {v0, p1}, Lo/isSessionReady$onPostMessage;->onPostMessage(Landroid/view/View;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method onPostMessage(Landroid/view/View;Z)V
    .locals 4

    .line 900
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 902
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez p2, :cond_0

    .line 903
    invoke-static {v2}, Lo/isSessionReady;->extraCallback(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    if-ne v2, p1, :cond_2

    :cond_1
    const/4 v3, 0x1

    .line 906
    invoke-static {v2, v3}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;I)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x4

    .line 909
    invoke-static {v2, v3}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final onPostMessage(Lo/isSessionReady$onPostMessage;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 514
    :cond_0
    iget-object v0, p0, Lo/isSessionReady;->onRelationshipValidationResult:Ljava/util/List;

    if-nez v0, :cond_1

    .line 515
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/isSessionReady;->onRelationshipValidationResult:Ljava/util/List;

    .line 517
    :cond_1
    iget-object v0, p0, Lo/isSessionReady;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onPostMessage()Z
    .locals 1

    const v0, 0x800005

    .line 1836
    invoke-virtual {p0, v0}, Lo/isSessionReady;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1838
    invoke-static {v0}, Lo/isSessionReady;->onPostMessage(Landroid/view/View;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 1997
    instance-of v0, p1, Lo/isSessionReady$extraCallback;

    if-nez v0, :cond_0

    .line 1998
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 2002
    :cond_0
    check-cast p1, Lo/isSessionReady$extraCallback;

    .line 2003
    invoke-virtual {p1}, Lo/pause;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2005
    iget v0, p1, Lo/isSessionReady$extraCallback;->onMessageChannelReady:I

    if-eqz v0, :cond_1

    .line 2006
    iget v0, p1, Lo/isSessionReady$extraCallback;->onMessageChannelReady:I

    invoke-virtual {p0, v0}, Lo/isSessionReady;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 37678
    invoke-direct {p0, v0, v1}, Lo/isSessionReady;->extraCallback(Landroid/view/View;Z)V

    .line 2012
    :cond_1
    iget v0, p1, Lo/isSessionReady$extraCallback;->onNavigationEvent:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 2013
    iget v0, p1, Lo/isSessionReady$extraCallback;->onNavigationEvent:I

    invoke-virtual {p0, v0, v1}, Lo/isSessionReady;->setDrawerLockMode(II)V

    .line 2015
    :cond_2
    iget v0, p1, Lo/isSessionReady$extraCallback;->extraCallback:I

    if-eq v0, v1, :cond_3

    .line 2016
    iget v0, p1, Lo/isSessionReady$extraCallback;->extraCallback:I

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v2}, Lo/isSessionReady;->setDrawerLockMode(II)V

    .line 2018
    :cond_3
    iget v0, p1, Lo/isSessionReady$extraCallback;->onPostMessage:I

    if-eq v0, v1, :cond_4

    .line 2019
    iget v0, p1, Lo/isSessionReady$extraCallback;->onPostMessage:I

    const v2, 0x800003

    invoke-virtual {p0, v0, v2}, Lo/isSessionReady;->setDrawerLockMode(II)V

    .line 2021
    :cond_4
    iget v0, p1, Lo/isSessionReady$extraCallback;->ICustomTabsCallback:I

    if-eq v0, v1, :cond_5

    .line 2022
    iget p1, p1, Lo/isSessionReady$extraCallback;->ICustomTabsCallback:I

    const v0, 0x800005

    invoke-virtual {p0, p1, v0}, Lo/isSessionReady;->setDrawerLockMode(II)V

    :cond_5
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    .line 15158
    sget-boolean p1, Lo/isSessionReady;->warmup:Z

    if-nez p1, :cond_0

    .line 15161
    invoke-direct {p0}, Lo/isSessionReady;->ICustomTabsCallback$Stub()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lo/isSessionReady;->notify:Landroid/graphics/drawable/Drawable;

    .line 15162
    invoke-direct {p0}, Lo/isSessionReady;->onTransact()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lo/isSessionReady;->setDefaultImpl:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 9

    .line 2028
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2029
    new-instance v1, Lo/isSessionReady$extraCallback;

    invoke-direct {v1, v0}, Lo/isSessionReady$extraCallback;-><init>(Landroid/os/Parcelable;)V

    .line 2031
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    .line 2033
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2034
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lo/isSessionReady$onNavigationEvent;

    .line 2036
    iget v5, v4, Lo/isSessionReady$onNavigationEvent;->onPostMessage:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 2038
    :goto_1
    iget v7, v4, Lo/isSessionReady$onNavigationEvent;->onPostMessage:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    if-nez v5, :cond_3

    if-eqz v6, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2042
    :cond_3
    :goto_3
    iget v0, v4, Lo/isSessionReady$onNavigationEvent;->extraCallback:I

    iput v0, v1, Lo/isSessionReady$extraCallback;->onMessageChannelReady:I

    .line 2047
    :cond_4
    iget v0, p0, Lo/isSessionReady;->IPostMessageService$Stub:I

    iput v0, v1, Lo/isSessionReady$extraCallback;->onNavigationEvent:I

    .line 2048
    iget v0, p0, Lo/isSessionReady;->IPostMessageService:I

    iput v0, v1, Lo/isSessionReady$extraCallback;->extraCallback:I

    .line 2049
    iget v0, p0, Lo/isSessionReady;->validateRelationship:I

    iput v0, v1, Lo/isSessionReady$extraCallback;->onPostMessage:I

    .line 2050
    iget v0, p0, Lo/isSessionReady;->ICustomTabsService$Stub:I

    iput v0, v1, Lo/isSessionReady$extraCallback;->ICustomTabsCallback:I

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1569
    iget-object v0, p0, Lo/isSessionReady;->extraCallback:Lo/rate;

    invoke-virtual {v0, p1}, Lo/rate;->extraCallback(Landroid/view/MotionEvent;)V

    .line 1570
    iget-object v0, p0, Lo/isSessionReady;->onPostMessage:Lo/rate;

    invoke-virtual {v0, p1}, Lo/rate;->extraCallback(Landroid/view/MotionEvent;)V

    .line 1572
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_1

    .line 1609
    :cond_0
    invoke-direct {p0, v2}, Lo/isSessionReady;->extraCallback(Z)V

    .line 1611
    iput-boolean v1, p0, Lo/isSessionReady;->onTransact:Z

    goto :goto_1

    .line 1587
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1588
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 1590
    iget-object v3, p0, Lo/isSessionReady;->extraCallback:Lo/rate;

    float-to-int v4, v0

    float-to-int v5, p1

    invoke-virtual {v3, v4, v5}, Lo/rate;->extraCallback(II)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 27464
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lo/isSessionReady$onNavigationEvent;

    iget v3, v3, Lo/isSessionReady$onNavigationEvent;->extraCallback:I

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_3

    .line 1592
    iget v3, p0, Lo/isSessionReady;->IPostMessageService$Stub$Proxy:F

    sub-float/2addr v0, v3

    .line 1593
    iget v3, p0, Lo/isSessionReady;->cancelAll:F

    sub-float/2addr p1, v3

    .line 1594
    iget-object v3, p0, Lo/isSessionReady;->extraCallback:Lo/rate;

    .line 27503
    iget v3, v3, Lo/rate;->onMessageChannelReady:I

    mul-float v0, v0, v0

    mul-float p1, p1, p1

    add-float/2addr v0, p1

    mul-int v3, v3, v3

    int-to-float p1, v3

    cmpg-float p1, v0, p1

    if-gez p1, :cond_3

    .line 1597
    invoke-direct {p0}, Lo/isSessionReady;->onMessageChannelReady()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1599
    invoke-virtual {p0, p1}, Lo/isSessionReady;->onMessageChannelReady(Landroid/view/View;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    .line 1603
    :cond_4
    invoke-direct {p0, v1}, Lo/isSessionReady;->extraCallback(Z)V

    goto :goto_1

    .line 1577
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1578
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 1579
    iput v0, p0, Lo/isSessionReady;->IPostMessageService$Stub$Proxy:F

    .line 1580
    iput p1, p0, Lo/isSessionReady;->cancelAll:F

    .line 1582
    iput-boolean v1, p0, Lo/isSessionReady;->onTransact:Z

    :goto_1
    return v2
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 1625
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1629
    invoke-direct {p0, p1}, Lo/isSessionReady;->extraCallback(Z)V

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1302
    iget-boolean v0, p0, Lo/isSessionReady;->extraCommand:Z

    if-nez v0, :cond_0

    .line 1303
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setChildInsets(Ljava/lang/Object;Z)V
    .locals 0

    .line 405
    iput-object p1, p0, Lo/isSessionReady;->INotificationSideChannel$Stub$Proxy:Ljava/lang/Object;

    .line 406
    iput-boolean p2, p0, Lo/isSessionReady;->getDefaultImpl:Z

    if-nez p2, :cond_0

    .line 407
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 408
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setDrawerElevation(F)V
    .locals 2

    .line 376
    iput p1, p0, Lo/isSessionReady;->ICustomTabsCallback$Stub$Proxy:F

    const/4 p1, 0x0

    .line 377
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 378
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 379
    invoke-static {v0}, Lo/isSessionReady;->extraCallback(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 380
    iget v1, p0, Lo/isSessionReady;->ICustomTabsCallback$Stub$Proxy:F

    invoke-static {v0, v1}, Lo/unregisterCallbackListener;->onPostMessage(Landroid/view/View;F)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setDrawerListener(Lo/isSessionReady$onPostMessage;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 493
    iget-object v0, p0, Lo/isSessionReady;->INotificationSideChannel:Lo/isSessionReady$onPostMessage;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    .line 7531
    iget-object v1, p0, Lo/isSessionReady;->onRelationshipValidationResult:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 7535
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p1, :cond_1

    .line 497
    invoke-virtual {p0, p1}, Lo/isSessionReady;->onPostMessage(Lo/isSessionReady$onPostMessage;)V

    .line 501
    :cond_1
    iput-object p1, p0, Lo/isSessionReady;->INotificationSideChannel:Lo/isSessionReady$onPostMessage;

    return-void
.end method

.method public setDrawerLockMode(I)V
    .locals 1

    const/4 v0, 0x3

    .line 552
    invoke-virtual {p0, p1, v0}, Lo/isSessionReady;->setDrawerLockMode(II)V

    const/4 v0, 0x5

    .line 553
    invoke-virtual {p0, p1, v0}, Lo/isSessionReady;->setDrawerLockMode(II)V

    return-void
.end method

.method public setDrawerLockMode(II)V
    .locals 3

    .line 577
    invoke-static {p0}, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub(Landroid/view/View;)I

    move-result v0

    .line 576
    invoke-static {p2, v0}, Lo/onQueueChanged;->onMessageChannelReady(II)I

    move-result v0

    const/4 v1, 0x3

    if-eq p2, v1, :cond_3

    const/4 v2, 0x5

    if-eq p2, v2, :cond_2

    const v2, 0x800003

    if-eq p2, v2, :cond_1

    const v2, 0x800005

    if-eq p2, v2, :cond_0

    goto :goto_0

    .line 590
    :cond_0
    iput p1, p0, Lo/isSessionReady;->ICustomTabsService$Stub:I

    goto :goto_0

    .line 587
    :cond_1
    iput p1, p0, Lo/isSessionReady;->validateRelationship:I

    goto :goto_0

    .line 584
    :cond_2
    iput p1, p0, Lo/isSessionReady;->IPostMessageService:I

    goto :goto_0

    .line 581
    :cond_3
    iput p1, p0, Lo/isSessionReady;->IPostMessageService$Stub:I

    :goto_0
    if-eqz p1, :cond_5

    if-ne v0, v1, :cond_4

    .line 596
    iget-object p2, p0, Lo/isSessionReady;->extraCallback:Lo/rate;

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lo/isSessionReady;->onPostMessage:Lo/rate;

    .line 597
    :goto_1
    invoke-virtual {p2}, Lo/rate;->extraCallback()V

    :cond_5
    const/4 p2, 0x1

    if-eq p1, p2, :cond_7

    const/4 v1, 0x2

    if-eq p1, v1, :cond_6

    goto :goto_2

    .line 601
    :cond_6
    invoke-virtual {p0, v0}, Lo/isSessionReady;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 7678
    invoke-direct {p0, p1, p2}, Lo/isSessionReady;->extraCallback(Landroid/view/View;Z)V

    return-void

    .line 607
    :cond_7
    invoke-virtual {p0, v0}, Lo/isSessionReady;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 7747
    invoke-virtual {p0, p1, p2}, Lo/isSessionReady;->onMessageChannelReady(Landroid/view/View;Z)V

    :cond_8
    :goto_2
    return-void
.end method

.method public setDrawerLockMode(ILandroid/view/View;)V
    .locals 2

    .line 635
    invoke-static {p2}, Lo/isSessionReady;->extraCallback(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lo/isSessionReady$onNavigationEvent;

    iget p2, p2, Lo/isSessionReady$onNavigationEvent;->extraCallback:I

    .line 640
    invoke-virtual {p0, p1, p2}, Lo/isSessionReady;->setDrawerLockMode(II)V

    return-void

    .line 636
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "View "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is not a drawer with appropriate layout_gravity"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDrawerShadow(II)V
    .locals 1

    .line 465
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lo/fromParcel;->onPostMessage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lo/isSessionReady;->setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V
    .locals 2

    .line 431
    sget-boolean v0, Lo/isSessionReady;->warmup:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x800003

    and-int v1, p2, v0

    if-ne v1, v0, :cond_1

    .line 436
    iput-object p1, p0, Lo/isSessionReady;->INotificationSideChannel$Default:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    const v0, 0x800005

    and-int v1, p2, v0

    if-ne v1, v0, :cond_2

    .line 438
    iput-object p1, p0, Lo/isSessionReady;->INotificationSideChannel$Stub:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 440
    iput-object p1, p0, Lo/isSessionReady;->RemoteActionCompatParcelizer:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_5

    .line 442
    iput-object p1, p0, Lo/isSessionReady;->IconCompatParcelizer:Landroid/graphics/drawable/Drawable;

    .line 7158
    :goto_0
    sget-boolean p1, Lo/isSessionReady;->warmup:Z

    if-nez p1, :cond_4

    .line 7161
    invoke-direct {p0}, Lo/isSessionReady;->ICustomTabsCallback$Stub()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lo/isSessionReady;->notify:Landroid/graphics/drawable/Drawable;

    .line 7162
    invoke-direct {p0}, Lo/isSessionReady;->onTransact()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lo/isSessionReady;->setDefaultImpl:Landroid/graphics/drawable/Drawable;

    .line 447
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_5
    return-void
.end method

.method public setDrawerTitle(ILjava/lang/CharSequence;)V
    .locals 1

    .line 728
    invoke-static {p0}, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub(Landroid/view/View;)I

    move-result v0

    .line 727
    invoke-static {p1, v0}, Lo/onQueueChanged;->onMessageChannelReady(II)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 730
    iput-object p2, p0, Lo/isSessionReady;->ICustomTabsCallback$Stub:Ljava/lang/CharSequence;

    return-void

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 732
    iput-object p2, p0, Lo/isSessionReady;->asInterface:Ljava/lang/CharSequence;

    :cond_1
    return-void
.end method

.method public setScrimColor(I)V
    .locals 0

    .line 474
    iput p1, p0, Lo/isSessionReady;->newSession:I

    .line 475
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStatusBarBackground(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1360
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lo/fromParcel;->onPostMessage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lo/isSessionReady;->cancel:Landroid/graphics/drawable/Drawable;

    .line 1361
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1339
    iput-object p1, p0, Lo/isSessionReady;->cancel:Landroid/graphics/drawable/Drawable;

    .line 1340
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStatusBarBackgroundColor(I)V
    .locals 1

    .line 1372
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lo/isSessionReady;->cancel:Landroid/graphics/drawable/Drawable;

    .line 1373
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
