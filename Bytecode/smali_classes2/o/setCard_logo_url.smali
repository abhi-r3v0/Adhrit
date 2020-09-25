.class final synthetic Lo/setCard_logo_url;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Transaction$$Parcelable;


# instance fields
.field private final ICustomTabsCallback:Lo/setPriority;

.field private final onPostMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/setPriority;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setCard_logo_url;->ICustomTabsCallback:Lo/setPriority;

    iput-object p2, p0, Lo/setCard_logo_url;->onPostMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lo/setCard_logo_url;->ICustomTabsCallback:Lo/setPriority;

    iget-object v1, p0, Lo/setCard_logo_url;->onPostMessage:Ljava/lang/String;

    check-cast p1, Lo/setCode;

    check-cast p2, Lo/removeBackgroundStateChangeListener;

    .line 3
    invoke-virtual {p1}, Lo/setCode;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lo/CommonBankListResponse$BanksDetail;

    new-instance v2, Lo/getBgPattern;

    invoke-direct {v2, v0, p2}, Lo/getBgPattern;-><init>(Lo/setPriority;Lo/removeBackgroundStateChangeListener;)V

    .line 4
    invoke-interface {p1, v1, v2}, Lo/CommonBankListResponse$BanksDetail;->onPostMessage(Ljava/lang/String;Lo/getBgColor;)V

    return-void
.end method
