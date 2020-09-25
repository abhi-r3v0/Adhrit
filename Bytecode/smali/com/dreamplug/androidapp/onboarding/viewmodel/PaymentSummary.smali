.class public final Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;
.super Lo/StaggeredGridLayoutManager;
.source ""


# annotations
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
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008 \n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u007f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000b\u0012\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\u0008\u0001\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\u0008\u0001\u0010\u0011\u001a\u0004\u0018\u00010\u0008\u0012\u0010\u0008\u0001\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u0014J\u000b\u0010&\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0011\u0010\'\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u000bH\u00c6\u0003J\u0010\u0010(\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010#J\u0010\u0010)\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010#J\u0010\u0010*\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0016J\u0010\u0010+\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0016J\u0011\u0010,\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000bH\u00c6\u0003J\u000b\u0010-\u001a\u0004\u0018\u00010\u000eH\u00c6\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\u0010H\u00c6\u0003J\u0010\u0010/\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0016J\u0092\u0001\u00100\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0003\u0010\t\u001a\u0004\u0018\u00010\u00082\u0010\u0008\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000b2\n\u0008\u0003\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0003\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\u0008\u0003\u0010\u0011\u001a\u0004\u0018\u00010\u00082\u0010\u0008\u0003\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u000bH\u00c6\u0001\u00a2\u0006\u0002\u00101J\u0013\u00102\u001a\u00020\u00082\u0008\u00103\u001a\u0004\u0018\u000104H\u00d6\u0003J\t\u00105\u001a\u000206H\u00d6\u0001J\t\u00107\u001a\u00020\u0003H\u00d6\u0001R\u0015\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\n\n\u0002\u0010\u0017\u001a\u0004\u0008\u0015\u0010\u0016R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0015\u0010\u0011\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\n\n\u0002\u0010\u0017\u001a\u0004\u0008\u0011\u0010\u0016R\u0015\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\n\n\u0002\u0010\u0017\u001a\u0004\u0008\u001a\u0010\u0016R\u0019\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u0019\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u001cR\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010$\u001a\u0004\u0008\"\u0010#R\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010$\u001a\u0004\u0008%\u0010#\u00a8\u00068"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;",
        "Lcom/dreamplug/utils/list/ListItem;",
        "id",
        "",
        "total_amount",
        "",
        "total_payment_received",
        "payment_pending",
        "",
        "detailsAvailable",
        "recent_orders",
        "",
        "Lcom/dreamplug/androidapp/onboarding/viewmodel/RecentOrder;",
        "statementSummary",
        "Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;",
        "statementPeriod",
        "Lcom/dreamplug/androidapp/onboarding/viewmodel/StatementPeriod;",
        "isStatementSupported",
        "statementSource",
        "Lcom/dreamplug/androidapp/onboarding/viewmodel/StatementSource;",
        "(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;Lcom/dreamplug/androidapp/onboarding/viewmodel/StatementPeriod;Ljava/lang/Boolean;Ljava/util/List;)V",
        "getDetailsAvailable",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "getId",
        "()Ljava/lang/String;",
        "getPayment_pending",
        "getRecent_orders",
        "()Ljava/util/List;",
        "getStatementPeriod",
        "()Lcom/dreamplug/androidapp/onboarding/viewmodel/StatementPeriod;",
        "getStatementSource",
        "getStatementSummary",
        "()Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;",
        "getTotal_amount",
        "()Ljava/lang/Double;",
        "Ljava/lang/Double;",
        "getTotal_payment_received",
        "component1",
        "component10",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;Lcom/dreamplug/androidapp/onboarding/viewmodel/StatementPeriod;Ljava/lang/Boolean;Ljava/util/List;)Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Ljava/lang/Double;

.field final ICustomTabsCallback$Stub:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/onboarding/viewmodel/StatementSource;",
            ">;"
        }
    .end annotation
.end field

.field public final asBinder:Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;

.field final asInterface:Lcom/dreamplug/androidapp/onboarding/viewmodel/StatementPeriod;

.field final extraCallback:Ljava/lang/Boolean;

.field public final onMessageChannelReady:Ljava/lang/Double;

.field final onNavigationEvent:Ljava/lang/String;

.field public final onPostMessage:Ljava/lang/Boolean;

.field final onRelationshipValidationResult:Ljava/lang/Boolean;

