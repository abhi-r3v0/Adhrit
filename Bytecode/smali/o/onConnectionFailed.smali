.class public final Lo/onConnectionFailed;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private ICustomTabsCallback:Landroid/widget/TextView;

.field private extraCallback:Landroid/view/textclassifier/TextClassifier;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 43
    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/onConnectionFailed;->ICustomTabsCallback:Landroid/widget/TextView;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1064
    throw p1
.end method


# virtual methods
.method public final onPostMessage()Landroid/view/textclassifier/TextClassifier;
    .locals 2

    .line 62
    iget-object v0, p0, Lo/onConnectionFailed;->extraCallback:Landroid/view/textclassifier/TextClassifier;

    if-nez v0, :cond_1

    .line 63
    iget-object v0, p0, Lo/onConnectionFailed;->ICustomTabsCallback:Landroid/widget/TextView;

    .line 64
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/textclassifier/TextClassificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassificationManager;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationManager;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    return-object v0

    .line 68
    :cond_0
    sget-object v0, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    :cond_1
    return-object v0
.end method

.method public final onPostMessage(Landroid/view/textclassifier/TextClassifier;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lo/onConnectionFailed;->extraCallback:Landroid/view/textclassifier/TextClassifier;

    return-void
.end method
