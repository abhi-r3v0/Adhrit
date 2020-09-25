.class public final Lo/addOnItemTouchListener$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasGapsToFix$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/addOnItemTouchListener;-><init>()V
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
        "com/dreamplug/fabrik/ui/lifestyle/store/landing/StoreLandingFragment$clickListener$1",
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
.field private synthetic extraCallback:Lo/addOnItemTouchListener;


# direct methods
.method constructor <init>(Lo/addOnItemTouchListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lo/addOnItemTouchListener$onNavigationEvent;->extraCallback:Lo/addOnItemTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
    .locals 3

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "banner"

    .line 63
    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 64
    instance-of p1, p2, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreItem;

    if-eqz p1, :cond_4

    .line 65
    iget-object p1, p0, Lo/addOnItemTouchListener$onNavigationEvent;->extraCallback:Lo/addOnItemTouchListener;

    check-cast p2, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreItem;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_0
    invoke-static {p1, p2, v0, v2}, Lo/addOnItemTouchListener;->onNavigationEvent(Lo/addOnItemTouchListener;Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreItem;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    :cond_1
    const-string v0, "grid_item"

    const-string v1, "$this$startsWith"

    .line 1332
    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "prefix"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1334
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 68
    instance-of v0, p2, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreItem;

    if-eqz v0, :cond_4

    .line 69
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lo/childWrites;->extraCallback(Ljava/lang/CharSequence;)C

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    .line 70
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 71
    check-cast p2, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreItem;

    .line 2030
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreItem;->onMessageChannelReady:Ljava/util/List;

    if-eqz p2, :cond_4

    const-string v0, "$this$getOrNull"

    .line 71
    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_2

    const-string v0, "$this$lastIndex"

    .line 2266
    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3210
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_2

    .line 2266
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v2

    .line 71
    :goto_0
    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreItem;

    if-eqz p1, :cond_4

    .line 72
    iget-object p2, p0, Lo/addOnItemTouchListener$onNavigationEvent;->extraCallback:Lo/addOnItemTouchListener;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_3
    const-string p3, "grid_card"

    invoke-static {p2, p1, p3, v2}, Lo/addOnItemTouchListener;->onNavigationEvent(Lo/addOnItemTouchListener;Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreItem;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    return-void
.end method
