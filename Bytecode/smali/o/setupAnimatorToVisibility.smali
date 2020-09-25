.class public final Lo/setupAnimatorToVisibility;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPadding;
.implements Lo/isOverflowMenuShowPending$onMessageChannelReady;


# instance fields
.field public final ICustomTabsCallback:Z

.field private final ICustomTabsCallback$Stub:Ljava/lang/String;

.field public final asBinder:Lo/isOverflowMenuShowPending;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final extraCallback:Lo/isOverflowMenuShowPending;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final onMessageChannelReady:Lo/init$ICustomTabsCallback;

.field public final onNavigationEvent:Lo/isOverflowMenuShowPending;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final onPostMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/isOverflowMenuShowPending$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/setOverlayMode;Lo/init;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/setupAnimatorToVisibility;->onPostMessage:Ljava/util/List;

    .line 1045
    iget-object v0, p2, Lo/init;->extraCallback:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lo/setupAnimatorToVisibility;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 1065
    iget-boolean v0, p2, Lo/init;->onTransact:Z

    .line 22
    iput-boolean v0, p0, Lo/setupAnimatorToVisibility;->ICustomTabsCallback:Z

    .line 2049
    iget-object v0, p2, Lo/init;->ICustomTabsCallback:Lo/init$ICustomTabsCallback;

    .line 23
    iput-object v0, p0, Lo/setupAnimatorToVisibility;->onMessageChannelReady:Lo/init$ICustomTabsCallback;

    .line 2057
    iget-object v0, p2, Lo/init;->onNavigationEvent:Lo/setTransitioning;

    .line 3020
    new-instance v1, Lo/isOverflowMenuShowing;

    iget-object v0, v0, Lo/setCustomView;->onPostMessage:Ljava/util/List;

    invoke-direct {v1, v0}, Lo/isOverflowMenuShowing;-><init>(Ljava/util/List;)V

    .line 24
    iput-object v1, p0, Lo/setupAnimatorToVisibility;->onNavigationEvent:Lo/isOverflowMenuShowPending;

    .line 3053
    iget-object v0, p2, Lo/init;->onPostMessage:Lo/setTransitioning;

    .line 4020
    new-instance v1, Lo/isOverflowMenuShowing;

    iget-object v0, v0, Lo/setCustomView;->onPostMessage:Ljava/util/List;

    invoke-direct {v1, v0}, Lo/isOverflowMenuShowing;-><init>(Ljava/util/List;)V

    .line 25
    iput-object v1, p0, Lo/setupAnimatorToVisibility;->extraCallback:Lo/isOverflowMenuShowPending;

    .line 4061
    iget-object p2, p2, Lo/init;->onMessageChannelReady:Lo/setTransitioning;

    .line 5020
    new-instance v0, Lo/isOverflowMenuShowing;

    iget-object p2, p2, Lo/setCustomView;->onPostMessage:Ljava/util/List;

    invoke-direct {v0, p2}, Lo/isOverflowMenuShowing;-><init>(Ljava/util/List;)V

    .line 26
    iput-object v0, p0, Lo/setupAnimatorToVisibility;->asBinder:Lo/isOverflowMenuShowPending;

    .line 28
    iget-object p2, p0, Lo/setupAnimatorToVisibility;->onNavigationEvent:Lo/isOverflowMenuShowPending;

    if-eqz p2, :cond_0

    .line 5173
    iget-object v0, p1, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_0
    iget-object p2, p0, Lo/setupAnimatorToVisibility;->extraCallback:Lo/isOverflowMenuShowPending;

    if-eqz p2, :cond_1

    .line 6173
    iget-object v0, p1, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_1
    iget-object p2, p0, Lo/setupAnimatorToVisibility;->asBinder:Lo/isOverflowMenuShowPending;

    if-eqz p2, :cond_2

    .line 7173
    iget-object p1, p1, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    :cond_2
    iget-object p1, p0, Lo/setupAnimatorToVisibility;->onNavigationEvent:Lo/isOverflowMenuShowPending;

    .line 8045
    iget-object p1, p1, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object p1, p0, Lo/setupAnimatorToVisibility;->extraCallback:Lo/isOverflowMenuShowPending;

    .line 9045
    iget-object p1, p1, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object p1, p0, Lo/setupAnimatorToVisibility;->asBinder:Lo/isOverflowMenuShowPending;

    .line 10045
    iget-object p1, p1, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2

    const/4 v0, 0x0

    .line 38
    :goto_0
    iget-object v1, p0, Lo/setupAnimatorToVisibility;->onPostMessage:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 39
    iget-object v1, p0, Lo/setupAnimatorToVisibility;->onPostMessage:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/isOverflowMenuShowPending$onMessageChannelReady;

    invoke-interface {v1}, Lo/isOverflowMenuShowPending$onMessageChannelReady;->ICustomTabsCallback()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final extraCallback(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/setPadding;",
            ">;",
            "Ljava/util/List<",
            "Lo/setPadding;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lo/setupAnimatorToVisibility;->ICustomTabsCallback$Stub:Ljava/lang/String;

    return-object v0
.end method
