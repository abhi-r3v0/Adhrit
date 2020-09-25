.class final Lo/MenuItemHoverListener$onRelationshipValidationResult;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/MenuItemHoverListener;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Ljava/util/List<",
        "+",
        "Lcom/dreamplug/utils/model/CommonBankListResponse$BanksDetail;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/dreamplug/utils/model/CommonBankListResponse$BanksDetail;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onPostMessage:Lo/MenuItemHoverListener$onRelationshipValidationResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/MenuItemHoverListener$onRelationshipValidationResult;

    invoke-direct {v0}, Lo/MenuItemHoverListener$onRelationshipValidationResult;-><init>()V

    sput-object v0, Lo/MenuItemHoverListener$onRelationshipValidationResult;->onPostMessage:Lo/MenuItemHoverListener$onRelationshipValidationResult;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 3

    .line 1059
    sget-object v0, Lo/onChangeStarting;->onPostMessage:Lo/onChangeStarting;

    invoke-static {}, Lo/onChangeStarting;->ICustomTabsCallback()Lcom/dreamplug/upi/UpiData;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/dreamplug/upi/UpiData;->getUpiBankListLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 1321
    sget-object v2, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v2, :cond_0

    move-object v1, v0

    .line 1059
    :cond_0
    check-cast v1, Ljava/util/List;

    :cond_1
    return-object v1
.end method
