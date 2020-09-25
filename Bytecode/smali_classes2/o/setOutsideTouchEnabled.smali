.class public final Lo/setOutsideTouchEnabled;
.super Lo/shareText;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# static fields
.field private static final ICustomTabsCallback:I

.field private static final extraCallback:I

.field private static final onMessageChannelReady:I

.field private static final onNavigationEvent:I


# instance fields
.field private final ICustomTabsCallback$Stub:I

.field private final ICustomTabsService:Z

.field private final asBinder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/enableDarkMode;",
            ">;"
        }
    .end annotation
.end field

.field private final asInterface:I

.field private final newSession:I

.field private final onPostMessage:Ljava/lang/String;

.field private final onRelationshipValidationResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/TicketMachineFragment$finalAnim$$inlined$executeOnResume$1;",
            ">;"
        }
    .end annotation
.end field

.field private final onTransact:I

.field private final warmup:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xc

    const/16 v1, 0xae

    const/16 v2, 0xce

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lo/setOutsideTouchEnabled;->extraCallback:I

    const/16 v0, 0xcc

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lo/setOutsideTouchEnabled;->onNavigationEvent:I

    sput v0, Lo/setOutsideTouchEnabled;->ICustomTabsCallback:I

    sget v0, Lo/setOutsideTouchEnabled;->extraCallback:I

    sput v0, Lo/setOutsideTouchEnabled;->onMessageChannelReady:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;IIZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lo/TicketMachineFragment$finalAnim$$inlined$executeOnResume$1;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "IIZ)V"
        }
    .end annotation

    invoke-direct {p0}, Lo/shareText;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/setOutsideTouchEnabled;->onRelationshipValidationResult:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/setOutsideTouchEnabled;->asBinder:Ljava/util/List;

    iput-object p1, p0, Lo/setOutsideTouchEnabled;->onPostMessage:Ljava/lang/String;

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/TicketMachineFragment$finalAnim$$inlined$executeOnResume$1;

    iget-object v1, p0, Lo/setOutsideTouchEnabled;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lo/setOutsideTouchEnabled;->asBinder:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    sget p1, Lo/setOutsideTouchEnabled;->ICustomTabsCallback:I

    :goto_1
    iput p1, p0, Lo/setOutsideTouchEnabled;->asInterface:I

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    :cond_2
    sget p1, Lo/setOutsideTouchEnabled;->onMessageChannelReady:I

    :goto_2
    iput p1, p0, Lo/setOutsideTouchEnabled;->onTransact:I

    if-eqz p5, :cond_3

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_3

    :cond_3
    const/16 p1, 0xc

    :goto_3
    iput p1, p0, Lo/setOutsideTouchEnabled;->ICustomTabsCallback$Stub:I

    iput p6, p0, Lo/setOutsideTouchEnabled;->newSession:I

    iput p7, p0, Lo/setOutsideTouchEnabled;->warmup:I

    iput-boolean p8, p0, Lo/setOutsideTouchEnabled;->ICustomTabsService:Z

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/TicketMachineFragment$finalAnim$$inlined$executeOnResume$1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo/setOutsideTouchEnabled;->onRelationshipValidationResult:Ljava/util/List;

    return-object v0
.end method

.method public final ICustomTabsCallback$Stub()I
    .locals 1

    iget v0, p0, Lo/setOutsideTouchEnabled;->ICustomTabsCallback$Stub:I

    return v0
.end method

.method public final asInterface()Z
    .locals 1

    iget-boolean v0, p0, Lo/setOutsideTouchEnabled;->ICustomTabsService:Z

    return v0
.end method

.method public final extraCallback()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/setOutsideTouchEnabled;->onPostMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final onMessageChannelReady()I
    .locals 1

    iget v0, p0, Lo/setOutsideTouchEnabled;->onTransact:I

    return v0
.end method

.method public final onNavigationEvent()I
    .locals 1

    iget v0, p0, Lo/setOutsideTouchEnabled;->asInterface:I

    return v0
.end method

.method public final onPostMessage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/enableDarkMode;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo/setOutsideTouchEnabled;->asBinder:Ljava/util/List;

    return-object v0
.end method

.method public final onRelationshipValidationResult()I
    .locals 1

    iget v0, p0, Lo/setOutsideTouchEnabled;->newSession:I

    return v0
.end method

.method public final onTransact()I
    .locals 1

    iget v0, p0, Lo/setOutsideTouchEnabled;->warmup:I

    return v0
.end method
