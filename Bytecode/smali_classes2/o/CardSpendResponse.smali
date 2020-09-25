.class final synthetic Lo/CardSpendResponse;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final extraCallback:Ljava/lang/String;

.field private final onPostMessage:Lo/getTemplateIdentifierName;


# direct methods
.method constructor <init>(Lo/getTemplateIdentifierName;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/CardSpendResponse;->onPostMessage:Lo/getTemplateIdentifierName;

    iput-object p2, p0, Lo/CardSpendResponse;->extraCallback:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lo/CardSpendResponse;->onPostMessage:Lo/getTemplateIdentifierName;

    iget-object v1, p0, Lo/CardSpendResponse;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lo/getTemplateIdentifierName;->ICustomTabsCallback(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method
