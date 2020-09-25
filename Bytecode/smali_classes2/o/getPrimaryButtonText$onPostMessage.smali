.class public final Lo/getPrimaryButtonText$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getPrimaryButtonText$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getPrimaryButtonText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "onPostMessage"
.end annotation


# instance fields
.field private final synthetic onNavigationEvent:Lo/getPrimaryButtonText;


# direct methods
.method public constructor <init>(Lo/getPrimaryButtonText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/getPrimaryButtonText$onPostMessage;->onNavigationEvent:Lo/getPrimaryButtonText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Lo/setReferenceId;)V
    .locals 2

    .line 1020
    iget v0, p1, Lo/setReferenceId;->onNavigationEvent:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p0, Lo/getPrimaryButtonText$onPostMessage;->onNavigationEvent:Lo/getPrimaryButtonText;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lo/getPrimaryButtonText;->getScopes()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lo/getPrimaryButtonText;->getRemoteService(Lo/setTotalPaid;Ljava/util/Set;)V

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lo/getPrimaryButtonText$onPostMessage;->onNavigationEvent:Lo/getPrimaryButtonText;

    invoke-static {v0}, Lo/getPrimaryButtonText;->zzg(Lo/getPrimaryButtonText;)Lo/getPrimaryButtonText$ICustomTabsCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lo/getPrimaryButtonText$onPostMessage;->onNavigationEvent:Lo/getPrimaryButtonText;

    invoke-static {v0}, Lo/getPrimaryButtonText;->zzg(Lo/getPrimaryButtonText;)Lo/getPrimaryButtonText$ICustomTabsCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/getPrimaryButtonText$ICustomTabsCallback;->extraCallback(Lo/setReferenceId;)V

    :cond_2
    return-void
.end method
