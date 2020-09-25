.class final Lo/getDecoratedBottom$ICustomTabsCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getDecoratedBottom;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/getDecoratedBottom;


# direct methods
.method constructor <init>(Lo/getDecoratedBottom;)V
    .locals 0

    iput-object p1, p0, Lo/getDecoratedBottom$ICustomTabsCallback$Stub$Proxy;->extraCallback:Lo/getDecoratedBottom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 3

    .line 1063
    iget-object p1, p0, Lo/getDecoratedBottom$ICustomTabsCallback$Stub$Proxy;->extraCallback:Lo/getDecoratedBottom;

    invoke-static {p1}, Lo/getDecoratedBottom;->extraCallback(Lo/getDecoratedBottom;)Lo/updateLayoutState;

    move-result-object p1

    .line 1080
    iget-object p1, p1, Lo/updateLayoutState;->mayLaunchUrl:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    const-string/jumbo v0, "tncText"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1064
    iget-object p1, p0, Lo/getDecoratedBottom$ICustomTabsCallback$Stub$Proxy;->extraCallback:Lo/getDecoratedBottom;

    const/4 v2, 0x1

    invoke-static {p1, v2}, Lo/getDecoratedBottom;->onPostMessage(Lo/getDecoratedBottom;Z)V

    .line 1065
    iget-object p1, p0, Lo/getDecoratedBottom$ICustomTabsCallback$Stub$Proxy;->extraCallback:Lo/getDecoratedBottom;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->tncText:I

    invoke-virtual {p1, v2}, Lo/getDecoratedBottom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1067
    :cond_0
    iget-object p1, p0, Lo/getDecoratedBottom$ICustomTabsCallback$Stub$Proxy;->extraCallback:Lo/getDecoratedBottom;

    invoke-static {p1, v1}, Lo/getDecoratedBottom;->onPostMessage(Lo/getDecoratedBottom;Z)V

    .line 1068
    iget-object p1, p0, Lo/getDecoratedBottom$ICustomTabsCallback$Stub$Proxy;->extraCallback:Lo/getDecoratedBottom;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->tncText:I

    invoke-virtual {p1, v1}, Lo/getDecoratedBottom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
