.class final Lo/getChildViewHolderInt$asInterface$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getChildViewHolderInt$asInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0004\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/content/DialogInterface;",
        "kotlin.jvm.PlatformType",
        "onDismiss",
        "com/dreamplug/fabrik/ui/lifestyle/win/machine/WinMachineFragment$observeLivedata$4$1$1$1",
        "com/dreamplug/fabrik/ui/lifestyle/win/machine/WinMachineFragment$observeLivedata$4$$special$$inlined$apply$lambda$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/getChildViewHolderInt$asInterface;


# direct methods
.method constructor <init>(Lo/getChildViewHolderInt$asInterface;)V
    .locals 0

    iput-object p1, p0, Lo/getChildViewHolderInt$asInterface$onPostMessage;->onPostMessage:Lo/getChildViewHolderInt$asInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 246
    iget-object p1, p0, Lo/getChildViewHolderInt$asInterface$onPostMessage;->onPostMessage:Lo/getChildViewHolderInt$asInterface;

    iget-object p1, p1, Lo/getChildViewHolderInt$asInterface;->onPostMessage:Lo/getChildViewHolderInt;

    invoke-static {p1}, Lo/getChildViewHolderInt;->onNavigationEvent(Lo/getChildViewHolderInt;)Lo/findContainingItemView;

    move-result-object p1

    .line 1065
    iget-object p1, p1, Lo/findContainingItemView;->asInterface:Lo/setActive;

    .line 246
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method