.field final onTransact:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/onboarding/viewmodel/RecentOrder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;Lcom/dreamplug/androidapp/onboarding/viewmodel/StatementPeriod;Ljava/lang/Boolean;Ljava/util/List;)V
    .locals 0
    .param p5    # Ljava/lang/Boolean;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "details_available"
        .end annotation
    .end param
    .param p7    # Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "statement_summary"
        .end annotation
    .end param
    .param p8    # Lcom/dreamplug/androidapp/onboarding/viewmodel/StatementPeriod;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "period"
        .end annotation
    .end param
    .param p9    # Ljava/lang/Boolean;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "is_statement_supported"
        .end annotation
    .end param
    .param p10    # Ljava/util/List;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "statement_sources"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/onboarding/viewmodel/RecentOrder;",
            ">;",
            "Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;",
            "Lcom/dreamplug/androidapp/onboarding/viewmodel/StatementPeriod;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/onboarding/viewmodel/StatementSource;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Lo/StaggeredGridLayoutManager;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->onNavigationEvent:Ljava/lang/String;

    iput-object p2, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->ICustomTabsCallback:Ljava/lang/Double;

    iput-object p3, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->onMessageChannelReady:Ljava/lang/Double;

    iput-object p4, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->onPostMessage:Ljava/lang/Boolean;

    iput-object p5, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->extraCallback:Ljava/lang/Boolean;

    iput-object p6, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->onTransact:Ljava/util/List;

    iput-object p7, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->asBinder:Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;

    iput-object p8, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->asInterface:Lcom/dreamplug/androidapp/onboarding/viewmodel/StatementPeriod;

    iput-object p9, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->onRelationshipValidationResult:Ljava/lang/Boolean;

    iput-object p10, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->ICustomTabsCallback$Stub:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;Lcom/dreamplug/androidapp/onboarding/viewmodel/StatementPeriod;Ljava/lang/Boolean;Ljava/util/List;)Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;
    .locals 12
    .param p5    # Ljava/lang/Boolean;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "details_available"
        .end annotation
    .end param
    .param p7    # Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "statement_summary"
        .end annotation
    .end param
    .param p8    # Lcom/dreamplug/androidapp/onboarding/viewmodel/StatementPeriod;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "period"
        .end annotation
    .end param
    .param p9    # Ljava/lang/Boolean;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "is_statement_supported"
        .end annotation
    .end param
    .param p10    # Ljava/util/List;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "statement_sources"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/onboarding/viewmodel/RecentOrder;",
            ">;",
            "Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;",
            "Lcom/dreamplug/androidapp/onboarding/viewmodel/StatementPeriod;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/onboarding/viewmodel/StatementSource;",
            ">;)",
            "Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;"
        }
    .end annotation

    new-instance v11, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;

    move-object v0, v11

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;Lcom/dreamplug/androidapp/onboarding/viewmodel/StatementPeriod;Ljava/lang/Boolean;Ljava/util/List;)V

    return-object v11
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;

    iget-object v0, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->onNavigationEvent:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->onNavigationEvent:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->ICustomTabsCallback:Ljava/lang/Double;

    iget-object v1, p1, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->ICustomTabsCallback:Ljava/lang/Double;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->onMessageChannelReady:Ljava/lang/Double;

    iget-object v1, p1, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->onMessageChannelReady:Ljava/lang/Double;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->onPostMessage:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->onPostMessage:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->extraCallback:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->extraCallback:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->onTransact:Ljava/util/List;

    iget-object v1, p1, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->onTransact:Ljava/util/List;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->asBinder:Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;

    iget-object v1, p1, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->asBinder:Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->asInterface:Lcom/dreamplug/androidapp/onboarding/viewmodel/StatementPeriod;

    iget-object v1, p1, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->asInterface:Lcom/dreamplug/androidapp/onboarding/viewmodel/StatementPeriod;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->onRelationshipValidationResult:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->onRelationshipValidationResult:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->ICustomTabsCallback$Stub:Ljava/util/List;

    iget-object p1, p1, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->ICustomTabsCallback$Stub:Ljava/util/List;

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

    iget-object v0, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->onNavigationEvent:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->ICustomTabsCallback:Ljava/lang/Double;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->onMessageChannelReady:Ljava/lang/Double;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->onPostMessage:Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->extraCallback:Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->onTransact:Ljava/util/List;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->asBinder:Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->asInterface:Lcom/dreamplug/androidapp/onboarding/viewmodel/StatementPeriod;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->onRelationshipValidationResult:Ljava/lang/Boolean;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->ICustomTabsCallback$Stub:Ljava/util/List;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_9
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PaymentSummary(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", total_amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->ICustomTabsCallback:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", total_payment_received="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->onMessageChannelReady:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", payment_pending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->onPostMessage:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", detailsAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->extraCallback:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", recent_orders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->onTransact:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", statementSummary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->asBinder:Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", statementPeriod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->asInterface:Lcom/dreamplug/androidapp/onboarding/viewmodel/StatementPeriod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isStatementSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->onRelationshipValidationResult:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", statementSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->ICustomTabsCallback$Stub:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
