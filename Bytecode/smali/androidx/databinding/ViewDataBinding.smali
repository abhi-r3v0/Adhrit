.class public abstract Landroidx/databinding/ViewDataBinding;
.super Lo/rewind;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/databinding/ViewDataBinding$OnStartListener;,
        Landroidx/databinding/ViewDataBinding$onMessageChannelReady;,
        Landroidx/databinding/ViewDataBinding$extraCallback;,
        Landroidx/databinding/ViewDataBinding$onNavigationEvent;,
        Landroidx/databinding/ViewDataBinding$onRelationshipValidationResult;,
        Landroidx/databinding/ViewDataBinding$onPostMessage;,
        Landroidx/databinding/ViewDataBinding$onTransact;,
        Landroidx/databinding/ViewDataBinding$asBinder;,
        Landroidx/databinding/ViewDataBinding$ICustomTabsCallback;
    }
.end annotation


# static fields
.field private static final asInterface:Landroid/view/View$OnAttachStateChangeListener;

.field private static final extraCallback:Z

.field private static onMessageChannelReady:I

.field private static final onNavigationEvent:I

.field private static final onPostMessage:Landroidx/databinding/ViewDataBinding$extraCallback;

.field private static final onTransact:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Landroidx/databinding/ViewDataBinding;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final ICustomTabsCallback:Lo/rateWithExtras;

.field private ICustomTabsCallback$Stub:Z

.field private ICustomTabsCallback$Stub$Proxy:Landroid/view/Choreographer;

.field private ICustomTabsService:Z

.field private final asBinder:Ljava/lang/Runnable;

.field private extraCommand:Landroidx/databinding/ViewDataBinding;

.field private final getInterfaceDescriptor:Landroid/view/View;

.field private final newSession:Landroid/view/Choreographer$FrameCallback;

.field private onRelationshipValidationResult:Z

.field private postMessage:Landroid/os/Handler;

