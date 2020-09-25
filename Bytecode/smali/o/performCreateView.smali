.class public final Lo/performCreateView;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/checkForGaps;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/performCreateView$ICustomTabsCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0017\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016\u00a2\u0006\u0002\u0010\rJ\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\nH\u0016R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/cm/adapters/CardManagementAdapter;",
        "Lcom/dreamplug/utils/list/CardsAdapter;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "getClickListener",
        "()Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "recycledViewPool",
        "Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;",
        "getItemViewType",
        "",
        "item",
        "Lcom/dreamplug/utils/list/ListItem;",
        "(Lcom/dreamplug/utils/list/ListItem;)Ljava/lang/Integer;",
        "onCreateViewHolder",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lo/performCreateView$ICustomTabsCallback;


# instance fields
.field private final onNavigationEvent:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

.field private final onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/performCreateView$ICustomTabsCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/performCreateView$ICustomTabsCallback;-><init>(B)V

    sput-object v0, Lo/performCreateView;->ICustomTabsCallback:Lo/performCreateView$ICustomTabsCallback;

    return-void
.end method

.method public constructor <init>(Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/performCreateView;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    .line 34
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {p1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    iput-object p1, p0, Lo/performCreateView;->onNavigationEvent:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/view/ViewGroup;I)Lo/createOrientationHelpers;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 80
    :pswitch_1
    new-instance p2, Lo/performStart;

    iget-object v0, p0, Lo/performCreateView;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/performStart;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 79
    :pswitch_2
    new-instance p2, Lo/performOptionsMenuClosed;

    const/4 v0, 0x0

    iget-object v1, p0, Lo/performCreateView;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, v0, p1, v1}, Lo/performOptionsMenuClosed;-><init>(ZLandroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 42
    :pswitch_3
    new-instance p2, Lo/performLowMemory;

    iget-object v0, p0, Lo/performCreateView;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/performLowMemory;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 78
    :pswitch_4
    new-instance p2, Lo/performCreateOptionsMenu;

    iget-object v0, p0, Lo/performCreateView;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/performCreateOptionsMenu;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 77
    :pswitch_5
    new-instance p2, Lo/getEnterTransitionCallback;

    iget-object v0, p0, Lo/performCreateView;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/getEnterTransitionCallback;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 65
    :pswitch_6
    new-instance p2, Lo/performPrepareOptionsMenu;

    iget-object v0, p0, Lo/performCreateView;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/performPrepareOptionsMenu;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 64
    :pswitch_7
    new-instance p2, Lo/performContextItemSelected;

    iget-object v0, p0, Lo/performCreateView;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/performContextItemSelected;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 76
    :pswitch_8
    new-instance p2, Lo/getNextTransition;

    iget-object v0, p0, Lo/performCreateView;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/getNextTransition;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 75
    :pswitch_9
    new-instance p2, Lo/startPostponedEnterTransition;

    iget-object v0, p0, Lo/performCreateView;->onNavigationEvent:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    iget-object v1, p0, Lo/performCreateView;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, v0, p1, v1}, Lo/startPostponedEnterTransition;-><init>(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 63
    :pswitch_a
    new-instance p2, Lo/performActivityCreated;

    iget-object v0, p0, Lo/performCreateView;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/performActivityCreated;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 62
    :pswitch_b
    new-instance p2, Lo/postponeEnterTransition;

    iget-object v0, p0, Lo/performCreateView;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/postponeEnterTransition;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 61
    :pswitch_c
    new-instance p2, Lo/setNextTransition;

    iget-object v0, p0, Lo/performCreateView;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/setNextTransition;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 73
    :pswitch_d
    new-instance p2, Lo/onPreparePanel;

    iget-object v0, p0, Lo/performCreateView;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/onPreparePanel;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 74
    :pswitch_e
    new-instance p2, Lo/validateRequestPermissionsRequestCode;

    iget-object v0, p0, Lo/performCreateView;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/validateRequestPermissionsRequestCode;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 72
    :pswitch_f
    new-instance p2, Lo/performCreate;

    iget-object v0, p0, Lo/performCreateView;->onNavigationEvent:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    iget-object v1, p0, Lo/performCreateView;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, v0, p1, v1}, Lo/performCreate;-><init>(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 71
    :pswitch_10
    new-instance p2, Lo/performDetach;

    iget-object v0, p0, Lo/performCreateView;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/performDetach;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 70
    :pswitch_11
    new-instance p2, Lo/noteStateNotSaved;

    iget-object v0, p0, Lo/performCreateView;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/noteStateNotSaved;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 69
    :pswitch_12
    new-instance p2, Lo/getAnimatingAway;

    iget-object v0, p0, Lo/performCreateView;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/getAnimatingAway;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 68
    :pswitch_13
    new-instance p2, Lo/checkForValidRequestCode;

    invoke-direct {p2, p1}, Lo/checkForValidRequestCode;-><init>(Landroid/view/ViewGroup;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 67
    :pswitch_14
    new-instance p2, Lo/getSupportLoaderManager;

    iget-object v0, p0, Lo/performCreateView;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/getSupportLoaderManager;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 66
    :pswitch_15
    new-instance p2, Lo/startActivityFromFragment;

    iget-object v0, p0, Lo/performCreateView;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/startActivityFromFragment;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 59
    :pswitch_16
    new-instance p2, Lo/performSaveInstanceState;

    iget-object v0, p0, Lo/performCreateView;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/performSaveInstanceState;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 60
    :pswitch_17
    new-instance p2, Lo/setNextAnim;

    iget-object v0, p0, Lo/performCreateView;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/setNextAnim;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 58
    :pswitch_18
    new-instance p2, Lo/performStop;

    iget-object v0, p0, Lo/performCreateView;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/performStop;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 57
    :pswitch_19
    new-instance p2, Lo/performDestroyView;

    iget-object v0, p0, Lo/performCreateView;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/performDestroyView;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 56
    :pswitch_1a
    new-instance p2, Lo/getExitTransitionCallback;

    iget-object v0, p0, Lo/performCreateView;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/getExitTransitionCallback;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 55
    :pswitch_1b
    new-instance p2, Lo/performPause;

    iget-object v0, p0, Lo/performCreateView;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/performPause;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 54
    :pswitch_1c
    new-instance p2, Lo/findFragmentByWho;

    iget-object v0, p0, Lo/performCreateView;->onNavigationEvent:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    iget-object v1, p0, Lo/performCreateView;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, v0, p1, v1}, Lo/findFragmentByWho;-><init>(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 53
    :pswitch_1d
    new-instance p2, Lo/performAttach;

    iget-object v0, p0, Lo/performCreateView;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/performAttach;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 52
    :pswitch_1e
    new-instance p2, Lo/performOptionsMenuClosed;

    const/4 v0, 0x1

    iget-object v1, p0, Lo/performCreateView;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, v0, p1, v1}, Lo/performOptionsMenuClosed;-><init>(ZLandroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 51
    :pswitch_1f
    new-instance p2, Lo/callStartTransitionListener;

    iget-object v0, p0, Lo/performCreateView;->onNavigationEvent:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    iget-object v1, p0, Lo/performCreateView;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, v0, p1, v1}, Lo/callStartTransitionListener;-><init>(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 50
    :pswitch_20
    new-instance p2, Lo/getNextAnim;

    iget-object v0, p0, Lo/performCreateView;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/getNextAnim;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 49
    :pswitch_21
    new-instance p2, Lo/ensureAnimationInfo;

    iget-object v0, p0, Lo/performCreateView;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/ensureAnimationInfo;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 47
    :pswitch_22
    new-instance p2, Lo/onCancelLoad;

    iget-object v0, p0, Lo/performCreateView;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/onCancelLoad;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 48
    :pswitch_23
    new-instance p2, Lo/executePendingTask;

    iget-object v0, p0, Lo/performCreateView;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/executePendingTask;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 46
    :pswitch_24
    new-instance p2, Lo/performPrimaryNavigationFragmentChanged;

    iget-object v0, p0, Lo/performCreateView;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/performPrimaryNavigationFragmentChanged;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 45
    :pswitch_25
    new-instance p2, Lo/performMultiWindowModeChanged;

    iget-object v0, p0, Lo/performCreateView;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/performMultiWindowModeChanged;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 40
    :pswitch_26
    new-instance p2, Lo/performConfigurationChanged;

    iget-object v0, p0, Lo/performCreateView;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/performConfigurationChanged;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 44
    :pswitch_27
    new-instance p2, Lo/performOptionsItemSelected;

    iget-object v0, p0, Lo/performCreateView;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/performOptionsItemSelected;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 43
    :pswitch_28
    new-instance p2, Lo/setOnStartEnterTransitionListener;

    iget-object v0, p0, Lo/performCreateView;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/setOnStartEnterTransitionListener;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 41
    :pswitch_29
    new-instance p2, Lo/performResume;

    iget-object v0, p0, Lo/performCreateView;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/performResume;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 39
    :pswitch_2a
    new-instance p2, Lo/performPictureInPictureModeChanged;

    iget-object v0, p0, Lo/performCreateView;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/performPictureInPictureModeChanged;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 38
    :pswitch_2b
    new-instance p2, Lo/performDestroy;

    iget-object v0, p0, Lo/performCreateView;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/performDestroy;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_0
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final extraCallback(Lo/StaggeredGridLayoutManager;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-static {p1}, Lo/performCreateView$ICustomTabsCallback;->onMessageChannelReady(Lo/StaggeredGridLayoutManager;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
