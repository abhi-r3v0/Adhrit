.class public final Lcom/cred/pay/repository/models/checkout/Widget;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cred/pay/repository/models/checkout/Widget$onPostMessage;
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
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B_\u0012\n\u0008\u0001\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0010\u0008\u0001\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u0012\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u000fJ\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0013J\u0011\u0010 \u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tH\u00c6\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003Jh\u0010$\u001a\u00020\u00002\n\u0008\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0010\u0008\u0003\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t2\n\u0008\u0003\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0003\u0010\r\u001a\u0004\u0018\u00010\u00032\n\u0008\u0003\u0010\u000e\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001\u00a2\u0006\u0002\u0010%J\t\u0010&\u001a\u00020\u0007H\u00d6\u0001J\u0013\u0010\'\u001a\u00020(2\u0008\u0010)\u001a\u0004\u0018\u00010*H\u00d6\u0003J\t\u0010+\u001a\u00020\u0007H\u00d6\u0001J\t\u0010,\u001a\u00020\u0003H\u00d6\u0001J\u0019\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020\u0007H\u00d6\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\n\n\u0002\u0010\u0014\u001a\u0004\u0008\u0012\u0010\u0013R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0019\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0016R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0016\u00a8\u00062"
    }
    d2 = {
        "Lcom/cred/pay/repository/models/checkout/Widget;",
        "Landroid/os/Parcelable;",
        "id",
        "",
        "cta",
        "Lcom/cred/pay/repository/models/checkout/Cta;",
        "defaultSelection",
        "",
        "instruments",
        "",
        "Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;",
        "status",
        "Lcom/cred/pay/repository/models/Status;",
        "title",
        "template",
        "(Ljava/lang/String;Lcom/cred/pay/repository/models/checkout/Cta;Ljava/lang/Integer;Ljava/util/List;Lcom/cred/pay/repository/models/Status;Ljava/lang/String;Ljava/lang/String;)V",
        "getCta",
        "()Lcom/cred/pay/repository/models/checkout/Cta;",
        "getDefaultSelection",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getId",
        "()Ljava/lang/String;",
        "getInstruments",
        "()Ljava/util/List;",
        "getStatus",
        "()Lcom/cred/pay/repository/models/Status;",
        "getTemplate",
        "getTitle",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "copy",
        "(Ljava/lang/String;Lcom/cred/pay/repository/models/checkout/Cta;Ljava/lang/Integer;Ljava/util/List;Lcom/cred/pay/repository/models/Status;Ljava/lang/String;Ljava/lang/String;)Lcom/cred/pay/repository/models/checkout/Widget;",
        "describeContents",
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
        "credpayrepository_release"
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
.field final ICustomTabsCallback:Ljava/lang/Integer;

.field public final asInterface:Ljava/lang/String;

.field public final extraCallback:Ljava/lang/String;

.field final onMessageChannelReady:Lcom/cred/pay/repository/models/Status;

.field public final onNavigationEvent:Lcom/cred/pay/repository/models/checkout/Cta;

.field public final onPostMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;",
            ">;"
        }
    .end annotation
.end field

