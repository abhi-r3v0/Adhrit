.class final Lo/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1$lambda$1$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic ICustomTabsCallback:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Landroid/webkit/JsResult;)V
    .locals 0

    iput-object p1, p0, Lo/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1$lambda$1$1$1;->ICustomTabsCallback:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lo/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1$lambda$1$1$1;->ICustomTabsCallback:Landroid/webkit/JsResult;

    invoke-virtual {p1}, Landroid/webkit/JsResult;->cancel()V

    return-void
.end method
