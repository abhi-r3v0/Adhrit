.class final Lo/registerOnLoadCanceledListener$asInterface;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/registerOnLoadCanceledListener;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/View;",
        "Lo/addWrites;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/registerOnLoadCanceledListener;


# direct methods
.method constructor <init>(Lo/registerOnLoadCanceledListener;)V
    .locals 0

    iput-object p1, p0, Lo/registerOnLoadCanceledListener$asInterface;->onNavigationEvent:Lo/registerOnLoadCanceledListener;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 39
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1108
    sget-object p1, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 2000
    sget-object p1, Lo/isInLayout;->MediaBrowserCompat$MediaBrowserImplBase$2:Lo/isAdded;

    sget-object v0, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v1, 0x6a

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "extra"

    const-string v1, "card_add"

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 1109
    iget-object p1, p0, Lo/registerOnLoadCanceledListener$asInterface;->onNavigationEvent:Lo/registerOnLoadCanceledListener;

    new-instance v3, Lo/getPositionDescription;

    invoke-direct {v3}, Lo/getPositionDescription;-><init>()V

    check-cast v3, Lo/getAllowEnterTransitionOverlap;

    .line 2042
    iput-object v3, p1, Lo/registerOnLoadCanceledListener;->onNavigationEvent:Lo/getAllowEnterTransitionOverlap;

    .line 1110
    iget-object p1, p0, Lo/registerOnLoadCanceledListener$asInterface;->onNavigationEvent:Lo/registerOnLoadCanceledListener;

    .line 3042
    iget-object p1, p1, Lo/registerOnLoadCanceledListener;->onNavigationEvent:Lo/getAllowEnterTransitionOverlap;

    if-eqz p1, :cond_3

    .line 1110
    invoke-interface {p1}, Lo/getAllowEnterTransitionOverlap;->onMessageChannelReady()Landroidx/fragment/app/Fragment;

    move-result-object p1

    new-instance v3, Lo/getValue;

    iget-object v4, p0, Lo/registerOnLoadCanceledListener$asInterface;->onNavigationEvent:Lo/registerOnLoadCanceledListener;

    invoke-static {v4}, Lo/registerOnLoadCanceledListener;->onPostMessage(Lo/registerOnLoadCanceledListener;)Lo/registerOnLoadCanceledListener$ICustomTabsCallback;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3206
    iget-object v4, v4, Lo/registerOnLoadCanceledListener$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    const/16 v5, 0x10

    .line 1110
    invoke-direct {v3, v1, v4, v5}, Lo/getValue;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v3, Landroid/os/Parcelable;

    .line 4016
    invoke-static {p1, v3, v0}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    goto :goto_2

    .line 1112
    :cond_1
    iget-object p1, p0, Lo/registerOnLoadCanceledListener$asInterface;->onNavigationEvent:Lo/registerOnLoadCanceledListener;

    new-instance v3, Lo/onActivityPostResumed;

    invoke-direct {v3}, Lo/onActivityPostResumed;-><init>()V

    check-cast v3, Lo/getAllowEnterTransitionOverlap;

    .line 4042
    iput-object v3, p1, Lo/registerOnLoadCanceledListener;->onNavigationEvent:Lo/getAllowEnterTransitionOverlap;

    .line 1113
    iget-object p1, p0, Lo/registerOnLoadCanceledListener$asInterface;->onNavigationEvent:Lo/registerOnLoadCanceledListener;

    .line 5042
    iget-object p1, p1, Lo/registerOnLoadCanceledListener;->onNavigationEvent:Lo/getAllowEnterTransitionOverlap;

    if-eqz p1, :cond_3

    .line 1113
    invoke-interface {p1}, Lo/getAllowEnterTransitionOverlap;->onMessageChannelReady()Landroidx/fragment/app/Fragment;

    move-result-object p1

    new-instance v3, Lo/onDetach$onMessageChannelReady;

    iget-object v4, p0, Lo/registerOnLoadCanceledListener$asInterface;->onNavigationEvent:Lo/registerOnLoadCanceledListener;

    invoke-static {v4}, Lo/registerOnLoadCanceledListener;->onPostMessage(Lo/registerOnLoadCanceledListener;)Lo/registerOnLoadCanceledListener$ICustomTabsCallback;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 5206
    iget-object v4, v4, Lo/registerOnLoadCanceledListener$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v4, v2

    .line 1113
    :goto_1
    invoke-direct {v3, v1, v4}, Lo/onDetach$onMessageChannelReady;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v3, Landroid/os/Parcelable;

    .line 6016
    invoke-static {p1, v3, v0}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 1116
    :cond_3
    :goto_2
    iget-object p1, p0, Lo/registerOnLoadCanceledListener$asInterface;->onNavigationEvent:Lo/registerOnLoadCanceledListener;

    .line 6042
    iget-object p1, p1, Lo/registerOnLoadCanceledListener;->onNavigationEvent:Lo/getAllowEnterTransitionOverlap;

    if-eqz p1, :cond_5

    .line 1116
    invoke-interface {p1}, Lo/getAllowEnterTransitionOverlap;->onMessageChannelReady()Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 1117
    iget-object v0, p0, Lo/registerOnLoadCanceledListener$asInterface;->onNavigationEvent:Lo/registerOnLoadCanceledListener;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    .line 6464
    new-instance v1, Lo/binderDied;

    invoke-direct {v1, v0}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    const v0, 0x7f010047

    const v3, 0x7f010048

    .line 6571
    iput v0, v1, Lo/MediaControllerCompat$MediaControllerImplApi23;->extraCallback:I

    .line 6572
    iput v3, v1, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback:I

    const/4 v0, 0x0

    .line 6573
    iput v0, v1, Lo/MediaControllerCompat$MediaControllerImplApi23;->onTransact:I

    .line 6574
    iput v0, v1, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback$Stub:I

    const v0, 0x7f0b01ff

    const/4 v3, 0x2

    .line 7343
    invoke-virtual {v1, v0, p1, v2, v3}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 7651
    iget-boolean p1, v1, Lo/MediaControllerCompat$MediaControllerImplApi23;->onRelationshipValidationResult:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    .line 7655
    iput-boolean p1, v1, Lo/MediaControllerCompat$MediaControllerImplApi23;->asBinder:Z

    const-string p1, "AS"

    .line 7656
    iput-object p1, v1, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 1122
    invoke-virtual {v1}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    goto :goto_3

    .line 7652
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_5
    :goto_3
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