.field final onRelationshipValidationResult:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cred/pay/repository/models/checkout/Widget$onPostMessage;

    invoke-direct {v0}, Lcom/cred/pay/repository/models/checkout/Widget$onPostMessage;-><init>()V

    sput-object v0, Lcom/cred/pay/repository/models/checkout/Widget;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/cred/pay/repository/models/checkout/Cta;Ljava/lang/Integer;Ljava/util/List;Lcom/cred/pay/repository/models/Status;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "id"
        .end annotation
    .end param
    .param p2    # Lcom/cred/pay/repository/models/checkout/Cta;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "cta"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "default_selection"
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "instruments"
        .end annotation
    .end param
    .param p5    # Lcom/cred/pay/repository/models/Status;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "status"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "title"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "template"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/cred/pay/repository/models/checkout/Cta;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;",
            ">;",
            "Lcom/cred/pay/repository/models/Status;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cred/pay/repository/models/checkout/Widget;->extraCallback:Ljava/lang/String;

    iput-object p2, p0, Lcom/cred/pay/repository/models/checkout/Widget;->onNavigationEvent:Lcom/cred/pay/repository/models/checkout/Cta;

    iput-object p3, p0, Lcom/cred/pay/repository/models/checkout/Widget;->ICustomTabsCallback:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/cred/pay/repository/models/checkout/Widget;->onPostMessage:Ljava/util/List;

    iput-object p5, p0, Lcom/cred/pay/repository/models/checkout/Widget;->onMessageChannelReady:Lcom/cred/pay/repository/models/Status;

    iput-object p6, p0, Lcom/cred/pay/repository/models/checkout/Widget;->asInterface:Ljava/lang/String;

    iput-object p7, p0, Lcom/cred/pay/repository/models/checkout/Widget;->onRelationshipValidationResult:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Lcom/cred/pay/repository/models/checkout/Cta;Ljava/lang/Integer;Ljava/util/List;Lcom/cred/pay/repository/models/Status;Ljava/lang/String;Ljava/lang/String;)Lcom/cred/pay/repository/models/checkout/Widget;
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "id"
        .end annotation
    .end param
    .param p2    # Lcom/cred/pay/repository/models/checkout/Cta;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "cta"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "default_selection"
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "instruments"
        .end annotation
    .end param
    .param p5    # Lcom/cred/pay/repository/models/Status;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "status"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "title"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "template"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/cred/pay/repository/models/checkout/Cta;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;",
            ">;",
            "Lcom/cred/pay/repository/models/Status;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cred/pay/repository/models/checkout/Widget;"
        }
    .end annotation

    new-instance v8, Lcom/cred/pay/repository/models/checkout/Widget;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/cred/pay/repository/models/checkout/Widget;-><init>(Ljava/lang/String;Lcom/cred/pay/repository/models/checkout/Cta;Ljava/lang/Integer;Ljava/util/List;Lcom/cred/pay/repository/models/Status;Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/cred/pay/repository/models/checkout/Widget;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/cred/pay/repository/models/checkout/Widget;

    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/Widget;->extraCallback:Ljava/lang/String;

    iget-object v1, p1, Lcom/cred/pay/repository/models/checkout/Widget;->extraCallback:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/Widget;->onNavigationEvent:Lcom/cred/pay/repository/models/checkout/Cta;

    iget-object v1, p1, Lcom/cred/pay/repository/models/checkout/Widget;->onNavigationEvent:Lcom/cred/pay/repository/models/checkout/Cta;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/Widget;->ICustomTabsCallback:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/cred/pay/repository/models/checkout/Widget;->ICustomTabsCallback:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/Widget;->onPostMessage:Ljava/util/List;

    iget-object v1, p1, Lcom/cred/pay/repository/models/checkout/Widget;->onPostMessage:Ljava/util/List;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/Widget;->onMessageChannelReady:Lcom/cred/pay/repository/models/Status;

    iget-object v1, p1, Lcom/cred/pay/repository/models/checkout/Widget;->onMessageChannelReady:Lcom/cred/pay/repository/models/Status;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/Widget;->asInterface:Ljava/lang/String;

    iget-object v1, p1, Lcom/cred/pay/repository/models/checkout/Widget;->asInterface:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/Widget;->onRelationshipValidationResult:Ljava/lang/String;

    iget-object p1, p1, Lcom/cred/pay/repository/models/checkout/Widget;->onRelationshipValidationResult:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/Widget;->extraCallback:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cred/pay/repository/models/checkout/Widget;->onNavigationEvent:Lcom/cred/pay/repository/models/checkout/Cta;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cred/pay/repository/models/checkout/Widget;->ICustomTabsCallback:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cred/pay/repository/models/checkout/Widget;->onPostMessage:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cred/pay/repository/models/checkout/Widget;->onMessageChannelReady:Lcom/cred/pay/repository/models/Status;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cred/pay/repository/models/checkout/Widget;->asInterface:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cred/pay/repository/models/checkout/Widget;->onRelationshipValidationResult:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_6
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Widget(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cred/pay/repository/models/checkout/Widget;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cred/pay/repository/models/checkout/Widget;->onNavigationEvent:Lcom/cred/pay/repository/models/checkout/Cta;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", defaultSelection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cred/pay/repository/models/checkout/Widget;->ICustomTabsCallback:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", instruments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cred/pay/repository/models/checkout/Widget;->onPostMessage:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cred/pay/repository/models/checkout/Widget;->onMessageChannelReady:Lcom/cred/pay/repository/models/Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cred/pay/repository/models/checkout/Widget;->asInterface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", template="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cred/pay/repository/models/checkout/Widget;->onRelationshipValidationResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cred/pay/repository/models/checkout/Widget;->extraCallback:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cred/pay/repository/models/checkout/Widget;->onNavigationEvent:Lcom/cred/pay/repository/models/checkout/Cta;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object p2, p0, Lcom/cred/pay/repository/models/checkout/Widget;->ICustomTabsCallback:Ljava/lang/Integer;

    if-eqz p2, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object p2, p0, Lcom/cred/pay/repository/models/checkout/Widget;->onPostMessage:Ljava/util/List;

    if-eqz p2, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;

    invoke-interface {v2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_3
    iget-object p2, p0, Lcom/cred/pay/repository/models/checkout/Widget;->onMessageChannelReady:Lcom/cred/pay/repository/models/Status;

    if-eqz p2, :cond_4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    iget-object p2, p0, Lcom/cred/pay/repository/models/checkout/Widget;->asInterface:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cred/pay/repository/models/checkout/Widget;->onRelationshipValidationResult:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
