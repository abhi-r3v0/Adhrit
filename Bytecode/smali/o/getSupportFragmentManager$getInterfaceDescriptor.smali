.class final Lo/getSupportFragmentManager$getInterfaceDescriptor;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getSupportFragmentManager;
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "invoke",
        "com/dreamplug/fabrik/ui/cm/manage/smartstatement/main/SmartStatementFragment$updateUi$2$1$1",
        "com/dreamplug/fabrik/ui/cm/manage/smartstatement/main/SmartStatementFragment$$special$$inlined$run$lambda$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

.field final synthetic onNavigationEvent:Lo/getSupportFragmentManager;

.field private synthetic onPostMessage:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;Lo/getSupportFragmentManager;)V
    .locals 0

    iput-object p1, p0, Lo/getSupportFragmentManager$getInterfaceDescriptor;->onPostMessage:Ljava/util/List;

    iput-object p2, p0, Lo/getSupportFragmentManager$getInterfaceDescriptor;->extraCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    iput-object p3, p0, Lo/getSupportFragmentManager$getInterfaceDescriptor;->onNavigationEvent:Lo/getSupportFragmentManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 42
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1174
    iget-object p1, p0, Lo/getSupportFragmentManager$getInterfaceDescriptor;->onNavigationEvent:Lo/getSupportFragmentManager;

    invoke-static {p1}, Lo/getSupportFragmentManager;->ICustomTabsCallback$Stub(Lo/getSupportFragmentManager;)Lo/getDimensionPixelOffset;

    iget-object p1, p0, Lo/getSupportFragmentManager$getInterfaceDescriptor;->onNavigationEvent:Lo/getSupportFragmentManager;

    check-cast p1, Landroidx/fragment/app/Fragment;

    iget-object v0, p0, Lo/getSupportFragmentManager$getInterfaceDescriptor;->extraCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 2071
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->getInterfaceDescriptor:Lcom/dreamplug/fabrik/ui/cm/models/Ctas;

    .line 2175
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/cm/models/Ctas;->extraCallback:Lcom/dreamplug/fabrik/ui/cm/models/Cta;

    .line 1174
    new-instance v1, Lo/getSupportFragmentManager$getInterfaceDescriptor$5;

    invoke-direct {v1, p0}, Lo/getSupportFragmentManager$getInterfaceDescriptor$5;-><init>(Lo/getSupportFragmentManager$getInterfaceDescriptor;)V

    check-cast v1, Lo/onDisconnectSetValue;

    .line 1187
    new-instance v2, Lo/addWrite;

    iget-object v3, p0, Lo/getSupportFragmentManager$getInterfaceDescriptor;->onNavigationEvent:Lo/getSupportFragmentManager;

    invoke-static {v3}, Lo/getSupportFragmentManager;->asInterface(Lo/getSupportFragmentManager;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lo/getSupportFragmentManager$getInterfaceDescriptor;->onNavigationEvent:Lo/getSupportFragmentManager;

    invoke-static {v4}, Lo/getSupportFragmentManager;->onTransact(Lo/getSupportFragmentManager;)Ljava/util/Map;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, p0, Lo/getSupportFragmentManager$getInterfaceDescriptor;->onPostMessage:Ljava/util/List;

    const-string v4, "$this$getOrNull"

    invoke-static {v3, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$this$lastIndex"

    .line 2266
    invoke-static {v3, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3210
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_0

    const/4 v4, 0x0

    .line 2266
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1187
    :goto_0
    check-cast v3, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    .line 1174
    invoke-static {p1, v0, v1, v2, v3}, Lo/getDimensionPixelOffset;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Lcom/dreamplug/fabrik/ui/cm/models/Cta;Lo/onDisconnectSetValue;Lo/addWrite;Lcom/dreamplug/fabrik/ui/cm/models/Template;)V

    .line 42
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
