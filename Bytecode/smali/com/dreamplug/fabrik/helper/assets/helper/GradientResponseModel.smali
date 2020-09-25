.class public final Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel$onNavigationEvent;
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
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B+\u0012\n\u0008\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0008\u0003\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0008\u0008\u0003\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0008J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000f\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0006H\u00c6\u0003J/\u0010\u0012\u001a\u00020\u00002\n\u0008\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u000e\u0008\u0003\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0008\u0008\u0003\u0010\u0007\u001a\u00020\u0006H\u00c6\u0001J\t\u0010\u0013\u001a\u00020\u0006H\u00d6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0006H\u00d6\u0001J\u000e\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cJ\t\u0010\u001d\u001a\u00020\u001cH\u00d6\u0001J\u0019\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u0006H\u00d6\u0001R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006#"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;",
        "Landroid/os/Parcelable;",
        "direction",
        "Landroid/graphics/drawable/GradientDrawable$Orientation;",
        "colors",
        "",
        "",
        "type",
        "(Landroid/graphics/drawable/GradientDrawable$Orientation;Ljava/util/List;I)V",
        "getColors",
        "()Ljava/util/List;",
        "getDirection",
        "()Landroid/graphics/drawable/GradientDrawable$Orientation;",
        "getType",
        "()I",
        "component1",
        "component2",
        "component3",
        "copy",
        "describeContents",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toBackGround",
        "Lcom/dreamplug/fabrik/helper/assets/Background$Gradient;",
        "key",
        "",
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
.field public final ICustomTabsCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final onNavigationEvent:I

.field public final onPostMessage:Landroid/graphics/drawable/GradientDrawable$Orientation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel$onNavigationEvent;

    invoke-direct {v0}, Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel$onNavigationEvent;-><init>()V

    sput-object v0, Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;Ljava/util/List;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/GradientDrawable$Orientation;Ljava/util/List;I)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/GradientDrawable$Orientation;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "direction"
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Lcom/dreamplug/utils/helpers/CredColorFormat;
        .end annotation

        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "colors"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lcom/dreamplug/androidapp/utils/network/GradientType;
        .end annotation

        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "type"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/GradientDrawable$Orientation;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "colors"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;->onPostMessage:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object p2, p0, Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;->ICustomTabsCallback:Ljava/util/List;

    iput p3, p0, Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;->onNavigationEvent:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/drawable/GradientDrawable$Orientation;Ljava/util/List;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 36
    sget-object p1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 1070
    sget-object p2, Lo/getEventTarget;->extraCallback:Lo/getEventTarget;

    check-cast p2, Ljava/util/List;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    .line 42
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;Ljava/util/List;I)V

    return-void
.end method


# virtual methods
.method public final copy(Landroid/graphics/drawable/GradientDrawable$Orientation;Ljava/util/List;I)Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;
    .locals 1
    .param p1    # Landroid/graphics/drawable/GradientDrawable$Orientation;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "direction"
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Lcom/dreamplug/utils/helpers/CredColorFormat;
        .end annotation

        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "colors"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lcom/dreamplug/androidapp/utils/network/GradientType;
        .end annotation

        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "type"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/GradientDrawable$Orientation;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;"
        }
    .end annotation

    const-string v0, "colors"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;

    invoke-direct {v0, p1, p2, p3}, Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;Ljava/util/List;I)V

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

    instance-of v0, p1, Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;

    iget-object v0, p0, Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;->onPostMessage:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v1, p1, Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;->onPostMessage:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;->ICustomTabsCallback:Ljava/util/List;

    iget-object v1, p1, Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;->ICustomTabsCallback:Ljava/util/List;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;->onNavigationEvent:I

    iget p1, p1, Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;->onNavigationEvent:I

    if-ne v0, p1, :cond_0

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

    iget-object v0, p0, Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;->onPostMessage:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;->ICustomTabsCallback:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;->onNavigationEvent:I

    .line 2025
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GradientResponseModel(direction="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;->onPostMessage:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", colors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;->ICustomTabsCallback:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;->onNavigationEvent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;->onPostMessage:Landroid/graphics/drawable/GradientDrawable$Orientation;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object p2, p0, Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    iget p2, p0, Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;->onNavigationEvent:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
