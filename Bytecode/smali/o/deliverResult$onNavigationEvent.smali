.class public final Lo/deliverResult$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasGapsToFix$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/deliverResult;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/control/DomainSelectorDialog$onItemClickListener$1",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "onClick",
        "",
        "type",
        "",
        "data",
        "Lcom/dreamplug/utils/list/ListItem;",
        "holder",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
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
.field private synthetic onMessageChannelReady:Lo/deliverResult;


# direct methods
.method constructor <init>(Lo/deliverResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lo/deliverResult$onNavigationEvent;->onMessageChannelReady:Lo/deliverResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
    .locals 5

    const-string/jumbo p3, "type"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "data"

    invoke-static {p2, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p3

    const v0, -0x4f0c2b3c

    if-eq p3, v0, :cond_1

    const p2, 0x35dafd

    if-eq p3, p2, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string/jumbo p2, "show"

    .line 108
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "link_email_domain_expand_click"

    .line 109
    invoke-static {p1}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 110
    iget-object p1, p0, Lo/deliverResult$onNavigationEvent;->onMessageChannelReady:Lo/deliverResult;

    invoke-static {p1}, Lo/deliverResult;->ICustomTabsCallback(Lo/deliverResult;)Lo/deliverResult$onPostMessage;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 5129
    iget-object p1, p1, Lo/deliverResult$onPostMessage;->ICustomTabsCallback:Ljava/util/List;

    if-eqz p1, :cond_4

    .line 111
    iget-object p2, p0, Lo/deliverResult$onNavigationEvent;->onMessageChannelReady:Lo/deliverResult;

    invoke-static {p2}, Lo/deliverResult;->onNavigationEvent(Lo/deliverResult;)Lo/repositionToWrapContentIfNecessary;

    move-result-object p2

    const-string/jumbo p3, "value"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7000
    iget-object p2, p2, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/checkSpanForGap;

    .line 6038
    invoke-virtual {p2, p1}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    return-void

    :cond_1
    const-string p3, "domain"

    .line 98
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 99
    instance-of p1, p2, Lo/unregisterListener$onPostMessage;

    if-eqz p1, :cond_3

    const/4 p1, 0x3

    new-array v0, p1, [Lo/addWrite;

    const/4 v1, 0x0

    .line 101
    check-cast p2, Lo/unregisterListener$onPostMessage;

    .line 1067
    iget-object v2, p2, Lo/unregisterListener$onPostMessage;->extraCallback:Ljava/lang/String;

    .line 2043
    new-instance v3, Lo/addWrite;

    const-string v4, "domain_name"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v1

    const/4 v1, 0x1

    .line 2067
    iget-boolean v2, p2, Lo/unregisterListener$onPostMessage;->onPostMessage:Z

    .line 102
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 3043
    new-instance v3, Lo/addWrite;

    const-string v4, "is_recommended"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v1

    const/4 v1, 0x2

    .line 103
    iget-object v2, p0, Lo/deliverResult$onNavigationEvent;->onMessageChannelReady:Lo/deliverResult;

    invoke-static {v2}, Lo/deliverResult;->ICustomTabsCallback(Lo/deliverResult;)Lo/deliverResult$onPostMessage;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3130
    iget-object v2, v2, Lo/deliverResult$onPostMessage;->extraCallback:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 4043
    :goto_0
    new-instance v3, Lo/addWrite;

    const-string/jumbo v4, "source"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v1

    const-string v1, "pairs"

    .line 100
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4105
    new-instance v1, Ljava/util/HashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "link_email_domain_click"

    .line 100
    invoke-static {p1, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 104
    iget-object p1, p0, Lo/deliverResult$onNavigationEvent;->onMessageChannelReady:Lo/deliverResult;

    invoke-static {p1}, Lo/deliverResult;->onMessageChannelReady(Lo/deliverResult;)Lo/dispatchOnLoadComplete;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 5067
    iget-object p2, p2, Lo/unregisterListener$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    .line 104
    invoke-static {p2, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5077
    iget-object p1, p1, Lo/dispatchOnLoadComplete;->onNavigationEvent:Lo/setActive;

    invoke-virtual {p1, p2}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 106
    :cond_3
    iget-object p1, p0, Lo/deliverResult$onNavigationEvent;->onMessageChannelReady:Lo/deliverResult;

    invoke-virtual {p1}, Lo/onAudioInfoChanged;->m_()V

    :cond_4
    :goto_1
    return-void
.end method
