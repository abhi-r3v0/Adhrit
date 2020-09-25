.class public final Lo/createLayoutManager$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/createLayoutManager;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V
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
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J*\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0016J*\u0010\u000c\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/holders/InputFormFillHolder$textWatcher$1",
        "Landroid/text/TextWatcher;",
        "afterTextChanged",
        "",
        "s",
        "Landroid/text/Editable;",
        "beforeTextChanged",
        "",
        "start",
        "",
        "count",
        "after",
        "onTextChanged",
        "before",
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
.field private synthetic onPostMessage:Lo/createLayoutManager;


# direct methods
.method constructor <init>(Lo/createLayoutManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lo/createLayoutManager$ICustomTabsCallback;->onPostMessage:Lo/createLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .line 67
    iget-object v0, p0, Lo/createLayoutManager$ICustomTabsCallback;->onPostMessage:Lo/createLayoutManager;

    .line 1061
    iget-object v0, v0, Lo/createLayoutManager;->extraCallback:Lo/ensureRightGlow$extraCallback;

    if-eqz v0, :cond_2

    .line 67
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lo/createLayoutManager$ICustomTabsCallback;->onPostMessage:Lo/createLayoutManager;

    .line 1062
    iget-object v1, v1, Lo/createLayoutManager;->onMessageChannelReady:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string/jumbo v2, "sectionId"

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 67
    :cond_0
    iget-object v2, p0, Lo/createLayoutManager$ICustomTabsCallback;->onPostMessage:Lo/createLayoutManager;

    .line 1063
    iget-object v2, v2, Lo/createLayoutManager;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;

    if-nez v2, :cond_1

    const-string v3, "field"

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 2063
    :cond_1
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;->onMessageChannelReady:Ljava/lang/String;

    .line 67
    invoke-interface {v0, p1, v1, v2}, Lo/ensureRightGlow$extraCallback;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_2
    iget-object p1, p0, Lo/createLayoutManager$ICustomTabsCallback;->onPostMessage:Lo/createLayoutManager;

    .line 2118
    iget-object p1, p1, Lo/createOrientationHelpers;->asBinder:Lo/StaggeredGridLayoutManager;

    .line 69
    instance-of v0, p1, Lo/ensureRightGlow;

    if-eqz v0, :cond_3

    .line 70
    check-cast p1, Lo/ensureRightGlow;

    const/4 v0, 0x0

    .line 3072
    iput-boolean v0, p1, Lo/ensureRightGlow;->onPostMessage:Z

    .line 71
    iget-object p1, p0, Lo/createLayoutManager$ICustomTabsCallback;->onPostMessage:Lo/createLayoutManager;

    invoke-static {p1}, Lo/createLayoutManager;->extraCallback(Lo/createLayoutManager;)Landroid/widget/EditText;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
