.class public final Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$onTransact;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasGapsToFix$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;-><init>()V
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
        "com/dreamplug/fabrik/ui/max/MaxLandingFragment$onClick$1",
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
.field private synthetic ICustomTabsCallback:Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;


# direct methods
.method constructor <init>(Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 222
    iput-object p1, p0, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$onTransact;->ICustomTabsCallback:Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
    .locals 4

    const-string/jumbo p3, "type"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0x18210

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "cta"

    .line 225
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 226
    instance-of p1, p2, Lcom/dreamplug/fabrik/ui/max/MaxLandingItem;

    if-eqz p1, :cond_1

    .line 227
    check-cast p2, Lcom/dreamplug/fabrik/ui/max/MaxLandingItem;

    .line 1025
    iget-object p1, p2, Lcom/dreamplug/fabrik/ui/max/MaxLandingItem;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/max/TemplateProperties;

    if-eqz p1, :cond_1

    .line 1041
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/max/TemplateProperties;->extraCallback:Lcom/dreamplug/fabrik/ui/max/Cta;

    if-eqz p1, :cond_1

    .line 1076
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/max/Cta;->onNavigationEvent:Ljava/lang/String;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    new-array v1, v0, [Lo/addWrite;

    const/4 v2, 0x0

    .line 2025
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/max/MaxLandingItem;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/max/TemplateProperties;

    .line 2050
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/max/TemplateProperties;->onRelationshipValidationResult:Ljava/lang/String;

    .line 3043
    new-instance v3, Lo/addWrite;

    invoke-direct {v3, p3, p2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    const-string p2, "pairs"

    .line 228
    invoke-static {v1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3105
    new-instance p2, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/HashMap;-><init>(I)V

    check-cast p2, Ljava/util/Map;

    invoke-static {p2, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p3, "max_cta_click"

    .line 228
    invoke-static {p3, p2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 229
    invoke-static {p1}, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;->extraCallback(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
