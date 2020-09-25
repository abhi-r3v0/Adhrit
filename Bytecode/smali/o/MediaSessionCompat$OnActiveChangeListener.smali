.class public final Lo/MediaSessionCompat$OnActiveChangeListener;
.super Lo/verifySession;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/MediaSessionCompat$OnActiveChangeListener$onMessageChannelReady;,
        Lo/MediaSessionCompat$OnActiveChangeListener$extraCallback;,
        Lo/MediaSessionCompat$OnActiveChangeListener$onNavigationEvent;
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback$Stub$Proxy:Lo/MediaSessionCompat$OnActiveChangeListener$onNavigationEvent;

.field private static final ICustomTabsService:Lo/MediaSessionCompat$OnActiveChangeListener$onNavigationEvent;

.field private static final asBinder:Landroid/animation/TimeInterpolator;

.field private static final getInterfaceDescriptor:Lo/MediaSessionCompat$OnActiveChangeListener$onNavigationEvent;

.field private static final newSession:Lo/MediaSessionCompat$OnActiveChangeListener$onNavigationEvent;

.field private static final onRelationshipValidationResult:Landroid/animation/TimeInterpolator;

.field private static final requestPostMessageChannel:Lo/MediaSessionCompat$OnActiveChangeListener$onNavigationEvent;

.field private static final warmup:Lo/MediaSessionCompat$OnActiveChangeListener$onNavigationEvent;


