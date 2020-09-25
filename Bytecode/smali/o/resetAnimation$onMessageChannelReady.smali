.class public final Lo/resetAnimation$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasGapsToFix$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/resetAnimation;-><init>(Landroid/content/Context;Lo/resetAnimation$onNavigationEvent;)V
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
        "com/dreamplug/fabrik/ui/digest/DigestOverflowCTABottomSheet$overflowCTAClickListener$1",
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
.field private synthetic onNavigationEvent:Lo/resetAnimation;


# direct methods
.method constructor <init>(Lo/resetAnimation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lo/resetAnimation$onMessageChannelReady;->onNavigationEvent:Lo/resetAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
    .locals 0

    const-string/jumbo p3, "type"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "data"

    invoke-static {p2, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    instance-of p1, p2, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

    if-eqz p1, :cond_0

    .line 32
    iget-object p1, p0, Lo/resetAnimation$onMessageChannelReady;->onNavigationEvent:Lo/resetAnimation;

    invoke-static {p1}, Lo/resetAnimation;->extraCallback(Lo/resetAnimation;)Lo/resetAnimation$onNavigationEvent;

    move-result-object p1

    check-cast p2, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

    invoke-interface {p1, p2}, Lo/resetAnimation$onNavigationEvent;->ICustomTabsCallback(Lcom/dreamplug/fabrik/ui/nba/helper/Cta;)V

    .line 33
    iget-object p1, p0, Lo/resetAnimation$onMessageChannelReady;->onNavigationEvent:Lo/resetAnimation;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
