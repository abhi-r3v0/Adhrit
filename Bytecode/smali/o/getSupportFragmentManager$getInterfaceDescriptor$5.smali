.class final Lo/getSupportFragmentManager$getInterfaceDescriptor$5;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getSupportFragmentManager$getInterfaceDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Lcom/dreamplug/fabrik/ui/cm/models/Template;",
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "template",
        "Lcom/dreamplug/fabrik/ui/cm/models/Template;",
        "invoke",
        "com/dreamplug/fabrik/ui/cm/manage/smartstatement/main/SmartStatementFragment$updateUi$2$1$1$1",
        "com/dreamplug/fabrik/ui/cm/manage/smartstatement/main/SmartStatementFragment$$special$$inlined$run$lambda$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/getSupportFragmentManager$getInterfaceDescriptor;


# direct methods
.method constructor <init>(Lo/getSupportFragmentManager$getInterfaceDescriptor;)V
    .locals 0

    iput-object p1, p0, Lo/getSupportFragmentManager$getInterfaceDescriptor$5;->onPostMessage:Lo/getSupportFragmentManager$getInterfaceDescriptor;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 42
    check-cast p1, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    const-string/jumbo v0, "template"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1175
    iget-object v0, p0, Lo/getSupportFragmentManager$getInterfaceDescriptor$5;->onPostMessage:Lo/getSupportFragmentManager$getInterfaceDescriptor;

    iget-object v0, v0, Lo/getSupportFragmentManager$getInterfaceDescriptor;->onNavigationEvent:Lo/getSupportFragmentManager;

    invoke-static {v0}, Lo/getSupportFragmentManager;->onPostMessage(Lo/getSupportFragmentManager;)Lo/getSupportFragmentManager$onPostMessage;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1176
    iget-object v1, p0, Lo/getSupportFragmentManager$getInterfaceDescriptor$5;->onPostMessage:Lo/getSupportFragmentManager$getInterfaceDescriptor;

    iget-object v1, v1, Lo/getSupportFragmentManager$getInterfaceDescriptor;->onNavigationEvent:Lo/getSupportFragmentManager;

    invoke-static {v1}, Lo/getSupportFragmentManager;->extraCallback(Lo/getSupportFragmentManager;)Lo/onPrepareOptionsPanel;

    move-result-object v1

    const/4 v2, 0x1

    .line 2028
    iput-boolean v2, v1, Lo/onPrepareOptionsPanel;->extraCallback:Z

    .line 1177
    iget-object v1, p0, Lo/getSupportFragmentManager$getInterfaceDescriptor$5;->onPostMessage:Lo/getSupportFragmentManager$getInterfaceDescriptor;

    iget-object v1, v1, Lo/getSupportFragmentManager$getInterfaceDescriptor;->onNavigationEvent:Lo/getSupportFragmentManager;

    invoke-static {v1}, Lo/getSupportFragmentManager;->extraCallback(Lo/getSupportFragmentManager;)Lo/onPrepareOptionsPanel;

    move-result-object v1

    .line 3027
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 3088
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->extraCommand:Lcom/dreamplug/fabrik/ui/control/CardDetails;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1177
    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getContext()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    .line 4027
    :goto_0
    iput-object p1, v1, Lo/onPrepareOptionsPanel;->onMessageChannelReady:Ljava/lang/String;

    .line 1178
    iget-object p1, p0, Lo/getSupportFragmentManager$getInterfaceDescriptor$5;->onPostMessage:Lo/getSupportFragmentManager$getInterfaceDescriptor;

    iget-object p1, p1, Lo/getSupportFragmentManager$getInterfaceDescriptor;->onNavigationEvent:Lo/getSupportFragmentManager;

    invoke-static {p1}, Lo/getSupportFragmentManager;->extraCallback(Lo/getSupportFragmentManager;)Lo/onPrepareOptionsPanel;

    move-result-object p1

    new-instance v1, Lo/getSupportFragmentManager$onPostMessage;

    .line 4304
    iget-object v4, v0, Lo/getSupportFragmentManager$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    .line 1180
    iget-object v3, p0, Lo/getSupportFragmentManager$getInterfaceDescriptor$5;->onPostMessage:Lo/getSupportFragmentManager$getInterfaceDescriptor;

    iget-object v3, v3, Lo/getSupportFragmentManager$getInterfaceDescriptor;->onNavigationEvent:Lo/getSupportFragmentManager;

    invoke-static {v3}, Lo/getSupportFragmentManager;->onPostMessage(Lo/getSupportFragmentManager;)Lo/getSupportFragmentManager$onPostMessage;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 5304
    iget-object v3, v3, Lo/getSupportFragmentManager$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    move-object v6, v3

    goto :goto_1

    :cond_1
    move-object v6, v2

    .line 6304
    :goto_1
    iget-object v5, v0, Lo/getSupportFragmentManager$onPostMessage;->onPostMessage:Ljava/lang/String;

    .line 1182
    iget-object v0, p0, Lo/getSupportFragmentManager$getInterfaceDescriptor$5;->onPostMessage:Lo/getSupportFragmentManager$getInterfaceDescriptor;

    iget-object v0, v0, Lo/getSupportFragmentManager$getInterfaceDescriptor;->onNavigationEvent:Lo/getSupportFragmentManager;

    invoke-static {v0}, Lo/getSupportFragmentManager;->onPostMessage(Lo/getSupportFragmentManager;)Lo/getSupportFragmentManager$onPostMessage;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7304
    iget-object v2, v0, Lo/getSupportFragmentManager$onPostMessage;->ICustomTabsCallback:Ljava/lang/String;

    :cond_2
    move-object v7, v2

    .line 1183
    iget-object v0, p0, Lo/getSupportFragmentManager$getInterfaceDescriptor$5;->onPostMessage:Lo/getSupportFragmentManager$getInterfaceDescriptor;

    iget-object v0, v0, Lo/getSupportFragmentManager$getInterfaceDescriptor;->onNavigationEvent:Lo/getSupportFragmentManager;

    invoke-static {v0}, Lo/getSupportFragmentManager;->extraCallback(Lo/getSupportFragmentManager;)Lo/onPrepareOptionsPanel;

    move-result-object v0

    .line 8027
    iget-object v8, v0, Lo/onPrepareOptionsPanel;->onMessageChannelReady:Ljava/lang/String;

    move-object v3, v1

    .line 1178
    invoke-direct/range {v3 .. v8}, Lo/getSupportFragmentManager$onPostMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lo/onPrepareOptionsPanel;->extraCallback(Lo/getSupportFragmentManager$onPostMessage;)V

    .line 1185
    iget-object p1, p0, Lo/getSupportFragmentManager$getInterfaceDescriptor$5;->onPostMessage:Lo/getSupportFragmentManager$getInterfaceDescriptor;

    iget-object p1, p1, Lo/getSupportFragmentManager$getInterfaceDescriptor;->onNavigationEvent:Lo/getSupportFragmentManager;

    invoke-static {p1}, Lo/getSupportFragmentManager;->extraCallback(Lo/getSupportFragmentManager;)Lo/onPrepareOptionsPanel;

    move-result-object p1

    .line 8029
    iget-object p1, p1, Lo/onPrepareOptionsPanel;->asInterface:Lo/setActive;

    .line 1185
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 42
    :cond_3
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
