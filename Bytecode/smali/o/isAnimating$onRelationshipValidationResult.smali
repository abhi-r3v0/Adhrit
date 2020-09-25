.class public final Lo/isAnimating$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasGapsToFix$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/isAnimating;-><init>()V
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
        "com/dreamplug/fabrik/ui/lifestyle/win/landing/WinLandingFragment$clickListener$1",
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
.field private synthetic extraCallback:Lo/isAnimating;


# direct methods
.method constructor <init>(Lo/isAnimating;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lo/isAnimating$onRelationshipValidationResult;->extraCallback:Lo/isAnimating;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
    .locals 2

    const-string/jumbo p3, "type"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "data"

    invoke-static {p2, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p3, "timer_expired"

    .line 76
    invoke-static {p1, p3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 77
    iget-object p1, p0, Lo/isAnimating$onRelationshipValidationResult;->extraCallback:Lo/isAnimating;

    invoke-static {p1}, Lo/isAnimating;->asInterface(Lo/isAnimating;)Lo/requestLayout;

    move-result-object p1

    invoke-virtual {p1}, Lo/requestLayout;->onPostMessage()V

    return-void

    :cond_0
    const-string p3, "image_card"

    .line 79
    invoke-static {p1, p3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 80
    instance-of p1, p2, Lo/clearOldPositions;

    if-eqz p1, :cond_4

    .line 81
    iget-object p1, p0, Lo/isAnimating$onRelationshipValidationResult;->extraCallback:Lo/isAnimating;

    check-cast p2, Lo/clearOldPositions;

    .line 1008
    iget-object p2, p2, Lo/clearOldPositions;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinItem;

    .line 1025
    iget-object v0, p2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinItem;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    goto :goto_1

    :cond_1
    const-string p3, "grid_item"

    const-string v1, "$this$startsWith"

    .line 1332
    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "prefix"

    invoke-static {p3, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1334
    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 84
    instance-of p3, p2, Lo/clearOldPositions;

    if-eqz p3, :cond_4

    .line 85
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lo/childWrites;->extraCallback(Ljava/lang/CharSequence;)C

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 87
    iget-object p3, p0, Lo/isAnimating$onRelationshipValidationResult;->extraCallback:Lo/isAnimating;

    check-cast p2, Lo/clearOldPositions;

    .line 2008
    iget-object p2, p2, Lo/clearOldPositions;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinItem;

    .line 2024
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinItem;->ICustomTabsCallback:Ljava/util/List;

    if-eqz p2, :cond_3

    const-string v1, "$this$getOrNull"

    .line 87
    invoke-static {p2, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_2

    const-string v1, "$this$lastIndex"

    .line 2266
    invoke-static {p2, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3210
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_2

    .line 2266
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v0

    .line 87
    :goto_0
    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinItem;

    if-eqz p1, :cond_3

    .line 4025
    iget-object v0, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinItem;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    :cond_3
    move-object p1, p3

    .line 87
    :goto_1
    invoke-static {p1, v0}, Lo/isAnimating;->extraCallback(Lo/isAnimating;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;)V

    :cond_4
    return-void
.end method
