.class public final Lo/completeWakefulIntent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/checkForGaps;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/completeWakefulIntent$onMessageChannelReady;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0017\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\nH\u0016\u00a2\u0006\u0002\u0010\u000bJ\u001a\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0008H\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/contacts/ContactsAdapter;",
        "Lcom/dreamplug/utils/list/CardsAdapter;",
        "isGiftingFlow",
        "",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(ZLcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
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


# instance fields
.field private final ICustomTabsCallback:Lo/hasGapsToFix$onMessageChannelReady;

.field private final extraCallback:Z


# direct methods
.method public constructor <init>(ZLo/hasGapsToFix$onMessageChannelReady;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lo/completeWakefulIntent;->extraCallback:Z

    iput-object p2, p0, Lo/completeWakefulIntent;->ICustomTabsCallback:Lo/hasGapsToFix$onMessageChannelReady;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/view/ViewGroup;I)Lo/createOrientationHelpers;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    packed-switch p2, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 26
    :pswitch_0
    new-instance p2, Lo/findFragmentById;

    iget-object v0, p0, Lo/completeWakefulIntent;->ICustomTabsCallback:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/findFragmentById;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 27
    :pswitch_1
    new-instance p2, Lo/findFragmentByTag;

    iget-object v0, p0, Lo/completeWakefulIntent;->ICustomTabsCallback:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/findFragmentByTag;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 25
    :pswitch_2
    new-instance p2, Lo/setLayoutTransition;

    iget-boolean v0, p0, Lo/completeWakefulIntent;->extraCallback:Z

    iget-object v1, p0, Lo/completeWakefulIntent;->ICustomTabsCallback:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0, v1}, Lo/setLayoutTransition;-><init>(Landroid/view/ViewGroup;ZLo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    :pswitch_data_0
    .packed-switch 0x36b1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final extraCallback(Lo/StaggeredGridLayoutManager;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    instance-of v0, p1, Lo/onActivityPrePaused;

    if-eqz v0, :cond_0

    const/16 p1, 0x36b1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 17
    :cond_0
    instance-of v0, p1, Lo/onActivityPreStopped;

    if-eqz v0, :cond_1

    const/16 p1, 0x36b3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 18
    :cond_1
    instance-of p1, p1, Lo/LifecycleCoroutineScopeImpl;

    if-eqz p1, :cond_2

    const/16 p1, 0x36b2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
