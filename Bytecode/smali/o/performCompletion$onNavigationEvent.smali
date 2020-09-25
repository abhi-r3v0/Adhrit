.class public final Lo/performCompletion$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/performCompletion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\tH\u0002J\u000e\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0015J\n\u0010\u0016\u001a\u0004\u0018\u00010\u0011H\u0002J\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\tH\u0002J\u0006\u0010\u0018\u001a\u00020\u000fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\u0004\u0018\u00010\u000b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/main/tabnavigation/TabNavigationTransactionHelper;",
        "",
        "activity",
        "Landroidx/fragment/app/FragmentActivity;",
        "containerId",
        "",
        "(Landroidx/fragment/app/FragmentActivity;I)V",
        "fragmentStack",
        "Ljava/util/ArrayList;",
        "",
        "supportFragmentManager",
        "Landroidx/fragment/app/FragmentManager;",
        "getSupportFragmentManager",
        "()Landroidx/fragment/app/FragmentManager;",
        "bringFragmentToTop",
        "",
        "fragment",
        "Landroidx/fragment/app/Fragment;",
        "fragmentTag",
        "executeCommand",
        "fragmentData",
        "Lcom/dreamplug/fabrik/ui/main/tabnavigation/TabNavigationManager$SwitchFragment;",
        "getCurrentFragment",
        "getFragmentFromStack",
        "onBackPressed",
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
.field private final ICustomTabsCallback:Lo/onSessionEvent;

