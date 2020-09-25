.class public final Lo/setAllowEnterTransitionOverlap$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasGapsToFix$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setAllowEnterTransitionOverlap;-><init>()V
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
        "com/dreamplug/fabrik/ui/cm/CardFilterSelectDialog$onItemClickListener$1",
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
.field private synthetic extraCallback:Lo/setAllowEnterTransitionOverlap;


# direct methods
.method constructor <init>(Lo/setAllowEnterTransitionOverlap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lo/setAllowEnterTransitionOverlap$onNavigationEvent;->extraCallback:Lo/setAllowEnterTransitionOverlap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
    .locals 2

    const-string/jumbo p3, "type"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "data"

    invoke-static {p2, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    instance-of p1, p2, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    if-eqz p1, :cond_1

    .line 67
    iget-object p1, p0, Lo/setAllowEnterTransitionOverlap$onNavigationEvent;->extraCallback:Lo/setAllowEnterTransitionOverlap;

    invoke-static {p1}, Lo/setAllowEnterTransitionOverlap;->ICustomTabsCallback(Lo/setAllowEnterTransitionOverlap;)Lo/getDimensionPixelOffset;

    const/4 p1, 0x0

    move-object p3, p2

    check-cast p3, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    const/4 v0, 0x6

    const-string v1, "cm_card_stmt_filter_selected"

    invoke-static {v1, p1, p3, v0}, Lo/getDimensionPixelOffset;->onMessageChannelReady(Ljava/lang/String;Ljava/util/Map;Lcom/dreamplug/fabrik/ui/cm/models/Template;I)V

    .line 68
    iget-object p1, p0, Lo/setAllowEnterTransitionOverlap$onNavigationEvent;->extraCallback:Lo/setAllowEnterTransitionOverlap;

    invoke-static {p1}, Lo/setAllowEnterTransitionOverlap;->extraCallback(Lo/setAllowEnterTransitionOverlap;)Lo/onDisconnectSetValue;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_0
    iget-object p1, p0, Lo/setAllowEnterTransitionOverlap$onNavigationEvent;->extraCallback:Lo/setAllowEnterTransitionOverlap;

    invoke-virtual {p1}, Lo/onAudioInfoChanged;->m_()V

    :cond_1
    return-void
.end method
