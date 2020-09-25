.class final Lo/getCustomActions$asBinder$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getRatingType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCustomActions$asBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onNavigationEvent:Lo/getCustomActions$asBinder;


# direct methods
.method constructor <init>(Lo/getCustomActions$asBinder;)V
    .locals 0

    .line 1341
    iput-object p1, p0, Lo/getCustomActions$asBinder$4;->onNavigationEvent:Lo/getCustomActions$asBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Landroid/view/View;)Z
    .locals 3

    .line 1345
    check-cast p1, Lo/getCustomActions;

    .line 1346
    iget-object v0, p0, Lo/getCustomActions$asBinder$4;->onNavigationEvent:Lo/getCustomActions$asBinder;

    .line 1675
    iget p1, p1, Lo/getCustomActions;->extraCallback:I

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    .line 2468
    iget-object v2, v0, Lo/getCustomActions$asBinder;->extraCallback:Lo/getCustomActions;

    .line 2803
    iget-boolean v2, v2, Lo/getCustomActions;->asInterface:Z

    if-eqz v2, :cond_0

    .line 2469
    iget-object v0, v0, Lo/getCustomActions$asBinder;->extraCallback:Lo/getCustomActions;

    invoke-virtual {v0, p1, v1}, Lo/getCustomActions;->onMessageChannelReady(IZ)V

    :cond_0
    return v1
.end method