# instance fields
.field private asInterface:Lo/MediaSessionCompat$OnActiveChangeListener$onNavigationEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lo/MediaSessionCompat$OnActiveChangeListener;->onRelationshipValidationResult:Landroid/animation/TimeInterpolator;

    .line 56
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lo/MediaSessionCompat$OnActiveChangeListener;->asBinder:Landroid/animation/TimeInterpolator;

    .line 93
    new-instance v0, Lo/MediaSessionCompat$OnActiveChangeListener$3;

    invoke-direct {v0}, Lo/MediaSessionCompat$OnActiveChangeListener$3;-><init>()V

    sput-object v0, Lo/MediaSessionCompat$OnActiveChangeListener;->ICustomTabsService:Lo/MediaSessionCompat$OnActiveChangeListener$onNavigationEvent;

    .line 100
    new-instance v0, Lo/MediaSessionCompat$OnActiveChangeListener$2;

    invoke-direct {v0}, Lo/MediaSessionCompat$OnActiveChangeListener$2;-><init>()V

    sput-object v0, Lo/MediaSessionCompat$OnActiveChangeListener;->getInterfaceDescriptor:Lo/MediaSessionCompat$OnActiveChangeListener$onNavigationEvent;

    .line 115
    new-instance v0, Lo/MediaSessionCompat$OnActiveChangeListener$4;

    invoke-direct {v0}, Lo/MediaSessionCompat$OnActiveChangeListener$4;-><init>()V

    sput-object v0, Lo/MediaSessionCompat$OnActiveChangeListener;->ICustomTabsCallback$Stub$Proxy:Lo/MediaSessionCompat$OnActiveChangeListener$onNavigationEvent;

    .line 122
    new-instance v0, Lo/MediaSessionCompat$OnActiveChangeListener$1;

    invoke-direct {v0}, Lo/MediaSessionCompat$OnActiveChangeListener$1;-><init>()V

    sput-object v0, Lo/MediaSessionCompat$OnActiveChangeListener;->newSession:Lo/MediaSessionCompat$OnActiveChangeListener$onNavigationEvent;

    .line 129
    new-instance v0, Lo/MediaSessionCompat$OnActiveChangeListener$5;

    invoke-direct {v0}, Lo/MediaSessionCompat$OnActiveChangeListener$5;-><init>()V

    sput-object v0, Lo/MediaSessionCompat$OnActiveChangeListener;->warmup:Lo/MediaSessionCompat$OnActiveChangeListener$onNavigationEvent;

    .line 144
    new-instance v0, Lo/MediaSessionCompat$OnActiveChangeListener$9;

    invoke-direct {v0}, Lo/MediaSessionCompat$OnActiveChangeListener$9;-><init>()V

    sput-object v0, Lo/MediaSessionCompat$OnActiveChangeListener;->requestPostMessageChannel:Lo/MediaSessionCompat$OnActiveChangeListener$onNavigationEvent;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 155
    invoke-direct {p0}, Lo/verifySession;-><init>()V

    .line 58
    sget-object v0, Lo/MediaSessionCompat$OnActiveChangeListener;->requestPostMessageChannel:Lo/MediaSessionCompat$OnActiveChangeListener$onNavigationEvent;

    iput-object v0, p0, Lo/MediaSessionCompat$OnActiveChangeListener;->asInterface:Lo/MediaSessionCompat$OnActiveChangeListener$onNavigationEvent;

    const/16 v0, 0x50

    .line 156
    invoke-direct {p0, v0}, Lo/MediaSessionCompat$OnActiveChangeListener;->ICustomTabsCallback(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 162
    invoke-direct {p0}, Lo/verifySession;-><init>()V

    .line 58
    sget-object v0, Lo/MediaSessionCompat$OnActiveChangeListener;->requestPostMessageChannel:Lo/MediaSessionCompat$OnActiveChangeListener$onNavigationEvent;

    iput-object v0, p0, Lo/MediaSessionCompat$OnActiveChangeListener;->asInterface:Lo/MediaSessionCompat$OnActiveChangeListener$onNavigationEvent;

    .line 163
    invoke-direct {p0, p1}, Lo/MediaSessionCompat$OnActiveChangeListener;->ICustomTabsCallback(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 169
    invoke-direct {p0, p1, p2}, Lo/verifySession;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    sget-object v0, Lo/MediaSessionCompat$OnActiveChangeListener;->requestPostMessageChannel:Lo/MediaSessionCompat$OnActiveChangeListener$onNavigationEvent;

    iput-object v0, p0, Lo/MediaSessionCompat$OnActiveChangeListener;->asInterface:Lo/MediaSessionCompat$OnActiveChangeListener$onNavigationEvent;

    .line 170
    sget-object v0, Lo/getQueueItem;->onNavigationEvent:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 171
    check-cast p2, Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v0, "slideEdge"

    const/4 v1, 0x0

    const/16 v2, 0x50

    invoke-static {p1, p2, v0, v1, v2}, Lo/getText;->extraCallback(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result p2

    .line 173
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 175
    invoke-direct {p0, p2}, Lo/MediaSessionCompat$OnActiveChangeListener;->ICustomTabsCallback(I)V

    return-void
.end method

.method private ICustomTabsCallback(I)V
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    const/16 v0, 0x30

    if-eq p1, v0, :cond_3

    const/16 v0, 0x50

    if-eq p1, v0, :cond_2

    const v0, 0x800003

    if-eq p1, v0, :cond_1

    const v0, 0x800005

    if-ne p1, v0, :cond_0

    .line 223
    sget-object v0, Lo/MediaSessionCompat$OnActiveChangeListener;->warmup:Lo/MediaSessionCompat$OnActiveChangeListener$onNavigationEvent;

    iput-object v0, p0, Lo/MediaSessionCompat$OnActiveChangeListener;->asInterface:Lo/MediaSessionCompat$OnActiveChangeListener$onNavigationEvent;

    goto :goto_0

    .line 226
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid slide direction"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 220
    :cond_1
    sget-object v0, Lo/MediaSessionCompat$OnActiveChangeListener;->getInterfaceDescriptor:Lo/MediaSessionCompat$OnActiveChangeListener$onNavigationEvent;

    iput-object v0, p0, Lo/MediaSessionCompat$OnActiveChangeListener;->asInterface:Lo/MediaSessionCompat$OnActiveChangeListener$onNavigationEvent;

    goto :goto_0

    .line 217
    :cond_2
    sget-object v0, Lo/MediaSessionCompat$OnActiveChangeListener;->requestPostMessageChannel:Lo/MediaSessionCompat$OnActiveChangeListener$onNavigationEvent;

    iput-object v0, p0, Lo/MediaSessionCompat$OnActiveChangeListener;->asInterface:Lo/MediaSessionCompat$OnActiveChangeListener$onNavigationEvent;

    goto :goto_0

    .line 211
    :cond_3
    sget-object v0, Lo/MediaSessionCompat$OnActiveChangeListener;->ICustomTabsCallback$Stub$Proxy:Lo/MediaSessionCompat$OnActiveChangeListener$onNavigationEvent;

    iput-object v0, p0, Lo/MediaSessionCompat$OnActiveChangeListener;->asInterface:Lo/MediaSessionCompat$OnActiveChangeListener$onNavigationEvent;

    goto :goto_0

    .line 214
    :cond_4
    sget-object v0, Lo/MediaSessionCompat$OnActiveChangeListener;->newSession:Lo/MediaSessionCompat$OnActiveChangeListener$onNavigationEvent;

    iput-object v0, p0, Lo/MediaSessionCompat$OnActiveChangeListener;->asInterface:Lo/MediaSessionCompat$OnActiveChangeListener$onNavigationEvent;

    goto :goto_0

    .line 208
    :cond_5
    sget-object v0, Lo/MediaSessionCompat$OnActiveChangeListener;->ICustomTabsService:Lo/MediaSessionCompat$OnActiveChangeListener$onNavigationEvent;

    iput-object v0, p0, Lo/MediaSessionCompat$OnActiveChangeListener;->asInterface:Lo/MediaSessionCompat$OnActiveChangeListener$onNavigationEvent;

    .line 229
    :goto_0
    new-instance v0, Lo/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

    invoke-direct {v0}, Lo/MediaSessionCompat$MediaSessionImplBase$MessageHandler;-><init>()V

    .line 3051
    iput p1, v0, Lo/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->onNavigationEvent:I

    .line 231
    invoke-virtual {p0, v0}, Lo/fromQueueItem;->onNavigationEvent(Lo/getQueueId;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/MediaSessionCompat$ResultReceiverWrapper;)V
    .locals 2

    .line 193
    invoke-super {p0, p1}, Lo/verifySession;->ICustomTabsCallback(Lo/MediaSessionCompat$ResultReceiverWrapper;)V

    .line 2179
    iget-object v0, p1, Lo/MediaSessionCompat$ResultReceiverWrapper;->onMessageChannelReady:Landroid/view/View;

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 2181
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2182
    iget-object p1, p1, Lo/MediaSessionCompat$ResultReceiverWrapper;->onNavigationEvent:Ljava/util/Map;

    const-string v0, "android:slide:screenPosition"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final extraCallback(Landroid/view/ViewGroup;Landroid/view/View;Lo/MediaSessionCompat$ResultReceiverWrapper;)Landroid/animation/Animator;
    .locals 11

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 269
    :cond_0
    iget-object v0, p3, Lo/MediaSessionCompat$ResultReceiverWrapper;->onNavigationEvent:Ljava/util/Map;

    const-string v1, "android:slide:screenPosition"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 270
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v5

    .line 271
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v6

    .line 272
    iget-object v1, p0, Lo/MediaSessionCompat$OnActiveChangeListener;->asInterface:Lo/MediaSessionCompat$OnActiveChangeListener$onNavigationEvent;

    invoke-interface {v1, p1, p2}, Lo/MediaSessionCompat$OnActiveChangeListener$onNavigationEvent;->extraCallback(Landroid/view/ViewGroup;Landroid/view/View;)F

    move-result v7

    .line 273
    iget-object v1, p0, Lo/MediaSessionCompat$OnActiveChangeListener;->asInterface:Lo/MediaSessionCompat$OnActiveChangeListener$onNavigationEvent;

    invoke-interface {v1, p1, p2}, Lo/MediaSessionCompat$OnActiveChangeListener$onNavigationEvent;->onNavigationEvent(Landroid/view/ViewGroup;Landroid/view/View;)F

    move-result v8

    const/4 p1, 0x0

    .line 274
    aget v3, v0, p1

    const/4 p1, 0x1

    aget v4, v0, p1

    sget-object v9, Lo/MediaSessionCompat$OnActiveChangeListener;->asBinder:Landroid/animation/TimeInterpolator;

    move-object v1, p2

    move-object v2, p3

    move-object v10, p0

    .line 275
    invoke-static/range {v1 .. v10}, Lo/fromQueueItemList;->onNavigationEvent(Landroid/view/View;Lo/MediaSessionCompat$ResultReceiverWrapper;IIFFFFLandroid/animation/TimeInterpolator;Lo/fromQueueItem;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public final extraCallback(Lo/MediaSessionCompat$ResultReceiverWrapper;)V
    .locals 2

    .line 187
    invoke-super {p0, p1}, Lo/verifySession;->extraCallback(Lo/MediaSessionCompat$ResultReceiverWrapper;)V

    .line 1179
    iget-object v0, p1, Lo/MediaSessionCompat$ResultReceiverWrapper;->onMessageChannelReady:Landroid/view/View;

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1181
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1182
    iget-object p1, p1, Lo/MediaSessionCompat$ResultReceiverWrapper;->onNavigationEvent:Ljava/util/Map;

    const-string v0, "android:slide:screenPosition"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onMessageChannelReady(Landroid/view/ViewGroup;Landroid/view/View;Lo/MediaSessionCompat$ResultReceiverWrapper;Lo/MediaSessionCompat$ResultReceiverWrapper;)Landroid/animation/Animator;
    .locals 10

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 253
    :cond_0
    iget-object p3, p4, Lo/MediaSessionCompat$ResultReceiverWrapper;->onNavigationEvent:Ljava/util/Map;

    const-string v0, "android:slide:screenPosition"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [I

    .line 254
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v6

    .line 255
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v7

    .line 256
    iget-object v0, p0, Lo/MediaSessionCompat$OnActiveChangeListener;->asInterface:Lo/MediaSessionCompat$OnActiveChangeListener$onNavigationEvent;

    invoke-interface {v0, p1, p2}, Lo/MediaSessionCompat$OnActiveChangeListener$onNavigationEvent;->extraCallback(Landroid/view/ViewGroup;Landroid/view/View;)F

    move-result v4

    .line 257
    iget-object v0, p0, Lo/MediaSessionCompat$OnActiveChangeListener;->asInterface:Lo/MediaSessionCompat$OnActiveChangeListener$onNavigationEvent;

    invoke-interface {v0, p1, p2}, Lo/MediaSessionCompat$OnActiveChangeListener$onNavigationEvent;->onNavigationEvent(Landroid/view/ViewGroup;Landroid/view/View;)F

    move-result v5

    const/4 p1, 0x0

    .line 258
    aget v2, p3, p1

    const/4 p1, 0x1

    aget v3, p3, p1

    sget-object v8, Lo/MediaSessionCompat$OnActiveChangeListener;->onRelationshipValidationResult:Landroid/animation/TimeInterpolator;

    move-object v0, p2

    move-object v1, p4

    move-object v9, p0

    .line 259
    invoke-static/range {v0 .. v9}, Lo/fromQueueItemList;->onNavigationEvent(Landroid/view/View;Lo/MediaSessionCompat$ResultReceiverWrapper;IIFFFFLandroid/animation/TimeInterpolator;Lo/fromQueueItem;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method
