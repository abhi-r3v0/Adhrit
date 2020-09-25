.class public final Lcom/dreamplug/fabrik/ui/lifestyle/models/Component;
.super Lo/StaggeredGridLayoutManager;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dreamplug/fabrik/ui/lifestyle/models/Component$onMessageChannelReady;
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
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u00012\u00020\u0002B-\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0003\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nJ\t\u0010\u0012\u001a\u00020\u0004H\u00c6\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0007H\u00c6\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\tH\u00c6\u0003J5\u0010\u0016\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\n\u0008\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0003\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\tH\u00c6\u0001J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001J\u0013\u0010\u0019\u001a\u00020\u00072\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u00d6\u0003J\t\u0010\u001c\u001a\u00020\u0018H\u00d6\u0001J\t\u0010\u001d\u001a\u00020\u0004H\u00d6\u0001J\u0019\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u0018H\u00d6\u0001R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000e\u00a8\u0006#"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/Component;",
        "Lcom/dreamplug/utils/list/ListItem;",
        "Landroid/os/Parcelable;",
        "title",
        "",
        "icon",
        "showWhileRedeem",
        "",
        "data",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/Data;",
        "(Ljava/lang/String;Ljava/lang/String;ZLcom/dreamplug/fabrik/ui/lifestyle/models/Data;)V",
        "getData",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/models/Data;",
        "getIcon",
        "()Ljava/lang/String;",
        "getShowWhileRedeem",
        "()Z",
        "getTitle",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "describeContents",
        "",
        "equals",
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

.field public final extraCallback:Ljava/lang/String;

.field public final onMessageChannelReady:Z

.field public final onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/Data;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Component$onMessageChannelReady;

    invoke-direct {v0}, Lcom/dreamplug/fabrik/ui/lifestyle/models/Component$onMessageChannelReady;-><init>()V

    sput-object v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Component;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/dreamplug/fabrik/ui/lifestyle/models/Data;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "icon_url"
        .end annotation
    .end param
    .param p3    # Z
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "show_while_redeem"
        .end annotation
    .end param

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-direct {p0}, Lo/StaggeredGridLayoutManager;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Component;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Component;->extraCallback:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Component;->onMessageChannelReady:Z

    iput-object p4, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Component;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/Data;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/dreamplug/fabrik/ui/lifestyle/models/Data;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x0

    .line 125
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dreamplug/fabrik/ui/lifestyle/models/Component;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/dreamplug/fabrik/ui/lifestyle/models/Data;)V

    return-void
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/lang/String;ZLcom/dreamplug/fabrik/ui/lifestyle/models/Data;)Lcom/dreamplug/fabrik/ui/lifestyle/models/Component;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "icon_url"
        .end annotation
    .end param
    .param p3    # Z
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "show_while_redeem"
        .end annotation
    .end param

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Component;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/dreamplug/fabrik/ui/lifestyle/models/Component;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/dreamplug/fabrik/ui/lifestyle/models/Data;)V

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

    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Component;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Component;

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Component;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Component;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Component;->extraCallback:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Component;->extraCallback:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Component;->onMessageChannelReady:Z

    iget-boolean v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Component;->onMessageChannelReady:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Component;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/Data;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Component;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/Data;

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

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Component;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Component;->extraCallback:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Component;->onMessageChannelReady:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Component;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/Data;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Component(title="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Component;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Component;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", showWhileRedeem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Component;->onMessageChannelReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Component;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/Data;

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

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Component;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Component;->extraCallback:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Component;->onMessageChannelReady:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Component;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/Data;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
