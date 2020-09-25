.class public final Lo/setSubscription$ICustomTabsCallback;
.super Lo/onChildrenLoaded$onPostMessage;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setSubscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field public MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21:F

.field public MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal:F

.field public MediaBrowserCompat$CustomActionCallback:F

.field public MediaBrowserCompat$CustomActionResultReceiver:F

.field public MediaBrowserCompat$ItemCallback$ItemCallbackApi23:F

.field public onConnected:Z

.field public onConnectionFailed:F

.field public onError:F

.field public onItemLoaded:F

.field public onProgressUpdate:F

.field public onReceiveResult:F

.field public onResult:F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, -0x2

    .line 82
    invoke-direct {p0, v0, v0}, Lo/onChildrenLoaded$onPostMessage;-><init>(II)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 67
    iput v0, p0, Lo/setSubscription$ICustomTabsCallback;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21:F

    const/4 v1, 0x0

    .line 68
    iput-boolean v1, p0, Lo/setSubscription$ICustomTabsCallback;->onConnected:Z

    const/4 v1, 0x0

    .line 69
    iput v1, p0, Lo/setSubscription$ICustomTabsCallback;->onConnectionFailed:F

    .line 70
    iput v1, p0, Lo/setSubscription$ICustomTabsCallback;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal:F

    .line 71
    iput v1, p0, Lo/setSubscription$ICustomTabsCallback;->onProgressUpdate:F

    .line 72
    iput v1, p0, Lo/setSubscription$ICustomTabsCallback;->MediaBrowserCompat$CustomActionCallback:F

    .line 73
    iput v0, p0, Lo/setSubscription$ICustomTabsCallback;->onError:F

    .line 74
    iput v0, p0, Lo/setSubscription$ICustomTabsCallback;->onResult:F

    .line 75
    iput v1, p0, Lo/setSubscription$ICustomTabsCallback;->MediaBrowserCompat$CustomActionResultReceiver:F

    .line 76
    iput v1, p0, Lo/setSubscription$ICustomTabsCallback;->MediaBrowserCompat$ItemCallback$ItemCallbackApi23:F

    .line 77
    iput v1, p0, Lo/setSubscription$ICustomTabsCallback;->onItemLoaded:F

    .line 78
    iput v1, p0, Lo/setSubscription$ICustomTabsCallback;->onReceiveResult:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 90
    invoke-direct {p0, p1, p2}, Lo/onChildrenLoaded$onPostMessage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 67
    iput v0, p0, Lo/setSubscription$ICustomTabsCallback;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21:F

    const/4 v1, 0x0

    .line 68
    iput-boolean v1, p0, Lo/setSubscription$ICustomTabsCallback;->onConnected:Z

    const/4 v2, 0x0

    .line 69
    iput v2, p0, Lo/setSubscription$ICustomTabsCallback;->onConnectionFailed:F

    .line 70
    iput v2, p0, Lo/setSubscription$ICustomTabsCallback;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal:F

    .line 71
    iput v2, p0, Lo/setSubscription$ICustomTabsCallback;->onProgressUpdate:F

    .line 72
    iput v2, p0, Lo/setSubscription$ICustomTabsCallback;->MediaBrowserCompat$CustomActionCallback:F

    .line 73
    iput v0, p0, Lo/setSubscription$ICustomTabsCallback;->onError:F

    .line 74
    iput v0, p0, Lo/setSubscription$ICustomTabsCallback;->onResult:F

    .line 75
    iput v2, p0, Lo/setSubscription$ICustomTabsCallback;->MediaBrowserCompat$CustomActionResultReceiver:F

    .line 76
    iput v2, p0, Lo/setSubscription$ICustomTabsCallback;->MediaBrowserCompat$ItemCallback$ItemCallbackApi23:F

    .line 77
    iput v2, p0, Lo/setSubscription$ICustomTabsCallback;->onItemLoaded:F

    .line 78
    iput v2, p0, Lo/setSubscription$ICustomTabsCallback;->onReceiveResult:F

    .line 91
    sget-object v0, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 92
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    :goto_0
    if-ge v1, p2, :cond_c

    .line 94
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    .line 95
    sget v3, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_android_alpha:I

    if-ne v0, v3, :cond_0

    .line 96
    iget v3, p0, Lo/setSubscription$ICustomTabsCallback;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21:F

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lo/setSubscription$ICustomTabsCallback;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21:F

    goto/16 :goto_1

    .line 97
    :cond_0
    sget v3, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_android_elevation:I

    if-ne v0, v3, :cond_1

    .line 98
    iget v3, p0, Lo/setSubscription$ICustomTabsCallback;->onConnectionFailed:F

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lo/setSubscription$ICustomTabsCallback;->onConnectionFailed:F

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lo/setSubscription$ICustomTabsCallback;->onConnected:Z

    goto/16 :goto_1

    .line 100
    :cond_1
    sget v3, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_android_rotationX:I

    if-ne v0, v3, :cond_2

    .line 101
    iget v3, p0, Lo/setSubscription$ICustomTabsCallback;->onProgressUpdate:F

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lo/setSubscription$ICustomTabsCallback;->onProgressUpdate:F

    goto/16 :goto_1

    .line 102
    :cond_2
    sget v3, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_android_rotationY:I

    if-ne v0, v3, :cond_3

    .line 103
    iget v3, p0, Lo/setSubscription$ICustomTabsCallback;->MediaBrowserCompat$CustomActionCallback:F

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lo/setSubscription$ICustomTabsCallback;->MediaBrowserCompat$CustomActionCallback:F

    goto :goto_1

    .line 104
    :cond_3
    sget v3, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_android_rotation:I

    if-ne v0, v3, :cond_4

    .line 105
    iget v3, p0, Lo/setSubscription$ICustomTabsCallback;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal:F

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lo/setSubscription$ICustomTabsCallback;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal:F

    goto :goto_1

    .line 106
    :cond_4
    sget v3, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_android_scaleX:I

    if-ne v0, v3, :cond_5

    .line 107
    iget v3, p0, Lo/setSubscription$ICustomTabsCallback;->onError:F

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lo/setSubscription$ICustomTabsCallback;->onError:F

    goto :goto_1

    .line 108
    :cond_5
    sget v3, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_android_scaleY:I

    if-ne v0, v3, :cond_6

    .line 109
    iget v3, p0, Lo/setSubscription$ICustomTabsCallback;->onResult:F

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lo/setSubscription$ICustomTabsCallback;->onResult:F

    goto :goto_1

    .line 110
    :cond_6
    sget v3, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_android_transformPivotX:I

    if-ne v0, v3, :cond_7

    .line 111
    iget v3, p0, Lo/setSubscription$ICustomTabsCallback;->MediaBrowserCompat$CustomActionResultReceiver:F

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lo/setSubscription$ICustomTabsCallback;->MediaBrowserCompat$CustomActionResultReceiver:F

    goto :goto_1

    .line 112
    :cond_7
    sget v3, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_android_transformPivotY:I

    if-ne v0, v3, :cond_8

    .line 113
    iget v3, p0, Lo/setSubscription$ICustomTabsCallback;->MediaBrowserCompat$ItemCallback$ItemCallbackApi23:F

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lo/setSubscription$ICustomTabsCallback;->MediaBrowserCompat$ItemCallback$ItemCallbackApi23:F

    goto :goto_1

    .line 114
    :cond_8
    sget v3, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_android_translationX:I

    if-ne v0, v3, :cond_9

    .line 115
    iget v3, p0, Lo/setSubscription$ICustomTabsCallback;->onItemLoaded:F

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lo/setSubscription$ICustomTabsCallback;->onItemLoaded:F

    goto :goto_1

    .line 116
    :cond_9
    sget v3, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_android_translationY:I

    if-ne v0, v3, :cond_a

    .line 117
    iget v3, p0, Lo/setSubscription$ICustomTabsCallback;->onReceiveResult:F

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lo/setSubscription$ICustomTabsCallback;->onReceiveResult:F

    goto :goto_1

    .line 118
    :cond_a
    sget v3, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet_android_translationZ:I

    if-ne v0, v3, :cond_b

    .line 119
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lo/setSubscription$ICustomTabsCallback;->onItemLoaded:F

    :cond_b
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_c
    return-void
.end method
