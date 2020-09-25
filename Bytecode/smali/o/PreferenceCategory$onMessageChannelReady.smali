.class final Lo/PreferenceCategory$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/PreferenceCategory;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "list",
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
.field private synthetic onMessageChannelReady:Lo/PreferenceCategory;


# direct methods
.method constructor <init>(Lo/PreferenceCategory;)V
    .locals 0

    iput-object p1, p0, Lo/PreferenceCategory$onMessageChannelReady;->onMessageChannelReady:Lo/PreferenceCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 8

    .line 47
    check-cast p1, Ljava/util/List;

    .line 1183
    iget-object v0, p0, Lo/PreferenceCategory$onMessageChannelReady;->onMessageChannelReady:Lo/PreferenceCategory;

    invoke-static {v0}, Lo/PreferenceCategory;->ICustomTabsCallback(Lo/PreferenceCategory;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1188
    iget-object p1, p0, Lo/PreferenceCategory$onMessageChannelReady;->onMessageChannelReady:Lo/PreferenceCategory;

    invoke-static {p1}, Lo/PreferenceCategory;->onNavigationEvent(Lo/PreferenceCategory;)Lo/PreferenceGroup;

    move-result-object p1

    .line 2032
    iget-object p1, p1, Lo/PreferenceGroup;->onPostMessage:Lo/setActive;

    .line 1188
    new-instance v6, Lo/onDetach$onRelationshipValidationResult;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v5, ""

    const-string v4, ""

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lo/onDetach$onRelationshipValidationResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 1196
    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/dreamplug/fabrik/ui/control/CardDetails;

    .line 1197
    invoke-virtual {v3}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lo/PreferenceCategory$onMessageChannelReady;->onMessageChannelReady:Lo/PreferenceCategory;

    invoke-static {v4}, Lo/PreferenceCategory;->onPostMessage(Lo/PreferenceCategory;)Lo/onDetach$newSession;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2085
    iget-object v4, v4, Lo/onDetach$newSession;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v4, v0

    .line 1197
    :goto_0
    invoke-static {v3, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, v2

    .line 1196
    :cond_3
    check-cast v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;

    :cond_4
    const-string v1, "list"

    .line 1202
    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_b

    if-nez v0, :cond_5

    .line 1203
    invoke-static {p1}, Lo/getSessionPersistenceKey;->onPostMessage(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;

    .line 1205
    :cond_5
    iget-object p1, p0, Lo/PreferenceCategory$onMessageChannelReady;->onMessageChannelReady:Lo/PreferenceCategory;

    invoke-static {p1}, Lo/PreferenceCategory;->onNavigationEvent(Lo/PreferenceCategory;)Lo/PreferenceGroup;

    move-result-object p1

    .line 3032
    iget-object p1, p1, Lo/PreferenceGroup;->onPostMessage:Lo/setActive;

    .line 1206
    new-instance v7, Lo/onDetach$onRelationshipValidationResult;

    .line 1207
    invoke-virtual {v0}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_6

    move-object v3, v2

    goto :goto_1

    :cond_6
    move-object v3, v1

    .line 1208
    :goto_1
    invoke-virtual {v0}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getIssuer_code()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move-object v4, v2

    goto :goto_2

    :cond_7
    move-object v4, v1

    .line 1209
    :goto_2
    invoke-virtual {v0}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getIssuer()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    move-object v5, v2

    goto :goto_3

    :cond_8
    move-object v5, v1

    .line 1210
    :goto_3
    invoke-virtual {v0}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getBrand()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    move-object v6, v2

    goto :goto_4

    :cond_9
    move-object v6, v1

    .line 1211
    :goto_4
    invoke-virtual {v0}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getAccount_number()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    move-object v0, v2

    :cond_a
    move-object v1, v7

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v0

    .line 1206
    invoke-direct/range {v1 .. v6}, Lo/onDetach$onRelationshipValidationResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    invoke-virtual {p1, v7}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 1216
    :cond_b
    new-instance p1, Lo/onActivityResult;

    invoke-direct {p1}, Lo/onActivityResult;-><init>()V

    iget-object v0, p0, Lo/PreferenceCategory$onMessageChannelReady;->onMessageChannelReady:Lo/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v1, 0x7f13027e

    invoke-static {v1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "context"

    .line 4031
    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "text"

    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4032
    sget v3, Lo/preferLastSpan$ICustomTabsCallback$Stub;->error_toast_layout:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lo/onActivityResult;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;ZI)V

    return-void
.end method
