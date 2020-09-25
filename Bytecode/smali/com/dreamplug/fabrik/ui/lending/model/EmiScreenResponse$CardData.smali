.class public final Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CardData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData$onMessageChannelReady;
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
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u001e\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001BU\u0012\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0002\u0010\u000fJ\t\u0010\u001e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u0010\u0010#\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0019J\u000b\u0010$\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u0010\u0010%\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0019Jj\u0010&\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000cH\u00c6\u0001\u00a2\u0006\u0002\u0010\'J\t\u0010(\u001a\u00020\u000cH\u00d6\u0001J\u0013\u0010)\u001a\u00020\u00032\u0008\u0010*\u001a\u0004\u0018\u00010+H\u00d6\u0003J\t\u0010,\u001a\u00020\u000cH\u00d6\u0001J\t\u0010-\u001a\u00020\u0006H\u00d6\u0001J\u0019\u0010.\u001a\u00020/2\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u00020\u000cH\u00d6\u0001R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0013\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0015\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\n\n\u0002\u0010\u001a\u001a\u0004\u0008\u0018\u0010\u0019R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0013R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0017R\u0015\u0010\u000e\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\n\n\u0002\u0010\u001a\u001a\u0004\u0008\u001d\u0010\u0019\u00a8\u00063"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;",
        "Landroid/os/Parcelable;",
        "defaultOne",
        "",
        "recommended",
        "bgCol",
        "",
        "banner",
        "Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Banner;",
        "child_card",
        "Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ChildCard;",
        "id",
        "",
        "identifier_name",
        "version",
        "(ZZLjava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Banner;Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ChildCard;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V",
        "getBanner",
        "()Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Banner;",
        "getBgCol",
        "()Ljava/lang/String;",
        "getChild_card",
        "()Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ChildCard;",
        "getDefaultOne",
        "()Z",
        "getId",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getIdentifier_name",
        "getRecommended",
        "getVersion",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "copy",
        "(ZZLjava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Banner;Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ChildCard;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;",
        "describeContents",
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
.field public final ICustomTabsCallback:Z

.field final asBinder:Ljava/lang/Integer;

.field final asInterface:Ljava/lang/String;

.field public final extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ChildCard;

.field public final onMessageChannelReady:Ljava/lang/String;

.field public final onNavigationEvent:Z

.field public final onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Banner;

.field final onRelationshipValidationResult:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData$onMessageChannelReady;

    invoke-direct {v0}, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData$onMessageChannelReady;-><init>()V

    sput-object v0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Banner;Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ChildCard;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Z
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "is_default"
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "is_recommended"
        .end annotation
    .end param

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->ICustomTabsCallback:Z

    iput-boolean p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->onNavigationEvent:Z

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->onMessageChannelReady:Ljava/lang/String;

    iput-object p4, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Banner;

    iput-object p5, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ChildCard;

    iput-object p6, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->asBinder:Ljava/lang/Integer;

    iput-object p7, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->asInterface:Ljava/lang/String;

    iput-object p8, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->onRelationshipValidationResult:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(ZZLjava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Banner;Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ChildCard;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    and-int/lit8 v0, p9, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    move v3, p1

    :goto_0
    and-int/lit8 v0, p9, 0x2

    if-eqz v0, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    move v4, p2

    :goto_1
    move-object v2, p0

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    .line 146
    invoke-direct/range {v2 .. v10}, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;-><init>(ZZLjava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Banner;Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ChildCard;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final copy(ZZLjava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Banner;Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ChildCard;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;
    .locals 10
    .param p1    # Z
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "is_default"
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "is_recommended"
        .end annotation
    .end param

    new-instance v9, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;

    move-object v0, v9

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;-><init>(ZZLjava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Banner;Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ChildCard;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v9
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;

    iget-boolean v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->ICustomTabsCallback:Z

    iget-boolean v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->ICustomTabsCallback:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->onNavigationEvent:Z

    iget-boolean v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->onNavigationEvent:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->onMessageChannelReady:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Banner;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Banner;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ChildCard;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ChildCard;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->asBinder:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->asBinder:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->asInterface:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->asInterface:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->onRelationshipValidationResult:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->onRelationshipValidationResult:Ljava/lang/Integer;

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

    iget-boolean v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->ICustomTabsCallback:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->onNavigationEvent:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->onMessageChannelReady:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Banner;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ChildCard;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->asBinder:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->asInterface:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->onRelationshipValidationResult:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_7
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CardData(defaultOne="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->ICustomTabsCallback:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", recommended="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->onNavigationEvent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", bgCol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", banner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Banner;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", child_card="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ChildCard;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->asBinder:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", identifier_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->asInterface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->onRelationshipValidationResult:Ljava/lang/Integer;

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

    iget-boolean p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->ICustomTabsCallback:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->onNavigationEvent:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Banner;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ChildCard;

    if-eqz p2, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->asBinder:Ljava/lang/Integer;

    if-eqz p2, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->asInterface:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->onRelationshipValidationResult:Ljava/lang/Integer;

    if-eqz p2, :cond_3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
