.class final Lo/CardLinkFragment$linkResultStateObserver$1$2$$special$$inlined$executeOnResume$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic ICustomTabsCallback:Landroid/webkit/JsPromptResult;


# direct methods
.method constructor <init>(Landroid/webkit/JsPromptResult;)V
    .locals 0

    iput-object p1, p0, Lo/CardLinkFragment$linkResultStateObserver$1$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Landroid/webkit/JsPromptResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lo/CardLinkFragment$linkResultStateObserver$1$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Landroid/webkit/JsPromptResult;

    invoke-virtual {p1}, Landroid/webkit/JsPromptResult;->cancel()V

    return-void
.end method
