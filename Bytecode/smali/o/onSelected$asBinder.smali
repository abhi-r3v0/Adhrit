.class final Lo/onSelected$asBinder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onSelected;->extraCallback(Ljava/lang/String;)V
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "com/dreamplug/fabrik/ui/lending/okyc/dialog/OkycSmsDetectionDialog$onOTPReceived$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Ljava/lang/String;

.field final synthetic onNavigationEvent:Lo/onSelected;

.field final synthetic onPostMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lo/onSelected;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/onSelected$asBinder;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p2, p0, Lo/onSelected$asBinder;->onNavigationEvent:Lo/onSelected;

    iput-object p3, p0, Lo/onSelected$asBinder;->onPostMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 269
    sget-object v0, Lo/getTargetFragment;->onPostMessage:Lo/getTargetFragment;

    iget-object v0, p0, Lo/onSelected$asBinder;->onPostMessage:Ljava/lang/String;

    iget-object v1, p0, Lo/onSelected$asBinder;->ICustomTabsCallback:Ljava/lang/String;

    new-instance v2, Lo/onSelected$asBinder$2;

    invoke-direct {v2, p0}, Lo/onSelected$asBinder$2;-><init>(Lo/onSelected$asBinder;)V

    check-cast v2, Lo/onDisconnectSetValue;

    invoke-static {v0, v1, v2}, Lo/getTargetFragment;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/onDisconnectSetValue;)V

    return-void
.end method
