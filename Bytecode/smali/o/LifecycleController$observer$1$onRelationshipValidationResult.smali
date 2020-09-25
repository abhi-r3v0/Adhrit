.class final Lo/LifecycleController$observer$1$onRelationshipValidationResult;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/LifecycleController$observer$1;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/View;",
        "Lo/addWrites;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/view/View;",
        "invoke",
        "com/dreamplug/fabrik/ui/contacts/festives/GreetingCustomiseFragment$onViewCreated$1$7"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/LifecycleController$observer$1$ICustomTabsCallback;

.field private synthetic onNavigationEvent:Lo/LifecycleController$observer$1;


# direct methods
.method constructor <init>(Lo/LifecycleController$observer$1$ICustomTabsCallback;Lo/LifecycleController$observer$1;)V
    .locals 0

    iput-object p1, p0, Lo/LifecycleController$observer$1$onRelationshipValidationResult;->onMessageChannelReady:Lo/LifecycleController$observer$1$ICustomTabsCallback;

    iput-object p2, p0, Lo/LifecycleController$observer$1$onRelationshipValidationResult;->onNavigationEvent:Lo/LifecycleController$observer$1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 30
    check-cast p1, Landroid/view/View;

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array v0, p1, [Lo/addWrite;

    .line 1110
    iget-object v1, p0, Lo/LifecycleController$observer$1$onRelationshipValidationResult;->onNavigationEvent:Lo/LifecycleController$observer$1;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->message:I

    invoke-virtual {v1, v2}, Lo/LifecycleController$observer$1;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const-string v2, "message"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2043
    new-instance v3, Lo/addWrite;

    const-string v4, "character"

    invoke-direct {v3, v4, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    aput-object v3, v0, v1

    const-string v1, "pairs"

    .line 1109
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2105
    new-instance v1, Ljava/util/HashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "greeting_customise_cta_clicked"

    .line 1109
    invoke-static {p1, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1112
    iget-object p1, p0, Lo/LifecycleController$observer$1$onRelationshipValidationResult;->onNavigationEvent:Lo/LifecycleController$observer$1;

    iget-object v0, p0, Lo/LifecycleController$observer$1$onRelationshipValidationResult;->onMessageChannelReady:Lo/LifecycleController$observer$1$ICustomTabsCallback;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->message:I

    invoke-virtual {p1, v1}, Lo/LifecycleController$observer$1;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lo/LifecycleController$observer$1;->onNavigationEvent(Lo/LifecycleController$observer$1;Lo/LifecycleController$observer$1$ICustomTabsCallback;Ljava/lang/String;)V

    .line 30
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
