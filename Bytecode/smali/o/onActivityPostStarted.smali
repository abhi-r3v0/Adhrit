.class public final Lo/onActivityPostStarted;
.super Lo/getContentPaddingTop;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016J\u0010\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0018\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020\u0005H\u0016J\u0010\u0010#\u001a\u00020$2\u0006\u0010!\u001a\u00020\u001bH\u0002J\u000e\u0010%\u001a\u00020$2\u0006\u0010!\u001a\u00020\u001bJ\u001e\u0010&\u001a\u00020$2\u0016\u0010\'\u001a\u0012\u0012\u0004\u0012\u00020\u00160\u0015j\u0008\u0012\u0004\u0012\u00020\u0016`\u0017J\u0010\u0010(\u001a\u00020$2\u0006\u0010!\u001a\u00020\u001bH\u0002R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0014\u001a\u0012\u0012\u0004\u0012\u00020\u00160\u0015j\u0008\u0012\u0004\u0012\u00020\u0016`\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006)"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/contacts/festives/creatives/CreativesPagerAdapter;",
        "Lcom/dreamplug/androidapp/ui/widget/ViewPagerAdapter;",
        "context",
        "Landroid/content/Context;",
        "viewPager",
        "Landroidx/viewpager/widget/ViewPager;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroid/content/Context;Landroidx/viewpager/widget/ViewPager;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "getClickListener",
        "()Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "getContext",
        "()Landroid/content/Context;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "getInflater",
        "()Landroid/view/LayoutInflater;",
        "runnableStore",
        "Landroid/util/SparseArray;",
        "Ljava/lang/Runnable;",
        "splashPagerList",
        "Ljava/util/ArrayList;",
        "Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCardCreative;",
        "Lkotlin/collections/ArrayList;",
        "getViewPager",
        "()Landroidx/viewpager/widget/ViewPager;",
        "getCount",
        "",
        "getItemPosition",
        "object",
        "",
        "getView",
        "Landroid/view/View;",
        "position",
        "pager",
        "playAnimation",
        "",
        "runAnim",
        "setList",
        "rList",
        "stopAnimation",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback$Stub:Landroid/content/Context;

.field private final asBinder:Lo/PlaybackStateCompat;

.field public onMessageChannelReady:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCardCreative;",
            ">;"
        }
    .end annotation
.end field

.field final onNavigationEvent:Lo/hasGapsToFix$onMessageChannelReady;

.field private final onPostMessage:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final onRelationshipValidationResult:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/PlaybackStateCompat;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "viewPager"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickListener"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Lo/getContentPaddingTop;-><init>()V

    iput-object p1, p0, Lo/onActivityPostStarted;->ICustomTabsCallback$Stub:Landroid/content/Context;

    iput-object p2, p0, Lo/onActivityPostStarted;->asBinder:Lo/PlaybackStateCompat;

    iput-object p3, p0, Lo/onActivityPostStarted;->onNavigationEvent:Lo/hasGapsToFix$onMessageChannelReady;

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/onActivityPostStarted;->onMessageChannelReady:Ljava/util/ArrayList;

    .line 26
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lo/onActivityPostStarted;->onPostMessage:Landroid/util/SparseArray;

    .line 28
    iget-object p1, p0, Lo/onActivityPostStarted;->ICustomTabsCallback$Stub:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    iput-object p1, p0, Lo/onActivityPostStarted;->onRelationshipValidationResult:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/Object;)I
    .locals 1

    const-string v0, "object"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, -0x2

    return p1
.end method

.method public final ICustomTabsCallback(ILo/PlaybackStateCompat;)Landroid/view/View;
    .locals 11

    const-string v0, "pager"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lo/onActivityPostStarted;->onRelationshipValidationResult:Landroid/view/LayoutInflater;

    check-cast p2, Landroid/view/ViewGroup;

    const v1, 0x7f0e020c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "view"

    .line 31
    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->root:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    .line 32
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->back:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lo/setSpeed;

    .line 35
    iget-object v1, p0, Lo/onActivityPostStarted;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v3, "splashPagerList[position]"

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCardCreative;

    const-string v3, "background"

    .line 36
    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1057
    iget-object v3, v1, Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCardCreative;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    .line 36
    invoke-static/range {v2 .. v9}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    const-string/jumbo v2, "root"

    .line 37
    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Landroid/view/View;

    .line 1063
    iget-object v4, v1, Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCardCreative;->extraCallback:Ljava/lang/String;

    .line 2009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "Resources.getSystem()"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v2, 0x1

    const/high16 v5, 0x41a00000    # 20.0f

    .line 2010
    invoke-static {v2, v5, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x7c

    .line 37
    invoke-static/range {v3 .. v10}, Lo/missCount;->onNavigationEvent(Landroid/view/View;Ljava/lang/String;FLjava/lang/String;Ljava/lang/Float;[FLjava/lang/Integer;I)V

    .line 38
    new-instance v0, Lo/onActivityPostStarted$onMessageChannelReady;

    invoke-direct {v0, p0, p1, v1}, Lo/onActivityPostStarted$onMessageChannelReady;-><init>(Lo/onActivityPostStarted;ILcom/dreamplug/fabrik/ui/contacts/festives/GreetingCardCreative;)V

    check-cast v0, Lo/onDisconnectSetValue;

    invoke-static {p2, v0}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    return-object p2
.end method

.method public final extraCallback()I
    .locals 1

    .line 51
    iget-object v0, p0, Lo/onActivityPostStarted;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method

.method public final onMessageChannelReady(I)V
    .locals 2

    if-ltz p1, :cond_2

    .line 60
    iget-object v0, p0, Lo/onActivityPostStarted;->asBinder:Lo/PlaybackStateCompat;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 61
    iget-object v0, p0, Lo/onActivityPostStarted;->asBinder:Lo/PlaybackStateCompat;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0b0450

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 62
    :goto_0
    iget-object v1, p0, Lo/onActivityPostStarted;->onPostMessage:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {v0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    if-eqz v0, :cond_2

    .line 65
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_2
    return-void
.end method

.method public final onPostMessage(I)V
    .locals 4

    if-ltz p1, :cond_2

    .line 70
    iget-object v0, p0, Lo/onActivityPostStarted;->asBinder:Lo/PlaybackStateCompat;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 71
    iget-object v0, p0, Lo/onActivityPostStarted;->asBinder:Lo/PlaybackStateCompat;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0b0450

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 72
    :goto_0
    iget-object v1, p0, Lo/onActivityPostStarted;->onPostMessage:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 75
    :cond_1
    new-instance v1, Lo/onActivityPostStarted$extraCallback;

    invoke-direct {v1, v0}, Lo/onActivityPostStarted$extraCallback;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    check-cast v1, Ljava/lang/Runnable;

    .line 79
    iget-object v2, p0, Lo/onActivityPostStarted;->onPostMessage:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz v0, :cond_2

    const-wide/16 v2, 0xc8

    .line 80
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
