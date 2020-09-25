.class Lo/ICustomTabsService$6$1;
.super Lo/getTag;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ICustomTabsService$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Lo/ICustomTabsService$6;


# direct methods
.method constructor <init>(Lo/ICustomTabsService$6;)V
    .locals 0

    .line 1290
    iput-object p1, p0, Lo/ICustomTabsService$6$1;->onMessageChannelReady:Lo/ICustomTabsService$6;

    invoke-direct {p0}, Lo/getTag;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    .line 1298
    iget-object p1, p0, Lo/ICustomTabsService$6$1;->onMessageChannelReady:Lo/ICustomTabsService$6;

    iget-object p1, p1, Lo/ICustomTabsService$6;->onPostMessage:Lo/ICustomTabsService;

    iget-object p1, p1, Lo/ICustomTabsService;->ICustomTabsCallback$Stub:Landroidx/appcompat/widget/ActionBarContextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setAlpha(F)V

    .line 1299
    iget-object p1, p0, Lo/ICustomTabsService$6$1;->onMessageChannelReady:Lo/ICustomTabsService$6;

    iget-object p1, p1, Lo/ICustomTabsService$6;->onPostMessage:Lo/ICustomTabsService;

    iget-object p1, p1, Lo/ICustomTabsService;->warmup:Lo/getLaunchPendingIntent;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/getLaunchPendingIntent;->onPostMessage(Lo/setVolumeTo;)Lo/getLaunchPendingIntent;

    .line 1300
    iget-object p1, p0, Lo/ICustomTabsService$6$1;->onMessageChannelReady:Lo/ICustomTabsService$6;

    iget-object p1, p1, Lo/ICustomTabsService$6;->onPostMessage:Lo/ICustomTabsService;

    iput-object v0, p1, Lo/ICustomTabsService;->warmup:Lo/getLaunchPendingIntent;

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 1

    .line 1293
    iget-object p1, p0, Lo/ICustomTabsService$6$1;->onMessageChannelReady:Lo/ICustomTabsService$6;

    iget-object p1, p1, Lo/ICustomTabsService$6;->onPostMessage:Lo/ICustomTabsService;

    iget-object p1, p1, Lo/ICustomTabsService;->ICustomTabsCallback$Stub:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
