.class public final Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab$extraCallback;
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
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u001b\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001Be\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0001\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0001\u0010\u000b\u001a\u00020\n\u0012\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u0007\u0012\u0008\u0008\u0003\u0010\r\u001a\u00020\u000e\u0012\n\u0008\u0001\u0010\u000f\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0010J\t\u0010\u001f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010 \u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\t\u0010#\u001a\u00020\nH\u00c6\u0003J\t\u0010$\u001a\u00020\nH\u00c6\u0003J\t\u0010%\u001a\u00020\u0007H\u00c6\u0003J\t\u0010&\u001a\u00020\u000eH\u00c6\u0003J\u000b\u0010\'\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003Ji\u0010(\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u00052\n\u0008\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0003\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0003\u0010\t\u001a\u00020\n2\u0008\u0008\u0003\u0010\u000b\u001a\u00020\n2\u0008\u0008\u0003\u0010\u000c\u001a\u00020\u00072\u0008\u0008\u0003\u0010\r\u001a\u00020\u000e2\n\u0008\u0003\u0010\u000f\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001J\t\u0010)\u001a\u00020*H\u00d6\u0001J\u0013\u0010+\u001a\u00020\u000e2\u0008\u0010,\u001a\u0004\u0018\u00010-H\u00d6\u0003J\t\u0010.\u001a\u00020*H\u00d6\u0001J\t\u0010/\u001a\u00020\u0003H\u00d6\u0001J\u0019\u00100\u001a\u0002012\u0006\u00102\u001a\u0002032\u0006\u00104\u001a\u00020*H\u00d6\u0001R\u0011\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0012R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0014R\u0011\u0010\u000c\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0014R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0014R\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u00065"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;",
        "Landroid/os/Parcelable;",
        "slabId",
        "",
        "value",
        "",
        "displayText",
        "Lcom/dreamplug/textformatter/EncodedStringWrapper;",
        "inrText",
        "inrPayable",
        "",
        "currencyAmount",
        "netPayableDisplayText",
        "showSavingText",
        "",
        "savingDisplayText",
        "(Ljava/lang/String;JLcom/dreamplug/textformatter/EncodedStringWrapper;Lcom/dreamplug/textformatter/EncodedStringWrapper;DDLcom/dreamplug/textformatter/EncodedStringWrapper;ZLcom/dreamplug/textformatter/EncodedStringWrapper;)V",
        "getCurrencyAmount",
        "()D",
        "getDisplayText",
        "()Lcom/dreamplug/textformatter/EncodedStringWrapper;",
        "getInrPayable",
        "getInrText",
        "getNetPayableDisplayText",
        "getSavingDisplayText",
        "getShowSavingText",
        "()Z",
        "getSlabId",
        "()Ljava/lang/String;",
        "getValue",
        "()J",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
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

.field public final ICustomTabsCallback$Stub:Z

.field public final asBinder:Lo/getTargetScrollPosition;

.field public final extraCallback:Lo/getTargetScrollPosition;

.field public final onMessageChannelReady:D

.field public final onNavigationEvent:Lo/getTargetScrollPosition;

.field public final onPostMessage:J

.field public final onRelationshipValidationResult:Lo/getTargetScrollPosition;

