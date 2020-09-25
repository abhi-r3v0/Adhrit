.class final Lo/CardSpendResponseJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic onPostMessage:Lo/CardTemplateData;


# direct methods
.method constructor <init>(Lo/CardTemplateData;)V
    .locals 0

    iput-object p1, p0, Lo/CardSpendResponseJsonAdapter;->onPostMessage:Lo/CardTemplateData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    iget-object p1, p0, Lo/CardSpendResponseJsonAdapter;->onPostMessage:Lo/CardTemplateData;

    iget-object p1, p1, Lo/CardTemplateData;->onNavigationEvent:Landroid/content/Context;

    const-string p2, "https://support.google.com/dfp_premium/answer/7160685#push"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method
