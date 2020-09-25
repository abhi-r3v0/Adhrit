.class final Lo/setGcmSenderId$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setGcmSenderId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation


# instance fields
.field ICustomTabsCallback:Lo/getPrimaryAction;

.field onMessageChannelReady:Lo/getPrimaryAction;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lo/getPrimaryAction;

    iget v1, p1, Landroid/hardware/Camera$Size;->width:I

    iget p1, p1, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v0, v1, p1}, Lo/getPrimaryAction;-><init>(II)V

    iput-object v0, p0, Lo/setGcmSenderId$extraCallback;->ICustomTabsCallback:Lo/getPrimaryAction;

    if-eqz p2, :cond_0

    .line 4
    new-instance p1, Lo/getPrimaryAction;

    iget v0, p2, Landroid/hardware/Camera$Size;->width:I

    iget p2, p2, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {p1, v0, p2}, Lo/getPrimaryAction;-><init>(II)V

    iput-object p1, p0, Lo/setGcmSenderId$extraCallback;->onMessageChannelReady:Lo/getPrimaryAction;

    :cond_0
    return-void
.end method
