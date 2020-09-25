.class final Lo/SwitchCompat$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/instantiateReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/SwitchCompat;->onNavigationEvent(Lo/instantiateReceiver;)V
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "onChange"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/instantiateReceiver;


# direct methods
.method constructor <init>(Lo/instantiateReceiver;)V
    .locals 0

    iput-object p1, p0, Lo/SwitchCompat$extraCallback;->onNavigationEvent:Lo/instantiateReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)V
    .locals 1

    .line 21
    iget-object v0, p0, Lo/SwitchCompat$extraCallback;->onNavigationEvent:Lo/instantiateReceiver;

    invoke-interface {v0, p1}, Lo/instantiateReceiver;->ICustomTabsCallback(I)V

    return-void
.end method
