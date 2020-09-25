.class final Lo/getCustomActions$1;
.super Lo/getCustomActions$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getCustomActions;->onNavigationEvent(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onPostMessage:Lo/getCustomActions;


# direct methods
.method constructor <init>(Lo/getCustomActions;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lo/getCustomActions$1;->onPostMessage:Lo/getCustomActions;

    invoke-direct {p0}, Lo/getCustomActions$onNavigationEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(I)V
    .locals 1

    .line 233
    iget-object p1, p0, Lo/getCustomActions$1;->onPostMessage:Lo/getCustomActions;

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 234
    iget-object p1, p0, Lo/getCustomActions$1;->onPostMessage:Lo/getCustomActions;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 235
    iget-object p1, p0, Lo/getCustomActions$1;->onPostMessage:Lo/getCustomActions;

    iget-object p1, p1, Lo/getCustomActions;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/View;->requestFocus(I)Z

    :cond_0
    return-void
.end method
