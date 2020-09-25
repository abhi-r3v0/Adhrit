.class public final Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard$onNavigationEvent;
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
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u001b\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B]\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0001\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0001\u0010\n\u001a\u00020\u000b\u0012\n\u0008\u0003\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\n\u0008\u0001\u0010\u000e\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0002\u0010\u000fJ\t\u0010\u001e\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010!\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\"\u001a\u00020\tH\u00c6\u0003J\t\u0010#\u001a\u00020\u000bH\u00c6\u0003J\u0010\u0010$\u001a\u0004\u0018\u00010\rH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0013J\u0010\u0010%\u001a\u0004\u0018\u00010\rH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0013Jf\u0010&\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u00032\n\u0008\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0003\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0003\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0003\u0010\n\u001a\u00020\u000b2\n\u0008\u0003\u0010\u000c\u001a\u0004\u0018\u00010\r2\n\u0008\u0003\u0010\u000e\u001a\u0004\u0018\u00010\rH\u00c6\u0001\u00a2\u0006\u0002\u0010\'J\t\u0010(\u001a\u00020)H\u00d6\u0001J\u0013\u0010*\u001a\u00020\r2\u0008\u0010+\u001a\u0004\u0018\u00010,H\u00d6\u0003J\t\u0010-\u001a\u00020)H\u00d6\u0001J\t\u0010.\u001a\u00020\u0003H\u00d6\u0001J\u0019\u0010/\u001a\u0002002\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u00020)H\u00d6\u0001R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0015\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\n\n\u0002\u0010\u0014\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0015\u0010\u000e\u001a\u0004\u0018\u00010\r\u00a2\u0006\n\n\u0002\u0010\u0014\u001a\u0004\u0008\u0019\u0010\u0013R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0016R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0016\u00a8\u00064"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;",
        "Landroid/os/Parcelable;",
        "gameId",
        "",
        "targetFarmId",
        "text1",
        "templateProperties",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplatePropertiesMachine;",
        "currency",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Currency;",
        "meta",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Meta;",
        "forceOpenDetailFarm",
        "",
        "showCurrencyBalance",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplatePropertiesMachine;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Currency;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Meta;Ljava/lang/Boolean;Ljava/lang/Boolean;)V",
        "getCurrency",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Currency;",
        "getForceOpenDetailFarm",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "getGameId",
        "()Ljava/lang/String;",
        "getMeta",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Meta;",
        "getShowCurrencyBalance",
        "getTargetFarmId",
        "getTemplateProperties",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplatePropertiesMachine;",
        "getText1",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplatePropertiesMachine;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Currency;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Meta;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;",
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
.field public final ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplatePropertiesMachine;

.field public final ICustomTabsCallback$Stub:Ljava/lang/Boolean;

.field public final extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Currency;

.field public final onMessageChannelReady:Ljava/lang/String;

.field public final onNavigationEvent:Ljava/lang/String;

.field public final onPostMessage:Ljava/lang/String;

.field public final onRelationshipValidationResult:Ljava/lang/Boolean;

.field public final onTransact:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Meta;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard$onNavigationEvent;

    invoke-direct {v0}, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard$onNavigationEvent;-><init>()V

    sput-object v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplatePropertiesMachine;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Currency;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Meta;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "game_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "target_farm_id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "text1"
        .end annotation
    .end param
    .param p4    # Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplatePropertiesMachine;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "template_properties"
        .end annotation
    .end param
    .param p5    # Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Currency;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "currency"
        .end annotation
    .end param
    .param p6    # Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Meta;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "meta"
        .end annotation
    .end param
    .param p7    # Ljava/lang/Boolean;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "force_open_detail_farm"
        .end annotation
    .end param
    .param p8    # Ljava/lang/Boolean;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "show_currency_balance"
        .end annotation
    .end param

    const-string v0, "gameId"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "templateProperties"

    invoke-static {p4, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currency"

    invoke-static {p5, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "meta"

    invoke-static {p6, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;->onMessageChannelReady:Ljava/lang/String;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;->onNavigationEvent:Ljava/lang/String;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;->onPostMessage:Ljava/lang/String;

    iput-object p4, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplatePropertiesMachine;

    iput-object p5, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Currency;

    iput-object p6, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;->onTransact:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Meta;

    iput-object p7, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;->ICustomTabsCallback$Stub:Ljava/lang/Boolean;

    iput-object p8, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;->onRelationshipValidationResult:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplatePropertiesMachine;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Currency;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Meta;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 v0, p9, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v8, v0

    goto :goto_0

    :cond_0
    move-object/from16 v8, p7

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p8

    .line 34
    invoke-direct/range {v1 .. v9}, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplatePropertiesMachine;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Currency;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Meta;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplatePropertiesMachine;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Currency;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Meta;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "game_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "target_farm_id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "text1"
        .end annotation
    .end param
    .param p4    # Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplatePropertiesMachine;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "template_properties"
        .end annotation
    .end param
    .param p5    # Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Currency;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "currency"
        .end annotation
    .end param
    .param p6    # Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Meta;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "meta"
        .end annotation
    .end param
    .param p7    # Ljava/lang/Boolean;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "force_open_detail_farm"
        .end annotation
    .end param
    .param p8    # Ljava/lang/Boolean;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "show_currency_balance"
        .end annotation
    .end param

    const-string v0, "gameId"

    move-object v2, p1

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "templateProperties"

    move-object v5, p4

    invoke-static {p4, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currency"

    move-object v6, p5

    invoke-static {p5, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "meta"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;

    move-object v1, v0

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplatePropertiesMachine;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Currency;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Meta;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

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

    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;->onMessageChannelReady:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;->onNavigationEvent:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;->onNavigationEvent:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;->onPostMessage:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;->onPostMessage:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplatePropertiesMachine;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplatePropertiesMachine;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Currency;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Currency;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;->onTransact:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Meta;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;->onTransact:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Meta;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;->ICustomTabsCallback$Stub:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;->ICustomTabsCallback$Stub:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;->onRelationshipValidationResult:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;->onRelationshipValidationResult:Ljava/lang/Boolean;

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

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;->onMessageChannelReady:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;->onNavigationEvent:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;->onPostMessage:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplatePropertiesMachine;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Currency;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;->onTransact:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Meta;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;->ICustomTabsCallback$Stub:Ljava/lang/Boolean;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;->onRelationshipValidationResult:Ljava/lang/Boolean;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_7
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WinLuckyNumberCard(gameId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", targetFarmId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", text1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", templateProperties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplatePropertiesMachine;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Currency;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", meta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;->onTransact:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Meta;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", forceOpenDetailFarm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;->ICustomTabsCallback$Stub:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", showCurrencyBalance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;->onRelationshipValidationResult:Ljava/lang/Boolean;

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

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;->onPostMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplatePropertiesMachine;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Currency;

    invoke-interface {p2, p1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;->onTransact:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Meta;

    invoke-interface {p2, p1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;->ICustomTabsCallback$Stub:Ljava/lang/Boolean;

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;->onRelationshipValidationResult:Ljava/lang/Boolean;

    if-eqz p2, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