.field public final onTransact:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab$extraCallback;

    invoke-direct {v0}, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab$extraCallback;-><init>()V

    sput-object v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLo/getTargetScrollPosition;Lo/getTargetScrollPosition;DDLo/getTargetScrollPosition;ZLo/getTargetScrollPosition;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "slab_id"
        .end annotation
    .end param
    .param p2    # J
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "value"
        .end annotation
    .end param
    .param p4    # Lo/getTargetScrollPosition;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "display_text"
        .end annotation
    .end param
    .param p5    # Lo/getTargetScrollPosition;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "inr_text"
        .end annotation
    .end param
    .param p6    # D
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "inr_amount"
        .end annotation
    .end param
    .param p8    # D
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "currency_amount"
        .end annotation
    .end param
    .param p10    # Lo/getTargetScrollPosition;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "net_payable_display_text"
        .end annotation
    .end param
    .param p11    # Z
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "show_saving_text"
        .end annotation
    .end param
    .param p12    # Lo/getTargetScrollPosition;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "saving_display_text"
        .end annotation
    .end param

    const-string/jumbo v0, "slabId"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "netPayableDisplayText"

    invoke-static {p10, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->ICustomTabsCallback:Ljava/lang/String;

    iput-wide p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->onPostMessage:J

    iput-object p4, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->extraCallback:Lo/getTargetScrollPosition;

    iput-object p5, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->onNavigationEvent:Lo/getTargetScrollPosition;

    iput-wide p6, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->onMessageChannelReady:D

    iput-wide p8, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->onTransact:D

    iput-object p10, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->asBinder:Lo/getTargetScrollPosition;

    iput-boolean p11, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->ICustomTabsCallback$Stub:Z

    iput-object p12, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->onRelationshipValidationResult:Lo/getTargetScrollPosition;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JLo/getTargetScrollPosition;Lo/getTargetScrollPosition;DDLo/getTargetScrollPosition;ZLo/getTargetScrollPosition;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 14

    move/from16 v0, p13

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v12, 0x0

    goto :goto_0

    :cond_0
    move/from16 v12, p11

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v13, p12

    .line 46
    invoke-direct/range {v1 .. v13}, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;-><init>(Ljava/lang/String;JLo/getTargetScrollPosition;Lo/getTargetScrollPosition;DDLo/getTargetScrollPosition;ZLo/getTargetScrollPosition;)V

    return-void
.end method


# virtual methods
.method public final copy(Ljava/lang/String;JLo/getTargetScrollPosition;Lo/getTargetScrollPosition;DDLo/getTargetScrollPosition;ZLo/getTargetScrollPosition;)Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;
    .locals 14
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "slab_id"
        .end annotation
    .end param
    .param p2    # J
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "value"
        .end annotation
    .end param
    .param p4    # Lo/getTargetScrollPosition;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "display_text"
        .end annotation
    .end param
    .param p5    # Lo/getTargetScrollPosition;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "inr_text"
        .end annotation
    .end param
    .param p6    # D
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "inr_amount"
        .end annotation
    .end param
    .param p8    # D
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "currency_amount"
        .end annotation
    .end param
    .param p10    # Lo/getTargetScrollPosition;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "net_payable_display_text"
        .end annotation
    .end param
    .param p11    # Z
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "show_saving_text"
        .end annotation
    .end param
    .param p12    # Lo/getTargetScrollPosition;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "saving_display_text"
        .end annotation
    .end param

    const-string/jumbo v0, "slabId"

    move-object v2, p1

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "netPayableDisplayText"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

    move-object v1, v0

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v1 .. v13}, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;-><init>(Ljava/lang/String;JLo/getTargetScrollPosition;Lo/getTargetScrollPosition;DDLo/getTargetScrollPosition;ZLo/getTargetScrollPosition;)V

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->onPostMessage:J

    iget-wide v2, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->onPostMessage:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->extraCallback:Lo/getTargetScrollPosition;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->extraCallback:Lo/getTargetScrollPosition;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->onNavigationEvent:Lo/getTargetScrollPosition;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->onNavigationEvent:Lo/getTargetScrollPosition;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->onMessageChannelReady:D

    iget-wide v2, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->onMessageChannelReady:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->onTransact:D

    iget-wide v2, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->onTransact:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->asBinder:Lo/getTargetScrollPosition;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->asBinder:Lo/getTargetScrollPosition;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->ICustomTabsCallback$Stub:Z

    iget-boolean v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->ICustomTabsCallback$Stub:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->onRelationshipValidationResult:Lo/getTargetScrollPosition;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->onRelationshipValidationResult:Lo/getTargetScrollPosition;

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
    .locals 4

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->onPostMessage:J

    .line 1025
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->extraCallback:Lo/getTargetScrollPosition;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->onNavigationEvent:Lo/getTargetScrollPosition;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->onMessageChannelReady:D

    .line 2025
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->onTransact:D

    .line 3025
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->asBinder:Lo/getTargetScrollPosition;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->ICustomTabsCallback$Stub:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :cond_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->onRelationshipValidationResult:Lo/getTargetScrollPosition;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_5
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StoreSlab(slabId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->onPostMessage:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", displayText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->extraCallback:Lo/getTargetScrollPosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", inrText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->onNavigationEvent:Lo/getTargetScrollPosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", inrPayable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->onMessageChannelReady:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", currencyAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->onTransact:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", netPayableDisplayText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->asBinder:Lo/getTargetScrollPosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", showSavingText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->ICustomTabsCallback$Stub:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", savingDisplayText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->onRelationshipValidationResult:Lo/getTargetScrollPosition;

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

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->onPostMessage:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->extraCallback:Lo/getTargetScrollPosition;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->onNavigationEvent:Lo/getTargetScrollPosition;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-wide v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->onMessageChannelReady:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->onTransact:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->asBinder:Lo/getTargetScrollPosition;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->ICustomTabsCallback$Stub:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->onRelationshipValidationResult:Lo/getTargetScrollPosition;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
