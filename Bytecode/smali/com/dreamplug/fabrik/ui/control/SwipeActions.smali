.class public final Lcom/dreamplug/fabrik/ui/control/SwipeActions;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dreamplug/fabrik/ui/control/SwipeActions$onMessageChannelReady;
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
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0013\u0008\u0007\u0012\n\u0008\u0001\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u000b\u0010\u0007\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0015\u0010\u0008\u001a\u00020\u00002\n\u0008\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\t\u0010\t\u001a\u00020\nH\u00d6\u0001J\u0013\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u00d6\u0003J\t\u0010\u000f\u001a\u00020\nH\u00d6\u0001J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001J\u0019\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\nH\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/control/SwipeActions;",
        "Landroid/os/Parcelable;",
        "properties",
        "Lcom/dreamplug/fabrik/ui/control/SwipeActionProperties;",
        "(Lcom/dreamplug/fabrik/ui/control/SwipeActionProperties;)V",
        "getProperties",
        "()Lcom/dreamplug/fabrik/ui/control/SwipeActionProperties;",
        "component1",
        "copy",
        "describeContents",
        "",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "",
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

.annotation runtime Lorg/parceler/Parcel;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final properties:Lcom/dreamplug/fabrik/ui/control/SwipeActionProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dreamplug/fabrik/ui/control/SwipeActions$onMessageChannelReady;

    invoke-direct {v0}, Lcom/dreamplug/fabrik/ui/control/SwipeActions$onMessageChannelReady;-><init>()V

    sput-object v0, Lcom/dreamplug/fabrik/ui/control/SwipeActions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/dreamplug/fabrik/ui/control/SwipeActionProperties;)V
    .locals 0
    .param p1    # Lcom/dreamplug/fabrik/ui/control/SwipeActionProperties;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "properties"
        .end annotation
    .end param

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/control/SwipeActions;->properties:Lcom/dreamplug/fabrik/ui/control/SwipeActionProperties;

    return-void
.end method

.method public static synthetic copy$default(Lcom/dreamplug/fabrik/ui/control/SwipeActions;Lcom/dreamplug/fabrik/ui/control/SwipeActionProperties;ILjava/lang/Object;)Lcom/dreamplug/fabrik/ui/control/SwipeActions;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/control/SwipeActions;->properties:Lcom/dreamplug/fabrik/ui/control/SwipeActionProperties;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/dreamplug/fabrik/ui/control/SwipeActions;->copy(Lcom/dreamplug/fabrik/ui/control/SwipeActionProperties;)Lcom/dreamplug/fabrik/ui/control/SwipeActions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/dreamplug/fabrik/ui/control/SwipeActionProperties;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/SwipeActions;->properties:Lcom/dreamplug/fabrik/ui/control/SwipeActionProperties;

    return-object v0
.end method

.method public final copy(Lcom/dreamplug/fabrik/ui/control/SwipeActionProperties;)Lcom/dreamplug/fabrik/ui/control/SwipeActions;
    .locals 1
    .param p1    # Lcom/dreamplug/fabrik/ui/control/SwipeActionProperties;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "properties"
        .end annotation
    .end param

    new-instance v0, Lcom/dreamplug/fabrik/ui/control/SwipeActions;

    invoke-direct {v0, p1}, Lcom/dreamplug/fabrik/ui/control/SwipeActions;-><init>(Lcom/dreamplug/fabrik/ui/control/SwipeActionProperties;)V

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/control/SwipeActions;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/fabrik/ui/control/SwipeActions;

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/SwipeActions;->properties:Lcom/dreamplug/fabrik/ui/control/SwipeActionProperties;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/control/SwipeActions;->properties:Lcom/dreamplug/fabrik/ui/control/SwipeActionProperties;

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

.method public final getProperties()Lcom/dreamplug/fabrik/ui/control/SwipeActionProperties;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/SwipeActions;->properties:Lcom/dreamplug/fabrik/ui/control/SwipeActionProperties;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/SwipeActions;->properties:Lcom/dreamplug/fabrik/ui/control/SwipeActionProperties;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SwipeActions(properties="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/control/SwipeActions;->properties:Lcom/dreamplug/fabrik/ui/control/SwipeActionProperties;

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

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/control/SwipeActions;->properties:Lcom/dreamplug/fabrik/ui/control/SwipeActionProperties;

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
