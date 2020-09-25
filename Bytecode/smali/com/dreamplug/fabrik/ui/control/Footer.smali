.class public final Lcom/dreamplug/fabrik/ui/control/Footer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dreamplug/fabrik/ui/control/Footer$onNavigationEvent;
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
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B7\u0008\u0007\u0012\n\u0008\u0001\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J9\u0010\u0013\u001a\u00020\u00002\n\u0008\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\u0008\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u0015H\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u001cH\u00d6\u0001J\u0019\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0015H\u00d6\u0001R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000c\u00a8\u0006\""
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/control/Footer;",
        "Landroid/os/Parcelable;",
        "text1",
        "Lcom/dreamplug/textformatter/EncodedStringWrapper;",
        "text2",
        "text3",
        "cta1",
        "Lcom/dreamplug/fabrik/ui/nba/helper/Cta;",
        "(Lcom/dreamplug/textformatter/EncodedStringWrapper;Lcom/dreamplug/textformatter/EncodedStringWrapper;Lcom/dreamplug/textformatter/EncodedStringWrapper;Lcom/dreamplug/fabrik/ui/nba/helper/Cta;)V",
        "getCta1",
        "()Lcom/dreamplug/fabrik/ui/nba/helper/Cta;",
        "getText1",
        "()Lcom/dreamplug/textformatter/EncodedStringWrapper;",
        "getText2",
        "getText3",
        "component1",
        "component2",
        "component3",
        "component4",
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
.field private final cta1:Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

.field private final text1:Lo/getTargetScrollPosition;

.field private final text2:Lo/getTargetScrollPosition;

.field private final text3:Lo/getTargetScrollPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dreamplug/fabrik/ui/control/Footer$onNavigationEvent;

    invoke-direct {v0}, Lcom/dreamplug/fabrik/ui/control/Footer$onNavigationEvent;-><init>()V

    sput-object v0, Lcom/dreamplug/fabrik/ui/control/Footer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;Lcom/dreamplug/fabrik/ui/nba/helper/Cta;)V
    .locals 0
    .param p1    # Lo/getTargetScrollPosition;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "text_1"
        .end annotation
    .end param
    .param p2    # Lo/getTargetScrollPosition;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "text_2"
        .end annotation
    .end param
    .param p3    # Lo/getTargetScrollPosition;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "text_3"
        .end annotation
    .end param
    .param p4    # Lcom/dreamplug/fabrik/ui/nba/helper/Cta;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "cta_1"
        .end annotation
    .end param

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/control/Footer;->text1:Lo/getTargetScrollPosition;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/control/Footer;->text2:Lo/getTargetScrollPosition;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/control/Footer;->text3:Lo/getTargetScrollPosition;

    iput-object p4, p0, Lcom/dreamplug/fabrik/ui/control/Footer;->cta1:Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

    return-void
.end method

.method public static synthetic copy$default(Lcom/dreamplug/fabrik/ui/control/Footer;Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;Lcom/dreamplug/fabrik/ui/nba/helper/Cta;ILjava/lang/Object;)Lcom/dreamplug/fabrik/ui/control/Footer;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/control/Footer;->text1:Lo/getTargetScrollPosition;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/control/Footer;->text2:Lo/getTargetScrollPosition;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/dreamplug/fabrik/ui/control/Footer;->text3:Lo/getTargetScrollPosition;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/dreamplug/fabrik/ui/control/Footer;->cta1:Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/dreamplug/fabrik/ui/control/Footer;->copy(Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;Lcom/dreamplug/fabrik/ui/nba/helper/Cta;)Lcom/dreamplug/fabrik/ui/control/Footer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lo/getTargetScrollPosition;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/Footer;->text1:Lo/getTargetScrollPosition;

    return-object v0
.end method

.method public final component2()Lo/getTargetScrollPosition;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/Footer;->text2:Lo/getTargetScrollPosition;

    return-object v0
.end method

.method public final component3()Lo/getTargetScrollPosition;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/Footer;->text3:Lo/getTargetScrollPosition;

    return-object v0
.end method

.method public final component4()Lcom/dreamplug/fabrik/ui/nba/helper/Cta;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/Footer;->cta1:Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

    return-object v0
.end method

.method public final copy(Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;Lcom/dreamplug/fabrik/ui/nba/helper/Cta;)Lcom/dreamplug/fabrik/ui/control/Footer;
    .locals 1
    .param p1    # Lo/getTargetScrollPosition;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "text_1"
        .end annotation
    .end param
    .param p2    # Lo/getTargetScrollPosition;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "text_2"
        .end annotation
    .end param
    .param p3    # Lo/getTargetScrollPosition;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "text_3"
        .end annotation
    .end param
    .param p4    # Lcom/dreamplug/fabrik/ui/nba/helper/Cta;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "cta_1"
        .end annotation
    .end param

    new-instance v0, Lcom/dreamplug/fabrik/ui/control/Footer;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/dreamplug/fabrik/ui/control/Footer;-><init>(Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;Lcom/dreamplug/fabrik/ui/nba/helper/Cta;)V

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

    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/control/Footer;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/fabrik/ui/control/Footer;

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/Footer;->text1:Lo/getTargetScrollPosition;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/control/Footer;->text1:Lo/getTargetScrollPosition;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/Footer;->text2:Lo/getTargetScrollPosition;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/control/Footer;->text2:Lo/getTargetScrollPosition;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/Footer;->text3:Lo/getTargetScrollPosition;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/control/Footer;->text3:Lo/getTargetScrollPosition;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/Footer;->cta1:Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/control/Footer;->cta1:Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

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

.method public final getCta1()Lcom/dreamplug/fabrik/ui/nba/helper/Cta;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/Footer;->cta1:Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

    return-object v0
.end method

.method public final getText1()Lo/getTargetScrollPosition;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/Footer;->text1:Lo/getTargetScrollPosition;

    return-object v0
.end method

.method public final getText2()Lo/getTargetScrollPosition;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/Footer;->text2:Lo/getTargetScrollPosition;

    return-object v0
.end method

.method public final getText3()Lo/getTargetScrollPosition;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/Footer;->text3:Lo/getTargetScrollPosition;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/Footer;->text1:Lo/getTargetScrollPosition;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/control/Footer;->text2:Lo/getTargetScrollPosition;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/control/Footer;->text3:Lo/getTargetScrollPosition;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/control/Footer;->cta1:Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

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

    const-string v1, "Footer(text1="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/control/Footer;->text1:Lo/getTargetScrollPosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", text2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/control/Footer;->text2:Lo/getTargetScrollPosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", text3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/control/Footer;->text3:Lo/getTargetScrollPosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cta1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/control/Footer;->cta1:Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/Footer;->text1:Lo/getTargetScrollPosition;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/Footer;->text2:Lo/getTargetScrollPosition;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/Footer;->text3:Lo/getTargetScrollPosition;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/control/Footer;->cta1:Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

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
