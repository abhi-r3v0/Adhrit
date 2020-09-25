.class final Lo/getSharedElementReturnTransition$asInterface;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getSharedElementReturnTransition;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "com/dreamplug/fabrik/ui/cm/CMBottomSheetDialog$onViewCreated$1$3$1",
        "com/dreamplug/fabrik/ui/cm/CMBottomSheetDialog$$special$$inlined$run$lambda$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lcom/dreamplug/fabrik/ui/cm/models/Template;

.field private synthetic onMessageChannelReady:Lo/getSharedElementReturnTransition;


# direct methods
.method constructor <init>(Lcom/dreamplug/fabrik/ui/cm/models/Template;Lo/getSharedElementReturnTransition;)V
    .locals 0

    iput-object p1, p0, Lo/getSharedElementReturnTransition$asInterface;->extraCallback:Lcom/dreamplug/fabrik/ui/cm/models/Template;

    iput-object p2, p0, Lo/getSharedElementReturnTransition$asInterface;->onMessageChannelReady:Lo/getSharedElementReturnTransition;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 33
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1083
    iget-object p1, p0, Lo/getSharedElementReturnTransition$asInterface;->onMessageChannelReady:Lo/getSharedElementReturnTransition;

    invoke-virtual {p1}, Lo/onAudioInfoChanged;->m_()V

    .line 1084
    iget-object p1, p0, Lo/getSharedElementReturnTransition$asInterface;->onMessageChannelReady:Lo/getSharedElementReturnTransition;

    invoke-static {p1}, Lo/getSharedElementReturnTransition;->onNavigationEvent(Lo/getSharedElementReturnTransition;)Lo/getDimensionPixelOffset;

    iget-object p1, p0, Lo/getSharedElementReturnTransition$asInterface;->onMessageChannelReady:Lo/getSharedElementReturnTransition;

    check-cast p1, Landroidx/fragment/app/Fragment;

    iget-object v0, p0, Lo/getSharedElementReturnTransition$asInterface;->extraCallback:Lcom/dreamplug/fabrik/ui/cm/models/Template;

    .line 2027
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 2071
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->getInterfaceDescriptor:Lcom/dreamplug/fabrik/ui/cm/models/Ctas;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2173
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/cm/models/Ctas;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/cm/models/Cta;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1084
    :goto_0
    new-instance v2, Lo/addWrite;

    const-string v3, "cm_card_bs1_screen_cta_click"

    invoke-direct {v2, v3, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, p0, Lo/getSharedElementReturnTransition$asInterface;->extraCallback:Lcom/dreamplug/fabrik/ui/cm/models/Template;

    .line 3015
    invoke-static {p1, v0, v1, v2, v3}, Lo/getDimensionPixelOffset;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Lcom/dreamplug/fabrik/ui/cm/models/Cta;Lo/onDisconnectSetValue;Lo/addWrite;Lcom/dreamplug/fabrik/ui/cm/models/Template;)V

    .line 33
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
