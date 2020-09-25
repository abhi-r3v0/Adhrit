.class public Lo/getPaymentMethodType;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final onPostMessage:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lo/getPaymentMethodType;->onPostMessage:Ljava/lang/Object;

    return-void

    .line 1011
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Activity must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/onSessionEvent;
    .locals 1

    .line 10
    iget-object v0, p0, Lo/getPaymentMethodType;->onPostMessage:Ljava/lang/Object;

    check-cast v0, Lo/onSessionEvent;

    return-object v0
.end method

.method public final extraCallback()Z
    .locals 1

    .line 8
    iget-object v0, p0, Lo/getPaymentMethodType;->onPostMessage:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    return v0
.end method

.method public final onMessageChannelReady()Z
    .locals 1

    .line 6
    iget-object v0, p0, Lo/getPaymentMethodType;->onPostMessage:Ljava/lang/Object;

    instance-of v0, v0, Lo/onSessionEvent;

    return v0
.end method

.method public final onPostMessage()Landroid/app/Activity;
    .locals 1

    .line 9
    iget-object v0, p0, Lo/getPaymentMethodType;->onPostMessage:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method
