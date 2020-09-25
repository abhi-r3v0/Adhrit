.class final Lo/DropDownPreference$ICustomTabsCallback$Stub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DropDownPreference;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field private synthetic onPostMessage:Lo/DropDownPreference;


# direct methods
.method constructor <init>(Lo/DropDownPreference;)V
    .locals 0

    iput-object p1, p0, Lo/DropDownPreference$ICustomTabsCallback$Stub;->onPostMessage:Lo/DropDownPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 8

    .line 33
    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1108
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/dreamplug/fabrik/ui/control/CardDetails;

    .line 1109
    invoke-virtual {v2}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lo/DropDownPreference$ICustomTabsCallback$Stub;->onPostMessage:Lo/DropDownPreference;

    invoke-static {v3}, Lo/DropDownPreference;->ICustomTabsCallback(Lo/DropDownPreference;)Lo/onDetach$asBinder;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2088
    iget-object v3, v3, Lo/onDetach$asBinder;->ICustomTabsCallback:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v3, v0

    .line 1109
    :goto_0
    invoke-static {v2, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1108
    :cond_2
    check-cast v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;

    :cond_3
    if-eqz v0, :cond_9

    .line 1112
    iget-object p1, p0, Lo/DropDownPreference$ICustomTabsCallback$Stub;->onPostMessage:Lo/DropDownPreference;

    invoke-static {p1}, Lo/DropDownPreference;->extraCallback(Lo/DropDownPreference;)Lo/PreferenceGroup;

    move-result-object p1

    .line 3032
    iget-object p1, p1, Lo/PreferenceGroup;->onPostMessage:Lo/setActive;

    .line 1112
    new-instance v7, Lo/onDetach$onRelationshipValidationResult;

    .line 1113
    invoke-virtual {v0}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_4

    move-object v3, v2

    goto :goto_1

    :cond_4
    move-object v3, v1

    .line 1114
    :goto_1
    invoke-virtual {v0}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getIssuer_code()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    move-object v4, v2

    goto :goto_2

    :cond_5
    move-object v4, v1

    .line 1115
    :goto_2
    invoke-virtual {v0}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getBrand()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move-object v6, v2

    goto :goto_3

    :cond_6
    move-object v6, v1

    .line 1116
    :goto_3
    invoke-virtual {v0}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getIssuer()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move-object v5, v2

    goto :goto_4

    :cond_7
    move-object v5, v1

    .line 1117
    :goto_4
    invoke-virtual {v0}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getAccount_number()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    move-object v0, v2

    :cond_8
    move-object v1, v7

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v0

    .line 1112
    invoke-direct/range {v1 .. v6}, Lo/onDetach$onRelationshipValidationResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 1120
    :cond_9
    iget-object p1, p0, Lo/DropDownPreference$ICustomTabsCallback$Stub;->onPostMessage:Lo/DropDownPreference;

    invoke-static {p1}, Lo/DropDownPreference;->ICustomTabsCallback(Lo/DropDownPreference;)Lo/onDetach$asBinder;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 3088
    iget-object p1, p1, Lo/onDetach$asBinder;->onMessageChannelReady:Ljava/lang/String;

    if-eqz p1, :cond_a

    .line 1120
    iget-object v0, p0, Lo/DropDownPreference$ICustomTabsCallback$Stub;->onPostMessage:Lo/DropDownPreference;

    invoke-static {v0}, Lo/DropDownPreference;->extraCallback(Lo/DropDownPreference;)Lo/PreferenceGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/PreferenceGroup;->onPostMessage(Ljava/lang/String;)V

    :cond_a
    return-void
.end method
