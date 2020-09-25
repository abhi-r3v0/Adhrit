.class public final Lo/getSharedElementReturnTransition$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasGapsToFix$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getSharedElementReturnTransition;-><init>()V
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
        "com/dreamplug/fabrik/ui/cm/CMBottomSheetDialog$onItemClickListener$1",
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
.field private synthetic ICustomTabsCallback:Lo/getSharedElementReturnTransition;


# direct methods
.method constructor <init>(Lo/getSharedElementReturnTransition;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lo/getSharedElementReturnTransition$onMessageChannelReady;->ICustomTabsCallback:Lo/getSharedElementReturnTransition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
    .locals 3

    const-string/jumbo p3, "type"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "data"

    invoke-static {p2, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p3

    const-string v0, "cm_card_bs1_screen_cta_click"

    const/4 v1, 0x0

    sparse-switch p3, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string p3, "cta2"

    .line 117
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 118
    instance-of p1, p2, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    if-eqz p1, :cond_3

    .line 119
    check-cast p2, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    .line 3027
    iget-object p1, p2, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 3071
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->getInterfaceDescriptor:Lcom/dreamplug/fabrik/ui/cm/models/Ctas;

    if-eqz p1, :cond_1

    .line 3175
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/Ctas;->extraCallback:Lcom/dreamplug/fabrik/ui/cm/models/Cta;

    if-eqz p1, :cond_1

    .line 120
    iget-object p1, p0, Lo/getSharedElementReturnTransition$onMessageChannelReady;->ICustomTabsCallback:Lo/getSharedElementReturnTransition;

    invoke-virtual {p1}, Lo/onAudioInfoChanged;->m_()V

    .line 121
    iget-object p1, p0, Lo/getSharedElementReturnTransition$onMessageChannelReady;->ICustomTabsCallback:Lo/getSharedElementReturnTransition;

    invoke-static {p1}, Lo/getSharedElementReturnTransition;->onNavigationEvent(Lo/getSharedElementReturnTransition;)Lo/getDimensionPixelOffset;

    .line 122
    iget-object p1, p0, Lo/getSharedElementReturnTransition$onMessageChannelReady;->ICustomTabsCallback:Lo/getSharedElementReturnTransition;

    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 4027
    iget-object p3, p2, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 4071
    iget-object p3, p3, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->getInterfaceDescriptor:Lcom/dreamplug/fabrik/ui/cm/models/Ctas;

    if-eqz p3, :cond_0

    .line 4175
    iget-object p3, p3, Lcom/dreamplug/fabrik/ui/cm/models/Ctas;->extraCallback:Lcom/dreamplug/fabrik/ui/cm/models/Cta;

    goto :goto_0

    :cond_0
    move-object p3, v1

    .line 124
    :goto_0
    new-instance v2, Lo/addWrite;

    invoke-direct {v2, v0, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5015
    invoke-static {p1, p3, v1, v2, p2}, Lo/getDimensionPixelOffset;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Lcom/dreamplug/fabrik/ui/cm/models/Cta;Lo/onDisconnectSetValue;Lo/addWrite;Lcom/dreamplug/fabrik/ui/cm/models/Template;)V

    :cond_1
    return-void

    :sswitch_1
    const-string p3, "cta1"

    .line 103
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 104
    instance-of p1, p2, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    if-eqz p1, :cond_3

    .line 105
    check-cast p2, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    .line 1027
    iget-object p1, p2, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 1071
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->getInterfaceDescriptor:Lcom/dreamplug/fabrik/ui/cm/models/Ctas;

    if-eqz p1, :cond_2

    .line 1173
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/Ctas;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/cm/models/Cta;

    if-eqz p1, :cond_2

    .line 106
    iget-object p1, p0, Lo/getSharedElementReturnTransition$onMessageChannelReady;->ICustomTabsCallback:Lo/getSharedElementReturnTransition;

    invoke-virtual {p1}, Lo/onAudioInfoChanged;->m_()V

    .line 107
    iget-object p1, p0, Lo/getSharedElementReturnTransition$onMessageChannelReady;->ICustomTabsCallback:Lo/getSharedElementReturnTransition;

    invoke-static {p1}, Lo/getSharedElementReturnTransition;->onNavigationEvent(Lo/getSharedElementReturnTransition;)Lo/getDimensionPixelOffset;

    .line 108
    iget-object p1, p0, Lo/getSharedElementReturnTransition$onMessageChannelReady;->ICustomTabsCallback:Lo/getSharedElementReturnTransition;

    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 2027
    iget-object p3, p2, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 2071
    iget-object p3, p3, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->getInterfaceDescriptor:Lcom/dreamplug/fabrik/ui/cm/models/Ctas;

    .line 2173
    iget-object p3, p3, Lcom/dreamplug/fabrik/ui/cm/models/Ctas;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/cm/models/Cta;

    .line 110
    new-instance v2, Lo/addWrite;

    invoke-direct {v2, v0, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3015
    invoke-static {p1, p3, v1, v2, p2}, Lo/getDimensionPixelOffset;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Lcom/dreamplug/fabrik/ui/cm/models/Cta;Lo/onDisconnectSetValue;Lo/addWrite;Lcom/dreamplug/fabrik/ui/cm/models/Template;)V

    :cond_2
    return-void

    :sswitch_2
    const-string p3, "item_click"

    .line 130
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 131
    instance-of p1, p2, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    if-eqz p1, :cond_3

    .line 132
    check-cast p2, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    .line 5027
    iget-object p1, p2, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 5073
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->warmup:Lcom/dreamplug/fabrik/ui/cm/models/Cta;

    if-eqz p1, :cond_3

    .line 133
    iget-object p1, p0, Lo/getSharedElementReturnTransition$onMessageChannelReady;->ICustomTabsCallback:Lo/getSharedElementReturnTransition;

    invoke-virtual {p1}, Lo/onAudioInfoChanged;->m_()V

    .line 134
    iget-object p1, p0, Lo/getSharedElementReturnTransition$onMessageChannelReady;->ICustomTabsCallback:Lo/getSharedElementReturnTransition;

    invoke-static {p1}, Lo/getSharedElementReturnTransition;->onNavigationEvent(Lo/getSharedElementReturnTransition;)Lo/getDimensionPixelOffset;

    .line 135
    iget-object p1, p0, Lo/getSharedElementReturnTransition$onMessageChannelReady;->ICustomTabsCallback:Lo/getSharedElementReturnTransition;

    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 6027
    iget-object p3, p2, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 6073
    iget-object p3, p3, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->warmup:Lcom/dreamplug/fabrik/ui/cm/models/Cta;

    .line 137
    new-instance v0, Lo/addWrite;

    const-string v2, "cm_card_bs1_screen_card_click"

    invoke-direct {v0, v2, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7015
    invoke-static {p1, p3, v1, v0, p2}, Lo/getDimensionPixelOffset;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Lcom/dreamplug/fabrik/ui/cm/models/Cta;Lo/onDisconnectSetValue;Lo/addWrite;Lcom/dreamplug/fabrik/ui/cm/models/Template;)V

    :cond_3
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x753e36a4 -> :sswitch_2
        0x2ec021 -> :sswitch_1
        0x2ec022 -> :sswitch_0
    .end sparse-switch
.end method
