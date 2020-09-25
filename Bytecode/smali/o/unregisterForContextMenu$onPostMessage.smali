.class public Lo/unregisterForContextMenu$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/unregisterForContextMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfirmResultDialog$Companion;",
        "",
        "()V",
        "PAYMENT_JUSPAY_SAFE_REQUEST",
        "",
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
.field private final ICustomTabsCallback:Landroid/os/IBinder;

.field private final onMessageChannelReady:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/unregisterForContextMenu$onPostMessage;->ICustomTabsCallback:Landroid/os/IBinder;

    iput-object p2, p0, Lo/unregisterForContextMenu$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Landroid/os/Parcel;
    .locals 2

    .line 2001
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iget-object v1, p0, Lo/unregisterForContextMenu$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    .line 2002
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    return-object v0
.end method

.method public final ICustomTabsCallback(Landroid/os/Parcel;)Landroid/os/Parcel;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2003
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lo/unregisterForContextMenu$onPostMessage;->ICustomTabsCallback:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2004
    invoke-interface {v1, v2, p1, v0, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2005
    invoke-virtual {v0}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2008
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2006
    :try_start_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2007
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2008
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 2009
    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 2000
    iget-object v0, p0, Lo/unregisterForContextMenu$onPostMessage;->ICustomTabsCallback:Landroid/os/IBinder;

    return-object v0
.end method
