.class public final Lo/markFragmentsCreated$ICustomTabsCallback$Stub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasGapsToFix$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/markFragmentsCreated;-><init>()V
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
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/cm/mycards/CardManageActionDialog$onItemClickListener$1",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "onClick",
        "",
        "type",
        "",
        "data",
        "Lcom/dreamplug/utils/list/ListItem;",
        "holder",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
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
.field private synthetic onPostMessage:Lo/markFragmentsCreated;


# direct methods
.method constructor <init>(Lo/markFragmentsCreated;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lo/markFragmentsCreated$ICustomTabsCallback$Stub;->onPostMessage:Lo/markFragmentsCreated;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
    .locals 4

    const-string/jumbo p3, "type"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "data"

    invoke-static {p2, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p3

    const-string v0, "cm_card_manage_screen_cta_click"

    const/4 v1, 0x0

    sparse-switch p3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p3, "cta2"

    .line 118
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 119
    instance-of p1, p2, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    if-eqz p1, :cond_2

    .line 120
    check-cast p2, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    .line 2027
    iget-object p1, p2, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 2071
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->getInterfaceDescriptor:Lcom/dreamplug/fabrik/ui/cm/models/Ctas;

    if-eqz p1, :cond_0

    .line 2175
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/Ctas;->extraCallback:Lcom/dreamplug/fabrik/ui/cm/models/Cta;

    if-eqz p1, :cond_0

    .line 121
    iget-object p3, p0, Lo/markFragmentsCreated$ICustomTabsCallback$Stub;->onPostMessage:Lo/markFragmentsCreated;

    invoke-virtual {p3}, Lo/onAudioInfoChanged;->m_()V

    .line 122
    iget-object p3, p0, Lo/markFragmentsCreated$ICustomTabsCallback$Stub;->onPostMessage:Lo/markFragmentsCreated;

    invoke-static {p3}, Lo/markFragmentsCreated;->ICustomTabsCallback(Lo/markFragmentsCreated;)Lo/getDimensionPixelOffset;

    iget-object p3, p0, Lo/markFragmentsCreated$ICustomTabsCallback$Stub;->onPostMessage:Lo/markFragmentsCreated;

    move-object v2, p3

    check-cast v2, Landroidx/fragment/app/Fragment;

    new-instance v3, Lo/addWrite;

    invoke-static {p3}, Lo/markFragmentsCreated;->onPostMessage(Lo/markFragmentsCreated;)Ljava/util/Map;

    move-result-object p3

    invoke-direct {v3, v0, p3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3015
    invoke-static {v2, p1, v1, v3, p2}, Lo/getDimensionPixelOffset;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Lcom/dreamplug/fabrik/ui/cm/models/Cta;Lo/onDisconnectSetValue;Lo/addWrite;Lcom/dreamplug/fabrik/ui/cm/models/Template;)V

    :cond_0
    return-void

    :sswitch_1
    const-string p3, "cta1"

    .line 109
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 110
    instance-of p1, p2, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    if-eqz p1, :cond_2

    .line 111
    check-cast p2, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    .line 1027
    iget-object p1, p2, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 1071
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->getInterfaceDescriptor:Lcom/dreamplug/fabrik/ui/cm/models/Ctas;

    if-eqz p1, :cond_1

    .line 1173
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/Ctas;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/cm/models/Cta;

    if-eqz p1, :cond_1

    .line 112
    iget-object p3, p0, Lo/markFragmentsCreated$ICustomTabsCallback$Stub;->onPostMessage:Lo/markFragmentsCreated;

    invoke-virtual {p3}, Lo/onAudioInfoChanged;->m_()V

    .line 113
    iget-object p3, p0, Lo/markFragmentsCreated$ICustomTabsCallback$Stub;->onPostMessage:Lo/markFragmentsCreated;

    invoke-static {p3}, Lo/markFragmentsCreated;->ICustomTabsCallback(Lo/markFragmentsCreated;)Lo/getDimensionPixelOffset;

    iget-object p3, p0, Lo/markFragmentsCreated$ICustomTabsCallback$Stub;->onPostMessage:Lo/markFragmentsCreated;

    move-object v2, p3

    check-cast v2, Landroidx/fragment/app/Fragment;

    new-instance v3, Lo/addWrite;

    invoke-static {p3}, Lo/markFragmentsCreated;->onPostMessage(Lo/markFragmentsCreated;)Ljava/util/Map;

    move-result-object p3

    invoke-direct {v3, v0, p3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2015
    invoke-static {v2, p1, v1, v3, p2}, Lo/getDimensionPixelOffset;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Lcom/dreamplug/fabrik/ui/cm/models/Cta;Lo/onDisconnectSetValue;Lo/addWrite;Lcom/dreamplug/fabrik/ui/cm/models/Template;)V

    :cond_1
    return-void

    :sswitch_2
    const-string p3, "item_click"

    .line 127
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 128
    instance-of p1, p2, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    if-eqz p1, :cond_2

    .line 129
    check-cast p2, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    .line 3027
    iget-object p1, p2, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 3073
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->warmup:Lcom/dreamplug/fabrik/ui/cm/models/Cta;

    if-eqz p1, :cond_2

    .line 130
    iget-object p3, p0, Lo/markFragmentsCreated$ICustomTabsCallback$Stub;->onPostMessage:Lo/markFragmentsCreated;

    invoke-virtual {p3}, Lo/onAudioInfoChanged;->m_()V

    .line 131
    iget-object p3, p0, Lo/markFragmentsCreated$ICustomTabsCallback$Stub;->onPostMessage:Lo/markFragmentsCreated;

    invoke-static {p3}, Lo/markFragmentsCreated;->ICustomTabsCallback(Lo/markFragmentsCreated;)Lo/getDimensionPixelOffset;

    iget-object p3, p0, Lo/markFragmentsCreated$ICustomTabsCallback$Stub;->onPostMessage:Lo/markFragmentsCreated;

    move-object v0, p3

    check-cast v0, Landroidx/fragment/app/Fragment;

    new-instance v2, Lo/addWrite;

    invoke-static {p3}, Lo/markFragmentsCreated;->onPostMessage(Lo/markFragmentsCreated;)Ljava/util/Map;

    move-result-object p3

    const-string v3, "cm_card_manage_screen_card_click"

    invoke-direct {v2, v3, p3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4015
    invoke-static {v0, p1, v1, v2, p2}, Lo/getDimensionPixelOffset;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Lcom/dreamplug/fabrik/ui/cm/models/Cta;Lo/onDisconnectSetValue;Lo/addWrite;Lcom/dreamplug/fabrik/ui/cm/models/Template;)V

    :cond_2
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x753e36a4 -> :sswitch_2
        0x2ec021 -> :sswitch_1
        0x2ec022 -> :sswitch_0
    .end sparse-switch
.end method
