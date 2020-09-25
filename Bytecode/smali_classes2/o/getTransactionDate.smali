.class final synthetic Lo/getTransactionDate;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final ICustomTabsCallback:I

.field private final extraCallback:I

.field private final onMessageChannelReady:Lo/getTemplateIdentifierName;

.field private final onPostMessage:I


# direct methods
.method constructor <init>(Lo/getTemplateIdentifierName;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getTransactionDate;->onMessageChannelReady:Lo/getTemplateIdentifierName;

    iput p2, p0, Lo/getTransactionDate;->extraCallback:I

    iput p3, p0, Lo/getTransactionDate;->onPostMessage:I

    iput p4, p0, Lo/getTransactionDate;->ICustomTabsCallback:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lo/getTransactionDate;->onMessageChannelReady:Lo/getTemplateIdentifierName;

    iget v1, p0, Lo/getTransactionDate;->extraCallback:I

    iget v2, p0, Lo/getTransactionDate;->onPostMessage:I

    iget v3, p0, Lo/getTransactionDate;->ICustomTabsCallback:I

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lo/getTemplateIdentifierName;->ICustomTabsCallback(IIILandroid/content/DialogInterface;I)V

    return-void
.end method
