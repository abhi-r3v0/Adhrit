.class final Lo/DeviceFingerPrint;
.super Ljava/lang/Object;

# interfaces
.implements Lo/getText3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getText3<",
        "Ljava/util/List<",
        "Lo/TicketMachineFragment$finalAnim$$inlined$executeOnResume$1;",
        ">;",
        "Lo/setOutsideTouchEnabled;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic ICustomTabsCallback:I

.field private final synthetic asInterface:I

.field private final synthetic extraCallback:I

.field private final synthetic onMessageChannelReady:Ljava/lang/Integer;

.field private final synthetic onNavigationEvent:Ljava/lang/Integer;

.field private final synthetic onPostMessage:Ljava/lang/String;

.field private final synthetic onRelationshipValidationResult:Z

.field private final synthetic onTransact:I


# direct methods
.method constructor <init>(Lo/CarrierFingerPrint;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;IIIIZ)V
    .locals 0

    iput-object p2, p0, Lo/DeviceFingerPrint;->onPostMessage:Ljava/lang/String;

    iput-object p3, p0, Lo/DeviceFingerPrint;->onMessageChannelReady:Ljava/lang/Integer;

    iput-object p4, p0, Lo/DeviceFingerPrint;->onNavigationEvent:Ljava/lang/Integer;

    iput p5, p0, Lo/DeviceFingerPrint;->ICustomTabsCallback:I

    iput p6, p0, Lo/DeviceFingerPrint;->extraCallback:I

    iput p7, p0, Lo/DeviceFingerPrint;->asInterface:I

    iput p8, p0, Lo/DeviceFingerPrint;->onTransact:I

    iput-boolean p9, p0, Lo/DeviceFingerPrint;->onRelationshipValidationResult:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    move-object v2, p1

    check-cast v2, Ljava/util/List;

    const/4 p1, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v9, Lo/setOutsideTouchEnabled;

    iget-object v1, p0, Lo/DeviceFingerPrint;->onPostMessage:Ljava/lang/String;

    iget-object v3, p0, Lo/DeviceFingerPrint;->onMessageChannelReady:Ljava/lang/Integer;

    iget-object v4, p0, Lo/DeviceFingerPrint;->onNavigationEvent:Ljava/lang/Integer;

    iget v0, p0, Lo/DeviceFingerPrint;->ICustomTabsCallback:I

    if-lez v0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_1
    move-object v5, p1

    iget p1, p0, Lo/DeviceFingerPrint;->extraCallback:I

    iget v0, p0, Lo/DeviceFingerPrint;->asInterface:I

    add-int v6, p1, v0

    iget v7, p0, Lo/DeviceFingerPrint;->onTransact:I

    iget-boolean v8, p0, Lo/DeviceFingerPrint;->onRelationshipValidationResult:Z

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lo/setOutsideTouchEnabled;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;IIZ)V

    return-object v9

    :cond_2
    :goto_0
    return-object p1
.end method
