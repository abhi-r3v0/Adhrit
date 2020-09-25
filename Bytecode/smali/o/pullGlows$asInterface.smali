.class final Lo/pullGlows$asInterface;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/pullGlows;->asInterface()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field private synthetic extraCallback:I

.field private synthetic onNavigationEvent:Lo/pullGlows;

.field private synthetic onPostMessage:Ljava/util/Map;


# direct methods
.method constructor <init>(Lo/pullGlows;ILjava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lo/pullGlows$asInterface;->onNavigationEvent:Lo/pullGlows;

    iput p2, p0, Lo/pullGlows$asInterface;->extraCallback:I

    iput-object p3, p0, Lo/pullGlows$asInterface;->onPostMessage:Ljava/util/Map;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 5

    .line 1795
    iget-object v0, p0, Lo/pullGlows$asInterface;->onNavigationEvent:Lo/pullGlows;

    invoke-static {v0}, Lo/pullGlows;->extraCallback(Lo/pullGlows;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1796
    iget-object v0, p0, Lo/pullGlows$asInterface;->onNavigationEvent:Lo/pullGlows;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/pullGlows;->extraCallback(Lo/pullGlows;Ljava/lang/String;)V

    .line 1797
    iget v0, p0, Lo/pullGlows$asInterface;->extraCallback:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lo/pullGlows$asInterface;->onNavigationEvent:Lo/pullGlows;

    invoke-static {v1}, Lo/pullGlows;->asInterface(Lo/pullGlows;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1798
    iget-object v2, p0, Lo/pullGlows$asInterface;->onNavigationEvent:Lo/pullGlows;

    invoke-static {v2}, Lo/pullGlows;->ICustomTabsCallback$Stub(Lo/pullGlows;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lo/pullGlows$asInterface;->onNavigationEvent:Lo/pullGlows;

    invoke-static {v3}, Lo/pullGlows;->asInterface(Lo/pullGlows;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;

    .line 2027
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->onPostMessage:Ljava/lang/String;

    .line 1798
    iget-object v4, p0, Lo/pullGlows$asInterface;->onNavigationEvent:Lo/pullGlows;

    invoke-static {v4}, Lo/pullGlows;->asInterface(Lo/pullGlows;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1800
    :cond_0
    iget-object v0, p0, Lo/pullGlows$asInterface;->onNavigationEvent:Lo/pullGlows;

    invoke-static {v0}, Lo/pullGlows;->onRelationshipValidationResult(Lo/pullGlows;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1801
    iget-object v0, p0, Lo/pullGlows$asInterface;->onNavigationEvent:Lo/pullGlows;

    invoke-static {v0}, Lo/pullGlows;->onRelationshipValidationResult(Lo/pullGlows;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lo/pullGlows$asInterface;->onPostMessage:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1802
    iget-object v0, p0, Lo/pullGlows$asInterface;->onNavigationEvent:Lo/pullGlows;

    .line 2078
    iget-object v0, v0, Lo/pullGlows;->updateVisuals:Lo/setActive;

    .line 1802
    iget-object v1, p0, Lo/pullGlows$asInterface;->onNavigationEvent:Lo/pullGlows;

    .line 3049
    iget-boolean v1, v1, Lo/pullGlows;->onNavigationEvent:Z

    if-eqz v1, :cond_1

    const-string v1, "post_slider_form "

    goto :goto_1

    :cond_1
    const-string v1, "form"

    .line 1802
    :goto_1
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 1803
    iget-object v0, p0, Lo/pullGlows$asInterface;->onNavigationEvent:Lo/pullGlows;

    .line 3067
    iget-object v0, v0, Lo/pullGlows;->warmup:Lo/setActive;

    .line 3070
    sget-object v1, Lo/getEventTarget;->extraCallback:Lo/getEventTarget;

    check-cast v1, Ljava/util/List;

    .line 1803
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 46
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
