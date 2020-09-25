.class abstract Lo/getPrimaryButtonText$asBinder;
.super Lo/getPrimaryButtonText$asInterface;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getPrimaryButtonText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "asBinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getPrimaryButtonText$asInterface<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/getPrimaryButtonText;

.field private final extraCallback:I

.field private final onPostMessage:Landroid/os/Bundle;


# direct methods
.method protected constructor <init>(Lo/getPrimaryButtonText;ILandroid/os/Bundle;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lo/getPrimaryButtonText$asBinder;->ICustomTabsCallback:Lo/getPrimaryButtonText;

    .line 2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v0}, Lo/getPrimaryButtonText$asInterface;-><init>(Lo/getPrimaryButtonText;Ljava/lang/Object;)V

    .line 3
    iput p2, p0, Lo/getPrimaryButtonText$asBinder;->extraCallback:I

    .line 4
    iput-object p3, p0, Lo/getPrimaryButtonText$asBinder;->onPostMessage:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method protected abstract ICustomTabsCallback(Lo/setReferenceId;)V
.end method

.method protected abstract onMessageChannelReady()Z
.end method

.method protected final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 4

    .line 7
    check-cast p1, Ljava/lang/Boolean;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 9
    iget-object p1, p0, Lo/getPrimaryButtonText$asBinder;->ICustomTabsCallback:Lo/getPrimaryButtonText;

    invoke-static {p1, v0, v1}, Lo/getPrimaryButtonText;->zza(Lo/getPrimaryButtonText;ILandroid/os/IInterface;)V

    return-void

    .line 11
    :cond_0
    iget p1, p0, Lo/getPrimaryButtonText$asBinder;->extraCallback:I

    if-eqz p1, :cond_3

    const/16 v2, 0xa

    if-eq p1, v2, :cond_2

    .line 21
    iget-object p1, p0, Lo/getPrimaryButtonText$asBinder;->ICustomTabsCallback:Lo/getPrimaryButtonText;

    invoke-static {p1, v0, v1}, Lo/getPrimaryButtonText;->zza(Lo/getPrimaryButtonText;ILandroid/os/IInterface;)V

    .line 23
    iget-object p1, p0, Lo/getPrimaryButtonText$asBinder;->onPostMessage:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    const-string v0, "pendingIntent"

    .line 24
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/app/PendingIntent;

    .line 25
    :cond_1
    new-instance p1, Lo/setReferenceId;

    iget v0, p0, Lo/getPrimaryButtonText$asBinder;->extraCallback:I

    invoke-direct {p1, v0, v1}, Lo/setReferenceId;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, p1}, Lo/getPrimaryButtonText$asBinder;->ICustomTabsCallback(Lo/setReferenceId;)V

    goto :goto_0

    .line 15
    :cond_2
    iget-object p1, p0, Lo/getPrimaryButtonText$asBinder;->ICustomTabsCallback:Lo/getPrimaryButtonText;

    invoke-static {p1, v0, v1}, Lo/getPrimaryButtonText;->zza(Lo/getPrimaryButtonText;ILandroid/os/IInterface;)V

    .line 16
    new-instance p1, Ljava/lang/IllegalStateException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lo/getPrimaryButtonText$asBinder;->ICustomTabsCallback:Lo/getPrimaryButtonText;

    .line 18
    invoke-virtual {v2}, Lo/getPrimaryButtonText;->getStartServiceAction()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x2

    iget-object v2, p0, Lo/getPrimaryButtonText$asBinder;->ICustomTabsCallback:Lo/getPrimaryButtonText;

    .line 19
    invoke-virtual {v2}, Lo/getPrimaryButtonText;->getServiceDescriptor()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "A fatal developer error has occurred. Class name: %s. Start service action: %s. Service Descriptor: %s. "

    .line 20
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_3
    invoke-virtual {p0}, Lo/getPrimaryButtonText$asBinder;->onMessageChannelReady()Z

    move-result p1

    if-nez p1, :cond_4

    .line 13
    iget-object p1, p0, Lo/getPrimaryButtonText$asBinder;->ICustomTabsCallback:Lo/getPrimaryButtonText;

    invoke-static {p1, v0, v1}, Lo/getPrimaryButtonText;->zza(Lo/getPrimaryButtonText;ILandroid/os/IInterface;)V

    .line 14
    new-instance p1, Lo/setReferenceId;

    const/16 v0, 0x8

    invoke-direct {p1, v0, v1}, Lo/setReferenceId;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, p1}, Lo/getPrimaryButtonText$asBinder;->ICustomTabsCallback(Lo/setReferenceId;)V

    :cond_4
    :goto_0
    return-void
.end method
