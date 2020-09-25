.class final Lo/isAppUpdateAvailable;
.super Ljava/lang/Object;

# interfaces
.implements Lo/openAmexWebView;


# instance fields
.field private final synthetic onNavigationEvent:Lo/showErrorLayout;

.field private final synthetic onPostMessage:Landroid/view/View;


# direct methods
.method constructor <init>(Lo/showErrorLayout;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lo/isAppUpdateAvailable;->onNavigationEvent:Lo/showErrorLayout;

    iput-object p2, p0, Lo/isAppUpdateAvailable;->onPostMessage:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()V
    .locals 2

    iget-object v0, p0, Lo/isAppUpdateAvailable;->onNavigationEvent:Lo/showErrorLayout;

    iget-object v1, p0, Lo/isAppUpdateAvailable;->onPostMessage:Landroid/view/View;

    invoke-virtual {v0, v1}, Lo/showErrorLayout;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public final onMessageChannelReady(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lo/isAppUpdateAvailable;->onNavigationEvent:Lo/showErrorLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lo/showErrorLayout;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    return-void
.end method
