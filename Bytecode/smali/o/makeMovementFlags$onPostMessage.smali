.class public final Lo/makeMovementFlags$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasGapsToFix$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/makeMovementFlags;-><init>()V
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
        "com/dreamplug/fabrik/ui/lending/exitintent/StashExitIntentVariant3$clickListener$1",
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
.field private synthetic onMessageChannelReady:Lo/makeMovementFlags;


# direct methods
.method constructor <init>(Lo/makeMovementFlags;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lo/makeMovementFlags$onPostMessage;->onMessageChannelReady:Lo/makeMovementFlags;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
    .locals 1

    const-string/jumbo p3, "type"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "data"

    invoke-static {p2, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p3

    const v0, 0x2c3ecfa7

    if-eq p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, "checked"

    .line 117
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 118
    instance-of p1, p2, Lcom/dreamplug/fabrik/ui/lending/model/CommonPitchItem;

    if-eqz p1, :cond_4

    .line 119
    check-cast p2, Lcom/dreamplug/fabrik/ui/lending/model/CommonPitchItem;

    .line 1020
    iget-boolean p1, p2, Lcom/dreamplug/fabrik/ui/lending/model/CommonPitchItem;->onMessageChannelReady:Z

    if-eqz p1, :cond_2

    .line 2015
    iget-object p1, p2, Lcom/dreamplug/fabrik/ui/lending/model/CommonPitchItem;->onNavigationEvent:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 120
    iget-object p2, p0, Lo/makeMovementFlags$onPostMessage;->onMessageChannelReady:Lo/makeMovementFlags;

    .line 2040
    iget-object p2, p2, Lo/makeMovementFlags;->ICustomTabsCallback:Ljava/util/HashSet;

    .line 120
    invoke-virtual {p2, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    .line 122
    :cond_2
    iget-object p1, p0, Lo/makeMovementFlags$onPostMessage;->onMessageChannelReady:Lo/makeMovementFlags;

    .line 3040
    iget-object p1, p1, Lo/makeMovementFlags;->ICustomTabsCallback:Ljava/util/HashSet;

    .line 122
    check-cast p1, Ljava/util/Collection;

    .line 4015
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lending/model/CommonPitchItem;->onNavigationEvent:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 122
    invoke-static {p1}, Lo/isDemoHost;->extraCallback(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.collections.MutableCollection<T>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    return-void
.end method
