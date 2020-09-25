.class public final Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;
.super Lo/StaggeredGridLayoutManager;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dreamplug/fabrik/ui/nba/helper/NBACard$onNavigationEvent;
    }
.end annotation

.annotation runtime Lo/NativeApi;
    extraCallback = true
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u00012\u00020\u0002BE\u0012\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0001\u0010\t\u001a\u00020\u0006\u0012\u0008\u0008\u0001\u0010\n\u001a\u00020\u000b\u0012\n\u0008\u0001\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0002\u0010\u000eJ\t\u0010\u001a\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0006H\u00c6\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u000bH\u00c6\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\rH\u00c6\u0003JI\u0010 \u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0003\u0010\u0005\u001a\u00020\u00062\n\u0008\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0003\u0010\t\u001a\u00020\u00062\u0008\u0008\u0003\u0010\n\u001a\u00020\u000b2\n\u0008\u0003\u0010\u000c\u001a\u0004\u0018\u00010\rH\u00c6\u0001J\t\u0010!\u001a\u00020\"H\u00d6\u0001J\u0013\u0010#\u001a\u00020$2\u0008\u0010%\u001a\u0004\u0018\u00010&H\u00d6\u0003J\t\u0010\'\u001a\u00020\"H\u00d6\u0001J\t\u0010(\u001a\u00020\u0006H\u00d6\u0001J\u0019\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020\"H\u00d6\u0001R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0014R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006."
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;",
        "Lcom/dreamplug/utils/list/ListItem;",
        "Landroid/os/Parcelable;",
        "completionAction",
        "Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;",
        "externalId",
        "",
        "metadata",
        "Lcom/dreamplug/fabrik/ui/nba/helper/Metadata;",
        "templateName",
        "templateProperties",
        "Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;",
        "dismissConfig",
        "Lcom/dreamplug/fabrik/ui/nba/helper/DismissConfig;",
        "(Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/nba/helper/Metadata;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;Lcom/dreamplug/fabrik/ui/nba/helper/DismissConfig;)V",
        "getCompletionAction",
        "()Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;",
        "getDismissConfig",
        "()Lcom/dreamplug/fabrik/ui/nba/helper/DismissConfig;",
        "getExternalId",
        "()Ljava/lang/String;",
        "getMetadata",
        "()Lcom/dreamplug/fabrik/ui/nba/helper/Metadata;",
        "getTemplateName",
        "getTemplateProperties",
        "()Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "describeContents",
        "",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final ICustomTabsCallback:Ljava/lang/String;

.field public final extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Metadata;

.field public final onMessageChannelReady:Ljava/lang/String;

.field public final onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

.field public final onPostMessage:Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;

.field public final onTransact:Lcom/dreamplug/fabrik/ui/nba/helper/DismissConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard$onNavigationEvent;

    invoke-direct {v0}, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard$onNavigationEvent;-><init>()V

    sput-object v0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/nba/helper/Metadata;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;Lcom/dreamplug/fabrik/ui/nba/helper/DismissConfig;)V
    .locals 1
    .param p1    # Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "completion_action"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "external_id"
        .end annotation
    .end param
    .param p3    # Lcom/dreamplug/fabrik/ui/nba/helper/Metadata;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "metadata"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "template_name"
        .end annotation
    .end param
    .param p5    # Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "template_properties"
        .end annotation
    .end param
    .param p6    # Lcom/dreamplug/fabrik/ui/nba/helper/DismissConfig;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "dismiss_config"
        .end annotation
    .end param

    const-string v0, "completionAction"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "externalId"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "templateName"

    invoke-static {p4, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "templateProperties"

    invoke-static {p5, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Lo/StaggeredGridLayoutManager;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onPostMessage:Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Metadata;

    iput-object p4, p0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onMessageChannelReady:Ljava/lang/String;

    iput-object p5, p0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    iput-object p6, p0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onTransact:Lcom/dreamplug/fabrik/ui/nba/helper/DismissConfig;

    return-void
.end method


# virtual methods
.method public final copy(Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/nba/helper/Metadata;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;Lcom/dreamplug/fabrik/ui/nba/helper/DismissConfig;)Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;
    .locals 8
    .param p1    # Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "completion_action"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "external_id"
        .end annotation
    .end param
    .param p3    # Lcom/dreamplug/fabrik/ui/nba/helper/Metadata;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "metadata"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "template_name"
        .end annotation
    .end param
    .param p5    # Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "template_properties"
        .end annotation
    .end param
    .param p6    # Lcom/dreamplug/fabrik/ui/nba/helper/DismissConfig;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "dismiss_config"
        .end annotation
    .end param

    const-string v0, "completionAction"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "externalId"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "templateName"

    invoke-static {p4, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "templateProperties"

    invoke-static {p5, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;-><init>(Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/nba/helper/Metadata;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;Lcom/dreamplug/fabrik/ui/nba/helper/DismissConfig;)V

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onPostMessage:Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onPostMessage:Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Metadata;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Metadata;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onMessageChannelReady:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onTransact:Lcom/dreamplug/fabrik/ui/nba/helper/DismissConfig;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onTransact:Lcom/dreamplug/fabrik/ui/nba/helper/DismissConfig;

    invoke-static {v0, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onPostMessage:Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Metadata;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onTransact:Lcom/dreamplug/fabrik/ui/nba/helper/DismissConfig;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_5
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NBACard(completionAction="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onPostMessage:Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", externalId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", metadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Metadata;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", templateName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", templateProperties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dismissConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onTransact:Lcom/dreamplug/fabrik/ui/nba/helper/DismissConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onPostMessage:Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Metadata;

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    invoke-interface {p2, p1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onTransact:Lcom/dreamplug/fabrik/ui/nba/helper/DismissConfig;

    if-eqz p2, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    return-void

    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
