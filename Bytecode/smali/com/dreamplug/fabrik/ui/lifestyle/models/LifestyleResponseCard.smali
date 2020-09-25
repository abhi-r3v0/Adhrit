.class public final Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;
.super Lo/StaggeredGridLayoutManager;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard$onNavigationEvent;
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
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008 \n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u00012\u00020\u0002B]\u0012\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0008\u0012\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0001\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\n\u0008\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0002\u0010\u0010J\t\u0010-\u001a\u00020\u0004H\u00c6\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\t\u0010/\u001a\u00020\u0004H\u00c6\u0003J\t\u00100\u001a\u00020\u0008H\u00c6\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u000b\u00103\u001a\u0004\u0018\u00010\rH\u00c6\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\u000fH\u00c6\u0003Jc\u00105\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0003\u001a\u00020\u00042\n\u0008\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00042\u0008\u0008\u0003\u0010\u0007\u001a\u00020\u00082\n\u0008\u0003\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0003\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\u0008\u0003\u0010\u000c\u001a\u0004\u0018\u00010\r2\n\u0008\u0003\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u00c6\u0001J\t\u00106\u001a\u000207H\u00d6\u0001J\u0013\u00108\u001a\u0002092\u0008\u0010:\u001a\u0004\u0018\u00010;H\u00d6\u0003J\t\u0010<\u001a\u000207H\u00d6\u0001J\t\u0010=\u001a\u00020\u0004H\u00d6\u0001J\u0019\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020A2\u0006\u0010B\u001a\u000207H\u00d6\u0001R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0013\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u001b\u0010\u0015\u001a\u00020\u00168FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u0017\u0010\u0018R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0013\u0010\u001d\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u0012R\u001d\u0010\u001f\u001a\u0004\u0018\u00010\n8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010#\u001a\u0004\u0008 \u0010!R\u0013\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010!R\u001d\u0010%\u001a\u0004\u0018\u00010\n8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\'\u0010#\u001a\u0004\u0008&\u0010!R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010!R\u0011\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010\u0012R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010+R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010\u0012\u00a8\u0006C"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;",
        "Landroid/os/Parcelable;",
        "Lcom/dreamplug/utils/list/ListItem;",
        "cardId",
        "",
        "usageId",
        "template",
        "templateProperties",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;",
        "primaryResponseCta",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;",
        "secondaryResponseCta",
        "entity",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;",
        "leaderBoardInnerCard",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/LeaderBoardInnerCard;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;Lcom/dreamplug/fabrik/ui/lifestyle/models/LeaderBoardInnerCard;)V",
        "getCardId",
        "()Ljava/lang/String;",
        "getEntity",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;",
        "id",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/RewardIdentifier;",
        "getId",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/models/RewardIdentifier;",
        "id$delegate",
        "Lkotlin/Lazy;",
        "getLeaderBoardInnerCard",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/models/LeaderBoardInnerCard;",
        "logo",
        "getLogo",
        "primaryCta",
        "getPrimaryCta",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;",
        "primaryCta$delegate",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/TimerDelegate;",
        "getPrimaryResponseCta",
        "secondaryCta",
        "getSecondaryCta",
        "secondaryCta$delegate",
        "getSecondaryResponseCta",
        "getTemplate",
        "getTemplateProperties",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;",
        "getUsageId",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
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

