.class final Lo/TwoStatePreference$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/TwoStatePreference;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Ljava/util/List<",
        "+",
        "Lcom/dreamplug/fabrik/ui/control/CardDetails;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "Lcom/dreamplug/fabrik/ui/control/CardDetails;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/TwoStatePreference;


# direct methods
.method constructor <init>(Lo/TwoStatePreference;)V
    .locals 0

    iput-object p1, p0, Lo/TwoStatePreference$onNavigationEvent;->extraCallback:Lo/TwoStatePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 6

    .line 32
    check-cast p1, Ljava/util/List;

    .line 1055
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 1057
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_1

    .line 1058
    iget-object v1, p0, Lo/TwoStatePreference$onNavigationEvent;->extraCallback:Lo/TwoStatePreference;

    invoke-static {v1}, Lo/TwoStatePreference;->onPostMessage(Lo/TwoStatePreference;)Lo/onDetach$postMessage;

    move-result-object v1

    .line 2096
    iget-object v1, v1, Lo/onDetach$postMessage;->onMessageChannelReady:Ljava/lang/String;

    .line 1058
    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v4, Lo/SwitchPreference;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v1}, Lo/SwitchPreference;-><init>(Lcom/dreamplug/fabrik/ui/control/CardDetails;Z)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p1, :cond_3

    .line 1060
    check-cast p1, Ljava/lang/Iterable;

    .line 1203
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dreamplug/fabrik/ui/control/CardDetails;

    .line 1061
    invoke-virtual {v1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lo/TwoStatePreference$onNavigationEvent;->extraCallback:Lo/TwoStatePreference;

    invoke-static {v5}, Lo/TwoStatePreference;->onPostMessage(Lo/TwoStatePreference;)Lo/onDetach$postMessage;

    move-result-object v5

    .line 3096
    iget-object v5, v5, Lo/onDetach$postMessage;->onMessageChannelReady:Ljava/lang/String;

    .line 1061
    invoke-static {v4, v5}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1062
    new-instance v4, Lo/SwitchPreference;

    invoke-direct {v4, v1, v3}, Lo/SwitchPreference;-><init>(Lcom/dreamplug/fabrik/ui/control/CardDetails;Z)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1064
    :cond_2
    new-instance v4, Lo/SwitchPreference;

    invoke-direct {v4, v1, v2}, Lo/SwitchPreference;-><init>(Lcom/dreamplug/fabrik/ui/control/CardDetails;Z)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1067
    :cond_3
    iget-object p1, p0, Lo/TwoStatePreference$onNavigationEvent;->extraCallback:Lo/TwoStatePreference;

    invoke-static {p1}, Lo/TwoStatePreference;->ICustomTabsCallback(Lo/TwoStatePreference;)Lo/repositionToWrapContentIfNecessary;

    move-result-object p1

    const-string/jumbo v1, "value"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5000
    iget-object p1, p1, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/checkSpanForGap;

    .line 4038
    invoke-virtual {p1, v0}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    return-void
.end method
