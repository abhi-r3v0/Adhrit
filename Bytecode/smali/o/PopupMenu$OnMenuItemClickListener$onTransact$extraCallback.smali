.class final Lo/PopupMenu$OnMenuItemClickListener$onTransact$extraCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PopupMenu$OnMenuItemClickListener$onTransact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/View;",
        "Lo/addWrites;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "invoke",
        "com/cred/pay/ui/checkout/instrumentlist/list/CheckoutInstrumentListFragment$onViewCreated$4$1$1$1",
        "com/cred/pay/ui/checkout/instrumentlist/list/CheckoutInstrumentListFragment$onViewCreated$4$$special$$inlined$let$lambda$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/PopupMenu$OnMenuItemClickListener$onTransact;

.field private synthetic extraCallback:Lcom/cred/pay/repository/models/checkout/Cta;


# direct methods
.method constructor <init>(Lcom/cred/pay/repository/models/checkout/Cta;Lo/PopupMenu$OnMenuItemClickListener$onTransact;)V
    .locals 0

    iput-object p1, p0, Lo/PopupMenu$OnMenuItemClickListener$onTransact$extraCallback;->extraCallback:Lcom/cred/pay/repository/models/checkout/Cta;

    iput-object p2, p0, Lo/PopupMenu$OnMenuItemClickListener$onTransact$extraCallback;->ICustomTabsCallback:Lo/PopupMenu$OnMenuItemClickListener$onTransact;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 29
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1089
    iget-object p1, p0, Lo/PopupMenu$OnMenuItemClickListener$onTransact$extraCallback;->ICustomTabsCallback:Lo/PopupMenu$OnMenuItemClickListener$onTransact;

    iget-object p1, p1, Lo/PopupMenu$OnMenuItemClickListener$onTransact;->onPostMessage:Lo/PopupMenu$OnMenuItemClickListener;

    iget-object v0, p0, Lo/PopupMenu$OnMenuItemClickListener$onTransact$extraCallback;->extraCallback:Lcom/cred/pay/repository/models/checkout/Cta;

    invoke-static {p1, v0}, Lo/PopupMenu$OnMenuItemClickListener;->extraCallback(Lo/PopupMenu$OnMenuItemClickListener;Lcom/cred/pay/repository/models/checkout/Cta;)V

    .line 29
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
