.class final Lo/onChildViewAttachedToWindow$extraCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onChildViewAttachedToWindow;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/onChildViewAttachedToWindow;


# direct methods
.method constructor <init>(Lo/onChildViewAttachedToWindow;)V
    .locals 0

    iput-object p1, p0, Lo/onChildViewAttachedToWindow$extraCallback;->onNavigationEvent:Lo/onChildViewAttachedToWindow;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 31
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    new-array v0, p1, [Lo/addWrite;

    .line 1075
    iget-object v1, p0, Lo/onChildViewAttachedToWindow$extraCallback;->onNavigationEvent:Lo/onChildViewAttachedToWindow;

    invoke-static {v1}, Lo/onChildViewAttachedToWindow;->onPostMessage(Lo/onChildViewAttachedToWindow;)Lo/onDetach$extraCommand;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1193
    iget-object v1, v1, Lo/onDetach$extraCommand;->onMessageChannelReady:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 1075
    iget-object v3, p0, Lo/onChildViewAttachedToWindow$extraCallback;->onNavigationEvent:Lo/onChildViewAttachedToWindow;

    invoke-static {v3}, Lo/onChildViewAttachedToWindow;->onPostMessage(Lo/onChildViewAttachedToWindow;)Lo/onDetach$extraCommand;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2193
    iget v3, v3, Lo/onDetach$extraCommand;->extraCallback:I

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1075
    :goto_0
    invoke-virtual {v1, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dreamplug/fabrik/ui/lending/model/PossibleValues;

    if-eqz v1, :cond_1

    .line 3106
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lending/model/PossibleValues;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 4043
    :goto_1
    new-instance v3, Lo/addWrite;

    const-string/jumbo v4, "start_date"

    invoke-direct {v3, v4, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v2

    const/4 v1, 0x1

    .line 1076
    iget-object v2, p0, Lo/onChildViewAttachedToWindow$extraCallback;->onNavigationEvent:Lo/onChildViewAttachedToWindow;

    invoke-static {v2}, Lo/onChildViewAttachedToWindow;->ICustomTabsCallback(Lo/onChildViewAttachedToWindow;)Lcom/dreamplug/fabrik/ui/lending/model/PossibleValues;

    move-result-object v2

    .line 4106
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lending/model/PossibleValues;->onMessageChannelReady:Ljava/lang/String;

    .line 5043
    new-instance v3, Lo/addWrite;

    const-string v4, "end_date"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v1

    const-string v1, "pairs"

    .line 1074
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5088
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v1, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo p1, "stash_mandate_date_slide_date_bar"

    .line 1074
    invoke-static {p1, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1078
    iget-object p1, p0, Lo/onChildViewAttachedToWindow$extraCallback;->onNavigationEvent:Lo/onChildViewAttachedToWindow;

    invoke-static {p1}, Lo/onChildViewAttachedToWindow;->ICustomTabsCallback(Lo/onChildViewAttachedToWindow;)Lcom/dreamplug/fabrik/ui/lending/model/PossibleValues;

    move-result-object v0

    invoke-static {p1, v0}, Lo/onChildViewAttachedToWindow;->ICustomTabsCallback(Lo/onChildViewAttachedToWindow;Lcom/dreamplug/fabrik/ui/lending/model/PossibleValues;)V

    .line 31
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
