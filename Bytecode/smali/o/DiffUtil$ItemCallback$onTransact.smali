.class final Lo/DiffUtil$ItemCallback$onTransact;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DiffUtil$ItemCallback;-><init>()V
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
        "Ljava/util/List<",
        "+",
        "Lo/StaggeredGridLayoutManager;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "Lcom/dreamplug/utils/list/ListItem;",
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
.field private synthetic onMessageChannelReady:Lo/DiffUtil$ItemCallback;


# direct methods
.method constructor <init>(Lo/DiffUtil$ItemCallback;)V
    .locals 0

    iput-object p1, p0, Lo/DiffUtil$ItemCallback$onTransact;->onMessageChannelReady:Lo/DiffUtil$ItemCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 3

    .line 42
    check-cast p1, Ljava/util/List;

    .line 1090
    iget-object v0, p0, Lo/DiffUtil$ItemCallback$onTransact;->onMessageChannelReady:Lo/DiffUtil$ItemCallback;

    invoke-static {v0}, Lo/DiffUtil$ItemCallback;->ICustomTabsCallback$Stub(Lo/DiffUtil$ItemCallback;)Lo/repositionToWrapContentIfNecessary;

    move-result-object v0

    const-string v1, "it"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "value"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3000
    iget-object v0, v0, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/checkSpanForGap;

    .line 2038
    invoke-virtual {v0, p1}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    .line 1091
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const-string v0, "addMore"

    const-string v1, "proceed"

    if-eqz p1, :cond_1

    .line 1092
    iget-object p1, p0, Lo/DiffUtil$ItemCallback$onTransact;->onMessageChannelReady:Lo/DiffUtil$ItemCallback;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->proceed:I

    invoke-virtual {p1, v2}, Lo/DiffUtil$ItemCallback;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const-string v1, "$this$gone"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 3017
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1093
    iget-object p1, p0, Lo/DiffUtil$ItemCallback$onTransact;->onMessageChannelReady:Lo/DiffUtil$ItemCallback;

    invoke-static {p1}, Lo/DiffUtil$ItemCallback;->onNavigationEvent(Lo/DiffUtil$ItemCallback;)Lo/dispatchRemovals;

    move-result-object p1

    .line 3031
    iget-object p1, p1, Lo/dispatchRemovals;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/fileUpload/FileUploadConfig;

    if-eqz p1, :cond_0

    .line 4009
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/fileUpload/FileUploadConfig;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/fileUpload/TemplateProperties;

    if-eqz p1, :cond_0

    .line 4033
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/fileUpload/TemplateProperties;->onPostMessage:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 1094
    iget-object v1, p0, Lo/DiffUtil$ItemCallback$onTransact;->onMessageChannelReady:Lo/DiffUtil$ItemCallback;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->addMore:I

    invoke-virtual {v1, v2}, Lo/DiffUtil$ItemCallback;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    .line 1097
    :cond_1
    iget-object p1, p0, Lo/DiffUtil$ItemCallback$onTransact;->onMessageChannelReady:Lo/DiffUtil$ItemCallback;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->proceed:I

    invoke-virtual {p1, v2}, Lo/DiffUtil$ItemCallback;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const-string v1, "$this$visible"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 5009
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1098
    iget-object p1, p0, Lo/DiffUtil$ItemCallback$onTransact;->onMessageChannelReady:Lo/DiffUtil$ItemCallback;

    invoke-static {p1}, Lo/DiffUtil$ItemCallback;->onNavigationEvent(Lo/DiffUtil$ItemCallback;)Lo/dispatchRemovals;

    move-result-object p1

    .line 5031
    iget-object p1, p1, Lo/dispatchRemovals;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/fileUpload/FileUploadConfig;

    if-eqz p1, :cond_2

    .line 6009
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/fileUpload/FileUploadConfig;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/fileUpload/TemplateProperties;

    if-eqz p1, :cond_2

    .line 6031
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/fileUpload/TemplateProperties;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 1099
    iget-object v1, p0, Lo/DiffUtil$ItemCallback$onTransact;->onMessageChannelReady:Lo/DiffUtil$ItemCallback;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->addMore:I

    invoke-virtual {v1, v2}, Lo/DiffUtil$ItemCallback;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method
