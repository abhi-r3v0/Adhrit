.class final Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$asBinder;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "invoke",
        "com/dreamplug/fabrik/ui/max/MaxLandingFragment$setUpLock$1$1$1",
        "com/dreamplug/fabrik/ui/max/MaxLandingFragment$$special$$inlined$apply$lambda$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

.field private synthetic onPostMessage:Lcom/dreamplug/fabrik/ui/max/TemplateProperties;


# direct methods
.method constructor <init>(Lcom/dreamplug/fabrik/ui/max/TemplateProperties;Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)V
    .locals 0

    iput-object p1, p0, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$asBinder;->onPostMessage:Lcom/dreamplug/fabrik/ui/max/TemplateProperties;

    iput-object p2, p0, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$asBinder;->ICustomTabsCallback:Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 44
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1202
    iget-object p1, p0, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$asBinder;->onPostMessage:Lcom/dreamplug/fabrik/ui/max/TemplateProperties;

    .line 2041
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/max/TemplateProperties;->extraCallback:Lcom/dreamplug/fabrik/ui/max/Cta;

    if-eqz p1, :cond_0

    .line 2076
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/max/Cta;->onNavigationEvent:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    new-array v1, v0, [Lo/addWrite;

    const/4 v2, 0x0

    .line 1203
    iget-object v3, p0, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$asBinder;->onPostMessage:Lcom/dreamplug/fabrik/ui/max/TemplateProperties;

    .line 3050
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/max/TemplateProperties;->onRelationshipValidationResult:Ljava/lang/String;

    .line 4043
    new-instance v4, Lo/addWrite;

    const-string/jumbo v5, "type"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    const-string v2, "pairs"

    .line 1203
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4105
    new-instance v2, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v0, "max_cta_click"

    .line 1203
    invoke-static {v0, v2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1204
    invoke-static {p1}, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;->extraCallback(Ljava/lang/String;)V

    .line 44
    :cond_0
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
