.class final Lo/getStateAfterAnimating$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getStateAfterAnimating;->ICustomTabsCallback()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/getStateAfterAnimating;


# direct methods
.method constructor <init>(Lo/getStateAfterAnimating;)V
    .locals 0

    iput-object p1, p0, Lo/getStateAfterAnimating$onRelationshipValidationResult;->onNavigationEvent:Lo/getStateAfterAnimating;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 338
    iget-object v0, p0, Lo/getStateAfterAnimating$onRelationshipValidationResult;->onNavigationEvent:Lo/getStateAfterAnimating;

    invoke-static {v0}, Lo/getStateAfterAnimating;->onTransact(Lo/getStateAfterAnimating;)Lo/onActivityResult;

    move-result-object v0

    iget-object v1, p0, Lo/getStateAfterAnimating$onRelationshipValidationResult;->onNavigationEvent:Lo/getStateAfterAnimating;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    const-string v2, "context!!"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v2, 0x7f130135

    invoke-static {v2}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "context"

    invoke-static {v1, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "text"

    invoke-static {v2, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1028
    sget v4, Lo/preferLastSpan$ICustomTabsCallback$Stub;->success_toast_layout:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lo/onActivityResult;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;ZI)V

    return-void
.end method
