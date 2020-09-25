.class public Lo/FirebaseAnalytics;
.super Lo/setFirebaseUIVersion;
.source ""

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Lo/signInWithEmailAndPassword$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/FirebaseAnalytics$ICustomTabsCallback;
    }
.end annotation


# static fields
.field private static final read:Landroid/graphics/drawable/ShapeDrawable;

.field private static final write:[I


# instance fields
.field private AudioAttributesImplApi21Parcelizer:Z

.field private AudioAttributesImplBaseParcelizer:Landroid/graphics/drawable/Drawable;

.field ICustomTabsCallback:Landroid/content/res/ColorStateList;

.field ICustomTabsCallback$Stub:F

.field ICustomTabsCallback$Stub$Proxy:Landroid/graphics/drawable/Drawable;

.field ICustomTabsService:Z

.field ICustomTabsService$Stub:F

.field final ICustomTabsService$Stub$Proxy:Landroid/content/Context;

.field INotificationSideChannel:Z

.field INotificationSideChannel$Default:Z

.field INotificationSideChannel$Stub:Z

.field INotificationSideChannel$Stub$Proxy:Landroid/text/TextUtils$TruncateAt;

.field IPostMessageService:F

.field IPostMessageService$Stub:F

.field IPostMessageService$Stub$Proxy:Landroid/content/res/ColorStateList;

.field private MediaBrowserCompat:Landroid/content/res/ColorStateList;

.field private MediaBrowserCompat$CallbackHandler:I

.field private MediaBrowserCompat$ConnectionCallback:I

.field asBinder:Z

.field asInterface:Landroid/graphics/drawable/Drawable;

.field final cancel:Lo/signInWithEmailAndPassword;

.field cancelAll:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lo/FirebaseAnalytics$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field

.field private connect:Landroid/content/res/ColorStateList;

.field private disconnect:F

.field extraCallback:Landroid/content/res/ColorStateList;

.field extraCommand:Landroid/graphics/drawable/Drawable;

.field private final getExtras:Landroid/graphics/Paint;

.field getInterfaceDescriptor:Z

.field private getItem:I

.field private getNotifyChildrenChangedOptions:Landroid/graphics/ColorFilter;

.field private final getRoot:Landroid/graphics/PointF;

.field private getServiceComponent:Landroid/content/res/ColorStateList;

.field private final getSessionToken:Landroid/graphics/RectF;

.field private handleMessage:I

.field private final isConnected:Landroid/graphics/Paint$FontMetrics;

.field mayLaunchUrl:F

.field newSession:Ljava/lang/CharSequence;

.field notify:Z

.field private onConnected:[I

.field private onConnectionFailed:Landroid/graphics/PorterDuffColorFilter;

.field private onConnectionSuspended:Landroid/content/res/ColorStateList;

.field onMessageChannelReady:F

.field onNavigationEvent:F

.field onPostMessage:Landroid/content/res/ColorStateList;

.field onRelationshipValidationResult:Ljava/lang/CharSequence;

.field onTransact:Z

.field postMessage:F

.field requestPostMessageChannel:F

.field private search:I

.field private final sendCustomAction:Landroid/graphics/Path;

.field private setCallbacksMessenger:I

.field setDefaultImpl:I

.field private setInternalConnectionCallback:Landroid/graphics/PorterDuff$Mode;

.field private subscribe:I

.field private unsubscribe:I

.field updateVisuals:F

.field validateRelationship:F

.field warmup:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101009e

    aput v2, v0, v1

    .line 163
    sput-object v0, Lo/FirebaseAnalytics;->write:[I

    .line 166
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    sput-object v0, Lo/FirebaseAnalytics;->read:Landroid/graphics/drawable/ShapeDrawable;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 307
    invoke-direct {p0, p1, p2, p3, p4}, Lo/setFirebaseUIVersion;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 237
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lo/FirebaseAnalytics;->getExtras:Landroid/graphics/Paint;

    .line 239
    new-instance p2, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {p2}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object p2, p0, Lo/FirebaseAnalytics;->isConnected:Landroid/graphics/Paint$FontMetrics;

    .line 240
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lo/FirebaseAnalytics;->getSessionToken:Landroid/graphics/RectF;

    .line 241
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lo/FirebaseAnalytics;->getRoot:Landroid/graphics/PointF;

    .line 242
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lo/FirebaseAnalytics;->sendCustomAction:Landroid/graphics/Path;

    const/16 p2, 0xff

    .line 254
    iput p2, p0, Lo/FirebaseAnalytics;->setCallbacksMessenger:I

    .line 258
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object p2, p0, Lo/FirebaseAnalytics;->setInternalConnectionCallback:Landroid/graphics/PorterDuff$Mode;

    .line 262
    new-instance p2, Ljava/lang/ref/WeakReference;

    const/4 p4, 0x0

    invoke-direct {p2, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lo/FirebaseAnalytics;->cancelAll:Ljava/lang/ref/WeakReference;

    .line 2585
    iget-object p2, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    new-instance p4, Lo/getUsername;

    invoke-direct {p4, p1}, Lo/getUsername;-><init>(Landroid/content/Context;)V

    iput-object p4, p2, Lo/setFirebaseUIVersion$extraCallback;->onPostMessage:Lo/getUsername;

    .line 2586
    invoke-virtual {p0}, Lo/setFirebaseUIVersion;->onMessageChannelReady()V

    .line 310
    iput-object p1, p0, Lo/FirebaseAnalytics;->ICustomTabsService$Stub$Proxy:Landroid/content/Context;

    .line 311
    new-instance p2, Lo/signInWithEmailAndPassword;

    invoke-direct {p2, p0}, Lo/signInWithEmailAndPassword;-><init>(Lo/signInWithEmailAndPassword$onPostMessage;)V

    iput-object p2, p0, Lo/FirebaseAnalytics;->cancel:Lo/signInWithEmailAndPassword;

    const-string p4, ""

    .line 313
    iput-object p4, p0, Lo/FirebaseAnalytics;->onRelationshipValidationResult:Ljava/lang/CharSequence;

    .line 3087
    iget-object p2, p2, Lo/signInWithEmailAndPassword;->onPostMessage:Landroid/text/TextPaint;

    .line 315
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p2, Landroid/text/TextPaint;->density:F

    .line 321
    sget-object p1, Lo/FirebaseAnalytics;->write:[I

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 322
    sget-object p1, Lo/FirebaseAnalytics;->write:[I

    invoke-virtual {p0, p1}, Lo/FirebaseAnalytics;->onNavigationEvent([I)Z

    .line 323
    iput-boolean p3, p0, Lo/FirebaseAnalytics;->INotificationSideChannel$Stub:Z

    .line 325
    sget-boolean p1, Lo/isSignInWithEmailLink;->onMessageChannelReady:Z

    if-eqz p1, :cond_0

    .line 327
    sget-object p1, Lo/FirebaseAnalytics;->read:Landroid/graphics/drawable/ShapeDrawable;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/ShapeDrawable;->setTint(I)V

    :cond_0
    return-void
.end method

.method private ICustomTabsService()F
    .locals 3

    .line 7497
    iget-boolean v0, p0, Lo/FirebaseAnalytics;->asBinder:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/FirebaseAnalytics;->asInterface:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 7502
    iget-boolean v0, p0, Lo/FirebaseAnalytics;->getInterfaceDescriptor:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/FirebaseAnalytics;->extraCommand:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lo/FirebaseAnalytics;->INotificationSideChannel:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    return v0

    .line 518
    :cond_3
    :goto_2
    iget v0, p0, Lo/FirebaseAnalytics;->requestPostMessageChannel:F

    iget v1, p0, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub:F

    add-float/2addr v0, v1

    iget v1, p0, Lo/FirebaseAnalytics;->updateVisuals:F

    add-float/2addr v0, v1

    return v0
.end method

.method private extraCallback(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 3

    .line 773
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 27497
    iget-boolean v0, p0, Lo/FirebaseAnalytics;->asBinder:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/FirebaseAnalytics;->asInterface:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 27502
    iget-boolean v0, p0, Lo/FirebaseAnalytics;->getInterfaceDescriptor:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/FirebaseAnalytics;->extraCommand:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lo/FirebaseAnalytics;->INotificationSideChannel:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    .line 776
    :cond_2
    iget v0, p0, Lo/FirebaseAnalytics;->postMessage:F

    iget v1, p0, Lo/FirebaseAnalytics;->requestPostMessageChannel:F

    add-float/2addr v0, v1

    .line 778
    invoke-static {p0}, Lo/MediaMetadataCompat$BitmapKey;->onRelationshipValidationResult(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_3

    .line 779
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 780
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub:F

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    goto :goto_2

    .line 782
    :cond_3
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 783
    iget v0, p2, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub:F

    sub-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 786
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    iget v0, p0, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    iput p1, p2, Landroid/graphics/RectF;->top:F

    .line 787
    iget p1, p2, Landroid/graphics/RectF;->top:F

    iget v0, p0, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub:F

    add-float/2addr p1, v0

    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    :cond_4
    return-void
.end method

.method private static extraCallback([I)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1322
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p0, v2

    const v4, 0x10100a0

    if-ne v3, v4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private newSession()F
    .locals 2

    .line 7507
    iget-boolean v0, p0, Lo/FirebaseAnalytics;->onTransact:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 529
    iget v0, p0, Lo/FirebaseAnalytics;->IPostMessageService$Stub:F

    iget v1, p0, Lo/FirebaseAnalytics;->warmup:F

    add-float/2addr v0, v1

    iget v1, p0, Lo/FirebaseAnalytics;->IPostMessageService:F

    add-float/2addr v0, v1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private onMessageChannelReady([I[I)Z
    .locals 6

    .line 981
    invoke-super {p0, p1}, Lo/setFirebaseUIVersion;->onStateChange([I)Z

    move-result v0

    .line 984
    iget-object v1, p0, Lo/FirebaseAnalytics;->onPostMessage:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v3, p0, Lo/FirebaseAnalytics;->subscribe:I

    .line 986
    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 988
    :goto_0
    iget v3, p0, Lo/FirebaseAnalytics;->subscribe:I

    const/4 v4, 0x1

    if-eq v3, v1, :cond_1

    .line 989
    iput v1, p0, Lo/FirebaseAnalytics;->subscribe:I

    const/4 v0, 0x1

    .line 993
    :cond_1
    iget-object v3, p0, Lo/FirebaseAnalytics;->ICustomTabsCallback:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_2

    iget v5, p0, Lo/FirebaseAnalytics;->unsubscribe:I

    .line 995
    invoke-virtual {v3, p1, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 997
    :goto_1
    iget v5, p0, Lo/FirebaseAnalytics;->unsubscribe:I

    if-eq v5, v3, :cond_3

    .line 998
    iput v3, p0, Lo/FirebaseAnalytics;->unsubscribe:I

    const/4 v0, 0x1

    .line 37140
    :cond_3
    invoke-static {v3, v1}, Lo/getString;->onMessageChannelReady(II)I

    move-result v1

    .line 1004
    iget v3, p0, Lo/FirebaseAnalytics;->getItem:I

    if-eq v3, v1, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 37301
    :goto_2
    iget-object v5, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v5, v5, Lo/setFirebaseUIVersion$extraCallback;->onNavigationEvent:Landroid/content/res/ColorStateList;

    if-nez v5, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    or-int/2addr v3, v5

    if-eqz v3, :cond_7

    .line 1008
    iput v1, p0, Lo/FirebaseAnalytics;->getItem:I

    .line 1009
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 38288
    iget-object v1, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v1, v1, Lo/setFirebaseUIVersion$extraCallback;->onNavigationEvent:Landroid/content/res/ColorStateList;

    if-eq v1, v0, :cond_6

    .line 38289
    iget-object v1, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput-object v0, v1, Lo/setFirebaseUIVersion$extraCallback;->onNavigationEvent:Landroid/content/res/ColorStateList;

    .line 38290
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/setFirebaseUIVersion;->onStateChange([I)Z

    :cond_6
    const/4 v0, 0x1

    .line 1013
    :cond_7
    iget-object v1, p0, Lo/FirebaseAnalytics;->MediaBrowserCompat:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_8

    iget v3, p0, Lo/FirebaseAnalytics;->search:I

    .line 1015
    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    .line 1017
    :goto_4
    iget v3, p0, Lo/FirebaseAnalytics;->search:I

    if-eq v3, v1, :cond_9

    .line 1018
    iput v1, p0, Lo/FirebaseAnalytics;->search:I

    const/4 v0, 0x1

    .line 1022
    :cond_9
    iget-object v1, p0, Lo/FirebaseAnalytics;->IPostMessageService$Stub$Proxy:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_a

    .line 1023
    invoke-static {p1}, Lo/isSignInWithEmailLink;->onMessageChannelReady([I)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lo/FirebaseAnalytics;->IPostMessageService$Stub$Proxy:Landroid/content/res/ColorStateList;

    iget v3, p0, Lo/FirebaseAnalytics;->handleMessage:I

    .line 1024
    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_5

    :cond_a
    const/4 v1, 0x0

    .line 1026
    :goto_5
    iget v3, p0, Lo/FirebaseAnalytics;->handleMessage:I

    if-eq v3, v1, :cond_b

    .line 1027
    iput v1, p0, Lo/FirebaseAnalytics;->handleMessage:I

    .line 1028
    iget-boolean v1, p0, Lo/FirebaseAnalytics;->notify:Z

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    .line 1033
    :cond_b
    iget-object v1, p0, Lo/FirebaseAnalytics;->cancel:Lo/signInWithEmailAndPassword;

    .line 39123
    iget-object v1, v1, Lo/signInWithEmailAndPassword;->ICustomTabsCallback$Stub:Lo/verifyPasswordResetCode;

    if-eqz v1, :cond_c

    .line 1034
    iget-object v1, p0, Lo/FirebaseAnalytics;->cancel:Lo/signInWithEmailAndPassword;

    .line 40123
    iget-object v1, v1, Lo/signInWithEmailAndPassword;->ICustomTabsCallback$Stub:Lo/verifyPasswordResetCode;

    .line 1035
    iget-object v1, v1, Lo/verifyPasswordResetCode;->extraCallback:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lo/FirebaseAnalytics;->cancel:Lo/signInWithEmailAndPassword;

    .line 41123
    iget-object v1, v1, Lo/signInWithEmailAndPassword;->ICustomTabsCallback$Stub:Lo/verifyPasswordResetCode;

    .line 1037
    iget-object v1, v1, Lo/verifyPasswordResetCode;->extraCallback:Landroid/content/res/ColorStateList;

    iget v3, p0, Lo/FirebaseAnalytics;->MediaBrowserCompat$CallbackHandler:I

    .line 1039
    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    .line 1041
    :goto_6
    iget v3, p0, Lo/FirebaseAnalytics;->MediaBrowserCompat$CallbackHandler:I

    if-eq v3, v1, :cond_d

    .line 1042
    iput v1, p0, Lo/FirebaseAnalytics;->MediaBrowserCompat$CallbackHandler:I

    const/4 v0, 0x1

    .line 1046
    :cond_d
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    invoke-static {v1}, Lo/FirebaseAnalytics;->extraCallback([I)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-boolean v1, p0, Lo/FirebaseAnalytics;->ICustomTabsService:Z

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_7

    :cond_e
    const/4 v1, 0x0

    .line 1047
    :goto_7
    iget-boolean v3, p0, Lo/FirebaseAnalytics;->INotificationSideChannel:Z

    if-eq v3, v1, :cond_10

    iget-object v3, p0, Lo/FirebaseAnalytics;->extraCommand:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_10

    .line 1048
    invoke-direct {p0}, Lo/FirebaseAnalytics;->ICustomTabsService()F

    move-result v0

    .line 1049
    iput-boolean v1, p0, Lo/FirebaseAnalytics;->INotificationSideChannel:Z

    .line 1050
    invoke-direct {p0}, Lo/FirebaseAnalytics;->ICustomTabsService()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_8

    :cond_f
    const/4 v0, 0x1

    :cond_10
    const/4 v1, 0x0

    .line 1058
    :goto_8
    iget-object v3, p0, Lo/FirebaseAnalytics;->onConnectionSuspended:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_11

    iget v5, p0, Lo/FirebaseAnalytics;->MediaBrowserCompat$ConnectionCallback:I

    invoke-virtual {v3, p1, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    goto :goto_9

    :cond_11
    const/4 v3, 0x0

    .line 1059
    :goto_9
    iget v5, p0, Lo/FirebaseAnalytics;->MediaBrowserCompat$ConnectionCallback:I

    if-eq v5, v3, :cond_14

    .line 1060
    iput v3, p0, Lo/FirebaseAnalytics;->MediaBrowserCompat$ConnectionCallback:I

    .line 1061
    iget-object v0, p0, Lo/FirebaseAnalytics;->onConnectionSuspended:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Lo/FirebaseAnalytics;->setInternalConnectionCallback:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_13

    if-nez v3, :cond_12

    goto :goto_a

    .line 42058
    :cond_12
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v5

    invoke-virtual {v0, v5, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 42059
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v5, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_b

    :cond_13
    :goto_a
    const/4 v5, 0x0

    .line 1061
    :goto_b
    iput-object v5, p0, Lo/FirebaseAnalytics;->onConnectionFailed:Landroid/graphics/PorterDuffColorFilter;

    const/4 v0, 0x1

    .line 1065
    :cond_14
    iget-object v3, p0, Lo/FirebaseAnalytics;->asInterface:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_15

    .line 42101
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 v3, 0x1

    goto :goto_c

    :cond_15
    const/4 v3, 0x0

    :goto_c
    if-eqz v3, :cond_16

    .line 1066
    iget-object v3, p0, Lo/FirebaseAnalytics;->asInterface:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    or-int/2addr v0, v3

    .line 1068
    :cond_16
    iget-object v3, p0, Lo/FirebaseAnalytics;->extraCommand:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_17

    .line 43101
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_17

    const/4 v3, 0x1

    goto :goto_d

    :cond_17
    const/4 v3, 0x0

    :goto_d
    if-eqz v3, :cond_18

    .line 1069
    iget-object v3, p0, Lo/FirebaseAnalytics;->extraCommand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    or-int/2addr v0, v3

    .line 1071
    :cond_18
    iget-object v3, p0, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_19

    .line 44101
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x1

    goto :goto_e

    :cond_19
    const/4 v3, 0x0

    :goto_e
    if-eqz v3, :cond_1a

    .line 1076
    array-length v3, p1

    array-length v5, p2

    add-int/2addr v3, v5

    new-array v3, v3, [I

    .line 1077
    array-length v5, p1

    invoke-static {p1, v2, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1078
    array-length p1, p1

    array-length v5, p2

    invoke-static {p2, v2, v3, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1080
    iget-object p1, p0, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    or-int/2addr v0, p1

    .line 1083
    :cond_1a
    sget-boolean p1, Lo/isSignInWithEmailLink;->onMessageChannelReady:Z

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lo/FirebaseAnalytics;->AudioAttributesImplBaseParcelizer:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1b

    .line 45101
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p1

    if-eqz p1, :cond_1b

    const/4 v2, 0x1

    :cond_1b
    if-eqz v2, :cond_1c

    .line 1084
    iget-object p1, p0, Lo/FirebaseAnalytics;->AudioAttributesImplBaseParcelizer:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_1c
    if-eqz v0, :cond_1d

    .line 1088
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1d
    if-eqz v1, :cond_1e

    .line 45452
    iget-object p1, p0, Lo/FirebaseAnalytics;->cancelAll:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/FirebaseAnalytics$ICustomTabsCallback;

    if-eqz p1, :cond_1e

    .line 45454
    invoke-interface {p1}, Lo/FirebaseAnalytics$ICustomTabsCallback;->onNavigationEvent()V

    :cond_1e
    return v0
.end method

.method private onNavigationEvent(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1275
    :cond_0
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1276
    invoke-static {p0}, Lo/MediaMetadataCompat$BitmapKey;->onRelationshipValidationResult(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    invoke-static {p1, v0}, Lo/MediaMetadataCompat$BitmapKey;->extraCallback(Landroid/graphics/drawable/Drawable;I)Z

    .line 1277
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1278
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1280
    iget-object v0, p0, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_2

    .line 1281
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48961
    iget-object v0, p0, Lo/FirebaseAnalytics;->onConnected:[I

    .line 1282
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1284
    :cond_1
    iget-object v0, p0, Lo/FirebaseAnalytics;->getServiceComponent:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lo/MediaMetadataCompat$BitmapKey;->ICustomTabsCallback(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void

    .line 1287
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1288
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1290
    :cond_3
    iget-object v0, p0, Lo/FirebaseAnalytics;->asInterface:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_4

    iget-boolean p1, p0, Lo/FirebaseAnalytics;->AudioAttributesImplApi21Parcelizer:Z

    if-eqz p1, :cond_4

    .line 1291
    iget-object p1, p0, Lo/FirebaseAnalytics;->connect:Landroid/content/res/ColorStateList;

    invoke-static {v0, p1}, Lo/MediaMetadataCompat$BitmapKey;->ICustomTabsCallback(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(F)V
    .locals 1

    .line 1712
    iget v0, p0, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1713
    invoke-direct {p0}, Lo/FirebaseAnalytics;->ICustomTabsService()F

    move-result v0

    .line 1714
    iput p1, p0, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub:F

    .line 1715
    invoke-direct {p0}, Lo/FirebaseAnalytics;->ICustomTabsService()F

    move-result p1

    .line 1717
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    .line 50348
    iget-object p1, p0, Lo/FirebaseAnalytics;->cancelAll:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/FirebaseAnalytics$ICustomTabsCallback;

    if-eqz p1, :cond_0

    .line 50350
    invoke-interface {p1}, Lo/FirebaseAnalytics$ICustomTabsCallback;->onNavigationEvent()V

    :cond_0
    return-void
.end method

.method final ICustomTabsCallback(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 2

    .line 900
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 27507
    iget-boolean v0, p0, Lo/FirebaseAnalytics;->onTransact:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 903
    iget v0, p0, Lo/FirebaseAnalytics;->ICustomTabsService$Stub:F

    iget v1, p0, Lo/FirebaseAnalytics;->IPostMessageService:F

    add-float/2addr v0, v1

    iget v1, p0, Lo/FirebaseAnalytics;->warmup:F

    add-float/2addr v0, v1

    iget v1, p0, Lo/FirebaseAnalytics;->IPostMessageService$Stub:F

    add-float/2addr v0, v1

    iget v1, p0, Lo/FirebaseAnalytics;->validateRelationship:F

    add-float/2addr v0, v1

    .line 910
    invoke-static {p0}, Lo/MediaMetadataCompat$BitmapKey;->onRelationshipValidationResult(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_1

    .line 911
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 912
    iget v1, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->left:F

    goto :goto_1

    .line 914
    :cond_1
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 915
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 918
    :goto_1
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 919
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    :cond_2
    return-void
.end method

.method public final ICustomTabsCallback(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 50336
    iget-object v0, p0, Lo/FirebaseAnalytics;->asInterface:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lo/MediaMetadataCompat$BitmapKey;->asBinder(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eq v0, p1, :cond_5

    .line 1653
    invoke-direct {p0}, Lo/FirebaseAnalytics;->ICustomTabsService()F

    move-result v2

    if-eqz p1, :cond_1

    .line 1654
    invoke-static {p1}, Lo/MediaMetadataCompat$BitmapKey;->ICustomTabsCallback$Stub(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    iput-object p1, p0, Lo/FirebaseAnalytics;->asInterface:Landroid/graphics/drawable/Drawable;

    .line 1655
    invoke-direct {p0}, Lo/FirebaseAnalytics;->ICustomTabsService()F

    move-result p1

    if-eqz v0, :cond_2

    .line 50338
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 50341
    :cond_2
    iget-boolean v0, p0, Lo/FirebaseAnalytics;->asBinder:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/FirebaseAnalytics;->asInterface:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    .line 1659
    iget-object v0, p0, Lo/FirebaseAnalytics;->asInterface:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lo/FirebaseAnalytics;->onNavigationEvent(Landroid/graphics/drawable/Drawable;)V

    .line 1662
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    cmpl-float p1, v2, p1

    if-eqz p1, :cond_5

    .line 50342
    iget-object p1, p0, Lo/FirebaseAnalytics;->cancelAll:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/FirebaseAnalytics$ICustomTabsCallback;

    if-eqz p1, :cond_5

    .line 50344
    invoke-interface {p1}, Lo/FirebaseAnalytics$ICustomTabsCallback;->onNavigationEvent()V

    :cond_5
    return-void
.end method

.method public final ICustomTabsCallback(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1566
    :cond_0
    iget-object v0, p0, Lo/FirebaseAnalytics;->onRelationshipValidationResult:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1567
    iput-object p1, p0, Lo/FirebaseAnalytics;->onRelationshipValidationResult:Ljava/lang/CharSequence;

    .line 1568
    iget-object p1, p0, Lo/FirebaseAnalytics;->cancel:Lo/signInWithEmailAndPassword;

    const/4 v0, 0x1

    .line 50318
    iput-boolean v0, p1, Lo/signInWithEmailAndPassword;->ICustomTabsCallback:Z

    .line 1569
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 50320
    iget-object p1, p0, Lo/FirebaseAnalytics;->cancelAll:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/FirebaseAnalytics$ICustomTabsCallback;

    if-eqz p1, :cond_1

    .line 50322
    invoke-interface {p1}, Lo/FirebaseAnalytics$ICustomTabsCallback;->onNavigationEvent()V

    :cond_1
    return-void
.end method

.method public final ICustomTabsCallback(Z)V
    .locals 3

    .line 1905
    iget-boolean v0, p0, Lo/FirebaseAnalytics;->getInterfaceDescriptor:Z

    if-eq v0, p1, :cond_5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 50396
    iget-object v0, p0, Lo/FirebaseAnalytics;->extraCommand:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/FirebaseAnalytics;->INotificationSideChannel:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1907
    :goto_0
    iput-boolean p1, p0, Lo/FirebaseAnalytics;->getInterfaceDescriptor:Z

    if-eqz p1, :cond_1

    .line 50397
    iget-object p1, p0, Lo/FirebaseAnalytics;->extraCommand:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lo/FirebaseAnalytics;->INotificationSideChannel:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eq v0, p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    if-eqz p1, :cond_3

    .line 1913
    iget-object p1, p0, Lo/FirebaseAnalytics;->extraCommand:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lo/FirebaseAnalytics;->onNavigationEvent(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 1915
    :cond_3
    iget-object p1, p0, Lo/FirebaseAnalytics;->extraCommand:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    .line 50399
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1918
    :cond_4
    :goto_3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 50402
    iget-object p1, p0, Lo/FirebaseAnalytics;->cancelAll:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/FirebaseAnalytics$ICustomTabsCallback;

    if-eqz p1, :cond_5

    .line 50404
    invoke-interface {p1}, Lo/FirebaseAnalytics$ICustomTabsCallback;->onNavigationEvent()V

    :cond_5
    return-void
.end method

.method public final ICustomTabsCallback$Stub(F)V
    .locals 1

    .line 2249
    iget v0, p0, Lo/FirebaseAnalytics;->IPostMessageService$Stub:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 2250
    iput p1, p0, Lo/FirebaseAnalytics;->IPostMessageService$Stub:F

    .line 2251
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 50441
    iget-boolean p1, p0, Lo/FirebaseAnalytics;->onTransact:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 50442
    iget-object p1, p0, Lo/FirebaseAnalytics;->cancelAll:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/FirebaseAnalytics$ICustomTabsCallback;

    if-eqz p1, :cond_1

    .line 50444
    invoke-interface {p1}, Lo/FirebaseAnalytics$ICustomTabsCallback;->onNavigationEvent()V

    :cond_1
    return-void
.end method

.method public final ICustomTabsCallback$Stub$Proxy(F)V
    .locals 1

    .line 2321
    iget v0, p0, Lo/FirebaseAnalytics;->ICustomTabsService$Stub:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2322
    iput p1, p0, Lo/FirebaseAnalytics;->ICustomTabsService$Stub:F

    .line 2323
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 50453
    iget-object p1, p0, Lo/FirebaseAnalytics;->cancelAll:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/FirebaseAnalytics$ICustomTabsCallback;

    if-eqz p1, :cond_0

    .line 50455
    invoke-interface {p1}, Lo/FirebaseAnalytics$ICustomTabsCallback;->onNavigationEvent()V

    :cond_0
    return-void
.end method

.method public final asBinder(F)V
    .locals 1

    .line 2181
    iget v0, p0, Lo/FirebaseAnalytics;->mayLaunchUrl:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2182
    iput p1, p0, Lo/FirebaseAnalytics;->mayLaunchUrl:F

    .line 2183
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 50431
    iget-object p1, p0, Lo/FirebaseAnalytics;->cancelAll:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/FirebaseAnalytics$ICustomTabsCallback;

    if-eqz p1, :cond_0

    .line 50433
    invoke-interface {p1}, Lo/FirebaseAnalytics$ICustomTabsCallback;->onNavigationEvent()V

    :cond_0
    return-void
.end method

.method public final asInterface(F)V
    .locals 1

    .line 2215
    iget v0, p0, Lo/FirebaseAnalytics;->validateRelationship:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2216
    iput p1, p0, Lo/FirebaseAnalytics;->validateRelationship:F

    .line 2217
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 50436
    iget-object p1, p0, Lo/FirebaseAnalytics;->cancelAll:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/FirebaseAnalytics$ICustomTabsCallback;

    if-eqz p1, :cond_0

    .line 50438
    invoke-interface {p1}, Lo/FirebaseAnalytics$ICustomTabsCallback;->onNavigationEvent()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 540
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    .line 541
    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_26

    invoke-virtual/range {p0 .. p0}, Lo/FirebaseAnalytics;->getAlpha()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_17

    .line 546
    :cond_0
    iget v1, v0, Lo/FirebaseAnalytics;->setCallbacksMessenger:I

    const/16 v10, 0xff

    const/4 v11, 0x0

    if-ge v1, v10, :cond_2

    .line 547
    iget v1, v9, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    iget v1, v9, Landroid/graphics/Rect;->top:I

    int-to-float v3, v1

    iget v1, v9, Landroid/graphics/Rect;->right:I

    int-to-float v4, v1

    iget v1, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v1

    iget v6, v0, Lo/FirebaseAnalytics;->setCallbacksMessenger:I

    .line 8058
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-le v1, v7, :cond_1

    move-object/from16 v1, p1

    .line 8059
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFI)I

    move-result v1

    goto :goto_0

    :cond_1
    const/16 v7, 0x1f

    move-object/from16 v1, p1

    .line 8061
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-result v1

    :goto_0
    move v12, v1

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    .line 8590
    :goto_1
    iget-boolean v1, v0, Lo/FirebaseAnalytics;->INotificationSideChannel$Default:Z

    if-nez v1, :cond_5

    .line 8591
    iget-object v1, v0, Lo/FirebaseAnalytics;->getExtras:Landroid/graphics/Paint;

    iget v2, v0, Lo/FirebaseAnalytics;->subscribe:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 8592
    iget-object v1, v0, Lo/FirebaseAnalytics;->getExtras:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 8593
    iget-object v1, v0, Lo/FirebaseAnalytics;->getSessionToken:Landroid/graphics/RectF;

    invoke-virtual {v1, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 8594
    iget-object v1, v0, Lo/FirebaseAnalytics;->getSessionToken:Landroid/graphics/RectF;

    .line 9414
    iget-boolean v2, v0, Lo/FirebaseAnalytics;->INotificationSideChannel$Default:Z

    if-eqz v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lo/setFirebaseUIVersion;->onRelationshipValidationResult()F

    move-result v2

    goto :goto_2

    :cond_3
    iget v2, v0, Lo/FirebaseAnalytics;->onNavigationEvent:F

    .line 10414
    :goto_2
    iget-boolean v3, v0, Lo/FirebaseAnalytics;->INotificationSideChannel$Default:Z

    if-eqz v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Lo/setFirebaseUIVersion;->onRelationshipValidationResult()F

    move-result v3

    goto :goto_3

    :cond_4
    iget v3, v0, Lo/FirebaseAnalytics;->onNavigationEvent:F

    .line 8594
    :goto_3
    iget-object v4, v0, Lo/FirebaseAnalytics;->getExtras:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 10599
    :cond_5
    iget-boolean v1, v0, Lo/FirebaseAnalytics;->INotificationSideChannel$Default:Z

    if-nez v1, :cond_9

    .line 10600
    iget-object v1, v0, Lo/FirebaseAnalytics;->getExtras:Landroid/graphics/Paint;

    iget v2, v0, Lo/FirebaseAnalytics;->unsubscribe:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 10601
    iget-object v1, v0, Lo/FirebaseAnalytics;->getExtras:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 10602
    iget-object v1, v0, Lo/FirebaseAnalytics;->getExtras:Landroid/graphics/Paint;

    .line 11301
    iget-object v2, v0, Lo/FirebaseAnalytics;->getNotifyChildrenChangedOptions:Landroid/graphics/ColorFilter;

    if-eqz v2, :cond_6

    goto :goto_4

    :cond_6
    iget-object v2, v0, Lo/FirebaseAnalytics;->onConnectionFailed:Landroid/graphics/PorterDuffColorFilter;

    .line 10602
    :goto_4
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 10603
    iget-object v1, v0, Lo/FirebaseAnalytics;->getSessionToken:Landroid/graphics/RectF;

    invoke-virtual {v1, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 10604
    iget-object v1, v0, Lo/FirebaseAnalytics;->getSessionToken:Landroid/graphics/RectF;

    .line 11414
    iget-boolean v2, v0, Lo/FirebaseAnalytics;->INotificationSideChannel$Default:Z

    if-eqz v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lo/setFirebaseUIVersion;->onRelationshipValidationResult()F

    move-result v2

    goto :goto_5

    :cond_7
    iget v2, v0, Lo/FirebaseAnalytics;->onNavigationEvent:F

    .line 12414
    :goto_5
    iget-boolean v3, v0, Lo/FirebaseAnalytics;->INotificationSideChannel$Default:Z

    if-eqz v3, :cond_8

    invoke-virtual/range {p0 .. p0}, Lo/setFirebaseUIVersion;->onRelationshipValidationResult()F

    move-result v3

    goto :goto_6

    :cond_8
    iget v3, v0, Lo/FirebaseAnalytics;->onNavigationEvent:F

    .line 10604
    :goto_6
    iget-object v4, v0, Lo/FirebaseAnalytics;->getExtras:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 558
    :cond_9
    iget-boolean v1, v0, Lo/FirebaseAnalytics;->INotificationSideChannel$Default:Z

    if-eqz v1, :cond_a

    .line 559
    invoke-super/range {p0 .. p1}, Lo/setFirebaseUIVersion;->draw(Landroid/graphics/Canvas;)V

    .line 12613
    :cond_a
    iget v1, v0, Lo/FirebaseAnalytics;->disconnect:F

    const/4 v2, 0x0

    const/high16 v13, 0x40000000    # 2.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_d

    iget-boolean v1, v0, Lo/FirebaseAnalytics;->INotificationSideChannel$Default:Z

    if-nez v1, :cond_d

    .line 12614
    iget-object v1, v0, Lo/FirebaseAnalytics;->getExtras:Landroid/graphics/Paint;

    iget v3, v0, Lo/FirebaseAnalytics;->search:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 12615
    iget-object v1, v0, Lo/FirebaseAnalytics;->getExtras:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 12616
    iget-boolean v1, v0, Lo/FirebaseAnalytics;->INotificationSideChannel$Default:Z

    if-nez v1, :cond_c

    .line 12617
    iget-object v1, v0, Lo/FirebaseAnalytics;->getExtras:Landroid/graphics/Paint;

    .line 13301
    iget-object v3, v0, Lo/FirebaseAnalytics;->getNotifyChildrenChangedOptions:Landroid/graphics/ColorFilter;

    if-eqz v3, :cond_b

    goto :goto_7

    :cond_b
    iget-object v3, v0, Lo/FirebaseAnalytics;->onConnectionFailed:Landroid/graphics/PorterDuffColorFilter;

    .line 12617
    :goto_7
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 12619
    :cond_c
    iget-object v1, v0, Lo/FirebaseAnalytics;->getSessionToken:Landroid/graphics/RectF;

    iget v3, v9, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v0, Lo/FirebaseAnalytics;->disconnect:F

    div-float/2addr v4, v13

    add-float/2addr v3, v4

    iget v4, v9, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, v0, Lo/FirebaseAnalytics;->disconnect:F

    div-float/2addr v5, v13

    add-float/2addr v4, v5

    iget v5, v9, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iget v6, v0, Lo/FirebaseAnalytics;->disconnect:F

    div-float/2addr v6, v13

    sub-float/2addr v5, v6

    iget v6, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    iget v7, v0, Lo/FirebaseAnalytics;->disconnect:F

    div-float/2addr v7, v13

    sub-float/2addr v6, v7

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 12626
    iget v1, v0, Lo/FirebaseAnalytics;->onNavigationEvent:F

    iget v3, v0, Lo/FirebaseAnalytics;->disconnect:F

    div-float/2addr v3, v13

    sub-float/2addr v1, v3

    .line 12627
    iget-object v3, v0, Lo/FirebaseAnalytics;->getSessionToken:Landroid/graphics/RectF;

    iget-object v4, v0, Lo/FirebaseAnalytics;->getExtras:Landroid/graphics/Paint;

    invoke-virtual {v8, v3, v1, v1, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 13632
    :cond_d
    iget-object v1, v0, Lo/FirebaseAnalytics;->getExtras:Landroid/graphics/Paint;

    iget v3, v0, Lo/FirebaseAnalytics;->handleMessage:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 13633
    iget-object v1, v0, Lo/FirebaseAnalytics;->getExtras:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 13634
    iget-object v1, v0, Lo/FirebaseAnalytics;->getSessionToken:Landroid/graphics/RectF;

    invoke-virtual {v1, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 13635
    iget-boolean v1, v0, Lo/FirebaseAnalytics;->INotificationSideChannel$Default:Z

    if-nez v1, :cond_10

    .line 13636
    iget-object v3, v0, Lo/FirebaseAnalytics;->getSessionToken:Landroid/graphics/RectF;

    if-eqz v1, :cond_e

    .line 14414
    invoke-virtual/range {p0 .. p0}, Lo/setFirebaseUIVersion;->onRelationshipValidationResult()F

    move-result v1

    goto :goto_8

    :cond_e
    iget v1, v0, Lo/FirebaseAnalytics;->onNavigationEvent:F

    .line 15414
    :goto_8
    iget-boolean v4, v0, Lo/FirebaseAnalytics;->INotificationSideChannel$Default:Z

    if-eqz v4, :cond_f

    invoke-virtual/range {p0 .. p0}, Lo/setFirebaseUIVersion;->onRelationshipValidationResult()F

    move-result v4

    goto :goto_9

    :cond_f
    iget v4, v0, Lo/FirebaseAnalytics;->onNavigationEvent:F

    .line 13636
    :goto_9
    iget-object v5, v0, Lo/FirebaseAnalytics;->getExtras:Landroid/graphics/Paint;

    invoke-virtual {v8, v3, v1, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_a

    .line 13638
    :cond_10
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v3, v0, Lo/FirebaseAnalytics;->sendCustomAction:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v3}, Lo/FirebaseAnalytics;->ICustomTabsCallback(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 13639
    iget-object v1, v0, Lo/FirebaseAnalytics;->getExtras:Landroid/graphics/Paint;

    iget-object v3, v0, Lo/FirebaseAnalytics;->sendCustomAction:Landroid/graphics/Path;

    invoke-virtual/range {p0 .. p0}, Lo/FirebaseAnalytics;->extraCallback()Landroid/graphics/RectF;

    move-result-object v4

    invoke-super {v0, v8, v1, v3, v4}, Lo/setFirebaseUIVersion;->ICustomTabsCallback(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Landroid/graphics/RectF;)V

    .line 16497
    :goto_a
    iget-boolean v1, v0, Lo/FirebaseAnalytics;->asBinder:Z

    if-eqz v1, :cond_11

    iget-object v1, v0, Lo/FirebaseAnalytics;->asInterface:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_b

    :cond_11
    const/4 v1, 0x0

    :goto_b
    if-eqz v1, :cond_12

    .line 15645
    iget-object v1, v0, Lo/FirebaseAnalytics;->getSessionToken:Landroid/graphics/RectF;

    invoke-direct {v0, v9, v1}, Lo/FirebaseAnalytics;->extraCallback(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 15646
    iget-object v1, v0, Lo/FirebaseAnalytics;->getSessionToken:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    .line 15647
    iget-object v3, v0, Lo/FirebaseAnalytics;->getSessionToken:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    .line 15649
    invoke-virtual {v8, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 15651
    iget-object v4, v0, Lo/FirebaseAnalytics;->asInterface:Landroid/graphics/drawable/Drawable;

    iget-object v5, v0, Lo/FirebaseAnalytics;->getSessionToken:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, v0, Lo/FirebaseAnalytics;->getSessionToken:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4, v11, v11, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 15652
    iget-object v4, v0, Lo/FirebaseAnalytics;->asInterface:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float v1, v1

    neg-float v3, v3

    .line 15654
    invoke-virtual {v8, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 17502
    :cond_12
    iget-boolean v1, v0, Lo/FirebaseAnalytics;->getInterfaceDescriptor:Z

    if-eqz v1, :cond_13

    iget-object v1, v0, Lo/FirebaseAnalytics;->extraCommand:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_13

    iget-boolean v1, v0, Lo/FirebaseAnalytics;->INotificationSideChannel:Z

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_c

    :cond_13
    const/4 v1, 0x0

    :goto_c
    if-eqz v1, :cond_14

    .line 16660
    iget-object v1, v0, Lo/FirebaseAnalytics;->getSessionToken:Landroid/graphics/RectF;

    invoke-direct {v0, v9, v1}, Lo/FirebaseAnalytics;->extraCallback(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 16661
    iget-object v1, v0, Lo/FirebaseAnalytics;->getSessionToken:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    .line 16662
    iget-object v3, v0, Lo/FirebaseAnalytics;->getSessionToken:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    .line 16664
    invoke-virtual {v8, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 16666
    iget-object v4, v0, Lo/FirebaseAnalytics;->extraCommand:Landroid/graphics/drawable/Drawable;

    iget-object v5, v0, Lo/FirebaseAnalytics;->getSessionToken:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, v0, Lo/FirebaseAnalytics;->getSessionToken:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4, v11, v11, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 16667
    iget-object v4, v0, Lo/FirebaseAnalytics;->extraCommand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float v1, v1

    neg-float v3, v3

    .line 16669
    invoke-virtual {v8, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 574
    :cond_14
    iget-boolean v1, v0, Lo/FirebaseAnalytics;->INotificationSideChannel$Stub:Z

    if-eqz v1, :cond_1f

    .line 17675
    iget-object v1, v0, Lo/FirebaseAnalytics;->onRelationshipValidationResult:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1f

    .line 17676
    iget-object v1, v0, Lo/FirebaseAnalytics;->getRoot:Landroid/graphics/PointF;

    .line 17794
    invoke-virtual {v1, v2, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 17795
    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 17797
    iget-object v4, v0, Lo/FirebaseAnalytics;->onRelationshipValidationResult:Ljava/lang/CharSequence;

    if-eqz v4, :cond_16

    .line 17798
    iget v3, v0, Lo/FirebaseAnalytics;->postMessage:F

    invoke-direct/range {p0 .. p0}, Lo/FirebaseAnalytics;->ICustomTabsService()F

    move-result v4

    add-float/2addr v3, v4

    iget v4, v0, Lo/FirebaseAnalytics;->mayLaunchUrl:F

    add-float/2addr v3, v4

    .line 17800
    invoke-static/range {p0 .. p0}, Lo/MediaMetadataCompat$BitmapKey;->onRelationshipValidationResult(Landroid/graphics/drawable/Drawable;)I

    move-result v4

    if-nez v4, :cond_15

    .line 17801
    iget v4, v9, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v4, v3

    iput v4, v1, Landroid/graphics/PointF;->x:F

    .line 17802
    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto :goto_d

    .line 17804
    :cond_15
    iget v4, v9, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v4, v3

    iput v4, v1, Landroid/graphics/PointF;->x:F

    .line 17805
    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    .line 17808
    :goto_d
    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    .line 17827
    iget-object v5, v0, Lo/FirebaseAnalytics;->cancel:Lo/signInWithEmailAndPassword;

    .line 18087
    iget-object v5, v5, Lo/signInWithEmailAndPassword;->onPostMessage:Landroid/text/TextPaint;

    .line 17827
    iget-object v6, v0, Lo/FirebaseAnalytics;->isConnected:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 17828
    iget-object v5, v0, Lo/FirebaseAnalytics;->isConnected:Landroid/graphics/Paint$FontMetrics;

    iget v5, v5, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget-object v6, v0, Lo/FirebaseAnalytics;->isConnected:Landroid/graphics/Paint$FontMetrics;

    iget v6, v6, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float/2addr v5, v6

    div-float/2addr v5, v13

    sub-float/2addr v4, v5

    .line 17808
    iput v4, v1, Landroid/graphics/PointF;->y:F

    .line 17679
    :cond_16
    iget-object v1, v0, Lo/FirebaseAnalytics;->getSessionToken:Landroid/graphics/RectF;

    .line 18836
    invoke-virtual {v1}, Landroid/graphics/RectF;->setEmpty()V

    .line 18838
    iget-object v4, v0, Lo/FirebaseAnalytics;->onRelationshipValidationResult:Ljava/lang/CharSequence;

    if-eqz v4, :cond_18

    .line 18839
    iget v4, v0, Lo/FirebaseAnalytics;->postMessage:F

    invoke-direct/range {p0 .. p0}, Lo/FirebaseAnalytics;->ICustomTabsService()F

    move-result v5

    add-float/2addr v4, v5

    iget v5, v0, Lo/FirebaseAnalytics;->mayLaunchUrl:F

    add-float/2addr v4, v5

    .line 18840
    iget v5, v0, Lo/FirebaseAnalytics;->ICustomTabsService$Stub:F

    invoke-direct/range {p0 .. p0}, Lo/FirebaseAnalytics;->newSession()F

    move-result v6

    add-float/2addr v5, v6

    iget v6, v0, Lo/FirebaseAnalytics;->validateRelationship:F

    add-float/2addr v5, v6

    .line 18842
    invoke-static/range {p0 .. p0}, Lo/MediaMetadataCompat$BitmapKey;->onRelationshipValidationResult(Landroid/graphics/drawable/Drawable;)I

    move-result v6

    if-nez v6, :cond_17

    .line 18843
    iget v6, v9, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    add-float/2addr v6, v4

    iput v6, v1, Landroid/graphics/RectF;->left:F

    .line 18844
    iget v4, v9, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v4, v5

    iput v4, v1, Landroid/graphics/RectF;->right:F

    goto :goto_e

    .line 18846
    :cond_17
    iget v6, v9, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    add-float/2addr v6, v5

    iput v6, v1, Landroid/graphics/RectF;->left:F

    .line 18847
    iget v5, v9, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v5, v4

    iput v5, v1, Landroid/graphics/RectF;->right:F

    .line 18852
    :goto_e
    iget v4, v9, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iput v4, v1, Landroid/graphics/RectF;->top:F

    .line 18853
    iget v4, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iput v4, v1, Landroid/graphics/RectF;->bottom:F

    .line 17681
    :cond_18
    iget-object v1, v0, Lo/FirebaseAnalytics;->cancel:Lo/signInWithEmailAndPassword;

    .line 19123
    iget-object v1, v1, Lo/signInWithEmailAndPassword;->ICustomTabsCallback$Stub:Lo/verifyPasswordResetCode;

    if-eqz v1, :cond_19

    .line 17682
    iget-object v1, v0, Lo/FirebaseAnalytics;->cancel:Lo/signInWithEmailAndPassword;

    .line 20087
    iget-object v1, v1, Lo/signInWithEmailAndPassword;->onPostMessage:Landroid/text/TextPaint;

    .line 17682
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v4

    iput-object v4, v1, Landroid/text/TextPaint;->drawableState:[I

    .line 17683
    iget-object v1, v0, Lo/FirebaseAnalytics;->cancel:Lo/signInWithEmailAndPassword;

    iget-object v4, v0, Lo/FirebaseAnalytics;->ICustomTabsService$Stub$Proxy:Landroid/content/Context;

    .line 20156
    iget-object v5, v1, Lo/signInWithEmailAndPassword;->ICustomTabsCallback$Stub:Lo/verifyPasswordResetCode;

    iget-object v6, v1, Lo/signInWithEmailAndPassword;->onPostMessage:Landroid/text/TextPaint;

    iget-object v1, v1, Lo/signInWithEmailAndPassword;->onMessageChannelReady:Lo/confirmPasswordReset;

    invoke-virtual {v5, v4, v6, v1}, Lo/verifyPasswordResetCode;->onMessageChannelReady(Landroid/content/Context;Landroid/text/TextPaint;Lo/confirmPasswordReset;)V

    .line 17685
    :cond_19
    iget-object v1, v0, Lo/FirebaseAnalytics;->cancel:Lo/signInWithEmailAndPassword;

    .line 21087
    iget-object v1, v1, Lo/signInWithEmailAndPassword;->onPostMessage:Landroid/text/TextPaint;

    .line 17685
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 17687
    iget-object v1, v0, Lo/FirebaseAnalytics;->cancel:Lo/signInWithEmailAndPassword;

    .line 21555
    iget-object v3, v0, Lo/FirebaseAnalytics;->onRelationshipValidationResult:Ljava/lang/CharSequence;

    .line 17688
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 22100
    iget-boolean v4, v1, Lo/signInWithEmailAndPassword;->ICustomTabsCallback:Z

    if-nez v4, :cond_1a

    .line 22101
    iget v1, v1, Lo/signInWithEmailAndPassword;->extraCallback:F

    goto :goto_10

    :cond_1a
    if-nez v3, :cond_1b

    goto :goto_f

    .line 22113
    :cond_1b
    iget-object v2, v1, Lo/signInWithEmailAndPassword;->onPostMessage:Landroid/text/TextPaint;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v2, v3, v11, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v2

    .line 22104
    :goto_f
    iput v2, v1, Lo/signInWithEmailAndPassword;->extraCallback:F

    .line 22105
    iput-boolean v11, v1, Lo/signInWithEmailAndPassword;->ICustomTabsCallback:Z

    .line 22106
    iget v1, v1, Lo/signInWithEmailAndPassword;->extraCallback:F

    .line 17688
    :goto_10
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, v0, Lo/FirebaseAnalytics;->getSessionToken:Landroid/graphics/RectF;

    .line 17689
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    if-le v1, v2, :cond_1c

    const/4 v15, 0x1

    goto :goto_11

    :cond_1c
    const/4 v15, 0x0

    :goto_11
    if-eqz v15, :cond_1d

    .line 17692
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 17693
    iget-object v2, v0, Lo/FirebaseAnalytics;->getSessionToken:Landroid/graphics/RectF;

    invoke-virtual {v8, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    move v7, v1

    goto :goto_12

    :cond_1d
    const/4 v7, 0x0

    .line 17696
    :goto_12
    iget-object v1, v0, Lo/FirebaseAnalytics;->onRelationshipValidationResult:Ljava/lang/CharSequence;

    if-eqz v15, :cond_1e

    .line 17697
    iget-object v2, v0, Lo/FirebaseAnalytics;->INotificationSideChannel$Stub$Proxy:Landroid/text/TextUtils$TruncateAt;

    if-eqz v2, :cond_1e

    .line 17698
    iget-object v2, v0, Lo/FirebaseAnalytics;->cancel:Lo/signInWithEmailAndPassword;

    .line 23087
    iget-object v2, v2, Lo/signInWithEmailAndPassword;->onPostMessage:Landroid/text/TextPaint;

    .line 17699
    iget-object v3, v0, Lo/FirebaseAnalytics;->getSessionToken:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, v0, Lo/FirebaseAnalytics;->INotificationSideChannel$Stub$Proxy:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v2, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_1e
    move-object v2, v1

    const/4 v3, 0x0

    .line 17702
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iget-object v1, v0, Lo/FirebaseAnalytics;->getRoot:Landroid/graphics/PointF;

    iget v5, v1, Landroid/graphics/PointF;->x:F

    iget-object v1, v0, Lo/FirebaseAnalytics;->getRoot:Landroid/graphics/PointF;

    iget v6, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, v0, Lo/FirebaseAnalytics;->cancel:Lo/signInWithEmailAndPassword;

    .line 24087
    iget-object v1, v1, Lo/signInWithEmailAndPassword;->onPostMessage:Landroid/text/TextPaint;

    move-object/from16 v16, v1

    move-object/from16 v1, p1

    move v14, v7

    move-object/from16 v7, v16

    .line 17701
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    if-eqz v15, :cond_1f

    .line 17704
    invoke-virtual {v8, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 25507
    :cond_1f
    iget-boolean v1, v0, Lo/FirebaseAnalytics;->onTransact:Z

    if-eqz v1, :cond_20

    iget-object v1, v0, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_20

    const/4 v1, 0x1

    goto :goto_13

    :cond_20
    const/4 v1, 0x0

    :goto_13
    if-eqz v1, :cond_25

    .line 24711
    iget-object v1, v0, Lo/FirebaseAnalytics;->getSessionToken:Landroid/graphics/RectF;

    .line 25862
    invoke-virtual {v1}, Landroid/graphics/RectF;->setEmpty()V

    .line 26507
    iget-boolean v2, v0, Lo/FirebaseAnalytics;->onTransact:Z

    if-eqz v2, :cond_21

    iget-object v2, v0, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_21

    const/4 v14, 0x1

    goto :goto_14

    :cond_21
    const/4 v14, 0x0

    :goto_14
    if-eqz v14, :cond_23

    .line 25865
    iget v2, v0, Lo/FirebaseAnalytics;->ICustomTabsService$Stub:F

    iget v3, v0, Lo/FirebaseAnalytics;->IPostMessageService:F

    add-float/2addr v2, v3

    .line 25867
    invoke-static/range {p0 .. p0}, Lo/MediaMetadataCompat$BitmapKey;->onRelationshipValidationResult(Landroid/graphics/drawable/Drawable;)I

    move-result v3

    if-nez v3, :cond_22

    .line 25868
    iget v3, v9, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    sub-float/2addr v3, v2

    iput v3, v1, Landroid/graphics/RectF;->right:F

    .line 25869
    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v3, v0, Lo/FirebaseAnalytics;->warmup:F

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->left:F

    goto :goto_15

    .line 25871
    :cond_22
    iget v3, v9, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    iput v3, v1, Landroid/graphics/RectF;->left:F

    .line 25872
    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v0, Lo/FirebaseAnalytics;->warmup:F

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 25875
    :goto_15
    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    iget v3, v0, Lo/FirebaseAnalytics;->warmup:F

    div-float/2addr v3, v13

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 25876
    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget v3, v0, Lo/FirebaseAnalytics;->warmup:F

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 24712
    :cond_23
    iget-object v1, v0, Lo/FirebaseAnalytics;->getSessionToken:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    .line 24713
    iget-object v2, v0, Lo/FirebaseAnalytics;->getSessionToken:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    .line 24715
    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 24717
    iget-object v3, v0, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    iget-object v4, v0, Lo/FirebaseAnalytics;->getSessionToken:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, v0, Lo/FirebaseAnalytics;->getSessionToken:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v11, v11, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 24719
    sget-boolean v3, Lo/isSignInWithEmailLink;->onMessageChannelReady:Z

    if-eqz v3, :cond_24

    .line 24720
    iget-object v3, v0, Lo/FirebaseAnalytics;->AudioAttributesImplBaseParcelizer:Landroid/graphics/drawable/Drawable;

    iget-object v4, v0, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 24721
    iget-object v3, v0, Lo/FirebaseAnalytics;->AudioAttributesImplBaseParcelizer:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 24722
    iget-object v3, v0, Lo/FirebaseAnalytics;->AudioAttributesImplBaseParcelizer:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_16

    .line 24724
    :cond_24
    iget-object v3, v0, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_16
    neg-float v1, v1

    neg-float v2, v2

    .line 24727
    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 584
    :cond_25
    iget v1, v0, Lo/FirebaseAnalytics;->setCallbacksMessenger:I

    if-ge v1, v10, :cond_26

    .line 585
    invoke-virtual {v8, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_26
    :goto_17
    return-void
.end method

.method public final extraCallback(F)V
    .locals 1

    .line 1507
    iget v0, p0, Lo/FirebaseAnalytics;->disconnect:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 1508
    iput p1, p0, Lo/FirebaseAnalytics;->disconnect:F

    .line 1510
    iget-object v0, p0, Lo/FirebaseAnalytics;->getExtras:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1511
    iget-boolean v0, p0, Lo/FirebaseAnalytics;->INotificationSideChannel$Default:Z

    if-eqz v0, :cond_0

    .line 50315
    iget-object v0, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput p1, v0, Lo/setFirebaseUIVersion$extraCallback;->newSession:F

    .line 50316
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 1514
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public final extraCallback(Z)V
    .locals 3

    .line 1610
    iget-boolean v0, p0, Lo/FirebaseAnalytics;->asBinder:Z

    if-eq v0, p1, :cond_5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 50325
    iget-object v0, p0, Lo/FirebaseAnalytics;->asInterface:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1612
    :goto_0
    iput-boolean p1, p0, Lo/FirebaseAnalytics;->asBinder:Z

    if-eqz p1, :cond_1

    .line 50326
    iget-object p1, p0, Lo/FirebaseAnalytics;->asInterface:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eq v0, p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    if-eqz p1, :cond_3

    .line 1618
    iget-object p1, p0, Lo/FirebaseAnalytics;->asInterface:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lo/FirebaseAnalytics;->onNavigationEvent(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 1620
    :cond_3
    iget-object p1, p0, Lo/FirebaseAnalytics;->asInterface:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    .line 50328
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1623
    :cond_4
    :goto_3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 50331
    iget-object p1, p0, Lo/FirebaseAnalytics;->cancelAll:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/FirebaseAnalytics$ICustomTabsCallback;

    if-eqz p1, :cond_5

    .line 50333
    invoke-interface {p1}, Lo/FirebaseAnalytics$ICustomTabsCallback;->onNavigationEvent()V

    :cond_5
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 1184
    iget v0, p0, Lo/FirebaseAnalytics;->setCallbacksMessenger:I

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 1198
    iget-object v0, p0, Lo/FirebaseAnalytics;->getNotifyChildrenChangedOptions:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 492
    iget v0, p0, Lo/FirebaseAnalytics;->onMessageChannelReady:F

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 8

    .line 477
    iget v0, p0, Lo/FirebaseAnalytics;->postMessage:F

    .line 4497
    iget-boolean v1, p0, Lo/FirebaseAnalytics;->asBinder:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/FirebaseAnalytics;->asInterface:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v4, 0x0

    if-nez v1, :cond_3

    .line 4502
    iget-boolean v1, p0, Lo/FirebaseAnalytics;->getInterfaceDescriptor:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/FirebaseAnalytics;->extraCommand:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lo/FirebaseAnalytics;->INotificationSideChannel:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    .line 3518
    :cond_3
    :goto_2
    iget v1, p0, Lo/FirebaseAnalytics;->requestPostMessageChannel:F

    iget v5, p0, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub:F

    add-float/2addr v1, v5

    iget v5, p0, Lo/FirebaseAnalytics;->updateVisuals:F

    add-float/2addr v1, v5

    :goto_3
    add-float/2addr v0, v1

    .line 480
    iget v1, p0, Lo/FirebaseAnalytics;->mayLaunchUrl:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lo/FirebaseAnalytics;->cancel:Lo/signInWithEmailAndPassword;

    .line 4555
    iget-object v5, p0, Lo/FirebaseAnalytics;->onRelationshipValidationResult:Ljava/lang/CharSequence;

    .line 482
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5100
    iget-boolean v6, v1, Lo/signInWithEmailAndPassword;->ICustomTabsCallback:Z

    if-nez v6, :cond_4

    .line 5101
    iget v1, v1, Lo/signInWithEmailAndPassword;->extraCallback:F

    goto :goto_5

    :cond_4
    if-nez v5, :cond_5

    const/4 v5, 0x0

    goto :goto_4

    .line 5113
    :cond_5
    iget-object v6, v1, Lo/signInWithEmailAndPassword;->onPostMessage:Landroid/text/TextPaint;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {v6, v5, v3, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v5

    .line 5104
    :goto_4
    iput v5, v1, Lo/signInWithEmailAndPassword;->extraCallback:F

    .line 5105
    iput-boolean v3, v1, Lo/signInWithEmailAndPassword;->ICustomTabsCallback:Z

    .line 5106
    iget v1, v1, Lo/signInWithEmailAndPassword;->extraCallback:F

    :goto_5
    add-float/2addr v0, v1

    .line 482
    iget v1, p0, Lo/FirebaseAnalytics;->validateRelationship:F

    add-float/2addr v0, v1

    .line 6507
    iget-boolean v1, p0, Lo/FirebaseAnalytics;->onTransact:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    if-eqz v2, :cond_7

    .line 5529
    iget v1, p0, Lo/FirebaseAnalytics;->IPostMessageService$Stub:F

    iget v2, p0, Lo/FirebaseAnalytics;->warmup:F

    add-float/2addr v1, v2

    iget v2, p0, Lo/FirebaseAnalytics;->IPostMessageService:F

    add-float v4, v1, v2

    :cond_7
    add-float/2addr v0, v4

    .line 484
    iget v1, p0, Lo/FirebaseAnalytics;->ICustomTabsService$Stub:F

    add-float/2addr v0, v1

    .line 478
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 486
    iget v1, p0, Lo/FirebaseAnalytics;->setDefaultImpl:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 8

    .line 1226
    iget-boolean v0, p0, Lo/FirebaseAnalytics;->INotificationSideChannel$Default:Z

    if-eqz v0, :cond_0

    .line 1227
    invoke-super {p0, p1}, Lo/setFirebaseUIVersion;->getOutline(Landroid/graphics/Outline;)V

    return-void

    .line 1230
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1231
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1232
    iget v1, p0, Lo/FirebaseAnalytics;->onNavigationEvent:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1234
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    iget v7, p0, Lo/FirebaseAnalytics;->onNavigationEvent:F

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 1237
    :goto_0
    invoke-virtual {p0}, Lo/FirebaseAnalytics;->getAlpha()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1242
    invoke-virtual {p0}, Lo/FirebaseAnalytics;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1244
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public isStateful()Z
    .locals 4

    .line 927
    iget-object v0, p0, Lo/FirebaseAnalytics;->onPostMessage:Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 28097
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_b

    .line 927
    iget-object v0, p0, Lo/FirebaseAnalytics;->ICustomTabsCallback:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 29097
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_b

    .line 928
    iget-object v0, p0, Lo/FirebaseAnalytics;->MediaBrowserCompat:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    .line 30097
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_b

    .line 929
    iget-boolean v0, p0, Lo/FirebaseAnalytics;->notify:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lo/FirebaseAnalytics;->IPostMessageService$Stub$Proxy:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_3

    .line 31097
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_b

    .line 930
    :cond_4
    iget-object v0, p0, Lo/FirebaseAnalytics;->cancel:Lo/signInWithEmailAndPassword;

    .line 31123
    iget-object v0, v0, Lo/signInWithEmailAndPassword;->ICustomTabsCallback$Stub:Lo/verifyPasswordResetCode;

    if-eqz v0, :cond_5

    .line 32105
    iget-object v3, v0, Lo/verifyPasswordResetCode;->extraCallback:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_5

    iget-object v0, v0, Lo/verifyPasswordResetCode;->extraCallback:Landroid/content/res/ColorStateList;

    .line 32107
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    if-nez v0, :cond_b

    .line 32512
    iget-boolean v0, p0, Lo/FirebaseAnalytics;->getInterfaceDescriptor:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lo/FirebaseAnalytics;->extraCommand:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lo/FirebaseAnalytics;->ICustomTabsService:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    :goto_5
    if-nez v0, :cond_b

    .line 932
    iget-object v0, p0, Lo/FirebaseAnalytics;->asInterface:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 33101
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    :goto_6
    if-nez v0, :cond_b

    .line 933
    iget-object v0, p0, Lo/FirebaseAnalytics;->extraCommand:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 34101
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_7

    :cond_8
    const/4 v0, 0x0

    :goto_7
    if-nez v0, :cond_b

    .line 934
    iget-object v0, p0, Lo/FirebaseAnalytics;->onConnectionSuspended:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_9

    .line 35097
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_8

    :cond_9
    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_a

    goto :goto_9

    :cond_a
    return v2

    :cond_b
    :goto_9
    return v1
.end method

.method public onLayoutDirectionChanged(I)Z
    .locals 4

    .line 1112
    invoke-super {p0, p1}, Lo/setFirebaseUIVersion;->onLayoutDirectionChanged(I)Z

    move-result v0

    .line 45497
    iget-boolean v1, p0, Lo/FirebaseAnalytics;->asBinder:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/FirebaseAnalytics;->asInterface:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 1115
    iget-object v1, p0, Lo/FirebaseAnalytics;->asInterface:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p1}, Lo/MediaMetadataCompat$BitmapKey;->extraCallback(Landroid/graphics/drawable/Drawable;I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 45502
    :cond_1
    iget-boolean v1, p0, Lo/FirebaseAnalytics;->getInterfaceDescriptor:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo/FirebaseAnalytics;->extraCommand:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lo/FirebaseAnalytics;->INotificationSideChannel:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    .line 1118
    iget-object v1, p0, Lo/FirebaseAnalytics;->extraCommand:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p1}, Lo/MediaMetadataCompat$BitmapKey;->extraCallback(Landroid/graphics/drawable/Drawable;I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 45507
    :cond_3
    iget-boolean v1, p0, Lo/FirebaseAnalytics;->onTransact:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    :cond_4
    if-eqz v2, :cond_5

    .line 1121
    iget-object v1, p0, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p1}, Lo/MediaMetadataCompat$BitmapKey;->extraCallback(Landroid/graphics/drawable/Drawable;I)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_5
    if-eqz v0, :cond_6

    .line 1125
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_6
    return v3
.end method

.method protected onLevelChange(I)Z
    .locals 4

    .line 1132
    invoke-super {p0, p1}, Lo/setFirebaseUIVersion;->onLevelChange(I)Z

    move-result v0

    .line 46497
    iget-boolean v1, p0, Lo/FirebaseAnalytics;->asBinder:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/FirebaseAnalytics;->asInterface:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 1135
    iget-object v1, p0, Lo/FirebaseAnalytics;->asInterface:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 46502
    :cond_1
    iget-boolean v1, p0, Lo/FirebaseAnalytics;->getInterfaceDescriptor:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo/FirebaseAnalytics;->extraCommand:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lo/FirebaseAnalytics;->INotificationSideChannel:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    .line 1138
    iget-object v1, p0, Lo/FirebaseAnalytics;->extraCommand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 46507
    :cond_3
    iget-boolean v1, p0, Lo/FirebaseAnalytics;->onTransact:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_5

    .line 1141
    iget-object v1, p0, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_5
    if-eqz v0, :cond_6

    .line 1145
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_6
    return v0
.end method

.method public final onMessageChannelReady(F)V
    .locals 1

    .line 1842
    iget v0, p0, Lo/FirebaseAnalytics;->warmup:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 1843
    iput p1, p0, Lo/FirebaseAnalytics;->warmup:F

    .line 1844
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 50385
    iget-boolean p1, p0, Lo/FirebaseAnalytics;->onTransact:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 50386
    iget-object p1, p0, Lo/FirebaseAnalytics;->cancelAll:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/FirebaseAnalytics$ICustomTabsCallback;

    if-eqz p1, :cond_1

    .line 50388
    invoke-interface {p1}, Lo/FirebaseAnalytics$ICustomTabsCallback;->onNavigationEvent()V

    :cond_1
    return-void
.end method

.method public final onMessageChannelReady(Landroid/content/res/ColorStateList;)V
    .locals 2

    const/4 v0, 0x1

    .line 1692
    iput-boolean v0, p0, Lo/FirebaseAnalytics;->AudioAttributesImplApi21Parcelizer:Z

    .line 1693
    iget-object v1, p0, Lo/FirebaseAnalytics;->connect:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_2

    .line 1694
    iput-object p1, p0, Lo/FirebaseAnalytics;->connect:Landroid/content/res/ColorStateList;

    .line 50347
    iget-boolean v1, p0, Lo/FirebaseAnalytics;->asBinder:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/FirebaseAnalytics;->asInterface:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1696
    iget-object v0, p0, Lo/FirebaseAnalytics;->asInterface:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lo/MediaMetadataCompat$BitmapKey;->ICustomTabsCallback(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 1699
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/setFirebaseUIVersion;->onStateChange([I)Z

    :cond_2
    return-void
.end method

.method public final onMessageChannelReady(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .line 50364
    iget-object v0, p0, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lo/MediaMetadataCompat$BitmapKey;->asBinder(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eq v0, p1, :cond_6

    .line 1782
    invoke-direct {p0}, Lo/FirebaseAnalytics;->newSession()F

    move-result v2

    if-eqz p1, :cond_1

    .line 1783
    invoke-static {p1}, Lo/MediaMetadataCompat$BitmapKey;->ICustomTabsCallback$Stub(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    iput-object p1, p0, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    .line 1784
    sget-boolean p1, Lo/isSignInWithEmailLink;->onMessageChannelReady:Z

    if-eqz p1, :cond_2

    .line 50365
    new-instance p1, Landroid/graphics/drawable/RippleDrawable;

    .line 50373
    iget-object v3, p0, Lo/FirebaseAnalytics;->extraCallback:Landroid/content/res/ColorStateList;

    .line 50367
    invoke-static {v3}, Lo/isSignInWithEmailLink;->onPostMessage(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v3

    iget-object v4, p0, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    sget-object v5, Lo/FirebaseAnalytics;->read:Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {p1, v3, v4, v5}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lo/FirebaseAnalytics;->AudioAttributesImplBaseParcelizer:Landroid/graphics/drawable/Drawable;

    .line 1787
    :cond_2
    invoke-direct {p0}, Lo/FirebaseAnalytics;->newSession()F

    move-result p1

    if-eqz v0, :cond_3

    .line 50375
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 50378
    :cond_3
    iget-boolean v0, p0, Lo/FirebaseAnalytics;->onTransact:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_5

    .line 1791
    iget-object v0, p0, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lo/FirebaseAnalytics;->onNavigationEvent(Landroid/graphics/drawable/Drawable;)V

    .line 1794
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    cmpl-float p1, v2, p1

    if-eqz p1, :cond_6

    .line 50379
    iget-object p1, p0, Lo/FirebaseAnalytics;->cancelAll:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/FirebaseAnalytics$ICustomTabsCallback;

    if-eqz p1, :cond_6

    .line 50381
    invoke-interface {p1}, Lo/FirebaseAnalytics$ICustomTabsCallback;->onNavigationEvent()V

    :cond_6
    return-void
.end method

.method public final onNavigationEvent(F)V
    .locals 1

    .line 2069
    iget v0, p0, Lo/FirebaseAnalytics;->postMessage:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2070
    iput p1, p0, Lo/FirebaseAnalytics;->postMessage:F

    .line 2071
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 50416
    iget-object p1, p0, Lo/FirebaseAnalytics;->cancelAll:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/FirebaseAnalytics$ICustomTabsCallback;

    if-eqz p1, :cond_0

    .line 50418
    invoke-interface {p1}, Lo/FirebaseAnalytics$ICustomTabsCallback;->onNavigationEvent()V

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1822
    iget-object v0, p0, Lo/FirebaseAnalytics;->getServiceComponent:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_2

    .line 1823
    iput-object p1, p0, Lo/FirebaseAnalytics;->getServiceComponent:Landroid/content/res/ColorStateList;

    .line 50384
    iget-boolean v0, p0, Lo/FirebaseAnalytics;->onTransact:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1826
    iget-object v0, p0, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lo/MediaMetadataCompat$BitmapKey;->ICustomTabsCallback(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 1829
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/setFirebaseUIVersion;->onStateChange([I)Z

    :cond_2
    return-void
.end method

.method public final onNavigationEvent(Z)V
    .locals 1

    .line 1874
    iget-boolean v0, p0, Lo/FirebaseAnalytics;->ICustomTabsService:Z

    if-eq v0, p1, :cond_1

    .line 1875
    iput-boolean p1, p0, Lo/FirebaseAnalytics;->ICustomTabsService:Z

    .line 1877
    invoke-direct {p0}, Lo/FirebaseAnalytics;->ICustomTabsService()F

    move-result v0

    if-nez p1, :cond_0

    .line 1878
    iget-boolean p1, p0, Lo/FirebaseAnalytics;->INotificationSideChannel:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1879
    iput-boolean p1, p0, Lo/FirebaseAnalytics;->INotificationSideChannel:Z

    .line 1881
    :cond_0
    invoke-direct {p0}, Lo/FirebaseAnalytics;->ICustomTabsService()F

    move-result p1

    .line 1883
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_1

    .line 50391
    iget-object p1, p0, Lo/FirebaseAnalytics;->cancelAll:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/FirebaseAnalytics$ICustomTabsCallback;

    if-eqz p1, :cond_1

    .line 50393
    invoke-interface {p1}, Lo/FirebaseAnalytics$ICustomTabsCallback;->onNavigationEvent()V

    :cond_1
    return-void
.end method

.method public final onNavigationEvent([I)Z
    .locals 2

    .line 949
    iget-object v0, p0, Lo/FirebaseAnalytics;->onConnected:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 950
    iput-object p1, p0, Lo/FirebaseAnalytics;->onConnected:[I

    .line 35507
    iget-boolean v0, p0, Lo/FirebaseAnalytics;->onTransact:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 952
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lo/FirebaseAnalytics;->onMessageChannelReady([I[I)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public final onPostMessage()V
    .locals 1

    .line 36452
    iget-object v0, p0, Lo/FirebaseAnalytics;->cancelAll:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/FirebaseAnalytics$ICustomTabsCallback;

    if-eqz v0, :cond_0

    .line 36454
    invoke-interface {v0}, Lo/FirebaseAnalytics$ICustomTabsCallback;->onNavigationEvent()V

    .line 967
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final onPostMessage(F)V
    .locals 1

    .line 1400
    iget v0, p0, Lo/FirebaseAnalytics;->onMessageChannelReady:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1401
    iput p1, p0, Lo/FirebaseAnalytics;->onMessageChannelReady:F

    .line 1402
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 49452
    iget-object p1, p0, Lo/FirebaseAnalytics;->cancelAll:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/FirebaseAnalytics$ICustomTabsCallback;

    if-eqz p1, :cond_0

    .line 49454
    invoke-interface {p1}, Lo/FirebaseAnalytics$ICustomTabsCallback;->onNavigationEvent()V

    :cond_0
    return-void
.end method

.method public final onPostMessage(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1471
    iget-object v0, p0, Lo/FirebaseAnalytics;->MediaBrowserCompat:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 1472
    iput-object p1, p0, Lo/FirebaseAnalytics;->MediaBrowserCompat:Landroid/content/res/ColorStateList;

    .line 1473
    iget-boolean v0, p0, Lo/FirebaseAnalytics;->INotificationSideChannel$Default:Z

    if-eqz v0, :cond_0

    .line 50310
    iget-object v0, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v0, v0, Lo/setFirebaseUIVersion$extraCallback;->onMessageChannelReady:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 50311
    iget-object v0, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput-object p1, v0, Lo/setFirebaseUIVersion$extraCallback;->onMessageChannelReady:Landroid/content/res/ColorStateList;

    .line 50312
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/setFirebaseUIVersion;->onStateChange([I)Z

    .line 1476
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/setFirebaseUIVersion;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method public final onPostMessage(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1964
    iget-object v0, p0, Lo/FirebaseAnalytics;->extraCommand:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    .line 1966
    invoke-direct {p0}, Lo/FirebaseAnalytics;->ICustomTabsService()F

    move-result v0

    .line 1967
    iput-object p1, p0, Lo/FirebaseAnalytics;->extraCommand:Landroid/graphics/drawable/Drawable;

    .line 1968
    invoke-direct {p0}, Lo/FirebaseAnalytics;->ICustomTabsService()F

    move-result p1

    .line 1970
    iget-object v1, p0, Lo/FirebaseAnalytics;->extraCommand:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 50408
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1971
    :cond_0
    iget-object v1, p0, Lo/FirebaseAnalytics;->extraCommand:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lo/FirebaseAnalytics;->onNavigationEvent(Landroid/graphics/drawable/Drawable;)V

    .line 1973
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_1

    .line 50411
    iget-object p1, p0, Lo/FirebaseAnalytics;->cancelAll:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/FirebaseAnalytics$ICustomTabsCallback;

    if-eqz p1, :cond_1

    .line 50413
    invoke-interface {p1}, Lo/FirebaseAnalytics$ICustomTabsCallback;->onNavigationEvent()V

    :cond_1
    return-void
.end method

.method public final onPostMessage(Z)V
    .locals 3

    .line 1739
    iget-boolean v0, p0, Lo/FirebaseAnalytics;->onTransact:Z

    if-eq v0, p1, :cond_5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 50353
    iget-object v0, p0, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1741
    :goto_0
    iput-boolean p1, p0, Lo/FirebaseAnalytics;->onTransact:Z

    if-eqz p1, :cond_1

    .line 50354
    iget-object p1, p0, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eq v0, p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    if-eqz p1, :cond_3

    .line 1747
    iget-object p1, p0, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lo/FirebaseAnalytics;->onNavigationEvent(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 1749
    :cond_3
    iget-object p1, p0, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    .line 50356
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1752
    :cond_4
    :goto_3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 50359
    iget-object p1, p0, Lo/FirebaseAnalytics;->cancelAll:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/FirebaseAnalytics$ICustomTabsCallback;

    if-eqz p1, :cond_5

    .line 50361
    invoke-interface {p1}, Lo/FirebaseAnalytics$ICustomTabsCallback;->onNavigationEvent()V

    :cond_5
    return-void
.end method

.method public final onRelationshipValidationResult(F)V
    .locals 1

    .line 2103
    iget v0, p0, Lo/FirebaseAnalytics;->requestPostMessageChannel:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2104
    invoke-direct {p0}, Lo/FirebaseAnalytics;->ICustomTabsService()F

    move-result v0

    .line 2105
    iput p1, p0, Lo/FirebaseAnalytics;->requestPostMessageChannel:F

    .line 2106
    invoke-direct {p0}, Lo/FirebaseAnalytics;->ICustomTabsService()F

    move-result p1

    .line 2108
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    .line 50421
    iget-object p1, p0, Lo/FirebaseAnalytics;->cancelAll:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/FirebaseAnalytics$ICustomTabsCallback;

    if-eqz p1, :cond_0

    .line 50423
    invoke-interface {p1}, Lo/FirebaseAnalytics$ICustomTabsCallback;->onNavigationEvent()V

    :cond_0
    return-void
.end method

.method public onStateChange([I)Z
    .locals 1

    .line 972
    iget-boolean v0, p0, Lo/FirebaseAnalytics;->INotificationSideChannel$Default:Z

    if-eqz v0, :cond_0

    .line 973
    invoke-super {p0, p1}, Lo/setFirebaseUIVersion;->onStateChange([I)Z

    .line 36961
    :cond_0
    iget-object v0, p0, Lo/FirebaseAnalytics;->onConnected:[I

    .line 975
    invoke-direct {p0, p1, v0}, Lo/FirebaseAnalytics;->onMessageChannelReady([I[I)Z

    move-result p1

    return p1
.end method

.method public final onTransact(F)V
    .locals 1

    .line 2142
    iget v0, p0, Lo/FirebaseAnalytics;->updateVisuals:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2143
    invoke-direct {p0}, Lo/FirebaseAnalytics;->ICustomTabsService()F

    move-result v0

    .line 2144
    iput p1, p0, Lo/FirebaseAnalytics;->updateVisuals:F

    .line 2145
    invoke-direct {p0}, Lo/FirebaseAnalytics;->ICustomTabsService()F

    move-result p1

    .line 2147
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    .line 50426
    iget-object p1, p0, Lo/FirebaseAnalytics;->cancelAll:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/FirebaseAnalytics$ICustomTabsCallback;

    if-eqz p1, :cond_0

    .line 50428
    invoke-interface {p1}, Lo/FirebaseAnalytics$ICustomTabsCallback;->onNavigationEvent()V

    :cond_0
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 1250
    invoke-virtual {p0}, Lo/FirebaseAnalytics;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1252
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1176
    iget v0, p0, Lo/FirebaseAnalytics;->setCallbacksMessenger:I

    if-eq v0, p1, :cond_0

    .line 1177
    iput p1, p0, Lo/FirebaseAnalytics;->setCallbacksMessenger:I

    .line 1178
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1189
    iget-object v0, p0, Lo/FirebaseAnalytics;->getNotifyChildrenChangedOptions:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 1190
    iput-object p1, p0, Lo/FirebaseAnalytics;->getNotifyChildrenChangedOptions:Landroid/graphics/ColorFilter;

    .line 1191
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1203
    iget-object v0, p0, Lo/FirebaseAnalytics;->onConnectionSuspended:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1204
    iput-object p1, p0, Lo/FirebaseAnalytics;->onConnectionSuspended:Landroid/content/res/ColorStateList;

    .line 1205
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/setFirebaseUIVersion;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 3

    .line 1211
    iget-object v0, p0, Lo/FirebaseAnalytics;->setInternalConnectionCallback:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_2

    .line 1212
    iput-object p1, p0, Lo/FirebaseAnalytics;->setInternalConnectionCallback:Landroid/graphics/PorterDuff$Mode;

    .line 1213
    iget-object v0, p0, Lo/FirebaseAnalytics;->onConnectionSuspended:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 48058
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 48059
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v1, v0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 1213
    :goto_1
    iput-object v1, p0, Lo/FirebaseAnalytics;->onConnectionFailed:Landroid/graphics/PorterDuffColorFilter;

    .line 1214
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_2
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 4

    .line 1152
    invoke-super {p0, p1, p2}, Lo/setFirebaseUIVersion;->setVisible(ZZ)Z

    move-result v0

    .line 47497
    iget-boolean v1, p0, Lo/FirebaseAnalytics;->asBinder:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/FirebaseAnalytics;->asInterface:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 1155
    iget-object v1, p0, Lo/FirebaseAnalytics;->asInterface:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 47502
    :cond_1
    iget-boolean v1, p0, Lo/FirebaseAnalytics;->getInterfaceDescriptor:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo/FirebaseAnalytics;->extraCommand:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lo/FirebaseAnalytics;->INotificationSideChannel:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    .line 1158
    iget-object v1, p0, Lo/FirebaseAnalytics;->extraCommand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 47507
    :cond_3
    iget-boolean v1, p0, Lo/FirebaseAnalytics;->onTransact:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_5

    .line 1161
    iget-object v1, p0, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_5
    if-eqz v0, :cond_6

    .line 1165
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_6
    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 1258
    invoke-virtual {p0}, Lo/FirebaseAnalytics;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1260
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final warmup(F)V
    .locals 1

    .line 2285
    iget v0, p0, Lo/FirebaseAnalytics;->IPostMessageService:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 2286
    iput p1, p0, Lo/FirebaseAnalytics;->IPostMessageService:F

    .line 2287
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 50447
    iget-boolean p1, p0, Lo/FirebaseAnalytics;->onTransact:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/FirebaseAnalytics;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 50448
    iget-object p1, p0, Lo/FirebaseAnalytics;->cancelAll:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/FirebaseAnalytics$ICustomTabsCallback;

    if-eqz p1, :cond_1

    .line 50450
    invoke-interface {p1}, Lo/FirebaseAnalytics$ICustomTabsCallback;->onNavigationEvent()V

    :cond_1
    return-void
.end method
