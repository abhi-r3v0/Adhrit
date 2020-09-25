.class public Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;
.super Lo/LoanStatusResponse$CkycData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/LoanStatusResponse_EmiScheduleJsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lo/LoanStatusResponse_EmiScheduleJsonAdapter<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback<",
        "TMessageType;TBuilderType;>;>",
        "Lo/LoanStatusResponse$CkycData<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field private onNavigationEvent:Z


# direct methods
.method protected constructor <init>(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    invoke-direct {p0}, Lo/LoanStatusResponse$CkycData;-><init>()V

    iput-object p1, p0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->onMessageChannelReady:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    sget v0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$ICustomTabsCallback;->onPostMessage:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->onMessageChannelReady(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    iput-object p1, p0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->onNavigationEvent:Z

    return-void
.end method

.method private static ICustomTabsCallback(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    invoke-static {}, Lo/LoanSummary_ScheduleChargeJsonAdapter;->extraCallback()Lo/LoanSummary_ScheduleChargeJsonAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/LoanSummary_ScheduleChargeJsonAdapter;->onPostMessage(Ljava/lang/Object;)Lo/PoweredBy;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lo/PoweredBy;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final ICustomTabsCallback()V
    .locals 3

    iget-boolean v0, p0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    sget v1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$ICustomTabsCallback;->onPostMessage:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->onMessageChannelReady(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    iget-object v1, p0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    invoke-static {v0, v1}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    iput-object v0, p0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->onNavigationEvent:Z

    :cond_0
    return-void
.end method

.method public final ICustomTabsService()Z
    .locals 2

    iget-object v0, p0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->onMessageChannelReady(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;Z)Z

    move-result v0

    return v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    iget-object v0, p0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->onMessageChannelReady:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast v0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    sget v1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->onMessageChannelReady(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;

    iget-boolean v1, p0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->onNavigationEvent:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    invoke-static {}, Lo/LoanSummary_ScheduleChargeJsonAdapter;->extraCallback()Lo/LoanSummary_ScheduleChargeJsonAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/LoanSummary_ScheduleChargeJsonAdapter;->onPostMessage(Ljava/lang/Object;)Lo/PoweredBy;

    move-result-object v2

    invoke-interface {v2, v1}, Lo/PoweredBy;->onNavigationEvent(Ljava/lang/Object;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->onNavigationEvent:Z

    :goto_0
    iget-object v1, p0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast v1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    invoke-virtual {v0, v1}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->onNavigationEvent(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;

    return-object v0
.end method

.method public final synthetic extraCallback()Lo/LoanSummary$Details;
    .locals 2

    iget-boolean v0, p0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    return-object v0

    :cond_0
    iget-object v0, p0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    invoke-static {}, Lo/LoanSummary_ScheduleChargeJsonAdapter;->extraCallback()Lo/LoanSummary_ScheduleChargeJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/LoanSummary_ScheduleChargeJsonAdapter;->onPostMessage(Ljava/lang/Object;)Lo/PoweredBy;

    move-result-object v1

    invoke-interface {v1, v0}, Lo/PoweredBy;->onNavigationEvent(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->onNavigationEvent:Z

    iget-object v0, p0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    return-object v0
.end method

.method protected final synthetic onMessageChannelReady(Lo/LoanStatusResponse$Data;)Lo/LoanStatusResponse$CkycData;
    .locals 0

    check-cast p1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    invoke-virtual {p0, p1}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->onNavigationEvent(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onMessageChannelReady()Lo/LoanSummary$Details;
    .locals 5

    iget-boolean v0, p0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->onNavigationEvent:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    invoke-static {}, Lo/LoanSummary_ScheduleChargeJsonAdapter;->extraCallback()Lo/LoanSummary_ScheduleChargeJsonAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lo/LoanSummary_ScheduleChargeJsonAdapter;->onPostMessage(Ljava/lang/Object;)Lo/PoweredBy;

    move-result-object v2

    invoke-interface {v2, v0}, Lo/PoweredBy;->onNavigationEvent(Ljava/lang/Object;)V

    iput-boolean v1, p0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->onNavigationEvent:Z

    :goto_0
    iget-object v0, p0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast v0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sget v3, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$ICustomTabsCallback;->extraCallback:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v4}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->onMessageChannelReady(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    if-ne v3, v1, :cond_1

    goto :goto_2

    :cond_1
    if-nez v3, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-static {}, Lo/LoanSummary_ScheduleChargeJsonAdapter;->extraCallback()Lo/LoanSummary_ScheduleChargeJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/LoanSummary_ScheduleChargeJsonAdapter;->onPostMessage(Ljava/lang/Object;)Lo/PoweredBy;

    move-result-object v1

    invoke-interface {v1, v0}, Lo/PoweredBy;->ICustomTabsCallback(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v2, :cond_4

    sget v2, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$ICustomTabsCallback;->onNavigationEvent:I

    if-eqz v1, :cond_3

    move-object v3, v0

    goto :goto_1

    :cond_3
    move-object v3, v4

    :goto_1
    invoke-virtual {v0, v2, v3, v4}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->onMessageChannelReady(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    return-object v0

    :cond_5
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbed;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzbed;-><init>(Lo/LoanSummary$Details;)V

    throw v1
.end method

.method public final synthetic onNavigationEvent()Lo/LoanStatusResponse$CkycData;
    .locals 1

    invoke-virtual {p0}, Lo/LoanStatusResponse$CkycData;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;

    return-object v0
.end method

.method public final onNavigationEvent(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback()V

    iget-object v0, p0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    invoke-static {v0, p1}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    return-object p0
.end method

.method public final onPostMessage()Lo/LoanStatusResponse_EmiScheduleJsonAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-boolean v0, p0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->onNavigationEvent:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    invoke-static {}, Lo/LoanSummary_ScheduleChargeJsonAdapter;->extraCallback()Lo/LoanSummary_ScheduleChargeJsonAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lo/LoanSummary_ScheduleChargeJsonAdapter;->onPostMessage(Ljava/lang/Object;)Lo/PoweredBy;

    move-result-object v2

    invoke-interface {v2, v0}, Lo/PoweredBy;->onNavigationEvent(Ljava/lang/Object;)V

    iput-boolean v1, p0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->onNavigationEvent:Z

    :goto_0
    iget-object v0, p0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast v0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sget v3, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$ICustomTabsCallback;->extraCallback:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v4}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->onMessageChannelReady(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    if-ne v3, v1, :cond_1

    goto :goto_2

    :cond_1
    if-nez v3, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-static {}, Lo/LoanSummary_ScheduleChargeJsonAdapter;->extraCallback()Lo/LoanSummary_ScheduleChargeJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/LoanSummary_ScheduleChargeJsonAdapter;->onPostMessage(Ljava/lang/Object;)Lo/PoweredBy;

    move-result-object v1

    invoke-interface {v1, v0}, Lo/PoweredBy;->ICustomTabsCallback(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v2, :cond_4

    sget v2, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$ICustomTabsCallback;->onNavigationEvent:I

    if-eqz v1, :cond_3

    move-object v3, v0

    goto :goto_1

    :cond_3
    move-object v3, v4

    :goto_1
    invoke-virtual {v0, v2, v3, v4}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->onMessageChannelReady(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    return-object v0

    :cond_5
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbed;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzbed;-><init>(Lo/LoanSummary$Details;)V

    throw v1
.end method

.method public final synthetic updateVisuals()Lo/LoanSummary$Details;
    .locals 1

    iget-object v0, p0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->onMessageChannelReady:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    return-object v0
.end method
