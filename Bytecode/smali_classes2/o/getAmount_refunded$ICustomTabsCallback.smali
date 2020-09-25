.class final Lo/getAmount_refunded$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ReminderResponse;
.implements Lo/getPrimaryButtonText$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getAmount_refunded;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/getAmount_refunded;

.field private extraCallback:Lo/setTotalPaid;

.field private final onMessageChannelReady:Lo/setCustomAmount$ICustomTabsCallback$Stub;

.field private final onNavigationEvent:Lo/RefundAccount$$Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/RefundAccount$$Parcelable<",
            "*>;"
        }
    .end annotation
.end field

.field private onPostMessage:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private onRelationshipValidationResult:Z


# direct methods
.method public constructor <init>(Lo/getAmount_refunded;Lo/setCustomAmount$ICustomTabsCallback$Stub;Lo/RefundAccount$$Parcelable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setCustomAmount$ICustomTabsCallback$Stub;",
            "Lo/RefundAccount$$Parcelable<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lo/getAmount_refunded$ICustomTabsCallback;->ICustomTabsCallback:Lo/getAmount_refunded;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lo/getAmount_refunded$ICustomTabsCallback;->extraCallback:Lo/setTotalPaid;

    .line 3
    iput-object p1, p0, Lo/getAmount_refunded$ICustomTabsCallback;->onPostMessage:Ljava/util/Set;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lo/getAmount_refunded$ICustomTabsCallback;->onRelationshipValidationResult:Z

    .line 5
    iput-object p2, p0, Lo/getAmount_refunded$ICustomTabsCallback;->onMessageChannelReady:Lo/setCustomAmount$ICustomTabsCallback$Stub;

    .line 6
    iput-object p3, p0, Lo/getAmount_refunded$ICustomTabsCallback;->onNavigationEvent:Lo/RefundAccount$$Parcelable;

    return-void
.end method

.method static synthetic extraCallback(Lo/getAmount_refunded$ICustomTabsCallback;)V
    .locals 2

    .line 4019
    iget-boolean v0, p0, Lo/getAmount_refunded$ICustomTabsCallback;->onRelationshipValidationResult:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/getAmount_refunded$ICustomTabsCallback;->extraCallback:Lo/setTotalPaid;

    if-eqz v0, :cond_0

    .line 4020
    iget-object v1, p0, Lo/getAmount_refunded$ICustomTabsCallback;->onMessageChannelReady:Lo/setCustomAmount$ICustomTabsCallback$Stub;

    iget-object p0, p0, Lo/getAmount_refunded$ICustomTabsCallback;->onPostMessage:Ljava/util/Set;

    invoke-interface {v1, v0, p0}, Lo/setCustomAmount$ICustomTabsCallback$Stub;->getRemoteService(Lo/setTotalPaid;Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/getAmount_refunded$ICustomTabsCallback;Z)Z
    .locals 0

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lo/getAmount_refunded$ICustomTabsCallback;->onRelationshipValidationResult:Z

    return p1
.end method

.method static synthetic onNavigationEvent(Lo/getAmount_refunded$ICustomTabsCallback;)Lo/RefundAccount$$Parcelable;
    .locals 0

    .line 22
    iget-object p0, p0, Lo/getAmount_refunded$ICustomTabsCallback;->onNavigationEvent:Lo/RefundAccount$$Parcelable;

    return-object p0
.end method

.method static synthetic onPostMessage(Lo/getAmount_refunded$ICustomTabsCallback;)Lo/setCustomAmount$ICustomTabsCallback$Stub;
    .locals 0

    .line 24
    iget-object p0, p0, Lo/getAmount_refunded$ICustomTabsCallback;->onMessageChannelReady:Lo/setCustomAmount$ICustomTabsCallback$Stub;

    return-object p0
.end method


# virtual methods
.method public final onNavigationEvent(Lo/setReferenceId;)V
    .locals 2

    .line 8
    iget-object v0, p0, Lo/getAmount_refunded$ICustomTabsCallback;->ICustomTabsCallback:Lo/getAmount_refunded;

    .line 1220
    iget-object v0, v0, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    .line 8
    new-instance v1, Lo/Gating;

    invoke-direct {v1, p0, p1}, Lo/Gating;-><init>(Lo/getAmount_refunded$ICustomTabsCallback;Lo/setReferenceId;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onNavigationEvent(Lo/setTotalPaid;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setTotalPaid;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    iput-object p1, p0, Lo/getAmount_refunded$ICustomTabsCallback;->extraCallback:Lo/setTotalPaid;

    .line 16
    iput-object p2, p0, Lo/getAmount_refunded$ICustomTabsCallback;->onPostMessage:Ljava/util/Set;

    .line 3019
    iget-boolean v0, p0, Lo/getAmount_refunded$ICustomTabsCallback;->onRelationshipValidationResult:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 3020
    iget-object v0, p0, Lo/getAmount_refunded$ICustomTabsCallback;->onMessageChannelReady:Lo/setCustomAmount$ICustomTabsCallback$Stub;

    invoke-interface {v0, p1, p2}, Lo/setCustomAmount$ICustomTabsCallback$Stub;->getRemoteService(Lo/setTotalPaid;Ljava/util/Set;)V

    :cond_1
    return-void

    .line 13
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string p2, "GoogleApiManager"

    const-string v0, "Received null response from onSignInSuccess"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14
    new-instance p1, Lo/setReferenceId;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lo/setReferenceId;-><init>(I)V

    invoke-virtual {p0, p1}, Lo/getAmount_refunded$ICustomTabsCallback;->onPostMessage(Lo/setReferenceId;)V

    return-void
.end method

.method public final onPostMessage(Lo/setReferenceId;)V
    .locals 2

    .line 10
    iget-object v0, p0, Lo/getAmount_refunded$ICustomTabsCallback;->ICustomTabsCallback:Lo/getAmount_refunded;

    .line 1231
    iget-object v0, v0, Lo/getAmount_refunded;->asInterface:Ljava/util/Map;

    .line 10
    iget-object v1, p0, Lo/getAmount_refunded$ICustomTabsCallback;->onNavigationEvent:Lo/RefundAccount$$Parcelable;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getAmount_refunded$onMessageChannelReady;

    .line 2058
    iget-object v1, v0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 2220
    iget-object v1, v1, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    .line 2058
    invoke-static {v1}, Lo/extraCallback$onNavigationEvent;->onPostMessage(Landroid/os/Handler;)V

    .line 2059
    iget-object v1, v0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback:Lo/setCustomAmount$ICustomTabsCallback$Stub;

    invoke-interface {v1}, Lo/setCustomAmount$ICustomTabsCallback$Stub;->disconnect()V

    .line 2060
    invoke-virtual {v0, p1}, Lo/getAmount_refunded$onMessageChannelReady;->onConnectionFailed(Lo/setReferenceId;)V

    return-void
.end method
