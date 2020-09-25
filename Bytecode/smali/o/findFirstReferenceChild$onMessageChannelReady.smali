.class final Lo/findFirstReferenceChild$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/findFirstReferenceChild;-><init>()V
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
.field private synthetic onPostMessage:Lo/findFirstReferenceChild;


# direct methods
.method constructor <init>(Lo/findFirstReferenceChild;)V
    .locals 0

    iput-object p1, p0, Lo/findFirstReferenceChild$onMessageChannelReady;->onPostMessage:Lo/findFirstReferenceChild;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 13

    .line 45
    check-cast p1, Ljava/util/List;

    const-string v0, "list"

    .line 1174
    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/findFirstReferenceChild$onMessageChannelReady;->onPostMessage:Lo/findFirstReferenceChild;

    .line 2172
    iget-boolean v0, v0, Lo/findFirstReferenceChild;->onNavigationEvent:Z

    if-nez v0, :cond_3

    .line 1175
    iget-object v0, p0, Lo/findFirstReferenceChild$onMessageChannelReady;->onPostMessage:Lo/findFirstReferenceChild;

    .line 3172
    iput-boolean v1, v0, Lo/findFirstReferenceChild;->onNavigationEvent:Z

    const/4 v0, 0x2

    new-array v2, v0, [Lo/addWrite;

    const/4 v3, 0x0

    .line 1178
    iget-object v4, p0, Lo/findFirstReferenceChild$onMessageChannelReady;->onPostMessage:Lo/findFirstReferenceChild;

    invoke-static {v4}, Lo/findFirstReferenceChild;->asInterface(Lo/findFirstReferenceChild;)Lo/recycleViewsFromEnd$onNavigationEvent;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3297
    iget-object v4, v4, Lo/recycleViewsFromEnd$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 4043
    :goto_0
    new-instance v5, Lo/addWrite;

    const-string/jumbo v6, "source"

    invoke-direct {v5, v6, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v2, v3

    .line 1179
    move-object v3, p1

    check-cast v3, Ljava/lang/Iterable;

    .line 1344
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .line 1351
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lo/getChildClosestToStart;

    if-eqz v6, :cond_1

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1352
    :cond_2
    check-cast v4, Ljava/util/List;

    move-object v5, v4

    check-cast v5, Ljava/lang/Iterable;

    const-string v3, ", "

    .line 1181
    move-object v6, v3

    check-cast v6, Ljava/lang/CharSequence;

    const-string/jumbo v3, "{"

    move-object v7, v3

    check-cast v7, Ljava/lang/CharSequence;

    const-string/jumbo v3, "}"

    move-object v8, v3

    check-cast v8, Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v3, Lo/findFirstReferenceChild$onMessageChannelReady$2;->ICustomTabsCallback:Lo/findFirstReferenceChild$onMessageChannelReady$2;

    move-object v11, v3

    check-cast v11, Lo/onDisconnectSetValue;

    const/16 v12, 0x18

    invoke-static/range {v5 .. v12}, Lo/getSessionPersistenceKey;->onMessageChannelReady(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lo/onDisconnectSetValue;I)Ljava/lang/String;

    move-result-object v3

    .line 5043
    new-instance v4, Lo/addWrite;

    const-string/jumbo v5, "section_id"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v2, v1

    const-string v1, "pairs"

    .line 1177
    invoke-static {v2, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5105
    new-instance v1, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v0, "collections_screen_load"

    .line 1176
    invoke-static {v0, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1187
    :cond_3
    iget-object v0, p0, Lo/findFirstReferenceChild$onMessageChannelReady;->onPostMessage:Lo/findFirstReferenceChild;

    invoke-static {v0}, Lo/findFirstReferenceChild;->onRelationshipValidationResult(Lo/findFirstReferenceChild;)Lo/repositionToWrapContentIfNecessary;

    move-result-object v0

    const-string/jumbo v1, "value"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7000
    iget-object v0, v0, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/checkSpanForGap;

    .line 6038
    invoke-virtual {v0, p1}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    return-void
.end method
