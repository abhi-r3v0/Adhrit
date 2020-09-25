.class final Lo/createAbtInstance$4;
.super Lo/onSessionDestroyed;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/createAbtInstance;->onPostMessage(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/createAbtInstance;


# direct methods
.method constructor <init>(Lo/createAbtInstance;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lo/createAbtInstance$4;->extraCallback:Lo/createAbtInstance;

    invoke-direct {p0}, Lo/onSessionDestroyed;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Lo/getPlaybackState;)V
    .locals 0

    .line 231
    invoke-super {p0, p1, p2}, Lo/onSessionDestroyed;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lo/getPlaybackState;)V

    .line 232
    iget-object p1, p0, Lo/createAbtInstance$4;->extraCallback:Lo/createAbtInstance;

    iget-boolean p1, p1, Lo/createAbtInstance;->asInterface:Z

    if-eqz p1, :cond_0

    const/high16 p1, 0x100000

    .line 233
    invoke-virtual {p2, p1}, Lo/getPlaybackState;->ICustomTabsCallback(I)V

    const/4 p1, 0x1

    .line 234
    invoke-virtual {p2, p1}, Lo/getPlaybackState;->getInterfaceDescriptor(Z)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 236
    invoke-virtual {p2, p1}, Lo/getPlaybackState;->getInterfaceDescriptor(Z)V

    return-void
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    const/high16 v0, 0x100000

    if-ne p2, v0, :cond_0

    .line 242
    iget-object v0, p0, Lo/createAbtInstance$4;->extraCallback:Lo/createAbtInstance;

    iget-boolean v0, v0, Lo/createAbtInstance;->asInterface:Z

    if-eqz v0, :cond_0

    .line 243
    iget-object p1, p0, Lo/createAbtInstance$4;->extraCallback:Lo/createAbtInstance;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    const/4 p1, 0x1

    return p1

    .line 246
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lo/onSessionDestroyed;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
