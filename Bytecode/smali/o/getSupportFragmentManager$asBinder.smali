.class public final Lo/getSupportFragmentManager$asBinder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasGapsToFix$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getSupportFragmentManager;-><init>()V
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
        "com/dreamplug/fabrik/ui/cm/manage/smartstatement/main/SmartStatementFragment$onItemClickListener$1",
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
.field private synthetic extraCallback:Lo/getSupportFragmentManager;


# direct methods
.method constructor <init>(Lo/getSupportFragmentManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 211
    iput-object p1, p0, Lo/getSupportFragmentManager$asBinder;->extraCallback:Lo/getSupportFragmentManager;

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

    .line 213
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p3

    const/4 v0, 0x0

    sparse-switch p3, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    const-string p3, "cta2"

    .line 232
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 233
    instance-of p1, p2, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    if-eqz p1, :cond_6

    .line 234
    iget-object p1, p0, Lo/getSupportFragmentManager$asBinder;->extraCallback:Lo/getSupportFragmentManager;

    invoke-static {p1}, Lo/getSupportFragmentManager;->ICustomTabsCallback$Stub(Lo/getSupportFragmentManager;)Lo/getDimensionPixelOffset;

    iget-object p1, p0, Lo/getSupportFragmentManager$asBinder;->extraCallback:Lo/getSupportFragmentManager;

    check-cast p1, Landroidx/fragment/app/Fragment;

    check-cast p2, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    .line 6027
    iget-object p3, p2, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 6071
    iget-object p3, p3, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->getInterfaceDescriptor:Lcom/dreamplug/fabrik/ui/cm/models/Ctas;

    if-eqz p3, :cond_0

    .line 6175
    iget-object p3, p3, Lcom/dreamplug/fabrik/ui/cm/models/Ctas;->extraCallback:Lcom/dreamplug/fabrik/ui/cm/models/Cta;

    goto :goto_0

    :cond_0
    move-object p3, v0

    .line 234
    :goto_0
    new-instance v1, Lo/addWrite;

    iget-object v2, p0, Lo/getSupportFragmentManager$asBinder;->extraCallback:Lo/getSupportFragmentManager;

    invoke-static {v2}, Lo/getSupportFragmentManager;->asInterface(Lo/getSupportFragmentManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lo/getSupportFragmentManager$asBinder;->extraCallback:Lo/getSupportFragmentManager;

    invoke-static {v3}, Lo/getSupportFragmentManager;->onTransact(Lo/getSupportFragmentManager;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7015
    invoke-static {p1, p3, v0, v1, p2}, Lo/getDimensionPixelOffset;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Lcom/dreamplug/fabrik/ui/cm/models/Cta;Lo/onDisconnectSetValue;Lo/addWrite;Lcom/dreamplug/fabrik/ui/cm/models/Template;)V

    goto/16 :goto_4

    :sswitch_1
    const-string p3, "cta1"

    .line 214
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 215
    instance-of p1, p2, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    if-eqz p1, :cond_6

    .line 216
    check-cast p2, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    .line 1027
    iget-object p1, p2, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 1071
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->getInterfaceDescriptor:Lcom/dreamplug/fabrik/ui/cm/models/Ctas;

    if-eqz p1, :cond_1

    .line 1173
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/Ctas;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/cm/models/Cta;

    if-eqz p1, :cond_1

    .line 2018
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/Cta;->asBinder:Lcom/dreamplug/fabrik/ui/cm/models/Cta$Flow;

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_2

    .line 2031
    iget-object p3, p1, Lcom/dreamplug/fabrik/ui/cm/models/Cta$Flow;->onPostMessage:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object p3, v0

    :goto_2
    const-string v1, "download_statement"

    .line 217
    invoke-static {p3, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 3031
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/Cta$Flow;->onMessageChannelReady:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 219
    iget-object p2, p0, Lo/getSupportFragmentManager$asBinder;->extraCallback:Lo/getSupportFragmentManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "https://app-prod.dreamplug.in/etl/v1/source/data/"

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3053
    iput-object p1, p2, Lo/getSupportFragmentManager;->onNavigationEvent:Ljava/lang/String;

    .line 220
    iget-object p1, p0, Lo/getSupportFragmentManager$asBinder;->extraCallback:Lo/getSupportFragmentManager;

    invoke-static {p1}, Lo/getSupportFragmentManager;->onRelationshipValidationResult(Lo/getSupportFragmentManager;)V

    :cond_3
    return-void

    .line 223
    :cond_4
    iget-object p1, p0, Lo/getSupportFragmentManager$asBinder;->extraCallback:Lo/getSupportFragmentManager;

    invoke-static {p1}, Lo/getSupportFragmentManager;->ICustomTabsCallback$Stub(Lo/getSupportFragmentManager;)Lo/getDimensionPixelOffset;

    iget-object p1, p0, Lo/getSupportFragmentManager$asBinder;->extraCallback:Lo/getSupportFragmentManager;

    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 4027
    iget-object p3, p2, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 4071
    iget-object p3, p3, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->getInterfaceDescriptor:Lcom/dreamplug/fabrik/ui/cm/models/Ctas;

    if-eqz p3, :cond_5

    .line 4173
    iget-object p3, p3, Lcom/dreamplug/fabrik/ui/cm/models/Ctas;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/cm/models/Cta;

    goto :goto_3

    :cond_5
    move-object p3, v0

    .line 223
    :goto_3
    new-instance v1, Lo/addWrite;

    iget-object v2, p0, Lo/getSupportFragmentManager$asBinder;->extraCallback:Lo/getSupportFragmentManager;

    invoke-static {v2}, Lo/getSupportFragmentManager;->asInterface(Lo/getSupportFragmentManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lo/getSupportFragmentManager$asBinder;->extraCallback:Lo/getSupportFragmentManager;

    invoke-static {v3}, Lo/getSupportFragmentManager;->onTransact(Lo/getSupportFragmentManager;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5015
    invoke-static {p1, p3, v0, v1, p2}, Lo/getDimensionPixelOffset;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Lcom/dreamplug/fabrik/ui/cm/models/Cta;Lo/onDisconnectSetValue;Lo/addWrite;Lcom/dreamplug/fabrik/ui/cm/models/Template;)V

    return-void

    :sswitch_2
    const-string p3, "item_click"

    .line 227
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 228
    instance-of p1, p2, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    if-eqz p1, :cond_6

    .line 229
    iget-object p1, p0, Lo/getSupportFragmentManager$asBinder;->extraCallback:Lo/getSupportFragmentManager;

    invoke-static {p1}, Lo/getSupportFragmentManager;->ICustomTabsCallback$Stub(Lo/getSupportFragmentManager;)Lo/getDimensionPixelOffset;

    iget-object p1, p0, Lo/getSupportFragmentManager$asBinder;->extraCallback:Lo/getSupportFragmentManager;

    check-cast p1, Landroidx/fragment/app/Fragment;

    check-cast p2, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    .line 5027
    iget-object p3, p2, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 5073
    iget-object p3, p3, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->warmup:Lcom/dreamplug/fabrik/ui/cm/models/Cta;

    .line 229
    new-instance v1, Lo/addWrite;

    iget-object v2, p0, Lo/getSupportFragmentManager$asBinder;->extraCallback:Lo/getSupportFragmentManager;

    invoke-static {v2}, Lo/getSupportFragmentManager;->ICustomTabsService(Lo/getSupportFragmentManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lo/getSupportFragmentManager$asBinder;->extraCallback:Lo/getSupportFragmentManager;

    invoke-static {v3}, Lo/getSupportFragmentManager;->onTransact(Lo/getSupportFragmentManager;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6015
    invoke-static {p1, p3, v0, v1, p2}, Lo/getDimensionPixelOffset;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Lcom/dreamplug/fabrik/ui/cm/models/Cta;Lo/onDisconnectSetValue;Lo/addWrite;Lcom/dreamplug/fabrik/ui/cm/models/Template;)V

    :cond_6
    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x753e36a4 -> :sswitch_2
        0x2ec021 -> :sswitch_1
        0x2ec022 -> :sswitch_0
    .end sparse-switch
.end method
