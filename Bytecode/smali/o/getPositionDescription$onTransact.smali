.class final Lo/getPositionDescription$onTransact;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getPositionDescription;->onCreate(Landroid/os/Bundle;)V
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
        "Lcom/dreamplug/fabrik/ui/control/AuthSupportedResponse;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/fabrik/ui/control/AuthSupportedResponse;",
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
.field private synthetic extraCallback:Lo/getPositionDescription;


# direct methods
.method constructor <init>(Lo/getPositionDescription;)V
    .locals 0

    iput-object p1, p0, Lo/getPositionDescription$onTransact;->extraCallback:Lo/getPositionDescription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 8

    .line 66
    check-cast p1, Lcom/dreamplug/fabrik/ui/control/AuthSupportedResponse;

    .line 1160
    iget-object v0, p0, Lo/getPositionDescription$onTransact;->extraCallback:Lo/getPositionDescription;

    const/4 v1, 0x2

    new-array v2, v1, [Lo/addWrite;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 2014
    iget-object v4, p1, Lcom/dreamplug/fabrik/ui/control/AuthSupportedResponse;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/control/AuthSupportedResponse$MetaData;

    if-eqz v4, :cond_0

    .line 2022
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/control/AuthSupportedResponse$MetaData;->extraCallback:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v4, v3

    .line 2043
    :goto_0
    new-instance v5, Lo/addWrite;

    const-string v6, "provider_name"

    invoke-direct {v5, v6, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x0

    aput-object v5, v2, v4

    if-eqz p1, :cond_1

    .line 3014
    iget-object v5, p1, Lcom/dreamplug/fabrik/ui/control/AuthSupportedResponse;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/control/AuthSupportedResponse$MetaData;

    if-eqz v5, :cond_1

    .line 3020
    iget-object v3, v5, Lcom/dreamplug/fabrik/ui/control/AuthSupportedResponse$MetaData;->onMessageChannelReady:Ljava/lang/String;

    .line 3043
    :cond_1
    new-instance v5, Lo/addWrite;

    const-string v6, "ab_name"

    invoke-direct {v5, v6, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    aput-object v5, v2, v3

    const-string v5, "pairs"

    .line 1160
    invoke-static {v2, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3105
    new-instance v5, Ljava/util/HashMap;

    invoke-static {v1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    check-cast v5, Ljava/util/Map;

    invoke-static {v5, v2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v2, "link_email_domain_response"

    .line 1160
    invoke-static {v0, v2, v5, v1}, Lo/getPositionDescription;->onNavigationEvent(Lo/getPositionDescription;Ljava/lang/String;Ljava/util/Map;I)Lo/onSupportContentChanged;

    .line 1164
    iget-object v0, p0, Lo/getPositionDescription$onTransact;->extraCallback:Lo/getPositionDescription;

    invoke-static {v0}, Lo/getPositionDescription;->onMessageChannelReady(Lo/getPositionDescription;)Lo/onDestroyView;

    move-result-object v0

    invoke-virtual {v0}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    if-eqz p1, :cond_6

    .line 4012
    iget-object v0, p1, Lcom/dreamplug/fabrik/ui/control/AuthSupportedResponse;->onPostMessage:Ljava/util/List;

    .line 1165
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_2

    .line 5012
    :cond_2
    iget-object v0, p1, Lcom/dreamplug/fabrik/ui/control/AuthSupportedResponse;->onPostMessage:Ljava/util/List;

    .line 1172
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 1176
    iget-object v0, p0, Lo/getPositionDescription$onTransact;->extraCallback:Lo/getPositionDescription;

    .line 6012
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/control/AuthSupportedResponse;->onPostMessage:Ljava/util/List;

    .line 1176
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dreamplug/fabrik/ui/control/AuthProvider;

    .line 6029
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/control/AuthProvider;->onNavigationEvent:Ljava/lang/String;

    .line 1176
    iget-object v1, p0, Lo/getPositionDescription$onTransact;->extraCallback:Lo/getPositionDescription;

    check-cast v1, Landroidx/fragment/app/Fragment;

    const-string v2, "name"

    invoke-static {p1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "fragment"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6066
    invoke-static {v0, p1, v1}, Lo/getAllowEnterTransitionOverlap$ICustomTabsCallback;->extraCallback(Lo/getAllowEnterTransitionOverlap;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    return-void

    .line 1179
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7012
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/control/AuthSupportedResponse;->onPostMessage:Ljava/util/List;

    .line 1180
    check-cast p1, Ljava/lang/Iterable;

    .line 1478
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dreamplug/fabrik/ui/control/AuthProvider;

    .line 1181
    sget-object v2, Lo/getPositionDescription;->onPostMessage:Lo/getPositionDescription$onMessageChannelReady;

    .line 7463
    invoke-static {}, Lo/getPositionDescription;->asBinder()Ljava/util/List;

    move-result-object v2

    .line 8029
    iget-object v3, v1, Lcom/dreamplug/fabrik/ui/control/AuthProvider;->onNavigationEvent:Ljava/lang/String;

    .line 1181
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 8031
    iget-object v2, v1, Lcom/dreamplug/fabrik/ui/control/AuthProvider;->onMessageChannelReady:Ljava/util/List;

    .line 1182
    check-cast v2, Ljava/lang/Iterable;

    .line 1479
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dreamplug/fabrik/ui/control/SubProvider;

    .line 1183
    new-instance v4, Lo/unregisterListener$onPostMessage;

    .line 8040
    iget-object v5, v3, Lcom/dreamplug/fabrik/ui/control/SubProvider;->extraCallback:Ljava/lang/String;

    .line 9037
    iget-object v6, v3, Lcom/dreamplug/fabrik/ui/control/SubProvider;->onNavigationEvent:Ljava/lang/String;

    .line 10029
    iget-object v7, v1, Lcom/dreamplug/fabrik/ui/control/AuthProvider;->onNavigationEvent:Ljava/lang/String;

    .line 10039
    iget-boolean v3, v3, Lcom/dreamplug/fabrik/ui/control/SubProvider;->onMessageChannelReady:Z

    .line 1183
    invoke-direct {v4, v5, v6, v7, v3}, Lo/unregisterListener$onPostMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1187
    :cond_5
    sget-object p1, Lo/deliverResult;->onNavigationEvent:Lo/deliverResult$extraCallback;

    new-instance p1, Lo/deliverResult$onPostMessage;

    check-cast v0, Ljava/util/List;

    const-string/jumbo v1, "variant_2"

    invoke-direct {p1, v0, v1}, Lo/deliverResult$onPostMessage;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-static {p1}, Lo/deliverResult$extraCallback;->onNavigationEvent(Lo/deliverResult$onPostMessage;)Lo/deliverResult;

    move-result-object p1

    iget-object v0, p0, Lo/getPositionDescription$onTransact;->extraCallback:Lo/getPositionDescription;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    const-string v1, "domain"

    invoke-virtual {p1, v0, v1}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    return-void

    .line 1169
    :cond_6
    :goto_2
    iget-object p1, p0, Lo/getPositionDescription$onTransact;->extraCallback:Lo/getPositionDescription;

    invoke-static {p1}, Lo/getPositionDescription;->ICustomTabsCallback$Stub(Lo/getPositionDescription;)V

    return-void
.end method
