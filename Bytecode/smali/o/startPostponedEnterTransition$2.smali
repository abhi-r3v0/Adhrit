.class final Lo/startPostponedEnterTransition$2;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/startPostponedEnterTransition;-><init>(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V
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
.field final synthetic onNavigationEvent:Lo/startPostponedEnterTransition;


# direct methods
.method constructor <init>(Lo/startPostponedEnterTransition;)V
    .locals 0

    iput-object p1, p0, Lo/startPostponedEnterTransition$2;->onNavigationEvent:Lo/startPostponedEnterTransition;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 21
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1045
    sget-object p1, Lo/setAllowEnterTransitionOverlap;->onPostMessage:Lo/setAllowEnterTransitionOverlap$onPostMessage;

    new-instance p1, Lo/setAllowEnterTransitionOverlap$extraCallback;

    iget-object v0, p0, Lo/startPostponedEnterTransition$2;->onNavigationEvent:Lo/startPostponedEnterTransition;

    invoke-static {v0}, Lo/startPostponedEnterTransition;->onPostMessage(Lo/startPostponedEnterTransition;)Lcom/dreamplug/fabrik/ui/cm/models/Template;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2027
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    if-eqz v0, :cond_0

    .line 2071
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->getInterfaceDescriptor:Lcom/dreamplug/fabrik/ui/cm/models/Ctas;

    if-eqz v0, :cond_0

    .line 2175
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/cm/models/Ctas;->extraCallback:Lcom/dreamplug/fabrik/ui/cm/models/Cta;

    if-eqz v0, :cond_0

    .line 3018
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/cm/models/Cta;->asBinder:Lcom/dreamplug/fabrik/ui/cm/models/Cta$Flow;

    if-eqz v0, :cond_0

    .line 3031
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/cm/models/Cta$Flow;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/cm/models/MyCardsResponse;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1045
    :goto_0
    invoke-direct {p1, v0}, Lo/setAllowEnterTransitionOverlap$extraCallback;-><init>(Lcom/dreamplug/fabrik/ui/cm/models/MyCardsResponse;)V

    new-instance v0, Lo/startPostponedEnterTransition$2$2;

    invoke-direct {v0, p0}, Lo/startPostponedEnterTransition$2$2;-><init>(Lo/startPostponedEnterTransition$2;)V

    check-cast v0, Lo/onDisconnectSetValue;

    invoke-static {p1, v0}, Lo/setAllowEnterTransitionOverlap$onPostMessage;->extraCallback(Lo/setAllowEnterTransitionOverlap$extraCallback;Lo/onDisconnectSetValue;)Lo/setAllowEnterTransitionOverlap;

    move-result-object p1

    .line 1065
    iget-object v0, p0, Lo/startPostponedEnterTransition$2;->onNavigationEvent:Lo/startPostponedEnterTransition;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lo/asBinder;

    invoke-virtual {v0}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    const-string v1, "month"

    invoke-virtual {p1, v0, v1}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    .line 21
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1

    .line 1065
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
