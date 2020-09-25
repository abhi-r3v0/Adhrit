.class public final Lo/getReferenceId$onPostMessage;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getReferenceId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "onPostMessage"
.end annotation


# instance fields
.field public final ICustomTabsCallback:Lo/setDomain;

.field private ICustomTabsCallback$Stub:Z

.field private asInterface:Z

.field private extraCallback:Ljava/lang/String;

.field private onMessageChannelReady:Lo/setUserProperties$validateRelationship$onMessageChannelReady;

.field private onNavigationEvent:I

.field private onPostMessage:Ljava/lang/String;

.field private final synthetic onTransact:Lo/getReferenceId;


# direct methods
.method private constructor <init>(Lo/getReferenceId;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lo/getReferenceId$onPostMessage;-><init>(Lo/getReferenceId;[BB)V

    return-void
.end method

.method private constructor <init>(Lo/getReferenceId;[BB)V
    .locals 2

    iput-object p1, p0, Lo/getReferenceId$onPostMessage;->onTransact:Lo/getReferenceId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p3, p0, Lo/getReferenceId$onPostMessage;->onTransact:Lo/getReferenceId;

    .line 1000
    iget p3, p3, Lo/getReferenceId;->asBinder:I

    iput p3, p0, Lo/getReferenceId$onPostMessage;->onNavigationEvent:I

    iget-object p3, p0, Lo/getReferenceId$onPostMessage;->onTransact:Lo/getReferenceId;

    .line 2000
    iget-object p3, p3, Lo/getReferenceId;->extraCallback:Ljava/lang/String;

    iput-object p3, p0, Lo/getReferenceId$onPostMessage;->onPostMessage:Ljava/lang/String;

    iget-object p3, p0, Lo/getReferenceId$onPostMessage;->onTransact:Lo/getReferenceId;

    .line 3000
    iget-object p3, p3, Lo/getReferenceId;->onRelationshipValidationResult:Ljava/lang/String;

    iput-object p3, p0, Lo/getReferenceId$onPostMessage;->extraCallback:Ljava/lang/String;

    iget-object p3, p0, Lo/getReferenceId$onPostMessage;->onTransact:Lo/getReferenceId;

    .line 4000
    iget-object p3, p3, Lo/getReferenceId;->onTransact:Lo/setUserProperties$validateRelationship$onMessageChannelReady;

    iput-object p3, p0, Lo/getReferenceId$onPostMessage;->onMessageChannelReady:Lo/setUserProperties$validateRelationship$onMessageChannelReady;

    const/4 p3, 0x1

    iput-boolean p3, p0, Lo/getReferenceId$onPostMessage;->ICustomTabsCallback$Stub:Z

    new-instance p3, Lo/setDomain;

    invoke-direct {p3}, Lo/setDomain;-><init>()V

    iput-object p3, p0, Lo/getReferenceId$onPostMessage;->ICustomTabsCallback:Lo/setDomain;

    const/4 p3, 0x0

    iput-boolean p3, p0, Lo/getReferenceId$onPostMessage;->asInterface:Z

    .line 5000
    iget-object p3, p1, Lo/getReferenceId;->onRelationshipValidationResult:Ljava/lang/String;

    iput-object p3, p0, Lo/getReferenceId$onPostMessage;->extraCallback:Ljava/lang/String;

    iget-object p3, p0, Lo/getReferenceId$onPostMessage;->ICustomTabsCallback:Lo/setDomain;

    .line 6000
    iget-object v0, p1, Lo/getReferenceId;->onMessageChannelReady:Landroid/content/Context;

    invoke-static {v0}, Lo/setCircleProgressColors;->ICustomTabsCallback(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p3, Lo/setDomain;->asBinder:Z

    iget-object p3, p0, Lo/getReferenceId$onPostMessage;->ICustomTabsCallback:Lo/setDomain;

    .line 7000
    iget-object v0, p1, Lo/getReferenceId;->ICustomTabsService:Lo/component15;

    invoke-interface {v0}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v0

    iput-wide v0, p3, Lo/setDomain;->onPostMessage:J

    iget-object p3, p0, Lo/getReferenceId$onPostMessage;->ICustomTabsCallback:Lo/setDomain;

    .line 8000
    iget-object p1, p1, Lo/getReferenceId;->ICustomTabsService:Lo/component15;

    invoke-interface {p1}, Lo/component15;->onPostMessage()J

    move-result-wide v0

    iput-wide v0, p3, Lo/setDomain;->onMessageChannelReady:J

    iget-object p1, p0, Lo/getReferenceId$onPostMessage;->ICustomTabsCallback:Lo/setDomain;

    iget-wide v0, p1, Lo/setDomain;->onPostMessage:J

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p3

    invoke-virtual {p3, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p3

    div-int/lit16 p3, p3, 0x3e8

    int-to-long v0, p3

    iput-wide v0, p1, Lo/setDomain;->onRelationshipValidationResult:J

    if-eqz p2, :cond_0

    iget-object p1, p0, Lo/getReferenceId$onPostMessage;->ICustomTabsCallback:Lo/setDomain;

    iput-object p2, p1, Lo/setDomain;->ICustomTabsCallback$Stub:[B

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Lo/getReferenceId;[BC)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/getReferenceId$onPostMessage;-><init>(Lo/getReferenceId;[B)V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()V
    .locals 13

    iget-boolean v0, p0, Lo/getReferenceId$onPostMessage;->asInterface:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/getReferenceId$onPostMessage;->asInterface:Z

    new-instance v0, Lo/setCurrency;

    new-instance v10, Lo/load;

    iget-object v1, p0, Lo/getReferenceId$onPostMessage;->onTransact:Lo/getReferenceId;

    .line 10000
    iget-object v2, v1, Lo/getReferenceId;->onNavigationEvent:Ljava/lang/String;

    iget-object v1, p0, Lo/getReferenceId$onPostMessage;->onTransact:Lo/getReferenceId;

    .line 11000
    iget v3, v1, Lo/getReferenceId;->ICustomTabsCallback:I

    iget v4, p0, Lo/getReferenceId$onPostMessage;->onNavigationEvent:I

    iget-object v5, p0, Lo/getReferenceId$onPostMessage;->onPostMessage:Ljava/lang/String;

    iget-object v6, p0, Lo/getReferenceId$onPostMessage;->extraCallback:Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v1, p0, Lo/getReferenceId$onPostMessage;->onTransact:Lo/getReferenceId;

    .line 12000
    iget-boolean v8, v1, Lo/getReferenceId;->ICustomTabsCallback$Stub:Z

    iget-object v9, p0, Lo/getReferenceId$onPostMessage;->onMessageChannelReady:Lo/setUserProperties$validateRelationship$onMessageChannelReady;

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lo/load;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLo/setUserProperties$validateRelationship$onMessageChannelReady;)V

    iget-object v3, p0, Lo/getReferenceId$onPostMessage;->ICustomTabsCallback:Lo/setDomain;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 16000
    iget-boolean v12, p0, Lo/getReferenceId$onPostMessage;->ICustomTabsCallback$Stub:Z

    move-object v1, v0

    move-object v2, v10

    move-object v10, v11

    move v11, v12

    invoke-direct/range {v1 .. v11}, Lo/setCurrency;-><init>(Lo/load;Lo/setDomain;Lo/getReferenceId$onMessageChannelReady;Lo/getReferenceId$onMessageChannelReady;[I[Ljava/lang/String;[I[[B[Lo/setStartIconTintMode;Z)V

    iget-object v1, p0, Lo/getReferenceId$onPostMessage;->onTransact:Lo/getReferenceId;

    .line 17000
    iget-object v1, v1, Lo/getReferenceId;->newSession:Lo/getReferenceId$onNavigationEvent;

    invoke-interface {v1, v0}, Lo/getReferenceId$onNavigationEvent;->ICustomTabsCallback(Lo/setCurrency;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/getReferenceId$onPostMessage;->onTransact:Lo/getReferenceId;

    .line 18000
    iget-object v1, v1, Lo/getReferenceId;->asInterface:Lo/getRefundAccount;

    invoke-interface {v1, v0}, Lo/getRefundAccount;->onMessageChannelReady(Lo/setCurrency;)Lo/getPaymentDueDateWeaklyTyped;

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/api/Status;->onMessageChannelReady:Lcom/google/android/gms/common/api/Status;

    if-eqz v0, :cond_1

    .line 18006
    new-instance v1, Lo/isUPIEnabled;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lo/isUPIEnabled;-><init>(Lo/getPaymentMode;)V

    .line 18007
    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->onNavigationEvent(Lo/PaymentRequestItem;)V

    return-void

    .line 18011
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Result must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 0
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "do not reuse LogEventBuilder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
