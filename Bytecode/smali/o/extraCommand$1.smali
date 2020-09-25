.class final Lo/extraCommand$1;
.super Lo/getTag;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/extraCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Lo/extraCommand;


# direct methods
.method constructor <init>(Lo/extraCommand;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lo/extraCommand$1;->onMessageChannelReady:Lo/extraCommand;

    invoke-direct {p0}, Lo/getTag;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/View;)V
    .locals 1

    .line 155
    iget-object p1, p0, Lo/extraCommand$1;->onMessageChannelReady:Lo/extraCommand;

    const/4 v0, 0x0

    iput-object v0, p1, Lo/extraCommand;->ICustomTabsCallback$Stub$Proxy:Lo/getDefaultImpl;

    .line 156
    iget-object p1, p0, Lo/extraCommand$1;->onMessageChannelReady:Lo/extraCommand;

    iget-object p1, p1, Lo/extraCommand;->onPostMessage:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method
