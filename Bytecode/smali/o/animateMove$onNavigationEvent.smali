.class final Lo/animateMove$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/animateMove;-><init>()V
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
        "Lo/StaggeredGridLayoutManager;",
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
        "Lcom/dreamplug/utils/list/ListItem;",
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
.field private synthetic onPostMessage:Lo/animateMove;


# direct methods
.method constructor <init>(Lo/animateMove;)V
    .locals 0

    iput-object p1, p0, Lo/animateMove$onNavigationEvent;->onPostMessage:Lo/animateMove;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 7

    .line 41
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 1131
    iget-object v0, p0, Lo/animateMove$onNavigationEvent;->onPostMessage:Lo/animateMove;

    invoke-static {v0}, Lo/animateMove;->extraCallback(Lo/animateMove;)Lo/repositionToWrapContentIfNecessary;

    move-result-object v0

    const-string/jumbo v1, "value"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3000
    iget-object v0, v0, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/checkSpanForGap;

    .line 2038
    invoke-virtual {v0, p1}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    .line 1132
    iget-object p1, p0, Lo/animateMove$onNavigationEvent;->onPostMessage:Lo/animateMove;

    invoke-static {p1}, Lo/animateMove;->onMessageChannelReady(Lo/animateMove;)V

    .line 1133
    iget-object p1, p0, Lo/animateMove$onNavigationEvent;->onPostMessage:Lo/animateMove;

    .line 4000
    iget-object p1, p1, Lo/animateMove;->onPostMessage:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/animateAddImpl;

    .line 4040
    iget p1, p1, Lo/animateAddImpl;->onRelationshipValidationResult:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const/4 p1, 0x2

    new-array v1, p1, [Lo/addWrite;

    const/4 v2, 0x0

    .line 1134
    iget-object v3, p0, Lo/animateMove$onNavigationEvent;->onPostMessage:Lo/animateMove;

    invoke-static {v3}, Lo/animateMove;->onNavigationEvent(Lo/animateMove;)Lo/onDetach$updateVisuals;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 4054
    iget-object v3, v3, Lo/onDetach$updateVisuals;->extraCallback:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v3, v4

    .line 5043
    :goto_0
    new-instance v5, Lo/addWrite;

    const-string/jumbo v6, "source"

    invoke-direct {v5, v6, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v1, v2

    .line 1134
    iget-object v2, p0, Lo/animateMove$onNavigationEvent;->onPostMessage:Lo/animateMove;

    invoke-static {v2}, Lo/animateMove;->onNavigationEvent(Lo/animateMove;)Lo/onDetach$updateVisuals;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5055
    iget-object v4, v2, Lo/onDetach$updateVisuals;->onPostMessage:Ljava/lang/String;

    .line 6043
    :cond_1
    new-instance v2, Lo/addWrite;

    const-string v3, "currency"

    invoke-direct {v2, v3, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v0

    const-string v0, "pairs"

    .line 1134
    invoke-static {v1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6088
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "currency_ledger_screen_load"

    .line 1134
    invoke-static {p1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    :cond_2
    return-void
.end method
