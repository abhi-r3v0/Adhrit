.class public final Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onPostMessage"
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/getPanMismatch;

.field private onMessageChannelReady:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Landroid/os/Looper;)Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback$onPostMessage;
    .locals 1

    if-eqz p1, :cond_0

    .line 6
    iput-object p1, p0, Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback$onPostMessage;->onMessageChannelReady:Landroid/os/Looper;

    return-object p0

    .line 2011
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Looper must not be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onMessageChannelReady(Lo/getPanMismatch;)Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback$onPostMessage;
    .locals 1

    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback$onPostMessage;->ICustomTabsCallback:Lo/getPanMismatch;

    return-object p0

    .line 1011
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "StatusExceptionMapper must not be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onPostMessage()Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback;
    .locals 3

    .line 8
    iget-object v0, p0, Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback$onPostMessage;->ICustomTabsCallback:Lo/getPanMismatch;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Lo/getItemDelegate$ICustomTabsCallback$Stub;

    invoke-direct {v0}, Lo/getItemDelegate$ICustomTabsCallback$Stub;-><init>()V

    iput-object v0, p0, Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback$onPostMessage;->ICustomTabsCallback:Lo/getPanMismatch;

    .line 10
    :cond_0
    iget-object v0, p0, Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback$onPostMessage;->onMessageChannelReady:Landroid/os/Looper;

    if-nez v0, :cond_1

    .line 11
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback$onPostMessage;->onMessageChannelReady:Landroid/os/Looper;

    .line 12
    :cond_1
    new-instance v0, Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback;

    iget-object v1, p0, Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback$onPostMessage;->ICustomTabsCallback:Lo/getPanMismatch;

    iget-object v2, p0, Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback$onPostMessage;->onMessageChannelReady:Landroid/os/Looper;

    invoke-direct {v0, v1, v2}, Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback;-><init>(Lo/getPanMismatch;Landroid/os/Looper;)V

    return-object v0
.end method