.field private warmup:[Landroidx/databinding/ViewDataBinding$asBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Landroidx/databinding/ViewDataBinding;->onMessageChannelReady:I

    const/16 v1, 0x8

    .line 86
    sput v1, Landroidx/databinding/ViewDataBinding;->onNavigationEvent:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 88
    :goto_0
    sput-boolean v0, Landroidx/databinding/ViewDataBinding;->extraCallback:Z

    .line 93
    new-instance v0, Landroidx/databinding/ViewDataBinding$3;

    invoke-direct {v0}, Landroidx/databinding/ViewDataBinding$3;-><init>()V

    sput-object v0, Landroidx/databinding/ViewDataBinding;->onPostMessage:Landroidx/databinding/ViewDataBinding$extraCallback;

    .line 151
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Landroidx/databinding/ViewDataBinding;->onTransact:Ljava/lang/ref/ReferenceQueue;

    .line 156
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    .line 157
    sput-object v0, Landroidx/databinding/ViewDataBinding;->asInterface:Landroid/view/View$OnAttachStateChangeListener;

    return-void

    .line 159
    :cond_1
    new-instance v0, Landroidx/databinding/ViewDataBinding$2;

    invoke-direct {v0}, Landroidx/databinding/ViewDataBinding$2;-><init>()V

    sput-object v0, Landroidx/databinding/ViewDataBinding;->asInterface:Landroid/view/View$OnAttachStateChangeListener;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2311
    :cond_0
    instance-of v0, p1, Lo/rateWithExtras;

    if-eqz v0, :cond_1

    .line 2317
    check-cast p1, Lo/rateWithExtras;

    .line 304
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Lo/rateWithExtras;Landroid/view/View;I)V

    return-void

    .line 2312
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The provided bindingComponent parameter must be an instance of DataBindingComponent. See  https://issuetracker.google.com/issues/116541301 for details of why this parameter is not defined as DataBindingComponent"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Lo/rateWithExtras;Landroid/view/View;I)V
    .locals 1

    .line 279
    invoke-direct {p0}, Lo/rewind;-><init>()V

    .line 179
    new-instance v0, Landroidx/databinding/ViewDataBinding$6;

    invoke-direct {v0, p0}, Landroidx/databinding/ViewDataBinding$6;-><init>(Landroidx/databinding/ViewDataBinding;)V

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding;->asBinder:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 204
    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->onRelationshipValidationResult:Z

    .line 209
    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->ICustomTabsCallback$Stub:Z

    .line 280
    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->ICustomTabsCallback:Lo/rateWithExtras;

    .line 281
    new-array p1, p3, [Landroidx/databinding/ViewDataBinding$asBinder;

    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->warmup:[Landroidx/databinding/ViewDataBinding$asBinder;

    .line 282
    iput-object p2, p0, Landroidx/databinding/ViewDataBinding;->getInterfaceDescriptor:Landroid/view/View;

    .line 283
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 286
    sget-boolean p1, Landroidx/databinding/ViewDataBinding;->extraCallback:Z

    if-eqz p1, :cond_0

    .line 287
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->ICustomTabsCallback$Stub$Proxy:Landroid/view/Choreographer;

    .line 288
    new-instance p1, Landroidx/databinding/ViewDataBinding$10;

    invoke-direct {p1, p0}, Landroidx/databinding/ViewDataBinding$10;-><init>(Landroidx/databinding/ViewDataBinding;)V

    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->newSession:Landroid/view/Choreographer$FrameCallback;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 295
    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->newSession:Landroid/view/Choreographer$FrameCallback;

    .line 296
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->postMessage:Landroid/os/Handler;

    return-void

    .line 284
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "DataBinding must be created in view\'s UI Thread"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static ICustomTabsCallback(Ljava/lang/String;I)I
    .locals 3

    .line 1334
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge p1, v0, :cond_0

    mul-int/lit8 v1, v1, 0xa

    .line 1338
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v1, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method static synthetic ICustomTabsCallback(Landroidx/databinding/ViewDataBinding;)Ljava/lang/Runnable;
    .locals 0

    .line 65
    iget-object p0, p0, Landroidx/databinding/ViewDataBinding;->asBinder:Ljava/lang/Runnable;

    return-object p0
.end method

.method protected static ICustomTabsCallback(Lo/rateWithExtras;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$onMessageChannelReady;Landroid/util/SparseIntArray;)[Ljava/lang/Object;
    .locals 6

    .line 718
    new-array p2, p2, [Ljava/lang/Object;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 719
    invoke-static/range {v0 .. v5}, Landroidx/databinding/ViewDataBinding;->onNavigationEvent(Lo/rateWithExtras;Landroid/view/View;[Ljava/lang/Object;Landroidx/databinding/ViewDataBinding$onMessageChannelReady;Landroid/util/SparseIntArray;Z)V

    return-object p2
.end method

.method static synthetic ICustomTabsCallback$Stub()V
    .locals 3

    .line 5349
    :cond_0
    :goto_0
    sget-object v0, Landroidx/databinding/ViewDataBinding;->onTransact:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5350
    instance-of v1, v0, Landroidx/databinding/ViewDataBinding$asBinder;

    if-eqz v1, :cond_0

    .line 5351
    check-cast v0, Landroidx/databinding/ViewDataBinding$asBinder;

    .line 5410
    iget-object v1, v0, Landroidx/databinding/ViewDataBinding$asBinder;->onMessageChannelReady:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 5411
    iget-object v1, v0, Landroidx/databinding/ViewDataBinding$asBinder;->onNavigationEvent:Landroidx/databinding/ViewDataBinding$ICustomTabsCallback;

    iget-object v2, v0, Landroidx/databinding/ViewDataBinding$asBinder;->onMessageChannelReady:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroidx/databinding/ViewDataBinding$ICustomTabsCallback;->ICustomTabsCallback(Ljava/lang/Object;)V

    :cond_1
    const/4 v1, 0x0

    .line 5414
    iput-object v1, v0, Landroidx/databinding/ViewDataBinding$asBinder;->onMessageChannelReady:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic asInterface()Ljava/lang/ref/ReferenceQueue;
    .locals 1

    .line 65
    sget-object v0, Landroidx/databinding/ViewDataBinding;->onTransact:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method static synthetic extraCallback(Landroidx/databinding/ViewDataBinding;)Landroid/view/View;
    .locals 0

    .line 65
    iget-object p0, p0, Landroidx/databinding/ViewDataBinding;->getInterfaceDescriptor:Landroid/view/View;

    return-object p0
.end method

.method private extraCallback(I)Z
    .locals 2

    .line 559
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->warmup:[Landroidx/databinding/ViewDataBinding$asBinder;

    aget-object p1, v0, p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2410
    iget-object v1, p1, Landroidx/databinding/ViewDataBinding$asBinder;->onMessageChannelReady:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 2411
    iget-object v0, p1, Landroidx/databinding/ViewDataBinding$asBinder;->onNavigationEvent:Landroidx/databinding/ViewDataBinding$ICustomTabsCallback;

    iget-object v1, p1, Landroidx/databinding/ViewDataBinding$asBinder;->onMessageChannelReady:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroidx/databinding/ViewDataBinding$ICustomTabsCallback;->ICustomTabsCallback(Ljava/lang/Object;)V

    const/4 v0, 0x1

    :cond_0
    const/4 v1, 0x0

    .line 2414
    iput-object v1, p1, Landroidx/databinding/ViewDataBinding$asBinder;->onMessageChannelReady:Ljava/lang/Object;

    :cond_1
    return v0
.end method

.method private newSession()V
    .locals 1

    .line 455
    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->ICustomTabsService:Z

    if-eqz v0, :cond_0

    .line 456
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->asBinder()V

    return-void

    .line 459
    :cond_0
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->onRelationshipValidationResult()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 462
    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->ICustomTabsService:Z

    const/4 v0, 0x0

    .line 463
    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->ICustomTabsCallback$Stub:Z

    .line 473
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->onMessageChannelReady()V

    .line 478
    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->ICustomTabsService:Z

    return-void
.end method

.method static onMessageChannelReady(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;
    .locals 1

    if-eqz p0, :cond_0

    .line 525
    sget v0, Lo/getSessionToken2Bundle$onMessageChannelReady;->dataBinding:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/databinding/ViewDataBinding;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private onMessageChannelReady(ILjava/lang/Object;Landroidx/databinding/ViewDataBinding$extraCallback;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 680
    :cond_0
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->warmup:[Landroidx/databinding/ViewDataBinding$asBinder;

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    .line 682
    invoke-interface {p3, p0, p1}, Landroidx/databinding/ViewDataBinding$extraCallback;->ICustomTabsCallback(Landroidx/databinding/ViewDataBinding;I)Landroidx/databinding/ViewDataBinding$asBinder;

    move-result-object v0

    .line 683
    iget-object p3, p0, Landroidx/databinding/ViewDataBinding;->warmup:[Landroidx/databinding/ViewDataBinding$asBinder;

    aput-object v0, p3, p1

    .line 4410
    :cond_1
    iget-object p1, v0, Landroidx/databinding/ViewDataBinding$asBinder;->onMessageChannelReady:Ljava/lang/Object;

    if-eqz p1, :cond_2

    .line 4411
    iget-object p1, v0, Landroidx/databinding/ViewDataBinding$asBinder;->onNavigationEvent:Landroidx/databinding/ViewDataBinding$ICustomTabsCallback;

    iget-object p3, v0, Landroidx/databinding/ViewDataBinding$asBinder;->onMessageChannelReady:Ljava/lang/Object;

    invoke-interface {p1, p3}, Landroidx/databinding/ViewDataBinding$ICustomTabsCallback;->ICustomTabsCallback(Ljava/lang/Object;)V

    :cond_2
    const/4 p1, 0x0

    .line 4414
    iput-object p1, v0, Landroidx/databinding/ViewDataBinding$asBinder;->onMessageChannelReady:Ljava/lang/Object;

    .line 4402
    iput-object p2, v0, Landroidx/databinding/ViewDataBinding$asBinder;->onMessageChannelReady:Ljava/lang/Object;

    .line 4403
    iget-object p1, v0, Landroidx/databinding/ViewDataBinding$asBinder;->onMessageChannelReady:Ljava/lang/Object;

    if-eqz p1, :cond_3

    .line 4404
    iget-object p1, v0, Landroidx/databinding/ViewDataBinding$asBinder;->onNavigationEvent:Landroidx/databinding/ViewDataBinding$ICustomTabsCallback;

    iget-object p2, v0, Landroidx/databinding/ViewDataBinding$asBinder;->onMessageChannelReady:Ljava/lang/Object;

    invoke-interface {p1, p2}, Landroidx/databinding/ViewDataBinding$ICustomTabsCallback;->onPostMessage(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method protected static onMessageChannelReady(Landroidx/databinding/ViewDataBinding;)V
    .locals 0

    .line 487
    invoke-direct {p0}, Landroidx/databinding/ViewDataBinding;->newSession()V

    return-void
.end method

.method private static onMessageChannelReady(Ljava/lang/String;I)Z
    .locals 3

    .line 1315
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    :goto_0
    if-ge p1, v0, :cond_2

    .line 1320
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static onNavigationEvent(Landroid/view/ViewGroup;I)I
    .locals 8

    .line 1291
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1292
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1293
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1294
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1296
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v4, p1, 0x1

    :goto_0
    if-ge v4, v3, :cond_3

    .line 1299
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1300
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 1301
    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    .line 1302
    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1303
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x30

    if-ne v6, v7, :cond_1

    return p1

    .line 1306
    :cond_1
    invoke-static {v5, v2}, Landroidx/databinding/ViewDataBinding;->onMessageChannelReady(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    move p1, v4

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return p1
.end method

.method private static onNavigationEvent(Ljava/lang/String;ILandroidx/databinding/ViewDataBinding$onMessageChannelReady;I)I
    .locals 2

    const/16 v0, 0x2f

    .line 1276
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1277
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 1279
    iget-object p2, p2, Landroidx/databinding/ViewDataBinding$onMessageChannelReady;->ICustomTabsCallback:[[Ljava/lang/String;

    aget-object p2, p2, p3

    .line 1280
    array-length p3, p2

    :goto_0
    if-ge p1, p3, :cond_1

    .line 1282
    aget-object v0, p2, p1

    .line 1283
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method static synthetic onNavigationEvent(Landroidx/databinding/ViewDataBinding;ILjava/lang/Object;I)V
    .locals 0

    .line 5549
    invoke-virtual {p0, p1, p3}, Landroidx/databinding/ViewDataBinding;->onMessageChannelReady(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5551
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->asBinder()V

    :cond_0
    return-void
.end method

.method private static onNavigationEvent(Lo/rateWithExtras;Landroid/view/View;[Ljava/lang/Object;Landroidx/databinding/ViewDataBinding$onMessageChannelReady;Landroid/util/SparseIntArray;Z)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4525
    sget v2, Lo/getSessionToken2Bundle$onMessageChannelReady;->dataBinding:I

    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/databinding/ViewDataBinding;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    return-void

    .line 1194
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 1195
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    :cond_2
    const-string v9, "layout"

    const/4 v2, -0x1

    const/4 v11, 0x1

    if-eqz p5, :cond_4

    if-eqz v1, :cond_4

    .line 1197
    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x5f

    .line 1198
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-lez v3, :cond_7

    add-int/2addr v3, v11

    .line 1199
    invoke-static {v1, v3}, Landroidx/databinding/ViewDataBinding;->onMessageChannelReady(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1200
    invoke-static {v1, v3}, Landroidx/databinding/ViewDataBinding;->ICustomTabsCallback(Ljava/lang/String;I)I

    move-result v1

    .line 1201
    aget-object v3, p2, v1

    if-nez v3, :cond_3

    .line 1202
    aput-object v0, p2, v1

    :cond_3
    if-nez v7, :cond_6

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_7

    const-string v3, "binding_"

    .line 1209
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/16 v3, 0x8

    .line 1210
    invoke-static {v1, v3}, Landroidx/databinding/ViewDataBinding;->ICustomTabsCallback(Ljava/lang/String;I)I

    move-result v1

    .line 1211
    aget-object v3, p2, v1

    if-nez v3, :cond_5

    .line 1212
    aput-object v0, p2, v1

    :cond_5
    if-nez v7, :cond_6

    :goto_1
    const/4 v1, -0x1

    :cond_6
    move v12, v1

    const/4 v1, 0x1

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    const/4 v12, -0x1

    :goto_2
    if-nez v1, :cond_8

    .line 1221
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    if-lez v1, :cond_8

    if-eqz v8, :cond_8

    .line 1224
    invoke-virtual {v8, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ltz v1, :cond_8

    aget-object v2, p2, v1

    if-nez v2, :cond_8

    .line 1226
    aput-object v0, p2, v1

    .line 1231
    :cond_8
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_d

    .line 1232
    move-object v13, v0

    check-cast v13, Landroid/view/ViewGroup;

    .line 1233
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_3
    if-ge v0, v14, :cond_d

    .line 1236
    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ltz v12, :cond_b

    .line 1238
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_b

    .line 1239
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "_0"

    .line 1240
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1241
    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_b

    .line 1243
    invoke-static {v3, v1, v7, v12}, Landroidx/databinding/ViewDataBinding;->onNavigationEvent(Ljava/lang/String;ILandroidx/databinding/ViewDataBinding$onMessageChannelReady;I)I

    move-result v3

    if-ltz v3, :cond_b

    add-int/lit8 v1, v3, 0x1

    .line 1248
    iget-object v4, v7, Landroidx/databinding/ViewDataBinding$onMessageChannelReady;->onNavigationEvent:[[I

    aget-object v4, v4, v12

    aget v4, v4, v3

    .line 1249
    iget-object v5, v7, Landroidx/databinding/ViewDataBinding$onMessageChannelReady;->onPostMessage:[[I

    aget-object v5, v5, v12

    aget v3, v5, v3

    .line 1250
    invoke-static {v13, v0}, Landroidx/databinding/ViewDataBinding;->onNavigationEvent(Landroid/view/ViewGroup;I)I

    move-result v5

    if-ne v5, v0, :cond_9

    .line 1252
    invoke-static {v6, v2, v3}, Lo/setShuffleModeEnabledRemoved;->onNavigationEvent(Lo/rateWithExtras;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    aput-object v3, p2, v4

    :goto_4
    move v10, v0

    move v11, v1

    const/4 v0, 0x1

    goto :goto_6

    :cond_9
    sub-int/2addr v5, v0

    add-int/2addr v5, v11

    .line 1256
    new-array v15, v5, [Landroid/view/View;

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v5, :cond_a

    add-int v11, v0, v10

    .line 1258
    invoke-virtual {v13, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    aput-object v11, v15, v10

    add-int/lit8 v10, v10, 0x1

    const/4 v11, 0x1

    goto :goto_5

    .line 1260
    :cond_a
    invoke-static {v6, v15, v3}, Lo/setShuffleModeEnabledRemoved;->onPostMessage(Lo/rateWithExtras;[Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    aput-object v3, p2, v4

    add-int/lit8 v5, v5, -0x1

    add-int/2addr v0, v5

    goto :goto_4

    :cond_b
    move v10, v0

    move v11, v1

    const/4 v0, 0x0

    :goto_6
    if-nez v0, :cond_c

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v2

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 1268
    invoke-static/range {v0 .. v5}, Landroidx/databinding/ViewDataBinding;->onNavigationEvent(Lo/rateWithExtras;Landroid/view/View;[Ljava/lang/Object;Landroidx/databinding/ViewDataBinding$onMessageChannelReady;Landroid/util/SparseIntArray;Z)V

    :cond_c
    const/4 v0, 0x1

    add-int/lit8 v1, v10, 0x1

    move v0, v1

    move v1, v11

    const/4 v11, 0x1

    goto/16 :goto_3

    :cond_d
    return-void
.end method

.method static synthetic onPostMessage(Landroidx/databinding/ViewDataBinding;)Z
    .locals 1

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->onRelationshipValidationResult:Z

    return v0
.end method

.method static synthetic onTransact()Landroid/view/View$OnAttachStateChangeListener;
    .locals 1

    .line 65
    sget-object v0, Landroidx/databinding/ViewDataBinding;->asInterface:Landroid/view/View$OnAttachStateChangeListener;

    return-object v0
.end method


# virtual methods
.method protected final ICustomTabsCallback(ILo/MediaControllerCompat;)Z
    .locals 3

    .line 627
    sget-object v0, Landroidx/databinding/ViewDataBinding;->onPostMessage:Landroidx/databinding/ViewDataBinding$extraCallback;

    if-nez p2, :cond_0

    .line 2608
    invoke-direct {p0, p1}, Landroidx/databinding/ViewDataBinding;->extraCallback(I)Z

    move-result p1

    return p1

    .line 2610
    :cond_0
    iget-object v1, p0, Landroidx/databinding/ViewDataBinding;->warmup:[Landroidx/databinding/ViewDataBinding$asBinder;

    aget-object v1, v1, p1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 2612
    invoke-direct {p0, p1, p2, v0}, Landroidx/databinding/ViewDataBinding;->onMessageChannelReady(ILjava/lang/Object;Landroidx/databinding/ViewDataBinding$extraCallback;)V

    return v2

    .line 3419
    :cond_1
    iget-object v1, v1, Landroidx/databinding/ViewDataBinding$asBinder;->onMessageChannelReady:Ljava/lang/Object;

    if-ne v1, p2, :cond_2

    const/4 p1, 0x0

    return p1

    .line 2618
    :cond_2
    invoke-direct {p0, p1}, Landroidx/databinding/ViewDataBinding;->extraCallback(I)Z

    .line 2619
    invoke-direct {p0, p1, p2, v0}, Landroidx/databinding/ViewDataBinding;->onMessageChannelReady(ILjava/lang/Object;Landroidx/databinding/ViewDataBinding$extraCallback;)V

    return v2
.end method

.method public abstract ICustomTabsCallback(Ljava/lang/Object;)Z
.end method

.method public final asBinder()V
    .locals 2

    move-object v0, p0

    .line 570
    :goto_0
    iget-object v1, v0, Landroidx/databinding/ViewDataBinding;->extraCommand:Landroidx/databinding/ViewDataBinding;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 580
    :cond_0
    monitor-enter v0

    .line 581
    :try_start_0
    iget-boolean v1, v0, Landroidx/databinding/ViewDataBinding;->onRelationshipValidationResult:Z

    if-eqz v1, :cond_1

    .line 582
    monitor-exit v0

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 584
    iput-boolean v1, v0, Landroidx/databinding/ViewDataBinding;->onRelationshipValidationResult:Z

    .line 585
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 586
    sget-boolean v1, Landroidx/databinding/ViewDataBinding;->extraCallback:Z

    if-eqz v1, :cond_2

    .line 587
    iget-object v1, v0, Landroidx/databinding/ViewDataBinding;->ICustomTabsCallback$Stub$Proxy:Landroid/view/Choreographer;

    iget-object v0, v0, Landroidx/databinding/ViewDataBinding;->newSession:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v1, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void

    .line 589
    :cond_2
    iget-object v1, v0, Landroidx/databinding/ViewDataBinding;->postMessage:Landroid/os/Handler;

    iget-object v0, v0, Landroidx/databinding/ViewDataBinding;->asBinder:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v1

    .line 585
    monitor-exit v0

    throw v1
.end method

.method public final extraCallback()V
    .locals 2

    move-object v0, p0

    .line 444
    :goto_0
    iget-object v1, v0, Landroidx/databinding/ViewDataBinding;->extraCommand:Landroidx/databinding/ViewDataBinding;

    if-nez v1, :cond_0

    .line 445
    invoke-direct {v0}, Landroidx/databinding/ViewDataBinding;->newSession()V

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method protected abstract onMessageChannelReady()V
.end method

.method protected abstract onMessageChannelReady(II)Z
.end method

.method public abstract onNavigationEvent()V
.end method

.method protected final onNavigationEvent(Landroidx/databinding/ViewDataBinding;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1158
    iput-object p0, p1, Landroidx/databinding/ViewDataBinding;->extraCommand:Landroidx/databinding/ViewDataBinding;

    :cond_0
    return-void
.end method

.method public abstract onRelationshipValidationResult()Z
.end method