.field public static final synthetic ICustomTabsCallback:[Lo/applyUserOverwrite;


# instance fields
.field public final ICustomTabsCallback$Stub:Ljava/lang/String;

.field public final ICustomTabsService:Lcom/dreamplug/fabrik/ui/lifestyle/models/LeaderBoardInnerCard;

.field public final asBinder:Ljava/lang/String;

.field public final asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;

.field public final extraCallback:Lo/setChildDrawingOrderCallback;

.field final newSession:Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

.field public final onMessageChannelReady:Lo/isSameListener;

.field public final onNavigationEvent:Lo/setChildDrawingOrderCallback;

.field public final onPostMessage:Ljava/lang/String;

.field final onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

.field public final onTransact:Ljava/lang/String;

.field public final warmup:Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    const/4 v1, 0x2

    new-array v1, v1, [Lo/applyUserOverwrite;

    new-instance v2, Lo/access$2900;

    invoke-static {v0}, Lo/applyEmulatorSettings;->ICustomTabsCallback(Ljava/lang/Class;)Lo/viewExistsForQuery;

    move-result-object v3

    const-string v4, "primaryCta"

    const-string v5, "getPrimaryCta()Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;"

    invoke-direct {v2, v3, v4, v5}, Lo/access$2900;-><init>(Lo/getQueryViews;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/applyEmulatorSettings;->onMessageChannelReady(Lo/getConnectionURL;)Lo/applyServerOverwrite;

    move-result-object v2

    check-cast v2, Lo/applyUserOverwrite;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lo/access$2900;

    invoke-static {v0}, Lo/applyEmulatorSettings;->ICustomTabsCallback(Ljava/lang/Class;)Lo/viewExistsForQuery;

    move-result-object v0

    const-string/jumbo v3, "secondaryCta"

    const-string v4, "getSecondaryCta()Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;"

    invoke-direct {v2, v0, v3, v4}, Lo/access$2900;-><init>(Lo/getQueryViews;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/applyEmulatorSettings;->onMessageChannelReady(Lo/getConnectionURL;)Lo/applyServerOverwrite;

    move-result-object v0

    check-cast v0, Lo/applyUserOverwrite;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->ICustomTabsCallback:[Lo/applyUserOverwrite;

    new-instance v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard$onNavigationEvent;

    invoke-direct {v0}, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard$onNavigationEvent;-><init>()V

    sput-object v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;Lcom/dreamplug/fabrik/ui/lifestyle/models/LeaderBoardInnerCard;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "card_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "usage_id"
        .end annotation
    .end param
    .param p4    # Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "template_properties"
        .end annotation
    .end param
    .param p5    # Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "primary_cta"
        .end annotation
    .end param
    .param p6    # Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "secondary_cta"
        .end annotation
    .end param
    .param p7    # Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "entity"
        .end annotation
    .end param
    .param p8    # Lcom/dreamplug/fabrik/ui/lifestyle/models/LeaderBoardInnerCard;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "inner_card"
        .end annotation
    .end param

    const-string v0, "cardId"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "template"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "templateProperties"

    invoke-static {p4, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Lo/StaggeredGridLayoutManager;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->asBinder:Ljava/lang/String;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->ICustomTabsCallback$Stub:Ljava/lang/String;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onTransact:Ljava/lang/String;

    iput-object p4, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;

    iput-object p5, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    iput-object p6, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->newSession:Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    iput-object p7, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->warmup:Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;

    iput-object p8, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->ICustomTabsService:Lcom/dreamplug/fabrik/ui/lifestyle/models/LeaderBoardInnerCard;

    .line 43
    new-instance p1, Lo/setChildDrawingOrderCallback;

    .line 2162
    iget-object p2, p4, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer;

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 2280
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/TimerData;

    if-eqz p2, :cond_0

    .line 2292
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/TimerData;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    goto :goto_0

    :cond_0
    move-object p2, p3

    .line 46
    :goto_0
    iget-object p4, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;

    .line 3162
    iget-object p4, p4, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer;

    if-eqz p4, :cond_1

    .line 3281
    iget-object p4, p4, Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/TimerData;

    if-eqz p4, :cond_1

    .line 3292
    iget-object p4, p4, Lcom/dreamplug/fabrik/ui/lifestyle/models/TimerData;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    goto :goto_1

    :cond_1
    move-object p4, p3

    .line 43
    :goto_1
    invoke-direct {p1, p5, p2, p4}, Lo/setChildDrawingOrderCallback;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->extraCallback:Lo/setChildDrawingOrderCallback;

    .line 47
    new-instance p1, Lo/setChildDrawingOrderCallback;

    .line 48
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->newSession:Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    .line 49
    iget-object p4, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;

    .line 4162
    iget-object p4, p4, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer;

    if-eqz p4, :cond_2

    .line 4280
    iget-object p4, p4, Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/TimerData;

    if-eqz p4, :cond_2

    .line 4294
    iget-object p4, p4, Lcom/dreamplug/fabrik/ui/lifestyle/models/TimerData;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    goto :goto_2

    :cond_2
    move-object p4, p3

    .line 50
    :goto_2
    iget-object p5, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;

    .line 5162
    iget-object p5, p5, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer;

    if-eqz p5, :cond_3

    .line 5281
    iget-object p5, p5, Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/TimerData;

    if-eqz p5, :cond_3

    .line 5294
    iget-object p3, p5, Lcom/dreamplug/fabrik/ui/lifestyle/models/TimerData;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    .line 47
    :cond_3
    invoke-direct {p1, p2, p4, p3}, Lo/setChildDrawingOrderCallback;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onNavigationEvent:Lo/setChildDrawingOrderCallback;

    .line 51
    new-instance p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard$extraCallback;

    invoke-direct {p1, p0}, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard$extraCallback;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;)V

    check-cast p1, Lo/getServerTime;

    const-string p2, "initializer"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6021
    new-instance p2, Lo/fromChildMerge;

    invoke-direct {p2, p1}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast p2, Lo/isSameListener;

    .line 51
    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onMessageChannelReady:Lo/isSameListener;

    .line 54
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;

    .line 6150
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;->onNavigationEvent:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onPostMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;
    .locals 3

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->extraCallback:Lo/setChildDrawingOrderCallback;

    sget-object v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->ICustomTabsCallback:[Lo/applyUserOverwrite;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "property"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1033
    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;

    if-eqz v1, :cond_0

    .line 1162
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1014
    :goto_0
    invoke-virtual {v0, v1}, Lo/setChildDrawingOrderCallback;->ICustomTabsCallback(Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;Lcom/dreamplug/fabrik/ui/lifestyle/models/LeaderBoardInnerCard;)Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "card_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "usage_id"
        .end annotation
    .end param
    .param p4    # Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "template_properties"
        .end annotation
    .end param
    .param p5    # Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "primary_cta"
        .end annotation
    .end param
    .param p6    # Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "secondary_cta"
        .end annotation
    .end param
    .param p7    # Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "entity"
        .end annotation
    .end param
    .param p8    # Lcom/dreamplug/fabrik/ui/lifestyle/models/LeaderBoardInnerCard;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "inner_card"
        .end annotation
    .end param

    const-string v0, "cardId"

    move-object v2, p1

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "template"

    move-object v4, p3

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "templateProperties"

    move-object v5, p4

    invoke-static {p4, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    move-object v1, v0

    move-object v3, p2

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;Lcom/dreamplug/fabrik/ui/lifestyle/models/LeaderBoardInnerCard;)V

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

    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->asBinder:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->asBinder:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->ICustomTabsCallback$Stub:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->ICustomTabsCallback$Stub:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onTransact:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onTransact:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->newSession:Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->newSession:Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->warmup:Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->warmup:Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->ICustomTabsService:Lcom/dreamplug/fabrik/ui/lifestyle/models/LeaderBoardInnerCard;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->ICustomTabsService:Lcom/dreamplug/fabrik/ui/lifestyle/models/LeaderBoardInnerCard;

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

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->asBinder:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->ICustomTabsCallback$Stub:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onTransact:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->newSession:Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->warmup:Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->ICustomTabsService:Lcom/dreamplug/fabrik/ui/lifestyle/models/LeaderBoardInnerCard;

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

    const-string v1, "LifestyleResponseCard(cardId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->asBinder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", usageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->ICustomTabsCallback$Stub:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", template="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onTransact:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", templateProperties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", primaryResponseCta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", secondaryResponseCta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->newSession:Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", entity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->warmup:Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", leaderBoardInnerCard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->ICustomTabsService:Lcom/dreamplug/fabrik/ui/lifestyle/models/LeaderBoardInnerCard;

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

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->asBinder:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->ICustomTabsCallback$Stub:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onTransact:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->newSession:Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    if-eqz p2, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->warmup:Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;

    if-eqz p2, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->ICustomTabsService:Lcom/dreamplug/fabrik/ui/lifestyle/models/LeaderBoardInnerCard;

    if-eqz p2, :cond_3

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    return-void

    :cond_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
