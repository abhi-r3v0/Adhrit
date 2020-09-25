.class public final Lo/allocateRequestIndex$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasGapsToFix$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/allocateRequestIndex;-><init>()V
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
        "com/dreamplug/fabrik/ui/cm/unbilled/UnBilledFragment$onItemClickListener$1",
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
.field private synthetic onMessageChannelReady:Lo/allocateRequestIndex;


# direct methods
.method constructor <init>(Lo/allocateRequestIndex;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 273
    iput-object p1, p0, Lo/allocateRequestIndex$onPostMessage;->onMessageChannelReady:Lo/allocateRequestIndex;

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

    .line 275
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p3

    const-string v0, "cm_unbilled_farm_cta_click"

    const/4 v1, 0x0

    sparse-switch p3, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string p3, "cta2"

    .line 287
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 288
    instance-of p1, p2, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    if-eqz p1, :cond_2

    .line 289
    iget-object p1, p0, Lo/allocateRequestIndex$onPostMessage;->onMessageChannelReady:Lo/allocateRequestIndex;

    invoke-static {p1}, Lo/allocateRequestIndex;->onPostMessage(Lo/allocateRequestIndex;)Lo/getDimensionPixelOffset;

    .line 290
    iget-object p1, p0, Lo/allocateRequestIndex$onPostMessage;->onMessageChannelReady:Lo/allocateRequestIndex;

    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 291
    check-cast p2, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    .line 3027
    iget-object p3, p2, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 3071
    iget-object p3, p3, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->getInterfaceDescriptor:Lcom/dreamplug/fabrik/ui/cm/models/Ctas;

    if-eqz p3, :cond_0

    .line 3175
    iget-object p3, p3, Lcom/dreamplug/fabrik/ui/cm/models/Ctas;->extraCallback:Lcom/dreamplug/fabrik/ui/cm/models/Cta;

    goto :goto_0

    :cond_0
    move-object p3, v1

    .line 292
    :goto_0
    new-instance v2, Lo/addWrite;

    iget-object v3, p0, Lo/allocateRequestIndex$onPostMessage;->onMessageChannelReady:Lo/allocateRequestIndex;

    invoke-static {v3}, Lo/allocateRequestIndex;->asBinder(Lo/allocateRequestIndex;)Lo/requestPermissionsFromFragment;

    move-result-object v3

    .line 4030
    iget-object v3, v3, Lo/requestPermissionsFromFragment;->extraCallback:Ljava/util/Map;

    .line 292
    invoke-direct {v2, v0, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5015
    invoke-static {p1, p3, v1, v2, p2}, Lo/getDimensionPixelOffset;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Lcom/dreamplug/fabrik/ui/cm/models/Cta;Lo/onDisconnectSetValue;Lo/addWrite;Lcom/dreamplug/fabrik/ui/cm/models/Template;)V

    return-void

    :sswitch_1
    const-string p3, "cta1"

    .line 276
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 277
    instance-of p1, p2, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    if-eqz p1, :cond_2

    .line 278
    iget-object p1, p0, Lo/allocateRequestIndex$onPostMessage;->onMessageChannelReady:Lo/allocateRequestIndex;

    invoke-static {p1}, Lo/allocateRequestIndex;->onPostMessage(Lo/allocateRequestIndex;)Lo/getDimensionPixelOffset;

    .line 279
    iget-object p1, p0, Lo/allocateRequestIndex$onPostMessage;->onMessageChannelReady:Lo/allocateRequestIndex;

    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 280
    check-cast p2, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    .line 1027
    iget-object p3, p2, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 1071
    iget-object p3, p3, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->getInterfaceDescriptor:Lcom/dreamplug/fabrik/ui/cm/models/Ctas;

    if-eqz p3, :cond_1

    .line 1173
    iget-object p3, p3, Lcom/dreamplug/fabrik/ui/cm/models/Ctas;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/cm/models/Cta;

    goto :goto_1

    :cond_1
    move-object p3, v1

    .line 281
    :goto_1
    new-instance v2, Lo/addWrite;

    iget-object v3, p0, Lo/allocateRequestIndex$onPostMessage;->onMessageChannelReady:Lo/allocateRequestIndex;

    invoke-static {v3}, Lo/allocateRequestIndex;->asBinder(Lo/allocateRequestIndex;)Lo/requestPermissionsFromFragment;

    move-result-object v3

    .line 2030
    iget-object v3, v3, Lo/requestPermissionsFromFragment;->extraCallback:Ljava/util/Map;

    .line 281
    invoke-direct {v2, v0, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3015
    invoke-static {p1, p3, v1, v2, p2}, Lo/getDimensionPixelOffset;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Lcom/dreamplug/fabrik/ui/cm/models/Cta;Lo/onDisconnectSetValue;Lo/addWrite;Lcom/dreamplug/fabrik/ui/cm/models/Template;)V

    return-void

    :sswitch_2
    const-string p3, "item_click"

    .line 298
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 299
    instance-of p1, p2, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    if-eqz p1, :cond_2

    .line 300
    iget-object p1, p0, Lo/allocateRequestIndex$onPostMessage;->onMessageChannelReady:Lo/allocateRequestIndex;

    invoke-static {p1}, Lo/allocateRequestIndex;->onPostMessage(Lo/allocateRequestIndex;)Lo/getDimensionPixelOffset;

    .line 301
    iget-object p1, p0, Lo/allocateRequestIndex$onPostMessage;->onMessageChannelReady:Lo/allocateRequestIndex;

    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 302
    check-cast p2, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    .line 5027
    iget-object p3, p2, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 5073
    iget-object p3, p3, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->warmup:Lcom/dreamplug/fabrik/ui/cm/models/Cta;

    .line 303
    new-instance v0, Lo/addWrite;

    iget-object v2, p0, Lo/allocateRequestIndex$onPostMessage;->onMessageChannelReady:Lo/allocateRequestIndex;

    invoke-static {v2}, Lo/allocateRequestIndex;->asBinder(Lo/allocateRequestIndex;)Lo/requestPermissionsFromFragment;

    move-result-object v2

    .line 6030
    iget-object v2, v2, Lo/requestPermissionsFromFragment;->extraCallback:Ljava/util/Map;

    const-string v3, "cm_unbilled_farm_card_click"

    .line 303
    invoke-direct {v0, v3, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7015
    invoke-static {p1, p3, v1, v0, p2}, Lo/getDimensionPixelOffset;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Lcom/dreamplug/fabrik/ui/cm/models/Cta;Lo/onDisconnectSetValue;Lo/addWrite;Lcom/dreamplug/fabrik/ui/cm/models/Template;)V

    :cond_2
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x753e36a4 -> :sswitch_2
        0x2ec021 -> :sswitch_1
        0x2ec022 -> :sswitch_0
    .end sparse-switch
.end method