.field private final extraCallback:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/onSessionEvent;I)V
    .locals 0

    const-string p2, "activity"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17010
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/performCompletion$onNavigationEvent;->ICustomTabsCallback:Lo/onSessionEvent;

    const p1, 0x7f0b0541

    iput p1, p0, Lo/performCompletion$onNavigationEvent;->onPostMessage:I

    .line 17017
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lo/performCompletion$onNavigationEvent;->extraCallback:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public extraCallback(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 6

    .line 8054
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tab_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9013
    iget-object v1, p0, Lo/performCompletion$onNavigationEvent;->ICustomTabsCallback:Lo/onSessionEvent;

    invoke-virtual {v1}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    const-string v2, "activity.supportFragmentManager"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9993
    iget-boolean v1, v1, Lo/requestExtraBinder;->postMessage:Z

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 9014
    iget-object v1, p0, Lo/performCompletion$onNavigationEvent;->ICustomTabsCallback:Lo/onSessionEvent;

    invoke-virtual {v1}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_8

    .line 10464
    new-instance v4, Lo/binderDied;

    invoke-direct {v4, v1}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    const/4 v1, 0x1

    .line 10778
    iput-boolean v1, v4, Lo/MediaControllerCompat$MediaControllerImplApi23;->mayLaunchUrl:Z

    .line 11013
    iget-object v5, p0, Lo/performCompletion$onNavigationEvent;->ICustomTabsCallback:Lo/onSessionEvent;

    invoke-virtual {v5}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v5

    invoke-static {v5, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11993
    iget-boolean v2, v5, Lo/requestExtraBinder;->postMessage:Z

    if-nez v2, :cond_1

    .line 11014
    iget-object v2, p0, Lo/performCompletion$onNavigationEvent;->ICustomTabsCallback:Lo/onSessionEvent;

    invoke-virtual {v2}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_2

    .line 8057
    iget v5, p0, Lo/performCompletion$onNavigationEvent;->onPostMessage:I

    invoke-virtual {v2, v5}, Lo/requestExtraBinder;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v3

    :cond_2
    if-eqz v3, :cond_4

    .line 8059
    sget-object v2, Lo/setTrackResource;->ICustomTabsCallback:Lo/setTrackResource;

    invoke-static {}, Lo/setTrackResource;->onMessageChannelReady()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/AbstractList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 8060
    sget-object v5, Lo/setTrackResource;->ICustomTabsCallback:Lo/setTrackResource;

    invoke-static {}, Lo/setTrackResource;->onMessageChannelReady()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/AbstractList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v5, 0x0

    if-ge v3, v2, :cond_3

    const v2, 0x7f010046

    const v3, 0x7f010049

    .line 12571
    iput v2, v4, Lo/MediaControllerCompat$MediaControllerImplApi23;->extraCallback:I

    .line 12572
    iput v3, v4, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback:I

    .line 12573
    iput v5, v4, Lo/MediaControllerCompat$MediaControllerImplApi23;->onTransact:I

    .line 12574
    iput v5, v4, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback$Stub:I

    goto :goto_2

    :cond_3
    const v2, 0x7f010045

    const v3, 0x7f01004a

    .line 13571
    iput v2, v4, Lo/MediaControllerCompat$MediaControllerImplApi23;->extraCallback:I

    .line 13572
    iput v3, v4, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback:I

    .line 13573
    iput v5, v4, Lo/MediaControllerCompat$MediaControllerImplApi23;->onTransact:I

    .line 13574
    iput v5, v4, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback$Stub:I

    .line 8067
    :cond_4
    :goto_2
    iget v2, p0, Lo/performCompletion$onNavigationEvent;->onPostMessage:I

    if-eqz v2, :cond_7

    const/4 v3, 0x2

    .line 14343
    invoke-virtual {v4, v2, p1, v0, v3}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 8068
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "bringFragmentToTop: remove from stack "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "tag"

    const-string v2, "fragmentStack"

    invoke-static {v2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15065
    invoke-static {v2, p1}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 8069
    iget-object p1, p0, Lo/performCompletion$onNavigationEvent;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 8070
    invoke-virtual {p0, p2}, Lo/performCompletion$onNavigationEvent;->onPostMessage(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_6

    .line 15651
    iget-boolean p1, v4, Lo/MediaControllerCompat$MediaControllerImplApi23;->onRelationshipValidationResult:Z

    if-eqz p1, :cond_5

    .line 15655
    iput-boolean v1, v4, Lo/MediaControllerCompat$MediaControllerImplApi23;->asBinder:Z

    .line 15656
    iput-object p2, v4, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    goto :goto_3

    .line 15652
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8073
    :cond_6
    :goto_3
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "bringFragmentToTop: add to stack "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16065
    invoke-static {v2, p1}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 8074
    iget-object p1, p0, Lo/performCompletion$onNavigationEvent;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 8075
    invoke-virtual {v4}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    return-void

    .line 14341
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must use non-zero containerViewId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    return-void
.end method

.method public final onNavigationEvent()V
    .locals 5

    .line 3013
    iget-object v0, p0, Lo/performCompletion$onNavigationEvent;->ICustomTabsCallback:Lo/onSessionEvent;

    invoke-virtual {v0}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    const-string v1, "activity.supportFragmentManager"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3993
    iget-boolean v0, v0, Lo/requestExtraBinder;->postMessage:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 3014
    iget-object v0, p0, Lo/performCompletion$onNavigationEvent;->ICustomTabsCallback:Lo/onSessionEvent;

    invoke-virtual {v0}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 2018
    iget v3, p0, Lo/performCompletion$onNavigationEvent;->onPostMessage:I

    invoke-virtual {v0, v3}, Lo/requestExtraBinder;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 1023
    :goto_1
    instance-of v3, v0, Lo/createScroller;

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    check-cast v0, Lo/createScroller;

    invoke-interface {v0}, Lo/createScroller;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_8

    .line 1026
    iget-object v0, p0, Lo/performCompletion$onNavigationEvent;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-le v0, v4, :cond_7

    .line 1027
    iget-object v0, p0, Lo/performCompletion$onNavigationEvent;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "fragmentStack[fragmentStack.size - 2]"

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    .line 1028
    sget-object v3, Lo/setTrackResource;->ICustomTabsCallback:Lo/setTrackResource;

    invoke-static {}, Lo/setTrackResource;->onMessageChannelReady()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/AbstractList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 1029
    iget-object v3, p0, Lo/performCompletion$onNavigationEvent;->extraCallback:Ljava/util/ArrayList;

    move-object v4, v3

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lo/getSessionPersistenceKey;->extraCallback(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 1030
    invoke-virtual {p0}, Lo/performCompletion$onNavigationEvent;->onNavigationEvent()V

    .line 5013
    :cond_3
    iget-object v3, p0, Lo/performCompletion$onNavigationEvent;->ICustomTabsCallback:Lo/onSessionEvent;

    invoke-virtual {v3}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v3

    invoke-static {v3, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5993
    iget-boolean v1, v3, Lo/requestExtraBinder;->postMessage:Z

    if-nez v1, :cond_4

    .line 5014
    iget-object v1, p0, Lo/performCompletion$onNavigationEvent;->ICustomTabsCallback:Lo/onSessionEvent;

    invoke-virtual {v1}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    goto :goto_3

    :cond_4
    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_5

    .line 4051
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "tab_"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/requestExtraBinder;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    :cond_5
    if-eqz v2, :cond_6

    .line 1034
    iget-object v1, p0, Lo/performCompletion$onNavigationEvent;->extraCallback:Ljava/util/ArrayList;

    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lo/getSessionPersistenceKey;->extraCallback(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 1035
    invoke-virtual {p0, v2, v0}, Lo/performCompletion$onNavigationEvent;->extraCallback(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void

    .line 1037
    :cond_6
    iget-object v0, p0, Lo/performCompletion$onNavigationEvent;->ICustomTabsCallback:Lo/onSessionEvent;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    .line 1040
    :cond_7
    iget-object v0, p0, Lo/performCompletion$onNavigationEvent;->ICustomTabsCallback:Lo/onSessionEvent;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_8
    return-void
.end method

.method public onPostMessage(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 7013
    iget-object v0, p0, Lo/performCompletion$onNavigationEvent;->ICustomTabsCallback:Lo/onSessionEvent;

    invoke-virtual {v0}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    const-string v1, "activity.supportFragmentManager"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7993
    iget-boolean v0, v0, Lo/requestExtraBinder;->postMessage:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 7014
    iget-object v0, p0, Lo/performCompletion$onNavigationEvent;->ICustomTabsCallback:Lo/onSessionEvent;

    invoke-virtual {v0}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 6051
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "tab_"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/requestExtraBinder;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method
