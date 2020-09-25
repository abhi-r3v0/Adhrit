.class public final Lo/setSmoothScrollbarEnabled$asBinder$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/updateLayoutStateToFillStart;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setSmoothScrollbarEnabled$asBinder;
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
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001R\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0008R\u0016\u0010\t\u001a\u0004\u0018\u00010\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u0005\u00a8\u0006\u000b"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/LifestyleViewModel$lifestyleFragmentStates$2$1",
        "Lcom/dreamplug/fabrik/ui/lifestyle/LifestyleFragmentStates;",
        "farmId",
        "",
        "getFarmId",
        "()Ljava/lang/String;",
        "isPrimary",
        "",
        "()Z",
        "source",
        "getSource",
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
.field private synthetic onNavigationEvent:Lo/setSmoothScrollbarEnabled$asBinder;


# direct methods
.method constructor <init>(Lo/setSmoothScrollbarEnabled$asBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lo/setSmoothScrollbarEnabled$asBinder$4;->onNavigationEvent:Lo/setSmoothScrollbarEnabled$asBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lo/setSmoothScrollbarEnabled$asBinder$4;->onNavigationEvent:Lo/setSmoothScrollbarEnabled$asBinder;

    iget-object v0, v0, Lo/setSmoothScrollbarEnabled$asBinder;->extraCallback:Lo/setSmoothScrollbarEnabled;

    .line 1193
    iget-object v0, v0, Lo/setSmoothScrollbarEnabled;->extraCallback:Lo/updateLayoutStateToFillEnd;

    if-eqz v0, :cond_0

    .line 2009
    iget-object v0, v0, Lo/updateLayoutStateToFillEnd;->onNavigationEvent:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onNavigationEvent()Ljava/lang/String;
    .locals 2

    .line 64
    iget-object v0, p0, Lo/setSmoothScrollbarEnabled$asBinder$4;->onNavigationEvent:Lo/setSmoothScrollbarEnabled$asBinder;

    iget-object v0, v0, Lo/setSmoothScrollbarEnabled$asBinder;->extraCallback:Lo/setSmoothScrollbarEnabled;

    .line 1036
    iget-object v1, v0, Lo/setSmoothScrollbarEnabled;->onNavigationEvent:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v0, "navigation"

    return-object v0

    .line 1039
    :cond_0
    iget-object v0, v0, Lo/setSmoothScrollbarEnabled;->onNavigationEvent:Ljava/lang/String;

    return-object v0
.end method
